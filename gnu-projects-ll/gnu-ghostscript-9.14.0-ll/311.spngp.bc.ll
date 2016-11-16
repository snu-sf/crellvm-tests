; ModuleID = './spngp.bc'
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
%struct.stream_PNGP_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i8, i32, i8*, i32, i64, [512 x i8] }

@st_PNGP_state = internal constant %struct.gs_memory_struct_type_s { i32 672, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @pngp_reloc_ptrs to i8*) }, align 8
@s_PNGPE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_PNGP_state, i32 (%struct.stream_state_s*)* @s_PNGPE_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_PNGPE_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_PNGP_release, void (%struct.stream_state_s*)* @s_PNGP_set_defaults, i32 (%struct.stream_state_s*)* @s_PNGP_reinit }, align 8
@s_PNGPD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_PNGP_state, i32 (%struct.stream_state_s*)* @s_PNGPD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_PNGPD_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_PNGP_release, void (%struct.stream_state_s*)* @s_PNGP_set_defaults, i32 (%struct.stream_state_s*)* @s_PNGP_reinit }, align 8
@.str = private unnamed_addr constant [32 x i8] c"PNGPredictorEncode/Decode state\00", align 1
@pngp_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @pngp_enum_ptrs, i32 0, i32 0) }, align 8
@pngp_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 136 }], align 2
@pngp_case_needs_prev = internal constant [6 x i8] c"\00\00\01\01\01\01", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"PNGPredictor prev row\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_PNGPE_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PNGP_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %2, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %4 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %Predictor = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %4, i32 0, i32 8
  %5 = load i32, i32* %Predictor, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 10
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* @pngp_case_needs_prev, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %6 to i32
  %call = call i32 @s_pngp_init(%struct.stream_state_s* %3, i32 %conv) #4
  %7 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_PNGPE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_PNGP_state_s*, align 8
  %bpp = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %predictor = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %up = alloca i8*, align 8
  %n = alloca i32, align 4
  %prev_left = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !10
  %0 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %2, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %bpp1 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %4, i32 0, i32 11
  %5 = load i32, i32* %bpp1, align 4, !tbaa !11
  store i32 %5, i32* %bpp, align 4, !tbaa !10
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %status, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.150, %cleanup.148, %entry
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %ptr, align 8, !tbaa !12
  %9 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %limit, align 8, !tbaa !14
  %cmp = icmp ult i8* %8, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %12, i32 0, i32 14
  %13 = load i64, i64* %row_left, align 8, !tbaa !15
  %cmp2 = icmp eq i64 %13, 0
  br i1 %cmp2, label %if.then, label %if.end.16

if.then:                                          ; preds = %while.body
  %14 = bitcast i32* %predictor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %15, i32 0, i32 1
  %16 = load i8*, i8** %ptr3, align 8, !tbaa !16
  %17 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit4 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %17, i32 0, i32 2
  %18 = load i8*, i8** %limit4, align 8, !tbaa !18
  %cmp5 = icmp uge i8* %16, %18
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 1, i32* %status, align 4, !tbaa !10
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %Predictor = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %19, i32 0, i32 8
  %20 = load i32, i32* %Predictor, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %20, 15
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %21 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %22 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call = call i32 @optimum_predictor(%struct.stream_state_s* %21, %struct.stream_cursor_read_s* %22) #4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %23 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %Predictor8 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %23, i32 0, i32 8
  %24 = load i32, i32* %Predictor8, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %24, %cond.false ]
  store i32 %cond, i32* %predictor, align 4, !tbaa !10
  %25 = load i32, i32* %predictor, align 4, !tbaa !10
  %conv = trunc i32 %25 to i8
  %conv9 = zext i8 %conv to i32
  %sub = sub nsw i32 %conv9, 10
  %conv10 = trunc i32 %sub to i8
  %26 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %26, i32 0, i32 1
  %27 = load i8*, i8** %ptr11, align 8, !tbaa !16
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %ptr11, align 8, !tbaa !16
  store i8 %conv10, i8* %incdec.ptr, align 1, !tbaa !9
  %28 = load i32, i32* %predictor, align 4, !tbaa !10
  %add = add nsw i32 %28, -10
  %29 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %case_index = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %29, i32 0, i32 13
  store i32 %add, i32* %case_index, align 4, !tbaa !19
  %30 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_count = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %30, i32 0, i32 9
  %31 = load i32, i32* %row_count, align 4, !tbaa !20
  %conv12 = zext i32 %31 to i64
  %32 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left13 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %32, i32 0, i32 14
  store i64 %conv12, i64* %row_left13, align 8, !tbaa !15
  %33 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %33, i32 0, i32 15
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %prev, i32 0, i32 0
  %34 = load i32, i32* %bpp, align 4, !tbaa !10
  %conv14 = sext i32 %34 to i64
  %call15 = call i8* @memset(i8* %arraydecay, i32 0, i64 %conv14) #5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.6
  %35 = bitcast i32* %predictor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  br label %cleanup.148

if.end.16:                                        ; preds = %while.body
  %36 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %37 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %38 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %call17 = call i32 @s_pngp_count(%struct.stream_state_s* %36, %struct.stream_cursor_read_s* %37, %struct.stream_cursor_write_s* %38) #4
  store i32 %call17, i32* %count, align 4, !tbaa !10
  %39 = load i32, i32* %count, align 4, !tbaa !10
  %cmp18 = icmp eq i32 %39, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  store i32 1, i32* %status, align 4, !tbaa !10
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.21:                                        ; preds = %if.end.16
  %40 = bitcast i8** %up to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  %41 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %41, i32 0, i32 12
  %42 = load i8*, i8** %prev_row, align 8, !tbaa !21
  %43 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext = sext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  %44 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_count22 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %44, i32 0, i32 9
  %45 = load i32, i32* %row_count22, align 4, !tbaa !20
  %idx.ext23 = zext i32 %45 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext23
  %46 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left25 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %46, i32 0, i32 14
  %47 = load i64, i64* %row_left25, align 8, !tbaa !15
  %idx.neg = sub i64 0, %47
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr24, i64 %idx.neg
  store i8* %add.ptr26, i8** %up, align 8, !tbaa !1
  %48 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = load i32, i32* %count, align 4, !tbaa !10
  %50 = load i32, i32* %bpp, align 4, !tbaa !10
  %cmp27 = icmp ult i32 %49, %50
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %if.end.21
  %51 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.end.21
  %52 = load i32, i32* %bpp, align 4, !tbaa !10
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i32 [ %51, %cond.true.29 ], [ %52, %cond.false.30 ]
  store i32 %cond32, i32* %n, align 4, !tbaa !10
  %53 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %54 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %55 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev33 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %55, i32 0, i32 15
  %arraydecay34 = getelementptr inbounds [512 x i8], [512 x i8]* %prev33, i32 0, i32 0
  %56 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %57 = load i8*, i8** %up, align 8, !tbaa !1
  %58 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext35 = sext i32 %58 to i64
  %idx.neg36 = sub i64 0, %idx.ext35
  %add.ptr37 = getelementptr inbounds i8, i8* %57, i64 %idx.neg36
  %59 = load i8*, i8** %up, align 8, !tbaa !1
  %60 = load i32, i32* %n, align 4, !tbaa !10
  call void @s_pngp_process(%struct.stream_state_s* %53, %struct.stream_cursor_write_s* %54, i8* %arraydecay34, %struct.stream_cursor_read_s* %56, i8* %add.ptr37, i8* %59, i32 %60) #4
  %61 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left38 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %61, i32 0, i32 14
  %62 = load i64, i64* %row_left38, align 8, !tbaa !15
  %cmp39 = icmp eq i64 %62, 0
  br i1 %cmp39, label %if.then.41, label %if.end.59

