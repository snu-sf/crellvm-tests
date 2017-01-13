; ModuleID = './scfe.bc'
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
%struct.hce_code_s = type { i16, i16 }
%struct.cf_runs_s = type { [64 x %struct.hce_code_s], [41 x %struct.hce_code_s] }
%struct.stream_CFE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.stream_hc_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32 }

@st_CFE_state = internal constant %struct.gs_memory_struct_type_s { i32 216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cfe_reloc_ptrs to i8*) }, align 8
@s_CFE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_CFE_state, i32 (%struct.stream_state_s*)* @s_CFE_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_CFE_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_CFE_release, void (%struct.stream_state_s*)* @s_CFE_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"CCITTFaxEncode state\00", align 1
@cfe_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @cfe_enum_ptrs, i32 0, i32 0) }, align 8
@cfe_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 168 }, %struct.gc_ptr_element_s { i16 0, i16 176 }, %struct.gc_ptr_element_s { i16 0, i16 192 }], align 2
@.str.1 = private unnamed_addr constant [9 x i8] c"CFE lbuf\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CFE lcode\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CFE lprev\00", align 1
@cf_run_eol = external constant %struct.hce_code_s, align 2
@cf2_run_eol_2d = external constant %struct.hce_code_s, align 2
@cf2_run_eol_1d = external constant %struct.hce_code_s, align 2
@byte_bit_run_length_neg = external constant [8 x i8*], align 16
@byte_bit_run_length_0 = external constant [256 x i8], align 16
@cf_white_runs = external constant %struct.cf_runs_s, align 2
@cf_black_runs = external constant %struct.cf_runs_s, align 2
@cf_encode_2d.initial_count_bit = internal constant [8 x i8] c"\00\01\02\04\08\10 @", align 1
@cf_encode_2d.further_count_bit = internal constant [8 x i8] c"\80\01\02\04\08\10 @", align 1
@cf2_run_vertical = external constant [7 x %struct.hce_code_s], align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"CFE lprev(close)\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CFE lcode(close)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"CFE lbuf(close)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_CFE_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_CFE_state_s*, align 8
  %columns = alloca i32, align 4
  %code_bytes = alloca i32, align 4
  %raster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_CFE_state_s*
  store %struct.stream_CFE_state_s* %2, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %columns to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %4, i32 0, i32 12
  %5 = load i32, i32* %Columns, align 4, !tbaa !5
  store i32 %5, i32* %columns, align 4, !tbaa !8
  %6 = bitcast i32* %code_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %columns, align 4, !tbaa !8
  %8 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %8, i32 0, i32 9
  %9 = load i32, i32* %K, align 4, !tbaa !9
  %cmp = icmp eq i32 %9, 0
  %cond = select i1 %cmp, i32 9, i32 12
  %mul = mul nsw i32 %7, %cond
  %shr = ashr i32 %mul, 4
  %add = add nsw i32 %shr, 20
  store i32 %add, i32* %code_bytes, align 4, !tbaa !8
  %10 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %11, i32 0, i32 17
  %12 = load i32, i32* %DecodedByteAlign, align 4, !tbaa !10
  %13 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %13, i32 0, i32 17
  %14 = load i32, i32* %DecodedByteAlign1, align 4, !tbaa !10
  %sub = sub nsw i32 %14, 1
  %and = and i32 %12, %sub
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load i32, i32* %columns, align 4, !tbaa !8
  %add2 = add nsw i32 %15, 7
  %shr3 = ashr i32 %add2, 3
  %16 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign4 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %16, i32 0, i32 17
  %17 = load i32, i32* %DecodedByteAlign4, align 4, !tbaa !10
  %sub5 = sub nsw i32 %17, 1
  %add6 = add nsw i32 %shr3, %sub5
  %18 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign7 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %18, i32 0, i32 17
  %19 = load i32, i32* %DecodedByteAlign7, align 4, !tbaa !10
  %div = sdiv i32 %add6, %19
  %20 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign8 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %20, i32 0, i32 17
  %21 = load i32, i32* %DecodedByteAlign8, align 4, !tbaa !10
  %mul9 = mul nsw i32 %div, %21
  br label %cond.end

cond.false:                                       ; preds = %entry
  %22 = load i32, i32* %columns, align 4, !tbaa !8
  %add10 = add nsw i32 %22, 7
  %shr11 = ashr i32 %add10, 3
  %23 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign12 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %23, i32 0, i32 17
  %24 = load i32, i32* %DecodedByteAlign12, align 4, !tbaa !10
  %sub13 = sub nsw i32 %24, 1
  %add14 = add nsw i32 %shr11, %sub13
  %25 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign15 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %25, i32 0, i32 17
  %26 = load i32, i32* %DecodedByteAlign15, align 4, !tbaa !10
  %sub16 = sub nsw i32 0, %26
  %and17 = and i32 %add14, %sub16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i32 [ %mul9, %cond.true ], [ %and17, %cond.false ]
  %27 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %raster19 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %27, i32 0, i32 18
  store i32 %cond18, i32* %raster19, align 4, !tbaa !11
  store i32 %cond18, i32* %raster, align 4, !tbaa !8
  %28 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %28, i32 0, i32 6
  store i32 0, i32* %bits, align 4, !tbaa !12
  %29 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits_left = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %29, i32 0, i32 7
  store i32 32, i32* %bits_left, align 4, !tbaa !13
  %30 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lcode = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %30, i32 0, i32 23
  store i8* null, i8** %lcode, align 8, !tbaa !14
  %31 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %31, i32 0, i32 20
  store i8* null, i8** %lprev, align 8, !tbaa !15
  %32 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %32, i32 0, i32 19
  store i8* null, i8** %lbuf, align 8, !tbaa !16
  %33 = load i32, i32* %columns, align 4, !tbaa !8
  %cmp20 = icmp sgt i32 %33, 54613333
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %34 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %34, i32 0, i32 1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !17
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %36 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !19
  %37 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !17
  %39 = load i32, i32* %raster, align 4, !tbaa !8
  %add22 = add nsw i32 %39, 4
  %call = call i8* %36(%struct.gs_memory_s* %38, i32 %add22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #4
  %40 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf23 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %40, i32 0, i32 19
  store i8* %call, i8** %lbuf23, align 8, !tbaa !16
  %41 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %41, i32 0, i32 1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !17
  %procs25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %alloc_bytes26 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs25, i32 0, i32 7
  %43 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes26, align 8, !tbaa !19
  %44 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %44, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !17
  %46 = load i32, i32* %code_bytes, align 4, !tbaa !8
  %call28 = call i8* %43(%struct.gs_memory_s* %45, i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #4
  %47 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lcode29 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %47, i32 0, i32 23
  store i8* %call28, i8** %lcode29, align 8, !tbaa !14
  %48 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf30 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %48, i32 0, i32 19
  %49 = load i8*, i8** %lbuf30, align 8, !tbaa !16
  %cmp31 = icmp eq i8* %49, null
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %50 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lcode32 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %50, i32 0, i32 23
  %51 = load i8*, i8** %lcode32, align 8, !tbaa !14
  %cmp33 = icmp eq i8* %51, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false, %if.end
  %52 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void @s_CFE_release(%struct.stream_state_s* %52) #4
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %lor.lhs.false
  %53 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf36 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %53, i32 0, i32 19
  %54 = load i8*, i8** %lbuf36, align 8, !tbaa !16
  %55 = load i32, i32* %raster, align 4, !tbaa !8
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  %call37 = call i8* @memset(i8* %add.ptr, i32 0, i64 4) #5
  %56 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K38 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %56, i32 0, i32 9
  %57 = load i32, i32* %K38, align 4, !tbaa !9
  %cmp39 = icmp ne i32 %57, 0
  br i1 %cmp39, label %if.then.40, label %if.end.74

if.then.40:                                       ; preds = %if.end.35
  %58 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %58, i32 0, i32 1
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !17
  %procs42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %alloc_bytes43 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs42, i32 0, i32 7
  %60 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes43, align 8, !tbaa !19
  %61 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %61, i32 0, i32 1
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !17
  %63 = load i32, i32* %raster, align 4, !tbaa !8
  %add45 = add nsw i32 %63, 4
  %call46 = call i8* %60(%struct.gs_memory_s* %62, i32 %add45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #4
  %64 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev47 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %64, i32 0, i32 20
  store i8* %call46, i8** %lprev47, align 8, !tbaa !15
  %65 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev48 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %65, i32 0, i32 20
  %66 = load i8*, i8** %lprev48, align 8, !tbaa !15
  %cmp49 = icmp eq i8* %66, null
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.40
  %67 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void @s_CFE_release(%struct.stream_state_s* %67) #4
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.then.40
  %68 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev52 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %68, i32 0, i32 20
  %69 = load i8*, i8** %lprev52, align 8, !tbaa !15
  %70 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %70, i32 0, i32 15
  %71 = load i32, i32* %BlackIs1, align 4, !tbaa !22
  %tobool53 = icmp ne i32 %71, 0
  %cond54 = select i1 %tobool53, i32 0, i32 255
  %72 = load i32, i32* %raster, align 4, !tbaa !8
  %add55 = add nsw i32 %72, 4
  %conv = sext i32 %add55 to i64
  %call56 = call i8* @memset(i8* %69, i32 %cond54, i64 %conv) #5
  %73 = load i32, i32* %columns, align 4, !tbaa !8
  %and57 = and i32 %73, 7
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.end.51
  %74 = load i32, i32* %columns, align 4, !tbaa !8
  %and60 = and i32 %74, 7
  %shr61 = ashr i32 128, %and60
  %75 = load i32, i32* %raster, align 4, !tbaa !8
  %sub62 = sub nsw i32 %75, 1
  %idxprom = sext i32 %sub62 to i64
  %76 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev63 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %76, i32 0, i32 20
  %77 = load i8*, i8** %lprev63, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i8, i8* %77, i64 %idxprom
  %78 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %conv64 = zext i8 %78 to i32
  %xor = xor i32 %conv64, %shr61
  %conv65 = trunc i32 %xor to i8
  store i8 %conv65, i8* %arrayidx, align 1, !tbaa !23
  br label %if.end.73

if.else:                                          ; preds = %if.end.51
  %79 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev66 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %79, i32 0, i32 20
  %80 = load i8*, i8** %lprev66, align 8, !tbaa !15
  %arrayidx67 = getelementptr inbounds i8, i8* %80, i64 0
  %81 = load i8, i8* %arrayidx67, align 1, !tbaa !23
  %conv68 = zext i8 %81 to i32
  %neg = xor i32 %conv68, -1
  %conv69 = trunc i32 %neg to i8
  %82 = load i32, i32* %raster, align 4, !tbaa !8
  %idxprom70 = sext i32 %82 to i64
  %83 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev71 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %83, i32 0, i32 20
  %84 = load i8*, i8** %lprev71, align 8, !tbaa !15
  %arrayidx72 = getelementptr inbounds i8, i8* %84, i64 %idxprom70
  store i8 %conv69, i8* %arrayidx72, align 1, !tbaa !23
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.59
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.35
  %85 = load i32, i32* %raster, align 4, !tbaa !8
  %86 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %read_count = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %86, i32 0, i32 24
  store i32 %85, i32* %read_count, align 4, !tbaa !24
  %87 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %write_count = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %87, i32 0, i32 25
  store i32 0, i32* %write_count, align 4, !tbaa !25
  %88 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K75 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %88, i32 0, i32 9
  %89 = load i32, i32* %K75, align 4, !tbaa !9
  %cmp76 = icmp sgt i32 %89, 0
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %if.end.74
  br label %cond.end.81

cond.false.79:                                    ; preds = %if.end.74
  %90 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K80 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %90, i32 0, i32 9
  %91 = load i32, i32* %K80, align 4, !tbaa !9
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.78
  %cond82 = phi i32 [ 1, %cond.true.78 ], [ %91, %cond.false.79 ]
  %92 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %k_left = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %92, i32 0, i32 21
  store i32 %cond82, i32* %k_left, align 4, !tbaa !26
  %93 = load i32, i32* %code_bytes, align 4, !tbaa !8
  %94 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %max_code_bytes = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %94, i32 0, i32 22
  store i32 %93, i32* %max_code_bytes, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.81, %if.then.50, %if.then.34, %if.then
  %95 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %code_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %columns to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal i32 @s_CFE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_CFE_state_s*, align 8
  %rlimit = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %raster = alloca i32, align 4
  %end_mask = alloca i8, align 1
  %status = alloca i32, align 4
  %w = alloca %struct.stream_cursor_write_s, align 8
  %wcount = alloca i32, align 4
  %ccount = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rcount = alloca i32, align 4
  %ccount33 = alloca i32, align 4
  %end = alloca i8*, align 8
  %end_bit = alloca i8, align 1
  %not_bit = alloca i8, align 1
  %rp = alloca %struct.hce_code_s*, align 8
  %run = alloca %struct.hce_code_s, align 2
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %temp = alloca i8*, align 8
  %rp258 = alloca %struct.hce_code_s*, align 8
  %i = alloca i32, align 4
  %bits_to_write = alloca i32, align 4
  %q = alloca i8*, align 8
  %bits278 = alloca i32, align 4
  %bits_left279 = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !8
  %0 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_CFE_state_s*
  store %struct.stream_CFE_state_s* %2, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !28
  store i8* %5, i8** %rlimit, align 8, !tbaa !1
  %6 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 2
  %8 = load i8*, i8** %limit1, align 8, !tbaa !30
  store i8* %8, i8** %wlimit, align 8, !tbaa !1
  %9 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %raster2 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %10, i32 0, i32 18
  %11 = load i32, i32* %raster2, align 4, !tbaa !11
  store i32 %11, i32* %raster, align 4, !tbaa !8
  call void @llvm.lifetime.start(i64 1, i8* %end_mask) #2
  %12 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %12, i32 0, i32 12
  %13 = load i32, i32* %Columns, align 4, !tbaa !5
  %sub = sub nsw i32 0, %13
  %and = and i32 %sub, 7
  %shl = shl i32 1, %and
  %conv = trunc i32 %shl to i8
  store i8 %conv, i8* %end_mask, align 1, !tbaa !23
  %14 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 0, i32* %status, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.252, %entry
  %15 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #2
  br label %do.body

do.body:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.body.3
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %16 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %write_count = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %16, i32 0, i32 25
  %17 = load i32, i32* %write_count, align 4, !tbaa !25
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %do.end.5
  %18 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %20 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %20, i32 0, i32 1
  %21 = load i8*, i8** %ptr, align 8, !tbaa !32
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv6, i32* %wcount, align 4, !tbaa !8
  %22 = bitcast i32* %ccount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load i32, i32* %wcount, align 4, !tbaa !8
  %24 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %write_count7 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %24, i32 0, i32 25
  %25 = load i32, i32* %write_count7, align 4, !tbaa !25
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %26 = load i32, i32* %wcount, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %27 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %write_count9 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %27, i32 0, i32 25
  %28 = load i32, i32* %write_count9, align 4, !tbaa !25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %28, %cond.false ]
  store i32 %cond, i32* %ccount, align 4, !tbaa !8
  %29 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %29, i32 0, i32 1
  %30 = load i8*, i8** %ptr10, align 8, !tbaa !32
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lcode = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %31, i32 0, i32 23
  %32 = load i8*, i8** %lcode, align 8, !tbaa !14
  %33 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %code_bytes = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %33, i32 0, i32 26
  %34 = load i32, i32* %code_bytes, align 4, !tbaa !33
  %idx.ext = sext i32 %34 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  %35 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %write_count12 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %35, i32 0, i32 25
  %36 = load i32, i32* %write_count12, align 4, !tbaa !25
  %idx.ext13 = sext i32 %36 to i64
  %idx.neg = sub i64 0, %idx.ext13
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr11, i64 %idx.neg
  %37 = load i32, i32* %ccount, align 4, !tbaa !8
  %conv15 = sext i32 %37 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr14, i64 %conv15) #5
  %38 = load i32, i32* %ccount, align 4, !tbaa !8
  %39 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %39, i32 0, i32 1
  %40 = load i8*, i8** %ptr16, align 8, !tbaa !32
  %idx.ext17 = sext i32 %38 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %40, i64 %idx.ext17
  store i8* %add.ptr18, i8** %ptr16, align 8, !tbaa !32
  %41 = load i32, i32* %ccount, align 4, !tbaa !8
  %42 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %write_count19 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %42, i32 0, i32 25
  %43 = load i32, i32* %write_count19, align 4, !tbaa !25
  %sub20 = sub nsw i32 %43, %41
  store i32 %sub20, i32* %write_count19, align 4, !tbaa !25
  %cmp21 = icmp sgt i32 %sub20, 0
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %cond.end
  store i32 1, i32* %status, align 4, !tbaa !8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.23
  %44 = bitcast i32* %ccount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.250 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont, %do.end.5
  %46 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %read_count = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %46, i32 0, i32 24
  %47 = load i32, i32* %read_count, align 4, !tbaa !24
  %tobool26 = icmp ne i32 %47, 0
  br i1 %tobool26, label %if.then.27, label %if.end.70

if.then.27:                                       ; preds = %if.end.25
  %48 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %50 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr28 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %50, i32 0, i32 0
  %51 = load i8*, i8** %ptr28, align 8, !tbaa !34
  %sub.ptr.lhs.cast29 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %51 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %conv32 = trunc i64 %sub.ptr.sub31 to i32
  store i32 %conv32, i32* %rcount, align 4, !tbaa !8
  %52 = bitcast i32* %ccount33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load i32, i32* %rcount, align 4, !tbaa !8
  %54 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %read_count34 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %54, i32 0, i32 24
  %55 = load i32, i32* %read_count34, align 4, !tbaa !24
  %cmp35 = icmp slt i32 %53, %55
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %if.then.27
  %56 = load i32, i32* %rcount, align 4, !tbaa !8
  br label %cond.end.40

cond.false.38:                                    ; preds = %if.then.27
  %57 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %read_count39 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %57, i32 0, i32 24
  %58 = load i32, i32* %read_count39, align 4, !tbaa !24
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.37
  %cond41 = phi i32 [ %56, %cond.true.37 ], [ %58, %cond.false.38 ]
  store i32 %cond41, i32* %ccount33, align 4, !tbaa !8
  %59 = load i32, i32* %rcount, align 4, !tbaa !8
  %cmp42 = icmp eq i32 %59, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %cond.end.40
  %60 = load i32, i32* %last.addr, align 4, !tbaa !8
  %tobool44 = icmp ne i32 %60, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.66

if.end.46:                                        ; preds = %land.lhs.true, %cond.end.40
  %61 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %61, i32 0, i32 19
  %62 = load i8*, i8** %lbuf, align 8, !tbaa !16
  %63 = load i32, i32* %raster, align 4, !tbaa !8
  %idx.ext47 = sext i32 %63 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %62, i64 %idx.ext47
  %64 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %read_count49 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %64, i32 0, i32 24
  %65 = load i32, i32* %read_count49, align 4, !tbaa !24
  %idx.ext50 = sext i32 %65 to i64
  %idx.neg51 = sub i64 0, %idx.ext50
  %add.ptr52 = getelementptr inbounds i8, i8* %add.ptr48, i64 %idx.neg51
  %66 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr53 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %66, i32 0, i32 0
  %67 = load i8*, i8** %ptr53, align 8, !tbaa !34
  %add.ptr54 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i32, i32* %ccount33, align 4, !tbaa !8
  %conv55 = sext i32 %68 to i64
  %call56 = call i8* @memcpy(i8* %add.ptr52, i8* %add.ptr54, i64 %conv55) #5
  %69 = load i32, i32* %ccount33, align 4, !tbaa !8
  %70 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr57 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %70, i32 0, i32 0
  %71 = load i8*, i8** %ptr57, align 8, !tbaa !34
  %idx.ext58 = sext i32 %69 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %71, i64 %idx.ext58
  store i8* %add.ptr59, i8** %ptr57, align 8, !tbaa !34
  %72 = load i32, i32* %ccount33, align 4, !tbaa !8
  %73 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %read_count60 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %73, i32 0, i32 24
  %74 = load i32, i32* %read_count60, align 4, !tbaa !24
  %sub61 = sub nsw i32 %74, %72
  store i32 %sub61, i32* %read_count60, align 4, !tbaa !24
  %cmp62 = icmp ne i32 %sub61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.46
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.66

if.end.65:                                        ; preds = %if.end.46
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.66

cleanup.66:                                       ; preds = %if.end.65, %if.then.64, %if.then.45
  %75 = bitcast i32* %ccount33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %cleanup.dest.68 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.68, label %cleanup.250 [
    i32 0, label %cleanup.cont.69
  ]

cleanup.cont.69:                                  ; preds = %cleanup.66
  br label %if.end.70

if.end.70:                                        ; preds = %cleanup.cont.69, %if.end.25
  %77 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf71 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %78, i32 0, i32 19
  %79 = load i8*, i8** %lbuf71, align 8, !tbaa !16
  %80 = load i32, i32* %raster, align 4, !tbaa !8
  %idx.ext72 = sext i32 %80 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %79, i64 %idx.ext72
  %add.ptr74 = getelementptr inbounds i8, i8* %add.ptr73, i64 -1
  store i8* %add.ptr74, i8** %end, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %end_bit) #2
  %81 = load i8*, i8** %end, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !23
  %conv75 = zext i8 %82 to i32
  %83 = load i8, i8* %end_mask, align 1, !tbaa !23
  %conv76 = zext i8 %83 to i32
  %and77 = and i32 %conv75, %conv76
  %conv78 = trunc i32 %and77 to i8
  store i8 %conv78, i8* %end_bit, align 1, !tbaa !23
  call void @llvm.lifetime.start(i64 1, i8* %not_bit) #2
  %84 = load i8, i8* %end_bit, align 1, !tbaa !23
  %conv79 = zext i8 %84 to i32
  %85 = load i8, i8* %end_mask, align 1, !tbaa !23
  %conv80 = zext i8 %85 to i32
  %xor = xor i32 %conv79, %conv80
  %conv81 = trunc i32 %xor to i8
  store i8 %conv81, i8* %not_bit, align 1, !tbaa !23
  %86 = load i8, i8* %end_mask, align 1, !tbaa !23
  %conv82 = zext i8 %86 to i32
  %sub83 = sub nsw i32 0, %conv82
  %87 = load i8*, i8** %end, align 8, !tbaa !1
  %88 = load i8, i8* %87, align 1, !tbaa !23
  %conv84 = zext i8 %88 to i32
  %and85 = and i32 %conv84, %sub83
  %conv86 = trunc i32 %and85 to i8
  store i8 %conv86, i8* %87, align 1, !tbaa !23
  %89 = load i8, i8* %end_mask, align 1, !tbaa !23
  %conv87 = zext i8 %89 to i32
  %cmp88 = icmp eq i32 %conv87, 1
  br i1 %cmp88, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %if.end.70
  %90 = load i8, i8* %end_bit, align 1, !tbaa !23
  %conv91 = zext i8 %90 to i32
  %tobool92 = icmp ne i32 %conv91, 0
  %cond93 = select i1 %tobool92, i32 64, i32 128
  %conv94 = trunc i32 %cond93 to i8
  %91 = load i8*, i8** %end, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %conv94, i8* %arrayidx, align 1, !tbaa !23
  br label %if.end.116

if.else:                                          ; preds = %if.end.70
  %92 = load i8, i8* %end_mask, align 1, !tbaa !23
  %conv95 = zext i8 %92 to i32
  %cmp96 = icmp eq i32 %conv95, 2
  br i1 %cmp96, label %if.then.98, label %if.else.106

if.then.98:                                       ; preds = %if.else
  %93 = load i8, i8* %not_bit, align 1, !tbaa !23
  %conv99 = zext i8 %93 to i32
  %shr = ashr i32 %conv99, 1
  %94 = load i8*, i8** %end, align 8, !tbaa !1
  %95 = load i8, i8* %94, align 1, !tbaa !23
  %conv100 = zext i8 %95 to i32
  %or = or i32 %conv100, %shr
  %conv101 = trunc i32 %or to i8
  store i8 %conv101, i8* %94, align 1, !tbaa !23
  %96 = load i8, i8* %end_bit, align 1, !tbaa !23
  %conv102 = zext i8 %96 to i32
  %shl103 = shl i32 %conv102, 7
  %conv104 = trunc i32 %shl103 to i8
  %97 = load i8*, i8** %end, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i8, i8* %97, i64 1
  store i8 %conv104, i8* %arrayidx105, align 1, !tbaa !23
  br label %if.end.115

if.else.106:                                      ; preds = %if.else
  %98 = load i8, i8* %not_bit, align 1, !tbaa !23
  %conv107 = zext i8 %98 to i32
  %shr108 = ashr i32 %conv107, 1
  %99 = load i8, i8* %end_bit, align 1, !tbaa !23
  %conv109 = zext i8 %99 to i32
  %shr110 = ashr i32 %conv109, 2
  %or111 = or i32 %shr108, %shr110
  %100 = load i8*, i8** %end, align 8, !tbaa !1
  %101 = load i8, i8* %100, align 1, !tbaa !23
  %conv112 = zext i8 %101 to i32
  %or113 = or i32 %conv112, %or111
  %conv114 = trunc i32 %or113 to i8
  store i8 %conv114, i8* %100, align 1, !tbaa !23
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.106, %if.then.98
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.90
  call void @llvm.lifetime.end(i64 1, i8* %not_bit) #2
  call void @llvm.lifetime.end(i64 1, i8* %end_bit) #2
  %102 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %104 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr117 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %104, i32 0, i32 1
  %105 = load i8*, i8** %ptr117, align 8, !tbaa !32
  %sub.ptr.lhs.cast118 = ptrtoint i8* %103 to i64
  %sub.ptr.rhs.cast119 = ptrtoint i8* %105 to i64
  %sub.ptr.sub120 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast119
  %106 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %max_code_bytes = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %106, i32 0, i32 22
  %107 = load i32, i32* %max_code_bytes, align 4, !tbaa !27
  %conv121 = sext i32 %107 to i64
  %cmp122 = icmp sge i64 %sub.ptr.sub120, %conv121
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %if.end.116
  %108 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %109 = bitcast %struct.stream_cursor_write_s* %w to i8*
  %110 = bitcast %struct.stream_cursor_write_s* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 24, i32 8, i1 false), !tbaa.struct !35
  br label %if.end.134