if.then.41:                                       ; preds = %cond.end.31
  %63 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row42 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %63, i32 0, i32 12
  %64 = load i8*, i8** %prev_row42, align 8, !tbaa !21
  %tobool = icmp ne i8* %64, null
  br i1 %tobool, label %if.then.43, label %if.end.58

if.then.43:                                       ; preds = %if.then.41
  %65 = load i8*, i8** %up, align 8, !tbaa !1
  %66 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext44 = sext i32 %66 to i64
  %idx.neg45 = sub i64 0, %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, i8* %65, i64 %idx.neg45
  %67 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev47 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %67, i32 0, i32 15
  %arraydecay48 = getelementptr inbounds [512 x i8], [512 x i8]* %prev47, i32 0, i32 0
  %68 = load i32, i32* %bpp, align 4, !tbaa !10
  %conv49 = sext i32 %68 to i64
  %call50 = call i8* @memcpy(i8* %add.ptr46, i8* %arraydecay48, i64 %conv49) #5
  %69 = load i8*, i8** %up, align 8, !tbaa !1
  %70 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr51 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %70, i32 0, i32 0
  %71 = load i8*, i8** %ptr51, align 8, !tbaa !12
  %72 = load i32, i32* %n, align 4, !tbaa !10
  %sub52 = sub i32 %72, 1
  %idx.ext53 = zext i32 %sub52 to i64
  %idx.neg54 = sub i64 0, %idx.ext53
  %add.ptr55 = getelementptr inbounds i8, i8* %71, i64 %idx.neg54
  %73 = load i32, i32* %n, align 4, !tbaa !10
  %conv56 = zext i32 %73 to i64
  %call57 = call i8* @memcpy(i8* %69, i8* %add.ptr55, i64 %conv56) #5
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.43, %if.then.41
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.59:                                        ; preds = %cond.end.31
  %74 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row60 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %74, i32 0, i32 12
  %75 = load i8*, i8** %prev_row60, align 8, !tbaa !21
  %tobool61 = icmp ne i8* %75, null
  br i1 %tobool61, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.end.59
  %76 = load i8*, i8** %up, align 8, !tbaa !1
  %77 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext63 = sext i32 %77 to i64
  %idx.neg64 = sub i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, i8* %76, i64 %idx.neg64
  %78 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev66 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %78, i32 0, i32 15
  %arraydecay67 = getelementptr inbounds [512 x i8], [512 x i8]* %prev66, i32 0, i32 0
  %79 = load i32, i32* %n, align 4, !tbaa !10
  %conv68 = zext i32 %79 to i64
  %call69 = call i8* @memcpy(i8* %add.ptr65, i8* %arraydecay67, i64 %conv68) #5
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.62, %if.end.59
  %80 = load i32, i32* %n, align 4, !tbaa !10
  %81 = load i32, i32* %bpp, align 4, !tbaa !10
  %cmp71 = icmp ult i32 %80, %81
  br i1 %cmp71, label %if.then.73, label %if.end.105

if.then.73:                                       ; preds = %if.end.70
  %82 = bitcast i32* %prev_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #2
  %83 = load i32, i32* %bpp, align 4, !tbaa !10
  %84 = load i32, i32* %n, align 4, !tbaa !10
  %sub74 = sub i32 %83, %84
  store i32 %sub74, i32* %prev_left, align 4, !tbaa !10
  %85 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev75 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %85, i32 0, i32 15
  %arraydecay76 = getelementptr inbounds [512 x i8], [512 x i8]* %prev75, i32 0, i32 0
  %86 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev77 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %86, i32 0, i32 15
  %arraydecay78 = getelementptr inbounds [512 x i8], [512 x i8]* %prev77, i32 0, i32 0
  %87 = load i32, i32* %n, align 4, !tbaa !10
  %idx.ext79 = zext i32 %87 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %arraydecay78, i64 %idx.ext79
  %88 = load i32, i32* %prev_left, align 4, !tbaa !10
  %conv81 = sext i32 %88 to i64
  %call82 = call i8* @memmove(i8* %arraydecay76, i8* %add.ptr80, i64 %conv81) #5
  %89 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev83 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %89, i32 0, i32 15
  %arraydecay84 = getelementptr inbounds [512 x i8], [512 x i8]* %prev83, i32 0, i32 0
  %90 = load i32, i32* %prev_left, align 4, !tbaa !10
  %idx.ext85 = sext i32 %90 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %arraydecay84, i64 %idx.ext85
  %91 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr87 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %91, i32 0, i32 0
  %92 = load i8*, i8** %ptr87, align 8, !tbaa !12
  %93 = load i32, i32* %n, align 4, !tbaa !10
  %sub88 = sub i32 %93, 1
  %idx.ext89 = zext i32 %sub88 to i64
  %idx.neg90 = sub i64 0, %idx.ext89
  %add.ptr91 = getelementptr inbounds i8, i8* %92, i64 %idx.neg90
  %94 = load i32, i32* %n, align 4, !tbaa !10
  %conv92 = zext i32 %94 to i64
  %call93 = call i8* @memcpy(i8* %add.ptr86, i8* %add.ptr91, i64 %conv92) #5
  %95 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr94 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %95, i32 0, i32 1
  %96 = load i8*, i8** %ptr94, align 8, !tbaa !16
  %97 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit95 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %97, i32 0, i32 2
  %98 = load i8*, i8** %limit95, align 8, !tbaa !18
  %cmp96 = icmp uge i8* %96, %98
  br i1 %cmp96, label %land.lhs.true, label %if.end.103

land.lhs.true:                                    ; preds = %if.then.73
  %99 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr98 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %99, i32 0, i32 0
  %100 = load i8*, i8** %ptr98, align 8, !tbaa !12
  %101 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit99 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %101, i32 0, i32 1
  %102 = load i8*, i8** %limit99, align 8, !tbaa !14
  %cmp100 = icmp ult i8* %100, %102
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4, !tbaa !10
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %land.lhs.true, %if.then.73
  store i32 3, i32* %cleanup.dest.slot
  %103 = bitcast i32* %prev_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  br label %cleanup.146

if.end.105:                                       ; preds = %if.end.70
  %104 = load i32, i32* %bpp, align 4, !tbaa !10
  %105 = load i32, i32* %count, align 4, !tbaa !10
  %sub106 = sub i32 %105, %104
  store i32 %sub106, i32* %count, align 4, !tbaa !10
  %106 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %107 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %108 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr107 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %108, i32 0, i32 0
  %109 = load i8*, i8** %ptr107, align 8, !tbaa !12
  %110 = load i32, i32* %bpp, align 4, !tbaa !10
  %sub108 = sub nsw i32 %110, 1
  %idx.ext109 = sext i32 %sub108 to i64
  %idx.neg110 = sub i64 0, %idx.ext109
  %add.ptr111 = getelementptr inbounds i8, i8* %109, i64 %idx.neg110
  %111 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %112 = load i8*, i8** %up, align 8, !tbaa !1
  %113 = load i8*, i8** %up, align 8, !tbaa !1
  %114 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext112 = sext i32 %114 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %113, i64 %idx.ext112
  %115 = load i32, i32* %count, align 4, !tbaa !10
  call void @s_pngp_process(%struct.stream_state_s* %106, %struct.stream_cursor_write_s* %107, i8* %add.ptr111, %struct.stream_cursor_read_s* %111, i8* %112, i8* %add.ptr113, i32 %115) #4
  %116 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev114 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %116, i32 0, i32 15
  %arraydecay115 = getelementptr inbounds [512 x i8], [512 x i8]* %prev114, i32 0, i32 0
  %117 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr116 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %117, i32 0, i32 0
  %118 = load i8*, i8** %ptr116, align 8, !tbaa !12
  %119 = load i32, i32* %bpp, align 4, !tbaa !10
  %sub117 = sub nsw i32 %119, 1
  %idx.ext118 = sext i32 %sub117 to i64
  %idx.neg119 = sub i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, i8* %118, i64 %idx.neg119
  %120 = load i32, i32* %bpp, align 4, !tbaa !10
  %conv121 = sext i32 %120 to i64
  %call122 = call i8* @memcpy(i8* %arraydecay115, i8* %add.ptr120, i64 %conv121) #5
  %121 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row123 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %121, i32 0, i32 12
  %122 = load i8*, i8** %prev_row123, align 8, !tbaa !21
  %tobool124 = icmp ne i8* %122, null
  br i1 %tobool124, label %if.then.125, label %if.end.145

if.then.125:                                      ; preds = %if.end.105
  %123 = load i8*, i8** %up, align 8, !tbaa !1
  %124 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr126 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %124, i32 0, i32 0
  %125 = load i8*, i8** %ptr126, align 8, !tbaa !12
  %126 = load i32, i32* %bpp, align 4, !tbaa !10
  %127 = load i32, i32* %count, align 4, !tbaa !10
  %add127 = add i32 %126, %127
  %sub128 = sub i32 %add127, 1
  %idx.ext129 = zext i32 %sub128 to i64
  %idx.neg130 = sub i64 0, %idx.ext129
  %add.ptr131 = getelementptr inbounds i8, i8* %125, i64 %idx.neg130
  %128 = load i32, i32* %count, align 4, !tbaa !10
  %conv132 = zext i32 %128 to i64
  %call133 = call i8* @memcpy(i8* %123, i8* %add.ptr131, i64 %conv132) #5
  %129 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left134 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %129, i32 0, i32 14
  %130 = load i64, i64* %row_left134, align 8, !tbaa !15
  %cmp135 = icmp eq i64 %130, 0
  br i1 %cmp135, label %if.then.137, label %if.end.144

if.then.137:                                      ; preds = %if.then.125
  %131 = load i8*, i8** %up, align 8, !tbaa !1
  %132 = load i32, i32* %count, align 4, !tbaa !10
  %idx.ext138 = zext i32 %132 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %131, i64 %idx.ext138
  %133 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev140 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %133, i32 0, i32 15
  %arraydecay141 = getelementptr inbounds [512 x i8], [512 x i8]* %prev140, i32 0, i32 0
  %134 = load i32, i32* %bpp, align 4, !tbaa !10
  %conv142 = sext i32 %134 to i64
  %call143 = call i8* @memcpy(i8* %add.ptr139, i8* %arraydecay141, i64 %conv142) #5
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.137, %if.then.125
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.105
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.146

cleanup.146:                                      ; preds = %if.end.145, %if.end.103, %if.end.58
  %135 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i8** %up to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.148 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.146
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.148

cleanup.148:                                      ; preds = %cleanup.cont, %cleanup.146, %if.then.20, %cleanup
  %137 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %cleanup.dest.149 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.149, label %unreachable [
    i32 0, label %cleanup.cont.150
    i32 3, label %while.end
    i32 2, label %while.cond
  ]

cleanup.cont.150:                                 ; preds = %cleanup.148
  br label %while.cond

while.end:                                        ; preds = %cleanup.148, %while.cond
  %138 = load i32, i32* %status, align 4, !tbaa !10
  store i32 1, i32* %cleanup.dest.slot
  %139 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  ret i32 %138