if.else.125:                                      ; preds = %if.end.116
  %111 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lcode126 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %111, i32 0, i32 23
  %112 = load i8*, i8** %lcode126, align 8, !tbaa !14
  %add.ptr127 = getelementptr inbounds i8, i8* %112, i64 -1
  %ptr128 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr127, i8** %ptr128, align 8, !tbaa !32
  %ptr129 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %113 = load i8*, i8** %ptr129, align 8, !tbaa !32
  %114 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %max_code_bytes130 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %114, i32 0, i32 22
  %115 = load i32, i32* %max_code_bytes130, align 4, !tbaa !27
  %idx.ext131 = sext i32 %115 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %113, i64 %idx.ext131
  %limit133 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr132, i8** %limit133, align 8, !tbaa !30
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.125, %if.then.124
  %116 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %EndOfLine = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %116, i32 0, i32 10
  %117 = load i32, i32* %EndOfLine, align 4, !tbaa !36
  %tobool135 = icmp ne i32 %117, 0
  br i1 %tobool135, label %if.then.136, label %if.else.191

if.then.136:                                      ; preds = %if.end.134
  %118 = bitcast %struct.hce_code_s** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #2
  %119 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %119, i32 0, i32 9
  %120 = load i32, i32* %K, align 4, !tbaa !9
  %cmp137 = icmp sle i32 %120, 0
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %if.then.136
  br label %cond.end.144

cond.false.140:                                   ; preds = %if.then.136
  %121 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %k_left = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %121, i32 0, i32 21
  %122 = load i32, i32* %k_left, align 4, !tbaa !26
  %cmp141 = icmp sgt i32 %122, 1
  %cond143 = select i1 %cmp141, %struct.hce_code_s* @cf2_run_eol_2d, %struct.hce_code_s* @cf2_run_eol_1d
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.140, %cond.true.139
  %cond145 = phi %struct.hce_code_s* [ @cf_run_eol, %cond.true.139 ], [ %cond143, %cond.false.140 ]
  store %struct.hce_code_s* %cond145, %struct.hce_code_s** %rp, align 8, !tbaa !1
  %123 = bitcast %struct.hce_code_s* %run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #2
  %124 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #2
  %125 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #2
  %126 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits146 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %126, i32 0, i32 6
  %127 = load i32, i32* %bits146, align 4, !tbaa !12
  store i32 %127, i32* %bits, align 4, !tbaa !8
  %128 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits_left147 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %128, i32 0, i32 7
  %129 = load i32, i32* %bits_left147, align 4, !tbaa !13
  store i32 %129, i32* %bits_left, align 4, !tbaa !8
  %130 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %EncodedByteAlign = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %130, i32 0, i32 11
  %131 = load i32, i32* %EncodedByteAlign, align 4, !tbaa !37
  %tobool148 = icmp ne i32 %131, 0
  br i1 %tobool148, label %if.then.149, label %if.end.165

if.then.149:                                      ; preds = %cond.end.144
  %132 = load %struct.hce_code_s*, %struct.hce_code_s** %rp, align 8, !tbaa !1
  %133 = bitcast %struct.hce_code_s* %run to i8*
  %134 = bitcast %struct.hce_code_s* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %133, i8* %134, i64 4, i32 2, i1 false), !tbaa.struct !38
  %135 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub150 = sub nsw i32 %135, 12
  %and151 = and i32 %sub150, 7
  %code_length = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %run, i32 0, i32 1
  %136 = load i16, i16* %code_length, align 2, !tbaa !41
  %conv152 = zext i16 %136 to i32
  %add = add nsw i32 %conv152, %and151
  %conv153 = trunc i32 %add to i16
  store i16 %conv153, i16* %code_length, align 2, !tbaa !41
  %code_length154 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %run, i32 0, i32 1
  %137 = load i16, i16* %code_length154, align 2, !tbaa !41
  %conv155 = zext i16 %137 to i32
  %cmp156 = icmp sgt i32 %conv155, 16
  br i1 %cmp156, label %if.then.158, label %if.end.164

if.then.158:                                      ; preds = %if.then.149
  %code_length159 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %run, i32 0, i32 1
  %138 = load i16, i16* %code_length159, align 2, !tbaa !41
  %conv160 = zext i16 %138 to i32
  %and161 = and i32 %conv160, 7
  %139 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub162 = sub nsw i32 %139, %and161
  store i32 %sub162, i32* %bits_left, align 4, !tbaa !8
  %code_length163 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %run, i32 0, i32 1
  store i16 16, i16* %code_length163, align 2, !tbaa !41
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.158, %if.then.149
  store %struct.hce_code_s* %run, %struct.hce_code_s** %rp, align 8, !tbaa !1
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %cond.end.144
  %140 = load %struct.hce_code_s*, %struct.hce_code_s** %rp, align 8, !tbaa !1
  %code_length166 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %140, i32 0, i32 1
  %141 = load i16, i16* %code_length166, align 2, !tbaa !41
  %conv167 = zext i16 %141 to i32
  %142 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub168 = sub nsw i32 %142, %conv167
  store i32 %sub168, i32* %bits_left, align 4, !tbaa !8
  %cmp169 = icmp sge i32 %sub168, 0
  br i1 %cmp169, label %cond.true.171, label %cond.false.175

cond.true.171:                                    ; preds = %if.end.165
  %143 = load %struct.hce_code_s*, %struct.hce_code_s** %rp, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %143, i32 0, i32 0
  %144 = load i16, i16* %code, align 2, !tbaa !43
  %conv172 = zext i16 %144 to i32
  %145 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl173 = shl i32 %conv172, %145
  %146 = load i32, i32* %bits, align 4, !tbaa !8
  %add174 = add i32 %146, %shl173
  store i32 %add174, i32* %bits, align 4, !tbaa !8
  br label %cond.end.187

cond.false.175:                                   ; preds = %if.end.165
  %147 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %147, i32 0, i32 5
  %148 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !44
  %ptr176 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %149 = load i8*, i8** %ptr176, align 8, !tbaa !32
  %add.ptr177 = getelementptr inbounds i8, i8* %149, i64 4
  store i8* %add.ptr177, i8** %ptr176, align 8, !tbaa !32
  %150 = load i32, i32* %bits, align 4, !tbaa !8
  %151 = load %struct.hce_code_s*, %struct.hce_code_s** %rp, align 8, !tbaa !1
  %code178 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %151, i32 0, i32 0
  %152 = load i16, i16* %code178, align 2, !tbaa !43
  %conv179 = zext i16 %152 to i32
  %153 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub180 = sub nsw i32 0, %153
  %shr181 = ashr i32 %conv179, %sub180
  %add182 = add i32 %150, %shr181
  call void @hc_put_code_proc(i32 %148, i8* %add.ptr177, i32 %add182) #4
  %154 = load %struct.hce_code_s*, %struct.hce_code_s** %rp, align 8, !tbaa !1
  %code183 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %154, i32 0, i32 0
  %155 = load i16, i16* %code183, align 2, !tbaa !43
  %conv184 = zext i16 %155 to i32
  %156 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add185 = add nsw i32 %156, 32
  store i32 %add185, i32* %bits_left, align 4, !tbaa !8
  %shl186 = shl i32 %conv184, %add185
  store i32 %shl186, i32* %bits, align 4, !tbaa !8
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.175, %cond.true.171
  %cond188 = phi i32 [ %add174, %cond.true.171 ], [ %shl186, %cond.false.175 ]
  %157 = load i32, i32* %bits, align 4, !tbaa !8
  %158 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits189 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %158, i32 0, i32 6
  store i32 %157, i32* %bits189, align 4, !tbaa !12
  %159 = load i32, i32* %bits_left, align 4, !tbaa !8
  %160 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits_left190 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %160, i32 0, i32 7
  store i32 %159, i32* %bits_left190, align 4, !tbaa !13
  %161 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #2
  %162 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast %struct.hce_code_s* %run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %164 = bitcast %struct.hce_code_s** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #2
  br label %if.end.198

if.else.191:                                      ; preds = %if.end.134
  %165 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %EncodedByteAlign192 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %165, i32 0, i32 11
  %166 = load i32, i32* %EncodedByteAlign192, align 4, !tbaa !37
  %tobool193 = icmp ne i32 %166, 0
  br i1 %tobool193, label %if.then.194, label %if.end.197

if.then.194:                                      ; preds = %if.else.191
  %167 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits_left195 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %167, i32 0, i32 7
  %168 = load i32, i32* %bits_left195, align 4, !tbaa !13
  %and196 = and i32 %168, -8
  store i32 %and196, i32* %bits_left195, align 4, !tbaa !13
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.194, %if.else.191
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %cond.end.187
  %169 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K199 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %169, i32 0, i32 9
  %170 = load i32, i32* %K199, align 4, !tbaa !9
  %cmp200 = icmp eq i32 %170, 0
  br i1 %cmp200, label %if.then.202, label %if.else.204

if.then.202:                                      ; preds = %if.end.198
  %171 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %172 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf203 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %172, i32 0, i32 19
  %173 = load i8*, i8** %lbuf203, align 8, !tbaa !16
  call void @cf_encode_1d(%struct.stream_CFE_state_s* %171, i8* %173, %struct.stream_cursor_write_s* %w) #4
  br label %if.end.222

if.else.204:                                      ; preds = %if.end.198
  %174 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K205 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %174, i32 0, i32 9
  %175 = load i32, i32* %K205, align 4, !tbaa !9
  %cmp206 = icmp slt i32 %175, 0
  br i1 %cmp206, label %if.then.208, label %if.else.210

if.then.208:                                      ; preds = %if.else.204
  %176 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %177 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf209 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %177, i32 0, i32 19
  %178 = load i8*, i8** %lbuf209, align 8, !tbaa !16
  %179 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %179, i32 0, i32 20
  %180 = load i8*, i8** %lprev, align 8, !tbaa !15
  call void @cf_encode_2d(%struct.stream_CFE_state_s* %176, i8* %178, %struct.stream_cursor_write_s* %w, i8* %180) #4
  br label %if.end.221

if.else.210:                                      ; preds = %if.else.204
  %181 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %k_left211 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %181, i32 0, i32 21
  %182 = load i32, i32* %k_left211, align 4, !tbaa !26
  %dec = add nsw i32 %182, -1
  store i32 %dec, i32* %k_left211, align 4, !tbaa !26
  %tobool212 = icmp ne i32 %dec, 0
  br i1 %tobool212, label %if.then.213, label %if.else.216

if.then.213:                                      ; preds = %if.else.210
  %183 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %184 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf214 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %184, i32 0, i32 19
  %185 = load i8*, i8** %lbuf214, align 8, !tbaa !16
  %186 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev215 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %186, i32 0, i32 20
  %187 = load i8*, i8** %lprev215, align 8, !tbaa !15
  call void @cf_encode_2d(%struct.stream_CFE_state_s* %183, i8* %185, %struct.stream_cursor_write_s* %w, i8* %187) #4
  br label %if.end.220

if.else.216:                                      ; preds = %if.else.210
  %188 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %189 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf217 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %189, i32 0, i32 19
  %190 = load i8*, i8** %lbuf217, align 8, !tbaa !16
  call void @cf_encode_1d(%struct.stream_CFE_state_s* %188, i8* %190, %struct.stream_cursor_write_s* %w) #4
  %191 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K218 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %191, i32 0, i32 9
  %192 = load i32, i32* %K218, align 4, !tbaa !9
  %193 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %k_left219 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %193, i32 0, i32 21
  store i32 %192, i32* %k_left219, align 4, !tbaa !26
  br label %if.end.220

if.end.220:                                       ; preds = %if.else.216, %if.then.213
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.then.208
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.202
  %limit223 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  %194 = load i8*, i8** %limit223, align 8, !tbaa !30
  %195 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp224 = icmp eq i8* %194, %195
  br i1 %cmp224, label %if.then.226, label %if.else.229

if.then.226:                                      ; preds = %if.end.222
  %ptr227 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %196 = load i8*, i8** %ptr227, align 8, !tbaa !32
  %197 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr228 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %197, i32 0, i32 1
  store i8* %196, i8** %ptr228, align 8, !tbaa !32
  br label %if.end.239

if.else.229:                                      ; preds = %if.end.222
  %ptr230 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %198 = load i8*, i8** %ptr230, align 8, !tbaa !32
  %199 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lcode231 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %199, i32 0, i32 23
  %200 = load i8*, i8** %lcode231, align 8, !tbaa !14
  %add.ptr232 = getelementptr inbounds i8, i8* %200, i64 -1
  %sub.ptr.lhs.cast233 = ptrtoint i8* %198 to i64
  %sub.ptr.rhs.cast234 = ptrtoint i8* %add.ptr232 to i64
  %sub.ptr.sub235 = sub i64 %sub.ptr.lhs.cast233, %sub.ptr.rhs.cast234
  %conv236 = trunc i64 %sub.ptr.sub235 to i32
  %201 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %code_bytes237 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %201, i32 0, i32 26
  store i32 %conv236, i32* %code_bytes237, align 4, !tbaa !33
  %202 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %write_count238 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %202, i32 0, i32 25
  store i32 %conv236, i32* %write_count238, align 4, !tbaa !25
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.229, %if.then.226
  %203 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K240 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %203, i32 0, i32 9
  %204 = load i32, i32* %K240, align 4, !tbaa !9
  %cmp241 = icmp ne i32 %204, 0
  br i1 %cmp241, label %if.then.243, label %if.end.248

if.then.243:                                      ; preds = %if.end.239
  %205 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %205) #2
  %206 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf244 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %206, i32 0, i32 19
  %207 = load i8*, i8** %lbuf244, align 8, !tbaa !16
  store i8* %207, i8** %temp, align 8, !tbaa !1
  %208 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev245 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %208, i32 0, i32 20
  %209 = load i8*, i8** %lprev245, align 8, !tbaa !15
  %210 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf246 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %210, i32 0, i32 19
  store i8* %209, i8** %lbuf246, align 8, !tbaa !16
  %211 = load i8*, i8** %temp, align 8, !tbaa !1
  %212 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev247 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %212, i32 0, i32 20
  store i8* %211, i8** %lprev247, align 8, !tbaa !15
  %213 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #2
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.243, %if.end.239
  %214 = load i32, i32* %raster, align 4, !tbaa !8
  %215 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %read_count249 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %215, i32 0, i32 24
  store i32 %214, i32* %read_count249, align 4, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.250

cleanup.250:                                      ; preds = %if.end.248, %cleanup.66, %cleanup
  %216 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %216) #2
  %cleanup.dest.251 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.251, label %unreachable [
    i32 0, label %cleanup.cont.252
    i32 2, label %for.end
  ]

cleanup.cont.252:                                 ; preds = %cleanup.250
  br label %for.cond

for.end:                                          ; preds = %cleanup.250
  %217 = load i32, i32* %last.addr, align 4, !tbaa !8
  %tobool253 = icmp ne i32 %217, 0
  br i1 %tobool253, label %land.lhs.true.254, label %if.end.334

land.lhs.true.254:                                ; preds = %for.end
  %218 = load i32, i32* %status, align 4, !tbaa !8
  %cmp255 = icmp eq i32 %218, 0
  br i1 %cmp255, label %if.then.257, label %if.end.334

if.then.257:                                      ; preds = %land.lhs.true.254
  %219 = bitcast %struct.hce_code_s** %rp258 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %219) #2
  %220 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K259 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %220, i32 0, i32 9
  %221 = load i32, i32* %K259, align 4, !tbaa !9
  %cmp260 = icmp sgt i32 %221, 0
  %cond262 = select i1 %cmp260, %struct.hce_code_s* @cf2_run_eol_1d, %struct.hce_code_s* @cf_run_eol
  store %struct.hce_code_s* %cond262, %struct.hce_code_s** %rp258, align 8, !tbaa !1
  %222 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %222) #2
  %223 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %EndOfBlock = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %223, i32 0, i32 14
  %224 = load i32, i32* %EndOfBlock, align 4, !tbaa !45
  %tobool263 = icmp ne i32 %224, 0
  br i1 %tobool263, label %cond.false.265, label %cond.true.264

cond.true.264:                                    ; preds = %if.then.257
  br label %cond.end.270

cond.false.265:                                   ; preds = %if.then.257
  %225 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K266 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %225, i32 0, i32 9
  %226 = load i32, i32* %K266, align 4, !tbaa !9
  %cmp267 = icmp slt i32 %226, 0
  %cond269 = select i1 %cmp267, i32 2, i32 6
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.false.265, %cond.true.264
  %cond271 = phi i32 [ 0, %cond.true.264 ], [ %cond269, %cond.false.265 ]
  store i32 %cond271, i32* %i, align 4, !tbaa !8
  %227 = bitcast i32* %bits_to_write to i8*
  call void @llvm.lifetime.start(i64 4, i8* %227) #2
  %228 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits_left272 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %228, i32 0, i32 7
  %229 = load i32, i32* %bits_left272, align 4, !tbaa !13
  %sub273 = sub nsw i32 32, %229
  %230 = load i32, i32* %i, align 4, !tbaa !8
  %231 = load %struct.hce_code_s*, %struct.hce_code_s** %rp258, align 8, !tbaa !1
  %code_length274 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %231, i32 0, i32 1
  %232 = load i16, i16* %code_length274, align 2, !tbaa !41
  %conv275 = zext i16 %232 to i32
  %mul = mul nsw i32 %230, %conv275
  %add276 = add nsw i32 %sub273, %mul
  store i32 %add276, i32* %bits_to_write, align 4, !tbaa !8
  %233 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %233) #2
  %234 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr277 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %234, i32 0, i32 1
  %235 = load i8*, i8** %ptr277, align 8, !tbaa !32
  store i8* %235, i8** %q, align 8, !tbaa !1
  %236 = bitcast i32* %bits278 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #2
  %237 = bitcast i32* %bits_left279 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #2
  %238 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %239 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast280 = ptrtoint i8* %238 to i64
  %sub.ptr.rhs.cast281 = ptrtoint i8* %239 to i64
  %sub.ptr.sub282 = sub i64 %sub.ptr.lhs.cast280, %sub.ptr.rhs.cast281
  %240 = load i32, i32* %bits_to_write, align 4, !tbaa !8
  %add283 = add i32 %240, 7
  %shr284 = lshr i32 %add283, 3
  %conv285 = zext i32 %shr284 to i64
  %cmp286 = icmp slt i64 %sub.ptr.sub282, %conv285
  br i1 %cmp286, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %cond.end.270
  store i32 1, i32* %status, align 4, !tbaa !8
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.289:                                       ; preds = %cond.end.270
  %241 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits290 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %241, i32 0, i32 6
  %242 = load i32, i32* %bits290, align 4, !tbaa !12
  store i32 %242, i32* %bits278, align 4, !tbaa !8
  %243 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %bits_left291 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %243, i32 0, i32 7
  %244 = load i32, i32* %bits_left291, align 4, !tbaa !13
  store i32 %244, i32* %bits_left279, align 4, !tbaa !8
  %245 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %EncodedByteAlign292 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %245, i32 0, i32 11
  %246 = load i32, i32* %EncodedByteAlign292, align 4, !tbaa !37
  %tobool293 = icmp ne i32 %246, 0
  br i1 %tobool293, label %if.then.294, label %if.end.296

if.then.294:                                      ; preds = %if.end.289
  %247 = load i32, i32* %bits_left279, align 4, !tbaa !8
  %and295 = and i32 %247, -8
  store i32 %and295, i32* %bits_left279, align 4, !tbaa !8
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.294, %if.end.289
  br label %while.cond

while.cond:                                       ; preds = %cond.end.322, %if.end.296
  %248 = load i32, i32* %i, align 4, !tbaa !8
  %dec297 = add nsw i32 %248, -1
  store i32 %dec297, i32* %i, align 4, !tbaa !8
  %cmp298 = icmp sge i32 %dec297, 0
  br i1 %cmp298, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %249 = load %struct.hce_code_s*, %struct.hce_code_s** %rp258, align 8, !tbaa !1
  %code_length300 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %249, i32 0, i32 1
  %250 = load i16, i16* %code_length300, align 2, !tbaa !41
  %conv301 = zext i16 %250 to i32
  %251 = load i32, i32* %bits_left279, align 4, !tbaa !8
  %sub302 = sub nsw i32 %251, %conv301
  store i32 %sub302, i32* %bits_left279, align 4, !tbaa !8
  %cmp303 = icmp sge i32 %sub302, 0
  br i1 %cmp303, label %cond.true.305, label %cond.false.310

cond.true.305:                                    ; preds = %while.body
  %252 = load %struct.hce_code_s*, %struct.hce_code_s** %rp258, align 8, !tbaa !1
  %code306 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %252, i32 0, i32 0
  %253 = load i16, i16* %code306, align 2, !tbaa !43
  %conv307 = zext i16 %253 to i32
  %254 = load i32, i32* %bits_left279, align 4, !tbaa !8
  %shl308 = shl i32 %conv307, %254
  %255 = load i32, i32* %bits278, align 4, !tbaa !8
  %add309 = add i32 %255, %shl308
  store i32 %add309, i32* %bits278, align 4, !tbaa !8
  br label %cond.end.322

cond.false.310:                                   ; preds = %while.body
  %256 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %FirstBitLowOrder311 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %256, i32 0, i32 5
  %257 = load i32, i32* %FirstBitLowOrder311, align 4, !tbaa !44
  %258 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr312 = getelementptr inbounds i8, i8* %258, i64 4
  store i8* %add.ptr312, i8** %q, align 8, !tbaa !1
  %259 = load i32, i32* %bits278, align 4, !tbaa !8
  %260 = load %struct.hce_code_s*, %struct.hce_code_s** %rp258, align 8, !tbaa !1
  %code313 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %260, i32 0, i32 0
  %261 = load i16, i16* %code313, align 2, !tbaa !43
  %conv314 = zext i16 %261 to i32
  %262 = load i32, i32* %bits_left279, align 4, !tbaa !8
  %sub315 = sub nsw i32 0, %262
  %shr316 = ashr i32 %conv314, %sub315
  %add317 = add i32 %259, %shr316
  call void @hc_put_code_proc(i32 %257, i8* %add.ptr312, i32 %add317) #4
  %263 = load %struct.hce_code_s*, %struct.hce_code_s** %rp258, align 8, !tbaa !1
  %code318 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %263, i32 0, i32 0
  %264 = load i16, i16* %code318, align 2, !tbaa !43
  %conv319 = zext i16 %264 to i32
  %265 = load i32, i32* %bits_left279, align 4, !tbaa !8
  %add320 = add nsw i32 %265, 32
  store i32 %add320, i32* %bits_left279, align 4, !tbaa !8
  %shl321 = shl i32 %conv319, %add320
  store i32 %shl321, i32* %bits278, align 4, !tbaa !8
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.310, %cond.true.305
  %cond323 = phi i32 [ %add309, %cond.true.305 ], [ %shl321, %cond.false.310 ]
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %266 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %267 = bitcast %struct.stream_CFE_state_s* %266 to %struct.stream_hc_state_s*
  %268 = load i8*, i8** %q, align 8, !tbaa !1
  %269 = load i32, i32* %bits278, align 4, !tbaa !8
  %270 = load i32, i32* %bits_left279, align 4, !tbaa !8
  %call324 = call i8* @hc_put_last_bits_proc(%struct.stream_hc_state_s* %267, i8* %268, i32 %269, i32 %270) #4
  %271 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr325 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %271, i32 0, i32 1
  store i8* %call324, i8** %ptr325, align 8, !tbaa !32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.326

cleanup.326:                                      ; preds = %if.then.288, %while.end
  %272 = bitcast i32* %bits_left279 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #2
  %273 = bitcast i32* %bits278 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #2
  %274 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #2
  %275 = bitcast i32* %bits_to_write to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #2
  %276 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #2
  %277 = bitcast %struct.hce_code_s** %rp258 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #2
  %cleanup.dest.332 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.332, label %cleanup.338 [
    i32 0, label %cleanup.cont.333
    i32 8, label %out
  ]

cleanup.cont.333:                                 ; preds = %cleanup.326
  br label %if.end.334

if.end.334:                                       ; preds = %cleanup.cont.333, %land.lhs.true.254, %for.end
  br label %out

out:                                              ; preds = %if.end.334, %cleanup.326
  br label %do.body.335

do.body.335:                                      ; preds = %out
  br label %do.cond.336

do.cond.336:                                      ; preds = %do.body.335
  br label %do.end.337

do.end.337:                                       ; preds = %do.cond.336
  %278 = load i32, i32* %status, align 4, !tbaa !8
  store i32 %278, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.338

cleanup.338:                                      ; preds = %do.end.337, %cleanup.326
  %279 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #2
  call void @llvm.lifetime.end(i64 1, i8* %end_mask) #2
  %280 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #2
  %281 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #2
  %282 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #2
  %283 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #2
  %284 = load i32, i32* %retval
  ret i32 %284