unreachable:                                      ; preds = %cleanup.148
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_PNGP_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PNGP_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %2, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %3, i32 0, i32 12
  %4 = load i8*, i8** %prev_row, align 8, !tbaa !21
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %5, i32 0, i32 1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !24
  %8 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !22
  %10 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row2 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %10, i32 0, i32 12
  %11 = load i8*, i8** %prev_row2, align 8, !tbaa !21
  call void %7(%struct.gs_memory_s* %9, i8* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_PNGP_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PNGP_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %2, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %3, i32 0, i32 5
  store i32 1, i32* %Colors, align 4, !tbaa !27
  %4 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %4, i32 0, i32 6
  store i32 8, i32* %BitsPerComponent, align 4, !tbaa !28
  %5 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %5, i32 0, i32 7
  store i32 1, i32* %Columns, align 4, !tbaa !29
  %6 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %Predictor = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %6, i32 0, i32 8
  store i32 15, i32* %Predictor, align 4, !tbaa !5
  %7 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %7, i32 0, i32 12
  store i8* null, i8** %prev_row, align 8, !tbaa !21
  %8 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_PNGP_reinit(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PNGP_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %2, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %3, i32 0, i32 12
  %4 = load i8*, i8** %prev_row, align 8, !tbaa !21
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row1 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %5, i32 0, i32 12
  %6 = load i8*, i8** %prev_row1, align 8, !tbaa !21
  %7 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %bpp = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %7, i32 0, i32 11
  %8 = load i32, i32* %bpp, align 4, !tbaa !11
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %9 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_count = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %9, i32 0, i32 9
  %10 = load i32, i32* %row_count, align 4, !tbaa !20
  %conv = zext i32 %10 to i64
  %call = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %11, i32 0, i32 14
  store i64 0, i64* %row_left, align 8, !tbaa !15
  %12 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_PNGPD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call = call i32 @s_pngp_init(%struct.stream_state_s* %0, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_PNGPD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_PNGP_state_s*, align 8
  %bpp = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %predictor = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %up = alloca i8*, align 8
  %n = alloca i32, align 4
  %prev_left = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !10
  %0 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %2, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %bpp1 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %4, i32 0, i32 11
  %5 = load i32, i32* %bpp1, align 4, !tbaa !11
  store i32 %5, i32* %bpp, align 4, !tbaa !10
  %6 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %status, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.141, %cleanup.139, %entry
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %ptr, align 8, !tbaa !12
  %9 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %limit, align 8, !tbaa !14
  %cmp = icmp ult i8* %8, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %12, i32 0, i32 14
  %13 = load i64, i64* %row_left, align 8, !tbaa !15
  %cmp2 = icmp eq i64 %13, 0
  br i1 %cmp2, label %if.then, label %if.end.12

if.then:                                          ; preds = %while.body
  %14 = bitcast i32* %predictor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %ptr3, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %17 to i32
  store i32 %conv, i32* %predictor, align 4, !tbaa !10
  %18 = load i32, i32* %predictor, align 4, !tbaa !10
  %cmp4 = icmp sge i32 %18, 5
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -2, i32* %status, align 4, !tbaa !10
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %19, i32 0, i32 0
  %20 = load i8*, i8** %ptr7, align 8, !tbaa !12
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %ptr7, align 8, !tbaa !12
  %21 = load i32, i32* %predictor, align 4, !tbaa !10
  %add = add nsw i32 %21, 10
  %add8 = add nsw i32 %add, -4
  %22 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %case_index = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %22, i32 0, i32 13
  store i32 %add8, i32* %case_index, align 4, !tbaa !19
  %23 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_count = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %23, i32 0, i32 9
  %24 = load i32, i32* %row_count, align 4, !tbaa !20
  %conv9 = zext i32 %24 to i64
  %25 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left10 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %25, i32 0, i32 14
  store i64 %conv9, i64* %row_left10, align 8, !tbaa !15
  %26 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %26, i32 0, i32 15
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %prev, i32 0, i32 0
  %27 = load i32, i32* %bpp, align 4, !tbaa !10
  %conv11 = sext i32 %27 to i64
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 %conv11) #5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.6
  %28 = bitcast i32* %predictor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  br label %cleanup.139

if.end.12:                                        ; preds = %while.body
  %29 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %30 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %31 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %call13 = call i32 @s_pngp_count(%struct.stream_state_s* %29, %struct.stream_cursor_read_s* %30, %struct.stream_cursor_write_s* %31) #4
  store i32 %call13, i32* %count, align 4, !tbaa !10
  %32 = load i32, i32* %count, align 4, !tbaa !10
  %cmp14 = icmp eq i32 %32, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store i32 1, i32* %status, align 4, !tbaa !10
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.17:                                        ; preds = %if.end.12
  %33 = bitcast i8** %up to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %34, i32 0, i32 12
  %35 = load i8*, i8** %prev_row, align 8, !tbaa !21
  %36 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  %37 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_count18 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %37, i32 0, i32 9
  %38 = load i32, i32* %row_count18, align 4, !tbaa !20
  %idx.ext19 = zext i32 %38 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext19
  %39 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left21 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %39, i32 0, i32 14
  %40 = load i64, i64* %row_left21, align 8, !tbaa !15
  %idx.neg = sub i64 0, %40
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr20, i64 %idx.neg
  store i8* %add.ptr22, i8** %up, align 8, !tbaa !1
  %41 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load i32, i32* %count, align 4, !tbaa !10
  %43 = load i32, i32* %bpp, align 4, !tbaa !10
  %cmp23 = icmp ult i32 %42, %43
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %44 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %45 = load i32, i32* %bpp, align 4, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %44, %cond.true ], [ %45, %cond.false ]
  store i32 %cond, i32* %n, align 4, !tbaa !10
  %46 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %47 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %48 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev25 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %48, i32 0, i32 15
  %arraydecay26 = getelementptr inbounds [512 x i8], [512 x i8]* %prev25, i32 0, i32 0
  %49 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %50 = load i8*, i8** %up, align 8, !tbaa !1
  %51 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext27 = sext i32 %51 to i64
  %idx.neg28 = sub i64 0, %idx.ext27
  %add.ptr29 = getelementptr inbounds i8, i8* %50, i64 %idx.neg28
  %52 = load i8*, i8** %up, align 8, !tbaa !1
  %53 = load i32, i32* %n, align 4, !tbaa !10
  call void @s_pngp_process(%struct.stream_state_s* %46, %struct.stream_cursor_write_s* %47, i8* %arraydecay26, %struct.stream_cursor_read_s* %49, i8* %add.ptr29, i8* %52, i32 %53) #4
  %54 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left30 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %54, i32 0, i32 14
  %55 = load i64, i64* %row_left30, align 8, !tbaa !15
  %cmp31 = icmp eq i64 %55, 0
  br i1 %cmp31, label %if.then.33, label %if.end.50

if.then.33:                                       ; preds = %cond.end
  %56 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row34 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %56, i32 0, i32 12
  %57 = load i8*, i8** %prev_row34, align 8, !tbaa !21
  %tobool = icmp ne i8* %57, null
  br i1 %tobool, label %if.then.35, label %if.end.49

if.then.35:                                       ; preds = %if.then.33
  %58 = load i8*, i8** %up, align 8, !tbaa !1
  %59 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext36 = sext i32 %59 to i64
  %idx.neg37 = sub i64 0, %idx.ext36
  %add.ptr38 = getelementptr inbounds i8, i8* %58, i64 %idx.neg37
  %60 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev39 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %60, i32 0, i32 15
  %arraydecay40 = getelementptr inbounds [512 x i8], [512 x i8]* %prev39, i32 0, i32 0
  %61 = load i32, i32* %bpp, align 4, !tbaa !10
  %conv41 = sext i32 %61 to i64
  %call42 = call i8* @memcpy(i8* %add.ptr38, i8* %arraydecay40, i64 %conv41) #5
  %62 = load i8*, i8** %up, align 8, !tbaa !1
  %63 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr43 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %63, i32 0, i32 1
  %64 = load i8*, i8** %ptr43, align 8, !tbaa !16
  %65 = load i32, i32* %n, align 4, !tbaa !10
  %sub = sub i32 %65, 1
  %idx.ext44 = zext i32 %sub to i64
  %idx.neg45 = sub i64 0, %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, i8* %64, i64 %idx.neg45
  %66 = load i32, i32* %n, align 4, !tbaa !10
  %conv47 = zext i32 %66 to i64
  %call48 = call i8* @memcpy(i8* %62, i8* %add.ptr46, i64 %conv47) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.35, %if.then.33
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end.50:                                        ; preds = %cond.end
  %67 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row51 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %67, i32 0, i32 12
  %68 = load i8*, i8** %prev_row51, align 8, !tbaa !21
  %tobool52 = icmp ne i8* %68, null
  br i1 %tobool52, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %if.end.50
  %69 = load i8*, i8** %up, align 8, !tbaa !1
  %70 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext54 = sext i32 %70 to i64
  %idx.neg55 = sub i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %69, i64 %idx.neg55
  %71 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev57 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %71, i32 0, i32 15
  %arraydecay58 = getelementptr inbounds [512 x i8], [512 x i8]* %prev57, i32 0, i32 0
  %72 = load i32, i32* %n, align 4, !tbaa !10
  %conv59 = zext i32 %72 to i64
  %call60 = call i8* @memcpy(i8* %add.ptr56, i8* %arraydecay58, i64 %conv59) #5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.53, %if.end.50
  %73 = load i32, i32* %n, align 4, !tbaa !10
  %74 = load i32, i32* %bpp, align 4, !tbaa !10
  %cmp62 = icmp ult i32 %73, %74
  br i1 %cmp62, label %if.then.64, label %if.end.96

if.then.64:                                       ; preds = %if.end.61
  %75 = bitcast i32* %prev_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #2
  %76 = load i32, i32* %bpp, align 4, !tbaa !10
  %77 = load i32, i32* %n, align 4, !tbaa !10
  %sub65 = sub i32 %76, %77
  store i32 %sub65, i32* %prev_left, align 4, !tbaa !10
  %78 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev66 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %78, i32 0, i32 15
  %arraydecay67 = getelementptr inbounds [512 x i8], [512 x i8]* %prev66, i32 0, i32 0
  %79 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev68 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %79, i32 0, i32 15
  %arraydecay69 = getelementptr inbounds [512 x i8], [512 x i8]* %prev68, i32 0, i32 0
  %80 = load i32, i32* %n, align 4, !tbaa !10
  %idx.ext70 = zext i32 %80 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %arraydecay69, i64 %idx.ext70
  %81 = load i32, i32* %prev_left, align 4, !tbaa !10
  %conv72 = sext i32 %81 to i64
  %call73 = call i8* @memmove(i8* %arraydecay67, i8* %add.ptr71, i64 %conv72) #5
  %82 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev74 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %82, i32 0, i32 15
  %arraydecay75 = getelementptr inbounds [512 x i8], [512 x i8]* %prev74, i32 0, i32 0
  %83 = load i32, i32* %prev_left, align 4, !tbaa !10
  %idx.ext76 = sext i32 %83 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %arraydecay75, i64 %idx.ext76
  %84 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr78 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %84, i32 0, i32 1
  %85 = load i8*, i8** %ptr78, align 8, !tbaa !16
  %86 = load i32, i32* %n, align 4, !tbaa !10
  %sub79 = sub i32 %86, 1
  %idx.ext80 = zext i32 %sub79 to i64
  %idx.neg81 = sub i64 0, %idx.ext80
  %add.ptr82 = getelementptr inbounds i8, i8* %85, i64 %idx.neg81
  %87 = load i32, i32* %n, align 4, !tbaa !10
  %conv83 = zext i32 %87 to i64
  %call84 = call i8* @memcpy(i8* %add.ptr77, i8* %add.ptr82, i64 %conv83) #5
  %88 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr85 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %88, i32 0, i32 1
  %89 = load i8*, i8** %ptr85, align 8, !tbaa !16
  %90 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit86 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %90, i32 0, i32 2
  %91 = load i8*, i8** %limit86, align 8, !tbaa !18
  %cmp87 = icmp uge i8* %89, %91
  br i1 %cmp87, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %if.then.64
  %92 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr89 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %92, i32 0, i32 0
  %93 = load i8*, i8** %ptr89, align 8, !tbaa !12
  %94 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit90 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %94, i32 0, i32 1
  %95 = load i8*, i8** %limit90, align 8, !tbaa !14
  %cmp91 = icmp ult i8* %93, %95
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4, !tbaa !10
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %land.lhs.true, %if.then.64
  store i32 3, i32* %cleanup.dest.slot
  %96 = bitcast i32* %prev_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  br label %cleanup.137

if.end.96:                                        ; preds = %if.end.61
  %97 = load i32, i32* %bpp, align 4, !tbaa !10
  %98 = load i32, i32* %count, align 4, !tbaa !10
  %sub97 = sub i32 %98, %97
  store i32 %sub97, i32* %count, align 4, !tbaa !10
  %99 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %100 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %101 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr98 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %101, i32 0, i32 1
  %102 = load i8*, i8** %ptr98, align 8, !tbaa !16
  %103 = load i32, i32* %bpp, align 4, !tbaa !10
  %sub99 = sub nsw i32 %103, 1
  %idx.ext100 = sext i32 %sub99 to i64
  %idx.neg101 = sub i64 0, %idx.ext100
  %add.ptr102 = getelementptr inbounds i8, i8* %102, i64 %idx.neg101
  %104 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %105 = load i8*, i8** %up, align 8, !tbaa !1
  %106 = load i8*, i8** %up, align 8, !tbaa !1
  %107 = load i32, i32* %bpp, align 4, !tbaa !10
  %idx.ext103 = sext i32 %107 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %106, i64 %idx.ext103
  %108 = load i32, i32* %count, align 4, !tbaa !10
  call void @s_pngp_process(%struct.stream_state_s* %99, %struct.stream_cursor_write_s* %100, i8* %add.ptr102, %struct.stream_cursor_read_s* %104, i8* %105, i8* %add.ptr104, i32 %108) #4
  %109 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev105 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %109, i32 0, i32 15
  %arraydecay106 = getelementptr inbounds [512 x i8], [512 x i8]* %prev105, i32 0, i32 0
  %110 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr107 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %110, i32 0, i32 1
  %111 = load i8*, i8** %ptr107, align 8, !tbaa !16
  %112 = load i32, i32* %bpp, align 4, !tbaa !10
  %sub108 = sub nsw i32 %112, 1
  %idx.ext109 = sext i32 %sub108 to i64
  %idx.neg110 = sub i64 0, %idx.ext109
  %add.ptr111 = getelementptr inbounds i8, i8* %111, i64 %idx.neg110
  %113 = load i32, i32* %bpp, align 4, !tbaa !10
  %conv112 = sext i32 %113 to i64
  %call113 = call i8* @memcpy(i8* %arraydecay106, i8* %add.ptr111, i64 %conv112) #5
  %114 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row114 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %114, i32 0, i32 12
  %115 = load i8*, i8** %prev_row114, align 8, !tbaa !21
  %tobool115 = icmp ne i8* %115, null
  br i1 %tobool115, label %if.then.116, label %if.end.136

if.then.116:                                      ; preds = %if.end.96
  %116 = load i8*, i8** %up, align 8, !tbaa !1
  %117 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr117 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %117, i32 0, i32 1
  %118 = load i8*, i8** %ptr117, align 8, !tbaa !16
  %119 = load i32, i32* %bpp, align 4, !tbaa !10
  %120 = load i32, i32* %count, align 4, !tbaa !10
  %add118 = add i32 %119, %120
  %sub119 = sub i32 %add118, 1
  %idx.ext120 = zext i32 %sub119 to i64
  %idx.neg121 = sub i64 0, %idx.ext120
  %add.ptr122 = getelementptr inbounds i8, i8* %118, i64 %idx.neg121
  %121 = load i32, i32* %count, align 4, !tbaa !10
  %conv123 = zext i32 %121 to i64
  %call124 = call i8* @memcpy(i8* %116, i8* %add.ptr122, i64 %conv123) #5
  %122 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left125 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %122, i32 0, i32 14
  %123 = load i64, i64* %row_left125, align 8, !tbaa !15
  %cmp126 = icmp eq i64 %123, 0
  br i1 %cmp126, label %if.then.128, label %if.end.135

if.then.128:                                      ; preds = %if.then.116
  %124 = load i8*, i8** %up, align 8, !tbaa !1
  %125 = load i32, i32* %count, align 4, !tbaa !10
  %idx.ext129 = zext i32 %125 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %124, i64 %idx.ext129
  %126 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev131 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %126, i32 0, i32 15
  %arraydecay132 = getelementptr inbounds [512 x i8], [512 x i8]* %prev131, i32 0, i32 0
  %127 = load i32, i32* %bpp, align 4, !tbaa !10
  %conv133 = sext i32 %127 to i64
  %call134 = call i8* @memcpy(i8* %add.ptr130, i8* %arraydecay132, i64 %conv133) #5
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.128, %if.then.116
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.96
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.137

cleanup.137:                                      ; preds = %if.end.136, %if.end.94, %if.end.49
  %128 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i8** %up to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.139 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.137
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.139

cleanup.139:                                      ; preds = %cleanup.cont, %cleanup.137, %if.then.16, %cleanup
  %130 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %cleanup.dest.140 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.140, label %unreachable [
    i32 0, label %cleanup.cont.141
    i32 3, label %while.end
    i32 2, label %while.cond
  ]

cleanup.cont.141:                                 ; preds = %cleanup.139
  br label %while.cond

while.end:                                        ; preds = %cleanup.139, %while.cond
  %131 = load i32, i32* %status, align 4, !tbaa !10
  store i32 1, i32* %cleanup.dest.slot
  %132 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  ret i32 %131

unreachable:                                      ; preds = %cleanup.139
  unreachable
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_pngp_init(%struct.stream_state_s* %st, i32 %need_prev) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %need_prev.addr = alloca i32, align 4
  %ss = alloca %struct.stream_PNGP_state_s*, align 8
  %bits_per_pixel = alloca i32, align 4
  %bits_per_row = alloca i64, align 8
  %prev_row = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store i32 %need_prev, i32* %need_prev.addr, align 4, !tbaa !10
  %0 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %2, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %4, i32 0, i32 5
  %5 = load i32, i32* %Colors, align 4, !tbaa !27
  %6 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %6, i32 0, i32 6
  %7 = load i32, i32* %BitsPerComponent, align 4, !tbaa !28
  %mul = mul nsw i32 %5, %7
  store i32 %mul, i32* %bits_per_pixel, align 4, !tbaa !10
  %8 = bitcast i64* %bits_per_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i32, i32* %bits_per_pixel, align 4, !tbaa !10
  %conv = sext i32 %9 to i64
  %10 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %10, i32 0, i32 7
  %11 = load i32, i32* %Columns, align 4, !tbaa !29
  %conv1 = zext i32 %11 to i64
  %mul2 = mul nsw i64 %conv, %conv1
  store i64 %mul2, i64* %bits_per_row, align 8, !tbaa !30
  %12 = bitcast i8** %prev_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  store i8* null, i8** %prev_row, align 8, !tbaa !1
  %13 = load i64, i64* %bits_per_row, align 8, !tbaa !30
  %cmp = icmp sgt i64 %13, 30064771065
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load i64, i64* %bits_per_row, align 8, !tbaa !30
  %add = add nsw i64 %14, 7
  %shr = ashr i64 %add, 3
  %conv4 = trunc i64 %shr to i32
  %15 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_count = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %15, i32 0, i32 9
  store i32 %conv4, i32* %row_count, align 4, !tbaa !20
  %16 = load i64, i64* %bits_per_row, align 8, !tbaa !30
  %sub = sub nsw i64 0, %16
  %and = and i64 %sub, 7
  %sh_prom = trunc i64 %and to i32
  %shl = shl i32 1, %sh_prom
  %sub5 = sub nsw i32 %shl, 1
  %conv6 = trunc i32 %sub5 to i8
  %17 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %end_mask = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %17, i32 0, i32 10
  store i8 %conv6, i8* %end_mask, align 1, !tbaa !31
  %18 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %Colors7 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %18, i32 0, i32 5
  %19 = load i32, i32* %Colors7, align 4, !tbaa !27
  %cmp8 = icmp sgt i32 %19, 256
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %20 = load i32, i32* %bits_per_pixel, align 4, !tbaa !10
  %add12 = add nsw i32 %20, 7
  %shr13 = ashr i32 %add12, 3
  %21 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %bpp = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %21, i32 0, i32 11
  store i32 %shr13, i32* %bpp, align 4, !tbaa !11
  %22 = load i32, i32* %need_prev.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.11
  %23 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %23, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %25 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !32
  %26 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %26, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !22
  %28 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %bpp16 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %28, i32 0, i32 11
  %29 = load i32, i32* %bpp16, align 4, !tbaa !11
  %30 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_count17 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %30, i32 0, i32 9
  %31 = load i32, i32* %row_count17, align 4, !tbaa !20
  %add18 = add i32 %29, %31
  %call = call i8* %25(%struct.gs_memory_s* %27, i32 %add18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #4
  store i8* %call, i8** %prev_row, align 8, !tbaa !1
  %32 = load i8*, i8** %prev_row, align 8, !tbaa !1
  %cmp19 = icmp eq i8* %32, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.14
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.then.14
  %33 = load i8*, i8** %prev_row, align 8, !tbaa !1
  %34 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %bpp23 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %34, i32 0, i32 11
  %35 = load i32, i32* %bpp23, align 4, !tbaa !11
  %conv24 = sext i32 %35 to i64
  %call25 = call i8* @memset(i8* %33, i32 0, i64 %conv24) #5
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.22, %if.end.11
  %36 = load i8*, i8** %prev_row, align 8, !tbaa !1
  %37 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %prev_row27 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %37, i32 0, i32 12
  store i8* %36, i8** %prev_row27, align 8, !tbaa !21
  %38 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call28 = call i32 @s_PNGP_reinit(%struct.stream_state_s* %38) #4
  store i32 %call28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.21, %if.then.10, %if.then
  %39 = bitcast i8** %prev_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast i64* %bits_per_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @optimum_predictor(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  ret i32 11
}

; Function Attrs: nounwind uwtable
define internal i32 @s_pngp_count(%struct.stream_state_s* %st_const, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw) #0 {
entry:
  %st_const.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %ss_const = alloca %struct.stream_PNGP_state_s*, align 8
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %row_left = alloca i32, align 4
  store %struct.stream_state_s* %st_const, %struct.stream_state_s** %st_const.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PNGP_state_s** %ss_const to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st_const.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %2, %struct.stream_PNGP_state_s** %ss_const, align 8, !tbaa !1
  %3 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !14
  %6 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8, !tbaa !12
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !10
  %8 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %9, i32 0, i32 2
  %10 = load i8*, i8** %limit1, align 8, !tbaa !18
  %11 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %ptr2, align 8, !tbaa !16
  %sub.ptr.lhs.cast3 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %12 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  store i32 %conv6, i32* %wcount, align 4, !tbaa !10
  %13 = bitcast i32* %row_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss_const, align 8, !tbaa !1
  %row_left7 = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %14, i32 0, i32 14
  %15 = load i64, i64* %row_left7, align 8, !tbaa !15
  %conv8 = trunc i64 %15 to i32
  store i32 %conv8, i32* %row_left, align 4, !tbaa !10
  %16 = load i32, i32* %rcount, align 4, !tbaa !10
  %17 = load i32, i32* %row_left, align 4, !tbaa !10
  %cmp = icmp ult i32 %16, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %rcount, align 4, !tbaa !10
  store i32 %18, i32* %row_left, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %wcount, align 4, !tbaa !10
  %20 = load i32, i32* %row_left, align 4, !tbaa !10
  %cmp10 = icmp ult i32 %19, %20
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %21 = load i32, i32* %wcount, align 4, !tbaa !10
  store i32 %21, i32* %row_left, align 4, !tbaa !10
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %22 = load i32, i32* %row_left, align 4, !tbaa !10
  %23 = bitcast i32* %row_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.stream_PNGP_state_s** %ss_const to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @s_pngp_process(%struct.stream_state_s* %st, %struct.stream_cursor_write_s* %pw, i8* %dprev, %struct.stream_cursor_read_s* %pr, i8* %upprev, i8* %up, i32 %count) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %dprev.addr = alloca i8*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %upprev.addr = alloca i8*, align 8
  %up.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %ss = alloca %struct.stream_PNGP_state_s*, align 8
  %q = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i8* %dprev, i8** %dprev.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store i8* %upprev, i8** %upprev.addr, align 8, !tbaa !1
  store i8* %up, i8** %up.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !10
  %0 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PNGP_state_s*
  store %struct.stream_PNGP_state_s* %2, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !16
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  %6 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !12
  %add.ptr2 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %add.ptr2, i8** %p, align 8, !tbaa !1
  %9 = load i32, i32* %count.addr, align 4, !tbaa !10
  %10 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %ptr3, align 8, !tbaa !12
  %idx.ext = zext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr4, i8** %ptr3, align 8, !tbaa !12
  %12 = load i32, i32* %count.addr, align 4, !tbaa !10
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 1
  %14 = load i8*, i8** %ptr5, align 8, !tbaa !16
  %idx.ext6 = zext i32 %12 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %14, i64 %idx.ext6
  store i8* %add.ptr7, i8** %ptr5, align 8, !tbaa !16
  %15 = load i32, i32* %count.addr, align 4, !tbaa !10
  %conv = zext i32 %15 to i64
  %16 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %row_left = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %16, i32 0, i32 14
  %17 = load i64, i64* %row_left, align 8, !tbaa !15
  %sub = sub nsw i64 %17, %conv
  store i64 %sub, i64* %row_left, align 8, !tbaa !15
  %18 = load %struct.stream_PNGP_state_s*, %struct.stream_PNGP_state_s** %ss, align 8, !tbaa !1
  %case_index = getelementptr inbounds %struct.stream_PNGP_state_s, %struct.stream_PNGP_state_s* %18, i32 0, i32 13
  %19 = load i32, i32* %case_index, align 4, !tbaa !19
  switch i32 %19, label %sw.epilog [
    i32 0, label %sw.bb
    i32 6, label %sw.bb
    i32 1, label %sw.bb.9
    i32 7, label %sw.bb.16
    i32 2, label %sw.bb.29
    i32 8, label %sw.bb.43
    i32 3, label %sw.bb.57
    i32 9, label %sw.bb.74
    i32 4, label %sw.bb.92
    i32 10, label %sw.bb.111
  ]

sw.bb:                                            ; preds = %entry, %entry
  %20 = load i8*, i8** %q, align 8, !tbaa !1
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %22 = load i32, i32* %count.addr, align 4, !tbaa !10
  %conv8 = zext i32 %22 to i64
  %call = call i8* @memcpy(i8* %20, i8* %21, i64 %conv8) #5
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.9
  %23 = load i32, i32* %count.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %conv10 = zext i8 %25 to i32
  %26 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %conv11 = zext i8 %27 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  %conv13 = trunc i32 %sub12 to i8
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv13, i8* %28, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  %30 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr14, i8** %dprev.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr15, i8** %p, align 8, !tbaa !1
  %32 = load i32, i32* %count.addr, align 4, !tbaa !10
  %dec = add i32 %32, -1
  store i32 %dec, i32* %count.addr, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.23, %sw.bb.16
  %33 = load i32, i32* %count.addr, align 4, !tbaa !10
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %for.body.19, label %for.end.28

for.body.19:                                      ; preds = %for.cond.17
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !9
  %conv20 = zext i8 %35 to i32
  %36 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !9
  %conv21 = zext i8 %37 to i32
  %add = add nsw i32 %conv20, %conv21
  %conv22 = trunc i32 %add to i8
  %38 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv22, i8* %38, align 1, !tbaa !9
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.19
  %39 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr24, i8** %q, align 8, !tbaa !1
  %40 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr25, i8** %dprev.addr, align 8, !tbaa !1
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8, !tbaa !1
  %42 = load i32, i32* %count.addr, align 4, !tbaa !10
  %dec27 = add i32 %42, -1
  store i32 %dec27, i32* %count.addr, align 4, !tbaa !10
  br label %for.cond.17

for.end.28:                                       ; preds = %for.cond.17
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.37, %sw.bb.29
  %43 = load i32, i32* %count.addr, align 4, !tbaa !10
  %tobool31 = icmp ne i32 %43, 0
  br i1 %tobool31, label %for.body.32, label %for.end.42

for.body.32:                                      ; preds = %for.cond.30
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !9
  %conv33 = zext i8 %45 to i32
  %46 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !9
  %conv34 = zext i8 %47 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  %conv36 = trunc i32 %sub35 to i8
  %48 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv36, i8* %48, align 1, !tbaa !9
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.32
  %49 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr38, i8** %q, align 8, !tbaa !1
  %50 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr39, i8** %up.addr, align 8, !tbaa !1
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr40, i8** %p, align 8, !tbaa !1
  %52 = load i32, i32* %count.addr, align 4, !tbaa !10
  %dec41 = add i32 %52, -1
  store i32 %dec41, i32* %count.addr, align 4, !tbaa !10
  br label %for.cond.30

for.end.42:                                       ; preds = %for.cond.30
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.51, %sw.bb.43
  %53 = load i32, i32* %count.addr, align 4, !tbaa !10
  %tobool45 = icmp ne i32 %53, 0
  br i1 %tobool45, label %for.body.46, label %for.end.56

for.body.46:                                      ; preds = %for.cond.44
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !9
  %conv47 = zext i8 %55 to i32
  %56 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !9
  %conv48 = zext i8 %57 to i32
  %add49 = add nsw i32 %conv47, %conv48
  %conv50 = trunc i32 %add49 to i8
  %58 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv50, i8* %58, align 1, !tbaa !9
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.46
  %59 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr52, i8** %q, align 8, !tbaa !1
  %60 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr53, i8** %up.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr54 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8, !tbaa !1
  %62 = load i32, i32* %count.addr, align 4, !tbaa !10
  %dec55 = add i32 %62, -1
  store i32 %dec55, i32* %count.addr, align 4, !tbaa !10
  br label %for.cond.44

for.end.56:                                       ; preds = %for.cond.44
  br label %sw.epilog

sw.bb.57:                                         ; preds = %entry
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.67, %sw.bb.57
  %63 = load i32, i32* %count.addr, align 4, !tbaa !10
  %tobool59 = icmp ne i32 %63, 0
  br i1 %tobool59, label %for.body.60, label %for.end.73

for.body.60:                                      ; preds = %for.cond.58
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %conv61 = zext i8 %65 to i32
  %66 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %67 = load i8, i8* %66, align 1, !tbaa !9
  %conv62 = zext i8 %67 to i32
  %68 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !9
  %conv63 = zext i8 %69 to i32
  %add64 = add nsw i32 %conv62, %conv63
  %shr = ashr i32 %add64, 1
  %sub65 = sub nsw i32 %conv61, %shr
  %conv66 = trunc i32 %sub65 to i8
  %70 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv66, i8* %70, align 1, !tbaa !9
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.60
  %71 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr68 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr68, i8** %q, align 8, !tbaa !1
  %72 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %incdec.ptr69 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr69, i8** %dprev.addr, align 8, !tbaa !1
  %73 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr70, i8** %up.addr, align 8, !tbaa !1
  %74 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr71, i8** %p, align 8, !tbaa !1
  %75 = load i32, i32* %count.addr, align 4, !tbaa !10
  %dec72 = add i32 %75, -1
  store i32 %dec72, i32* %count.addr, align 4, !tbaa !10
  br label %for.cond.58

for.end.73:                                       ; preds = %for.cond.58
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.85, %sw.bb.74
  %76 = load i32, i32* %count.addr, align 4, !tbaa !10
  %tobool76 = icmp ne i32 %76, 0
  br i1 %tobool76, label %for.body.77, label %for.end.91

for.body.77:                                      ; preds = %for.cond.75
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !9
  %conv78 = zext i8 %78 to i32
  %79 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !9
  %conv79 = zext i8 %80 to i32
  %81 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !9
  %conv80 = zext i8 %82 to i32
  %add81 = add nsw i32 %conv79, %conv80
  %shr82 = ashr i32 %add81, 1
  %add83 = add nsw i32 %conv78, %shr82
  %conv84 = trunc i32 %add83 to i8
  %83 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv84, i8* %83, align 1, !tbaa !9
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.77
  %84 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr86 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr86, i8** %q, align 8, !tbaa !1
  %85 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %incdec.ptr87 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr87, i8** %dprev.addr, align 8, !tbaa !1
  %86 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %incdec.ptr88 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr88, i8** %up.addr, align 8, !tbaa !1
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr89 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr89, i8** %p, align 8, !tbaa !1
  %88 = load i32, i32* %count.addr, align 4, !tbaa !10
  %dec90 = add i32 %88, -1
  store i32 %dec90, i32* %count.addr, align 4, !tbaa !10
  br label %for.cond.75

for.end.91:                                       ; preds = %for.cond.75
  br label %sw.epilog

sw.bb.92:                                         ; preds = %entry
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.103, %sw.bb.92
  %89 = load i32, i32* %count.addr, align 4, !tbaa !10
  %tobool94 = icmp ne i32 %89, 0
  br i1 %tobool94, label %for.body.95, label %for.end.110

for.body.95:                                      ; preds = %for.cond.93
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  %91 = load i8, i8* %90, align 1, !tbaa !9
  %conv96 = zext i8 %91 to i32
  %92 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %93 = load i8, i8* %92, align 1, !tbaa !9
  %conv97 = zext i8 %93 to i32
  %94 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %95 = load i8, i8* %94, align 1, !tbaa !9
  %conv98 = zext i8 %95 to i32
  %96 = load i8*, i8** %upprev.addr, align 8, !tbaa !1
  %97 = load i8, i8* %96, align 1, !tbaa !9
  %conv99 = zext i8 %97 to i32
  %call100 = call i32 @paeth_predictor(i32 %conv97, i32 %conv98, i32 %conv99) #4
  %sub101 = sub nsw i32 %conv96, %call100
  %conv102 = trunc i32 %sub101 to i8
  %98 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv102, i8* %98, align 1, !tbaa !9
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.95
  %99 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr104 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr104, i8** %q, align 8, !tbaa !1
  %100 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %incdec.ptr105 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr105, i8** %dprev.addr, align 8, !tbaa !1
  %101 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %incdec.ptr106 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr106, i8** %up.addr, align 8, !tbaa !1
  %102 = load i8*, i8** %upprev.addr, align 8, !tbaa !1
  %incdec.ptr107 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr107, i8** %upprev.addr, align 8, !tbaa !1
  %103 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr108 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr108, i8** %p, align 8, !tbaa !1
  %104 = load i32, i32* %count.addr, align 4, !tbaa !10
  %dec109 = add i32 %104, -1
  store i32 %dec109, i32* %count.addr, align 4, !tbaa !10
  br label %for.cond.93

for.end.110:                                      ; preds = %for.cond.93
  br label %sw.epilog

sw.bb.111:                                        ; preds = %entry
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.122, %sw.bb.111
  %105 = load i32, i32* %count.addr, align 4, !tbaa !10
  %tobool113 = icmp ne i32 %105, 0
  br i1 %tobool113, label %for.body.114, label %for.end.129

for.body.114:                                     ; preds = %for.cond.112
  %106 = load i8*, i8** %p, align 8, !tbaa !1
  %107 = load i8, i8* %106, align 1, !tbaa !9
  %conv115 = zext i8 %107 to i32
  %108 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %109 = load i8, i8* %108, align 1, !tbaa !9
  %conv116 = zext i8 %109 to i32
  %110 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %111 = load i8, i8* %110, align 1, !tbaa !9
  %conv117 = zext i8 %111 to i32
  %112 = load i8*, i8** %upprev.addr, align 8, !tbaa !1
  %113 = load i8, i8* %112, align 1, !tbaa !9
  %conv118 = zext i8 %113 to i32
  %call119 = call i32 @paeth_predictor(i32 %conv116, i32 %conv117, i32 %conv118) #4
  %add120 = add nsw i32 %conv115, %call119
  %conv121 = trunc i32 %add120 to i8
  %114 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv121, i8* %114, align 1, !tbaa !9
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.114
  %115 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr123 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr123, i8** %q, align 8, !tbaa !1
  %116 = load i8*, i8** %dprev.addr, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr124, i8** %dprev.addr, align 8, !tbaa !1
  %117 = load i8*, i8** %up.addr, align 8, !tbaa !1
  %incdec.ptr125 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr125, i8** %up.addr, align 8, !tbaa !1
  %118 = load i8*, i8** %upprev.addr, align 8, !tbaa !1
  %incdec.ptr126 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr126, i8** %upprev.addr, align 8, !tbaa !1
  %119 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr127 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr127, i8** %p, align 8, !tbaa !1
  %120 = load i32, i32* %count.addr, align 4, !tbaa !10
  %dec128 = add i32 %120, -1
  store i32 %dec128, i32* %count.addr, align 4, !tbaa !10
  br label %for.cond.112

for.end.129:                                      ; preds = %for.cond.112
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.129, %for.end.110, %for.end.91, %for.end.73, %for.end.56, %for.end.42, %for.end.28, %for.end, %sw.bb
  %121 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #2
  %122 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #2
  %123 = bitcast %struct.stream_PNGP_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @paeth_predictor(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %ac = alloca i32, align 4
  %bc = alloca i32, align 4
  %abcc = alloca i32, align 4
  %pa = alloca i32, align 4
  %pb = alloca i32, align 4
  %pc = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !10
  store i32 %b, i32* %b.addr, align 4, !tbaa !10
  store i32 %c, i32* %c.addr, align 4, !tbaa !10
  %0 = bitcast i32* %ac to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %b.addr, align 4, !tbaa !10
  %2 = load i32, i32* %c.addr, align 4, !tbaa !10
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* %ac, align 4, !tbaa !10
  %3 = bitcast i32* %bc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %a.addr, align 4, !tbaa !10
  %5 = load i32, i32* %c.addr, align 4, !tbaa !10
  %sub1 = sub nsw i32 %4, %5
  store i32 %sub1, i32* %bc, align 4, !tbaa !10
  %6 = bitcast i32* %abcc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %ac, align 4, !tbaa !10
  %8 = load i32, i32* %bc, align 4, !tbaa !10
  %add = add nsw i32 %7, %8
  store i32 %add, i32* %abcc, align 4, !tbaa !10
  %9 = bitcast i32* %pa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %ac, align 4, !tbaa !10
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* %ac, align 4, !tbaa !10
  %sub2 = sub nsw i32 0, %11
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %ac, align 4, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub2, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, i32* %pa, align 4, !tbaa !10
  %13 = bitcast i32* %pb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %bc, align 4, !tbaa !10
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %15 = load i32, i32* %bc, align 4, !tbaa !10
  %sub5 = sub nsw i32 0, %15
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %16 = load i32, i32* %bc, align 4, !tbaa !10
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi i32 [ %sub5, %cond.true.4 ], [ %16, %cond.false.6 ]
  store i32 %cond8, i32* %pb, align 4, !tbaa !10
  %17 = bitcast i32* %pc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %abcc, align 4, !tbaa !10
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.end.7
  %19 = load i32, i32* %abcc, align 4, !tbaa !10
  %sub11 = sub nsw i32 0, %19
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end.7
  %20 = load i32, i32* %abcc, align 4, !tbaa !10
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.10
  %cond14 = phi i32 [ %sub11, %cond.true.10 ], [ %20, %cond.false.12 ]
  store i32 %cond14, i32* %pc, align 4, !tbaa !10
  %21 = load i32, i32* %pa, align 4, !tbaa !10
  %22 = load i32, i32* %pb, align 4, !tbaa !10
  %cmp15 = icmp sle i32 %21, %22
  br i1 %cmp15, label %land.lhs.true, label %cond.false.18

land.lhs.true:                                    ; preds = %cond.end.13
  %23 = load i32, i32* %pa, align 4, !tbaa !10
  %24 = load i32, i32* %pc, align 4, !tbaa !10
  %cmp16 = icmp sle i32 %23, %24
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %land.lhs.true
  %25 = load i32, i32* %a.addr, align 4, !tbaa !10
  br label %cond.end.24

cond.false.18:                                    ; preds = %land.lhs.true, %cond.end.13
  %26 = load i32, i32* %pb, align 4, !tbaa !10
  %27 = load i32, i32* %pc, align 4, !tbaa !10
  %cmp19 = icmp sle i32 %26, %27
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.18
  %28 = load i32, i32* %b.addr, align 4, !tbaa !10
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.false.18
  %29 = load i32, i32* %c.addr, align 4, !tbaa !10
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i32 [ %28, %cond.true.20 ], [ %29, %cond.false.21 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true.17
  %cond25 = phi i32 [ %25, %cond.true.17 ], [ %cond23, %cond.end.22 ]
  %30 = bitcast i32* %pc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %pb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %pa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %abcc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %bc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %ac to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  ret i32 %cond25
}

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
!5 = !{!6, !7, i64 120}
!6 = !{!"stream_PNGP_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !3, i64 128, !7, i64 132, !2, i64 136, !7, i64 144, !8, i64 152, !3, i64 160}
!7 = !{!"int", !3, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 132}
!12 = !{!13, !2, i64 0}
!13 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!13, !2, i64 8}
!15 = !{!6, !8, i64 152}
!16 = !{!17, !2, i64 8}
!17 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!17, !2, i64 16}
!19 = !{!6, !7, i64 144}
!20 = !{!6, !7, i64 124}
!21 = !{!6, !2, i64 136}
!22 = !{!23, !2, i64 8}
!23 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28}
!24 = !{!25, !2, i64 24}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!6, !7, i64 108}
!28 = !{!6, !7, i64 112}
!29 = !{!6, !7, i64 116}
!30 = !{!8, !8, i64 0}
!31 = !{!6, !3, i64 128}
!32 = !{!25, !2, i64 64}