unreachable:                                      ; preds = %cleanup.250
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_CFE_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_CFE_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_CFE_state_s*
  store %struct.stream_CFE_state_s* %2, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !17
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !46
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !17
  %8 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %8, i32 0, i32 20
  %9 = load i8*, i8** %lprev, align 8, !tbaa !15
  call void %5(%struct.gs_memory_s* %7, i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)) #4
  %10 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !17
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object4, align 8, !tbaa !46
  %13 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %13, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !17
  %15 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lcode = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %15, i32 0, i32 23
  %16 = load i8*, i8** %lcode, align 8, !tbaa !14
  call void %12(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #4
  %17 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %17, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !17
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !46
  %20 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %20, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !17
  %22 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %22, i32 0, i32 19
  %23 = load i8*, i8** %lbuf, align 8, !tbaa !16
  call void %19(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #4
  %24 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_CFE_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_CFE_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_CFE_state_s*
  store %struct.stream_CFE_state_s* %2, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %Uncompressed = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %3, i32 0, i32 8
  store i32 0, i32* %Uncompressed, align 4, !tbaa !47
  %4 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %4, i32 0, i32 9
  store i32 0, i32* %K, align 4, !tbaa !9
  %5 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %EndOfLine = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %5, i32 0, i32 10
  store i32 0, i32* %EndOfLine, align 4, !tbaa !36
  %6 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %EncodedByteAlign = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %6, i32 0, i32 11
  store i32 0, i32* %EncodedByteAlign, align 4, !tbaa !37
  %7 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %7, i32 0, i32 12
  store i32 1728, i32* %Columns, align 4, !tbaa !5
  %8 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %Rows = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %8, i32 0, i32 13
  store i32 0, i32* %Rows, align 4, !tbaa !48
  %9 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %EndOfBlock = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %9, i32 0, i32 14
  store i32 1, i32* %EndOfBlock, align 4, !tbaa !45
  %10 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %10, i32 0, i32 15
  store i32 0, i32* %BlackIs1, align 4, !tbaa !22
  %11 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %DamagedRowsBeforeError = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %11, i32 0, i32 16
  store i32 0, i32* %DamagedRowsBeforeError, align 4, !tbaa !49
  %12 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %12, i32 0, i32 5
  store i32 0, i32* %FirstBitLowOrder, align 4, !tbaa !44
  %13 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %13, i32 0, i32 17
  store i32 1, i32* %DecodedByteAlign, align 4, !tbaa !10
  %14 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %14, i32 0, i32 19
  store i8* null, i8** %lbuf, align 8, !tbaa !16
  %15 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %15, i32 0, i32 20
  store i8* null, i8** %lprev, align 8, !tbaa !15
  %16 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %error_string = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %16, i32 0, i32 4
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %error_string, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !23
  %17 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss, align 8, !tbaa !1
  %lcode = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %17, i32 0, i32 23
  store i8* null, i8** %lcode, align 8, !tbaa !14
  %18 = bitcast %struct.stream_CFE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @hc_put_code_proc(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cf_encode_1d(%struct.stream_CFE_state_s* %ss, i8* %lbuf, %struct.stream_cursor_write_s* %pw) #0 {
entry:
  %ss.addr = alloca %struct.stream_CFE_state_s*, align 8
  %lbuf.addr = alloca i8*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %count = alloca i32, align 4
  %q = alloca i8*, align 8
  %end_count = alloca i32, align 4
  %rlen = alloca i32, align 4
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %p = alloca i8*, align 8
  %invert = alloca i8, align 1
  %data = alloca i32, align 4
  %rr = alloca %struct.hce_code_s, align 2
  %rr330 = alloca %struct.hce_code_s, align 2
  store %struct.stream_CFE_state_s* %ss, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  store i8* %lbuf, i8** %lbuf.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %1, i32 0, i32 18
  %2 = load i32, i32* %raster, align 4, !tbaa !11
  %shl = shl i32 %2, 3
  store i32 %shl, i32* %count, align 4, !tbaa !8
  %3 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !32
  store i8* %5, i8** %q, align 8, !tbaa !1
  %6 = bitcast i32* %end_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %7, i32 0, i32 12
  %8 = load i32, i32* %Columns, align 4, !tbaa !5
  %sub = sub nsw i32 0, %8
  %and = and i32 %sub, 7
  store i32 %and, i32* %end_count, align 4, !tbaa !8
  %9 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i8*, i8** %lbuf.addr, align 8, !tbaa !1
  store i8* %13, i8** %p, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %invert) #2
  %14 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %14, i32 0, i32 15
  %15 = load i32, i32* %BlackIs1, align 4, !tbaa !22
  %tobool = icmp ne i32 %15, 0
  %cond = select i1 %tobool, i32 0, i32 255
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %invert, align 1, !tbaa !23
  %16 = bitcast i32* %data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !23
  %conv1 = zext i8 %18 to i32
  %19 = load i8, i8* %invert, align 1, !tbaa !23
  %conv2 = zext i8 %19 to i32
  %xor = xor i32 %conv1, %conv2
  store i32 %xor, i32* %data, align 4, !tbaa !8
  %20 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits3 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %20, i32 0, i32 6
  %21 = load i32, i32* %bits3, align 4, !tbaa !12
  store i32 %21, i32* %bits, align 4, !tbaa !8
  %22 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left4 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %22, i32 0, i32 7
  %23 = load i32, i32* %bits_left4, align 4, !tbaa !13
  store i32 %23, i32* %bits_left, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %do.end.371, %entry
  %24 = load i32, i32* %count, align 4, !tbaa !8
  %25 = load i32, i32* %end_count, align 4, !tbaa !8
  %cmp = icmp ne i32 %24, %25
  br i1 %cmp, label %while.body, label %while.end.372

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %26 = load i32, i32* %data, align 4, !tbaa !8
  %xor6 = xor i32 %26, 255
  %idxprom = zext i32 %xor6 to i64
  %27 = load i32, i32* %count, align 4, !tbaa !8
  %and7 = and i32 %27, 7
  %idxprom8 = zext i32 %and7 to i64
  %arrayidx = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom8
  %28 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx9, align 1, !tbaa !23
  %conv10 = zext i8 %29 to i32
  store i32 %conv10, i32* %rlen, align 4, !tbaa !8
  %30 = load i32, i32* %rlen, align 4, !tbaa !8
  %cmp11 = icmp sge i32 %30, 8
  br i1 %cmp11, label %if.then, label %if.end.176

if.then:                                          ; preds = %do.body
  %31 = load i8, i8* %invert, align 1, !tbaa !23
  %conv13 = zext i8 %31 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.else.76

if.then.16:                                       ; preds = %if.then
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx17, align 1, !tbaa !23
  %tobool18 = icmp ne i8 %33, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.16
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx20, align 1, !tbaa !23
  %conv21 = zext i8 %35 to i32
  store i32 %conv21, i32* %data, align 4, !tbaa !8
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %37 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub22 = sub nsw i32 %37, 8
  store i32 %sub22, i32* %rlen, align 4, !tbaa !8
  br label %if.end.75

if.else:                                          ; preds = %if.then.16
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx23, align 1, !tbaa !23
  %tobool24 = icmp ne i8 %39, 0
  br i1 %tobool24, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %if.else
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx26, align 1, !tbaa !23
  %conv27 = zext i8 %41 to i32
  store i32 %conv27, i32* %data, align 4, !tbaa !8
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %add.ptr28, i8** %p, align 8, !tbaa !1
  br label %if.end.74

if.else.29:                                       ; preds = %if.else
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.42, %if.else.29
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %arrayidx31, align 1, !tbaa !23
  %conv32 = zext i8 %44 to i32
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %45, i64 3
  %46 = load i8, i8* %arrayidx33, align 1, !tbaa !23
  %conv34 = zext i8 %46 to i32
  %or = or i32 %conv32, %conv34
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %47, i64 4
  %48 = load i8, i8* %arrayidx35, align 1, !tbaa !23
  %conv36 = zext i8 %48 to i32
  %or37 = or i32 %or, %conv36
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %49, i64 5
  %50 = load i8, i8* %arrayidx38, align 1, !tbaa !23
  %conv39 = zext i8 %50 to i32
  %or40 = or i32 %or37, %conv39
  %tobool41 = icmp ne i32 %or40, 0
  %lnot = xor i1 %tobool41, true
  br i1 %lnot, label %while.body.42, label %while.end

while.body.42:                                    ; preds = %while.cond.30
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %add.ptr43, i8** %p, align 8, !tbaa !1
  %52 = load i32, i32* %rlen, align 4, !tbaa !8
  %add = add nsw i32 %52, 32
  store i32 %add, i32* %rlen, align 4, !tbaa !8
  br label %while.cond.30

while.end:                                        ; preds = %while.cond.30
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %53, i64 2
  %54 = load i8, i8* %arrayidx44, align 1, !tbaa !23
  %tobool45 = icmp ne i8 %54, 0
  br i1 %tobool45, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %while.end
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %55, i64 2
  %56 = load i8, i8* %arrayidx47, align 1, !tbaa !23
  %conv48 = zext i8 %56 to i32
  store i32 %conv48, i32* %data, align 4, !tbaa !8
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds i8, i8* %57, i64 3
  store i8* %add.ptr49, i8** %p, align 8, !tbaa !1
  %58 = load i32, i32* %rlen, align 4, !tbaa !8
  %add50 = add nsw i32 %58, 8
  store i32 %add50, i32* %rlen, align 4, !tbaa !8
  br label %if.end.73

if.else.51:                                       ; preds = %while.end
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %59, i64 3
  %60 = load i8, i8* %arrayidx52, align 1, !tbaa !23
  %tobool53 = icmp ne i8 %60, 0
  br i1 %tobool53, label %if.then.54, label %if.else.59

if.then.54:                                       ; preds = %if.else.51
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %61, i64 3
  %62 = load i8, i8* %arrayidx55, align 1, !tbaa !23
  %conv56 = zext i8 %62 to i32
  store i32 %conv56, i32* %data, align 4, !tbaa !8
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %add.ptr57, i8** %p, align 8, !tbaa !1
  %64 = load i32, i32* %rlen, align 4, !tbaa !8
  %add58 = add nsw i32 %64, 16
  store i32 %add58, i32* %rlen, align 4, !tbaa !8
  br label %if.end.72

if.else.59:                                       ; preds = %if.else.51
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %65, i64 4
  %66 = load i8, i8* %arrayidx60, align 1, !tbaa !23
  %tobool61 = icmp ne i8 %66, 0
  br i1 %tobool61, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %if.else.59
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %67, i64 4
  %68 = load i8, i8* %arrayidx63, align 1, !tbaa !23
  %conv64 = zext i8 %68 to i32
  store i32 %conv64, i32* %data, align 4, !tbaa !8
  %69 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds i8, i8* %69, i64 5
  store i8* %add.ptr65, i8** %p, align 8, !tbaa !1
  %70 = load i32, i32* %rlen, align 4, !tbaa !8
  %add66 = add nsw i32 %70, 24
  store i32 %add66, i32* %rlen, align 4, !tbaa !8
  br label %if.end

if.else.67:                                       ; preds = %if.else.59
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %71, i64 5
  %72 = load i8, i8* %arrayidx68, align 1, !tbaa !23
  %conv69 = zext i8 %72 to i32
  store i32 %conv69, i32* %data, align 4, !tbaa !8
  %73 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr70 = getelementptr inbounds i8, i8* %73, i64 6
  store i8* %add.ptr70, i8** %p, align 8, !tbaa !1
  %74 = load i32, i32* %rlen, align 4, !tbaa !8
  %add71 = add nsw i32 %74, 32
  store i32 %add71, i32* %rlen, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else.67, %if.then.62
  br label %if.end.72

if.end.72:                                        ; preds = %if.end, %if.then.54
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.46
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.25
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.19
  br label %if.end.170

if.else.76:                                       ; preds = %if.then
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx77, align 1, !tbaa !23
  %conv78 = zext i8 %76 to i32
  %cmp79 = icmp ne i32 %conv78, 255
  br i1 %cmp79, label %if.then.81, label %if.else.88

if.then.81:                                       ; preds = %if.else.76
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %77, i64 0
  %78 = load i8, i8* %arrayidx82, align 1, !tbaa !23
  %conv83 = zext i8 %78 to i32
  %neg = xor i32 %conv83, -1
  %conv84 = trunc i32 %neg to i8
  %conv85 = zext i8 %conv84 to i32
  store i32 %conv85, i32* %data, align 4, !tbaa !8
  %79 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr86 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %add.ptr86, i8** %p, align 8, !tbaa !1
  %80 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub87 = sub nsw i32 %80, 8
  store i32 %sub87, i32* %rlen, align 4, !tbaa !8
  br label %if.end.169

if.else.88:                                       ; preds = %if.else.76
  %81 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx89, align 1, !tbaa !23
  %conv90 = zext i8 %82 to i32
  %cmp91 = icmp ne i32 %conv90, 255
  br i1 %cmp91, label %if.then.93, label %if.else.100

if.then.93:                                       ; preds = %if.else.88
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx94, align 1, !tbaa !23
  %conv95 = zext i8 %84 to i32
  %neg96 = xor i32 %conv95, -1
  %conv97 = trunc i32 %neg96 to i8
  %conv98 = zext i8 %conv97 to i32
  store i32 %conv98, i32* %data, align 4, !tbaa !8
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr99 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %add.ptr99, i8** %p, align 8, !tbaa !1
  br label %if.end.168

if.else.100:                                      ; preds = %if.else.88
  br label %while.cond.101

while.cond.101:                                   ; preds = %while.body.115, %if.else.100
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %86, i64 2
  %87 = load i8, i8* %arrayidx102, align 1, !tbaa !23
  %conv103 = zext i8 %87 to i32
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i8, i8* %88, i64 3
  %89 = load i8, i8* %arrayidx104, align 1, !tbaa !23
  %conv105 = zext i8 %89 to i32
  %and106 = and i32 %conv103, %conv105
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %90, i64 4
  %91 = load i8, i8* %arrayidx107, align 1, !tbaa !23
  %conv108 = zext i8 %91 to i32
  %and109 = and i32 %and106, %conv108
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %92, i64 5
  %93 = load i8, i8* %arrayidx110, align 1, !tbaa !23
  %conv111 = zext i8 %93 to i32
  %and112 = and i32 %and109, %conv111
  %cmp113 = icmp eq i32 %and112, 255
  br i1 %cmp113, label %while.body.115, label %while.end.118

while.body.115:                                   ; preds = %while.cond.101
  %94 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr116 = getelementptr inbounds i8, i8* %94, i64 4
  store i8* %add.ptr116, i8** %p, align 8, !tbaa !1
  %95 = load i32, i32* %rlen, align 4, !tbaa !8
  %add117 = add nsw i32 %95, 32
  store i32 %add117, i32* %rlen, align 4, !tbaa !8
  br label %while.cond.101

while.end.118:                                    ; preds = %while.cond.101
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i8, i8* %96, i64 2
  %97 = load i8, i8* %arrayidx119, align 1, !tbaa !23
  %conv120 = zext i8 %97 to i32
  %cmp121 = icmp ne i32 %conv120, 255
  br i1 %cmp121, label %if.then.123, label %if.else.131

if.then.123:                                      ; preds = %while.end.118
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %98, i64 2
  %99 = load i8, i8* %arrayidx124, align 1, !tbaa !23
  %conv125 = zext i8 %99 to i32
  %neg126 = xor i32 %conv125, -1
  %conv127 = trunc i32 %neg126 to i8
  %conv128 = zext i8 %conv127 to i32
  store i32 %conv128, i32* %data, align 4, !tbaa !8
  %100 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr129 = getelementptr inbounds i8, i8* %100, i64 3
  store i8* %add.ptr129, i8** %p, align 8, !tbaa !1
  %101 = load i32, i32* %rlen, align 4, !tbaa !8
  %add130 = add nsw i32 %101, 8
  store i32 %add130, i32* %rlen, align 4, !tbaa !8
  br label %if.end.167

if.else.131:                                      ; preds = %while.end.118
  %102 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %102, i64 3
  %103 = load i8, i8* %arrayidx132, align 1, !tbaa !23
  %conv133 = zext i8 %103 to i32
  %cmp134 = icmp ne i32 %conv133, 255
  br i1 %cmp134, label %if.then.136, label %if.else.144

if.then.136:                                      ; preds = %if.else.131
  %104 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i8, i8* %104, i64 3
  %105 = load i8, i8* %arrayidx137, align 1, !tbaa !23
  %conv138 = zext i8 %105 to i32
  %neg139 = xor i32 %conv138, -1
  %conv140 = trunc i32 %neg139 to i8
  %conv141 = zext i8 %conv140 to i32
  store i32 %conv141, i32* %data, align 4, !tbaa !8
  %106 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr142 = getelementptr inbounds i8, i8* %106, i64 4
  store i8* %add.ptr142, i8** %p, align 8, !tbaa !1
  %107 = load i32, i32* %rlen, align 4, !tbaa !8
  %add143 = add nsw i32 %107, 16
  store i32 %add143, i32* %rlen, align 4, !tbaa !8
  br label %if.end.166

if.else.144:                                      ; preds = %if.else.131
  %108 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i8, i8* %108, i64 4
  %109 = load i8, i8* %arrayidx145, align 1, !tbaa !23
  %conv146 = zext i8 %109 to i32
  %cmp147 = icmp ne i32 %conv146, 255
  br i1 %cmp147, label %if.then.149, label %if.else.157

if.then.149:                                      ; preds = %if.else.144
  %110 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %110, i64 4
  %111 = load i8, i8* %arrayidx150, align 1, !tbaa !23
  %conv151 = zext i8 %111 to i32
  %neg152 = xor i32 %conv151, -1
  %conv153 = trunc i32 %neg152 to i8
  %conv154 = zext i8 %conv153 to i32
  store i32 %conv154, i32* %data, align 4, !tbaa !8
  %112 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr155 = getelementptr inbounds i8, i8* %112, i64 5
  store i8* %add.ptr155, i8** %p, align 8, !tbaa !1
  %113 = load i32, i32* %rlen, align 4, !tbaa !8
  %add156 = add nsw i32 %113, 24
  store i32 %add156, i32* %rlen, align 4, !tbaa !8
  br label %if.end.165

if.else.157:                                      ; preds = %if.else.144
  %114 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i8, i8* %114, i64 5
  %115 = load i8, i8* %arrayidx158, align 1, !tbaa !23
  %conv159 = zext i8 %115 to i32
  %neg160 = xor i32 %conv159, -1
  %conv161 = trunc i32 %neg160 to i8
  %conv162 = zext i8 %conv161 to i32
  store i32 %conv162, i32* %data, align 4, !tbaa !8
  %116 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr163 = getelementptr inbounds i8, i8* %116, i64 6
  store i8* %add.ptr163, i8** %p, align 8, !tbaa !1
  %117 = load i32, i32* %rlen, align 4, !tbaa !8
  %add164 = add nsw i32 %117, 32
  store i32 %add164, i32* %rlen, align 4, !tbaa !8
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.157, %if.then.149
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.136
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.123
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.93
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.81
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.75
  %118 = load i32, i32* %data, align 4, !tbaa !8
  %xor171 = xor i32 %118, 255
  %idxprom172 = zext i32 %xor171 to i64
  %arrayidx173 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom172
  %119 = load i8, i8* %arrayidx173, align 1, !tbaa !23
  %conv174 = zext i8 %119 to i32
  %120 = load i32, i32* %rlen, align 4, !tbaa !8
  %add175 = add nsw i32 %120, %conv174
  store i32 %add175, i32* %rlen, align 4, !tbaa !8
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.170, %do.body
  %121 = load i32, i32* %rlen, align 4, !tbaa !8
  %122 = load i32, i32* %count, align 4, !tbaa !8
  %sub177 = sub i32 %122, %121
  store i32 %sub177, i32* %count, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end.176
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.178

do.body.178:                                      ; preds = %do.end
  %123 = bitcast %struct.hce_code_s* %rr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #2
  %124 = load i32, i32* %rlen, align 4, !tbaa !8
  %cmp179 = icmp sge i32 %124, 64
  br i1 %cmp179, label %if.then.181, label %if.end.187

if.then.181:                                      ; preds = %do.body.178
  %125 = load i32, i32* %bits, align 4, !tbaa !8
  %126 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits182 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %126, i32 0, i32 6
  store i32 %125, i32* %bits182, align 4, !tbaa !12
  %127 = load i32, i32* %bits_left, align 4, !tbaa !8
  %128 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left183 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %128, i32 0, i32 7
  store i32 %127, i32* %bits_left183, align 4, !tbaa !13
  %129 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %130 = load i8*, i8** %q, align 8, !tbaa !1
  %131 = load i32, i32* %rlen, align 4, !tbaa !8
  %call = call i8* @cf_put_long_run(%struct.stream_CFE_state_s* %129, i8* %130, i32 %131, %struct.cf_runs_s* @cf_white_runs) #4
  store i8* %call, i8** %q, align 8, !tbaa !1
  %132 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits184 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %132, i32 0, i32 6
  %133 = load i32, i32* %bits184, align 4, !tbaa !12
  store i32 %133, i32* %bits, align 4, !tbaa !8
  %134 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left185 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %134, i32 0, i32 7
  %135 = load i32, i32* %bits_left185, align 4, !tbaa !13
  store i32 %135, i32* %bits_left, align 4, !tbaa !8
  %136 = load i32, i32* %rlen, align 4, !tbaa !8
  %and186 = and i32 %136, 63
  store i32 %and186, i32* %rlen, align 4, !tbaa !8
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.181, %do.body.178
  %137 = load i32, i32* %rlen, align 4, !tbaa !8
  %idxprom188 = sext i32 %137 to i64
  %arrayidx189 = getelementptr inbounds [64 x %struct.hce_code_s], [64 x %struct.hce_code_s]* getelementptr inbounds (%struct.cf_runs_s, %struct.cf_runs_s* @cf_white_runs, i32 0, i32 0), i32 0, i64 %idxprom188
  %138 = bitcast %struct.hce_code_s* %rr to i8*
  %139 = bitcast %struct.hce_code_s* %arrayidx189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 4, i32 2, i1 false), !tbaa.struct !38
  br label %do.body.190

do.body.190:                                      ; preds = %if.end.187
  br label %do.cond.191

do.cond.191:                                      ; preds = %do.body.190
  br label %do.end.192

do.end.192:                                       ; preds = %do.cond.191
  %code_length = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 1
  %140 = load i16, i16* %code_length, align 2, !tbaa !41
  %conv193 = zext i16 %140 to i32
  %141 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub194 = sub nsw i32 %141, %conv193
  store i32 %sub194, i32* %bits_left, align 4, !tbaa !8
  %cmp195 = icmp sge i32 %sub194, 0
  br i1 %cmp195, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.192
  %code = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %142 = load i16, i16* %code, align 2, !tbaa !43
  %conv197 = zext i16 %142 to i32
  %143 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl198 = shl i32 %conv197, %143
  %144 = load i32, i32* %bits, align 4, !tbaa !8
  %add199 = add i32 %144, %shl198
  store i32 %add199, i32* %bits, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %do.end.192
  %145 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %145, i32 0, i32 5
  %146 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !44
  %147 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr200 = getelementptr inbounds i8, i8* %147, i64 4
  store i8* %add.ptr200, i8** %q, align 8, !tbaa !1
  %148 = load i32, i32* %bits, align 4, !tbaa !8
  %code201 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %149 = load i16, i16* %code201, align 2, !tbaa !43
  %conv202 = zext i16 %149 to i32
  %150 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub203 = sub nsw i32 0, %150
  %shr = ashr i32 %conv202, %sub203
  %add204 = add i32 %148, %shr
  call void @hc_put_code_proc(i32 %146, i8* %add.ptr200, i32 %add204) #4
  %code205 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %151 = load i16, i16* %code205, align 2, !tbaa !43
  %conv206 = zext i16 %151 to i32
  %152 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add207 = add nsw i32 %152, 32
  store i32 %add207, i32* %bits_left, align 4, !tbaa !8
  %shl208 = shl i32 %conv206, %add207
  store i32 %shl208, i32* %bits, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond209 = phi i32 [ %add199, %cond.true ], [ %shl208, %cond.false ]
  %153 = bitcast %struct.hce_code_s* %rr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  br label %do.cond.210

do.cond.210:                                      ; preds = %cond.end
  br label %do.end.211

do.end.211:                                       ; preds = %do.cond.210
  %154 = load i32, i32* %count, align 4, !tbaa !8
  %155 = load i32, i32* %end_count, align 4, !tbaa !8
  %cmp212 = icmp eq i32 %154, %155
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %do.end.211
  br label %while.end.372

if.end.215:                                       ; preds = %do.end.211
  br label %do.body.216

do.body.216:                                      ; preds = %if.end.215
  %156 = load i32, i32* %data, align 4, !tbaa !8
  %idxprom217 = zext i32 %156 to i64
  %157 = load i32, i32* %count, align 4, !tbaa !8
  %and218 = and i32 %157, 7
  %idxprom219 = zext i32 %and218 to i64
  %arrayidx220 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom219
  %158 = load i8*, i8** %arrayidx220, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i8, i8* %158, i64 %idxprom217
  %159 = load i8, i8* %arrayidx221, align 1, !tbaa !23
  %conv222 = zext i8 %159 to i32
  store i32 %conv222, i32* %rlen, align 4, !tbaa !8
  %160 = load i32, i32* %rlen, align 4, !tbaa !8
  %cmp223 = icmp sge i32 %160, 8
  br i1 %cmp223, label %if.then.225, label %if.end.325

if.then.225:                                      ; preds = %do.body.216
  %161 = load i8, i8* %invert, align 1, !tbaa !23
  %conv226 = zext i8 %161 to i32
  %cmp227 = icmp eq i32 %conv226, 0
  br i1 %cmp227, label %if.then.229, label %if.else.271

if.then.229:                                      ; preds = %if.then.225
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.229
  %162 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds i8, i8* %162, i64 0
  %163 = load i8, i8* %arrayidx230, align 1, !tbaa !23
  %conv231 = zext i8 %163 to i32
  %cmp232 = icmp ne i32 %conv231, 255
  br i1 %cmp232, label %if.then.234, label %if.end.239

if.then.234:                                      ; preds = %for.cond
  %164 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8, i8* %164, i64 0
  %165 = load i8, i8* %arrayidx235, align 1, !tbaa !23
  %conv236 = zext i8 %165 to i32
  store i32 %conv236, i32* %data, align 4, !tbaa !8
  %166 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr237 = getelementptr inbounds i8, i8* %166, i64 1
  store i8* %add.ptr237, i8** %p, align 8, !tbaa !1
  %167 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub238 = sub nsw i32 %167, 8
  store i32 %sub238, i32* %rlen, align 4, !tbaa !8
  br label %for.end

if.end.239:                                       ; preds = %for.cond
  %168 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i8, i8* %168, i64 1
  %169 = load i8, i8* %arrayidx240, align 1, !tbaa !23
  %conv241 = zext i8 %169 to i32
  %cmp242 = icmp ne i32 %conv241, 255
  br i1 %cmp242, label %if.then.244, label %if.end.248

if.then.244:                                      ; preds = %if.end.239
  %170 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i8, i8* %170, i64 1
  %171 = load i8, i8* %arrayidx245, align 1, !tbaa !23
  %conv246 = zext i8 %171 to i32
  store i32 %conv246, i32* %data, align 4, !tbaa !8
  %172 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr247 = getelementptr inbounds i8, i8* %172, i64 2
  store i8* %add.ptr247, i8** %p, align 8, !tbaa !1
  br label %for.end

if.end.248:                                       ; preds = %if.end.239
  %173 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds i8, i8* %173, i64 2
  %174 = load i8, i8* %arrayidx249, align 1, !tbaa !23
  %conv250 = zext i8 %174 to i32
  %cmp251 = icmp ne i32 %conv250, 255
  br i1 %cmp251, label %if.then.253, label %if.end.258

if.then.253:                                      ; preds = %if.end.248
  %175 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i8, i8* %175, i64 2
  %176 = load i8, i8* %arrayidx254, align 1, !tbaa !23
  %conv255 = zext i8 %176 to i32
  store i32 %conv255, i32* %data, align 4, !tbaa !8
  %177 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds i8, i8* %177, i64 3
  store i8* %add.ptr256, i8** %p, align 8, !tbaa !1
  %178 = load i32, i32* %rlen, align 4, !tbaa !8
  %add257 = add nsw i32 %178, 8
  store i32 %add257, i32* %rlen, align 4, !tbaa !8
  br label %for.end

if.end.258:                                       ; preds = %if.end.248
  %179 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds i8, i8* %179, i64 3
  %180 = load i8, i8* %arrayidx259, align 1, !tbaa !23
  %conv260 = zext i8 %180 to i32
  %cmp261 = icmp ne i32 %conv260, 255
  br i1 %cmp261, label %if.then.263, label %if.end.268

if.then.263:                                      ; preds = %if.end.258
  %181 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds i8, i8* %181, i64 3
  %182 = load i8, i8* %arrayidx264, align 1, !tbaa !23
  %conv265 = zext i8 %182 to i32
  store i32 %conv265, i32* %data, align 4, !tbaa !8
  %183 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr266 = getelementptr inbounds i8, i8* %183, i64 4
  store i8* %add.ptr266, i8** %p, align 8, !tbaa !1
  %184 = load i32, i32* %rlen, align 4, !tbaa !8
  %add267 = add nsw i32 %184, 16
  store i32 %add267, i32* %rlen, align 4, !tbaa !8
  br label %for.end

if.end.268:                                       ; preds = %if.end.258
  br label %for.inc

for.inc:                                          ; preds = %if.end.268
  %185 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr269 = getelementptr inbounds i8, i8* %185, i64 4
  store i8* %add.ptr269, i8** %p, align 8, !tbaa !1
  %186 = load i32, i32* %rlen, align 4, !tbaa !8
  %add270 = add nsw i32 %186, 32
  store i32 %add270, i32* %rlen, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %if.then.263, %if.then.253, %if.then.244, %if.then.234
  br label %if.end.320

if.else.271:                                      ; preds = %if.then.225
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.inc.316, %if.else.271
  %187 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i8, i8* %187, i64 0
  %188 = load i8, i8* %arrayidx273, align 1, !tbaa !23
  %tobool274 = icmp ne i8 %188, 0
  br i1 %tobool274, label %if.then.275, label %if.end.283

if.then.275:                                      ; preds = %for.cond.272
  %189 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds i8, i8* %189, i64 0
  %190 = load i8, i8* %arrayidx276, align 1, !tbaa !23
  %conv277 = zext i8 %190 to i32
  %neg278 = xor i32 %conv277, -1
  %conv279 = trunc i32 %neg278 to i8
  %conv280 = zext i8 %conv279 to i32
  store i32 %conv280, i32* %data, align 4, !tbaa !8
  %191 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr281 = getelementptr inbounds i8, i8* %191, i64 1
  store i8* %add.ptr281, i8** %p, align 8, !tbaa !1
  %192 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub282 = sub nsw i32 %192, 8
  store i32 %sub282, i32* %rlen, align 4, !tbaa !8
  br label %for.end.319

if.end.283:                                       ; preds = %for.cond.272
  %193 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i8, i8* %193, i64 1
  %194 = load i8, i8* %arrayidx284, align 1, !tbaa !23
  %tobool285 = icmp ne i8 %194, 0
  br i1 %tobool285, label %if.then.286, label %if.end.293

if.then.286:                                      ; preds = %if.end.283
  %195 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds i8, i8* %195, i64 1
  %196 = load i8, i8* %arrayidx287, align 1, !tbaa !23
  %conv288 = zext i8 %196 to i32
  %neg289 = xor i32 %conv288, -1
  %conv290 = trunc i32 %neg289 to i8
  %conv291 = zext i8 %conv290 to i32
  store i32 %conv291, i32* %data, align 4, !tbaa !8
  %197 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr292 = getelementptr inbounds i8, i8* %197, i64 2
  store i8* %add.ptr292, i8** %p, align 8, !tbaa !1
  br label %for.end.319

if.end.293:                                       ; preds = %if.end.283
  %198 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i8, i8* %198, i64 2
  %199 = load i8, i8* %arrayidx294, align 1, !tbaa !23
  %tobool295 = icmp ne i8 %199, 0
  br i1 %tobool295, label %if.then.296, label %if.end.304

if.then.296:                                      ; preds = %if.end.293
  %200 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx297 = getelementptr inbounds i8, i8* %200, i64 2
  %201 = load i8, i8* %arrayidx297, align 1, !tbaa !23
  %conv298 = zext i8 %201 to i32
  %neg299 = xor i32 %conv298, -1
  %conv300 = trunc i32 %neg299 to i8
  %conv301 = zext i8 %conv300 to i32
  store i32 %conv301, i32* %data, align 4, !tbaa !8
  %202 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr302 = getelementptr inbounds i8, i8* %202, i64 3
  store i8* %add.ptr302, i8** %p, align 8, !tbaa !1
  %203 = load i32, i32* %rlen, align 4, !tbaa !8
  %add303 = add nsw i32 %203, 8
  store i32 %add303, i32* %rlen, align 4, !tbaa !8
  br label %for.end.319

if.end.304:                                       ; preds = %if.end.293
  %204 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx305 = getelementptr inbounds i8, i8* %204, i64 3
  %205 = load i8, i8* %arrayidx305, align 1, !tbaa !23
  %tobool306 = icmp ne i8 %205, 0
  br i1 %tobool306, label %if.then.307, label %if.end.315

if.then.307:                                      ; preds = %if.end.304
  %206 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds i8, i8* %206, i64 3
  %207 = load i8, i8* %arrayidx308, align 1, !tbaa !23
  %conv309 = zext i8 %207 to i32
  %neg310 = xor i32 %conv309, -1
  %conv311 = trunc i32 %neg310 to i8
  %conv312 = zext i8 %conv311 to i32
  store i32 %conv312, i32* %data, align 4, !tbaa !8
  %208 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr313 = getelementptr inbounds i8, i8* %208, i64 4
  store i8* %add.ptr313, i8** %p, align 8, !tbaa !1
  %209 = load i32, i32* %rlen, align 4, !tbaa !8
  %add314 = add nsw i32 %209, 16
  store i32 %add314, i32* %rlen, align 4, !tbaa !8
  br label %for.end.319

if.end.315:                                       ; preds = %if.end.304
  br label %for.inc.316

for.inc.316:                                      ; preds = %if.end.315
  %210 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr317 = getelementptr inbounds i8, i8* %210, i64 4
  store i8* %add.ptr317, i8** %p, align 8, !tbaa !1
  %211 = load i32, i32* %rlen, align 4, !tbaa !8
  %add318 = add nsw i32 %211, 32
  store i32 %add318, i32* %rlen, align 4, !tbaa !8
  br label %for.cond.272

for.end.319:                                      ; preds = %if.then.307, %if.then.296, %if.then.286, %if.then.275
  br label %if.end.320

if.end.320:                                       ; preds = %for.end.319, %for.end
  %212 = load i32, i32* %data, align 4, !tbaa !8
  %idxprom321 = zext i32 %212 to i64
  %arrayidx322 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom321
  %213 = load i8, i8* %arrayidx322, align 1, !tbaa !23
  %conv323 = zext i8 %213 to i32
  %214 = load i32, i32* %rlen, align 4, !tbaa !8
  %add324 = add nsw i32 %214, %conv323
  store i32 %add324, i32* %rlen, align 4, !tbaa !8
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.320, %do.body.216
  %215 = load i32, i32* %rlen, align 4, !tbaa !8
  %216 = load i32, i32* %count, align 4, !tbaa !8
  %sub326 = sub i32 %216, %215
  store i32 %sub326, i32* %count, align 4, !tbaa !8
  br label %do.cond.327

do.cond.327:                                      ; preds = %if.end.325
  br label %do.end.328

do.end.328:                                       ; preds = %do.cond.327
  br label %do.body.329

do.body.329:                                      ; preds = %do.end.328
  %217 = bitcast %struct.hce_code_s* %rr330 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #2
  %218 = load i32, i32* %rlen, align 4, !tbaa !8
  %cmp331 = icmp sge i32 %218, 64
  br i1 %cmp331, label %if.then.333, label %if.end.340

if.then.333:                                      ; preds = %do.body.329
  %219 = load i32, i32* %bits, align 4, !tbaa !8
  %220 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits334 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %220, i32 0, i32 6
  store i32 %219, i32* %bits334, align 4, !tbaa !12
  %221 = load i32, i32* %bits_left, align 4, !tbaa !8
  %222 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left335 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %222, i32 0, i32 7
  store i32 %221, i32* %bits_left335, align 4, !tbaa !13
  %223 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %224 = load i8*, i8** %q, align 8, !tbaa !1
  %225 = load i32, i32* %rlen, align 4, !tbaa !8
  %call336 = call i8* @cf_put_long_run(%struct.stream_CFE_state_s* %223, i8* %224, i32 %225, %struct.cf_runs_s* @cf_black_runs) #4
  store i8* %call336, i8** %q, align 8, !tbaa !1
  %226 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits337 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %226, i32 0, i32 6
  %227 = load i32, i32* %bits337, align 4, !tbaa !12
  store i32 %227, i32* %bits, align 4, !tbaa !8
  %228 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left338 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %228, i32 0, i32 7
  %229 = load i32, i32* %bits_left338, align 4, !tbaa !13
  store i32 %229, i32* %bits_left, align 4, !tbaa !8
  %230 = load i32, i32* %rlen, align 4, !tbaa !8
  %and339 = and i32 %230, 63
  store i32 %and339, i32* %rlen, align 4, !tbaa !8
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.333, %do.body.329
  %231 = load i32, i32* %rlen, align 4, !tbaa !8
  %idxprom341 = sext i32 %231 to i64
  %arrayidx342 = getelementptr inbounds [64 x %struct.hce_code_s], [64 x %struct.hce_code_s]* getelementptr inbounds (%struct.cf_runs_s, %struct.cf_runs_s* @cf_black_runs, i32 0, i32 0), i32 0, i64 %idxprom341
  %232 = bitcast %struct.hce_code_s* %rr330 to i8*
  %233 = bitcast %struct.hce_code_s* %arrayidx342 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %232, i8* %233, i64 4, i32 2, i1 false), !tbaa.struct !38
  br label %do.body.343

do.body.343:                                      ; preds = %if.end.340
  br label %do.cond.344

do.cond.344:                                      ; preds = %do.body.343
  br label %do.end.345

do.end.345:                                       ; preds = %do.cond.344
  %code_length346 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr330, i32 0, i32 1
  %234 = load i16, i16* %code_length346, align 2, !tbaa !41
  %conv347 = zext i16 %234 to i32
  %235 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub348 = sub nsw i32 %235, %conv347
  store i32 %sub348, i32* %bits_left, align 4, !tbaa !8
  %cmp349 = icmp sge i32 %sub348, 0
  br i1 %cmp349, label %cond.true.351, label %cond.false.356

cond.true.351:                                    ; preds = %do.end.345
  %code352 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr330, i32 0, i32 0
  %236 = load i16, i16* %code352, align 2, !tbaa !43
  %conv353 = zext i16 %236 to i32
  %237 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl354 = shl i32 %conv353, %237
  %238 = load i32, i32* %bits, align 4, !tbaa !8
  %add355 = add i32 %238, %shl354
  store i32 %add355, i32* %bits, align 4, !tbaa !8
  br label %cond.end.368

cond.false.356:                                   ; preds = %do.end.345
  %239 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder357 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %239, i32 0, i32 5
  %240 = load i32, i32* %FirstBitLowOrder357, align 4, !tbaa !44
  %241 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr358 = getelementptr inbounds i8, i8* %241, i64 4
  store i8* %add.ptr358, i8** %q, align 8, !tbaa !1
  %242 = load i32, i32* %bits, align 4, !tbaa !8
  %code359 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr330, i32 0, i32 0
  %243 = load i16, i16* %code359, align 2, !tbaa !43
  %conv360 = zext i16 %243 to i32
  %244 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub361 = sub nsw i32 0, %244
  %shr362 = ashr i32 %conv360, %sub361
  %add363 = add i32 %242, %shr362
  call void @hc_put_code_proc(i32 %240, i8* %add.ptr358, i32 %add363) #4
  %code364 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr330, i32 0, i32 0
  %245 = load i16, i16* %code364, align 2, !tbaa !43
  %conv365 = zext i16 %245 to i32
  %246 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add366 = add nsw i32 %246, 32
  store i32 %add366, i32* %bits_left, align 4, !tbaa !8
  %shl367 = shl i32 %conv365, %add366
  store i32 %shl367, i32* %bits, align 4, !tbaa !8
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.356, %cond.true.351
  %cond369 = phi i32 [ %add355, %cond.true.351 ], [ %shl367, %cond.false.356 ]
  %247 = bitcast %struct.hce_code_s* %rr330 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #2
  br label %do.cond.370

do.cond.370:                                      ; preds = %cond.end.368
  br label %do.end.371

do.end.371:                                       ; preds = %do.cond.370
  br label %while.cond

while.end.372:                                    ; preds = %if.then.214, %while.cond
  %248 = load i32, i32* %bits, align 4, !tbaa !8
  %249 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits373 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %249, i32 0, i32 6
  store i32 %248, i32* %bits373, align 4, !tbaa !12
  %250 = load i32, i32* %bits_left, align 4, !tbaa !8
  %251 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left374 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %251, i32 0, i32 7
  store i32 %250, i32* %bits_left374, align 4, !tbaa !13
  %252 = load i8*, i8** %q, align 8, !tbaa !1
  %253 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr375 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %253, i32 0, i32 1
  store i8* %252, i8** %ptr375, align 8, !tbaa !32
  %254 = bitcast i32* %data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #2
  call void @llvm.lifetime.end(i64 1, i8* %invert) #2
  %255 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #2
  %256 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #2
  %257 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #2
  %258 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #2
  %259 = bitcast i32* %end_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #2
  %260 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #2
  %261 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cf_encode_2d(%struct.stream_CFE_state_s* %ss, i8* %lbuf, %struct.stream_cursor_write_s* %pw, i8* %lprev) #0 {
entry:
  %ss.addr = alloca %struct.stream_CFE_state_s*, align 8
  %lbuf.addr = alloca i8*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %lprev.addr = alloca i8*, align 8
  %invert_white = alloca i8, align 1
  %invert = alloca i8, align 1
  %count = alloca i32, align 4
  %end_count = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %data = alloca i32, align 4
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %count_bit = alloca i8*, align 8
  %a0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %diff = alloca i32, align 4
  %prev_count = alloca i32, align 4
  %prev_p = alloca i8*, align 8
  %prev_data = alloca i8, align 1
  %rlen = alloca i32, align 4
  %cp = alloca %struct.hce_code_s*, align 8
  %cleanup.dest.slot = alloca i32
  %rr = alloca %struct.hce_code_s, align 2
  %rr839 = alloca %struct.hce_code_s, align 2
  %rr886 = alloca %struct.hce_code_s, align 2
  %rr929 = alloca %struct.hce_code_s, align 2
  store %struct.stream_CFE_state_s* %ss, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  store i8* %lbuf, i8** %lbuf.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i8* %lprev, i8** %lprev.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %invert_white) #2
  %0 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %0, i32 0, i32 15
  %1 = load i32, i32* %BlackIs1, align 4, !tbaa !22
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 0, i32 255
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %invert_white, align 1, !tbaa !23
  call void @llvm.lifetime.start(i64 1, i8* %invert) #2
  %2 = load i8, i8* %invert_white, align 1, !tbaa !23
  store i8 %2, i8* %invert, align 1, !tbaa !23
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %4, i32 0, i32 18
  %5 = load i32, i32* %raster, align 4, !tbaa !11
  %shl = shl i32 %5, 3
  store i32 %shl, i32* %count, align 4, !tbaa !8
  %6 = bitcast i32* %end_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %7, i32 0, i32 12
  %8 = load i32, i32* %Columns, align 4, !tbaa !5
  %sub = sub nsw i32 0, %8
  %and = and i32 %sub, 7
  store i32 %and, i32* %end_count, align 4, !tbaa !8
  %9 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i8*, i8** %lbuf.addr, align 8, !tbaa !1
  store i8* %10, i8** %p, align 8, !tbaa !1
  %11 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %ptr, align 8, !tbaa !32
  store i8* %13, i8** %q, align 8, !tbaa !1
  %14 = bitcast i32* %data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !23
  %conv1 = zext i8 %16 to i32
  %17 = load i8, i8* %invert, align 1, !tbaa !23
  %conv2 = zext i8 %17 to i32
  %xor = xor i32 %conv1, %conv2
  store i32 %xor, i32* %data, align 4, !tbaa !8
  %18 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i8** %count_bit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cf_encode_2d.initial_count_bit, i32 0, i32 0), i8** %count_bit, align 8, !tbaa !1
  %21 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits3 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %21, i32 0, i32 6
  %22 = load i32, i32* %bits3, align 4, !tbaa !12
  store i32 %22, i32* %bits, align 4, !tbaa !8
  %23 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left4 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %23, i32 0, i32 7
  %24 = load i32, i32* %bits_left4, align 4, !tbaa !13
  store i32 %24, i32* %bits_left, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  %25 = load i32, i32* %count, align 4, !tbaa !8
  %26 = load i32, i32* %end_count, align 4, !tbaa !8
  %cmp = icmp ne i32 %25, %26
  br i1 %cmp, label %while.body, label %while.end.978

while.body:                                       ; preds = %while.cond
  %27 = bitcast i32* %a0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %count, align 4, !tbaa !8
  store i32 %28, i32* %a0, align 4, !tbaa !8
  %29 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = bitcast i32* %prev_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load i32, i32* %count, align 4, !tbaa !8
  store i32 %32, i32* %prev_count, align 4, !tbaa !8
  %33 = bitcast i8** %prev_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8*, i8** %lbuf.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %36 = load i8*, i8** %lprev.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %prev_p, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %prev_data) #2
  %37 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 -1
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !23
  %conv6 = zext i8 %38 to i32
  %39 = load i8, i8* %invert, align 1, !tbaa !23
  %conv7 = zext i8 %39 to i32
  %xor8 = xor i32 %conv6, %conv7
  %conv9 = trunc i32 %xor8 to i8
  store i8 %conv9, i8* %prev_data, align 1, !tbaa !23
  %40 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  br label %do.body

do.body:                                          ; preds = %while.body
  %41 = load i32, i32* %data, align 4, !tbaa !8
  %xor10 = xor i32 %41, 255
  %idxprom = zext i32 %xor10 to i64
  %42 = load i32, i32* %count, align 4, !tbaa !8
  %and11 = and i32 %42, 7
  %idxprom12 = zext i32 %and11 to i64
  %arrayidx13 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom12
  %43 = load i8*, i8** %arrayidx13, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %43, i64 %idxprom
  %44 = load i8, i8* %arrayidx14, align 1, !tbaa !23
  %conv15 = zext i8 %44 to i32
  store i32 %conv15, i32* %rlen, align 4, !tbaa !8
  %45 = load i32, i32* %rlen, align 4, !tbaa !8
  %cmp16 = icmp sge i32 %45, 8
  br i1 %cmp16, label %if.then, label %if.end.182

if.then:                                          ; preds = %do.body
  %46 = load i8, i8* %invert, align 1, !tbaa !23
  %conv18 = zext i8 %46 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.else.82

if.then.21:                                       ; preds = %if.then
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx22, align 1, !tbaa !23
  %tobool23 = icmp ne i8 %48, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.21
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx25, align 1, !tbaa !23
  %conv26 = zext i8 %50 to i32
  store i32 %conv26, i32* %data, align 4, !tbaa !8
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %add.ptr27, i8** %p, align 8, !tbaa !1
  %52 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub28 = sub nsw i32 %52, 8
  store i32 %sub28, i32* %rlen, align 4, !tbaa !8
  br label %if.end.81

if.else:                                          ; preds = %if.then.21
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx29, align 1, !tbaa !23
  %tobool30 = icmp ne i8 %54, 0
  br i1 %tobool30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.else
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx32, align 1, !tbaa !23
  %conv33 = zext i8 %56 to i32
  store i32 %conv33, i32* %data, align 4, !tbaa !8
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %add.ptr34, i8** %p, align 8, !tbaa !1
  br label %if.end.80

if.else.35:                                       ; preds = %if.else
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.48, %if.else.35
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %58, i64 2
  %59 = load i8, i8* %arrayidx37, align 1, !tbaa !23
  %conv38 = zext i8 %59 to i32
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %60, i64 3
  %61 = load i8, i8* %arrayidx39, align 1, !tbaa !23
  %conv40 = zext i8 %61 to i32
  %or = or i32 %conv38, %conv40
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %62, i64 4
  %63 = load i8, i8* %arrayidx41, align 1, !tbaa !23
  %conv42 = zext i8 %63 to i32
  %or43 = or i32 %or, %conv42
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %64, i64 5
  %65 = load i8, i8* %arrayidx44, align 1, !tbaa !23
  %conv45 = zext i8 %65 to i32
  %or46 = or i32 %or43, %conv45
  %tobool47 = icmp ne i32 %or46, 0
  %lnot = xor i1 %tobool47, true
  br i1 %lnot, label %while.body.48, label %while.end

while.body.48:                                    ; preds = %while.cond.36
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds i8, i8* %66, i64 4
  store i8* %add.ptr49, i8** %p, align 8, !tbaa !1
  %67 = load i32, i32* %rlen, align 4, !tbaa !8
  %add = add nsw i32 %67, 32
  store i32 %add, i32* %rlen, align 4, !tbaa !8
  br label %while.cond.36

while.end:                                        ; preds = %while.cond.36
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx50, align 1, !tbaa !23
  %tobool51 = icmp ne i8 %69, 0
  br i1 %tobool51, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %while.end
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %70, i64 2
  %71 = load i8, i8* %arrayidx53, align 1, !tbaa !23
  %conv54 = zext i8 %71 to i32
  store i32 %conv54, i32* %data, align 4, !tbaa !8
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr55 = getelementptr inbounds i8, i8* %72, i64 3
  store i8* %add.ptr55, i8** %p, align 8, !tbaa !1
  %73 = load i32, i32* %rlen, align 4, !tbaa !8
  %add56 = add nsw i32 %73, 8
  store i32 %add56, i32* %rlen, align 4, !tbaa !8
  br label %if.end.79

if.else.57:                                       ; preds = %while.end
  %74 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %74, i64 3
  %75 = load i8, i8* %arrayidx58, align 1, !tbaa !23
  %tobool59 = icmp ne i8 %75, 0
  br i1 %tobool59, label %if.then.60, label %if.else.65

if.then.60:                                       ; preds = %if.else.57
  %76 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %76, i64 3
  %77 = load i8, i8* %arrayidx61, align 1, !tbaa !23
  %conv62 = zext i8 %77 to i32
  store i32 %conv62, i32* %data, align 4, !tbaa !8
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr63 = getelementptr inbounds i8, i8* %78, i64 4
  store i8* %add.ptr63, i8** %p, align 8, !tbaa !1
  %79 = load i32, i32* %rlen, align 4, !tbaa !8
  %add64 = add nsw i32 %79, 16
  store i32 %add64, i32* %rlen, align 4, !tbaa !8
  br label %if.end.78

if.else.65:                                       ; preds = %if.else.57
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %80, i64 4
  %81 = load i8, i8* %arrayidx66, align 1, !tbaa !23
  %tobool67 = icmp ne i8 %81, 0
  br i1 %tobool67, label %if.then.68, label %if.else.73

if.then.68:                                       ; preds = %if.else.65
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %82, i64 4
  %83 = load i8, i8* %arrayidx69, align 1, !tbaa !23
  %conv70 = zext i8 %83 to i32
  store i32 %conv70, i32* %data, align 4, !tbaa !8
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds i8, i8* %84, i64 5
  store i8* %add.ptr71, i8** %p, align 8, !tbaa !1
  %85 = load i32, i32* %rlen, align 4, !tbaa !8
  %add72 = add nsw i32 %85, 24
  store i32 %add72, i32* %rlen, align 4, !tbaa !8
  br label %if.end

if.else.73:                                       ; preds = %if.else.65
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %86, i64 5
  %87 = load i8, i8* %arrayidx74, align 1, !tbaa !23
  %conv75 = zext i8 %87 to i32
  store i32 %conv75, i32* %data, align 4, !tbaa !8
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr76 = getelementptr inbounds i8, i8* %88, i64 6
  store i8* %add.ptr76, i8** %p, align 8, !tbaa !1
  %89 = load i32, i32* %rlen, align 4, !tbaa !8
  %add77 = add nsw i32 %89, 32
  store i32 %add77, i32* %rlen, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else.73, %if.then.68
  br label %if.end.78

if.end.78:                                        ; preds = %if.end, %if.then.60
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.52
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.31
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.24
  br label %if.end.176

if.else.82:                                       ; preds = %if.then
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx83, align 1, !tbaa !23
  %conv84 = zext i8 %91 to i32
  %cmp85 = icmp ne i32 %conv84, 255
  br i1 %cmp85, label %if.then.87, label %if.else.94

if.then.87:                                       ; preds = %if.else.82
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx88, align 1, !tbaa !23
  %conv89 = zext i8 %93 to i32
  %neg = xor i32 %conv89, -1
  %conv90 = trunc i32 %neg to i8
  %conv91 = zext i8 %conv90 to i32
  store i32 %conv91, i32* %data, align 4, !tbaa !8
  %94 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %add.ptr92, i8** %p, align 8, !tbaa !1
  %95 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub93 = sub nsw i32 %95, 8
  store i32 %sub93, i32* %rlen, align 4, !tbaa !8
  br label %if.end.175

if.else.94:                                       ; preds = %if.else.82
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx95, align 1, !tbaa !23
  %conv96 = zext i8 %97 to i32
  %cmp97 = icmp ne i32 %conv96, 255
  br i1 %cmp97, label %if.then.99, label %if.else.106

if.then.99:                                       ; preds = %if.else.94
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i8, i8* %98, i64 1
  %99 = load i8, i8* %arrayidx100, align 1, !tbaa !23
  %conv101 = zext i8 %99 to i32
  %neg102 = xor i32 %conv101, -1
  %conv103 = trunc i32 %neg102 to i8
  %conv104 = zext i8 %conv103 to i32
  store i32 %conv104, i32* %data, align 4, !tbaa !8
  %100 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr105 = getelementptr inbounds i8, i8* %100, i64 2
  store i8* %add.ptr105, i8** %p, align 8, !tbaa !1
  br label %if.end.174

if.else.106:                                      ; preds = %if.else.94
  br label %while.cond.107

while.cond.107:                                   ; preds = %while.body.121, %if.else.106
  %101 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i8, i8* %101, i64 2
  %102 = load i8, i8* %arrayidx108, align 1, !tbaa !23
  %conv109 = zext i8 %102 to i32
  %103 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %103, i64 3
  %104 = load i8, i8* %arrayidx110, align 1, !tbaa !23
  %conv111 = zext i8 %104 to i32
  %and112 = and i32 %conv109, %conv111
  %105 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8, i8* %105, i64 4
  %106 = load i8, i8* %arrayidx113, align 1, !tbaa !23
  %conv114 = zext i8 %106 to i32
  %and115 = and i32 %and112, %conv114
  %107 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %107, i64 5
  %108 = load i8, i8* %arrayidx116, align 1, !tbaa !23
  %conv117 = zext i8 %108 to i32
  %and118 = and i32 %and115, %conv117
  %cmp119 = icmp eq i32 %and118, 255
  br i1 %cmp119, label %while.body.121, label %while.end.124

while.body.121:                                   ; preds = %while.cond.107
  %109 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr122 = getelementptr inbounds i8, i8* %109, i64 4
  store i8* %add.ptr122, i8** %p, align 8, !tbaa !1
  %110 = load i32, i32* %rlen, align 4, !tbaa !8
  %add123 = add nsw i32 %110, 32
  store i32 %add123, i32* %rlen, align 4, !tbaa !8
  br label %while.cond.107

while.end.124:                                    ; preds = %while.cond.107
  %111 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %111, i64 2
  %112 = load i8, i8* %arrayidx125, align 1, !tbaa !23
  %conv126 = zext i8 %112 to i32
  %cmp127 = icmp ne i32 %conv126, 255
  br i1 %cmp127, label %if.then.129, label %if.else.137

if.then.129:                                      ; preds = %while.end.124
  %113 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i8, i8* %113, i64 2
  %114 = load i8, i8* %arrayidx130, align 1, !tbaa !23
  %conv131 = zext i8 %114 to i32
  %neg132 = xor i32 %conv131, -1
  %conv133 = trunc i32 %neg132 to i8
  %conv134 = zext i8 %conv133 to i32
  store i32 %conv134, i32* %data, align 4, !tbaa !8
  %115 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr135 = getelementptr inbounds i8, i8* %115, i64 3
  store i8* %add.ptr135, i8** %p, align 8, !tbaa !1
  %116 = load i32, i32* %rlen, align 4, !tbaa !8
  %add136 = add nsw i32 %116, 8
  store i32 %add136, i32* %rlen, align 4, !tbaa !8
  br label %if.end.173

if.else.137:                                      ; preds = %while.end.124
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i8, i8* %117, i64 3
  %118 = load i8, i8* %arrayidx138, align 1, !tbaa !23
  %conv139 = zext i8 %118 to i32
  %cmp140 = icmp ne i32 %conv139, 255
  br i1 %cmp140, label %if.then.142, label %if.else.150

if.then.142:                                      ; preds = %if.else.137
  %119 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i8, i8* %119, i64 3
  %120 = load i8, i8* %arrayidx143, align 1, !tbaa !23
  %conv144 = zext i8 %120 to i32
  %neg145 = xor i32 %conv144, -1
  %conv146 = trunc i32 %neg145 to i8
  %conv147 = zext i8 %conv146 to i32
  store i32 %conv147, i32* %data, align 4, !tbaa !8
  %121 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr148 = getelementptr inbounds i8, i8* %121, i64 4
  store i8* %add.ptr148, i8** %p, align 8, !tbaa !1
  %122 = load i32, i32* %rlen, align 4, !tbaa !8
  %add149 = add nsw i32 %122, 16
  store i32 %add149, i32* %rlen, align 4, !tbaa !8
  br label %if.end.172

if.else.150:                                      ; preds = %if.else.137
  %123 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i8, i8* %123, i64 4
  %124 = load i8, i8* %arrayidx151, align 1, !tbaa !23
  %conv152 = zext i8 %124 to i32
  %cmp153 = icmp ne i32 %conv152, 255
  br i1 %cmp153, label %if.then.155, label %if.else.163

if.then.155:                                      ; preds = %if.else.150
  %125 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i8, i8* %125, i64 4
  %126 = load i8, i8* %arrayidx156, align 1, !tbaa !23
  %conv157 = zext i8 %126 to i32
  %neg158 = xor i32 %conv157, -1
  %conv159 = trunc i32 %neg158 to i8
  %conv160 = zext i8 %conv159 to i32
  store i32 %conv160, i32* %data, align 4, !tbaa !8
  %127 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr161 = getelementptr inbounds i8, i8* %127, i64 5
  store i8* %add.ptr161, i8** %p, align 8, !tbaa !1
  %128 = load i32, i32* %rlen, align 4, !tbaa !8
  %add162 = add nsw i32 %128, 24
  store i32 %add162, i32* %rlen, align 4, !tbaa !8
  br label %if.end.171

if.else.163:                                      ; preds = %if.else.150
  %129 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i8, i8* %129, i64 5
  %130 = load i8, i8* %arrayidx164, align 1, !tbaa !23
  %conv165 = zext i8 %130 to i32
  %neg166 = xor i32 %conv165, -1
  %conv167 = trunc i32 %neg166 to i8
  %conv168 = zext i8 %conv167 to i32
  store i32 %conv168, i32* %data, align 4, !tbaa !8
  %131 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr169 = getelementptr inbounds i8, i8* %131, i64 6
  store i8* %add.ptr169, i8** %p, align 8, !tbaa !1
  %132 = load i32, i32* %rlen, align 4, !tbaa !8
  %add170 = add nsw i32 %132, 32
  store i32 %add170, i32* %rlen, align 4, !tbaa !8
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.163, %if.then.155
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.142
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.129
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.99
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.87
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.end.81
  %133 = load i32, i32* %data, align 4, !tbaa !8
  %xor177 = xor i32 %133, 255
  %idxprom178 = zext i32 %xor177 to i64
  %arrayidx179 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom178
  %134 = load i8, i8* %arrayidx179, align 1, !tbaa !23
  %conv180 = zext i8 %134 to i32
  %135 = load i32, i32* %rlen, align 4, !tbaa !8
  %add181 = add nsw i32 %135, %conv180
  store i32 %add181, i32* %rlen, align 4, !tbaa !8
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.176, %do.body
  %136 = load i32, i32* %rlen, align 4, !tbaa !8
  %137 = load i32, i32* %count, align 4, !tbaa !8
  %sub183 = sub i32 %137, %136
  store i32 %sub183, i32* %count, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end.182
  br label %do.end

do.end:                                           ; preds = %do.cond
  %138 = load i32, i32* %count, align 4, !tbaa !8
  store i32 %138, i32* %a1, align 4, !tbaa !8
  %139 = load i8, i8* %prev_data, align 1, !tbaa !23
  %conv184 = zext i8 %139 to i32
  %140 = load i32, i32* %prev_count, align 4, !tbaa !8
  %and185 = and i32 %140, 7
  %idxprom186 = zext i32 %and185 to i64
  %141 = load i8*, i8** %count_bit, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i8, i8* %141, i64 %idxprom186
  %142 = load i8, i8* %arrayidx187, align 1, !tbaa !23
  %conv188 = zext i8 %142 to i32
  %and189 = and i32 %conv184, %conv188
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %if.then.191, label %if.end.297

if.then.191:                                      ; preds = %do.end
  br label %do.body.192

do.body.192:                                      ; preds = %if.then.191
  %143 = load i8, i8* %prev_data, align 1, !tbaa !23
  %idxprom193 = zext i8 %143 to i64
  %144 = load i32, i32* %prev_count, align 4, !tbaa !8
  %and194 = and i32 %144, 7
  %idxprom195 = zext i32 %and194 to i64
  %arrayidx196 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom195
  %145 = load i8*, i8** %arrayidx196, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %145, i64 %idxprom193
  %146 = load i8, i8* %arrayidx197, align 1, !tbaa !23
  %conv198 = zext i8 %146 to i32
  store i32 %conv198, i32* %rlen, align 4, !tbaa !8
  %147 = load i32, i32* %rlen, align 4, !tbaa !8
  %cmp199 = icmp sge i32 %147, 8
  br i1 %cmp199, label %if.then.201, label %if.end.293

if.then.201:                                      ; preds = %do.body.192
  %148 = load i8, i8* %invert, align 1, !tbaa !23
  %conv202 = zext i8 %148 to i32
  %cmp203 = icmp eq i32 %conv202, 0
  br i1 %cmp203, label %if.then.205, label %if.else.243

if.then.205:                                      ; preds = %if.then.201
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.205
  %149 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i8, i8* %149, i64 0
  %150 = load i8, i8* %arrayidx206, align 1, !tbaa !23
  %conv207 = zext i8 %150 to i32
  %cmp208 = icmp ne i32 %conv207, 255
  br i1 %cmp208, label %if.then.210, label %if.end.214

if.then.210:                                      ; preds = %for.cond
  %151 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds i8, i8* %151, i64 0
  %152 = load i8, i8* %arrayidx211, align 1, !tbaa !23
  store i8 %152, i8* %prev_data, align 1, !tbaa !23
  %153 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr212 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %add.ptr212, i8** %prev_p, align 8, !tbaa !1
  %154 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub213 = sub nsw i32 %154, 8
  store i32 %sub213, i32* %rlen, align 4, !tbaa !8
  br label %for.end

if.end.214:                                       ; preds = %for.cond
  %155 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i8, i8* %155, i64 1
  %156 = load i8, i8* %arrayidx215, align 1, !tbaa !23
  %conv216 = zext i8 %156 to i32
  %cmp217 = icmp ne i32 %conv216, 255
  br i1 %cmp217, label %if.then.219, label %if.end.222

if.then.219:                                      ; preds = %if.end.214
  %157 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load i8, i8* %arrayidx220, align 1, !tbaa !23
  store i8 %158, i8* %prev_data, align 1, !tbaa !23
  %159 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr221 = getelementptr inbounds i8, i8* %159, i64 2
  store i8* %add.ptr221, i8** %prev_p, align 8, !tbaa !1
  br label %for.end

if.end.222:                                       ; preds = %if.end.214
  %160 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8, i8* %160, i64 2
  %161 = load i8, i8* %arrayidx223, align 1, !tbaa !23
  %conv224 = zext i8 %161 to i32
  %cmp225 = icmp ne i32 %conv224, 255
  br i1 %cmp225, label %if.then.227, label %if.end.231

if.then.227:                                      ; preds = %if.end.222
  %162 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8, i8* %162, i64 2
  %163 = load i8, i8* %arrayidx228, align 1, !tbaa !23
  store i8 %163, i8* %prev_data, align 1, !tbaa !23
  %164 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr229 = getelementptr inbounds i8, i8* %164, i64 3
  store i8* %add.ptr229, i8** %prev_p, align 8, !tbaa !1
  %165 = load i32, i32* %rlen, align 4, !tbaa !8
  %add230 = add nsw i32 %165, 8
  store i32 %add230, i32* %rlen, align 4, !tbaa !8
  br label %for.end

if.end.231:                                       ; preds = %if.end.222
  %166 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i8, i8* %166, i64 3
  %167 = load i8, i8* %arrayidx232, align 1, !tbaa !23
  %conv233 = zext i8 %167 to i32
  %cmp234 = icmp ne i32 %conv233, 255
  br i1 %cmp234, label %if.then.236, label %if.end.240

if.then.236:                                      ; preds = %if.end.231
  %168 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i8, i8* %168, i64 3
  %169 = load i8, i8* %arrayidx237, align 1, !tbaa !23
  store i8 %169, i8* %prev_data, align 1, !tbaa !23
  %170 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr238 = getelementptr inbounds i8, i8* %170, i64 4
  store i8* %add.ptr238, i8** %prev_p, align 8, !tbaa !1
  %171 = load i32, i32* %rlen, align 4, !tbaa !8
  %add239 = add nsw i32 %171, 16
  store i32 %add239, i32* %rlen, align 4, !tbaa !8
  br label %for.end

if.end.240:                                       ; preds = %if.end.231
  br label %for.inc

for.inc:                                          ; preds = %if.end.240
  %172 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr241 = getelementptr inbounds i8, i8* %172, i64 4
  store i8* %add.ptr241, i8** %prev_p, align 8, !tbaa !1
  %173 = load i32, i32* %rlen, align 4, !tbaa !8
  %add242 = add nsw i32 %173, 32
  store i32 %add242, i32* %rlen, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %if.then.236, %if.then.227, %if.then.219, %if.then.210
  br label %if.end.288

if.else.243:                                      ; preds = %if.then.201
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.284, %if.else.243
  %174 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i8, i8* %174, i64 0
  %175 = load i8, i8* %arrayidx245, align 1, !tbaa !23
  %tobool246 = icmp ne i8 %175, 0
  br i1 %tobool246, label %if.then.247, label %if.end.254

if.then.247:                                      ; preds = %for.cond.244
  %176 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i8, i8* %176, i64 0
  %177 = load i8, i8* %arrayidx248, align 1, !tbaa !23
  %conv249 = zext i8 %177 to i32
  %neg250 = xor i32 %conv249, -1
  %conv251 = trunc i32 %neg250 to i8
  store i8 %conv251, i8* %prev_data, align 1, !tbaa !23
  %178 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr252 = getelementptr inbounds i8, i8* %178, i64 1
  store i8* %add.ptr252, i8** %prev_p, align 8, !tbaa !1
  %179 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub253 = sub nsw i32 %179, 8
  store i32 %sub253, i32* %rlen, align 4, !tbaa !8
  br label %for.end.287

if.end.254:                                       ; preds = %for.cond.244
  %180 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i8, i8* %180, i64 1
  %181 = load i8, i8* %arrayidx255, align 1, !tbaa !23
  %tobool256 = icmp ne i8 %181, 0
  br i1 %tobool256, label %if.then.257, label %if.end.263

if.then.257:                                      ; preds = %if.end.254
  %182 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx258 = getelementptr inbounds i8, i8* %182, i64 1
  %183 = load i8, i8* %arrayidx258, align 1, !tbaa !23
  %conv259 = zext i8 %183 to i32
  %neg260 = xor i32 %conv259, -1
  %conv261 = trunc i32 %neg260 to i8
  store i8 %conv261, i8* %prev_data, align 1, !tbaa !23
  %184 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr262 = getelementptr inbounds i8, i8* %184, i64 2
  store i8* %add.ptr262, i8** %prev_p, align 8, !tbaa !1
  br label %for.end.287

if.end.263:                                       ; preds = %if.end.254
  %185 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds i8, i8* %185, i64 2
  %186 = load i8, i8* %arrayidx264, align 1, !tbaa !23
  %tobool265 = icmp ne i8 %186, 0
  br i1 %tobool265, label %if.then.266, label %if.end.273

if.then.266:                                      ; preds = %if.end.263
  %187 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds i8, i8* %187, i64 2
  %188 = load i8, i8* %arrayidx267, align 1, !tbaa !23
  %conv268 = zext i8 %188 to i32
  %neg269 = xor i32 %conv268, -1
  %conv270 = trunc i32 %neg269 to i8
  store i8 %conv270, i8* %prev_data, align 1, !tbaa !23
  %189 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr271 = getelementptr inbounds i8, i8* %189, i64 3
  store i8* %add.ptr271, i8** %prev_p, align 8, !tbaa !1
  %190 = load i32, i32* %rlen, align 4, !tbaa !8
  %add272 = add nsw i32 %190, 8
  store i32 %add272, i32* %rlen, align 4, !tbaa !8
  br label %for.end.287

if.end.273:                                       ; preds = %if.end.263
  %191 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx274 = getelementptr inbounds i8, i8* %191, i64 3
  %192 = load i8, i8* %arrayidx274, align 1, !tbaa !23
  %tobool275 = icmp ne i8 %192, 0
  br i1 %tobool275, label %if.then.276, label %if.end.283

if.then.276:                                      ; preds = %if.end.273
  %193 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds i8, i8* %193, i64 3
  %194 = load i8, i8* %arrayidx277, align 1, !tbaa !23
  %conv278 = zext i8 %194 to i32
  %neg279 = xor i32 %conv278, -1
  %conv280 = trunc i32 %neg279 to i8
  store i8 %conv280, i8* %prev_data, align 1, !tbaa !23
  %195 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr281 = getelementptr inbounds i8, i8* %195, i64 4
  store i8* %add.ptr281, i8** %prev_p, align 8, !tbaa !1
  %196 = load i32, i32* %rlen, align 4, !tbaa !8
  %add282 = add nsw i32 %196, 16
  store i32 %add282, i32* %rlen, align 4, !tbaa !8
  br label %for.end.287

if.end.283:                                       ; preds = %if.end.273
  br label %for.inc.284

for.inc.284:                                      ; preds = %if.end.283
  %197 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr285 = getelementptr inbounds i8, i8* %197, i64 4
  store i8* %add.ptr285, i8** %prev_p, align 8, !tbaa !1
  %198 = load i32, i32* %rlen, align 4, !tbaa !8
  %add286 = add nsw i32 %198, 32
  store i32 %add286, i32* %rlen, align 4, !tbaa !8
  br label %for.cond.244

for.end.287:                                      ; preds = %if.then.276, %if.then.266, %if.then.257, %if.then.247
  br label %if.end.288

if.end.288:                                       ; preds = %for.end.287, %for.end
  %199 = load i8, i8* %prev_data, align 1, !tbaa !23
  %idxprom289 = zext i8 %199 to i64
  %arrayidx290 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom289
  %200 = load i8, i8* %arrayidx290, align 1, !tbaa !23
  %conv291 = zext i8 %200 to i32
  %201 = load i32, i32* %rlen, align 4, !tbaa !8
  %add292 = add nsw i32 %201, %conv291
  store i32 %add292, i32* %rlen, align 4, !tbaa !8
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.288, %do.body.192
  %202 = load i32, i32* %rlen, align 4, !tbaa !8
  %203 = load i32, i32* %prev_count, align 4, !tbaa !8
  %sub294 = sub i32 %203, %202
  store i32 %sub294, i32* %prev_count, align 4, !tbaa !8
  br label %do.cond.295

do.cond.295:                                      ; preds = %if.end.293
  br label %do.end.296

do.end.296:                                       ; preds = %do.cond.295
  br label %if.end.297

if.end.297:                                       ; preds = %do.end.296, %do.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cf_encode_2d.further_count_bit, i32 0, i32 0), i8** %count_bit, align 8, !tbaa !1
  br label %pass

pass:                                             ; preds = %cond.end, %if.end.297
  %204 = load i32, i32* %prev_count, align 4, !tbaa !8
  %205 = load i32, i32* %end_count, align 4, !tbaa !8
  %cmp298 = icmp ne i32 %204, %205
  br i1 %cmp298, label %if.then.300, label %if.end.477

if.then.300:                                      ; preds = %pass
  br label %do.body.301

do.body.301:                                      ; preds = %if.then.300
  %206 = load i8, i8* %prev_data, align 1, !tbaa !23
  %conv302 = zext i8 %206 to i32
  %xor303 = xor i32 %conv302, 255
  %idxprom304 = sext i32 %xor303 to i64
  %207 = load i32, i32* %prev_count, align 4, !tbaa !8
  %and305 = and i32 %207, 7
  %idxprom306 = zext i32 %and305 to i64
  %arrayidx307 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom306
  %208 = load i8*, i8** %arrayidx307, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds i8, i8* %208, i64 %idxprom304
  %209 = load i8, i8* %arrayidx308, align 1, !tbaa !23
  %conv309 = zext i8 %209 to i32
  store i32 %conv309, i32* %rlen, align 4, !tbaa !8
  %210 = load i32, i32* %rlen, align 4, !tbaa !8
  %cmp310 = icmp sge i32 %210, 8
  br i1 %cmp310, label %if.then.312, label %if.end.473

if.then.312:                                      ; preds = %do.body.301
  %211 = load i8, i8* %invert, align 1, !tbaa !23
  %conv313 = zext i8 %211 to i32
  %cmp314 = icmp eq i32 %conv313, 0
  br i1 %cmp314, label %if.then.316, label %if.else.377

if.then.316:                                      ; preds = %if.then.312
  %212 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx317 = getelementptr inbounds i8, i8* %212, i64 0
  %213 = load i8, i8* %arrayidx317, align 1, !tbaa !23
  %tobool318 = icmp ne i8 %213, 0
  br i1 %tobool318, label %if.then.319, label %if.else.323

if.then.319:                                      ; preds = %if.then.316
  %214 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds i8, i8* %214, i64 0
  %215 = load i8, i8* %arrayidx320, align 1, !tbaa !23
  store i8 %215, i8* %prev_data, align 1, !tbaa !23
  %216 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr321 = getelementptr inbounds i8, i8* %216, i64 1
  store i8* %add.ptr321, i8** %prev_p, align 8, !tbaa !1
  %217 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub322 = sub nsw i32 %217, 8
  store i32 %sub322, i32* %rlen, align 4, !tbaa !8
  br label %if.end.376

if.else.323:                                      ; preds = %if.then.316
  %218 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx324 = getelementptr inbounds i8, i8* %218, i64 1
  %219 = load i8, i8* %arrayidx324, align 1, !tbaa !23
  %tobool325 = icmp ne i8 %219, 0
  br i1 %tobool325, label %if.then.326, label %if.else.329

if.then.326:                                      ; preds = %if.else.323
  %220 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx327 = getelementptr inbounds i8, i8* %220, i64 1
  %221 = load i8, i8* %arrayidx327, align 1, !tbaa !23
  store i8 %221, i8* %prev_data, align 1, !tbaa !23
  %222 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr328 = getelementptr inbounds i8, i8* %222, i64 2
  store i8* %add.ptr328, i8** %prev_p, align 8, !tbaa !1
  br label %if.end.375

if.else.329:                                      ; preds = %if.else.323
  br label %while.cond.330

while.cond.330:                                   ; preds = %while.body.344, %if.else.329
  %223 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds i8, i8* %223, i64 2
  %224 = load i8, i8* %arrayidx331, align 1, !tbaa !23
  %conv332 = zext i8 %224 to i32
  %225 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx333 = getelementptr inbounds i8, i8* %225, i64 3
  %226 = load i8, i8* %arrayidx333, align 1, !tbaa !23
  %conv334 = zext i8 %226 to i32
  %or335 = or i32 %conv332, %conv334
  %227 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds i8, i8* %227, i64 4
  %228 = load i8, i8* %arrayidx336, align 1, !tbaa !23
  %conv337 = zext i8 %228 to i32
  %or338 = or i32 %or335, %conv337
  %229 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx339 = getelementptr inbounds i8, i8* %229, i64 5
  %230 = load i8, i8* %arrayidx339, align 1, !tbaa !23
  %conv340 = zext i8 %230 to i32
  %or341 = or i32 %or338, %conv340
  %tobool342 = icmp ne i32 %or341, 0
  %lnot343 = xor i1 %tobool342, true
  br i1 %lnot343, label %while.body.344, label %while.end.347

while.body.344:                                   ; preds = %while.cond.330
  %231 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr345 = getelementptr inbounds i8, i8* %231, i64 4
  store i8* %add.ptr345, i8** %prev_p, align 8, !tbaa !1
  %232 = load i32, i32* %rlen, align 4, !tbaa !8
  %add346 = add nsw i32 %232, 32
  store i32 %add346, i32* %rlen, align 4, !tbaa !8
  br label %while.cond.330

while.end.347:                                    ; preds = %while.cond.330
  %233 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx348 = getelementptr inbounds i8, i8* %233, i64 2
  %234 = load i8, i8* %arrayidx348, align 1, !tbaa !23
  %tobool349 = icmp ne i8 %234, 0
  br i1 %tobool349, label %if.then.350, label %if.else.354

if.then.350:                                      ; preds = %while.end.347
  %235 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx351 = getelementptr inbounds i8, i8* %235, i64 2
  %236 = load i8, i8* %arrayidx351, align 1, !tbaa !23
  store i8 %236, i8* %prev_data, align 1, !tbaa !23
  %237 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr352 = getelementptr inbounds i8, i8* %237, i64 3
  store i8* %add.ptr352, i8** %prev_p, align 8, !tbaa !1
  %238 = load i32, i32* %rlen, align 4, !tbaa !8
  %add353 = add nsw i32 %238, 8
  store i32 %add353, i32* %rlen, align 4, !tbaa !8
  br label %if.end.374

if.else.354:                                      ; preds = %while.end.347
  %239 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx355 = getelementptr inbounds i8, i8* %239, i64 3
  %240 = load i8, i8* %arrayidx355, align 1, !tbaa !23
  %tobool356 = icmp ne i8 %240, 0
  br i1 %tobool356, label %if.then.357, label %if.else.361

if.then.357:                                      ; preds = %if.else.354
  %241 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx358 = getelementptr inbounds i8, i8* %241, i64 3
  %242 = load i8, i8* %arrayidx358, align 1, !tbaa !23
  store i8 %242, i8* %prev_data, align 1, !tbaa !23
  %243 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr359 = getelementptr inbounds i8, i8* %243, i64 4
  store i8* %add.ptr359, i8** %prev_p, align 8, !tbaa !1
  %244 = load i32, i32* %rlen, align 4, !tbaa !8
  %add360 = add nsw i32 %244, 16
  store i32 %add360, i32* %rlen, align 4, !tbaa !8
  br label %if.end.373

if.else.361:                                      ; preds = %if.else.354
  %245 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds i8, i8* %245, i64 4
  %246 = load i8, i8* %arrayidx362, align 1, !tbaa !23
  %tobool363 = icmp ne i8 %246, 0
  br i1 %tobool363, label %if.then.364, label %if.else.368

if.then.364:                                      ; preds = %if.else.361
  %247 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx365 = getelementptr inbounds i8, i8* %247, i64 4
  %248 = load i8, i8* %arrayidx365, align 1, !tbaa !23
  store i8 %248, i8* %prev_data, align 1, !tbaa !23
  %249 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr366 = getelementptr inbounds i8, i8* %249, i64 5
  store i8* %add.ptr366, i8** %prev_p, align 8, !tbaa !1
  %250 = load i32, i32* %rlen, align 4, !tbaa !8
  %add367 = add nsw i32 %250, 24
  store i32 %add367, i32* %rlen, align 4, !tbaa !8
  br label %if.end.372

if.else.368:                                      ; preds = %if.else.361
  %251 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx369 = getelementptr inbounds i8, i8* %251, i64 5
  %252 = load i8, i8* %arrayidx369, align 1, !tbaa !23
  store i8 %252, i8* %prev_data, align 1, !tbaa !23
  %253 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr370 = getelementptr inbounds i8, i8* %253, i64 6
  store i8* %add.ptr370, i8** %prev_p, align 8, !tbaa !1
  %254 = load i32, i32* %rlen, align 4, !tbaa !8
  %add371 = add nsw i32 %254, 32
  store i32 %add371, i32* %rlen, align 4, !tbaa !8
  br label %if.end.372

if.end.372:                                       ; preds = %if.else.368, %if.then.364
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %if.then.357
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.then.350
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.then.326
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.319
  br label %if.end.466

if.else.377:                                      ; preds = %if.then.312
  %255 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds i8, i8* %255, i64 0
  %256 = load i8, i8* %arrayidx378, align 1, !tbaa !23
  %conv379 = zext i8 %256 to i32
  %cmp380 = icmp ne i32 %conv379, 255
  br i1 %cmp380, label %if.then.382, label %if.else.389

if.then.382:                                      ; preds = %if.else.377
  %257 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx383 = getelementptr inbounds i8, i8* %257, i64 0
  %258 = load i8, i8* %arrayidx383, align 1, !tbaa !23
  %conv384 = zext i8 %258 to i32
  %neg385 = xor i32 %conv384, -1
  %conv386 = trunc i32 %neg385 to i8
  store i8 %conv386, i8* %prev_data, align 1, !tbaa !23
  %259 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr387 = getelementptr inbounds i8, i8* %259, i64 1
  store i8* %add.ptr387, i8** %prev_p, align 8, !tbaa !1
  %260 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub388 = sub nsw i32 %260, 8
  store i32 %sub388, i32* %rlen, align 4, !tbaa !8
  br label %if.end.465

if.else.389:                                      ; preds = %if.else.377
  %261 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx390 = getelementptr inbounds i8, i8* %261, i64 1
  %262 = load i8, i8* %arrayidx390, align 1, !tbaa !23
  %conv391 = zext i8 %262 to i32
  %cmp392 = icmp ne i32 %conv391, 255
  br i1 %cmp392, label %if.then.394, label %if.else.400

if.then.394:                                      ; preds = %if.else.389
  %263 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx395 = getelementptr inbounds i8, i8* %263, i64 1
  %264 = load i8, i8* %arrayidx395, align 1, !tbaa !23
  %conv396 = zext i8 %264 to i32
  %neg397 = xor i32 %conv396, -1
  %conv398 = trunc i32 %neg397 to i8
  store i8 %conv398, i8* %prev_data, align 1, !tbaa !23
  %265 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr399 = getelementptr inbounds i8, i8* %265, i64 2
  store i8* %add.ptr399, i8** %prev_p, align 8, !tbaa !1
  br label %if.end.464

if.else.400:                                      ; preds = %if.else.389
  br label %while.cond.401

while.cond.401:                                   ; preds = %while.body.415, %if.else.400
  %266 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx402 = getelementptr inbounds i8, i8* %266, i64 2
  %267 = load i8, i8* %arrayidx402, align 1, !tbaa !23
  %conv403 = zext i8 %267 to i32
  %268 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx404 = getelementptr inbounds i8, i8* %268, i64 3
  %269 = load i8, i8* %arrayidx404, align 1, !tbaa !23
  %conv405 = zext i8 %269 to i32
  %and406 = and i32 %conv403, %conv405
  %270 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx407 = getelementptr inbounds i8, i8* %270, i64 4
  %271 = load i8, i8* %arrayidx407, align 1, !tbaa !23
  %conv408 = zext i8 %271 to i32
  %and409 = and i32 %and406, %conv408
  %272 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx410 = getelementptr inbounds i8, i8* %272, i64 5
  %273 = load i8, i8* %arrayidx410, align 1, !tbaa !23
  %conv411 = zext i8 %273 to i32
  %and412 = and i32 %and409, %conv411
  %cmp413 = icmp eq i32 %and412, 255
  br i1 %cmp413, label %while.body.415, label %while.end.418

while.body.415:                                   ; preds = %while.cond.401
  %274 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr416 = getelementptr inbounds i8, i8* %274, i64 4
  store i8* %add.ptr416, i8** %prev_p, align 8, !tbaa !1
  %275 = load i32, i32* %rlen, align 4, !tbaa !8
  %add417 = add nsw i32 %275, 32
  store i32 %add417, i32* %rlen, align 4, !tbaa !8
  br label %while.cond.401

while.end.418:                                    ; preds = %while.cond.401
  %276 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx419 = getelementptr inbounds i8, i8* %276, i64 2
  %277 = load i8, i8* %arrayidx419, align 1, !tbaa !23
  %conv420 = zext i8 %277 to i32
  %cmp421 = icmp ne i32 %conv420, 255
  br i1 %cmp421, label %if.then.423, label %if.else.430

if.then.423:                                      ; preds = %while.end.418
  %278 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx424 = getelementptr inbounds i8, i8* %278, i64 2
  %279 = load i8, i8* %arrayidx424, align 1, !tbaa !23
  %conv425 = zext i8 %279 to i32
  %neg426 = xor i32 %conv425, -1
  %conv427 = trunc i32 %neg426 to i8
  store i8 %conv427, i8* %prev_data, align 1, !tbaa !23
  %280 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr428 = getelementptr inbounds i8, i8* %280, i64 3
  store i8* %add.ptr428, i8** %prev_p, align 8, !tbaa !1
  %281 = load i32, i32* %rlen, align 4, !tbaa !8
  %add429 = add nsw i32 %281, 8
  store i32 %add429, i32* %rlen, align 4, !tbaa !8
  br label %if.end.463

if.else.430:                                      ; preds = %while.end.418
  %282 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx431 = getelementptr inbounds i8, i8* %282, i64 3
  %283 = load i8, i8* %arrayidx431, align 1, !tbaa !23
  %conv432 = zext i8 %283 to i32
  %cmp433 = icmp ne i32 %conv432, 255
  br i1 %cmp433, label %if.then.435, label %if.else.442

if.then.435:                                      ; preds = %if.else.430
  %284 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx436 = getelementptr inbounds i8, i8* %284, i64 3
  %285 = load i8, i8* %arrayidx436, align 1, !tbaa !23
  %conv437 = zext i8 %285 to i32
  %neg438 = xor i32 %conv437, -1
  %conv439 = trunc i32 %neg438 to i8
  store i8 %conv439, i8* %prev_data, align 1, !tbaa !23
  %286 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr440 = getelementptr inbounds i8, i8* %286, i64 4
  store i8* %add.ptr440, i8** %prev_p, align 8, !tbaa !1
  %287 = load i32, i32* %rlen, align 4, !tbaa !8
  %add441 = add nsw i32 %287, 16
  store i32 %add441, i32* %rlen, align 4, !tbaa !8
  br label %if.end.462

if.else.442:                                      ; preds = %if.else.430
  %288 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx443 = getelementptr inbounds i8, i8* %288, i64 4
  %289 = load i8, i8* %arrayidx443, align 1, !tbaa !23
  %conv444 = zext i8 %289 to i32
  %cmp445 = icmp ne i32 %conv444, 255
  br i1 %cmp445, label %if.then.447, label %if.else.454

if.then.447:                                      ; preds = %if.else.442
  %290 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx448 = getelementptr inbounds i8, i8* %290, i64 4
  %291 = load i8, i8* %arrayidx448, align 1, !tbaa !23
  %conv449 = zext i8 %291 to i32
  %neg450 = xor i32 %conv449, -1
  %conv451 = trunc i32 %neg450 to i8
  store i8 %conv451, i8* %prev_data, align 1, !tbaa !23
  %292 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr452 = getelementptr inbounds i8, i8* %292, i64 5
  store i8* %add.ptr452, i8** %prev_p, align 8, !tbaa !1
  %293 = load i32, i32* %rlen, align 4, !tbaa !8
  %add453 = add nsw i32 %293, 24
  store i32 %add453, i32* %rlen, align 4, !tbaa !8
  br label %if.end.461

if.else.454:                                      ; preds = %if.else.442
  %294 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx455 = getelementptr inbounds i8, i8* %294, i64 5
  %295 = load i8, i8* %arrayidx455, align 1, !tbaa !23
  %conv456 = zext i8 %295 to i32
  %neg457 = xor i32 %conv456, -1
  %conv458 = trunc i32 %neg457 to i8
  store i8 %conv458, i8* %prev_data, align 1, !tbaa !23
  %296 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr459 = getelementptr inbounds i8, i8* %296, i64 6
  store i8* %add.ptr459, i8** %prev_p, align 8, !tbaa !1
  %297 = load i32, i32* %rlen, align 4, !tbaa !8
  %add460 = add nsw i32 %297, 32
  store i32 %add460, i32* %rlen, align 4, !tbaa !8
  br label %if.end.461

if.end.461:                                       ; preds = %if.else.454, %if.then.447
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %if.then.435
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %if.then.423
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.then.394
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.464, %if.then.382
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %if.end.376
  %298 = load i8, i8* %prev_data, align 1, !tbaa !23
  %conv467 = zext i8 %298 to i32
  %xor468 = xor i32 %conv467, 255
  %idxprom469 = sext i32 %xor468 to i64
  %arrayidx470 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom469
  %299 = load i8, i8* %arrayidx470, align 1, !tbaa !23
  %conv471 = zext i8 %299 to i32
  %300 = load i32, i32* %rlen, align 4, !tbaa !8
  %add472 = add nsw i32 %300, %conv471
  store i32 %add472, i32* %rlen, align 4, !tbaa !8
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.466, %do.body.301
  %301 = load i32, i32* %rlen, align 4, !tbaa !8
  %302 = load i32, i32* %prev_count, align 4, !tbaa !8
  %sub474 = sub i32 %302, %301
  store i32 %sub474, i32* %prev_count, align 4, !tbaa !8
  br label %do.cond.475

do.cond.475:                                      ; preds = %if.end.473
  br label %do.end.476

do.end.476:                                       ; preds = %do.cond.475
  br label %if.end.477

if.end.477:                                       ; preds = %do.end.476, %pass
  %303 = load i32, i32* %a1, align 4, !tbaa !8
  %304 = load i32, i32* %prev_count, align 4, !tbaa !8
  %sub478 = sub i32 %303, %304
  store i32 %sub478, i32* %diff, align 4, !tbaa !8
  %305 = load i32, i32* %diff, align 4, !tbaa !8
  %cmp479 = icmp sle i32 %305, -2
  br i1 %cmp479, label %if.then.481, label %if.end.612

if.then.481:                                      ; preds = %if.end.477
  %306 = load i32, i32* %prev_count, align 4, !tbaa !8
  %307 = load i32, i32* %end_count, align 4, !tbaa !8
  %cmp482 = icmp ne i32 %306, %307
  br i1 %cmp482, label %if.then.484, label %if.end.593

if.then.484:                                      ; preds = %if.then.481
  br label %do.body.485

do.body.485:                                      ; preds = %if.then.484
  %308 = load i8, i8* %prev_data, align 1, !tbaa !23
  %idxprom486 = zext i8 %308 to i64
  %309 = load i32, i32* %prev_count, align 4, !tbaa !8
  %and487 = and i32 %309, 7
  %idxprom488 = zext i32 %and487 to i64
  %arrayidx489 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom488
  %310 = load i8*, i8** %arrayidx489, align 8, !tbaa !1
  %arrayidx490 = getelementptr inbounds i8, i8* %310, i64 %idxprom486
  %311 = load i8, i8* %arrayidx490, align 1, !tbaa !23
  %conv491 = zext i8 %311 to i32
  store i32 %conv491, i32* %rlen, align 4, !tbaa !8
  %312 = load i32, i32* %rlen, align 4, !tbaa !8
  %cmp492 = icmp sge i32 %312, 8
  br i1 %cmp492, label %if.then.494, label %if.end.589

if.then.494:                                      ; preds = %do.body.485
  %313 = load i8, i8* %invert, align 1, !tbaa !23
  %conv495 = zext i8 %313 to i32
  %cmp496 = icmp eq i32 %conv495, 0
  br i1 %cmp496, label %if.then.498, label %if.else.539

if.then.498:                                      ; preds = %if.then.494
  br label %for.cond.499

for.cond.499:                                     ; preds = %for.inc.535, %if.then.498
  %314 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx500 = getelementptr inbounds i8, i8* %314, i64 0
  %315 = load i8, i8* %arrayidx500, align 1, !tbaa !23
  %conv501 = zext i8 %315 to i32
  %cmp502 = icmp ne i32 %conv501, 255
  br i1 %cmp502, label %if.then.504, label %if.end.508

if.then.504:                                      ; preds = %for.cond.499
  %316 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx505 = getelementptr inbounds i8, i8* %316, i64 0
  %317 = load i8, i8* %arrayidx505, align 1, !tbaa !23
  store i8 %317, i8* %prev_data, align 1, !tbaa !23
  %318 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr506 = getelementptr inbounds i8, i8* %318, i64 1
  store i8* %add.ptr506, i8** %prev_p, align 8, !tbaa !1
  %319 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub507 = sub nsw i32 %319, 8
  store i32 %sub507, i32* %rlen, align 4, !tbaa !8
  br label %for.end.538

if.end.508:                                       ; preds = %for.cond.499
  %320 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx509 = getelementptr inbounds i8, i8* %320, i64 1
  %321 = load i8, i8* %arrayidx509, align 1, !tbaa !23
  %conv510 = zext i8 %321 to i32
  %cmp511 = icmp ne i32 %conv510, 255
  br i1 %cmp511, label %if.then.513, label %if.end.516

if.then.513:                                      ; preds = %if.end.508
  %322 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx514 = getelementptr inbounds i8, i8* %322, i64 1
  %323 = load i8, i8* %arrayidx514, align 1, !tbaa !23
  store i8 %323, i8* %prev_data, align 1, !tbaa !23
  %324 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr515 = getelementptr inbounds i8, i8* %324, i64 2
  store i8* %add.ptr515, i8** %prev_p, align 8, !tbaa !1
  br label %for.end.538

if.end.516:                                       ; preds = %if.end.508
  %325 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx517 = getelementptr inbounds i8, i8* %325, i64 2
  %326 = load i8, i8* %arrayidx517, align 1, !tbaa !23
  %conv518 = zext i8 %326 to i32
  %cmp519 = icmp ne i32 %conv518, 255
  br i1 %cmp519, label %if.then.521, label %if.end.525

if.then.521:                                      ; preds = %if.end.516
  %327 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx522 = getelementptr inbounds i8, i8* %327, i64 2
  %328 = load i8, i8* %arrayidx522, align 1, !tbaa !23
  store i8 %328, i8* %prev_data, align 1, !tbaa !23
  %329 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr523 = getelementptr inbounds i8, i8* %329, i64 3
  store i8* %add.ptr523, i8** %prev_p, align 8, !tbaa !1
  %330 = load i32, i32* %rlen, align 4, !tbaa !8
  %add524 = add nsw i32 %330, 8
  store i32 %add524, i32* %rlen, align 4, !tbaa !8
  br label %for.end.538

if.end.525:                                       ; preds = %if.end.516
  %331 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx526 = getelementptr inbounds i8, i8* %331, i64 3
  %332 = load i8, i8* %arrayidx526, align 1, !tbaa !23
  %conv527 = zext i8 %332 to i32
  %cmp528 = icmp ne i32 %conv527, 255
  br i1 %cmp528, label %if.then.530, label %if.end.534

if.then.530:                                      ; preds = %if.end.525
  %333 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx531 = getelementptr inbounds i8, i8* %333, i64 3
  %334 = load i8, i8* %arrayidx531, align 1, !tbaa !23
  store i8 %334, i8* %prev_data, align 1, !tbaa !23
  %335 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr532 = getelementptr inbounds i8, i8* %335, i64 4
  store i8* %add.ptr532, i8** %prev_p, align 8, !tbaa !1
  %336 = load i32, i32* %rlen, align 4, !tbaa !8
  %add533 = add nsw i32 %336, 16
  store i32 %add533, i32* %rlen, align 4, !tbaa !8
  br label %for.end.538

if.end.534:                                       ; preds = %if.end.525
  br label %for.inc.535

for.inc.535:                                      ; preds = %if.end.534
  %337 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr536 = getelementptr inbounds i8, i8* %337, i64 4
  store i8* %add.ptr536, i8** %prev_p, align 8, !tbaa !1
  %338 = load i32, i32* %rlen, align 4, !tbaa !8
  %add537 = add nsw i32 %338, 32
  store i32 %add537, i32* %rlen, align 4, !tbaa !8
  br label %for.cond.499

for.end.538:                                      ; preds = %if.then.530, %if.then.521, %if.then.513, %if.then.504
  br label %if.end.584

if.else.539:                                      ; preds = %if.then.494
  br label %for.cond.540

for.cond.540:                                     ; preds = %for.inc.580, %if.else.539
  %339 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx541 = getelementptr inbounds i8, i8* %339, i64 0
  %340 = load i8, i8* %arrayidx541, align 1, !tbaa !23
  %tobool542 = icmp ne i8 %340, 0
  br i1 %tobool542, label %if.then.543, label %if.end.550

if.then.543:                                      ; preds = %for.cond.540
  %341 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx544 = getelementptr inbounds i8, i8* %341, i64 0
  %342 = load i8, i8* %arrayidx544, align 1, !tbaa !23
  %conv545 = zext i8 %342 to i32
  %neg546 = xor i32 %conv545, -1
  %conv547 = trunc i32 %neg546 to i8
  store i8 %conv547, i8* %prev_data, align 1, !tbaa !23
  %343 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr548 = getelementptr inbounds i8, i8* %343, i64 1
  store i8* %add.ptr548, i8** %prev_p, align 8, !tbaa !1
  %344 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub549 = sub nsw i32 %344, 8
  store i32 %sub549, i32* %rlen, align 4, !tbaa !8
  br label %for.end.583

if.end.550:                                       ; preds = %for.cond.540
  %345 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx551 = getelementptr inbounds i8, i8* %345, i64 1
  %346 = load i8, i8* %arrayidx551, align 1, !tbaa !23
  %tobool552 = icmp ne i8 %346, 0
  br i1 %tobool552, label %if.then.553, label %if.end.559

if.then.553:                                      ; preds = %if.end.550
  %347 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx554 = getelementptr inbounds i8, i8* %347, i64 1
  %348 = load i8, i8* %arrayidx554, align 1, !tbaa !23
  %conv555 = zext i8 %348 to i32
  %neg556 = xor i32 %conv555, -1
  %conv557 = trunc i32 %neg556 to i8
  store i8 %conv557, i8* %prev_data, align 1, !tbaa !23
  %349 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr558 = getelementptr inbounds i8, i8* %349, i64 2
  store i8* %add.ptr558, i8** %prev_p, align 8, !tbaa !1
  br label %for.end.583

if.end.559:                                       ; preds = %if.end.550
  %350 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx560 = getelementptr inbounds i8, i8* %350, i64 2
  %351 = load i8, i8* %arrayidx560, align 1, !tbaa !23
  %tobool561 = icmp ne i8 %351, 0
  br i1 %tobool561, label %if.then.562, label %if.end.569

if.then.562:                                      ; preds = %if.end.559
  %352 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx563 = getelementptr inbounds i8, i8* %352, i64 2
  %353 = load i8, i8* %arrayidx563, align 1, !tbaa !23
  %conv564 = zext i8 %353 to i32
  %neg565 = xor i32 %conv564, -1
  %conv566 = trunc i32 %neg565 to i8
  store i8 %conv566, i8* %prev_data, align 1, !tbaa !23
  %354 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr567 = getelementptr inbounds i8, i8* %354, i64 3
  store i8* %add.ptr567, i8** %prev_p, align 8, !tbaa !1
  %355 = load i32, i32* %rlen, align 4, !tbaa !8
  %add568 = add nsw i32 %355, 8
  store i32 %add568, i32* %rlen, align 4, !tbaa !8
  br label %for.end.583

if.end.569:                                       ; preds = %if.end.559
  %356 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx570 = getelementptr inbounds i8, i8* %356, i64 3
  %357 = load i8, i8* %arrayidx570, align 1, !tbaa !23
  %tobool571 = icmp ne i8 %357, 0
  br i1 %tobool571, label %if.then.572, label %if.end.579

if.then.572:                                      ; preds = %if.end.569
  %358 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %arrayidx573 = getelementptr inbounds i8, i8* %358, i64 3
  %359 = load i8, i8* %arrayidx573, align 1, !tbaa !23
  %conv574 = zext i8 %359 to i32
  %neg575 = xor i32 %conv574, -1
  %conv576 = trunc i32 %neg575 to i8
  store i8 %conv576, i8* %prev_data, align 1, !tbaa !23
  %360 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr577 = getelementptr inbounds i8, i8* %360, i64 4
  store i8* %add.ptr577, i8** %prev_p, align 8, !tbaa !1
  %361 = load i32, i32* %rlen, align 4, !tbaa !8
  %add578 = add nsw i32 %361, 16
  store i32 %add578, i32* %rlen, align 4, !tbaa !8
  br label %for.end.583

if.end.579:                                       ; preds = %if.end.569
  br label %for.inc.580

for.inc.580:                                      ; preds = %if.end.579
  %362 = load i8*, i8** %prev_p, align 8, !tbaa !1
  %add.ptr581 = getelementptr inbounds i8, i8* %362, i64 4
  store i8* %add.ptr581, i8** %prev_p, align 8, !tbaa !1
  %363 = load i32, i32* %rlen, align 4, !tbaa !8
  %add582 = add nsw i32 %363, 32
  store i32 %add582, i32* %rlen, align 4, !tbaa !8
  br label %for.cond.540

for.end.583:                                      ; preds = %if.then.572, %if.then.562, %if.then.553, %if.then.543
  br label %if.end.584

if.end.584:                                       ; preds = %for.end.583, %for.end.538
  %364 = load i8, i8* %prev_data, align 1, !tbaa !23
  %idxprom585 = zext i8 %364 to i64
  %arrayidx586 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom585
  %365 = load i8, i8* %arrayidx586, align 1, !tbaa !23
  %conv587 = zext i8 %365 to i32
  %366 = load i32, i32* %rlen, align 4, !tbaa !8
  %add588 = add nsw i32 %366, %conv587
  store i32 %add588, i32* %rlen, align 4, !tbaa !8
  br label %if.end.589

if.end.589:                                       ; preds = %if.end.584, %do.body.485
  %367 = load i32, i32* %rlen, align 4, !tbaa !8
  %368 = load i32, i32* %prev_count, align 4, !tbaa !8
  %sub590 = sub i32 %368, %367
  store i32 %sub590, i32* %prev_count, align 4, !tbaa !8
  br label %do.cond.591

do.cond.591:                                      ; preds = %if.end.589
  br label %do.end.592

do.end.592:                                       ; preds = %do.cond.591
  br label %if.end.593

if.end.593:                                       ; preds = %do.end.592, %if.then.481
  %369 = load i32, i32* %prev_count, align 4, !tbaa !8
  %370 = load i32, i32* %a1, align 4, !tbaa !8
  %cmp594 = icmp ugt i32 %369, %370
  br i1 %cmp594, label %if.then.596, label %if.end.611

if.then.596:                                      ; preds = %if.end.593
  br label %do.body.597

do.body.597:                                      ; preds = %if.then.596
  br label %do.cond.598

do.cond.598:                                      ; preds = %do.body.597
  br label %do.end.599

do.end.599:                                       ; preds = %do.cond.598
  %371 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub600 = sub nsw i32 %371, 4
  store i32 %sub600, i32* %bits_left, align 4, !tbaa !8
  %cmp601 = icmp sge i32 %sub600, 0
  br i1 %cmp601, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.599
  %372 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl603 = shl i32 1, %372
  %373 = load i32, i32* %bits, align 4, !tbaa !8
  %add604 = add i32 %373, %shl603
  store i32 %add604, i32* %bits, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %do.end.599
  %374 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %374, i32 0, i32 5
  %375 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !44
  %376 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr605 = getelementptr inbounds i8, i8* %376, i64 4
  store i8* %add.ptr605, i8** %q, align 8, !tbaa !1
  %377 = load i32, i32* %bits, align 4, !tbaa !8
  %378 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub606 = sub nsw i32 0, %378
  %shr = ashr i32 1, %sub606
  %add607 = add i32 %377, %shr
  call void @hc_put_code_proc(i32 %375, i8* %add.ptr605, i32 %add607) #4
  %379 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add608 = add nsw i32 %379, 32
  store i32 %add608, i32* %bits_left, align 4, !tbaa !8
  %shl609 = shl i32 1, %add608
  store i32 %shl609, i32* %bits, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond610 = phi i32 [ %add604, %cond.true ], [ %shl609, %cond.false ]
  %380 = load i32, i32* %prev_count, align 4, !tbaa !8
  store i32 %380, i32* %a0, align 4, !tbaa !8
  br label %pass

if.end.611:                                       ; preds = %if.end.593
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %if.end.477
  %381 = load i32, i32* %diff, align 4, !tbaa !8
  %cmp613 = icmp sle i32 %381, 3
  br i1 %cmp613, label %land.lhs.true, label %if.end.650

land.lhs.true:                                    ; preds = %if.end.612
  %382 = load i32, i32* %diff, align 4, !tbaa !8
  %cmp615 = icmp sge i32 %382, -3
  br i1 %cmp615, label %if.then.617, label %if.end.650

if.then.617:                                      ; preds = %land.lhs.true
  %383 = bitcast %struct.hce_code_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %383) #2
  %384 = load i32, i32* %diff, align 4, !tbaa !8
  %add618 = add nsw i32 %384, 3
  %idxprom619 = sext i32 %add618 to i64
  %arrayidx620 = getelementptr inbounds [7 x %struct.hce_code_s], [7 x %struct.hce_code_s]* @cf2_run_vertical, i32 0, i64 %idxprom619
  store %struct.hce_code_s* %arrayidx620, %struct.hce_code_s** %cp, align 8, !tbaa !1
  br label %do.body.621

do.body.621:                                      ; preds = %if.then.617
  br label %do.cond.622

do.cond.622:                                      ; preds = %do.body.621
  br label %do.end.623

do.end.623:                                       ; preds = %do.cond.622
  %385 = load %struct.hce_code_s*, %struct.hce_code_s** %cp, align 8, !tbaa !1
  %code_length = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %385, i32 0, i32 1
  %386 = load i16, i16* %code_length, align 2, !tbaa !41
  %conv624 = zext i16 %386 to i32
  %387 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub625 = sub nsw i32 %387, %conv624
  store i32 %sub625, i32* %bits_left, align 4, !tbaa !8
  %cmp626 = icmp sge i32 %sub625, 0
  br i1 %cmp626, label %cond.true.628, label %cond.false.632

cond.true.628:                                    ; preds = %do.end.623
  %388 = load %struct.hce_code_s*, %struct.hce_code_s** %cp, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %388, i32 0, i32 0
  %389 = load i16, i16* %code, align 2, !tbaa !43
  %conv629 = zext i16 %389 to i32
  %390 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl630 = shl i32 %conv629, %390
  %391 = load i32, i32* %bits, align 4, !tbaa !8
  %add631 = add i32 %391, %shl630
  store i32 %add631, i32* %bits, align 4, !tbaa !8
  br label %cond.end.644

cond.false.632:                                   ; preds = %do.end.623
  %392 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder633 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %392, i32 0, i32 5
  %393 = load i32, i32* %FirstBitLowOrder633, align 4, !tbaa !44
  %394 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr634 = getelementptr inbounds i8, i8* %394, i64 4
  store i8* %add.ptr634, i8** %q, align 8, !tbaa !1
  %395 = load i32, i32* %bits, align 4, !tbaa !8
  %396 = load %struct.hce_code_s*, %struct.hce_code_s** %cp, align 8, !tbaa !1
  %code635 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %396, i32 0, i32 0
  %397 = load i16, i16* %code635, align 2, !tbaa !43
  %conv636 = zext i16 %397 to i32
  %398 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub637 = sub nsw i32 0, %398
  %shr638 = ashr i32 %conv636, %sub637
  %add639 = add i32 %395, %shr638
  call void @hc_put_code_proc(i32 %393, i8* %add.ptr634, i32 %add639) #4
  %399 = load %struct.hce_code_s*, %struct.hce_code_s** %cp, align 8, !tbaa !1
  %code640 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %399, i32 0, i32 0
  %400 = load i16, i16* %code640, align 2, !tbaa !43
  %conv641 = zext i16 %400 to i32
  %401 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add642 = add nsw i32 %401, 32
  store i32 %add642, i32* %bits_left, align 4, !tbaa !8
  %shl643 = shl i32 %conv641, %add642
  store i32 %shl643, i32* %bits, align 4, !tbaa !8
  br label %cond.end.644

cond.end.644:                                     ; preds = %cond.false.632, %cond.true.628
  %cond645 = phi i32 [ %add631, %cond.true.628 ], [ %shl643, %cond.false.632 ]
  %402 = load i8, i8* %invert, align 1, !tbaa !23
  %conv646 = zext i8 %402 to i32
  %neg647 = xor i32 %conv646, -1
  %conv648 = trunc i32 %neg647 to i8
  store i8 %conv648, i8* %invert, align 1, !tbaa !23
  %403 = load i32, i32* %data, align 4, !tbaa !8
  %xor649 = xor i32 %403, 255
  store i32 %xor649, i32* %data, align 4, !tbaa !8
  store i32 2, i32* %cleanup.dest.slot
  %404 = bitcast %struct.hce_code_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %404) #2
  br label %cleanup

if.end.650:                                       ; preds = %land.lhs.true, %if.end.612
  %405 = load i32, i32* %count, align 4, !tbaa !8
  %406 = load i32, i32* %end_count, align 4, !tbaa !8
  %cmp651 = icmp ne i32 %405, %406
  br i1 %cmp651, label %if.then.653, label %if.end.770

if.then.653:                                      ; preds = %if.end.650
  br label %do.body.654

do.body.654:                                      ; preds = %if.then.653
  %407 = load i32, i32* %data, align 4, !tbaa !8
  %idxprom655 = zext i32 %407 to i64
  %408 = load i32, i32* %count, align 4, !tbaa !8
  %and656 = and i32 %408, 7
  %idxprom657 = zext i32 %and656 to i64
  %arrayidx658 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom657
  %409 = load i8*, i8** %arrayidx658, align 8, !tbaa !1
  %arrayidx659 = getelementptr inbounds i8, i8* %409, i64 %idxprom655
  %410 = load i8, i8* %arrayidx659, align 1, !tbaa !23
  %conv660 = zext i8 %410 to i32
  store i32 %conv660, i32* %rlen, align 4, !tbaa !8
  %411 = load i32, i32* %rlen, align 4, !tbaa !8
  %cmp661 = icmp sge i32 %411, 8
  br i1 %cmp661, label %if.then.663, label %if.end.766

if.then.663:                                      ; preds = %do.body.654
  %412 = load i8, i8* %invert, align 1, !tbaa !23
  %conv664 = zext i8 %412 to i32
  %cmp665 = icmp eq i32 %conv664, 0
  br i1 %cmp665, label %if.then.667, label %if.else.712

if.then.667:                                      ; preds = %if.then.663
  br label %for.cond.668

for.cond.668:                                     ; preds = %for.inc.708, %if.then.667
  %413 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx669 = getelementptr inbounds i8, i8* %413, i64 0
  %414 = load i8, i8* %arrayidx669, align 1, !tbaa !23
  %conv670 = zext i8 %414 to i32
  %cmp671 = icmp ne i32 %conv670, 255
  br i1 %cmp671, label %if.then.673, label %if.end.678

if.then.673:                                      ; preds = %for.cond.668
  %415 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx674 = getelementptr inbounds i8, i8* %415, i64 0
  %416 = load i8, i8* %arrayidx674, align 1, !tbaa !23
  %conv675 = zext i8 %416 to i32
  store i32 %conv675, i32* %data, align 4, !tbaa !8
  %417 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr676 = getelementptr inbounds i8, i8* %417, i64 1
  store i8* %add.ptr676, i8** %p, align 8, !tbaa !1
  %418 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub677 = sub nsw i32 %418, 8
  store i32 %sub677, i32* %rlen, align 4, !tbaa !8
  br label %for.end.711

if.end.678:                                       ; preds = %for.cond.668
  %419 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx679 = getelementptr inbounds i8, i8* %419, i64 1
  %420 = load i8, i8* %arrayidx679, align 1, !tbaa !23
  %conv680 = zext i8 %420 to i32
  %cmp681 = icmp ne i32 %conv680, 255
  br i1 %cmp681, label %if.then.683, label %if.end.687

if.then.683:                                      ; preds = %if.end.678
  %421 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx684 = getelementptr inbounds i8, i8* %421, i64 1
  %422 = load i8, i8* %arrayidx684, align 1, !tbaa !23
  %conv685 = zext i8 %422 to i32
  store i32 %conv685, i32* %data, align 4, !tbaa !8
  %423 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr686 = getelementptr inbounds i8, i8* %423, i64 2
  store i8* %add.ptr686, i8** %p, align 8, !tbaa !1
  br label %for.end.711

if.end.687:                                       ; preds = %if.end.678
  %424 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx688 = getelementptr inbounds i8, i8* %424, i64 2
  %425 = load i8, i8* %arrayidx688, align 1, !tbaa !23
  %conv689 = zext i8 %425 to i32
  %cmp690 = icmp ne i32 %conv689, 255
  br i1 %cmp690, label %if.then.692, label %if.end.697

if.then.692:                                      ; preds = %if.end.687
  %426 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx693 = getelementptr inbounds i8, i8* %426, i64 2
  %427 = load i8, i8* %arrayidx693, align 1, !tbaa !23
  %conv694 = zext i8 %427 to i32
  store i32 %conv694, i32* %data, align 4, !tbaa !8
  %428 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr695 = getelementptr inbounds i8, i8* %428, i64 3
  store i8* %add.ptr695, i8** %p, align 8, !tbaa !1
  %429 = load i32, i32* %rlen, align 4, !tbaa !8
  %add696 = add nsw i32 %429, 8
  store i32 %add696, i32* %rlen, align 4, !tbaa !8
  br label %for.end.711

if.end.697:                                       ; preds = %if.end.687
  %430 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx698 = getelementptr inbounds i8, i8* %430, i64 3
  %431 = load i8, i8* %arrayidx698, align 1, !tbaa !23
  %conv699 = zext i8 %431 to i32
  %cmp700 = icmp ne i32 %conv699, 255
  br i1 %cmp700, label %if.then.702, label %if.end.707

if.then.702:                                      ; preds = %if.end.697
  %432 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx703 = getelementptr inbounds i8, i8* %432, i64 3
  %433 = load i8, i8* %arrayidx703, align 1, !tbaa !23
  %conv704 = zext i8 %433 to i32
  store i32 %conv704, i32* %data, align 4, !tbaa !8
  %434 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr705 = getelementptr inbounds i8, i8* %434, i64 4
  store i8* %add.ptr705, i8** %p, align 8, !tbaa !1
  %435 = load i32, i32* %rlen, align 4, !tbaa !8
  %add706 = add nsw i32 %435, 16
  store i32 %add706, i32* %rlen, align 4, !tbaa !8
  br label %for.end.711

if.end.707:                                       ; preds = %if.end.697
  br label %for.inc.708

for.inc.708:                                      ; preds = %if.end.707
  %436 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr709 = getelementptr inbounds i8, i8* %436, i64 4
  store i8* %add.ptr709, i8** %p, align 8, !tbaa !1
  %437 = load i32, i32* %rlen, align 4, !tbaa !8
  %add710 = add nsw i32 %437, 32
  store i32 %add710, i32* %rlen, align 4, !tbaa !8
  br label %for.cond.668

for.end.711:                                      ; preds = %if.then.702, %if.then.692, %if.then.683, %if.then.673
  br label %if.end.761

if.else.712:                                      ; preds = %if.then.663
  br label %for.cond.713

for.cond.713:                                     ; preds = %for.inc.757, %if.else.712
  %438 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx714 = getelementptr inbounds i8, i8* %438, i64 0
  %439 = load i8, i8* %arrayidx714, align 1, !tbaa !23
  %tobool715 = icmp ne i8 %439, 0
  br i1 %tobool715, label %if.then.716, label %if.end.724

if.then.716:                                      ; preds = %for.cond.713
  %440 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx717 = getelementptr inbounds i8, i8* %440, i64 0
  %441 = load i8, i8* %arrayidx717, align 1, !tbaa !23
  %conv718 = zext i8 %441 to i32
  %neg719 = xor i32 %conv718, -1
  %conv720 = trunc i32 %neg719 to i8
  %conv721 = zext i8 %conv720 to i32
  store i32 %conv721, i32* %data, align 4, !tbaa !8
  %442 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr722 = getelementptr inbounds i8, i8* %442, i64 1
  store i8* %add.ptr722, i8** %p, align 8, !tbaa !1
  %443 = load i32, i32* %rlen, align 4, !tbaa !8
  %sub723 = sub nsw i32 %443, 8
  store i32 %sub723, i32* %rlen, align 4, !tbaa !8
  br label %for.end.760

if.end.724:                                       ; preds = %for.cond.713
  %444 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx725 = getelementptr inbounds i8, i8* %444, i64 1
  %445 = load i8, i8* %arrayidx725, align 1, !tbaa !23
  %tobool726 = icmp ne i8 %445, 0
  br i1 %tobool726, label %if.then.727, label %if.end.734

if.then.727:                                      ; preds = %if.end.724
  %446 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx728 = getelementptr inbounds i8, i8* %446, i64 1
  %447 = load i8, i8* %arrayidx728, align 1, !tbaa !23
  %conv729 = zext i8 %447 to i32
  %neg730 = xor i32 %conv729, -1
  %conv731 = trunc i32 %neg730 to i8
  %conv732 = zext i8 %conv731 to i32
  store i32 %conv732, i32* %data, align 4, !tbaa !8
  %448 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr733 = getelementptr inbounds i8, i8* %448, i64 2
  store i8* %add.ptr733, i8** %p, align 8, !tbaa !1
  br label %for.end.760

if.end.734:                                       ; preds = %if.end.724
  %449 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx735 = getelementptr inbounds i8, i8* %449, i64 2
  %450 = load i8, i8* %arrayidx735, align 1, !tbaa !23
  %tobool736 = icmp ne i8 %450, 0
  br i1 %tobool736, label %if.then.737, label %if.end.745

if.then.737:                                      ; preds = %if.end.734
  %451 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx738 = getelementptr inbounds i8, i8* %451, i64 2
  %452 = load i8, i8* %arrayidx738, align 1, !tbaa !23
  %conv739 = zext i8 %452 to i32
  %neg740 = xor i32 %conv739, -1
  %conv741 = trunc i32 %neg740 to i8
  %conv742 = zext i8 %conv741 to i32
  store i32 %conv742, i32* %data, align 4, !tbaa !8
  %453 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr743 = getelementptr inbounds i8, i8* %453, i64 3
  store i8* %add.ptr743, i8** %p, align 8, !tbaa !1
  %454 = load i32, i32* %rlen, align 4, !tbaa !8
  %add744 = add nsw i32 %454, 8
  store i32 %add744, i32* %rlen, align 4, !tbaa !8
  br label %for.end.760

if.end.745:                                       ; preds = %if.end.734
  %455 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx746 = getelementptr inbounds i8, i8* %455, i64 3
  %456 = load i8, i8* %arrayidx746, align 1, !tbaa !23
  %tobool747 = icmp ne i8 %456, 0
  br i1 %tobool747, label %if.then.748, label %if.end.756

if.then.748:                                      ; preds = %if.end.745
  %457 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx749 = getelementptr inbounds i8, i8* %457, i64 3
  %458 = load i8, i8* %arrayidx749, align 1, !tbaa !23
  %conv750 = zext i8 %458 to i32
  %neg751 = xor i32 %conv750, -1
  %conv752 = trunc i32 %neg751 to i8
  %conv753 = zext i8 %conv752 to i32
  store i32 %conv753, i32* %data, align 4, !tbaa !8
  %459 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr754 = getelementptr inbounds i8, i8* %459, i64 4
  store i8* %add.ptr754, i8** %p, align 8, !tbaa !1
  %460 = load i32, i32* %rlen, align 4, !tbaa !8
  %add755 = add nsw i32 %460, 16
  store i32 %add755, i32* %rlen, align 4, !tbaa !8
  br label %for.end.760

if.end.756:                                       ; preds = %if.end.745
  br label %for.inc.757

for.inc.757:                                      ; preds = %if.end.756
  %461 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr758 = getelementptr inbounds i8, i8* %461, i64 4
  store i8* %add.ptr758, i8** %p, align 8, !tbaa !1
  %462 = load i32, i32* %rlen, align 4, !tbaa !8
  %add759 = add nsw i32 %462, 32
  store i32 %add759, i32* %rlen, align 4, !tbaa !8
  br label %for.cond.713

for.end.760:                                      ; preds = %if.then.748, %if.then.737, %if.then.727, %if.then.716
  br label %if.end.761

if.end.761:                                       ; preds = %for.end.760, %for.end.711
  %463 = load i32, i32* %data, align 4, !tbaa !8
  %idxprom762 = zext i32 %463 to i64
  %arrayidx763 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom762
  %464 = load i8, i8* %arrayidx763, align 1, !tbaa !23
  %conv764 = zext i8 %464 to i32
  %465 = load i32, i32* %rlen, align 4, !tbaa !8
  %add765 = add nsw i32 %465, %conv764
  store i32 %add765, i32* %rlen, align 4, !tbaa !8
  br label %if.end.766

if.end.766:                                       ; preds = %if.end.761, %do.body.654
  %466 = load i32, i32* %rlen, align 4, !tbaa !8
  %467 = load i32, i32* %count, align 4, !tbaa !8
  %sub767 = sub i32 %467, %466
  store i32 %sub767, i32* %count, align 4, !tbaa !8
  br label %do.cond.768

do.cond.768:                                      ; preds = %if.end.766
  br label %do.end.769

do.end.769:                                       ; preds = %do.cond.768
  br label %if.end.770

if.end.770:                                       ; preds = %do.end.769, %if.end.650
  %468 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub771 = sub nsw i32 %468, 3
  store i32 %sub771, i32* %bits_left, align 4, !tbaa !8
  %cmp772 = icmp sge i32 %sub771, 0
  br i1 %cmp772, label %cond.true.774, label %cond.false.777

cond.true.774:                                    ; preds = %if.end.770
  %469 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl775 = shl i32 1, %469
  %470 = load i32, i32* %bits, align 4, !tbaa !8
  %add776 = add i32 %470, %shl775
  store i32 %add776, i32* %bits, align 4, !tbaa !8
  br label %cond.end.785

cond.false.777:                                   ; preds = %if.end.770
  %471 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder778 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %471, i32 0, i32 5
  %472 = load i32, i32* %FirstBitLowOrder778, align 4, !tbaa !44
  %473 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr779 = getelementptr inbounds i8, i8* %473, i64 4
  store i8* %add.ptr779, i8** %q, align 8, !tbaa !1
  %474 = load i32, i32* %bits, align 4, !tbaa !8
  %475 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub780 = sub nsw i32 0, %475
  %shr781 = ashr i32 1, %sub780
  %add782 = add i32 %474, %shr781
  call void @hc_put_code_proc(i32 %472, i8* %add.ptr779, i32 %add782) #4
  %476 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add783 = add nsw i32 %476, 32
  store i32 %add783, i32* %bits_left, align 4, !tbaa !8
  %shl784 = shl i32 1, %add783
  store i32 %shl784, i32* %bits, align 4, !tbaa !8
  br label %cond.end.785

cond.end.785:                                     ; preds = %cond.false.777, %cond.true.774
  %cond786 = phi i32 [ %add776, %cond.true.774 ], [ %shl784, %cond.false.777 ]
  %477 = load i32, i32* %a1, align 4, !tbaa !8
  %478 = load i32, i32* %a0, align 4, !tbaa !8
  %sub787 = sub i32 %478, %477
  store i32 %sub787, i32* %a0, align 4, !tbaa !8
  %479 = load i32, i32* %count, align 4, !tbaa !8
  %480 = load i32, i32* %a1, align 4, !tbaa !8
  %sub788 = sub i32 %480, %479
  store i32 %sub788, i32* %a1, align 4, !tbaa !8
  %481 = load i8, i8* %invert, align 1, !tbaa !23
  %conv789 = zext i8 %481 to i32
  %482 = load i8, i8* %invert_white, align 1, !tbaa !23
  %conv790 = zext i8 %482 to i32
  %cmp791 = icmp eq i32 %conv789, %conv790
  br i1 %cmp791, label %if.then.793, label %if.else.881

if.then.793:                                      ; preds = %cond.end.785
  br label %do.body.794

do.body.794:                                      ; preds = %if.then.793
  br label %do.cond.795

do.cond.795:                                      ; preds = %do.body.794
  br label %do.end.796

do.end.796:                                       ; preds = %do.cond.795
  br label %do.body.797

do.body.797:                                      ; preds = %do.end.796
  %483 = bitcast %struct.hce_code_s* %rr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %483) #2
  %484 = load i32, i32* %a0, align 4, !tbaa !8
  %cmp798 = icmp uge i32 %484, 64
  br i1 %cmp798, label %if.then.800, label %if.end.806

if.then.800:                                      ; preds = %do.body.797
  %485 = load i32, i32* %bits, align 4, !tbaa !8
  %486 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits801 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %486, i32 0, i32 6
  store i32 %485, i32* %bits801, align 4, !tbaa !12
  %487 = load i32, i32* %bits_left, align 4, !tbaa !8
  %488 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left802 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %488, i32 0, i32 7
  store i32 %487, i32* %bits_left802, align 4, !tbaa !13
  %489 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %490 = load i8*, i8** %q, align 8, !tbaa !1
  %491 = load i32, i32* %a0, align 4, !tbaa !8
  %call = call i8* @cf_put_long_run(%struct.stream_CFE_state_s* %489, i8* %490, i32 %491, %struct.cf_runs_s* @cf_white_runs) #4
  store i8* %call, i8** %q, align 8, !tbaa !1
  %492 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits803 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %492, i32 0, i32 6
  %493 = load i32, i32* %bits803, align 4, !tbaa !12
  store i32 %493, i32* %bits, align 4, !tbaa !8
  %494 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left804 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %494, i32 0, i32 7
  %495 = load i32, i32* %bits_left804, align 4, !tbaa !13
  store i32 %495, i32* %bits_left, align 4, !tbaa !8
  %496 = load i32, i32* %a0, align 4, !tbaa !8
  %and805 = and i32 %496, 63
  store i32 %and805, i32* %a0, align 4, !tbaa !8
  br label %if.end.806

if.end.806:                                       ; preds = %if.then.800, %do.body.797
  %497 = load i32, i32* %a0, align 4, !tbaa !8
  %idxprom807 = zext i32 %497 to i64
  %arrayidx808 = getelementptr inbounds [64 x %struct.hce_code_s], [64 x %struct.hce_code_s]* getelementptr inbounds (%struct.cf_runs_s, %struct.cf_runs_s* @cf_white_runs, i32 0, i32 0), i32 0, i64 %idxprom807
  %498 = bitcast %struct.hce_code_s* %rr to i8*
  %499 = bitcast %struct.hce_code_s* %arrayidx808 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %498, i8* %499, i64 4, i32 2, i1 false), !tbaa.struct !38
  br label %do.body.809

do.body.809:                                      ; preds = %if.end.806
  br label %do.cond.810

do.cond.810:                                      ; preds = %do.body.809
  br label %do.end.811

do.end.811:                                       ; preds = %do.cond.810
  %code_length812 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 1
  %500 = load i16, i16* %code_length812, align 2, !tbaa !41
  %conv813 = zext i16 %500 to i32
  %501 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub814 = sub nsw i32 %501, %conv813
  store i32 %sub814, i32* %bits_left, align 4, !tbaa !8
  %cmp815 = icmp sge i32 %sub814, 0
  br i1 %cmp815, label %cond.true.817, label %cond.false.822

cond.true.817:                                    ; preds = %do.end.811
  %code818 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %502 = load i16, i16* %code818, align 2, !tbaa !43
  %conv819 = zext i16 %502 to i32
  %503 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl820 = shl i32 %conv819, %503
  %504 = load i32, i32* %bits, align 4, !tbaa !8
  %add821 = add i32 %504, %shl820
  store i32 %add821, i32* %bits, align 4, !tbaa !8
  br label %cond.end.834

cond.false.822:                                   ; preds = %do.end.811
  %505 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder823 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %505, i32 0, i32 5
  %506 = load i32, i32* %FirstBitLowOrder823, align 4, !tbaa !44
  %507 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr824 = getelementptr inbounds i8, i8* %507, i64 4
  store i8* %add.ptr824, i8** %q, align 8, !tbaa !1
  %508 = load i32, i32* %bits, align 4, !tbaa !8
  %code825 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %509 = load i16, i16* %code825, align 2, !tbaa !43
  %conv826 = zext i16 %509 to i32
  %510 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub827 = sub nsw i32 0, %510
  %shr828 = ashr i32 %conv826, %sub827
  %add829 = add i32 %508, %shr828
  call void @hc_put_code_proc(i32 %506, i8* %add.ptr824, i32 %add829) #4
  %code830 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %511 = load i16, i16* %code830, align 2, !tbaa !43
  %conv831 = zext i16 %511 to i32
  %512 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add832 = add nsw i32 %512, 32
  store i32 %add832, i32* %bits_left, align 4, !tbaa !8
  %shl833 = shl i32 %conv831, %add832
  store i32 %shl833, i32* %bits, align 4, !tbaa !8
  br label %cond.end.834

cond.end.834:                                     ; preds = %cond.false.822, %cond.true.817
  %cond835 = phi i32 [ %add821, %cond.true.817 ], [ %shl833, %cond.false.822 ]
  %513 = bitcast %struct.hce_code_s* %rr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %513) #2
  br label %do.cond.836

do.cond.836:                                      ; preds = %cond.end.834
  br label %do.end.837

do.end.837:                                       ; preds = %do.cond.836
  br label %do.body.838

do.body.838:                                      ; preds = %do.end.837
  %514 = bitcast %struct.hce_code_s* %rr839 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %514) #2
  %515 = load i32, i32* %a1, align 4, !tbaa !8
  %cmp840 = icmp uge i32 %515, 64
  br i1 %cmp840, label %if.then.842, label %if.end.849

if.then.842:                                      ; preds = %do.body.838
  %516 = load i32, i32* %bits, align 4, !tbaa !8
  %517 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits843 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %517, i32 0, i32 6
  store i32 %516, i32* %bits843, align 4, !tbaa !12
  %518 = load i32, i32* %bits_left, align 4, !tbaa !8
  %519 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left844 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %519, i32 0, i32 7
  store i32 %518, i32* %bits_left844, align 4, !tbaa !13
  %520 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %521 = load i8*, i8** %q, align 8, !tbaa !1
  %522 = load i32, i32* %a1, align 4, !tbaa !8
  %call845 = call i8* @cf_put_long_run(%struct.stream_CFE_state_s* %520, i8* %521, i32 %522, %struct.cf_runs_s* @cf_black_runs) #4
  store i8* %call845, i8** %q, align 8, !tbaa !1
  %523 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits846 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %523, i32 0, i32 6
  %524 = load i32, i32* %bits846, align 4, !tbaa !12
  store i32 %524, i32* %bits, align 4, !tbaa !8
  %525 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left847 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %525, i32 0, i32 7
  %526 = load i32, i32* %bits_left847, align 4, !tbaa !13
  store i32 %526, i32* %bits_left, align 4, !tbaa !8
  %527 = load i32, i32* %a1, align 4, !tbaa !8
  %and848 = and i32 %527, 63
  store i32 %and848, i32* %a1, align 4, !tbaa !8
  br label %if.end.849

if.end.849:                                       ; preds = %if.then.842, %do.body.838
  %528 = load i32, i32* %a1, align 4, !tbaa !8
  %idxprom850 = zext i32 %528 to i64
  %arrayidx851 = getelementptr inbounds [64 x %struct.hce_code_s], [64 x %struct.hce_code_s]* getelementptr inbounds (%struct.cf_runs_s, %struct.cf_runs_s* @cf_black_runs, i32 0, i32 0), i32 0, i64 %idxprom850
  %529 = bitcast %struct.hce_code_s* %rr839 to i8*
  %530 = bitcast %struct.hce_code_s* %arrayidx851 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %529, i8* %530, i64 4, i32 2, i1 false), !tbaa.struct !38
  br label %do.body.852

do.body.852:                                      ; preds = %if.end.849
  br label %do.cond.853

do.cond.853:                                      ; preds = %do.body.852
  br label %do.end.854

do.end.854:                                       ; preds = %do.cond.853
  %code_length855 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr839, i32 0, i32 1
  %531 = load i16, i16* %code_length855, align 2, !tbaa !41
  %conv856 = zext i16 %531 to i32
  %532 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub857 = sub nsw i32 %532, %conv856
  store i32 %sub857, i32* %bits_left, align 4, !tbaa !8
  %cmp858 = icmp sge i32 %sub857, 0
  br i1 %cmp858, label %cond.true.860, label %cond.false.865

cond.true.860:                                    ; preds = %do.end.854
  %code861 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr839, i32 0, i32 0
  %533 = load i16, i16* %code861, align 2, !tbaa !43
  %conv862 = zext i16 %533 to i32
  %534 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl863 = shl i32 %conv862, %534
  %535 = load i32, i32* %bits, align 4, !tbaa !8
  %add864 = add i32 %535, %shl863
  store i32 %add864, i32* %bits, align 4, !tbaa !8
  br label %cond.end.877

cond.false.865:                                   ; preds = %do.end.854
  %536 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder866 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %536, i32 0, i32 5
  %537 = load i32, i32* %FirstBitLowOrder866, align 4, !tbaa !44
  %538 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr867 = getelementptr inbounds i8, i8* %538, i64 4
  store i8* %add.ptr867, i8** %q, align 8, !tbaa !1
  %539 = load i32, i32* %bits, align 4, !tbaa !8
  %code868 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr839, i32 0, i32 0
  %540 = load i16, i16* %code868, align 2, !tbaa !43
  %conv869 = zext i16 %540 to i32
  %541 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub870 = sub nsw i32 0, %541
  %shr871 = ashr i32 %conv869, %sub870
  %add872 = add i32 %539, %shr871
  call void @hc_put_code_proc(i32 %537, i8* %add.ptr867, i32 %add872) #4
  %code873 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr839, i32 0, i32 0
  %542 = load i16, i16* %code873, align 2, !tbaa !43
  %conv874 = zext i16 %542 to i32
  %543 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add875 = add nsw i32 %543, 32
  store i32 %add875, i32* %bits_left, align 4, !tbaa !8
  %shl876 = shl i32 %conv874, %add875
  store i32 %shl876, i32* %bits, align 4, !tbaa !8
  br label %cond.end.877

cond.end.877:                                     ; preds = %cond.false.865, %cond.true.860
  %cond878 = phi i32 [ %add864, %cond.true.860 ], [ %shl876, %cond.false.865 ]
  %544 = bitcast %struct.hce_code_s* %rr839 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %544) #2
  br label %do.cond.879

do.cond.879:                                      ; preds = %cond.end.877
  br label %do.end.880

do.end.880:                                       ; preds = %do.cond.879
  br label %if.end.971

if.else.881:                                      ; preds = %cond.end.785
  br label %do.body.882

do.body.882:                                      ; preds = %if.else.881
  br label %do.cond.883

do.cond.883:                                      ; preds = %do.body.882
  br label %do.end.884

do.end.884:                                       ; preds = %do.cond.883
  br label %do.body.885

do.body.885:                                      ; preds = %do.end.884
  %545 = bitcast %struct.hce_code_s* %rr886 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %545) #2
  %546 = load i32, i32* %a0, align 4, !tbaa !8
  %cmp887 = icmp uge i32 %546, 64
  br i1 %cmp887, label %if.then.889, label %if.end.896

if.then.889:                                      ; preds = %do.body.885
  %547 = load i32, i32* %bits, align 4, !tbaa !8
  %548 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits890 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %548, i32 0, i32 6
  store i32 %547, i32* %bits890, align 4, !tbaa !12
  %549 = load i32, i32* %bits_left, align 4, !tbaa !8
  %550 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left891 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %550, i32 0, i32 7
  store i32 %549, i32* %bits_left891, align 4, !tbaa !13
  %551 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %552 = load i8*, i8** %q, align 8, !tbaa !1
  %553 = load i32, i32* %a0, align 4, !tbaa !8
  %call892 = call i8* @cf_put_long_run(%struct.stream_CFE_state_s* %551, i8* %552, i32 %553, %struct.cf_runs_s* @cf_black_runs) #4
  store i8* %call892, i8** %q, align 8, !tbaa !1
  %554 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits893 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %554, i32 0, i32 6
  %555 = load i32, i32* %bits893, align 4, !tbaa !12
  store i32 %555, i32* %bits, align 4, !tbaa !8
  %556 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left894 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %556, i32 0, i32 7
  %557 = load i32, i32* %bits_left894, align 4, !tbaa !13
  store i32 %557, i32* %bits_left, align 4, !tbaa !8
  %558 = load i32, i32* %a0, align 4, !tbaa !8
  %and895 = and i32 %558, 63
  store i32 %and895, i32* %a0, align 4, !tbaa !8
  br label %if.end.896

if.end.896:                                       ; preds = %if.then.889, %do.body.885
  %559 = load i32, i32* %a0, align 4, !tbaa !8
  %idxprom897 = zext i32 %559 to i64
  %arrayidx898 = getelementptr inbounds [64 x %struct.hce_code_s], [64 x %struct.hce_code_s]* getelementptr inbounds (%struct.cf_runs_s, %struct.cf_runs_s* @cf_black_runs, i32 0, i32 0), i32 0, i64 %idxprom897
  %560 = bitcast %struct.hce_code_s* %rr886 to i8*
  %561 = bitcast %struct.hce_code_s* %arrayidx898 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %560, i8* %561, i64 4, i32 2, i1 false), !tbaa.struct !38
  br label %do.body.899

do.body.899:                                      ; preds = %if.end.896
  br label %do.cond.900

do.cond.900:                                      ; preds = %do.body.899
  br label %do.end.901

do.end.901:                                       ; preds = %do.cond.900
  %code_length902 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr886, i32 0, i32 1
  %562 = load i16, i16* %code_length902, align 2, !tbaa !41
  %conv903 = zext i16 %562 to i32
  %563 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub904 = sub nsw i32 %563, %conv903
  store i32 %sub904, i32* %bits_left, align 4, !tbaa !8
  %cmp905 = icmp sge i32 %sub904, 0
  br i1 %cmp905, label %cond.true.907, label %cond.false.912

cond.true.907:                                    ; preds = %do.end.901
  %code908 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr886, i32 0, i32 0
  %564 = load i16, i16* %code908, align 2, !tbaa !43
  %conv909 = zext i16 %564 to i32
  %565 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl910 = shl i32 %conv909, %565
  %566 = load i32, i32* %bits, align 4, !tbaa !8
  %add911 = add i32 %566, %shl910
  store i32 %add911, i32* %bits, align 4, !tbaa !8
  br label %cond.end.924

cond.false.912:                                   ; preds = %do.end.901
  %567 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder913 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %567, i32 0, i32 5
  %568 = load i32, i32* %FirstBitLowOrder913, align 4, !tbaa !44
  %569 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr914 = getelementptr inbounds i8, i8* %569, i64 4
  store i8* %add.ptr914, i8** %q, align 8, !tbaa !1
  %570 = load i32, i32* %bits, align 4, !tbaa !8
  %code915 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr886, i32 0, i32 0
  %571 = load i16, i16* %code915, align 2, !tbaa !43
  %conv916 = zext i16 %571 to i32
  %572 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub917 = sub nsw i32 0, %572
  %shr918 = ashr i32 %conv916, %sub917
  %add919 = add i32 %570, %shr918
  call void @hc_put_code_proc(i32 %568, i8* %add.ptr914, i32 %add919) #4
  %code920 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr886, i32 0, i32 0
  %573 = load i16, i16* %code920, align 2, !tbaa !43
  %conv921 = zext i16 %573 to i32
  %574 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add922 = add nsw i32 %574, 32
  store i32 %add922, i32* %bits_left, align 4, !tbaa !8
  %shl923 = shl i32 %conv921, %add922
  store i32 %shl923, i32* %bits, align 4, !tbaa !8
  br label %cond.end.924

cond.end.924:                                     ; preds = %cond.false.912, %cond.true.907
  %cond925 = phi i32 [ %add911, %cond.true.907 ], [ %shl923, %cond.false.912 ]
  %575 = bitcast %struct.hce_code_s* %rr886 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %575) #2
  br label %do.cond.926

do.cond.926:                                      ; preds = %cond.end.924
  br label %do.end.927

do.end.927:                                       ; preds = %do.cond.926
  br label %do.body.928

do.body.928:                                      ; preds = %do.end.927
  %576 = bitcast %struct.hce_code_s* %rr929 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %576) #2
  %577 = load i32, i32* %a1, align 4, !tbaa !8
  %cmp930 = icmp uge i32 %577, 64
  br i1 %cmp930, label %if.then.932, label %if.end.939

if.then.932:                                      ; preds = %do.body.928
  %578 = load i32, i32* %bits, align 4, !tbaa !8
  %579 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits933 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %579, i32 0, i32 6
  store i32 %578, i32* %bits933, align 4, !tbaa !12
  %580 = load i32, i32* %bits_left, align 4, !tbaa !8
  %581 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left934 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %581, i32 0, i32 7
  store i32 %580, i32* %bits_left934, align 4, !tbaa !13
  %582 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %583 = load i8*, i8** %q, align 8, !tbaa !1
  %584 = load i32, i32* %a1, align 4, !tbaa !8
  %call935 = call i8* @cf_put_long_run(%struct.stream_CFE_state_s* %582, i8* %583, i32 %584, %struct.cf_runs_s* @cf_white_runs) #4
  store i8* %call935, i8** %q, align 8, !tbaa !1
  %585 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits936 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %585, i32 0, i32 6
  %586 = load i32, i32* %bits936, align 4, !tbaa !12
  store i32 %586, i32* %bits, align 4, !tbaa !8
  %587 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left937 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %587, i32 0, i32 7
  %588 = load i32, i32* %bits_left937, align 4, !tbaa !13
  store i32 %588, i32* %bits_left, align 4, !tbaa !8
  %589 = load i32, i32* %a1, align 4, !tbaa !8
  %and938 = and i32 %589, 63
  store i32 %and938, i32* %a1, align 4, !tbaa !8
  br label %if.end.939

if.end.939:                                       ; preds = %if.then.932, %do.body.928
  %590 = load i32, i32* %a1, align 4, !tbaa !8
  %idxprom940 = zext i32 %590 to i64
  %arrayidx941 = getelementptr inbounds [64 x %struct.hce_code_s], [64 x %struct.hce_code_s]* getelementptr inbounds (%struct.cf_runs_s, %struct.cf_runs_s* @cf_white_runs, i32 0, i32 0), i32 0, i64 %idxprom940
  %591 = bitcast %struct.hce_code_s* %rr929 to i8*
  %592 = bitcast %struct.hce_code_s* %arrayidx941 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %591, i8* %592, i64 4, i32 2, i1 false), !tbaa.struct !38
  br label %do.body.942

do.body.942:                                      ; preds = %if.end.939
  br label %do.cond.943

do.cond.943:                                      ; preds = %do.body.942
  br label %do.end.944

do.end.944:                                       ; preds = %do.cond.943
  %code_length945 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr929, i32 0, i32 1
  %593 = load i16, i16* %code_length945, align 2, !tbaa !41
  %conv946 = zext i16 %593 to i32
  %594 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub947 = sub nsw i32 %594, %conv946
  store i32 %sub947, i32* %bits_left, align 4, !tbaa !8
  %cmp948 = icmp sge i32 %sub947, 0
  br i1 %cmp948, label %cond.true.950, label %cond.false.955

cond.true.950:                                    ; preds = %do.end.944
  %code951 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr929, i32 0, i32 0
  %595 = load i16, i16* %code951, align 2, !tbaa !43
  %conv952 = zext i16 %595 to i32
  %596 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl953 = shl i32 %conv952, %596
  %597 = load i32, i32* %bits, align 4, !tbaa !8
  %add954 = add i32 %597, %shl953
  store i32 %add954, i32* %bits, align 4, !tbaa !8
  br label %cond.end.967

cond.false.955:                                   ; preds = %do.end.944
  %598 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder956 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %598, i32 0, i32 5
  %599 = load i32, i32* %FirstBitLowOrder956, align 4, !tbaa !44
  %600 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr957 = getelementptr inbounds i8, i8* %600, i64 4
  store i8* %add.ptr957, i8** %q, align 8, !tbaa !1
  %601 = load i32, i32* %bits, align 4, !tbaa !8
  %code958 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr929, i32 0, i32 0
  %602 = load i16, i16* %code958, align 2, !tbaa !43
  %conv959 = zext i16 %602 to i32
  %603 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub960 = sub nsw i32 0, %603
  %shr961 = ashr i32 %conv959, %sub960
  %add962 = add i32 %601, %shr961
  call void @hc_put_code_proc(i32 %599, i8* %add.ptr957, i32 %add962) #4
  %code963 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr929, i32 0, i32 0
  %604 = load i16, i16* %code963, align 2, !tbaa !43
  %conv964 = zext i16 %604 to i32
  %605 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add965 = add nsw i32 %605, 32
  store i32 %add965, i32* %bits_left, align 4, !tbaa !8
  %shl966 = shl i32 %conv964, %add965
  store i32 %shl966, i32* %bits, align 4, !tbaa !8
  br label %cond.end.967

cond.end.967:                                     ; preds = %cond.false.955, %cond.true.950
  %cond968 = phi i32 [ %add954, %cond.true.950 ], [ %shl966, %cond.false.955 ]
  %606 = bitcast %struct.hce_code_s* %rr929 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %606) #2
  br label %do.cond.969

do.cond.969:                                      ; preds = %cond.end.967
  br label %do.end.970

do.end.970:                                       ; preds = %do.cond.969
  br label %if.end.971

if.end.971:                                       ; preds = %do.end.970, %do.end.880
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.971, %cond.end.644
  %607 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %607) #2
  call void @llvm.lifetime.end(i64 1, i8* %prev_data) #2
  %608 = bitcast i8** %prev_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %608) #2
  %609 = bitcast i32* %prev_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %609) #2
  %610 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %610) #2
  %611 = bitcast i32* %a1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %611) #2
  %612 = bitcast i32* %a0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %612) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.978:                                    ; preds = %while.cond
  %613 = load i32, i32* %bits, align 4, !tbaa !8
  %614 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits979 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %614, i32 0, i32 6
  store i32 %613, i32* %bits979, align 4, !tbaa !12
  %615 = load i32, i32* %bits_left, align 4, !tbaa !8
  %616 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left980 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %616, i32 0, i32 7
  store i32 %615, i32* %bits_left980, align 4, !tbaa !13
  %617 = load i8*, i8** %q, align 8, !tbaa !1
  %618 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr981 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %618, i32 0, i32 1
  store i8* %617, i8** %ptr981, align 8, !tbaa !32
  %619 = bitcast i8** %count_bit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %619) #2
  %620 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %620) #2
  %621 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %621) #2
  %622 = bitcast i32* %data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %622) #2
  %623 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %623) #2
  %624 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %624) #2
  %625 = bitcast i32* %end_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %625) #2
  %626 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %626) #2
  call void @llvm.lifetime.end(i64 1, i8* %invert) #2
  call void @llvm.lifetime.end(i64 1, i8* %invert_white) #2
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i8* @hc_put_last_bits_proc(%struct.stream_hc_state_s*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @cf_put_long_run(%struct.stream_CFE_state_s* %ss, i8* %q, i32 %lenv, %struct.cf_runs_s* %prt) #0 {
entry:
  %ss.addr = alloca %struct.stream_CFE_state_s*, align 8
  %q.addr = alloca i8*, align 8
  %lenv.addr = alloca i32, align 4
  %prt.addr = alloca %struct.cf_runs_s*, align 8
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %rr = alloca %struct.hce_code_s, align 2
  store %struct.stream_CFE_state_s* %ss, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  store i8* %q, i8** %q.addr, align 8, !tbaa !1
  store i32 %lenv, i32* %lenv.addr, align 4, !tbaa !8
  store %struct.cf_runs_s* %prt, %struct.cf_runs_s** %prt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.hce_code_s* %rr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits1 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %3, i32 0, i32 6
  %4 = load i32, i32* %bits1, align 4, !tbaa !12
  store i32 %4, i32* %bits, align 4, !tbaa !8
  %5 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left2 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %5, i32 0, i32 7
  %6 = load i32, i32* %bits_left2, align 4, !tbaa !13
  store i32 %6, i32* %bits_left, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %7 = load i32, i32* %lenv.addr, align 4, !tbaa !8
  %cmp = icmp sge i32 %7, 2624
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.cf_runs_s*, %struct.cf_runs_s** %prt.addr, align 8, !tbaa !1
  %make_up = getelementptr inbounds %struct.cf_runs_s, %struct.cf_runs_s* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [41 x %struct.hce_code_s], [41 x %struct.hce_code_s]* %make_up, i32 0, i64 40
  %9 = bitcast %struct.hce_code_s* %rr to i8*
  %10 = bitcast %struct.hce_code_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 4, i32 2, i1 false), !tbaa.struct !38
  br label %do.body

do.body:                                          ; preds = %while.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %code_length = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 1
  %11 = load i16, i16* %code_length, align 2, !tbaa !41
  %conv = zext i16 %11 to i32
  %12 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub = sub nsw i32 %12, %conv
  store i32 %sub, i32* %bits_left, align 4, !tbaa !8
  %cmp3 = icmp sge i32 %sub, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %code = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %13 = load i16, i16* %code, align 2, !tbaa !43
  %conv5 = zext i16 %13 to i32
  %14 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl = shl i32 %conv5, %14
  %15 = load i32, i32* %bits, align 4, !tbaa !8
  %add = add i32 %15, %shl
  store i32 %add, i32* %bits, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %16 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %16, i32 0, i32 5
  %17 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !44
  %18 = load i8*, i8** %q.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %add.ptr, i8** %q.addr, align 8, !tbaa !1
  %19 = load i32, i32* %bits, align 4, !tbaa !8
  %code6 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %20 = load i16, i16* %code6, align 2, !tbaa !43
  %conv7 = zext i16 %20 to i32
  %21 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub8 = sub nsw i32 0, %21
  %shr = ashr i32 %conv7, %sub8
  %add9 = add i32 %19, %shr
  call void @hc_put_code_proc(i32 %17, i8* %add.ptr, i32 %add9) #4
  %code10 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %22 = load i16, i16* %code10, align 2, !tbaa !43
  %conv11 = zext i16 %22 to i32
  %23 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add12 = add nsw i32 %23, 32
  store i32 %add12, i32* %bits_left, align 4, !tbaa !8
  %shl13 = shl i32 %conv11, %add12
  store i32 %shl13, i32* %bits, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %shl13, %cond.false ]
  %24 = load i32, i32* %lenv.addr, align 4, !tbaa !8
  %sub14 = sub nsw i32 %24, 2560
  store i32 %sub14, i32* %lenv.addr, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %lenv.addr, align 4, !tbaa !8
  %shr15 = ashr i32 %25, 6
  %idxprom = sext i32 %shr15 to i64
  %26 = load %struct.cf_runs_s*, %struct.cf_runs_s** %prt.addr, align 8, !tbaa !1
  %make_up16 = getelementptr inbounds %struct.cf_runs_s, %struct.cf_runs_s* %26, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [41 x %struct.hce_code_s], [41 x %struct.hce_code_s]* %make_up16, i32 0, i64 %idxprom
  %27 = bitcast %struct.hce_code_s* %rr to i8*
  %28 = bitcast %struct.hce_code_s* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 4, i32 2, i1 false), !tbaa.struct !38
  br label %do.body.18

do.body.18:                                       ; preds = %while.end
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  %code_length21 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 1
  %29 = load i16, i16* %code_length21, align 2, !tbaa !41
  %conv22 = zext i16 %29 to i32
  %30 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub23 = sub nsw i32 %30, %conv22
  store i32 %sub23, i32* %bits_left, align 4, !tbaa !8
  %cmp24 = icmp sge i32 %sub23, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.31

cond.true.26:                                     ; preds = %do.end.20
  %code27 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %31 = load i16, i16* %code27, align 2, !tbaa !43
  %conv28 = zext i16 %31 to i32
  %32 = load i32, i32* %bits_left, align 4, !tbaa !8
  %shl29 = shl i32 %conv28, %32
  %33 = load i32, i32* %bits, align 4, !tbaa !8
  %add30 = add i32 %33, %shl29
  store i32 %add30, i32* %bits, align 4, !tbaa !8
  br label %cond.end.43

cond.false.31:                                    ; preds = %do.end.20
  %34 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder32 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %34, i32 0, i32 5
  %35 = load i32, i32* %FirstBitLowOrder32, align 4, !tbaa !44
  %36 = load i8*, i8** %q.addr, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %add.ptr33, i8** %q.addr, align 8, !tbaa !1
  %37 = load i32, i32* %bits, align 4, !tbaa !8
  %code34 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %38 = load i16, i16* %code34, align 2, !tbaa !43
  %conv35 = zext i16 %38 to i32
  %39 = load i32, i32* %bits_left, align 4, !tbaa !8
  %sub36 = sub nsw i32 0, %39
  %shr37 = ashr i32 %conv35, %sub36
  %add38 = add i32 %37, %shr37
  call void @hc_put_code_proc(i32 %35, i8* %add.ptr33, i32 %add38) #4
  %code39 = getelementptr inbounds %struct.hce_code_s, %struct.hce_code_s* %rr, i32 0, i32 0
  %40 = load i16, i16* %code39, align 2, !tbaa !43
  %conv40 = zext i16 %40 to i32
  %41 = load i32, i32* %bits_left, align 4, !tbaa !8
  %add41 = add nsw i32 %41, 32
  store i32 %add41, i32* %bits_left, align 4, !tbaa !8
  %shl42 = shl i32 %conv40, %add41
  store i32 %shl42, i32* %bits, align 4, !tbaa !8
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.31, %cond.true.26
  %cond44 = phi i32 [ %add30, %cond.true.26 ], [ %shl42, %cond.false.31 ]
  %42 = load i32, i32* %bits, align 4, !tbaa !8
  %43 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits45 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %43, i32 0, i32 6
  store i32 %42, i32* %bits45, align 4, !tbaa !12
  %44 = load i32, i32* %bits_left, align 4, !tbaa !8
  %45 = load %struct.stream_CFE_state_s*, %struct.stream_CFE_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left46 = getelementptr inbounds %struct.stream_CFE_state_s, %struct.stream_CFE_state_s* %45, i32 0, i32 7
  store i32 %44, i32* %bits_left46, align 4, !tbaa !13
  %46 = load i8*, i8** %q.addr, align 8, !tbaa !1
  %47 = bitcast %struct.hce_code_s* %rr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  ret i8* %46
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
!5 = !{!6, !7, i64 136}
!6 = !{!"stream_CFE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !2, i64 168, !2, i64 176, !7, i64 184, !7, i64 188, !2, i64 192, !7, i64 200, !7, i64 204, !7, i64 208}
!7 = !{!"int", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!6, !7, i64 124}
!10 = !{!6, !7, i64 156}
!11 = !{!6, !7, i64 160}
!12 = !{!6, !7, i64 112}
!13 = !{!6, !7, i64 116}
!14 = !{!6, !2, i64 192}
!15 = !{!6, !2, i64 176}
!16 = !{!6, !2, i64 168}
!17 = !{!18, !2, i64 8}
!18 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28}
!19 = !{!20, !2, i64 64}
!20 = !{!"gs_memory_s", !2, i64 0, !21, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!21 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!22 = !{!6, !7, i64 148}
!23 = !{!3, !3, i64 0}
!24 = !{!6, !7, i64 200}
!25 = !{!6, !7, i64 204}
!26 = !{!6, !7, i64 184}
!27 = !{!6, !7, i64 188}
!28 = !{!29, !2, i64 8}
!29 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!30 = !{!31, !2, i64 16}
!31 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!32 = !{!31, !2, i64 8}
!33 = !{!6, !7, i64 208}
!34 = !{!29, !2, i64 0}
!35 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1}
!36 = !{!6, !7, i64 128}
!37 = !{!6, !7, i64 132}
!38 = !{i64 0, i64 2, !39, i64 2, i64 2, !39}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !3, i64 0}
!41 = !{!42, !40, i64 2}
!42 = !{!"hce_code_s", !40, i64 0, !40, i64 2}
!43 = !{!42, !40, i64 0}
!44 = !{!6, !7, i64 108}
!45 = !{!6, !7, i64 144}
!46 = !{!20, !2, i64 24}
!47 = !{!6, !7, i64 120}
!48 = !{!6, !7, i64 140}
!49 = !{!6, !7, i64 152}
