; ModuleID = './scfd.bc'
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
%struct.hcd_code_s = type { i16, i16 }
%struct.stream_CFD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@st_CFD_state = internal constant %struct.gs_memory_struct_type_s { i32 240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @cfd_reloc_ptrs to i8*) }, align 8
@s_CFD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_CFD_state, i32 (%struct.stream_state_s*)* @s_CFD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_CFD_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_CFD_release, void (%struct.stream_state_s*)* @s_CFD_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"CCITTFaxDecode state\00", align 1
@cfd_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @cfd_enum_ptrs, i32 0, i32 0) }, align 8
@cfd_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 168 }, %struct.gc_ptr_element_s { i16 0, i16 176 }], align 2
@.str.1 = private unnamed_addr constant [9 x i8] c"CFD lbuf\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CFD lprev\00", align 1
@byte_reverse_bits = external constant [256 x i8], align 16
@cf_2d_decode = external constant [0 x %struct.hcd_code_s], align 2
@.str.3 = private unnamed_addr constant [5 x i8] c"[w2]\00", align 1
@cf_decode_2d.count_bit = internal constant [8 x i8] c"\80\01\02\04\08\10 @", align 1
@byte_bit_run_length_neg = external constant [8 x i8*], align 16
@byte_bit_run_length_0 = external constant [256 x i8], align 16
@cf_white_decode = external constant [0 x %struct.hcd_code_s], align 2
@.str.4 = private unnamed_addr constant [7 x i8] c" white\00", align 1
@cf_black_decode = external constant [0 x %struct.hcd_code_s], align 2
@.str.5 = private unnamed_addr constant [7 x i8] c" black\00", align 1
@byte_right_mask = external constant [9 x i8], align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"[w1]white\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"[w1]black\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"CFD lprev(close)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"CFD lbuf(close)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_CFD_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_CFD_state_s*, align 8
  %raster = alloca i32, align 4
  %white = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_CFD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_CFD_state_s*
  store %struct.stream_CFD_state_s* %2, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %4, i32 0, i32 17
  %5 = load i32, i32* %DecodedByteAlign, align 4, !tbaa !5
  %6 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %6, i32 0, i32 17
  %7 = load i32, i32* %DecodedByteAlign1, align 4, !tbaa !5
  %sub = sub nsw i32 %7, 1
  %and = and i32 %5, %sub
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %8, i32 0, i32 12
  %9 = load i32, i32* %Columns, align 4, !tbaa !8
  %add = add nsw i32 %9, 7
  %shr = ashr i32 %add, 3
  %10 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign2 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %10, i32 0, i32 17
  %11 = load i32, i32* %DecodedByteAlign2, align 4, !tbaa !5
  %sub3 = sub nsw i32 %11, 1
  %add4 = add nsw i32 %shr, %sub3
  %12 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign5 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %12, i32 0, i32 17
  %13 = load i32, i32* %DecodedByteAlign5, align 4, !tbaa !5
  %div = sdiv i32 %add4, %13
  %14 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign6 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %14, i32 0, i32 17
  %15 = load i32, i32* %DecodedByteAlign6, align 4, !tbaa !5
  %mul = mul nsw i32 %div, %15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %Columns7 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %16, i32 0, i32 12
  %17 = load i32, i32* %Columns7, align 4, !tbaa !8
  %add8 = add nsw i32 %17, 7
  %shr9 = ashr i32 %add8, 3
  %18 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign10 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %18, i32 0, i32 17
  %19 = load i32, i32* %DecodedByteAlign10, align 4, !tbaa !5
  %sub11 = sub nsw i32 %19, 1
  %add12 = add nsw i32 %shr9, %sub11
  %20 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign13 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %20, i32 0, i32 17
  %21 = load i32, i32* %DecodedByteAlign13, align 4, !tbaa !5
  %sub14 = sub nsw i32 0, %21
  %and15 = and i32 %add12, %sub14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %and15, %cond.false ]
  %22 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %raster16 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %22, i32 0, i32 18
  store i32 %cond, i32* %raster16, align 4, !tbaa !9
  store i32 %cond, i32* %raster, align 4, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %white) #2
  %23 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %23, i32 0, i32 15
  %24 = load i32, i32* %BlackIs1, align 4, !tbaa !11
  %tobool17 = icmp ne i32 %24, 0
  %cond18 = select i1 %tobool17, i32 0, i32 255
  %conv = trunc i32 %cond18 to i8
  store i8 %conv, i8* %white, align 1, !tbaa !12
  %25 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %25, i32 0, i32 6
  store i32 0, i32* %bits, align 4, !tbaa !13
  %26 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits_left = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %26, i32 0, i32 7
  store i32 0, i32* %bits_left, align 4, !tbaa !14
  %27 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %27, i32 0, i32 1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !15
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %29 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !17
  %30 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %30, i32 0, i32 1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !15
  %32 = load i32, i32* %raster, align 4, !tbaa !10
  %add20 = add nsw i32 %32, 4
  %call = call i8* %29(%struct.gs_memory_s* %31, i32 %add20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)) #5
  %33 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %33, i32 0, i32 19
  store i8* %call, i8** %lbuf, align 8, !tbaa !20
  %34 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %34, i32 0, i32 20
  store i8* null, i8** %lprev, align 8, !tbaa !21
  %35 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf21 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %35, i32 0, i32 19
  %36 = load i8*, i8** %lbuf21, align 8, !tbaa !20
  %cmp = icmp eq i8* %36, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %37 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf23 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %37, i32 0, i32 19
  %38 = load i8*, i8** %lbuf23, align 8, !tbaa !20
  %39 = load i8, i8* %white, align 1, !tbaa !12
  %conv24 = zext i8 %39 to i32
  %40 = load i32, i32* %raster, align 4, !tbaa !10
  %conv25 = sext i32 %40 to i64
  %call26 = call i8* @memset(i8* %38, i32 %conv24, i64 %conv25) #6
  %41 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf27 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %41, i32 0, i32 19
  %42 = load i8*, i8** %lbuf27, align 8, !tbaa !20
  %43 = load i32, i32* %raster, align 4, !tbaa !10
  %idx.ext = sext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  %call28 = call i8* @memset(i8* %add.ptr, i32 170, i64 4) #6
  %44 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %44, i32 0, i32 9
  %45 = load i32, i32* %K, align 4, !tbaa !22
  %cmp29 = icmp ne i32 %45, 0
  br i1 %cmp29, label %if.then.31, label %if.end.52

if.then.31:                                       ; preds = %if.end
  %46 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %46, i32 0, i32 1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !15
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %alloc_bytes34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 7
  %48 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes34, align 8, !tbaa !17
  %49 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %49, i32 0, i32 1
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !15
  %51 = load i32, i32* %raster, align 4, !tbaa !10
  %add36 = add nsw i32 %51, 4
  %call37 = call i8* %48(%struct.gs_memory_s* %50, i32 %add36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)) #5
  %52 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lprev38 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %52, i32 0, i32 20
  store i8* %call37, i8** %lprev38, align 8, !tbaa !21
  %53 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lprev39 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %53, i32 0, i32 20
  %54 = load i8*, i8** %lprev39, align 8, !tbaa !21
  %cmp40 = icmp eq i8* %54, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.31
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.then.31
  %55 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lprev44 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %55, i32 0, i32 20
  %56 = load i8*, i8** %lprev44, align 8, !tbaa !21
  %57 = load i8, i8* %white, align 1, !tbaa !12
  %conv45 = zext i8 %57 to i32
  %58 = load i32, i32* %raster, align 4, !tbaa !10
  %conv46 = sext i32 %58 to i64
  %call47 = call i8* @memset(i8* %56, i32 %conv45, i64 %conv46) #6
  %59 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lprev48 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %59, i32 0, i32 20
  %60 = load i8*, i8** %lprev48, align 8, !tbaa !21
  %61 = load i32, i32* %raster, align 4, !tbaa !10
  %idx.ext49 = sext i32 %61 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %60, i64 %idx.ext49
  %call51 = call i8* @memset(i8* %add.ptr50, i32 170, i64 4) #6
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.43, %if.end
  %62 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K53 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %62, i32 0, i32 9
  %63 = load i32, i32* %K53, align 4, !tbaa !22
  %cmp54 = icmp slt i32 %63, 0
  br i1 %cmp54, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %if.end.52
  %64 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K57 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %64, i32 0, i32 9
  %65 = load i32, i32* %K57, align 4, !tbaa !22
  br label %cond.end.59

cond.false.58:                                    ; preds = %if.end.52
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.56
  %cond60 = phi i32 [ %65, %cond.true.56 ], [ 0, %cond.false.58 ]
  %66 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %k_left = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %66, i32 0, i32 21
  store i32 %cond60, i32* %k_left, align 4, !tbaa !23
  %67 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %run_color = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %67, i32 0, i32 29
  store i32 0, i32* %run_color, align 4, !tbaa !24
  %68 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %damaged_rows = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %68, i32 0, i32 30
  store i32 0, i32* %damaged_rows, align 4, !tbaa !25
  %69 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %skipping_damage = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %69, i32 0, i32 31
  store i32 0, i32* %skipping_damage, align 4, !tbaa !26
  %70 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %cbit = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %70, i32 0, i32 22
  store i32 0, i32* %cbit, align 4, !tbaa !27
  %71 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %uncomp_run = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %71, i32 0, i32 32
  store i32 0, i32* %uncomp_run, align 4, !tbaa !28
  %72 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %Rows = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %72, i32 0, i32 13
  %73 = load i32, i32* %Rows, align 4, !tbaa !29
  %cmp61 = icmp sle i32 %73, 0
  br i1 %cmp61, label %cond.true.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.59
  %74 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %EndOfBlock = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %74, i32 0, i32 14
  %75 = load i32, i32* %EndOfBlock, align 4, !tbaa !30
  %tobool63 = icmp ne i32 %75, 0
  br i1 %tobool63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %lor.lhs.false, %cond.end.59
  br label %cond.end.67

cond.false.65:                                    ; preds = %lor.lhs.false
  %76 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %Rows66 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %76, i32 0, i32 13
  %77 = load i32, i32* %Rows66, align 4, !tbaa !29
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.64
  %cond68 = phi i32 [ -1, %cond.true.64 ], [ %77, %cond.false.65 ]
  %78 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %rows_left = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %78, i32 0, i32 23
  store i32 %cond68, i32* %rows_left, align 4, !tbaa !31
  %79 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %row = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %79, i32 0, i32 24
  store i32 0, i32* %row, align 4, !tbaa !32
  %80 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %wpos = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %80, i32 0, i32 26
  store i32 -1, i32* %wpos, align 4, !tbaa !33
  %81 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %rpos = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %81, i32 0, i32 25
  store i32 -1, i32* %rpos, align 4, !tbaa !34
  %82 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %eol_count = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %82, i32 0, i32 27
  store i32 0, i32* %eol_count, align 4, !tbaa !35
  %83 = load i8, i8* %white, align 1, !tbaa !12
  %84 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %invert = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %84, i32 0, i32 28
  store i8 %83, i8* %invert, align 1, !tbaa !36
  %85 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %85, i32 0, i32 3
  store i32 1, i32* %min_left, align 4, !tbaa !37
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.67, %if.then.42, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %white) #2
  %86 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast %struct.stream_CFD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define internal i32 @s_CFD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_CFD_state_s*, align 8
  %wstop = alloca i32, align 4
  %eol_count = alloca i32, align 4
  %k_left = alloca i32, align 4
  %rows_left = alloca i32, align 4
  %status = alloca i32, align 4
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %skip = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cr = alloca %struct.stream_cursor_read_s, align 8
  %prev_bits = alloca i8*, align 8
  %p130 = alloca i8*, align 8
  %rlimit131 = alloca i8*, align 8
  %bits132 = alloca i32, align 4
  %bits_left133 = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !10
  %0 = bitcast %struct.stream_CFD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_CFD_state_s*
  store %struct.stream_CFD_state_s* %2, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %wstop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %4, i32 0, i32 18
  %5 = load i32, i32* %raster, align 4, !tbaa !9
  %sub = sub i32 %5, 1
  store i32 %sub, i32* %wstop, align 4, !tbaa !10
  %6 = bitcast i32* %eol_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %eol_count1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %7, i32 0, i32 27
  %8 = load i32, i32* %eol_count1, align 4, !tbaa !35
  store i32 %8, i32* %eol_count, align 4, !tbaa !10
  %9 = bitcast i32* %k_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %k_left2 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %10, i32 0, i32 21
  %11 = load i32, i32* %k_left2, align 4, !tbaa !23
  store i32 %11, i32* %k_left, align 4, !tbaa !10
  %12 = bitcast i32* %rows_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %rows_left3 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %13, i32 0, i32 23
  %14 = load i32, i32* %rows_left3, align 4, !tbaa !31
  store i32 %14, i32* %rows_left, align 4, !tbaa !10
  %15 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %status, align 4, !tbaa !10
  br label %top

top:                                              ; preds = %if.end.290, %sw.bb.278, %entry
  %16 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %skipping_damage = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %16, i32 0, i32 31
  %17 = load i32, i32* %skipping_damage, align 4, !tbaa !26
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %top
  %18 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load i8*, i8** %rlimit, align 8, !tbaa !1
  store i32 0, i32* %status, align 4, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %24 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %25 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call = call i32 @cf_decode_eol(%struct.stream_CFD_state_s* %24, %struct.stream_cursor_read_s* %25) #5
  store i32 %call, i32* %skip, align 4, !tbaa !10
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
  ]

sw.default:                                       ; preds = %do.body
  %26 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %26, i32 0, i32 0
  %27 = load i8*, i8** %ptr, align 8, !tbaa !38
  store i8* %27, i8** %p, align 8, !tbaa !1
  %28 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %28, i32 0, i32 1
  %29 = load i8*, i8** %limit, align 8, !tbaa !40
  store i8* %29, i8** %rlimit, align 8, !tbaa !1
  %30 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits4 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %30, i32 0, i32 6
  %31 = load i32, i32* %bits4, align 4, !tbaa !13
  store i32 %31, i32* %bits, align 4, !tbaa !10
  %32 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits_left5 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %32, i32 0, i32 7
  %33 = load i32, i32* %bits_left5, align 4, !tbaa !14
  store i32 %33, i32* %bits_left, align 4, !tbaa !10
  %34 = load i32, i32* %skip, align 4, !tbaa !10
  %sub6 = sub nsw i32 0, %34
  %35 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub7 = sub nsw i32 %35, %sub6
  store i32 %sub7, i32* %bits_left, align 4, !tbaa !10
  %36 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr = ashr i32 %36, 3
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext = sext i32 %shr to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.neg
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %38 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %38, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr8, align 8, !tbaa !38
  %39 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and = and i32 %39, -8
  %40 = load i32, i32* %bits, align 4, !tbaa !10
  %shr9 = lshr i32 %40, %and
  store i32 %shr9, i32* %bits, align 4, !tbaa !10
  %41 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits10 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %41, i32 0, i32 6
  store i32 %shr9, i32* %bits10, align 4, !tbaa !13
  %42 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and11 = and i32 %42, 7
  store i32 %and11, i32* %bits_left, align 4, !tbaa !10
  %43 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits_left12 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %43, i32 0, i32 7
  store i32 %and11, i32* %bits_left12, align 4, !tbaa !14
  br label %do.cond

sw.bb:                                            ; preds = %do.body
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.13:                                         ; preds = %do.body
  %44 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr14 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %44, i32 0, i32 0
  %45 = load i8*, i8** %ptr14, align 8, !tbaa !38
  store i8* %45, i8** %p, align 8, !tbaa !1
  %46 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit15 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %46, i32 0, i32 1
  %47 = load i8*, i8** %limit15, align 8, !tbaa !40
  store i8* %47, i8** %rlimit, align 8, !tbaa !1
  %48 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits16 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %48, i32 0, i32 6
  %49 = load i32, i32* %bits16, align 4, !tbaa !13
  store i32 %49, i32* %bits, align 4, !tbaa !10
  %50 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits_left17 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %50, i32 0, i32 7
  %51 = load i32, i32* %bits_left17, align 4, !tbaa !14
  store i32 %51, i32* %bits_left, align 4, !tbaa !10
  %52 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add = add nsw i32 %52, 12
  store i32 %add, i32* %bits_left, align 4, !tbaa !10
  %53 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr18 = ashr i32 %53, 3
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext19 = sext i32 %shr18 to i64
  %idx.neg20 = sub i64 0, %idx.ext19
  %add.ptr21 = getelementptr inbounds i8, i8* %54, i64 %idx.neg20
  store i8* %add.ptr21, i8** %p, align 8, !tbaa !1
  %55 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr22 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %55, i32 0, i32 0
  store i8* %add.ptr21, i8** %ptr22, align 8, !tbaa !38
  %56 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and23 = and i32 %56, -8
  %57 = load i32, i32* %bits, align 4, !tbaa !10
  %shr24 = lshr i32 %57, %and23
  store i32 %shr24, i32* %bits, align 4, !tbaa !10
  %58 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits25 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %58, i32 0, i32 6
  store i32 %shr24, i32* %bits25, align 4, !tbaa !13
  %59 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and26 = and i32 %59, 7
  store i32 %and26, i32* %bits_left, align 4, !tbaa !10
  %60 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits_left27 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %60, i32 0, i32 7
  store i32 %and26, i32* %bits_left27, align 4, !tbaa !14
  %61 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %skipping_damage28 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %61, i32 0, i32 31
  store i32 0, i32* %skipping_damage28, align 4, !tbaa !26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.13
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog, %sw.default
  %62 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %skipping_damage29 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %62, i32 0, i32 31
  %63 = load i32, i32* %skipping_damage29, align 4, !tbaa !26
  %tobool30 = icmp ne i32 %63, 0
  br i1 %tobool30, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %64 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %damaged_rows = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %64, i32 0, i32 30
  %65 = load i32, i32* %damaged_rows, align 4, !tbaa !25
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %damaged_rows, align 4, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %do.end
  %66 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.304 [
    i32 0, label %cleanup.cont
    i32 6, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end

if.end:                                           ; preds = %cleanup.cont, %top
  %71 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %wpos = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %71, i32 0, i32 26
  %72 = load i32, i32* %wpos, align 4, !tbaa !33
  %73 = load i32, i32* %wstop, align 4, !tbaa !10
  %cmp = icmp eq i32 %72, %73
  br i1 %cmp, label %land.lhs.true, label %if.end.115

land.lhs.true:                                    ; preds = %if.end
  %74 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %cbit = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %74, i32 0, i32 22
  %75 = load i32, i32* %cbit, align 4, !tbaa !27
  %76 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %76, i32 0, i32 12
  %77 = load i32, i32* %Columns, align 4, !tbaa !8
  %sub35 = sub nsw i32 0, %77
  %and36 = and i32 %sub35, 7
  %cmp37 = icmp sle i32 %75, %and36
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.115

land.lhs.true.38:                                 ; preds = %land.lhs.true
  %78 = load i32, i32* %k_left, align 4, !tbaa !10
  %cmp39 = icmp eq i32 %78, 0
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.38
  %79 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %run_color = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %79, i32 0, i32 29
  %80 = load i32, i32* %run_color, align 4, !tbaa !24
  %and40 = and i32 %80, -2
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.end.115, label %if.then.44

cond.false:                                       ; preds = %land.lhs.true.38
  %81 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %run_color42 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %81, i32 0, i32 29
  %82 = load i32, i32* %run_color42, align 4, !tbaa !24
  %cmp43 = icmp eq i32 %82, 0
  br i1 %cmp43, label %if.then.44, label %if.end.115

if.then.44:                                       ; preds = %cond.false, %cond.true
  %83 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %rpos = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %83, i32 0, i32 25
  %84 = load i32, i32* %rpos, align 4, !tbaa !34
  %85 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %wpos45 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %85, i32 0, i32 26
  %86 = load i32, i32* %wpos45, align 4, !tbaa !33
  %cmp46 = icmp slt i32 %84, %86
  br i1 %cmp46, label %if.then.47, label %if.end.67

if.then.47:                                       ; preds = %if.then.44
  %87 = bitcast %struct.stream_cursor_read_s* %cr to i8*
  call void @llvm.lifetime.start(i64 24, i8* %87) #2
  %88 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %88, i32 0, i32 19
  %89 = load i8*, i8** %lbuf, align 8, !tbaa !20
  %90 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %rpos48 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %90, i32 0, i32 25
  %91 = load i32, i32* %rpos48, align 4, !tbaa !34
  %idx.ext49 = sext i32 %91 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %89, i64 %idx.ext49
  %ptr51 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %cr, i32 0, i32 0
  store i8* %add.ptr50, i8** %ptr51, align 8, !tbaa !38
  %92 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf52 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %92, i32 0, i32 19
  %93 = load i8*, i8** %lbuf52, align 8, !tbaa !20
  %94 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %wpos53 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %94, i32 0, i32 26
  %95 = load i32, i32* %wpos53, align 4, !tbaa !33
  %idx.ext54 = sext i32 %95 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %93, i64 %idx.ext54
  %limit56 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %cr, i32 0, i32 1
  store i8* %add.ptr55, i8** %limit56, align 8, !tbaa !40
  %96 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %call57 = call i32 @stream_move(%struct.stream_cursor_read_s* %cr, %struct.stream_cursor_write_s* %96) #5
  store i32 %call57, i32* %status, align 4, !tbaa !10
  %ptr58 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %cr, i32 0, i32 0
  %97 = load i8*, i8** %ptr58, align 8, !tbaa !38
  %98 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf59 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %98, i32 0, i32 19
  %99 = load i8*, i8** %lbuf59, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %97 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %99 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %100 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %rpos60 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %100, i32 0, i32 25
  store i32 %conv, i32* %rpos60, align 4, !tbaa !34
  %101 = load i32, i32* %status, align 4, !tbaa !10
  %tobool61 = icmp ne i32 %101, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.47
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.63:                                        ; preds = %if.then.47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.then.62, %if.end.63
  %102 = bitcast %struct.stream_cursor_read_s* %cr to i8*
  call void @llvm.lifetime.end(i64 24, i8* %102) #2
  %cleanup.dest.65 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.65, label %cleanup.304 [
    i32 0, label %cleanup.cont.66
    i32 6, label %out
  ]

cleanup.cont.66:                                  ; preds = %cleanup.64
  br label %if.end.67

if.end.67:                                        ; preds = %cleanup.cont.66, %if.then.44
  %103 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %row = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %103, i32 0, i32 24
  %104 = load i32, i32* %row, align 4, !tbaa !32
  %inc68 = add nsw i32 %104, 1
  store i32 %inc68, i32* %row, align 4, !tbaa !32
  %105 = load i32, i32* %rows_left, align 4, !tbaa !10
  %cmp69 = icmp sgt i32 %105, 0
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.75

land.lhs.true.71:                                 ; preds = %if.end.67
  %106 = load i32, i32* %rows_left, align 4, !tbaa !10
  %dec = add nsw i32 %106, -1
  store i32 %dec, i32* %rows_left, align 4, !tbaa !10
  %cmp72 = icmp eq i32 %dec, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %land.lhs.true.71
  br label %ck_eol

if.end.75:                                        ; preds = %land.lhs.true.71, %if.end.67
  %107 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %107, i32 0, i32 9
  %108 = load i32, i32* %K, align 4, !tbaa !22
  %cmp76 = icmp ne i32 %108, 0
  br i1 %cmp76, label %if.then.78, label %if.end.93

if.then.78:                                       ; preds = %if.end.75
  %109 = bitcast i8** %prev_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #2
  %110 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %110, i32 0, i32 20
  %111 = load i8*, i8** %lprev, align 8, !tbaa !21
  store i8* %111, i8** %prev_bits, align 8, !tbaa !1
  %112 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf79 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %112, i32 0, i32 19
  %113 = load i8*, i8** %lbuf79, align 8, !tbaa !20
  %114 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lprev80 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %114, i32 0, i32 20
  store i8* %113, i8** %lprev80, align 8, !tbaa !21
  %115 = load i8*, i8** %prev_bits, align 8, !tbaa !1
  %116 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf81 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %116, i32 0, i32 19
  store i8* %115, i8** %lbuf81, align 8, !tbaa !20
  %117 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K82 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %117, i32 0, i32 9
  %118 = load i32, i32* %K82, align 4, !tbaa !22
  %cmp83 = icmp sgt i32 %118, 0
  br i1 %cmp83, label %if.then.85, label %if.end.92

if.then.85:                                       ; preds = %if.then.78
  %119 = load i32, i32* %k_left, align 4, !tbaa !10
  %cmp86 = icmp eq i32 %119, 0
  br i1 %cmp86, label %cond.true.88, label %cond.false.90

cond.true.88:                                     ; preds = %if.then.85
  %120 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K89 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %120, i32 0, i32 9
  %121 = load i32, i32* %K89, align 4, !tbaa !22
  br label %cond.end

cond.false.90:                                    ; preds = %if.then.85
  %122 = load i32, i32* %k_left, align 4, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false.90, %cond.true.88
  %cond = phi i32 [ %121, %cond.true.88 ], [ %122, %cond.false.90 ]
  %sub91 = sub nsw i32 %cond, 1
  store i32 %sub91, i32* %k_left, align 4, !tbaa !10
  br label %if.end.92

if.end.92:                                        ; preds = %cond.end, %if.then.78
  %123 = bitcast i8** %prev_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.75
  %124 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %wpos94 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %124, i32 0, i32 26
  store i32 -1, i32* %wpos94, align 4, !tbaa !33
  %125 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %rpos95 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %125, i32 0, i32 25
  store i32 -1, i32* %rpos95, align 4, !tbaa !34
  store i32 0, i32* %eol_count, align 4, !tbaa !10
  %126 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %eol_count96 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %126, i32 0, i32 27
  store i32 0, i32* %eol_count96, align 4, !tbaa !35
  %127 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %cbit97 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %127, i32 0, i32 22
  store i32 0, i32* %cbit97, align 4, !tbaa !27
  %128 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %128, i32 0, i32 15
  %129 = load i32, i32* %BlackIs1, align 4, !tbaa !11
  %tobool98 = icmp ne i32 %129, 0
  %cond99 = select i1 %tobool98, i32 0, i32 255
  %conv100 = trunc i32 %cond99 to i8
  %130 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %invert = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %130, i32 0, i32 28
  store i8 %conv100, i8* %invert, align 1, !tbaa !36
  %131 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf101 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %131, i32 0, i32 19
  %132 = load i8*, i8** %lbuf101, align 8, !tbaa !20
  %133 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %invert102 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %133, i32 0, i32 28
  %134 = load i8, i8* %invert102, align 1, !tbaa !36
  %conv103 = zext i8 %134 to i32
  %135 = load i32, i32* %wstop, align 4, !tbaa !10
  %add104 = add nsw i32 %135, 1
  %conv105 = sext i32 %add104 to i64
  %call106 = call i8* @memset(i8* %132, i32 %conv103, i64 %conv105) #6
  %136 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %run_color107 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %136, i32 0, i32 29
  store i32 0, i32* %run_color107, align 4, !tbaa !24
  %137 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %EncodedByteAlign = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %137, i32 0, i32 11
  %138 = load i32, i32* %EncodedByteAlign, align 4, !tbaa !41
  %tobool108 = icmp ne i32 %138, 0
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.114

land.lhs.true.109:                                ; preds = %if.end.93
  %139 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %EndOfLine = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %139, i32 0, i32 10
  %140 = load i32, i32* %EndOfLine, align 4, !tbaa !42
  %tobool110 = icmp ne i32 %140, 0
  br i1 %tobool110, label %if.end.114, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.109
  %141 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits_left112 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %141, i32 0, i32 7
  %142 = load i32, i32* %bits_left112, align 4, !tbaa !14
  %and113 = and i32 %142, -8
  store i32 %and113, i32* %bits_left112, align 4, !tbaa !14
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %land.lhs.true.109, %if.end.93
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %cond.false, %cond.true, %land.lhs.true, %if.end
  %143 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %wpos116 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %143, i32 0, i32 26
  %144 = load i32, i32* %wpos116, align 4, !tbaa !33
  %cmp117 = icmp slt i32 %144, 0
  br i1 %cmp117, label %if.then.119, label %if.end.252

if.then.119:                                      ; preds = %if.end.115
  br label %ck_eol

ck_eol:                                           ; preds = %if.then.119, %if.then.74
  br label %while.cond

while.cond:                                       ; preds = %if.end.236, %ck_eol
  %145 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %146 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call120 = call i32 @cf_decode_eol(%struct.stream_CFD_state_s* %145, %struct.stream_cursor_read_s* %146) #5
  store i32 %call120, i32* %status, align 4, !tbaa !10
  %cmp121 = icmp sgt i32 %call120, 0
  br i1 %cmp121, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.123

do.body.123:                                      ; preds = %while.body
  br label %do.cond.124

do.cond.124:                                      ; preds = %do.body.123
  br label %do.end.125

do.end.125:                                       ; preds = %do.cond.124
  %147 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K126 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %147, i32 0, i32 9
  %148 = load i32, i32* %K126, align 4, !tbaa !22
  %cmp127 = icmp sgt i32 %148, 0
  br i1 %cmp127, label %if.then.129, label %if.end.227

if.then.129:                                      ; preds = %do.end.125
  %149 = bitcast i8** %p130 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %149) #2
  %150 = bitcast i8** %rlimit131 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %150) #2
  %151 = bitcast i32* %bits132 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #2
  %152 = bitcast i32* %bits_left133 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #2
  %153 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr134 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %153, i32 0, i32 0
  %154 = load i8*, i8** %ptr134, align 8, !tbaa !38
  store i8* %154, i8** %p130, align 8, !tbaa !1
  %155 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit135 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %155, i32 0, i32 1
  %156 = load i8*, i8** %limit135, align 8, !tbaa !40
  store i8* %156, i8** %rlimit131, align 8, !tbaa !1
  %157 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits136 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %157, i32 0, i32 6
  %158 = load i32, i32* %bits136, align 4, !tbaa !13
  store i32 %158, i32* %bits132, align 4, !tbaa !10
  %159 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits_left137 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %159, i32 0, i32 7
  %160 = load i32, i32* %bits_left137, align 4, !tbaa !14
  store i32 %160, i32* %bits_left133, align 4, !tbaa !10
  br label %do.body.138

do.body.138:                                      ; preds = %if.then.129
  %161 = load i32, i32* %bits_left133, align 4, !tbaa !10
  %cmp139 = icmp sge i32 %161, 1
  br i1 %cmp139, label %if.then.141, label %if.else

if.then.141:                                      ; preds = %do.body.138
  br label %do.body.142

do.body.142:                                      ; preds = %if.then.141
  br label %do.cond.143

do.cond.143:                                      ; preds = %do.body.142
  br label %do.end.144

do.end.144:                                       ; preds = %do.cond.143
  br label %if.end.202

if.else:                                          ; preds = %do.body.138
  %162 = load i8*, i8** %rlimit131, align 8, !tbaa !1
  %163 = load i8*, i8** %p130, align 8, !tbaa !1
  %sub.ptr.lhs.cast145 = ptrtoint i8* %162 to i64
  %sub.ptr.rhs.cast146 = ptrtoint i8* %163 to i64
  %sub.ptr.sub147 = sub i64 %sub.ptr.lhs.cast145, %sub.ptr.rhs.cast146
  %cmp148 = icmp sge i64 %sub.ptr.sub147, 3
  br i1 %cmp148, label %if.then.150, label %if.else.184

if.then.150:                                      ; preds = %if.else
  %164 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %164, i32 0, i32 5
  %165 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !43
  %tobool151 = icmp ne i32 %165, 0
  br i1 %tobool151, label %if.then.152, label %if.else.168

if.then.152:                                      ; preds = %if.then.150
  %166 = load i32, i32* %bits132, align 4, !tbaa !10
  %shl = shl i32 %166, 24
  %167 = load i8*, i8** %p130, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %167, i64 1
  %168 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %idxprom = zext i8 %168 to i64
  %arrayidx153 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom
  %169 = load i8, i8* %arrayidx153, align 1, !tbaa !12
  %conv154 = zext i8 %169 to i32
  %shl155 = shl i32 %conv154, 16
  %add156 = add i32 %shl, %shl155
  %170 = load i8*, i8** %p130, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %170, i64 2
  %171 = load i8, i8* %arrayidx157, align 1, !tbaa !12
  %idxprom158 = zext i8 %171 to i64
  %arrayidx159 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom158
  %172 = load i8, i8* %arrayidx159, align 1, !tbaa !12
  %conv160 = zext i8 %172 to i32
  %shl161 = shl i32 %conv160, 8
  %add162 = add i32 %add156, %shl161
  %173 = load i8*, i8** %p130, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %173, i64 3
  %174 = load i8, i8* %arrayidx163, align 1, !tbaa !12
  %idxprom164 = zext i8 %174 to i64
  %arrayidx165 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom164
  %175 = load i8, i8* %arrayidx165, align 1, !tbaa !12
  %conv166 = zext i8 %175 to i32
  %add167 = add i32 %add162, %conv166
  store i32 %add167, i32* %bits132, align 4, !tbaa !10
  br label %if.end.181

if.else.168:                                      ; preds = %if.then.150
  %176 = load i32, i32* %bits132, align 4, !tbaa !10
  %shl169 = shl i32 %176, 24
  %177 = load i8*, i8** %p130, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i8, i8* %177, i64 1
  %178 = load i8, i8* %arrayidx170, align 1, !tbaa !12
  %conv171 = zext i8 %178 to i32
  %shl172 = shl i32 %conv171, 16
  %add173 = add i32 %shl169, %shl172
  %179 = load i8*, i8** %p130, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i8, i8* %179, i64 2
  %180 = load i8, i8* %arrayidx174, align 1, !tbaa !12
  %conv175 = zext i8 %180 to i32
  %shl176 = shl i32 %conv175, 8
  %add177 = add i32 %add173, %shl176
  %181 = load i8*, i8** %p130, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %181, i64 3
  %182 = load i8, i8* %arrayidx178, align 1, !tbaa !12
  %conv179 = zext i8 %182 to i32
  %add180 = add i32 %add177, %conv179
  store i32 %add180, i32* %bits132, align 4, !tbaa !10
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.168, %if.then.152
  %183 = load i32, i32* %bits_left133, align 4, !tbaa !10
  %add182 = add nsw i32 %183, 24
  store i32 %add182, i32* %bits_left133, align 4, !tbaa !10
  %184 = load i8*, i8** %p130, align 8, !tbaa !1
  %add.ptr183 = getelementptr inbounds i8, i8* %184, i64 3
  store i8* %add.ptr183, i8** %p130, align 8, !tbaa !1
  br label %if.end.201

if.else.184:                                      ; preds = %if.else
  %185 = load i8*, i8** %p130, align 8, !tbaa !1
  %186 = load i8*, i8** %rlimit131, align 8, !tbaa !1
  %cmp185 = icmp ult i8* %185, %186
  br i1 %cmp185, label %if.then.187, label %if.else.199

if.then.187:                                      ; preds = %if.else.184
  %187 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #2
  %188 = load i8*, i8** %p130, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %incdec.ptr, i8** %p130, align 8, !tbaa !1
  %189 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %conv188 = zext i8 %189 to i32
  store i32 %conv188, i32* %c, align 4, !tbaa !10
  %190 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %FirstBitLowOrder189 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %190, i32 0, i32 5
  %191 = load i32, i32* %FirstBitLowOrder189, align 4, !tbaa !43
  %tobool190 = icmp ne i32 %191, 0
  br i1 %tobool190, label %if.then.191, label %if.end.195

if.then.191:                                      ; preds = %if.then.187
  %192 = load i32, i32* %c, align 4, !tbaa !10
  %idxprom192 = sext i32 %192 to i64
  %arrayidx193 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom192
  %193 = load i8, i8* %arrayidx193, align 1, !tbaa !12
  %conv194 = zext i8 %193 to i32
  store i32 %conv194, i32* %c, align 4, !tbaa !10
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.191, %if.then.187
  %194 = load i32, i32* %bits132, align 4, !tbaa !10
  %shl196 = shl i32 %194, 8
  %195 = load i32, i32* %c, align 4, !tbaa !10
  %add197 = add i32 %shl196, %195
  store i32 %add197, i32* %bits132, align 4, !tbaa !10
  %196 = load i32, i32* %bits_left133, align 4, !tbaa !10
  %add198 = add nsw i32 %196, 8
  store i32 %add198, i32* %bits_left133, align 4, !tbaa !10
  %197 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  br label %if.end.200

if.else.199:                                      ; preds = %if.else.184
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.221

if.end.200:                                       ; preds = %if.end.195
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.181
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %do.end.144
  br label %do.cond.203

do.cond.203:                                      ; preds = %if.end.202
  br label %do.end.204

do.end.204:                                       ; preds = %do.cond.203
  %198 = load i32, i32* %bits132, align 4, !tbaa !10
  %199 = load i32, i32* %bits_left133, align 4, !tbaa !10
  %sub205 = sub nsw i32 %199, 1
  %shr206 = lshr i32 %198, %sub205
  %and207 = and i32 %shr206, 1
  %tobool208 = icmp ne i32 %and207, 0
  %cond209 = select i1 %tobool208, i32 0, i32 1
  store i32 %cond209, i32* %k_left, align 4, !tbaa !10
  %200 = load i32, i32* %bits_left133, align 4, !tbaa !10
  %sub210 = sub nsw i32 %200, 1
  store i32 %sub210, i32* %bits_left133, align 4, !tbaa !10
  %201 = load i32, i32* %bits_left133, align 4, !tbaa !10
  %shr211 = ashr i32 %201, 3
  %202 = load i8*, i8** %p130, align 8, !tbaa !1
  %idx.ext212 = sext i32 %shr211 to i64
  %idx.neg213 = sub i64 0, %idx.ext212
  %add.ptr214 = getelementptr inbounds i8, i8* %202, i64 %idx.neg213
  store i8* %add.ptr214, i8** %p130, align 8, !tbaa !1
  %203 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr215 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %203, i32 0, i32 0
  store i8* %add.ptr214, i8** %ptr215, align 8, !tbaa !38
  %204 = load i32, i32* %bits_left133, align 4, !tbaa !10
  %and216 = and i32 %204, -8
  %205 = load i32, i32* %bits132, align 4, !tbaa !10
  %shr217 = lshr i32 %205, %and216
  store i32 %shr217, i32* %bits132, align 4, !tbaa !10
  %206 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits218 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %206, i32 0, i32 6
  store i32 %shr217, i32* %bits218, align 4, !tbaa !13
  %207 = load i32, i32* %bits_left133, align 4, !tbaa !10
  %and219 = and i32 %207, 7
  store i32 %and219, i32* %bits_left133, align 4, !tbaa !10
  %208 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %bits_left220 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %208, i32 0, i32 7
  store i32 %and219, i32* %bits_left220, align 4, !tbaa !14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.221

cleanup.221:                                      ; preds = %if.else.199, %do.end.204
  %209 = bitcast i32* %bits_left133 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #2
  %210 = bitcast i32* %bits132 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #2
  %211 = bitcast i8** %rlimit131 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #2
  %212 = bitcast i8** %p130 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #2
  %cleanup.dest.225 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.225, label %cleanup.304 [
    i32 0, label %cleanup.cont.226
    i32 6, label %out
  ]

cleanup.cont.226:                                 ; preds = %cleanup.221
  br label %if.end.227

if.end.227:                                       ; preds = %cleanup.cont.226, %do.end.125
  %213 = load i32, i32* %eol_count, align 4, !tbaa !10
  %inc228 = add nsw i32 %213, 1
  store i32 %inc228, i32* %eol_count, align 4, !tbaa !10
  %214 = load i32, i32* %eol_count, align 4, !tbaa !10
  %215 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K229 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %215, i32 0, i32 9
  %216 = load i32, i32* %K229, align 4, !tbaa !22
  %cmp230 = icmp slt i32 %216, 0
  %cond232 = select i1 %cmp230, i32 2, i32 6
  %cmp233 = icmp eq i32 %214, %cond232
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %if.end.227
  store i32 -1, i32* %status, align 4, !tbaa !10
  br label %out

if.end.236:                                       ; preds = %if.end.227
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %217 = load i32, i32* %rows_left, align 4, !tbaa !10
  %cmp237 = icmp eq i32 %217, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %while.end
  store i32 -1, i32* %status, align 4, !tbaa !10
  br label %out

if.end.240:                                       ; preds = %while.end
  %218 = load i32, i32* %status, align 4, !tbaa !10
  %cmp241 = icmp eq i32 %218, 0
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.end.240
  br label %out

if.end.244:                                       ; preds = %if.end.240
  %219 = load i32, i32* %eol_count, align 4, !tbaa !10
  switch i32 %219, label %sw.default.250 [
    i32 0, label %sw.bb.245
    i32 1, label %sw.epilog.251
  ]

sw.bb.245:                                        ; preds = %if.end.244
  %220 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %EndOfLine246 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %220, i32 0, i32 10
  %221 = load i32, i32* %EndOfLine246, align 4, !tbaa !42
  %tobool247 = icmp ne i32 %221, 0
  br i1 %tobool247, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %sw.bb.245
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %check

if.end.249:                                       ; preds = %sw.bb.245
  br label %sw.epilog.251

sw.default.250:                                   ; preds = %if.end.244
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %check

sw.epilog.251:                                    ; preds = %if.end.249, %if.end.244
  br label %if.end.252

if.end.252:                                       ; preds = %sw.epilog.251, %if.end.115
  %222 = load i32, i32* %k_left, align 4, !tbaa !10
  %cmp253 = icmp slt i32 %222, 0
  br i1 %cmp253, label %if.then.255, label %if.else.260

if.then.255:                                      ; preds = %if.end.252
  br label %do.body.256

do.body.256:                                      ; preds = %if.then.255
  br label %do.cond.257

do.cond.257:                                      ; preds = %do.body.256
  br label %do.end.258

do.end.258:                                       ; preds = %do.cond.257
  %223 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %224 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call259 = call i32 @cf_decode_2d(%struct.stream_CFD_state_s* %223, %struct.stream_cursor_read_s* %224) #5
  store i32 %call259, i32* %status, align 4, !tbaa !10
  br label %if.end.274

if.else.260:                                      ; preds = %if.end.252
  %225 = load i32, i32* %k_left, align 4, !tbaa !10
  %cmp261 = icmp eq i32 %225, 0
  br i1 %cmp261, label %if.then.263, label %if.else.268

if.then.263:                                      ; preds = %if.else.260
  br label %do.body.264

do.body.264:                                      ; preds = %if.then.263
  br label %do.cond.265

do.cond.265:                                      ; preds = %do.body.264
  br label %do.end.266

do.end.266:                                       ; preds = %do.cond.265
  %226 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %227 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call267 = call i32 @cf_decode_1d(%struct.stream_CFD_state_s* %226, %struct.stream_cursor_read_s* %227) #5
  store i32 %call267, i32* %status, align 4, !tbaa !10
  br label %if.end.273

if.else.268:                                      ; preds = %if.else.260
  br label %do.body.269

do.body.269:                                      ; preds = %if.else.268
  br label %do.cond.270

do.cond.270:                                      ; preds = %do.body.269
  br label %do.end.271

do.end.271:                                       ; preds = %do.cond.270
  %228 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %229 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call272 = call i32 @cf_decode_2d(%struct.stream_CFD_state_s* %228, %struct.stream_cursor_read_s* %229) #5
  store i32 %call272, i32* %status, align 4, !tbaa !10
  br label %if.end.273

if.end.273:                                       ; preds = %do.end.271, %do.end.266
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %do.end.258
  br label %do.body.275

do.body.275:                                      ; preds = %if.end.274
  br label %do.cond.276

do.cond.276:                                      ; preds = %do.body.275
  br label %do.end.277

do.end.277:                                       ; preds = %do.cond.276
  br label %check

check:                                            ; preds = %do.end.277, %sw.default.250, %if.then.248
  %230 = load i32, i32* %status, align 4, !tbaa !10
  switch i32 %230, label %sw.default.298 [
    i32 1, label %sw.bb.278
    i32 -2, label %sw.bb.279
  ]

sw.bb.278:                                        ; preds = %check
  br label %top

sw.bb.279:                                        ; preds = %check
  %231 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %damaged_rows280 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %231, i32 0, i32 30
  %232 = load i32, i32* %damaged_rows280, align 4, !tbaa !25
  %233 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DamagedRowsBeforeError = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %233, i32 0, i32 16
  %234 = load i32, i32* %DamagedRowsBeforeError, align 4, !tbaa !44
  %cmp281 = icmp sge i32 %232, %234
  br i1 %cmp281, label %if.then.289, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.279
  %235 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %EndOfLine283 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %235, i32 0, i32 10
  %236 = load i32, i32* %EndOfLine283, align 4, !tbaa !42
  %tobool284 = icmp ne i32 %236, 0
  br i1 %tobool284, label %land.lhs.true.285, label %if.then.289

land.lhs.true.285:                                ; preds = %lor.lhs.false
  %237 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K286 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %237, i32 0, i32 9
  %238 = load i32, i32* %K286, align 4, !tbaa !22
  %cmp287 = icmp sge i32 %238, 0
  br i1 %cmp287, label %if.end.290, label %if.then.289

if.then.289:                                      ; preds = %land.lhs.true.285, %lor.lhs.false, %sw.bb.279
  br label %sw.epilog.300

if.end.290:                                       ; preds = %land.lhs.true.285
  %239 = load i32, i32* %wstop, align 4, !tbaa !10
  %240 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %wpos291 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %240, i32 0, i32 26
  store i32 %239, i32* %wpos291, align 4, !tbaa !33
  %241 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %Columns292 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %241, i32 0, i32 12
  %242 = load i32, i32* %Columns292, align 4, !tbaa !8
  %sub293 = sub nsw i32 0, %242
  %and294 = and i32 %sub293, 7
  %243 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %cbit295 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %243, i32 0, i32 22
  store i32 %and294, i32* %cbit295, align 4, !tbaa !27
  %244 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %run_color296 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %244, i32 0, i32 29
  store i32 0, i32* %run_color296, align 4, !tbaa !24
  %245 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %skipping_damage297 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %245, i32 0, i32 31
  store i32 1, i32* %skipping_damage297, align 4, !tbaa !26
  br label %top

sw.default.298:                                   ; preds = %check
  %246 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %damaged_rows299 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %246, i32 0, i32 30
  store i32 0, i32* %damaged_rows299, align 4, !tbaa !25
  br label %sw.epilog.300

sw.epilog.300:                                    ; preds = %sw.default.298, %if.then.289
  br label %out

out:                                              ; preds = %sw.epilog.300, %cleanup.221, %cleanup.64, %cleanup, %if.then.243, %if.then.239, %if.then.235
  %247 = load i32, i32* %k_left, align 4, !tbaa !10
  %248 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %k_left301 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %248, i32 0, i32 21
  store i32 %247, i32* %k_left301, align 4, !tbaa !23
  %249 = load i32, i32* %rows_left, align 4, !tbaa !10
  %250 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %rows_left302 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %250, i32 0, i32 23
  store i32 %249, i32* %rows_left302, align 4, !tbaa !31
  %251 = load i32, i32* %eol_count, align 4, !tbaa !10
  %252 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %eol_count303 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %252, i32 0, i32 27
  store i32 %251, i32* %eol_count303, align 4, !tbaa !35
  %253 = load i32, i32* %status, align 4, !tbaa !10
  store i32 %253, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.304

cleanup.304:                                      ; preds = %out, %cleanup.221, %cleanup.64, %cleanup
  %254 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #2
  %255 = bitcast i32* %rows_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #2
  %256 = bitcast i32* %k_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #2
  %257 = bitcast i32* %eol_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #2
  %258 = bitcast i32* %wstop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #2
  %259 = bitcast %struct.stream_CFD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #2
  %260 = load i32, i32* %retval
  ret i32 %260
}

; Function Attrs: nounwind uwtable
define internal void @s_CFD_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_CFD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_CFD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_CFD_state_s*
  store %struct.stream_CFD_state_s* %2, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !15
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !45
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !15
  %8 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %8, i32 0, i32 20
  %9 = load i8*, i8** %lprev, align 8, !tbaa !21
  call void %5(%struct.gs_memory_s* %7, i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #5
  %10 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !15
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object4, align 8, !tbaa !45
  %13 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %13, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !15
  %15 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %15, i32 0, i32 19
  %16 = load i8*, i8** %lbuf, align 8, !tbaa !20
  call void %12(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #5
  %17 = bitcast %struct.stream_CFD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_CFD_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_CFD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_CFD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_CFD_state_s*
  store %struct.stream_CFD_state_s* %2, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %Uncompressed = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %3, i32 0, i32 8
  store i32 0, i32* %Uncompressed, align 4, !tbaa !46
  %4 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %4, i32 0, i32 9
  store i32 0, i32* %K, align 4, !tbaa !22
  %5 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %EndOfLine = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %5, i32 0, i32 10
  store i32 0, i32* %EndOfLine, align 4, !tbaa !42
  %6 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %EncodedByteAlign = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %6, i32 0, i32 11
  store i32 0, i32* %EncodedByteAlign, align 4, !tbaa !41
  %7 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %7, i32 0, i32 12
  store i32 1728, i32* %Columns, align 4, !tbaa !8
  %8 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %Rows = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %8, i32 0, i32 13
  store i32 0, i32* %Rows, align 4, !tbaa !29
  %9 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %EndOfBlock = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %9, i32 0, i32 14
  store i32 1, i32* %EndOfBlock, align 4, !tbaa !30
  %10 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %10, i32 0, i32 15
  store i32 0, i32* %BlackIs1, align 4, !tbaa !11
  %11 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DamagedRowsBeforeError = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %11, i32 0, i32 16
  store i32 0, i32* %DamagedRowsBeforeError, align 4, !tbaa !44
  %12 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %12, i32 0, i32 5
  store i32 0, i32* %FirstBitLowOrder, align 4, !tbaa !43
  %13 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %DecodedByteAlign = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %13, i32 0, i32 17
  store i32 1, i32* %DecodedByteAlign, align 4, !tbaa !5
  %14 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %14, i32 0, i32 19
  store i8* null, i8** %lbuf, align 8, !tbaa !20
  %15 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %15, i32 0, i32 20
  store i8* null, i8** %lprev, align 8, !tbaa !21
  %16 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss, align 8, !tbaa !1
  %error_string = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %16, i32 0, i32 4
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %error_string, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !12
  %17 = bitcast %struct.stream_CFD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
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

; Function Attrs: nounwind uwtable
define internal i32 @cf_decode_eol(%struct.stream_CFD_state_s* %ss, %struct.stream_cursor_read_s* %pr) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_CFD_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %zeros = alloca i32, align 4
  %look_ahead = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c120 = alloca i32, align 4
  store %struct.stream_CFD_state_s* %ss, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %zeros to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %look_ahead to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8, !tbaa !38
  store i8* %7, i8** %p, align 8, !tbaa !1
  %8 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %limit, align 8, !tbaa !40
  store i8* %9, i8** %rlimit, align 8, !tbaa !1
  %10 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %10, i32 0, i32 6
  %11 = load i32, i32* %bits1, align 4, !tbaa !13
  store i32 %11, i32* %bits, align 4, !tbaa !10
  %12 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left2 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %12, i32 0, i32 7
  %13 = load i32, i32* %bits_left2, align 4, !tbaa !14
  store i32 %13, i32* %bits_left, align 4, !tbaa !10
  store i32 0, i32* %zeros, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %zeros, align 4, !tbaa !10
  %cmp = icmp slt i32 %14, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %15 = load i32, i32* %bits_left, align 4, !tbaa !10
  %cmp3 = icmp sge i32 %15, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.53

if.else:                                          ; preds = %do.body
  %16 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp sge i64 %sub.ptr.sub, 3
  br i1 %cmp5, label %if.then.6, label %if.else.35

if.then.6:                                        ; preds = %if.else
  %18 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %18, i32 0, i32 5
  %19 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !43
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.7, label %if.else.21

if.then.7:                                        ; preds = %if.then.6
  %20 = load i32, i32* %bits, align 4, !tbaa !10
  %shl = shl i32 %20, 24
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %idxprom = zext i8 %22 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx8, align 1, !tbaa !12
  %conv = zext i8 %23 to i32
  %shl9 = shl i32 %conv, 16
  %add = add i32 %shl, %shl9
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx10, align 1, !tbaa !12
  %idxprom11 = zext i8 %25 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom11
  %26 = load i8, i8* %arrayidx12, align 1, !tbaa !12
  %conv13 = zext i8 %26 to i32
  %shl14 = shl i32 %conv13, 8
  %add15 = add i32 %add, %shl14
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8, i8* %arrayidx16, align 1, !tbaa !12
  %idxprom17 = zext i8 %28 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom17
  %29 = load i8, i8* %arrayidx18, align 1, !tbaa !12
  %conv19 = zext i8 %29 to i32
  %add20 = add i32 %add15, %conv19
  store i32 %add20, i32* %bits, align 4, !tbaa !10
  br label %if.end

if.else.21:                                       ; preds = %if.then.6
  %30 = load i32, i32* %bits, align 4, !tbaa !10
  %shl22 = shl i32 %30, 24
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx23, align 1, !tbaa !12
  %conv24 = zext i8 %32 to i32
  %shl25 = shl i32 %conv24, 16
  %add26 = add i32 %shl22, %shl25
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx27, align 1, !tbaa !12
  %conv28 = zext i8 %34 to i32
  %shl29 = shl i32 %conv28, 8
  %add30 = add i32 %add26, %shl29
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load i8, i8* %arrayidx31, align 1, !tbaa !12
  %conv32 = zext i8 %36 to i32
  %add33 = add i32 %add30, %conv32
  store i32 %add33, i32* %bits, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.7
  %37 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add34 = add nsw i32 %37, 24
  store i32 %add34, i32* %bits_left, align 4, !tbaa !10
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 3
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.52

if.else.35:                                       ; preds = %if.else
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp36 = icmp ult i8* %39, %40
  br i1 %cmp36, label %if.then.38, label %if.else.50

if.then.38:                                       ; preds = %if.else.35
  %41 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %43 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %conv39 = zext i8 %43 to i32
  store i32 %conv39, i32* %c, align 4, !tbaa !10
  %44 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder40 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %44, i32 0, i32 5
  %45 = load i32, i32* %FirstBitLowOrder40, align 4, !tbaa !43
  %tobool41 = icmp ne i32 %45, 0
  br i1 %tobool41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.then.38
  %46 = load i32, i32* %c, align 4, !tbaa !10
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom43
  %47 = load i8, i8* %arrayidx44, align 1, !tbaa !12
  %conv45 = zext i8 %47 to i32
  store i32 %conv45, i32* %c, align 4, !tbaa !10
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.then.38
  %48 = load i32, i32* %bits, align 4, !tbaa !10
  %shl47 = shl i32 %48, 8
  %49 = load i32, i32* %c, align 4, !tbaa !10
  %add48 = add i32 %shl47, %49
  store i32 %add48, i32* %bits, align 4, !tbaa !10
  %50 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add49 = add nsw i32 %50, 8
  store i32 %add49, i32* %bits_left, align 4, !tbaa !10
  %51 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  br label %if.end.51

if.else.50:                                       ; preds = %if.else.35
  br label %out

if.end.51:                                        ; preds = %if.end.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %do.end
  br label %do.cond.54

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  %52 = load i32, i32* %bits, align 4, !tbaa !10
  %53 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub = sub nsw i32 %53, 1
  %shr = lshr i32 %52, %sub
  %and = and i32 %shr, 1
  %tobool56 = icmp ne i32 %and, 0
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %do.end.55
  %54 = load i32, i32* %zeros, align 4, !tbaa !10
  %add58 = add nsw i32 %54, 1
  %sub59 = sub nsw i32 0, %add58
  store i32 %sub59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %do.end.55
  %55 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub61 = sub nsw i32 %55, 1
  store i32 %sub61, i32* %bits_left, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %56 = load i32, i32* %zeros, align 4, !tbaa !10
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %zeros, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %K = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %57, i32 0, i32 9
  %58 = load i32, i32* %K, align 4, !tbaa !22
  %cmp62 = icmp sgt i32 %58, 0
  %cond = select i1 %cmp62, i32 2, i32 1
  store i32 %cond, i32* %look_ahead, align 4, !tbaa !10
  br label %for.cond.64

for.cond.64:                                      ; preds = %if.end.144, %for.end
  br label %do.body.65

do.body.65:                                       ; preds = %for.cond.64
  %59 = load i32, i32* %bits_left, align 4, !tbaa !10
  %60 = load i32, i32* %look_ahead, align 4, !tbaa !10
  %cmp66 = icmp sge i32 %59, %60
  br i1 %cmp66, label %if.then.68, label %if.else.72

if.then.68:                                       ; preds = %do.body.65
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %if.end.136

if.else.72:                                       ; preds = %do.body.65
  %61 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast73 = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %62 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  %cmp76 = icmp sge i64 %sub.ptr.sub75, 3
  br i1 %cmp76, label %if.then.78, label %if.else.116

if.then.78:                                       ; preds = %if.else.72
  %63 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder79 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %63, i32 0, i32 5
  %64 = load i32, i32* %FirstBitLowOrder79, align 4, !tbaa !43
  %tobool80 = icmp ne i32 %64, 0
  br i1 %tobool80, label %if.then.81, label %if.else.100

if.then.81:                                       ; preds = %if.then.78
  %65 = load i32, i32* %bits, align 4, !tbaa !10
  %shl82 = shl i32 %65, 24
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx83, align 1, !tbaa !12
  %idxprom84 = zext i8 %67 to i64
  %arrayidx85 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom84
  %68 = load i8, i8* %arrayidx85, align 1, !tbaa !12
  %conv86 = zext i8 %68 to i32
  %shl87 = shl i32 %conv86, 16
  %add88 = add i32 %shl82, %shl87
  %69 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %69, i64 2
  %70 = load i8, i8* %arrayidx89, align 1, !tbaa !12
  %idxprom90 = zext i8 %70 to i64
  %arrayidx91 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom90
  %71 = load i8, i8* %arrayidx91, align 1, !tbaa !12
  %conv92 = zext i8 %71 to i32
  %shl93 = shl i32 %conv92, 8
  %add94 = add i32 %add88, %shl93
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %72, i64 3
  %73 = load i8, i8* %arrayidx95, align 1, !tbaa !12
  %idxprom96 = zext i8 %73 to i64
  %arrayidx97 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom96
  %74 = load i8, i8* %arrayidx97, align 1, !tbaa !12
  %conv98 = zext i8 %74 to i32
  %add99 = add i32 %add94, %conv98
  store i32 %add99, i32* %bits, align 4, !tbaa !10
  br label %if.end.113

if.else.100:                                      ; preds = %if.then.78
  %75 = load i32, i32* %bits, align 4, !tbaa !10
  %shl101 = shl i32 %75, 24
  %76 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %76, i64 1
  %77 = load i8, i8* %arrayidx102, align 1, !tbaa !12
  %conv103 = zext i8 %77 to i32
  %shl104 = shl i32 %conv103, 16
  %add105 = add i32 %shl101, %shl104
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %78, i64 2
  %79 = load i8, i8* %arrayidx106, align 1, !tbaa !12
  %conv107 = zext i8 %79 to i32
  %shl108 = shl i32 %conv107, 8
  %add109 = add i32 %add105, %shl108
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %80, i64 3
  %81 = load i8, i8* %arrayidx110, align 1, !tbaa !12
  %conv111 = zext i8 %81 to i32
  %add112 = add i32 %add109, %conv111
  store i32 %add112, i32* %bits, align 4, !tbaa !10
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.100, %if.then.81
  %82 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add114 = add nsw i32 %82, 24
  store i32 %add114, i32* %bits_left, align 4, !tbaa !10
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr115 = getelementptr inbounds i8, i8* %83, i64 3
  store i8* %add.ptr115, i8** %p, align 8, !tbaa !1
  br label %if.end.135

if.else.116:                                      ; preds = %if.else.72
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %85 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp117 = icmp ult i8* %84, %85
  br i1 %cmp117, label %if.then.119, label %if.else.133

if.then.119:                                      ; preds = %if.else.116
  %86 = bitcast i32* %c120 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #2
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr121, i8** %p, align 8, !tbaa !1
  %88 = load i8, i8* %incdec.ptr121, align 1, !tbaa !12
  %conv122 = zext i8 %88 to i32
  store i32 %conv122, i32* %c120, align 4, !tbaa !10
  %89 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder123 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %89, i32 0, i32 5
  %90 = load i32, i32* %FirstBitLowOrder123, align 4, !tbaa !43
  %tobool124 = icmp ne i32 %90, 0
  br i1 %tobool124, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %if.then.119
  %91 = load i32, i32* %c120, align 4, !tbaa !10
  %idxprom126 = sext i32 %91 to i64
  %arrayidx127 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom126
  %92 = load i8, i8* %arrayidx127, align 1, !tbaa !12
  %conv128 = zext i8 %92 to i32
  store i32 %conv128, i32* %c120, align 4, !tbaa !10
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %if.then.119
  %93 = load i32, i32* %bits, align 4, !tbaa !10
  %shl130 = shl i32 %93, 8
  %94 = load i32, i32* %c120, align 4, !tbaa !10
  %add131 = add i32 %shl130, %94
  store i32 %add131, i32* %bits, align 4, !tbaa !10
  %95 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add132 = add nsw i32 %95, 8
  store i32 %add132, i32* %bits_left, align 4, !tbaa !10
  %96 = bitcast i32* %c120 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  br label %if.end.134

if.else.133:                                      ; preds = %if.else.116
  br label %back

if.end.134:                                       ; preds = %if.end.129
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.113
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %do.end.71
  br label %do.cond.137

do.cond.137:                                      ; preds = %if.end.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  %97 = load i32, i32* %bits, align 4, !tbaa !10
  %98 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub139 = sub nsw i32 %98, 1
  %shr140 = lshr i32 %97, %sub139
  %and141 = and i32 %shr140, 1
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %do.end.138
  br label %for.end.146

if.end.144:                                       ; preds = %do.end.138
  %99 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub145 = sub nsw i32 %99, 1
  store i32 %sub145, i32* %bits_left, align 4, !tbaa !10
  br label %for.cond.64

for.end.146:                                      ; preds = %if.then.143
  %100 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub147 = sub nsw i32 %100, 1
  store i32 %sub147, i32* %bits_left, align 4, !tbaa !10
  %101 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr148 = ashr i32 %101, 3
  %102 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext = sext i32 %shr148 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr149 = getelementptr inbounds i8, i8* %102, i64 %idx.neg
  store i8* %add.ptr149, i8** %p, align 8, !tbaa !1
  %103 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr150 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %103, i32 0, i32 0
  store i8* %add.ptr149, i8** %ptr150, align 8, !tbaa !38
  %104 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and151 = and i32 %104, -8
  %105 = load i32, i32* %bits, align 4, !tbaa !10
  %shr152 = lshr i32 %105, %and151
  store i32 %shr152, i32* %bits, align 4, !tbaa !10
  %106 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits153 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %106, i32 0, i32 6
  store i32 %shr152, i32* %bits153, align 4, !tbaa !13
  %107 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and154 = and i32 %107, 7
  store i32 %and154, i32* %bits_left, align 4, !tbaa !10
  %108 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left155 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %108, i32 0, i32 7
  store i32 %and154, i32* %bits_left155, align 4, !tbaa !14
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

back:                                             ; preds = %if.else.133
  %109 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shl156 = shl i32 1, %109
  %sub157 = sub nsw i32 %shl156, 1
  %110 = load i32, i32* %bits, align 4, !tbaa !10
  %and158 = and i32 %110, %sub157
  store i32 %and158, i32* %bits, align 4, !tbaa !10
  %111 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add159 = add nsw i32 %111, 11
  store i32 %add159, i32* %bits_left, align 4, !tbaa !10
  %112 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr160 = ashr i32 %112, 3
  %113 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext161 = sext i32 %shr160 to i64
  %idx.neg162 = sub i64 0, %idx.ext161
  %add.ptr163 = getelementptr inbounds i8, i8* %113, i64 %idx.neg162
  store i8* %add.ptr163, i8** %p, align 8, !tbaa !1
  %114 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr164 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %114, i32 0, i32 0
  store i8* %add.ptr163, i8** %ptr164, align 8, !tbaa !38
  %115 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and165 = and i32 %115, -8
  %116 = load i32, i32* %bits, align 4, !tbaa !10
  %shr166 = lshr i32 %116, %and165
  store i32 %shr166, i32* %bits, align 4, !tbaa !10
  %117 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits167 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %117, i32 0, i32 6
  store i32 %shr166, i32* %bits167, align 4, !tbaa !13
  %118 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and168 = and i32 %118, 7
  store i32 %and168, i32* %bits_left, align 4, !tbaa !10
  %119 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left169 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %119, i32 0, i32 7
  store i32 %and168, i32* %bits_left169, align 4, !tbaa !14
  br label %out

out:                                              ; preds = %back, %if.else.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %out, %for.end.146, %if.then.57
  %120 = bitcast i32* %look_ahead to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %zeros to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  %126 = load i32, i32* %retval
  ret i32 %126
}

declare i32 @stream_move(%struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cf_decode_2d(%struct.stream_CFD_state_s* %ss, %struct.stream_cursor_read_s* %pr) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_CFD_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %q = alloca i8*, align 8
  %qbit = alloca i32, align 4
  %invert_white = alloca i8, align 1
  %black_byte = alloca i8, align 1
  %invert = alloca i8, align 1
  %end_count = alloca i32, align 4
  %raster = alloca i32, align 4
  %q0 = alloca i8*, align 8
  %prev_q01 = alloca i8*, align 8
  %endptr = alloca i8*, align 8
  %init_count = alloca i32, align 4
  %count = alloca i32, align 4
  %rlen = alloca i32, align 4
  %status = alloca i32, align 4
  %c = alloca i32, align 4
  %which = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %prev_count = alloca i32, align 4
  %prev_data = alloca i8, align 1
  %dlen = alloca i32, align 4
  %prev_q = alloca i8*, align 8
  %plen = alloca i32, align 4
  store %struct.stream_CFD_state_s* %ss, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  call void @llvm.lifetime.start(i64 1, i8* %invert_white) #2
  %6 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %6, i32 0, i32 15
  %7 = load i32, i32* %BlackIs1, align 4, !tbaa !11
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 0, i32 255
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %invert_white, align 1, !tbaa !12
  call void @llvm.lifetime.start(i64 1, i8* %black_byte) #2
  %8 = load i8, i8* %invert_white, align 1, !tbaa !12
  %conv1 = zext i8 %8 to i32
  %neg = xor i32 %conv1, -1
  %conv2 = trunc i32 %neg to i8
  store i8 %conv2, i8* %black_byte, align 1, !tbaa !12
  call void @llvm.lifetime.start(i64 1, i8* %invert) #2
  %9 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %invert3 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %9, i32 0, i32 28
  %10 = load i8, i8* %invert3, align 1, !tbaa !36
  store i8 %10, i8* %invert, align 1, !tbaa !12
  %11 = bitcast i32* %end_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %12, i32 0, i32 12
  %13 = load i32, i32* %Columns, align 4, !tbaa !8
  %sub = sub nsw i32 0, %13
  %and = and i32 %sub, 7
  store i32 %and, i32* %end_count, align 4, !tbaa !10
  %14 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %raster4 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %15, i32 0, i32 18
  %16 = load i32, i32* %raster4, align 4, !tbaa !9
  store i32 %16, i32* %raster, align 4, !tbaa !10
  %17 = bitcast i8** %q0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %18, i32 0, i32 19
  %19 = load i8*, i8** %lbuf, align 8, !tbaa !20
  store i8* %19, i8** %q0, align 8, !tbaa !1
  %20 = bitcast i8** %prev_q01 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lprev = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %21, i32 0, i32 20
  %22 = load i8*, i8** %lprev, align 8, !tbaa !21
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %add.ptr, i8** %prev_q01, align 8, !tbaa !1
  %23 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load i8*, i8** %q0, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %24, i64 -1
  %25 = load i32, i32* %raster, align 4, !tbaa !10
  %idx.ext = zext i32 %25 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 %idx.ext
  store i8* %add.ptr6, i8** %endptr, align 8, !tbaa !1
  %26 = bitcast i32* %init_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load i32, i32* %raster, align 4, !tbaa !10
  %shl = shl i32 %27, 3
  store i32 %shl, i32* %init_count, align 4, !tbaa !10
  %28 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %31, i32 0, i32 0
  %32 = load i8*, i8** %ptr, align 8, !tbaa !38
  store i8* %32, i8** %p, align 8, !tbaa !1
  %33 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %33, i32 0, i32 1
  %34 = load i8*, i8** %limit, align 8, !tbaa !40
  store i8* %34, i8** %rlimit, align 8, !tbaa !1
  %35 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits7 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %35, i32 0, i32 6
  %36 = load i32, i32* %bits7, align 4, !tbaa !13
  store i32 %36, i32* %bits, align 4, !tbaa !10
  %37 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left8 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %37, i32 0, i32 7
  %38 = load i32, i32* %bits_left8, align 4, !tbaa !14
  store i32 %38, i32* %bits_left, align 4, !tbaa !10
  %39 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf9 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %39, i32 0, i32 19
  %40 = load i8*, i8** %lbuf9, align 8, !tbaa !20
  %41 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %41, i32 0, i32 26
  %42 = load i32, i32* %wpos, align 4, !tbaa !33
  %idx.ext10 = sext i32 %42 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %40, i64 %idx.ext10
  store i8* %add.ptr11, i8** %q, align 8, !tbaa !1
  %43 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %43, i32 0, i32 22
  %44 = load i32, i32* %cbit, align 4, !tbaa !27
  store i32 %44, i32* %qbit, align 4, !tbaa !10
  %45 = load i8*, i8** %endptr, align 8, !tbaa !1
  %46 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl12 = shl i64 %sub.ptr.sub, 3
  %47 = load i32, i32* %qbit, align 4, !tbaa !10
  %conv13 = sext i32 %47 to i64
  %add = add nsw i64 %shl12, %conv13
  %conv14 = trunc i64 %add to i32
  store i32 %conv14, i32* %count, align 4, !tbaa !10
  %48 = load i8*, i8** %endptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %48, i64 1
  store i8 -96, i8* %arrayidx, align 1, !tbaa !12
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %49, i32 0, i32 29
  %50 = load i32, i32* %run_color, align 4, !tbaa !24
  switch i32 %50, label %sw.epilog [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb.16
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %do.end
  %51 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color15 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %51, i32 0, i32 29
  store i32 0, i32* %run_color15, align 4, !tbaa !24
  br label %hww

sw.bb.16:                                         ; preds = %do.end
  %52 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color17 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %52, i32 0, i32 29
  store i32 0, i32* %run_color17, align 4, !tbaa !24
  br label %hbw

sw.bb.18:                                         ; preds = %do.end
  %53 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color19 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %53, i32 0, i32 29
  store i32 0, i32* %run_color19, align 4, !tbaa !24
  br label %hwb

sw.bb.20:                                         ; preds = %do.end
  %54 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color21 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %54, i32 0, i32 29
  store i32 0, i32* %run_color21, align 4, !tbaa !24
  br label %hbb

sw.epilog:                                        ; preds = %do.end
  br label %top

top:                                              ; preds = %if.end.1021, %if.end.877, %if.end.697, %cleanup.cont, %sw.epilog
  %55 = load i32, i32* %count, align 4, !tbaa !10
  %56 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp = icmp sle i32 %55, %56
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %top
  %57 = load i32, i32* %count, align 4, !tbaa !10
  %58 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp23 = icmp slt i32 %57, %58
  %cond25 = select i1 %cmp23, i32 -2, i32 1
  store i32 %cond25, i32* %status, align 4, !tbaa !10
  br label %out

if.end:                                           ; preds = %top
  br label %do.body.26

do.body.26:                                       ; preds = %if.end
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %59 = load i32, i32* %bits_left, align 4, !tbaa !10
  %cmp30 = icmp sge i32 %59, 3
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %do.body.29
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  br label %do.cond.34

do.cond.34:                                       ; preds = %do.body.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  br label %if.end.95

if.else:                                          ; preds = %do.body.29
  %60 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast36 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast37 = ptrtoint i8* %61 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %cmp39 = icmp sge i64 %sub.ptr.sub38, 3
  br i1 %cmp39, label %if.then.41, label %if.else.77

if.then.41:                                       ; preds = %if.else
  %62 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %62, i32 0, i32 5
  %63 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !43
  %tobool42 = icmp ne i32 %63, 0
  br i1 %tobool42, label %if.then.43, label %if.else.61

if.then.43:                                       ; preds = %if.then.41
  %64 = load i32, i32* %bits, align 4, !tbaa !10
  %shl44 = shl i32 %64, 24
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i8, i8* %arrayidx45, align 1, !tbaa !12
  %idxprom = zext i8 %66 to i64
  %arrayidx46 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom
  %67 = load i8, i8* %arrayidx46, align 1, !tbaa !12
  %conv47 = zext i8 %67 to i32
  %shl48 = shl i32 %conv47, 16
  %add49 = add i32 %shl44, %shl48
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %68, i64 2
  %69 = load i8, i8* %arrayidx50, align 1, !tbaa !12
  %idxprom51 = zext i8 %69 to i64
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom51
  %70 = load i8, i8* %arrayidx52, align 1, !tbaa !12
  %conv53 = zext i8 %70 to i32
  %shl54 = shl i32 %conv53, 8
  %add55 = add i32 %add49, %shl54
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %71, i64 3
  %72 = load i8, i8* %arrayidx56, align 1, !tbaa !12
  %idxprom57 = zext i8 %72 to i64
  %arrayidx58 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom57
  %73 = load i8, i8* %arrayidx58, align 1, !tbaa !12
  %conv59 = zext i8 %73 to i32
  %add60 = add i32 %add55, %conv59
  store i32 %add60, i32* %bits, align 4, !tbaa !10
  br label %if.end.74

if.else.61:                                       ; preds = %if.then.41
  %74 = load i32, i32* %bits, align 4, !tbaa !10
  %shl62 = shl i32 %74, 24
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx63, align 1, !tbaa !12
  %conv64 = zext i8 %76 to i32
  %shl65 = shl i32 %conv64, 16
  %add66 = add i32 %shl62, %shl65
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %77, i64 2
  %78 = load i8, i8* %arrayidx67, align 1, !tbaa !12
  %conv68 = zext i8 %78 to i32
  %shl69 = shl i32 %conv68, 8
  %add70 = add i32 %add66, %shl69
  %79 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %79, i64 3
  %80 = load i8, i8* %arrayidx71, align 1, !tbaa !12
  %conv72 = zext i8 %80 to i32
  %add73 = add i32 %add70, %conv72
  store i32 %add73, i32* %bits, align 4, !tbaa !10
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.61, %if.then.43
  %81 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add75 = add nsw i32 %81, 24
  store i32 %add75, i32* %bits_left, align 4, !tbaa !10
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr76 = getelementptr inbounds i8, i8* %82, i64 3
  store i8* %add.ptr76, i8** %p, align 8, !tbaa !1
  br label %if.end.94

if.else.77:                                       ; preds = %if.else
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %84 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp78 = icmp ult i8* %83, %84
  br i1 %cmp78, label %if.then.80, label %if.else.92

if.then.80:                                       ; preds = %if.else.77
  %85 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #2
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %87 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %conv81 = zext i8 %87 to i32
  store i32 %conv81, i32* %c, align 4, !tbaa !10
  %88 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder82 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %88, i32 0, i32 5
  %89 = load i32, i32* %FirstBitLowOrder82, align 4, !tbaa !43
  %tobool83 = icmp ne i32 %89, 0
  br i1 %tobool83, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.then.80
  %90 = load i32, i32* %c, align 4, !tbaa !10
  %idxprom85 = sext i32 %90 to i64
  %arrayidx86 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom85
  %91 = load i8, i8* %arrayidx86, align 1, !tbaa !12
  %conv87 = zext i8 %91 to i32
  store i32 %conv87, i32* %c, align 4, !tbaa !10
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.then.80
  %92 = load i32, i32* %bits, align 4, !tbaa !10
  %shl89 = shl i32 %92, 8
  %93 = load i32, i32* %c, align 4, !tbaa !10
  %add90 = add i32 %shl89, %93
  store i32 %add90, i32* %bits, align 4, !tbaa !10
  %94 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add91 = add nsw i32 %94, 8
  store i32 %add91, i32* %bits_left, align 4, !tbaa !10
  %95 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  br label %if.end.93

if.else.92:                                       ; preds = %if.else.77
  br label %out3

if.end.93:                                        ; preds = %if.end.88
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.74
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %do.end.35
  br label %do.cond.96

do.cond.96:                                       ; preds = %if.end.95
  br label %do.end.97

do.end.97:                                        ; preds = %do.cond.96
  %96 = load i32, i32* %bits, align 4, !tbaa !10
  %97 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub98 = sub nsw i32 %97, 3
  %shr = lshr i32 %96, %sub98
  %and99 = and i32 %shr, 7
  switch i32 %and99, label %sw.default [
    i32 2, label %sw.bb.101
    i32 3, label %sw.bb.103
    i32 1, label %sw.bb.105
    i32 0, label %sw.bb.113
  ]

sw.default:                                       ; preds = %do.end.97
  br label %v0

v0:                                               ; preds = %if.then.705, %sw.default
  %98 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub100 = sub nsw i32 %98, 1
  store i32 %sub100, i32* %bits_left, align 4, !tbaa !10
  store i32 3, i32* %rlen, align 4, !tbaa !10
  br label %sw.epilog.187

sw.bb.101:                                        ; preds = %do.end.97
  %99 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub102 = sub nsw i32 %99, 3
  store i32 %sub102, i32* %bits_left, align 4, !tbaa !10
  store i32 4, i32* %rlen, align 4, !tbaa !10
  br label %sw.epilog.187

sw.bb.103:                                        ; preds = %do.end.97
  %100 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub104 = sub nsw i32 %100, 3
  store i32 %sub104, i32* %bits_left, align 4, !tbaa !10
  store i32 2, i32* %rlen, align 4, !tbaa !10
  br label %sw.epilog.187

sw.bb.105:                                        ; preds = %do.end.97
  %101 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub106 = sub nsw i32 %101, 3
  store i32 %sub106, i32* %bits_left, align 4, !tbaa !10
  %102 = load i8, i8* %invert, align 1, !tbaa !12
  %conv107 = zext i8 %102 to i32
  %103 = load i8, i8* %invert_white, align 1, !tbaa !12
  %conv108 = zext i8 %103 to i32
  %cmp109 = icmp eq i32 %conv107, %conv108
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %sw.bb.105
  br label %hww

if.else.112:                                      ; preds = %sw.bb.105
  br label %hbb

sw.bb.113:                                        ; preds = %do.end.97
  %104 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr114 = ashr i32 %104, 3
  %105 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext115 = sext i32 %shr114 to i64
  %idx.neg = sub i64 0, %idx.ext115
  %add.ptr116 = getelementptr inbounds i8, i8* %105, i64 %idx.neg
  store i8* %add.ptr116, i8** %p, align 8, !tbaa !1
  %106 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr117 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %106, i32 0, i32 0
  store i8* %add.ptr116, i8** %ptr117, align 8, !tbaa !38
  %107 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and118 = and i32 %107, -8
  %108 = load i32, i32* %bits, align 4, !tbaa !10
  %shr119 = lshr i32 %108, %and118
  store i32 %shr119, i32* %bits, align 4, !tbaa !10
  %109 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits120 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %109, i32 0, i32 6
  store i32 %shr119, i32* %bits120, align 4, !tbaa !13
  %110 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and121 = and i32 %110, 7
  store i32 %and121, i32* %bits_left, align 4, !tbaa !10
  %111 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left122 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %111, i32 0, i32 7
  store i32 %and121, i32* %bits_left122, align 4, !tbaa !14
  %112 = load i8*, i8** %q, align 8, !tbaa !1
  %113 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf123 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %113, i32 0, i32 19
  %114 = load i8*, i8** %lbuf123, align 8, !tbaa !20
  %sub.ptr.lhs.cast124 = ptrtoint i8* %112 to i64
  %sub.ptr.rhs.cast125 = ptrtoint i8* %114 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %conv127 = trunc i64 %sub.ptr.sub126 to i32
  %115 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos128 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %115, i32 0, i32 26
  store i32 %conv127, i32* %wpos128, align 4, !tbaa !33
  %116 = load i32, i32* %qbit, align 4, !tbaa !10
  %117 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit129 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %117, i32 0, i32 22
  store i32 %116, i32* %cbit129, align 4, !tbaa !27
  %118 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %119 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call = call i32 @get_run(%struct.stream_CFD_state_s* %118, %struct.stream_cursor_read_s* %119, %struct.hcd_code_s* getelementptr inbounds ([0 x %struct.hcd_code_s], [0 x %struct.hcd_code_s]* @cf_2d_decode, i32 0, i32 0), i32 7, i32 4, i32* %rlen, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 %call, i32* %status, align 4, !tbaa !10
  %120 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr130 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %120, i32 0, i32 0
  %121 = load i8*, i8** %ptr130, align 8, !tbaa !38
  store i8* %121, i8** %p, align 8, !tbaa !1
  %122 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit131 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %122, i32 0, i32 1
  %123 = load i8*, i8** %limit131, align 8, !tbaa !40
  store i8* %123, i8** %rlimit, align 8, !tbaa !1
  %124 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits132 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %124, i32 0, i32 6
  %125 = load i32, i32* %bits132, align 4, !tbaa !13
  store i32 %125, i32* %bits, align 4, !tbaa !10
  %126 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left133 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %126, i32 0, i32 7
  %127 = load i32, i32* %bits_left133, align 4, !tbaa !14
  store i32 %127, i32* %bits_left, align 4, !tbaa !10
  %128 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf134 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %128, i32 0, i32 19
  %129 = load i8*, i8** %lbuf134, align 8, !tbaa !20
  %130 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos135 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %130, i32 0, i32 26
  %131 = load i32, i32* %wpos135, align 4, !tbaa !33
  %idx.ext136 = sext i32 %131 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %129, i64 %idx.ext136
  store i8* %add.ptr137, i8** %q, align 8, !tbaa !1
  %132 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit138 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %132, i32 0, i32 22
  %133 = load i32, i32* %cbit138, align 4, !tbaa !27
  store i32 %133, i32* %qbit, align 4, !tbaa !10
  %134 = load i32, i32* %status, align 4, !tbaa !10
  %cmp139 = icmp slt i32 %134, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %sw.bb.113
  br label %out0

if.end.142:                                       ; preds = %sw.bb.113
  br label %rlen_lt_zero

rlen_lt_zero:                                     ; preds = %if.then.989, %if.then.918, %if.then.845, %if.then.774, %if.end.142
  %135 = load i32, i32* %rlen, align 4, !tbaa !10
  %cmp143 = icmp slt i32 %135, 0
  br i1 %cmp143, label %if.then.145, label %if.end.186

if.then.145:                                      ; preds = %rlen_lt_zero
  %136 = load i32, i32* %rlen, align 4, !tbaa !10
  switch i32 %136, label %sw.default.184 [
    i32 -4, label %sw.epilog.185
    i32 -3, label %sw.bb.146
  ]

sw.bb.146:                                        ; preds = %if.then.145
  %137 = bitcast i32* %which to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #2
  %138 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr147 = ashr i32 %138, 3
  %139 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext148 = sext i32 %shr147 to i64
  %idx.neg149 = sub i64 0, %idx.ext148
  %add.ptr150 = getelementptr inbounds i8, i8* %139, i64 %idx.neg149
  store i8* %add.ptr150, i8** %p, align 8, !tbaa !1
  %140 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr151 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %140, i32 0, i32 0
  store i8* %add.ptr150, i8** %ptr151, align 8, !tbaa !38
  %141 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and152 = and i32 %141, -8
  %142 = load i32, i32* %bits, align 4, !tbaa !10
  %shr153 = lshr i32 %142, %and152
  store i32 %shr153, i32* %bits, align 4, !tbaa !10
  %143 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits154 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %143, i32 0, i32 6
  store i32 %shr153, i32* %bits154, align 4, !tbaa !13
  %144 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and155 = and i32 %144, 7
  store i32 %and155, i32* %bits_left, align 4, !tbaa !10
  %145 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left156 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %145, i32 0, i32 7
  store i32 %and155, i32* %bits_left156, align 4, !tbaa !14
  %146 = load i8*, i8** %q, align 8, !tbaa !1
  %147 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf157 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %147, i32 0, i32 19
  %148 = load i8*, i8** %lbuf157, align 8, !tbaa !20
  %sub.ptr.lhs.cast158 = ptrtoint i8* %146 to i64
  %sub.ptr.rhs.cast159 = ptrtoint i8* %148 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %conv161 = trunc i64 %sub.ptr.sub160 to i32
  %149 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos162 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %149, i32 0, i32 26
  store i32 %conv161, i32* %wpos162, align 4, !tbaa !33
  %150 = load i32, i32* %qbit, align 4, !tbaa !10
  %151 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit163 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %151, i32 0, i32 22
  store i32 %150, i32* %cbit163, align 4, !tbaa !27
  %152 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %153 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call164 = call i32 @cf_decode_uncompressed(%struct.stream_CFD_state_s* %152, %struct.stream_cursor_read_s* %153) #5
  store i32 %call164, i32* %which, align 4, !tbaa !10
  %154 = load i32, i32* %which, align 4, !tbaa !10
  %cmp165 = icmp slt i32 %154, 0
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %sw.bb.146
  %155 = load i32, i32* %which, align 4, !tbaa !10
  store i32 %155, i32* %status, align 4, !tbaa !10
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.168:                                       ; preds = %sw.bb.146
  %156 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr169 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %156, i32 0, i32 0
  %157 = load i8*, i8** %ptr169, align 8, !tbaa !38
  store i8* %157, i8** %p, align 8, !tbaa !1
  %158 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit170 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %158, i32 0, i32 1
  %159 = load i8*, i8** %limit170, align 8, !tbaa !40
  store i8* %159, i8** %rlimit, align 8, !tbaa !1
  %160 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits171 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %160, i32 0, i32 6
  %161 = load i32, i32* %bits171, align 4, !tbaa !13
  store i32 %161, i32* %bits, align 4, !tbaa !10
  %162 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left172 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %162, i32 0, i32 7
  %163 = load i32, i32* %bits_left172, align 4, !tbaa !14
  store i32 %163, i32* %bits_left, align 4, !tbaa !10
  %164 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf173 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %164, i32 0, i32 19
  %165 = load i8*, i8** %lbuf173, align 8, !tbaa !20
  %166 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos174 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %166, i32 0, i32 26
  %167 = load i32, i32* %wpos174, align 4, !tbaa !33
  %idx.ext175 = sext i32 %167 to i64
  %add.ptr176 = getelementptr inbounds i8, i8* %165, i64 %idx.ext175
  store i8* %add.ptr176, i8** %q, align 8, !tbaa !1
  %168 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit177 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %168, i32 0, i32 22
  %169 = load i32, i32* %cbit177, align 4, !tbaa !27
  store i32 %169, i32* %qbit, align 4, !tbaa !10
  %170 = load i32, i32* %which, align 4, !tbaa !10
  %tobool178 = icmp ne i32 %170, 0
  br i1 %tobool178, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.168
  %171 = load i8, i8* %invert_white, align 1, !tbaa !12
  %conv179 = zext i8 %171 to i32
  %neg180 = xor i32 %conv179, -1
  br label %cond.end

cond.false:                                       ; preds = %if.end.168
  %172 = load i8, i8* %invert_white, align 1, !tbaa !12
  %conv181 = zext i8 %172 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond182 = phi i32 [ %neg180, %cond.true ], [ %conv181, %cond.false ]
  %conv183 = trunc i32 %cond182 to i8
  store i8 %conv183, i8* %invert, align 1, !tbaa !12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.167, %cond.end
  %173 = bitcast i32* %which to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1024 [
    i32 0, label %cleanup.cont
    i32 10, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %top

sw.default.184:                                   ; preds = %if.then.145
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %out

sw.epilog.185:                                    ; preds = %if.then.145
  br label %if.end.186

if.end.186:                                       ; preds = %sw.epilog.185, %rlen_lt_zero
  br label %sw.epilog.187

sw.epilog.187:                                    ; preds = %if.end.186, %sw.bb.103, %sw.bb.101, %v0
  %174 = bitcast i32* %prev_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #2
  %175 = load i32, i32* %count, align 4, !tbaa !10
  store i32 %175, i32* %prev_count, align 4, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %prev_data) #2
  %176 = bitcast i32* %dlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #2
  %177 = bitcast i8** %prev_q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #2
  %178 = load i8*, i8** %prev_q01, align 8, !tbaa !1
  %179 = load i8*, i8** %q, align 8, !tbaa !1
  %180 = load i8*, i8** %q0, align 8, !tbaa !1
  %sub.ptr.lhs.cast188 = ptrtoint i8* %179 to i64
  %sub.ptr.rhs.cast189 = ptrtoint i8* %180 to i64
  %sub.ptr.sub190 = sub i64 %sub.ptr.lhs.cast188, %sub.ptr.rhs.cast189
  %add.ptr191 = getelementptr inbounds i8, i8* %178, i64 %sub.ptr.sub190
  store i8* %add.ptr191, i8** %prev_q, align 8, !tbaa !1
  %181 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #2
  %182 = load i32, i32* %count, align 4, !tbaa !10
  %and192 = and i32 %182, 7
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %if.end.196, label %if.then.194

if.then.194:                                      ; preds = %sw.epilog.187
  %183 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %incdec.ptr195 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr195, i8** %prev_q, align 8, !tbaa !1
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %sw.epilog.187
  %184 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %184, i64 -1
  %185 = load i8, i8* %arrayidx197, align 1, !tbaa !12
  %conv198 = zext i8 %185 to i32
  %186 = load i8, i8* %invert, align 1, !tbaa !12
  %conv199 = zext i8 %186 to i32
  %xor = xor i32 %conv198, %conv199
  %conv200 = trunc i32 %xor to i8
  store i8 %conv200, i8* %prev_data, align 1, !tbaa !12
  %187 = load i8, i8* %prev_data, align 1, !tbaa !12
  %conv201 = zext i8 %187 to i32
  %188 = load i32, i32* %prev_count, align 4, !tbaa !10
  %and202 = and i32 %188, 7
  %idxprom203 = sext i32 %and202 to i64
  %arrayidx204 = getelementptr inbounds [8 x i8], [8 x i8]* @cf_decode_2d.count_bit, i32 0, i64 %idxprom203
  %189 = load i8, i8* %arrayidx204, align 1, !tbaa !12
  %conv205 = zext i8 %189 to i32
  %and206 = and i32 %conv201, %conv205
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %land.lhs.true, label %if.end.330

land.lhs.true:                                    ; preds = %if.end.196
  %190 = load i32, i32* %prev_count, align 4, !tbaa !10
  %191 = load i32, i32* %init_count, align 4, !tbaa !10
  %cmp208 = icmp slt i32 %190, %191
  br i1 %cmp208, label %if.then.214, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %192 = load i8, i8* %invert, align 1, !tbaa !12
  %conv210 = zext i8 %192 to i32
  %193 = load i8, i8* %invert_white, align 1, !tbaa !12
  %conv211 = zext i8 %193 to i32
  %cmp212 = icmp ne i32 %conv210, %conv211
  br i1 %cmp212, label %if.then.214, label %if.end.330

if.then.214:                                      ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body.215

do.body.215:                                      ; preds = %if.then.214
  br label %do.cond.216

do.cond.216:                                      ; preds = %do.body.215
  br label %do.end.217

do.end.217:                                       ; preds = %do.cond.216
  br label %do.body.218

do.body.218:                                      ; preds = %do.end.217
  %194 = load i8, i8* %prev_data, align 1, !tbaa !12
  %idxprom219 = zext i8 %194 to i64
  %195 = load i32, i32* %prev_count, align 4, !tbaa !10
  %and220 = and i32 %195, 7
  %idxprom221 = sext i32 %and220 to i64
  %arrayidx222 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom221
  %196 = load i8*, i8** %arrayidx222, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8, i8* %196, i64 %idxprom219
  %197 = load i8, i8* %arrayidx223, align 1, !tbaa !12
  %conv224 = zext i8 %197 to i32
  store i32 %conv224, i32* %plen, align 4, !tbaa !10
  %198 = load i32, i32* %plen, align 4, !tbaa !10
  %cmp225 = icmp sge i32 %198, 8
  br i1 %cmp225, label %if.then.227, label %if.end.319

if.then.227:                                      ; preds = %do.body.218
  %199 = load i8, i8* %invert, align 1, !tbaa !12
  %conv228 = zext i8 %199 to i32
  %cmp229 = icmp eq i32 %conv228, 0
  br i1 %cmp229, label %if.then.231, label %if.else.269

if.then.231:                                      ; preds = %if.then.227
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.231
  %200 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i8, i8* %200, i64 0
  %201 = load i8, i8* %arrayidx232, align 1, !tbaa !12
  %conv233 = zext i8 %201 to i32
  %cmp234 = icmp ne i32 %conv233, 255
  br i1 %cmp234, label %if.then.236, label %if.end.240

if.then.236:                                      ; preds = %for.cond
  %202 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i8, i8* %202, i64 0
  %203 = load i8, i8* %arrayidx237, align 1, !tbaa !12
  store i8 %203, i8* %prev_data, align 1, !tbaa !12
  %204 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr238 = getelementptr inbounds i8, i8* %204, i64 1
  store i8* %add.ptr238, i8** %prev_q, align 8, !tbaa !1
  %205 = load i32, i32* %plen, align 4, !tbaa !10
  %sub239 = sub nsw i32 %205, 8
  store i32 %sub239, i32* %plen, align 4, !tbaa !10
  br label %for.end

if.end.240:                                       ; preds = %for.cond
  %206 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds i8, i8* %206, i64 1
  %207 = load i8, i8* %arrayidx241, align 1, !tbaa !12
  %conv242 = zext i8 %207 to i32
  %cmp243 = icmp ne i32 %conv242, 255
  br i1 %cmp243, label %if.then.245, label %if.end.248

if.then.245:                                      ; preds = %if.end.240
  %208 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %208, i64 1
  %209 = load i8, i8* %arrayidx246, align 1, !tbaa !12
  store i8 %209, i8* %prev_data, align 1, !tbaa !12
  %210 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr247 = getelementptr inbounds i8, i8* %210, i64 2
  store i8* %add.ptr247, i8** %prev_q, align 8, !tbaa !1
  br label %for.end

if.end.248:                                       ; preds = %if.end.240
  %211 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds i8, i8* %211, i64 2
  %212 = load i8, i8* %arrayidx249, align 1, !tbaa !12
  %conv250 = zext i8 %212 to i32
  %cmp251 = icmp ne i32 %conv250, 255
  br i1 %cmp251, label %if.then.253, label %if.end.257

if.then.253:                                      ; preds = %if.end.248
  %213 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i8, i8* %213, i64 2
  %214 = load i8, i8* %arrayidx254, align 1, !tbaa !12
  store i8 %214, i8* %prev_data, align 1, !tbaa !12
  %215 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr255 = getelementptr inbounds i8, i8* %215, i64 3
  store i8* %add.ptr255, i8** %prev_q, align 8, !tbaa !1
  %216 = load i32, i32* %plen, align 4, !tbaa !10
  %add256 = add nsw i32 %216, 8
  store i32 %add256, i32* %plen, align 4, !tbaa !10
  br label %for.end

if.end.257:                                       ; preds = %if.end.248
  %217 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx258 = getelementptr inbounds i8, i8* %217, i64 3
  %218 = load i8, i8* %arrayidx258, align 1, !tbaa !12
  %conv259 = zext i8 %218 to i32
  %cmp260 = icmp ne i32 %conv259, 255
  br i1 %cmp260, label %if.then.262, label %if.end.266

if.then.262:                                      ; preds = %if.end.257
  %219 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx263 = getelementptr inbounds i8, i8* %219, i64 3
  %220 = load i8, i8* %arrayidx263, align 1, !tbaa !12
  store i8 %220, i8* %prev_data, align 1, !tbaa !12
  %221 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr264 = getelementptr inbounds i8, i8* %221, i64 4
  store i8* %add.ptr264, i8** %prev_q, align 8, !tbaa !1
  %222 = load i32, i32* %plen, align 4, !tbaa !10
  %add265 = add nsw i32 %222, 16
  store i32 %add265, i32* %plen, align 4, !tbaa !10
  br label %for.end

if.end.266:                                       ; preds = %if.end.257
  br label %for.inc

for.inc:                                          ; preds = %if.end.266
  %223 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr267 = getelementptr inbounds i8, i8* %223, i64 4
  store i8* %add.ptr267, i8** %prev_q, align 8, !tbaa !1
  %224 = load i32, i32* %plen, align 4, !tbaa !10
  %add268 = add nsw i32 %224, 32
  store i32 %add268, i32* %plen, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %if.then.262, %if.then.253, %if.then.245, %if.then.236
  br label %if.end.314

if.else.269:                                      ; preds = %if.then.227
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.310, %if.else.269
  %225 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i8, i8* %225, i64 0
  %226 = load i8, i8* %arrayidx271, align 1, !tbaa !12
  %tobool272 = icmp ne i8 %226, 0
  br i1 %tobool272, label %if.then.273, label %if.end.280

if.then.273:                                      ; preds = %for.cond.270
  %227 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx274 = getelementptr inbounds i8, i8* %227, i64 0
  %228 = load i8, i8* %arrayidx274, align 1, !tbaa !12
  %conv275 = zext i8 %228 to i32
  %neg276 = xor i32 %conv275, -1
  %conv277 = trunc i32 %neg276 to i8
  store i8 %conv277, i8* %prev_data, align 1, !tbaa !12
  %229 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr278 = getelementptr inbounds i8, i8* %229, i64 1
  store i8* %add.ptr278, i8** %prev_q, align 8, !tbaa !1
  %230 = load i32, i32* %plen, align 4, !tbaa !10
  %sub279 = sub nsw i32 %230, 8
  store i32 %sub279, i32* %plen, align 4, !tbaa !10
  br label %for.end.313

if.end.280:                                       ; preds = %for.cond.270
  %231 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i8, i8* %231, i64 1
  %232 = load i8, i8* %arrayidx281, align 1, !tbaa !12
  %tobool282 = icmp ne i8 %232, 0
  br i1 %tobool282, label %if.then.283, label %if.end.289

if.then.283:                                      ; preds = %if.end.280
  %233 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i8, i8* %233, i64 1
  %234 = load i8, i8* %arrayidx284, align 1, !tbaa !12
  %conv285 = zext i8 %234 to i32
  %neg286 = xor i32 %conv285, -1
  %conv287 = trunc i32 %neg286 to i8
  store i8 %conv287, i8* %prev_data, align 1, !tbaa !12
  %235 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr288 = getelementptr inbounds i8, i8* %235, i64 2
  store i8* %add.ptr288, i8** %prev_q, align 8, !tbaa !1
  br label %for.end.313

if.end.289:                                       ; preds = %if.end.280
  %236 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds i8, i8* %236, i64 2
  %237 = load i8, i8* %arrayidx290, align 1, !tbaa !12
  %tobool291 = icmp ne i8 %237, 0
  br i1 %tobool291, label %if.then.292, label %if.end.299

if.then.292:                                      ; preds = %if.end.289
  %238 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds i8, i8* %238, i64 2
  %239 = load i8, i8* %arrayidx293, align 1, !tbaa !12
  %conv294 = zext i8 %239 to i32
  %neg295 = xor i32 %conv294, -1
  %conv296 = trunc i32 %neg295 to i8
  store i8 %conv296, i8* %prev_data, align 1, !tbaa !12
  %240 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr297 = getelementptr inbounds i8, i8* %240, i64 3
  store i8* %add.ptr297, i8** %prev_q, align 8, !tbaa !1
  %241 = load i32, i32* %plen, align 4, !tbaa !10
  %add298 = add nsw i32 %241, 8
  store i32 %add298, i32* %plen, align 4, !tbaa !10
  br label %for.end.313

if.end.299:                                       ; preds = %if.end.289
  %242 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds i8, i8* %242, i64 3
  %243 = load i8, i8* %arrayidx300, align 1, !tbaa !12
  %tobool301 = icmp ne i8 %243, 0
  br i1 %tobool301, label %if.then.302, label %if.end.309

if.then.302:                                      ; preds = %if.end.299
  %244 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds i8, i8* %244, i64 3
  %245 = load i8, i8* %arrayidx303, align 1, !tbaa !12
  %conv304 = zext i8 %245 to i32
  %neg305 = xor i32 %conv304, -1
  %conv306 = trunc i32 %neg305 to i8
  store i8 %conv306, i8* %prev_data, align 1, !tbaa !12
  %246 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr307 = getelementptr inbounds i8, i8* %246, i64 4
  store i8* %add.ptr307, i8** %prev_q, align 8, !tbaa !1
  %247 = load i32, i32* %plen, align 4, !tbaa !10
  %add308 = add nsw i32 %247, 16
  store i32 %add308, i32* %plen, align 4, !tbaa !10
  br label %for.end.313

if.end.309:                                       ; preds = %if.end.299
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %248 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr311 = getelementptr inbounds i8, i8* %248, i64 4
  store i8* %add.ptr311, i8** %prev_q, align 8, !tbaa !1
  %249 = load i32, i32* %plen, align 4, !tbaa !10
  %add312 = add nsw i32 %249, 32
  store i32 %add312, i32* %plen, align 4, !tbaa !10
  br label %for.cond.270

for.end.313:                                      ; preds = %if.then.302, %if.then.292, %if.then.283, %if.then.273
  br label %if.end.314

if.end.314:                                       ; preds = %for.end.313, %for.end
  %250 = load i8, i8* %prev_data, align 1, !tbaa !12
  %idxprom315 = zext i8 %250 to i64
  %arrayidx316 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom315
  %251 = load i8, i8* %arrayidx316, align 1, !tbaa !12
  %conv317 = zext i8 %251 to i32
  %252 = load i32, i32* %plen, align 4, !tbaa !10
  %add318 = add nsw i32 %252, %conv317
  store i32 %add318, i32* %plen, align 4, !tbaa !10
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.314, %do.body.218
  %253 = load i32, i32* %plen, align 4, !tbaa !10
  %254 = load i32, i32* %prev_count, align 4, !tbaa !10
  %sub320 = sub nsw i32 %254, %253
  store i32 %sub320, i32* %prev_count, align 4, !tbaa !10
  br label %do.cond.321

do.cond.321:                                      ; preds = %if.end.319
  br label %do.end.322

do.end.322:                                       ; preds = %do.cond.321
  %255 = load i32, i32* %prev_count, align 4, !tbaa !10
  %256 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp323 = icmp slt i32 %255, %256
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %do.end.322
  %257 = load i32, i32* %end_count, align 4, !tbaa !10
  store i32 %257, i32* %prev_count, align 4, !tbaa !10
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.325, %do.end.322
  br label %do.body.327

do.body.327:                                      ; preds = %if.end.326
  br label %do.cond.328

do.cond.328:                                      ; preds = %do.body.327
  br label %do.end.329

do.end.329:                                       ; preds = %do.cond.328
  br label %if.end.330

if.end.330:                                       ; preds = %do.end.329, %lor.lhs.false, %if.end.196
  %258 = load i32, i32* %prev_count, align 4, !tbaa !10
  %259 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp331 = icmp ne i32 %258, %259
  br i1 %cmp331, label %if.then.333, label %if.end.515

if.then.333:                                      ; preds = %if.end.330
  br label %do.body.334

do.body.334:                                      ; preds = %if.then.333
  br label %do.cond.335

do.cond.335:                                      ; preds = %do.body.334
  br label %do.end.336

do.end.336:                                       ; preds = %do.cond.335
  br label %do.body.337

do.body.337:                                      ; preds = %do.end.336
  %260 = load i8, i8* %prev_data, align 1, !tbaa !12
  %conv338 = zext i8 %260 to i32
  %xor339 = xor i32 %conv338, 255
  %idxprom340 = sext i32 %xor339 to i64
  %261 = load i32, i32* %prev_count, align 4, !tbaa !10
  %and341 = and i32 %261, 7
  %idxprom342 = sext i32 %and341 to i64
  %arrayidx343 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom342
  %262 = load i8*, i8** %arrayidx343, align 8, !tbaa !1
  %arrayidx344 = getelementptr inbounds i8, i8* %262, i64 %idxprom340
  %263 = load i8, i8* %arrayidx344, align 1, !tbaa !12
  %conv345 = zext i8 %263 to i32
  store i32 %conv345, i32* %plen, align 4, !tbaa !10
  %264 = load i32, i32* %plen, align 4, !tbaa !10
  %cmp346 = icmp sge i32 %264, 8
  br i1 %cmp346, label %if.then.348, label %if.end.504

if.then.348:                                      ; preds = %do.body.337
  %265 = load i8, i8* %invert, align 1, !tbaa !12
  %conv349 = zext i8 %265 to i32
  %cmp350 = icmp eq i32 %conv349, 0
  br i1 %cmp350, label %if.then.352, label %if.else.408

if.then.352:                                      ; preds = %if.then.348
  %266 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx353 = getelementptr inbounds i8, i8* %266, i64 0
  %267 = load i8, i8* %arrayidx353, align 1, !tbaa !12
  %tobool354 = icmp ne i8 %267, 0
  br i1 %tobool354, label %if.then.355, label %if.else.359

if.then.355:                                      ; preds = %if.then.352
  %268 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx356 = getelementptr inbounds i8, i8* %268, i64 0
  %269 = load i8, i8* %arrayidx356, align 1, !tbaa !12
  store i8 %269, i8* %prev_data, align 1, !tbaa !12
  %270 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr357 = getelementptr inbounds i8, i8* %270, i64 1
  store i8* %add.ptr357, i8** %prev_q, align 8, !tbaa !1
  %271 = load i32, i32* %plen, align 4, !tbaa !10
  %sub358 = sub nsw i32 %271, 8
  store i32 %sub358, i32* %plen, align 4, !tbaa !10
  br label %if.end.407

if.else.359:                                      ; preds = %if.then.352
  %272 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx360 = getelementptr inbounds i8, i8* %272, i64 1
  %273 = load i8, i8* %arrayidx360, align 1, !tbaa !12
  %tobool361 = icmp ne i8 %273, 0
  br i1 %tobool361, label %if.then.362, label %if.else.365

if.then.362:                                      ; preds = %if.else.359
  %274 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx363 = getelementptr inbounds i8, i8* %274, i64 1
  %275 = load i8, i8* %arrayidx363, align 1, !tbaa !12
  store i8 %275, i8* %prev_data, align 1, !tbaa !12
  %276 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr364 = getelementptr inbounds i8, i8* %276, i64 2
  store i8* %add.ptr364, i8** %prev_q, align 8, !tbaa !1
  br label %if.end.406

if.else.365:                                      ; preds = %if.else.359
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.365
  %277 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx366 = getelementptr inbounds i8, i8* %277, i64 2
  %278 = load i8, i8* %arrayidx366, align 1, !tbaa !12
  %conv367 = zext i8 %278 to i32
  %279 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx368 = getelementptr inbounds i8, i8* %279, i64 3
  %280 = load i8, i8* %arrayidx368, align 1, !tbaa !12
  %conv369 = zext i8 %280 to i32
  %or = or i32 %conv367, %conv369
  %281 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx370 = getelementptr inbounds i8, i8* %281, i64 4
  %282 = load i8, i8* %arrayidx370, align 1, !tbaa !12
  %conv371 = zext i8 %282 to i32
  %or372 = or i32 %or, %conv371
  %283 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx373 = getelementptr inbounds i8, i8* %283, i64 5
  %284 = load i8, i8* %arrayidx373, align 1, !tbaa !12
  %conv374 = zext i8 %284 to i32
  %or375 = or i32 %or372, %conv374
  %tobool376 = icmp ne i32 %or375, 0
  %lnot = xor i1 %tobool376, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %285 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr377 = getelementptr inbounds i8, i8* %285, i64 4
  store i8* %add.ptr377, i8** %prev_q, align 8, !tbaa !1
  %286 = load i32, i32* %plen, align 4, !tbaa !10
  %add378 = add nsw i32 %286, 32
  store i32 %add378, i32* %plen, align 4, !tbaa !10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %287 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx379 = getelementptr inbounds i8, i8* %287, i64 2
  %288 = load i8, i8* %arrayidx379, align 1, !tbaa !12
  %tobool380 = icmp ne i8 %288, 0
  br i1 %tobool380, label %if.then.381, label %if.else.385

if.then.381:                                      ; preds = %while.end
  %289 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx382 = getelementptr inbounds i8, i8* %289, i64 2
  %290 = load i8, i8* %arrayidx382, align 1, !tbaa !12
  store i8 %290, i8* %prev_data, align 1, !tbaa !12
  %291 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr383 = getelementptr inbounds i8, i8* %291, i64 3
  store i8* %add.ptr383, i8** %prev_q, align 8, !tbaa !1
  %292 = load i32, i32* %plen, align 4, !tbaa !10
  %add384 = add nsw i32 %292, 8
  store i32 %add384, i32* %plen, align 4, !tbaa !10
  br label %if.end.405

if.else.385:                                      ; preds = %while.end
  %293 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx386 = getelementptr inbounds i8, i8* %293, i64 3
  %294 = load i8, i8* %arrayidx386, align 1, !tbaa !12
  %tobool387 = icmp ne i8 %294, 0
  br i1 %tobool387, label %if.then.388, label %if.else.392

if.then.388:                                      ; preds = %if.else.385
  %295 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx389 = getelementptr inbounds i8, i8* %295, i64 3
  %296 = load i8, i8* %arrayidx389, align 1, !tbaa !12
  store i8 %296, i8* %prev_data, align 1, !tbaa !12
  %297 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr390 = getelementptr inbounds i8, i8* %297, i64 4
  store i8* %add.ptr390, i8** %prev_q, align 8, !tbaa !1
  %298 = load i32, i32* %plen, align 4, !tbaa !10
  %add391 = add nsw i32 %298, 16
  store i32 %add391, i32* %plen, align 4, !tbaa !10
  br label %if.end.404

if.else.392:                                      ; preds = %if.else.385
  %299 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx393 = getelementptr inbounds i8, i8* %299, i64 4
  %300 = load i8, i8* %arrayidx393, align 1, !tbaa !12
  %tobool394 = icmp ne i8 %300, 0
  br i1 %tobool394, label %if.then.395, label %if.else.399

if.then.395:                                      ; preds = %if.else.392
  %301 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx396 = getelementptr inbounds i8, i8* %301, i64 4
  %302 = load i8, i8* %arrayidx396, align 1, !tbaa !12
  store i8 %302, i8* %prev_data, align 1, !tbaa !12
  %303 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr397 = getelementptr inbounds i8, i8* %303, i64 5
  store i8* %add.ptr397, i8** %prev_q, align 8, !tbaa !1
  %304 = load i32, i32* %plen, align 4, !tbaa !10
  %add398 = add nsw i32 %304, 24
  store i32 %add398, i32* %plen, align 4, !tbaa !10
  br label %if.end.403

if.else.399:                                      ; preds = %if.else.392
  %305 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx400 = getelementptr inbounds i8, i8* %305, i64 5
  %306 = load i8, i8* %arrayidx400, align 1, !tbaa !12
  store i8 %306, i8* %prev_data, align 1, !tbaa !12
  %307 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr401 = getelementptr inbounds i8, i8* %307, i64 6
  store i8* %add.ptr401, i8** %prev_q, align 8, !tbaa !1
  %308 = load i32, i32* %plen, align 4, !tbaa !10
  %add402 = add nsw i32 %308, 32
  store i32 %add402, i32* %plen, align 4, !tbaa !10
  br label %if.end.403

if.end.403:                                       ; preds = %if.else.399, %if.then.395
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %if.then.388
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %if.then.381
  br label %if.end.406

if.end.406:                                       ; preds = %if.end.405, %if.then.362
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.406, %if.then.355
  br label %if.end.497

if.else.408:                                      ; preds = %if.then.348
  %309 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx409 = getelementptr inbounds i8, i8* %309, i64 0
  %310 = load i8, i8* %arrayidx409, align 1, !tbaa !12
  %conv410 = zext i8 %310 to i32
  %cmp411 = icmp ne i32 %conv410, 255
  br i1 %cmp411, label %if.then.413, label %if.else.420

if.then.413:                                      ; preds = %if.else.408
  %311 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx414 = getelementptr inbounds i8, i8* %311, i64 0
  %312 = load i8, i8* %arrayidx414, align 1, !tbaa !12
  %conv415 = zext i8 %312 to i32
  %neg416 = xor i32 %conv415, -1
  %conv417 = trunc i32 %neg416 to i8
  store i8 %conv417, i8* %prev_data, align 1, !tbaa !12
  %313 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr418 = getelementptr inbounds i8, i8* %313, i64 1
  store i8* %add.ptr418, i8** %prev_q, align 8, !tbaa !1
  %314 = load i32, i32* %plen, align 4, !tbaa !10
  %sub419 = sub nsw i32 %314, 8
  store i32 %sub419, i32* %plen, align 4, !tbaa !10
  br label %if.end.496

if.else.420:                                      ; preds = %if.else.408
  %315 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx421 = getelementptr inbounds i8, i8* %315, i64 1
  %316 = load i8, i8* %arrayidx421, align 1, !tbaa !12
  %conv422 = zext i8 %316 to i32
  %cmp423 = icmp ne i32 %conv422, 255
  br i1 %cmp423, label %if.then.425, label %if.else.431

if.then.425:                                      ; preds = %if.else.420
  %317 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx426 = getelementptr inbounds i8, i8* %317, i64 1
  %318 = load i8, i8* %arrayidx426, align 1, !tbaa !12
  %conv427 = zext i8 %318 to i32
  %neg428 = xor i32 %conv427, -1
  %conv429 = trunc i32 %neg428 to i8
  store i8 %conv429, i8* %prev_data, align 1, !tbaa !12
  %319 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr430 = getelementptr inbounds i8, i8* %319, i64 2
  store i8* %add.ptr430, i8** %prev_q, align 8, !tbaa !1
  br label %if.end.495

if.else.431:                                      ; preds = %if.else.420
  br label %while.cond.432

while.cond.432:                                   ; preds = %while.body.446, %if.else.431
  %320 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx433 = getelementptr inbounds i8, i8* %320, i64 2
  %321 = load i8, i8* %arrayidx433, align 1, !tbaa !12
  %conv434 = zext i8 %321 to i32
  %322 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx435 = getelementptr inbounds i8, i8* %322, i64 3
  %323 = load i8, i8* %arrayidx435, align 1, !tbaa !12
  %conv436 = zext i8 %323 to i32
  %and437 = and i32 %conv434, %conv436
  %324 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx438 = getelementptr inbounds i8, i8* %324, i64 4
  %325 = load i8, i8* %arrayidx438, align 1, !tbaa !12
  %conv439 = zext i8 %325 to i32
  %and440 = and i32 %and437, %conv439
  %326 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx441 = getelementptr inbounds i8, i8* %326, i64 5
  %327 = load i8, i8* %arrayidx441, align 1, !tbaa !12
  %conv442 = zext i8 %327 to i32
  %and443 = and i32 %and440, %conv442
  %cmp444 = icmp eq i32 %and443, 255
  br i1 %cmp444, label %while.body.446, label %while.end.449

while.body.446:                                   ; preds = %while.cond.432
  %328 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr447 = getelementptr inbounds i8, i8* %328, i64 4
  store i8* %add.ptr447, i8** %prev_q, align 8, !tbaa !1
  %329 = load i32, i32* %plen, align 4, !tbaa !10
  %add448 = add nsw i32 %329, 32
  store i32 %add448, i32* %plen, align 4, !tbaa !10
  br label %while.cond.432

while.end.449:                                    ; preds = %while.cond.432
  %330 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx450 = getelementptr inbounds i8, i8* %330, i64 2
  %331 = load i8, i8* %arrayidx450, align 1, !tbaa !12
  %conv451 = zext i8 %331 to i32
  %cmp452 = icmp ne i32 %conv451, 255
  br i1 %cmp452, label %if.then.454, label %if.else.461

if.then.454:                                      ; preds = %while.end.449
  %332 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx455 = getelementptr inbounds i8, i8* %332, i64 2
  %333 = load i8, i8* %arrayidx455, align 1, !tbaa !12
  %conv456 = zext i8 %333 to i32
  %neg457 = xor i32 %conv456, -1
  %conv458 = trunc i32 %neg457 to i8
  store i8 %conv458, i8* %prev_data, align 1, !tbaa !12
  %334 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr459 = getelementptr inbounds i8, i8* %334, i64 3
  store i8* %add.ptr459, i8** %prev_q, align 8, !tbaa !1
  %335 = load i32, i32* %plen, align 4, !tbaa !10
  %add460 = add nsw i32 %335, 8
  store i32 %add460, i32* %plen, align 4, !tbaa !10
  br label %if.end.494

if.else.461:                                      ; preds = %while.end.449
  %336 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx462 = getelementptr inbounds i8, i8* %336, i64 3
  %337 = load i8, i8* %arrayidx462, align 1, !tbaa !12
  %conv463 = zext i8 %337 to i32
  %cmp464 = icmp ne i32 %conv463, 255
  br i1 %cmp464, label %if.then.466, label %if.else.473

if.then.466:                                      ; preds = %if.else.461
  %338 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx467 = getelementptr inbounds i8, i8* %338, i64 3
  %339 = load i8, i8* %arrayidx467, align 1, !tbaa !12
  %conv468 = zext i8 %339 to i32
  %neg469 = xor i32 %conv468, -1
  %conv470 = trunc i32 %neg469 to i8
  store i8 %conv470, i8* %prev_data, align 1, !tbaa !12
  %340 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr471 = getelementptr inbounds i8, i8* %340, i64 4
  store i8* %add.ptr471, i8** %prev_q, align 8, !tbaa !1
  %341 = load i32, i32* %plen, align 4, !tbaa !10
  %add472 = add nsw i32 %341, 16
  store i32 %add472, i32* %plen, align 4, !tbaa !10
  br label %if.end.493

if.else.473:                                      ; preds = %if.else.461
  %342 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx474 = getelementptr inbounds i8, i8* %342, i64 4
  %343 = load i8, i8* %arrayidx474, align 1, !tbaa !12
  %conv475 = zext i8 %343 to i32
  %cmp476 = icmp ne i32 %conv475, 255
  br i1 %cmp476, label %if.then.478, label %if.else.485

if.then.478:                                      ; preds = %if.else.473
  %344 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx479 = getelementptr inbounds i8, i8* %344, i64 4
  %345 = load i8, i8* %arrayidx479, align 1, !tbaa !12
  %conv480 = zext i8 %345 to i32
  %neg481 = xor i32 %conv480, -1
  %conv482 = trunc i32 %neg481 to i8
  store i8 %conv482, i8* %prev_data, align 1, !tbaa !12
  %346 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr483 = getelementptr inbounds i8, i8* %346, i64 5
  store i8* %add.ptr483, i8** %prev_q, align 8, !tbaa !1
  %347 = load i32, i32* %plen, align 4, !tbaa !10
  %add484 = add nsw i32 %347, 24
  store i32 %add484, i32* %plen, align 4, !tbaa !10
  br label %if.end.492

if.else.485:                                      ; preds = %if.else.473
  %348 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx486 = getelementptr inbounds i8, i8* %348, i64 5
  %349 = load i8, i8* %arrayidx486, align 1, !tbaa !12
  %conv487 = zext i8 %349 to i32
  %neg488 = xor i32 %conv487, -1
  %conv489 = trunc i32 %neg488 to i8
  store i8 %conv489, i8* %prev_data, align 1, !tbaa !12
  %350 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr490 = getelementptr inbounds i8, i8* %350, i64 6
  store i8* %add.ptr490, i8** %prev_q, align 8, !tbaa !1
  %351 = load i32, i32* %plen, align 4, !tbaa !10
  %add491 = add nsw i32 %351, 32
  store i32 %add491, i32* %plen, align 4, !tbaa !10
  br label %if.end.492

if.end.492:                                       ; preds = %if.else.485, %if.then.478
  br label %if.end.493

if.end.493:                                       ; preds = %if.end.492, %if.then.466
  br label %if.end.494

if.end.494:                                       ; preds = %if.end.493, %if.then.454
  br label %if.end.495

if.end.495:                                       ; preds = %if.end.494, %if.then.425
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %if.then.413
  br label %if.end.497

if.end.497:                                       ; preds = %if.end.496, %if.end.407
  %352 = load i8, i8* %prev_data, align 1, !tbaa !12
  %conv498 = zext i8 %352 to i32
  %xor499 = xor i32 %conv498, 255
  %idxprom500 = sext i32 %xor499 to i64
  %arrayidx501 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom500
  %353 = load i8, i8* %arrayidx501, align 1, !tbaa !12
  %conv502 = zext i8 %353 to i32
  %354 = load i32, i32* %plen, align 4, !tbaa !10
  %add503 = add nsw i32 %354, %conv502
  store i32 %add503, i32* %plen, align 4, !tbaa !10
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.497, %do.body.337
  %355 = load i32, i32* %plen, align 4, !tbaa !10
  %356 = load i32, i32* %prev_count, align 4, !tbaa !10
  %sub505 = sub nsw i32 %356, %355
  store i32 %sub505, i32* %prev_count, align 4, !tbaa !10
  br label %do.cond.506

do.cond.506:                                      ; preds = %if.end.504
  br label %do.end.507

do.end.507:                                       ; preds = %do.cond.506
  %357 = load i32, i32* %prev_count, align 4, !tbaa !10
  %358 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp508 = icmp slt i32 %357, %358
  br i1 %cmp508, label %if.then.510, label %if.end.511

if.then.510:                                      ; preds = %do.end.507
  %359 = load i32, i32* %end_count, align 4, !tbaa !10
  store i32 %359, i32* %prev_count, align 4, !tbaa !10
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.510, %do.end.507
  br label %do.body.512

do.body.512:                                      ; preds = %if.end.511
  br label %do.cond.513

do.cond.513:                                      ; preds = %do.body.512
  br label %do.end.514

do.end.514:                                       ; preds = %do.cond.513
  br label %if.end.515

if.end.515:                                       ; preds = %do.end.514, %if.end.330
  %360 = load i32, i32* %rlen, align 4, !tbaa !10
  %cmp516 = icmp eq i32 %360, -4
  br i1 %cmp516, label %if.then.518, label %if.else.641

if.then.518:                                      ; preds = %if.end.515
  %361 = load i32, i32* %prev_count, align 4, !tbaa !10
  %362 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp519 = icmp ne i32 %361, %362
  br i1 %cmp519, label %if.then.521, label %if.end.637

if.then.521:                                      ; preds = %if.then.518
  br label %do.body.522

do.body.522:                                      ; preds = %if.then.521
  br label %do.cond.523

do.cond.523:                                      ; preds = %do.body.522
  br label %do.end.524

do.end.524:                                       ; preds = %do.cond.523
  br label %do.body.525

do.body.525:                                      ; preds = %do.end.524
  %363 = load i8, i8* %prev_data, align 1, !tbaa !12
  %idxprom526 = zext i8 %363 to i64
  %364 = load i32, i32* %prev_count, align 4, !tbaa !10
  %and527 = and i32 %364, 7
  %idxprom528 = sext i32 %and527 to i64
  %arrayidx529 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length_neg, i32 0, i64 %idxprom528
  %365 = load i8*, i8** %arrayidx529, align 8, !tbaa !1
  %arrayidx530 = getelementptr inbounds i8, i8* %365, i64 %idxprom526
  %366 = load i8, i8* %arrayidx530, align 1, !tbaa !12
  %conv531 = zext i8 %366 to i32
  store i32 %conv531, i32* %plen, align 4, !tbaa !10
  %367 = load i32, i32* %plen, align 4, !tbaa !10
  %cmp532 = icmp sge i32 %367, 8
  br i1 %cmp532, label %if.then.534, label %if.end.629

if.then.534:                                      ; preds = %do.body.525
  %368 = load i8, i8* %invert, align 1, !tbaa !12
  %conv535 = zext i8 %368 to i32
  %cmp536 = icmp eq i32 %conv535, 0
  br i1 %cmp536, label %if.then.538, label %if.else.579

if.then.538:                                      ; preds = %if.then.534
  br label %for.cond.539

for.cond.539:                                     ; preds = %for.inc.575, %if.then.538
  %369 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx540 = getelementptr inbounds i8, i8* %369, i64 0
  %370 = load i8, i8* %arrayidx540, align 1, !tbaa !12
  %conv541 = zext i8 %370 to i32
  %cmp542 = icmp ne i32 %conv541, 255
  br i1 %cmp542, label %if.then.544, label %if.end.548

if.then.544:                                      ; preds = %for.cond.539
  %371 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx545 = getelementptr inbounds i8, i8* %371, i64 0
  %372 = load i8, i8* %arrayidx545, align 1, !tbaa !12
  store i8 %372, i8* %prev_data, align 1, !tbaa !12
  %373 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr546 = getelementptr inbounds i8, i8* %373, i64 1
  store i8* %add.ptr546, i8** %prev_q, align 8, !tbaa !1
  %374 = load i32, i32* %plen, align 4, !tbaa !10
  %sub547 = sub nsw i32 %374, 8
  store i32 %sub547, i32* %plen, align 4, !tbaa !10
  br label %for.end.578

if.end.548:                                       ; preds = %for.cond.539
  %375 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx549 = getelementptr inbounds i8, i8* %375, i64 1
  %376 = load i8, i8* %arrayidx549, align 1, !tbaa !12
  %conv550 = zext i8 %376 to i32
  %cmp551 = icmp ne i32 %conv550, 255
  br i1 %cmp551, label %if.then.553, label %if.end.556

if.then.553:                                      ; preds = %if.end.548
  %377 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx554 = getelementptr inbounds i8, i8* %377, i64 1
  %378 = load i8, i8* %arrayidx554, align 1, !tbaa !12
  store i8 %378, i8* %prev_data, align 1, !tbaa !12
  %379 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr555 = getelementptr inbounds i8, i8* %379, i64 2
  store i8* %add.ptr555, i8** %prev_q, align 8, !tbaa !1
  br label %for.end.578

if.end.556:                                       ; preds = %if.end.548
  %380 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx557 = getelementptr inbounds i8, i8* %380, i64 2
  %381 = load i8, i8* %arrayidx557, align 1, !tbaa !12
  %conv558 = zext i8 %381 to i32
  %cmp559 = icmp ne i32 %conv558, 255
  br i1 %cmp559, label %if.then.561, label %if.end.565

if.then.561:                                      ; preds = %if.end.556
  %382 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx562 = getelementptr inbounds i8, i8* %382, i64 2
  %383 = load i8, i8* %arrayidx562, align 1, !tbaa !12
  store i8 %383, i8* %prev_data, align 1, !tbaa !12
  %384 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr563 = getelementptr inbounds i8, i8* %384, i64 3
  store i8* %add.ptr563, i8** %prev_q, align 8, !tbaa !1
  %385 = load i32, i32* %plen, align 4, !tbaa !10
  %add564 = add nsw i32 %385, 8
  store i32 %add564, i32* %plen, align 4, !tbaa !10
  br label %for.end.578

if.end.565:                                       ; preds = %if.end.556
  %386 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx566 = getelementptr inbounds i8, i8* %386, i64 3
  %387 = load i8, i8* %arrayidx566, align 1, !tbaa !12
  %conv567 = zext i8 %387 to i32
  %cmp568 = icmp ne i32 %conv567, 255
  br i1 %cmp568, label %if.then.570, label %if.end.574

if.then.570:                                      ; preds = %if.end.565
  %388 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx571 = getelementptr inbounds i8, i8* %388, i64 3
  %389 = load i8, i8* %arrayidx571, align 1, !tbaa !12
  store i8 %389, i8* %prev_data, align 1, !tbaa !12
  %390 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr572 = getelementptr inbounds i8, i8* %390, i64 4
  store i8* %add.ptr572, i8** %prev_q, align 8, !tbaa !1
  %391 = load i32, i32* %plen, align 4, !tbaa !10
  %add573 = add nsw i32 %391, 16
  store i32 %add573, i32* %plen, align 4, !tbaa !10
  br label %for.end.578

if.end.574:                                       ; preds = %if.end.565
  br label %for.inc.575

for.inc.575:                                      ; preds = %if.end.574
  %392 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr576 = getelementptr inbounds i8, i8* %392, i64 4
  store i8* %add.ptr576, i8** %prev_q, align 8, !tbaa !1
  %393 = load i32, i32* %plen, align 4, !tbaa !10
  %add577 = add nsw i32 %393, 32
  store i32 %add577, i32* %plen, align 4, !tbaa !10
  br label %for.cond.539

for.end.578:                                      ; preds = %if.then.570, %if.then.561, %if.then.553, %if.then.544
  br label %if.end.624

if.else.579:                                      ; preds = %if.then.534
  br label %for.cond.580

for.cond.580:                                     ; preds = %for.inc.620, %if.else.579
  %394 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx581 = getelementptr inbounds i8, i8* %394, i64 0
  %395 = load i8, i8* %arrayidx581, align 1, !tbaa !12
  %tobool582 = icmp ne i8 %395, 0
  br i1 %tobool582, label %if.then.583, label %if.end.590

if.then.583:                                      ; preds = %for.cond.580
  %396 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx584 = getelementptr inbounds i8, i8* %396, i64 0
  %397 = load i8, i8* %arrayidx584, align 1, !tbaa !12
  %conv585 = zext i8 %397 to i32
  %neg586 = xor i32 %conv585, -1
  %conv587 = trunc i32 %neg586 to i8
  store i8 %conv587, i8* %prev_data, align 1, !tbaa !12
  %398 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr588 = getelementptr inbounds i8, i8* %398, i64 1
  store i8* %add.ptr588, i8** %prev_q, align 8, !tbaa !1
  %399 = load i32, i32* %plen, align 4, !tbaa !10
  %sub589 = sub nsw i32 %399, 8
  store i32 %sub589, i32* %plen, align 4, !tbaa !10
  br label %for.end.623

if.end.590:                                       ; preds = %for.cond.580
  %400 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx591 = getelementptr inbounds i8, i8* %400, i64 1
  %401 = load i8, i8* %arrayidx591, align 1, !tbaa !12
  %tobool592 = icmp ne i8 %401, 0
  br i1 %tobool592, label %if.then.593, label %if.end.599

if.then.593:                                      ; preds = %if.end.590
  %402 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx594 = getelementptr inbounds i8, i8* %402, i64 1
  %403 = load i8, i8* %arrayidx594, align 1, !tbaa !12
  %conv595 = zext i8 %403 to i32
  %neg596 = xor i32 %conv595, -1
  %conv597 = trunc i32 %neg596 to i8
  store i8 %conv597, i8* %prev_data, align 1, !tbaa !12
  %404 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr598 = getelementptr inbounds i8, i8* %404, i64 2
  store i8* %add.ptr598, i8** %prev_q, align 8, !tbaa !1
  br label %for.end.623

if.end.599:                                       ; preds = %if.end.590
  %405 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds i8, i8* %405, i64 2
  %406 = load i8, i8* %arrayidx600, align 1, !tbaa !12
  %tobool601 = icmp ne i8 %406, 0
  br i1 %tobool601, label %if.then.602, label %if.end.609

if.then.602:                                      ; preds = %if.end.599
  %407 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx603 = getelementptr inbounds i8, i8* %407, i64 2
  %408 = load i8, i8* %arrayidx603, align 1, !tbaa !12
  %conv604 = zext i8 %408 to i32
  %neg605 = xor i32 %conv604, -1
  %conv606 = trunc i32 %neg605 to i8
  store i8 %conv606, i8* %prev_data, align 1, !tbaa !12
  %409 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr607 = getelementptr inbounds i8, i8* %409, i64 3
  store i8* %add.ptr607, i8** %prev_q, align 8, !tbaa !1
  %410 = load i32, i32* %plen, align 4, !tbaa !10
  %add608 = add nsw i32 %410, 8
  store i32 %add608, i32* %plen, align 4, !tbaa !10
  br label %for.end.623

if.end.609:                                       ; preds = %if.end.599
  %411 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx610 = getelementptr inbounds i8, i8* %411, i64 3
  %412 = load i8, i8* %arrayidx610, align 1, !tbaa !12
  %tobool611 = icmp ne i8 %412, 0
  br i1 %tobool611, label %if.then.612, label %if.end.619

if.then.612:                                      ; preds = %if.end.609
  %413 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %arrayidx613 = getelementptr inbounds i8, i8* %413, i64 3
  %414 = load i8, i8* %arrayidx613, align 1, !tbaa !12
  %conv614 = zext i8 %414 to i32
  %neg615 = xor i32 %conv614, -1
  %conv616 = trunc i32 %neg615 to i8
  store i8 %conv616, i8* %prev_data, align 1, !tbaa !12
  %415 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr617 = getelementptr inbounds i8, i8* %415, i64 4
  store i8* %add.ptr617, i8** %prev_q, align 8, !tbaa !1
  %416 = load i32, i32* %plen, align 4, !tbaa !10
  %add618 = add nsw i32 %416, 16
  store i32 %add618, i32* %plen, align 4, !tbaa !10
  br label %for.end.623

if.end.619:                                       ; preds = %if.end.609
  br label %for.inc.620

for.inc.620:                                      ; preds = %if.end.619
  %417 = load i8*, i8** %prev_q, align 8, !tbaa !1
  %add.ptr621 = getelementptr inbounds i8, i8* %417, i64 4
  store i8* %add.ptr621, i8** %prev_q, align 8, !tbaa !1
  %418 = load i32, i32* %plen, align 4, !tbaa !10
  %add622 = add nsw i32 %418, 32
  store i32 %add622, i32* %plen, align 4, !tbaa !10
  br label %for.cond.580

for.end.623:                                      ; preds = %if.then.612, %if.then.602, %if.then.593, %if.then.583
  br label %if.end.624

if.end.624:                                       ; preds = %for.end.623, %for.end.578
  %419 = load i8, i8* %prev_data, align 1, !tbaa !12
  %idxprom625 = zext i8 %419 to i64
  %arrayidx626 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom625
  %420 = load i8, i8* %arrayidx626, align 1, !tbaa !12
  %conv627 = zext i8 %420 to i32
  %421 = load i32, i32* %plen, align 4, !tbaa !10
  %add628 = add nsw i32 %421, %conv627
  store i32 %add628, i32* %plen, align 4, !tbaa !10
  br label %if.end.629

if.end.629:                                       ; preds = %if.end.624, %do.body.525
  %422 = load i32, i32* %plen, align 4, !tbaa !10
  %423 = load i32, i32* %prev_count, align 4, !tbaa !10
  %sub630 = sub nsw i32 %423, %422
  store i32 %sub630, i32* %prev_count, align 4, !tbaa !10
  br label %do.cond.631

do.cond.631:                                      ; preds = %if.end.629
  br label %do.end.632

do.end.632:                                       ; preds = %do.cond.631
  %424 = load i32, i32* %prev_count, align 4, !tbaa !10
  %425 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp633 = icmp slt i32 %424, %425
  br i1 %cmp633, label %if.then.635, label %if.end.636

if.then.635:                                      ; preds = %do.end.632
  %426 = load i32, i32* %end_count, align 4, !tbaa !10
  store i32 %426, i32* %prev_count, align 4, !tbaa !10
  br label %if.end.636

if.end.636:                                       ; preds = %if.then.635, %do.end.632
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.636, %if.then.518
  br label %do.body.638

do.body.638:                                      ; preds = %if.end.637
  br label %do.cond.639

do.cond.639:                                      ; preds = %do.body.638
  br label %do.end.640

do.end.640:                                       ; preds = %do.cond.639
  br label %if.end.650

if.else.641:                                      ; preds = %if.end.515
  %427 = load i32, i32* %rlen, align 4, !tbaa !10
  %conv642 = sext i32 %427 to i64
  %sub643 = sub i64 %conv642, 3
  %428 = load i32, i32* %prev_count, align 4, !tbaa !10
  %conv644 = sext i32 %428 to i64
  %add645 = add i64 %conv644, %sub643
  %conv646 = trunc i64 %add645 to i32
  store i32 %conv646, i32* %prev_count, align 4, !tbaa !10
  br label %do.body.647

do.body.647:                                      ; preds = %if.else.641
  br label %do.cond.648

do.cond.648:                                      ; preds = %do.body.647
  br label %do.end.649

do.end.649:                                       ; preds = %do.cond.648
  br label %if.end.650

if.end.650:                                       ; preds = %do.end.649, %do.end.640
  %429 = load i8, i8* %invert, align 1, !tbaa !12
  %conv651 = zext i8 %429 to i32
  %430 = load i8, i8* %invert_white, align 1, !tbaa !12
  %conv652 = zext i8 %430 to i32
  %cmp653 = icmp eq i32 %conv651, %conv652
  br i1 %cmp653, label %if.then.655, label %if.else.661

if.then.655:                                      ; preds = %if.end.650
  %431 = load i8*, i8** %endptr, align 8, !tbaa !1
  %432 = load i32, i32* %prev_count, align 4, !tbaa !10
  %shr656 = ashr i32 %432, 3
  %idx.ext657 = sext i32 %shr656 to i64
  %idx.neg658 = sub i64 0, %idx.ext657
  %add.ptr659 = getelementptr inbounds i8, i8* %431, i64 %idx.neg658
  store i8* %add.ptr659, i8** %q, align 8, !tbaa !1
  %433 = load i32, i32* %prev_count, align 4, !tbaa !10
  %and660 = and i32 %433, 7
  store i32 %and660, i32* %qbit, align 4, !tbaa !10
  br label %if.end.690

if.else.661:                                      ; preds = %if.end.650
  %434 = load i32, i32* %count, align 4, !tbaa !10
  %435 = load i32, i32* %prev_count, align 4, !tbaa !10
  %sub662 = sub nsw i32 %434, %435
  store i32 %sub662, i32* %dlen, align 4, !tbaa !10
  %436 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr663 = ashr i32 %436, 3
  %437 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext664 = sext i32 %shr663 to i64
  %idx.neg665 = sub i64 0, %idx.ext664
  %add.ptr666 = getelementptr inbounds i8, i8* %437, i64 %idx.neg665
  store i8* %add.ptr666, i8** %p, align 8, !tbaa !1
  %438 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr667 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %438, i32 0, i32 0
  store i8* %add.ptr666, i8** %ptr667, align 8, !tbaa !38
  %439 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and668 = and i32 %439, -8
  %440 = load i32, i32* %bits, align 4, !tbaa !10
  %shr669 = lshr i32 %440, %and668
  store i32 %shr669, i32* %bits, align 4, !tbaa !10
  %441 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits670 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %441, i32 0, i32 6
  store i32 %shr669, i32* %bits670, align 4, !tbaa !13
  %442 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and671 = and i32 %442, 7
  store i32 %and671, i32* %bits_left, align 4, !tbaa !10
  %443 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left672 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %443, i32 0, i32 7
  store i32 %and671, i32* %bits_left672, align 4, !tbaa !14
  %444 = load i8*, i8** %q, align 8, !tbaa !1
  %445 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf673 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %445, i32 0, i32 19
  %446 = load i8*, i8** %lbuf673, align 8, !tbaa !20
  %sub.ptr.lhs.cast674 = ptrtoint i8* %444 to i64
  %sub.ptr.rhs.cast675 = ptrtoint i8* %446 to i64
  %sub.ptr.sub676 = sub i64 %sub.ptr.lhs.cast674, %sub.ptr.rhs.cast675
  %conv677 = trunc i64 %sub.ptr.sub676 to i32
  %447 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos678 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %447, i32 0, i32 26
  store i32 %conv677, i32* %wpos678, align 4, !tbaa !33
  %448 = load i32, i32* %qbit, align 4, !tbaa !10
  %449 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit679 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %449, i32 0, i32 22
  store i32 %448, i32* %cbit679, align 4, !tbaa !27
  %450 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %451 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %452 = load i8, i8* %black_byte, align 1, !tbaa !12
  %call680 = call i32 @invert_data(%struct.stream_CFD_state_s* %450, %struct.stream_cursor_read_s* %451, i32* %dlen, i8 zeroext %452) #5
  %453 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr681 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %453, i32 0, i32 0
  %454 = load i8*, i8** %ptr681, align 8, !tbaa !38
  store i8* %454, i8** %p, align 8, !tbaa !1
  %455 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit682 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %455, i32 0, i32 1
  %456 = load i8*, i8** %limit682, align 8, !tbaa !40
  store i8* %456, i8** %rlimit, align 8, !tbaa !1
  %457 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits683 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %457, i32 0, i32 6
  %458 = load i32, i32* %bits683, align 4, !tbaa !13
  store i32 %458, i32* %bits, align 4, !tbaa !10
  %459 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left684 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %459, i32 0, i32 7
  %460 = load i32, i32* %bits_left684, align 4, !tbaa !14
  store i32 %460, i32* %bits_left, align 4, !tbaa !10
  %461 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf685 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %461, i32 0, i32 19
  %462 = load i8*, i8** %lbuf685, align 8, !tbaa !20
  %463 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos686 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %463, i32 0, i32 26
  %464 = load i32, i32* %wpos686, align 4, !tbaa !33
  %idx.ext687 = sext i32 %464 to i64
  %add.ptr688 = getelementptr inbounds i8, i8* %462, i64 %idx.ext687
  store i8* %add.ptr688, i8** %q, align 8, !tbaa !1
  %465 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit689 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %465, i32 0, i32 22
  %466 = load i32, i32* %cbit689, align 4, !tbaa !27
  store i32 %466, i32* %qbit, align 4, !tbaa !10
  br label %if.end.690

if.end.690:                                       ; preds = %if.else.661, %if.then.655
  %467 = load i32, i32* %prev_count, align 4, !tbaa !10
  store i32 %467, i32* %count, align 4, !tbaa !10
  %468 = load i32, i32* %rlen, align 4, !tbaa !10
  %cmp691 = icmp sge i32 %468, 0
  br i1 %cmp691, label %if.then.693, label %if.end.697

if.then.693:                                      ; preds = %if.end.690
  %469 = load i8, i8* %invert, align 1, !tbaa !12
  %conv694 = zext i8 %469 to i32
  %neg695 = xor i32 %conv694, -1
  %conv696 = trunc i32 %neg695 to i8
  store i8 %conv696, i8* %invert, align 1, !tbaa !12
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.693, %if.end.690
  %470 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %470) #2
  %471 = bitcast i8** %prev_q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %471) #2
  %472 = bitcast i32* %dlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #2
  call void @llvm.lifetime.end(i64 1, i8* %prev_data) #2
  %473 = bitcast i32* %prev_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #2
  br label %top

out3:                                             ; preds = %if.else.92
  %474 = load i32, i32* %bits_left, align 4, !tbaa !10
  %cmp698 = icmp sgt i32 %474, 0
  br i1 %cmp698, label %land.lhs.true.700, label %if.end.706

land.lhs.true.700:                                ; preds = %out3
  %475 = load i32, i32* %bits, align 4, !tbaa !10
  %476 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub701 = sub nsw i32 %476, 1
  %shr702 = lshr i32 %475, %sub701
  %and703 = and i32 %shr702, 1
  %tobool704 = icmp ne i32 %and703, 0
  br i1 %tobool704, label %if.then.705, label %if.end.706

if.then.705:                                      ; preds = %land.lhs.true.700
  br label %v0

if.end.706:                                       ; preds = %land.lhs.true.700, %out3
  br label %out0

out0:                                             ; preds = %outbw, %outbb, %outwb, %outww, %if.end.706, %if.then.141
  store i32 0, i32* %status, align 4, !tbaa !10
  br label %out

out:                                              ; preds = %if.then.985, %if.then.914, %if.then.841, %if.then.770, %out0, %cleanup, %sw.default.184, %if.then
  %477 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr707 = ashr i32 %477, 3
  %478 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext708 = sext i32 %shr707 to i64
  %idx.neg709 = sub i64 0, %idx.ext708
  %add.ptr710 = getelementptr inbounds i8, i8* %478, i64 %idx.neg709
  store i8* %add.ptr710, i8** %p, align 8, !tbaa !1
  %479 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr711 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %479, i32 0, i32 0
  store i8* %add.ptr710, i8** %ptr711, align 8, !tbaa !38
  %480 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and712 = and i32 %480, -8
  %481 = load i32, i32* %bits, align 4, !tbaa !10
  %shr713 = lshr i32 %481, %and712
  store i32 %shr713, i32* %bits, align 4, !tbaa !10
  %482 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits714 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %482, i32 0, i32 6
  store i32 %shr713, i32* %bits714, align 4, !tbaa !13
  %483 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and715 = and i32 %483, 7
  store i32 %and715, i32* %bits_left, align 4, !tbaa !10
  %484 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left716 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %484, i32 0, i32 7
  store i32 %and715, i32* %bits_left716, align 4, !tbaa !14
  %485 = load i8*, i8** %q, align 8, !tbaa !1
  %486 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf717 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %486, i32 0, i32 19
  %487 = load i8*, i8** %lbuf717, align 8, !tbaa !20
  %sub.ptr.lhs.cast718 = ptrtoint i8* %485 to i64
  %sub.ptr.rhs.cast719 = ptrtoint i8* %487 to i64
  %sub.ptr.sub720 = sub i64 %sub.ptr.lhs.cast718, %sub.ptr.rhs.cast719
  %conv721 = trunc i64 %sub.ptr.sub720 to i32
  %488 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos722 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %488, i32 0, i32 26
  store i32 %conv721, i32* %wpos722, align 4, !tbaa !33
  %489 = load i32, i32* %qbit, align 4, !tbaa !10
  %490 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit723 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %490, i32 0, i32 22
  store i32 %489, i32* %cbit723, align 4, !tbaa !27
  %491 = load i8, i8* %invert, align 1, !tbaa !12
  %492 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %invert724 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %492, i32 0, i32 28
  store i8 %491, i8* %invert724, align 1, !tbaa !36
  %493 = load i32, i32* %status, align 4, !tbaa !10
  %cmp725 = icmp eq i32 %493, -2
  br i1 %cmp725, label %land.lhs.true.727, label %if.end.735

land.lhs.true.727:                                ; preds = %out
  %494 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %Rows = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %494, i32 0, i32 13
  %495 = load i32, i32* %Rows, align 4, !tbaa !29
  %cmp728 = icmp sgt i32 %495, 0
  br i1 %cmp728, label %land.lhs.true.730, label %if.end.735

land.lhs.true.730:                                ; preds = %land.lhs.true.727
  %496 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %row = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %496, i32 0, i32 24
  %497 = load i32, i32* %row, align 4, !tbaa !32
  %498 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %Rows731 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %498, i32 0, i32 13
  %499 = load i32, i32* %Rows731, align 4, !tbaa !29
  %cmp732 = icmp sgt i32 %497, %499
  br i1 %cmp732, label %if.then.734, label %if.end.735

if.then.734:                                      ; preds = %land.lhs.true.730
  store i32 -1, i32* %status, align 4, !tbaa !10
  br label %if.end.735

if.end.735:                                       ; preds = %if.then.734, %land.lhs.true.730, %land.lhs.true.727, %out
  %500 = load i32, i32* %status, align 4, !tbaa !10
  store i32 %500, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1024

hww:                                              ; preds = %if.then.805, %if.then.111, %sw.bb
  %501 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr736 = ashr i32 %501, 3
  %502 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext737 = sext i32 %shr736 to i64
  %idx.neg738 = sub i64 0, %idx.ext737
  %add.ptr739 = getelementptr inbounds i8, i8* %502, i64 %idx.neg738
  store i8* %add.ptr739, i8** %p, align 8, !tbaa !1
  %503 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr740 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %503, i32 0, i32 0
  store i8* %add.ptr739, i8** %ptr740, align 8, !tbaa !38
  %504 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and741 = and i32 %504, -8
  %505 = load i32, i32* %bits, align 4, !tbaa !10
  %shr742 = lshr i32 %505, %and741
  store i32 %shr742, i32* %bits, align 4, !tbaa !10
  %506 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits743 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %506, i32 0, i32 6
  store i32 %shr742, i32* %bits743, align 4, !tbaa !13
  %507 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and744 = and i32 %507, 7
  store i32 %and744, i32* %bits_left, align 4, !tbaa !10
  %508 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left745 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %508, i32 0, i32 7
  store i32 %and744, i32* %bits_left745, align 4, !tbaa !14
  %509 = load i8*, i8** %q, align 8, !tbaa !1
  %510 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf746 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %510, i32 0, i32 19
  %511 = load i8*, i8** %lbuf746, align 8, !tbaa !20
  %sub.ptr.lhs.cast747 = ptrtoint i8* %509 to i64
  %sub.ptr.rhs.cast748 = ptrtoint i8* %511 to i64
  %sub.ptr.sub749 = sub i64 %sub.ptr.lhs.cast747, %sub.ptr.rhs.cast748
  %conv750 = trunc i64 %sub.ptr.sub749 to i32
  %512 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos751 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %512, i32 0, i32 26
  store i32 %conv750, i32* %wpos751, align 4, !tbaa !33
  %513 = load i32, i32* %qbit, align 4, !tbaa !10
  %514 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit752 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %514, i32 0, i32 22
  store i32 %513, i32* %cbit752, align 4, !tbaa !27
  %515 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %516 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call753 = call i32 @get_run(%struct.stream_CFD_state_s* %515, %struct.stream_cursor_read_s* %516, %struct.hcd_code_s* getelementptr inbounds ([0 x %struct.hcd_code_s], [0 x %struct.hcd_code_s]* @cf_white_decode, i32 0, i32 0), i32 8, i32 4, i32* %rlen, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 %call753, i32* %status, align 4, !tbaa !10
  %517 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr754 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %517, i32 0, i32 0
  %518 = load i8*, i8** %ptr754, align 8, !tbaa !38
  store i8* %518, i8** %p, align 8, !tbaa !1
  %519 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit755 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %519, i32 0, i32 1
  %520 = load i8*, i8** %limit755, align 8, !tbaa !40
  store i8* %520, i8** %rlimit, align 8, !tbaa !1
  %521 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits756 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %521, i32 0, i32 6
  %522 = load i32, i32* %bits756, align 4, !tbaa !13
  store i32 %522, i32* %bits, align 4, !tbaa !10
  %523 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left757 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %523, i32 0, i32 7
  %524 = load i32, i32* %bits_left757, align 4, !tbaa !14
  store i32 %524, i32* %bits_left, align 4, !tbaa !10
  %525 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf758 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %525, i32 0, i32 19
  %526 = load i8*, i8** %lbuf758, align 8, !tbaa !20
  %527 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos759 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %527, i32 0, i32 26
  %528 = load i32, i32* %wpos759, align 4, !tbaa !33
  %idx.ext760 = sext i32 %528 to i64
  %add.ptr761 = getelementptr inbounds i8, i8* %526, i64 %idx.ext760
  store i8* %add.ptr761, i8** %q, align 8, !tbaa !1
  %529 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit762 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %529, i32 0, i32 22
  %530 = load i32, i32* %cbit762, align 4, !tbaa !27
  store i32 %530, i32* %qbit, align 4, !tbaa !10
  %531 = load i32, i32* %status, align 4, !tbaa !10
  %cmp763 = icmp slt i32 %531, 0
  br i1 %cmp763, label %if.then.765, label %if.end.766

if.then.765:                                      ; preds = %hww
  br label %outww

if.end.766:                                       ; preds = %hww
  %532 = load i32, i32* %rlen, align 4, !tbaa !10
  %533 = load i32, i32* %count, align 4, !tbaa !10
  %sub767 = sub nsw i32 %533, %532
  store i32 %sub767, i32* %count, align 4, !tbaa !10
  %534 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp768 = icmp slt i32 %sub767, %534
  br i1 %cmp768, label %if.then.770, label %if.end.771

if.then.770:                                      ; preds = %if.end.766
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %out

if.end.771:                                       ; preds = %if.end.766
  %535 = load i32, i32* %rlen, align 4, !tbaa !10
  %cmp772 = icmp slt i32 %535, 0
  br i1 %cmp772, label %if.then.774, label %if.end.775

if.then.774:                                      ; preds = %if.end.771
  br label %rlen_lt_zero

if.end.775:                                       ; preds = %if.end.771
  %536 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr776 = ashr i32 %536, 3
  %537 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext777 = sext i32 %shr776 to i64
  %idx.neg778 = sub i64 0, %idx.ext777
  %add.ptr779 = getelementptr inbounds i8, i8* %537, i64 %idx.neg778
  store i8* %add.ptr779, i8** %p, align 8, !tbaa !1
  %538 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr780 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %538, i32 0, i32 0
  store i8* %add.ptr779, i8** %ptr780, align 8, !tbaa !38
  %539 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and781 = and i32 %539, -8
  %540 = load i32, i32* %bits, align 4, !tbaa !10
  %shr782 = lshr i32 %540, %and781
  store i32 %shr782, i32* %bits, align 4, !tbaa !10
  %541 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits783 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %541, i32 0, i32 6
  store i32 %shr782, i32* %bits783, align 4, !tbaa !13
  %542 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and784 = and i32 %542, 7
  store i32 %and784, i32* %bits_left, align 4, !tbaa !10
  %543 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left785 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %543, i32 0, i32 7
  store i32 %and784, i32* %bits_left785, align 4, !tbaa !14
  %544 = load i8*, i8** %q, align 8, !tbaa !1
  %545 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf786 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %545, i32 0, i32 19
  %546 = load i8*, i8** %lbuf786, align 8, !tbaa !20
  %sub.ptr.lhs.cast787 = ptrtoint i8* %544 to i64
  %sub.ptr.rhs.cast788 = ptrtoint i8* %546 to i64
  %sub.ptr.sub789 = sub i64 %sub.ptr.lhs.cast787, %sub.ptr.rhs.cast788
  %conv790 = trunc i64 %sub.ptr.sub789 to i32
  %547 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos791 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %547, i32 0, i32 26
  store i32 %conv790, i32* %wpos791, align 4, !tbaa !33
  %548 = load i32, i32* %qbit, align 4, !tbaa !10
  %549 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit792 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %549, i32 0, i32 22
  store i32 %548, i32* %cbit792, align 4, !tbaa !27
  %550 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %551 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %552 = load i32, i32* %rlen, align 4, !tbaa !10
  %call793 = call i32 @skip_data(%struct.stream_CFD_state_s* %550, %struct.stream_cursor_read_s* %551, i32 %552) #5
  store i32 %call793, i32* %status, align 4, !tbaa !10
  %553 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr794 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %553, i32 0, i32 0
  %554 = load i8*, i8** %ptr794, align 8, !tbaa !38
  store i8* %554, i8** %p, align 8, !tbaa !1
  %555 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit795 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %555, i32 0, i32 1
  %556 = load i8*, i8** %limit795, align 8, !tbaa !40
  store i8* %556, i8** %rlimit, align 8, !tbaa !1
  %557 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits796 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %557, i32 0, i32 6
  %558 = load i32, i32* %bits796, align 4, !tbaa !13
  store i32 %558, i32* %bits, align 4, !tbaa !10
  %559 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left797 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %559, i32 0, i32 7
  %560 = load i32, i32* %bits_left797, align 4, !tbaa !14
  store i32 %560, i32* %bits_left, align 4, !tbaa !10
  %561 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf798 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %561, i32 0, i32 19
  %562 = load i8*, i8** %lbuf798, align 8, !tbaa !20
  %563 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos799 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %563, i32 0, i32 26
  %564 = load i32, i32* %wpos799, align 4, !tbaa !33
  %idx.ext800 = sext i32 %564 to i64
  %add.ptr801 = getelementptr inbounds i8, i8* %562, i64 %idx.ext800
  store i8* %add.ptr801, i8** %q, align 8, !tbaa !1
  %565 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit802 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %565, i32 0, i32 22
  %566 = load i32, i32* %cbit802, align 4, !tbaa !27
  store i32 %566, i32* %qbit, align 4, !tbaa !10
  %567 = load i32, i32* %status, align 4, !tbaa !10
  %cmp803 = icmp slt i32 %567, 0
  br i1 %cmp803, label %if.then.805, label %if.end.806

if.then.805:                                      ; preds = %if.end.775
  br label %hww

if.end.806:                                       ; preds = %if.end.775
  br label %hwb

hwb:                                              ; preds = %if.then.876, %if.end.806, %sw.bb.18
  %568 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr807 = ashr i32 %568, 3
  %569 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext808 = sext i32 %shr807 to i64
  %idx.neg809 = sub i64 0, %idx.ext808
  %add.ptr810 = getelementptr inbounds i8, i8* %569, i64 %idx.neg809
  store i8* %add.ptr810, i8** %p, align 8, !tbaa !1
  %570 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr811 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %570, i32 0, i32 0
  store i8* %add.ptr810, i8** %ptr811, align 8, !tbaa !38
  %571 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and812 = and i32 %571, -8
  %572 = load i32, i32* %bits, align 4, !tbaa !10
  %shr813 = lshr i32 %572, %and812
  store i32 %shr813, i32* %bits, align 4, !tbaa !10
  %573 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits814 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %573, i32 0, i32 6
  store i32 %shr813, i32* %bits814, align 4, !tbaa !13
  %574 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and815 = and i32 %574, 7
  store i32 %and815, i32* %bits_left, align 4, !tbaa !10
  %575 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left816 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %575, i32 0, i32 7
  store i32 %and815, i32* %bits_left816, align 4, !tbaa !14
  %576 = load i8*, i8** %q, align 8, !tbaa !1
  %577 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf817 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %577, i32 0, i32 19
  %578 = load i8*, i8** %lbuf817, align 8, !tbaa !20
  %sub.ptr.lhs.cast818 = ptrtoint i8* %576 to i64
  %sub.ptr.rhs.cast819 = ptrtoint i8* %578 to i64
  %sub.ptr.sub820 = sub i64 %sub.ptr.lhs.cast818, %sub.ptr.rhs.cast819
  %conv821 = trunc i64 %sub.ptr.sub820 to i32
  %579 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos822 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %579, i32 0, i32 26
  store i32 %conv821, i32* %wpos822, align 4, !tbaa !33
  %580 = load i32, i32* %qbit, align 4, !tbaa !10
  %581 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit823 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %581, i32 0, i32 22
  store i32 %580, i32* %cbit823, align 4, !tbaa !27
  %582 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %583 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call824 = call i32 @get_run(%struct.stream_CFD_state_s* %582, %struct.stream_cursor_read_s* %583, %struct.hcd_code_s* getelementptr inbounds ([0 x %struct.hcd_code_s], [0 x %struct.hcd_code_s]* @cf_black_decode, i32 0, i32 0), i32 7, i32 2, i32* %rlen, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 %call824, i32* %status, align 4, !tbaa !10
  %584 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr825 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %584, i32 0, i32 0
  %585 = load i8*, i8** %ptr825, align 8, !tbaa !38
  store i8* %585, i8** %p, align 8, !tbaa !1
  %586 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit826 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %586, i32 0, i32 1
  %587 = load i8*, i8** %limit826, align 8, !tbaa !40
  store i8* %587, i8** %rlimit, align 8, !tbaa !1
  %588 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits827 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %588, i32 0, i32 6
  %589 = load i32, i32* %bits827, align 4, !tbaa !13
  store i32 %589, i32* %bits, align 4, !tbaa !10
  %590 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left828 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %590, i32 0, i32 7
  %591 = load i32, i32* %bits_left828, align 4, !tbaa !14
  store i32 %591, i32* %bits_left, align 4, !tbaa !10
  %592 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf829 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %592, i32 0, i32 19
  %593 = load i8*, i8** %lbuf829, align 8, !tbaa !20
  %594 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos830 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %594, i32 0, i32 26
  %595 = load i32, i32* %wpos830, align 4, !tbaa !33
  %idx.ext831 = sext i32 %595 to i64
  %add.ptr832 = getelementptr inbounds i8, i8* %593, i64 %idx.ext831
  store i8* %add.ptr832, i8** %q, align 8, !tbaa !1
  %596 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit833 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %596, i32 0, i32 22
  %597 = load i32, i32* %cbit833, align 4, !tbaa !27
  store i32 %597, i32* %qbit, align 4, !tbaa !10
  %598 = load i32, i32* %status, align 4, !tbaa !10
  %cmp834 = icmp slt i32 %598, 0
  br i1 %cmp834, label %if.then.836, label %if.end.837

if.then.836:                                      ; preds = %hwb
  br label %outwb

if.end.837:                                       ; preds = %hwb
  %599 = load i32, i32* %rlen, align 4, !tbaa !10
  %600 = load i32, i32* %count, align 4, !tbaa !10
  %sub838 = sub nsw i32 %600, %599
  store i32 %sub838, i32* %count, align 4, !tbaa !10
  %601 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp839 = icmp slt i32 %sub838, %601
  br i1 %cmp839, label %if.then.841, label %if.end.842

if.then.841:                                      ; preds = %if.end.837
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %out

if.end.842:                                       ; preds = %if.end.837
  %602 = load i32, i32* %rlen, align 4, !tbaa !10
  %cmp843 = icmp slt i32 %602, 0
  br i1 %cmp843, label %if.then.845, label %if.end.846

if.then.845:                                      ; preds = %if.end.842
  br label %rlen_lt_zero

if.end.846:                                       ; preds = %if.end.842
  %603 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr847 = ashr i32 %603, 3
  %604 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext848 = sext i32 %shr847 to i64
  %idx.neg849 = sub i64 0, %idx.ext848
  %add.ptr850 = getelementptr inbounds i8, i8* %604, i64 %idx.neg849
  store i8* %add.ptr850, i8** %p, align 8, !tbaa !1
  %605 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr851 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %605, i32 0, i32 0
  store i8* %add.ptr850, i8** %ptr851, align 8, !tbaa !38
  %606 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and852 = and i32 %606, -8
  %607 = load i32, i32* %bits, align 4, !tbaa !10
  %shr853 = lshr i32 %607, %and852
  store i32 %shr853, i32* %bits, align 4, !tbaa !10
  %608 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits854 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %608, i32 0, i32 6
  store i32 %shr853, i32* %bits854, align 4, !tbaa !13
  %609 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and855 = and i32 %609, 7
  store i32 %and855, i32* %bits_left, align 4, !tbaa !10
  %610 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left856 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %610, i32 0, i32 7
  store i32 %and855, i32* %bits_left856, align 4, !tbaa !14
  %611 = load i8*, i8** %q, align 8, !tbaa !1
  %612 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf857 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %612, i32 0, i32 19
  %613 = load i8*, i8** %lbuf857, align 8, !tbaa !20
  %sub.ptr.lhs.cast858 = ptrtoint i8* %611 to i64
  %sub.ptr.rhs.cast859 = ptrtoint i8* %613 to i64
  %sub.ptr.sub860 = sub i64 %sub.ptr.lhs.cast858, %sub.ptr.rhs.cast859
  %conv861 = trunc i64 %sub.ptr.sub860 to i32
  %614 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos862 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %614, i32 0, i32 26
  store i32 %conv861, i32* %wpos862, align 4, !tbaa !33
  %615 = load i32, i32* %qbit, align 4, !tbaa !10
  %616 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit863 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %616, i32 0, i32 22
  store i32 %615, i32* %cbit863, align 4, !tbaa !27
  %617 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %618 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %619 = load i8, i8* %black_byte, align 1, !tbaa !12
  %call864 = call i32 @invert_data(%struct.stream_CFD_state_s* %617, %struct.stream_cursor_read_s* %618, i32* %rlen, i8 zeroext %619) #5
  store i32 %call864, i32* %status, align 4, !tbaa !10
  %620 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr865 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %620, i32 0, i32 0
  %621 = load i8*, i8** %ptr865, align 8, !tbaa !38
  store i8* %621, i8** %p, align 8, !tbaa !1
  %622 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit866 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %622, i32 0, i32 1
  %623 = load i8*, i8** %limit866, align 8, !tbaa !40
  store i8* %623, i8** %rlimit, align 8, !tbaa !1
  %624 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits867 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %624, i32 0, i32 6
  %625 = load i32, i32* %bits867, align 4, !tbaa !13
  store i32 %625, i32* %bits, align 4, !tbaa !10
  %626 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left868 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %626, i32 0, i32 7
  %627 = load i32, i32* %bits_left868, align 4, !tbaa !14
  store i32 %627, i32* %bits_left, align 4, !tbaa !10
  %628 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf869 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %628, i32 0, i32 19
  %629 = load i8*, i8** %lbuf869, align 8, !tbaa !20
  %630 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos870 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %630, i32 0, i32 26
  %631 = load i32, i32* %wpos870, align 4, !tbaa !33
  %idx.ext871 = sext i32 %631 to i64
  %add.ptr872 = getelementptr inbounds i8, i8* %629, i64 %idx.ext871
  store i8* %add.ptr872, i8** %q, align 8, !tbaa !1
  %632 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit873 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %632, i32 0, i32 22
  %633 = load i32, i32* %cbit873, align 4, !tbaa !27
  store i32 %633, i32* %qbit, align 4, !tbaa !10
  %634 = load i32, i32* %status, align 4, !tbaa !10
  %cmp874 = icmp slt i32 %634, 0
  br i1 %cmp874, label %if.then.876, label %if.end.877

if.then.876:                                      ; preds = %if.end.846
  br label %hwb

if.end.877:                                       ; preds = %if.end.846
  br label %top

outww:                                            ; preds = %if.then.765
  %635 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color878 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %635, i32 0, i32 29
  store i32 -2, i32* %run_color878, align 4, !tbaa !24
  br label %out0

outwb:                                            ; preds = %if.then.836
  %636 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color879 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %636, i32 0, i32 29
  store i32 1, i32* %run_color879, align 4, !tbaa !24
  br label %out0

hbb:                                              ; preds = %if.then.949, %if.else.112, %sw.bb.20
  %637 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr880 = ashr i32 %637, 3
  %638 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext881 = sext i32 %shr880 to i64
  %idx.neg882 = sub i64 0, %idx.ext881
  %add.ptr883 = getelementptr inbounds i8, i8* %638, i64 %idx.neg882
  store i8* %add.ptr883, i8** %p, align 8, !tbaa !1
  %639 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr884 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %639, i32 0, i32 0
  store i8* %add.ptr883, i8** %ptr884, align 8, !tbaa !38
  %640 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and885 = and i32 %640, -8
  %641 = load i32, i32* %bits, align 4, !tbaa !10
  %shr886 = lshr i32 %641, %and885
  store i32 %shr886, i32* %bits, align 4, !tbaa !10
  %642 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits887 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %642, i32 0, i32 6
  store i32 %shr886, i32* %bits887, align 4, !tbaa !13
  %643 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and888 = and i32 %643, 7
  store i32 %and888, i32* %bits_left, align 4, !tbaa !10
  %644 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left889 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %644, i32 0, i32 7
  store i32 %and888, i32* %bits_left889, align 4, !tbaa !14
  %645 = load i8*, i8** %q, align 8, !tbaa !1
  %646 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf890 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %646, i32 0, i32 19
  %647 = load i8*, i8** %lbuf890, align 8, !tbaa !20
  %sub.ptr.lhs.cast891 = ptrtoint i8* %645 to i64
  %sub.ptr.rhs.cast892 = ptrtoint i8* %647 to i64
  %sub.ptr.sub893 = sub i64 %sub.ptr.lhs.cast891, %sub.ptr.rhs.cast892
  %conv894 = trunc i64 %sub.ptr.sub893 to i32
  %648 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos895 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %648, i32 0, i32 26
  store i32 %conv894, i32* %wpos895, align 4, !tbaa !33
  %649 = load i32, i32* %qbit, align 4, !tbaa !10
  %650 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit896 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %650, i32 0, i32 22
  store i32 %649, i32* %cbit896, align 4, !tbaa !27
  %651 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %652 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call897 = call i32 @get_run(%struct.stream_CFD_state_s* %651, %struct.stream_cursor_read_s* %652, %struct.hcd_code_s* getelementptr inbounds ([0 x %struct.hcd_code_s], [0 x %struct.hcd_code_s]* @cf_black_decode, i32 0, i32 0), i32 7, i32 2, i32* %rlen, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 %call897, i32* %status, align 4, !tbaa !10
  %653 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr898 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %653, i32 0, i32 0
  %654 = load i8*, i8** %ptr898, align 8, !tbaa !38
  store i8* %654, i8** %p, align 8, !tbaa !1
  %655 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit899 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %655, i32 0, i32 1
  %656 = load i8*, i8** %limit899, align 8, !tbaa !40
  store i8* %656, i8** %rlimit, align 8, !tbaa !1
  %657 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits900 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %657, i32 0, i32 6
  %658 = load i32, i32* %bits900, align 4, !tbaa !13
  store i32 %658, i32* %bits, align 4, !tbaa !10
  %659 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left901 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %659, i32 0, i32 7
  %660 = load i32, i32* %bits_left901, align 4, !tbaa !14
  store i32 %660, i32* %bits_left, align 4, !tbaa !10
  %661 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf902 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %661, i32 0, i32 19
  %662 = load i8*, i8** %lbuf902, align 8, !tbaa !20
  %663 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos903 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %663, i32 0, i32 26
  %664 = load i32, i32* %wpos903, align 4, !tbaa !33
  %idx.ext904 = sext i32 %664 to i64
  %add.ptr905 = getelementptr inbounds i8, i8* %662, i64 %idx.ext904
  store i8* %add.ptr905, i8** %q, align 8, !tbaa !1
  %665 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit906 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %665, i32 0, i32 22
  %666 = load i32, i32* %cbit906, align 4, !tbaa !27
  store i32 %666, i32* %qbit, align 4, !tbaa !10
  %667 = load i32, i32* %status, align 4, !tbaa !10
  %cmp907 = icmp slt i32 %667, 0
  br i1 %cmp907, label %if.then.909, label %if.end.910

if.then.909:                                      ; preds = %hbb
  br label %outbb

if.end.910:                                       ; preds = %hbb
  %668 = load i32, i32* %rlen, align 4, !tbaa !10
  %669 = load i32, i32* %count, align 4, !tbaa !10
  %sub911 = sub nsw i32 %669, %668
  store i32 %sub911, i32* %count, align 4, !tbaa !10
  %670 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp912 = icmp slt i32 %sub911, %670
  br i1 %cmp912, label %if.then.914, label %if.end.915

if.then.914:                                      ; preds = %if.end.910
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %out

if.end.915:                                       ; preds = %if.end.910
  %671 = load i32, i32* %rlen, align 4, !tbaa !10
  %cmp916 = icmp slt i32 %671, 0
  br i1 %cmp916, label %if.then.918, label %if.end.919

if.then.918:                                      ; preds = %if.end.915
  br label %rlen_lt_zero

if.end.919:                                       ; preds = %if.end.915
  %672 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr920 = ashr i32 %672, 3
  %673 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext921 = sext i32 %shr920 to i64
  %idx.neg922 = sub i64 0, %idx.ext921
  %add.ptr923 = getelementptr inbounds i8, i8* %673, i64 %idx.neg922
  store i8* %add.ptr923, i8** %p, align 8, !tbaa !1
  %674 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr924 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %674, i32 0, i32 0
  store i8* %add.ptr923, i8** %ptr924, align 8, !tbaa !38
  %675 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and925 = and i32 %675, -8
  %676 = load i32, i32* %bits, align 4, !tbaa !10
  %shr926 = lshr i32 %676, %and925
  store i32 %shr926, i32* %bits, align 4, !tbaa !10
  %677 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits927 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %677, i32 0, i32 6
  store i32 %shr926, i32* %bits927, align 4, !tbaa !13
  %678 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and928 = and i32 %678, 7
  store i32 %and928, i32* %bits_left, align 4, !tbaa !10
  %679 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left929 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %679, i32 0, i32 7
  store i32 %and928, i32* %bits_left929, align 4, !tbaa !14
  %680 = load i8*, i8** %q, align 8, !tbaa !1
  %681 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf930 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %681, i32 0, i32 19
  %682 = load i8*, i8** %lbuf930, align 8, !tbaa !20
  %sub.ptr.lhs.cast931 = ptrtoint i8* %680 to i64
  %sub.ptr.rhs.cast932 = ptrtoint i8* %682 to i64
  %sub.ptr.sub933 = sub i64 %sub.ptr.lhs.cast931, %sub.ptr.rhs.cast932
  %conv934 = trunc i64 %sub.ptr.sub933 to i32
  %683 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos935 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %683, i32 0, i32 26
  store i32 %conv934, i32* %wpos935, align 4, !tbaa !33
  %684 = load i32, i32* %qbit, align 4, !tbaa !10
  %685 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit936 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %685, i32 0, i32 22
  store i32 %684, i32* %cbit936, align 4, !tbaa !27
  %686 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %687 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %688 = load i8, i8* %black_byte, align 1, !tbaa !12
  %call937 = call i32 @invert_data(%struct.stream_CFD_state_s* %686, %struct.stream_cursor_read_s* %687, i32* %rlen, i8 zeroext %688) #5
  store i32 %call937, i32* %status, align 4, !tbaa !10
  %689 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr938 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %689, i32 0, i32 0
  %690 = load i8*, i8** %ptr938, align 8, !tbaa !38
  store i8* %690, i8** %p, align 8, !tbaa !1
  %691 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit939 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %691, i32 0, i32 1
  %692 = load i8*, i8** %limit939, align 8, !tbaa !40
  store i8* %692, i8** %rlimit, align 8, !tbaa !1
  %693 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits940 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %693, i32 0, i32 6
  %694 = load i32, i32* %bits940, align 4, !tbaa !13
  store i32 %694, i32* %bits, align 4, !tbaa !10
  %695 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left941 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %695, i32 0, i32 7
  %696 = load i32, i32* %bits_left941, align 4, !tbaa !14
  store i32 %696, i32* %bits_left, align 4, !tbaa !10
  %697 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf942 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %697, i32 0, i32 19
  %698 = load i8*, i8** %lbuf942, align 8, !tbaa !20
  %699 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos943 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %699, i32 0, i32 26
  %700 = load i32, i32* %wpos943, align 4, !tbaa !33
  %idx.ext944 = sext i32 %700 to i64
  %add.ptr945 = getelementptr inbounds i8, i8* %698, i64 %idx.ext944
  store i8* %add.ptr945, i8** %q, align 8, !tbaa !1
  %701 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit946 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %701, i32 0, i32 22
  %702 = load i32, i32* %cbit946, align 4, !tbaa !27
  store i32 %702, i32* %qbit, align 4, !tbaa !10
  %703 = load i32, i32* %status, align 4, !tbaa !10
  %cmp947 = icmp slt i32 %703, 0
  br i1 %cmp947, label %if.then.949, label %if.end.950

if.then.949:                                      ; preds = %if.end.919
  br label %hbb

if.end.950:                                       ; preds = %if.end.919
  br label %hbw

hbw:                                              ; preds = %if.then.1020, %if.end.950, %sw.bb.16
  %704 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr951 = ashr i32 %704, 3
  %705 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext952 = sext i32 %shr951 to i64
  %idx.neg953 = sub i64 0, %idx.ext952
  %add.ptr954 = getelementptr inbounds i8, i8* %705, i64 %idx.neg953
  store i8* %add.ptr954, i8** %p, align 8, !tbaa !1
  %706 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr955 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %706, i32 0, i32 0
  store i8* %add.ptr954, i8** %ptr955, align 8, !tbaa !38
  %707 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and956 = and i32 %707, -8
  %708 = load i32, i32* %bits, align 4, !tbaa !10
  %shr957 = lshr i32 %708, %and956
  store i32 %shr957, i32* %bits, align 4, !tbaa !10
  %709 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits958 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %709, i32 0, i32 6
  store i32 %shr957, i32* %bits958, align 4, !tbaa !13
  %710 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and959 = and i32 %710, 7
  store i32 %and959, i32* %bits_left, align 4, !tbaa !10
  %711 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left960 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %711, i32 0, i32 7
  store i32 %and959, i32* %bits_left960, align 4, !tbaa !14
  %712 = load i8*, i8** %q, align 8, !tbaa !1
  %713 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf961 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %713, i32 0, i32 19
  %714 = load i8*, i8** %lbuf961, align 8, !tbaa !20
  %sub.ptr.lhs.cast962 = ptrtoint i8* %712 to i64
  %sub.ptr.rhs.cast963 = ptrtoint i8* %714 to i64
  %sub.ptr.sub964 = sub i64 %sub.ptr.lhs.cast962, %sub.ptr.rhs.cast963
  %conv965 = trunc i64 %sub.ptr.sub964 to i32
  %715 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos966 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %715, i32 0, i32 26
  store i32 %conv965, i32* %wpos966, align 4, !tbaa !33
  %716 = load i32, i32* %qbit, align 4, !tbaa !10
  %717 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit967 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %717, i32 0, i32 22
  store i32 %716, i32* %cbit967, align 4, !tbaa !27
  %718 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %719 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call968 = call i32 @get_run(%struct.stream_CFD_state_s* %718, %struct.stream_cursor_read_s* %719, %struct.hcd_code_s* getelementptr inbounds ([0 x %struct.hcd_code_s], [0 x %struct.hcd_code_s]* @cf_white_decode, i32 0, i32 0), i32 8, i32 4, i32* %rlen, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 %call968, i32* %status, align 4, !tbaa !10
  %720 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr969 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %720, i32 0, i32 0
  %721 = load i8*, i8** %ptr969, align 8, !tbaa !38
  store i8* %721, i8** %p, align 8, !tbaa !1
  %722 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit970 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %722, i32 0, i32 1
  %723 = load i8*, i8** %limit970, align 8, !tbaa !40
  store i8* %723, i8** %rlimit, align 8, !tbaa !1
  %724 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits971 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %724, i32 0, i32 6
  %725 = load i32, i32* %bits971, align 4, !tbaa !13
  store i32 %725, i32* %bits, align 4, !tbaa !10
  %726 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left972 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %726, i32 0, i32 7
  %727 = load i32, i32* %bits_left972, align 4, !tbaa !14
  store i32 %727, i32* %bits_left, align 4, !tbaa !10
  %728 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf973 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %728, i32 0, i32 19
  %729 = load i8*, i8** %lbuf973, align 8, !tbaa !20
  %730 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos974 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %730, i32 0, i32 26
  %731 = load i32, i32* %wpos974, align 4, !tbaa !33
  %idx.ext975 = sext i32 %731 to i64
  %add.ptr976 = getelementptr inbounds i8, i8* %729, i64 %idx.ext975
  store i8* %add.ptr976, i8** %q, align 8, !tbaa !1
  %732 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit977 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %732, i32 0, i32 22
  %733 = load i32, i32* %cbit977, align 4, !tbaa !27
  store i32 %733, i32* %qbit, align 4, !tbaa !10
  %734 = load i32, i32* %status, align 4, !tbaa !10
  %cmp978 = icmp slt i32 %734, 0
  br i1 %cmp978, label %if.then.980, label %if.end.981

if.then.980:                                      ; preds = %hbw
  br label %outbw

if.end.981:                                       ; preds = %hbw
  %735 = load i32, i32* %rlen, align 4, !tbaa !10
  %736 = load i32, i32* %count, align 4, !tbaa !10
  %sub982 = sub nsw i32 %736, %735
  store i32 %sub982, i32* %count, align 4, !tbaa !10
  %737 = load i32, i32* %end_count, align 4, !tbaa !10
  %cmp983 = icmp slt i32 %sub982, %737
  br i1 %cmp983, label %if.then.985, label %if.end.986

if.then.985:                                      ; preds = %if.end.981
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %out

if.end.986:                                       ; preds = %if.end.981
  %738 = load i32, i32* %rlen, align 4, !tbaa !10
  %cmp987 = icmp slt i32 %738, 0
  br i1 %cmp987, label %if.then.989, label %if.end.990

if.then.989:                                      ; preds = %if.end.986
  br label %rlen_lt_zero

if.end.990:                                       ; preds = %if.end.986
  %739 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr991 = ashr i32 %739, 3
  %740 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext992 = sext i32 %shr991 to i64
  %idx.neg993 = sub i64 0, %idx.ext992
  %add.ptr994 = getelementptr inbounds i8, i8* %740, i64 %idx.neg993
  store i8* %add.ptr994, i8** %p, align 8, !tbaa !1
  %741 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr995 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %741, i32 0, i32 0
  store i8* %add.ptr994, i8** %ptr995, align 8, !tbaa !38
  %742 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and996 = and i32 %742, -8
  %743 = load i32, i32* %bits, align 4, !tbaa !10
  %shr997 = lshr i32 %743, %and996
  store i32 %shr997, i32* %bits, align 4, !tbaa !10
  %744 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits998 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %744, i32 0, i32 6
  store i32 %shr997, i32* %bits998, align 4, !tbaa !13
  %745 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and999 = and i32 %745, 7
  store i32 %and999, i32* %bits_left, align 4, !tbaa !10
  %746 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left1000 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %746, i32 0, i32 7
  store i32 %and999, i32* %bits_left1000, align 4, !tbaa !14
  %747 = load i8*, i8** %q, align 8, !tbaa !1
  %748 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf1001 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %748, i32 0, i32 19
  %749 = load i8*, i8** %lbuf1001, align 8, !tbaa !20
  %sub.ptr.lhs.cast1002 = ptrtoint i8* %747 to i64
  %sub.ptr.rhs.cast1003 = ptrtoint i8* %749 to i64
  %sub.ptr.sub1004 = sub i64 %sub.ptr.lhs.cast1002, %sub.ptr.rhs.cast1003
  %conv1005 = trunc i64 %sub.ptr.sub1004 to i32
  %750 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos1006 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %750, i32 0, i32 26
  store i32 %conv1005, i32* %wpos1006, align 4, !tbaa !33
  %751 = load i32, i32* %qbit, align 4, !tbaa !10
  %752 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit1007 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %752, i32 0, i32 22
  store i32 %751, i32* %cbit1007, align 4, !tbaa !27
  %753 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %754 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %755 = load i32, i32* %rlen, align 4, !tbaa !10
  %call1008 = call i32 @skip_data(%struct.stream_CFD_state_s* %753, %struct.stream_cursor_read_s* %754, i32 %755) #5
  store i32 %call1008, i32* %status, align 4, !tbaa !10
  %756 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr1009 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %756, i32 0, i32 0
  %757 = load i8*, i8** %ptr1009, align 8, !tbaa !38
  store i8* %757, i8** %p, align 8, !tbaa !1
  %758 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit1010 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %758, i32 0, i32 1
  %759 = load i8*, i8** %limit1010, align 8, !tbaa !40
  store i8* %759, i8** %rlimit, align 8, !tbaa !1
  %760 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits1011 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %760, i32 0, i32 6
  %761 = load i32, i32* %bits1011, align 4, !tbaa !13
  store i32 %761, i32* %bits, align 4, !tbaa !10
  %762 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left1012 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %762, i32 0, i32 7
  %763 = load i32, i32* %bits_left1012, align 4, !tbaa !14
  store i32 %763, i32* %bits_left, align 4, !tbaa !10
  %764 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf1013 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %764, i32 0, i32 19
  %765 = load i8*, i8** %lbuf1013, align 8, !tbaa !20
  %766 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos1014 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %766, i32 0, i32 26
  %767 = load i32, i32* %wpos1014, align 4, !tbaa !33
  %idx.ext1015 = sext i32 %767 to i64
  %add.ptr1016 = getelementptr inbounds i8, i8* %765, i64 %idx.ext1015
  store i8* %add.ptr1016, i8** %q, align 8, !tbaa !1
  %768 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit1017 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %768, i32 0, i32 22
  %769 = load i32, i32* %cbit1017, align 4, !tbaa !27
  store i32 %769, i32* %qbit, align 4, !tbaa !10
  %770 = load i32, i32* %status, align 4, !tbaa !10
  %cmp1018 = icmp slt i32 %770, 0
  br i1 %cmp1018, label %if.then.1020, label %if.end.1021

if.then.1020:                                     ; preds = %if.end.990
  br label %hbw

if.end.1021:                                      ; preds = %if.end.990
  br label %top

outbb:                                            ; preds = %if.then.909
  %771 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color1022 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %771, i32 0, i32 29
  store i32 2, i32* %run_color1022, align 4, !tbaa !24
  br label %out0

outbw:                                            ; preds = %if.then.980
  %772 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color1023 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %772, i32 0, i32 29
  store i32 -1, i32* %run_color1023, align 4, !tbaa !24
  br label %out0

cleanup.1024:                                     ; preds = %if.end.735, %cleanup
  %773 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %773) #2
  %774 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %774) #2
  %775 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %775) #2
  %776 = bitcast i32* %init_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %776) #2
  %777 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %777) #2
  %778 = bitcast i8** %prev_q01 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %778) #2
  %779 = bitcast i8** %q0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %779) #2
  %780 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %780) #2
  %781 = bitcast i32* %end_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %781) #2
  call void @llvm.lifetime.end(i64 1, i8* %invert) #2
  call void @llvm.lifetime.end(i64 1, i8* %black_byte) #2
  call void @llvm.lifetime.end(i64 1, i8* %invert_white) #2
  %782 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %782) #2
  %783 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %783) #2
  %784 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %784) #2
  %785 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %785) #2
  %786 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %786) #2
  %787 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %787) #2
  %788 = load i32, i32* %retval
  ret i32 %788
}

; Function Attrs: nounwind uwtable
define internal i32 @cf_decode_1d(%struct.stream_CFD_state_s* %ss, %struct.stream_cursor_read_s* %pr) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_CFD_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %q = alloca i8*, align 8
  %qbit = alloca i32, align 4
  %black_byte = alloca i8, align 1
  %end_bit = alloca i32, align 4
  %stop = alloca i8*, align 8
  %run_color = alloca i32, align 4
  %status = alloca i32, align 4
  %bcnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_CFD_state_s* %ss, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  call void @llvm.lifetime.start(i64 1, i8* %black_byte) #2
  %6 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %BlackIs1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %6, i32 0, i32 15
  %7 = load i32, i32* %BlackIs1, align 4, !tbaa !11
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 255, i32 0
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %black_byte, align 1, !tbaa !12
  %8 = bitcast i32* %end_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %9, i32 0, i32 12
  %10 = load i32, i32* %Columns, align 4, !tbaa !8
  %sub = sub nsw i32 0, %10
  %and = and i32 %sub, 7
  store i32 %and, i32* %end_bit, align 4, !tbaa !10
  %11 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %12, i32 0, i32 19
  %13 = load i8*, i8** %lbuf, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 -1
  %14 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %14, i32 0, i32 18
  %15 = load i32, i32* %raster, align 4, !tbaa !9
  %idx.ext = zext i32 %15 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  store i8* %add.ptr1, i8** %stop, align 8, !tbaa !1
  %16 = bitcast i32* %run_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color2 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %17, i32 0, i32 29
  %18 = load i32, i32* %run_color2, align 4, !tbaa !24
  store i32 %18, i32* %run_color, align 4, !tbaa !10
  %19 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %22 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %22, i32 0, i32 0
  %23 = load i8*, i8** %ptr, align 8, !tbaa !38
  store i8* %23, i8** %p, align 8, !tbaa !1
  %24 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %limit, align 8, !tbaa !40
  store i8* %25, i8** %rlimit, align 8, !tbaa !1
  %26 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits3 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %26, i32 0, i32 6
  %27 = load i32, i32* %bits3, align 4, !tbaa !13
  store i32 %27, i32* %bits, align 4, !tbaa !10
  %28 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left4 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %28, i32 0, i32 7
  %29 = load i32, i32* %bits_left4, align 4, !tbaa !14
  store i32 %29, i32* %bits_left, align 4, !tbaa !10
  %30 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf5 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %30, i32 0, i32 19
  %31 = load i8*, i8** %lbuf5, align 8, !tbaa !20
  %32 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %32, i32 0, i32 26
  %33 = load i32, i32* %wpos, align 4, !tbaa !33
  %idx.ext6 = sext i32 %33 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %31, i64 %idx.ext6
  store i8* %add.ptr7, i8** %q, align 8, !tbaa !1
  %34 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %34, i32 0, i32 22
  %35 = load i32, i32* %cbit, align 4, !tbaa !27
  store i32 %35, i32* %qbit, align 4, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color8 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %36, i32 0, i32 29
  %37 = load i32, i32* %run_color8, align 4, !tbaa !24
  %cmp = icmp sgt i32 %37, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  br label %db

if.else:                                          ; preds = %do.end
  br label %dw

top:                                              ; preds = %if.end.186
  store i32 0, i32* %run_color, align 4, !tbaa !10
  %38 = load i8*, i8** %q, align 8, !tbaa !1
  %39 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp10 = icmp uge i8* %38, %39
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %top
  %40 = load i32, i32* %qbit, align 4, !tbaa !10
  %41 = load i32, i32* %end_bit, align 4, !tbaa !10
  %cmp12 = icmp sle i32 %40, %41
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %42 = load i8*, i8** %q, align 8, !tbaa !1
  %43 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp14 = icmp ugt i8* %42, %43
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %done

if.end:                                           ; preds = %lor.lhs.false, %top
  br label %dw

dw:                                               ; preds = %dwx, %if.else.78, %if.end, %if.else
  %44 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr = ashr i32 %44, 3
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext17 = sext i32 %shr to i64
  %idx.neg = sub i64 0, %idx.ext17
  %add.ptr18 = getelementptr inbounds i8, i8* %45, i64 %idx.neg
  store i8* %add.ptr18, i8** %p, align 8, !tbaa !1
  %46 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr19 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %46, i32 0, i32 0
  store i8* %add.ptr18, i8** %ptr19, align 8, !tbaa !38
  %47 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and20 = and i32 %47, -8
  %48 = load i32, i32* %bits, align 4, !tbaa !10
  %shr21 = lshr i32 %48, %and20
  store i32 %shr21, i32* %bits, align 4, !tbaa !10
  %49 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits22 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %49, i32 0, i32 6
  store i32 %shr21, i32* %bits22, align 4, !tbaa !13
  %50 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and23 = and i32 %50, 7
  store i32 %and23, i32* %bits_left, align 4, !tbaa !10
  %51 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left24 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %51, i32 0, i32 7
  store i32 %and23, i32* %bits_left24, align 4, !tbaa !14
  %52 = load i8*, i8** %q, align 8, !tbaa !1
  %53 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf25 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %53, i32 0, i32 19
  %54 = load i8*, i8** %lbuf25, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv26 = trunc i64 %sub.ptr.sub to i32
  %55 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos27 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %55, i32 0, i32 26
  store i32 %conv26, i32* %wpos27, align 4, !tbaa !33
  %56 = load i32, i32* %qbit, align 4, !tbaa !10
  %57 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit28 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %57, i32 0, i32 22
  store i32 %56, i32* %cbit28, align 4, !tbaa !27
  %58 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %59 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call = call i32 @get_run(%struct.stream_CFD_state_s* %58, %struct.stream_cursor_read_s* %59, %struct.hcd_code_s* getelementptr inbounds ([0 x %struct.hcd_code_s], [0 x %struct.hcd_code_s]* @cf_white_decode, i32 0, i32 0), i32 8, i32 4, i32* %bcnt, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 %call, i32* %status, align 4, !tbaa !10
  %60 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr29 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %60, i32 0, i32 0
  %61 = load i8*, i8** %ptr29, align 8, !tbaa !38
  store i8* %61, i8** %p, align 8, !tbaa !1
  %62 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit30 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %62, i32 0, i32 1
  %63 = load i8*, i8** %limit30, align 8, !tbaa !40
  store i8* %63, i8** %rlimit, align 8, !tbaa !1
  %64 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits31 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %64, i32 0, i32 6
  %65 = load i32, i32* %bits31, align 4, !tbaa !13
  store i32 %65, i32* %bits, align 4, !tbaa !10
  %66 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left32 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %66, i32 0, i32 7
  %67 = load i32, i32* %bits_left32, align 4, !tbaa !14
  store i32 %67, i32* %bits_left, align 4, !tbaa !10
  %68 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf33 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %68, i32 0, i32 19
  %69 = load i8*, i8** %lbuf33, align 8, !tbaa !20
  %70 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos34 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %70, i32 0, i32 26
  %71 = load i32, i32* %wpos34, align 4, !tbaa !33
  %idx.ext35 = sext i32 %71 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %69, i64 %idx.ext35
  store i8* %add.ptr36, i8** %q, align 8, !tbaa !1
  %72 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit37 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %72, i32 0, i32 22
  %73 = load i32, i32* %cbit37, align 4, !tbaa !27
  store i32 %73, i32* %qbit, align 4, !tbaa !10
  %74 = load i32, i32* %status, align 4, !tbaa !10
  %cmp38 = icmp slt i32 %74, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %dw
  br label %out0

if.end.41:                                        ; preds = %dw
  %75 = load i32, i32* %bcnt, align 4, !tbaa !10
  %cmp42 = icmp slt i32 %75, 0
  br i1 %cmp42, label %if.then.44, label %if.end.79

if.then.44:                                       ; preds = %if.end.41
  %76 = load i32, i32* %bcnt, align 4, !tbaa !10
  switch i32 %76, label %sw.default [
    i32 -3, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.44
  %77 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr45 = ashr i32 %77, 3
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext46 = sext i32 %shr45 to i64
  %idx.neg47 = sub i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, i8* %78, i64 %idx.neg47
  store i8* %add.ptr48, i8** %p, align 8, !tbaa !1
  %79 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr49 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %79, i32 0, i32 0
  store i8* %add.ptr48, i8** %ptr49, align 8, !tbaa !38
  %80 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and50 = and i32 %80, -8
  %81 = load i32, i32* %bits, align 4, !tbaa !10
  %shr51 = lshr i32 %81, %and50
  store i32 %shr51, i32* %bits, align 4, !tbaa !10
  %82 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits52 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %82, i32 0, i32 6
  store i32 %shr51, i32* %bits52, align 4, !tbaa !13
  %83 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and53 = and i32 %83, 7
  store i32 %and53, i32* %bits_left, align 4, !tbaa !10
  %84 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left54 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %84, i32 0, i32 7
  store i32 %and53, i32* %bits_left54, align 4, !tbaa !14
  %85 = load i8*, i8** %q, align 8, !tbaa !1
  %86 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf55 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %86, i32 0, i32 19
  %87 = load i8*, i8** %lbuf55, align 8, !tbaa !20
  %sub.ptr.lhs.cast56 = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %87 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %conv59 = trunc i64 %sub.ptr.sub58 to i32
  %88 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos60 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %88, i32 0, i32 26
  store i32 %conv59, i32* %wpos60, align 4, !tbaa !33
  %89 = load i32, i32* %qbit, align 4, !tbaa !10
  %90 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit61 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %90, i32 0, i32 22
  store i32 %89, i32* %cbit61, align 4, !tbaa !27
  %91 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %92 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call62 = call i32 @cf_decode_uncompressed(%struct.stream_CFD_state_s* %91, %struct.stream_cursor_read_s* %92) #5
  store i32 %call62, i32* %bcnt, align 4, !tbaa !10
  %93 = load i32, i32* %bcnt, align 4, !tbaa !10
  %cmp63 = icmp slt i32 %93, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %sw.bb
  %94 = load i32, i32* %bcnt, align 4, !tbaa !10
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %sw.bb
  %95 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr67 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %95, i32 0, i32 0
  %96 = load i8*, i8** %ptr67, align 8, !tbaa !38
  store i8* %96, i8** %p, align 8, !tbaa !1
  %97 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit68 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %97, i32 0, i32 1
  %98 = load i8*, i8** %limit68, align 8, !tbaa !40
  store i8* %98, i8** %rlimit, align 8, !tbaa !1
  %99 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits69 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %99, i32 0, i32 6
  %100 = load i32, i32* %bits69, align 4, !tbaa !13
  store i32 %100, i32* %bits, align 4, !tbaa !10
  %101 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left70 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %101, i32 0, i32 7
  %102 = load i32, i32* %bits_left70, align 4, !tbaa !14
  store i32 %102, i32* %bits_left, align 4, !tbaa !10
  %103 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf71 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %103, i32 0, i32 19
  %104 = load i8*, i8** %lbuf71, align 8, !tbaa !20
  %105 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos72 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %105, i32 0, i32 26
  %106 = load i32, i32* %wpos72, align 4, !tbaa !33
  %idx.ext73 = sext i32 %106 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %104, i64 %idx.ext73
  store i8* %add.ptr74, i8** %q, align 8, !tbaa !1
  %107 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit75 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %107, i32 0, i32 22
  %108 = load i32, i32* %cbit75, align 4, !tbaa !27
  store i32 %108, i32* %qbit, align 4, !tbaa !10
  %109 = load i32, i32* %bcnt, align 4, !tbaa !10
  %tobool76 = icmp ne i32 %109, 0
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.end.66
  br label %db

if.else.78:                                       ; preds = %if.end.66
  br label %dw

sw.default:                                       ; preds = %if.then.44
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %out

if.end.79:                                        ; preds = %if.end.41
  %110 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr80 = ashr i32 %110, 3
  %111 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext81 = sext i32 %shr80 to i64
  %idx.neg82 = sub i64 0, %idx.ext81
  %add.ptr83 = getelementptr inbounds i8, i8* %111, i64 %idx.neg82
  store i8* %add.ptr83, i8** %p, align 8, !tbaa !1
  %112 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr84 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %112, i32 0, i32 0
  store i8* %add.ptr83, i8** %ptr84, align 8, !tbaa !38
  %113 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and85 = and i32 %113, -8
  %114 = load i32, i32* %bits, align 4, !tbaa !10
  %shr86 = lshr i32 %114, %and85
  store i32 %shr86, i32* %bits, align 4, !tbaa !10
  %115 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits87 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %115, i32 0, i32 6
  store i32 %shr86, i32* %bits87, align 4, !tbaa !13
  %116 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and88 = and i32 %116, 7
  store i32 %and88, i32* %bits_left, align 4, !tbaa !10
  %117 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left89 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %117, i32 0, i32 7
  store i32 %and88, i32* %bits_left89, align 4, !tbaa !14
  %118 = load i8*, i8** %q, align 8, !tbaa !1
  %119 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf90 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %119, i32 0, i32 19
  %120 = load i8*, i8** %lbuf90, align 8, !tbaa !20
  %sub.ptr.lhs.cast91 = ptrtoint i8* %118 to i64
  %sub.ptr.rhs.cast92 = ptrtoint i8* %120 to i64
  %sub.ptr.sub93 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  %conv94 = trunc i64 %sub.ptr.sub93 to i32
  %121 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos95 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %121, i32 0, i32 26
  store i32 %conv94, i32* %wpos95, align 4, !tbaa !33
  %122 = load i32, i32* %qbit, align 4, !tbaa !10
  %123 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit96 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %123, i32 0, i32 22
  store i32 %122, i32* %cbit96, align 4, !tbaa !27
  %124 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %125 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %126 = load i32, i32* %bcnt, align 4, !tbaa !10
  %call97 = call i32 @skip_data(%struct.stream_CFD_state_s* %124, %struct.stream_cursor_read_s* %125, i32 %126) #5
  store i32 %call97, i32* %status, align 4, !tbaa !10
  %127 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr98 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %127, i32 0, i32 0
  %128 = load i8*, i8** %ptr98, align 8, !tbaa !38
  store i8* %128, i8** %p, align 8, !tbaa !1
  %129 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit99 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %129, i32 0, i32 1
  %130 = load i8*, i8** %limit99, align 8, !tbaa !40
  store i8* %130, i8** %rlimit, align 8, !tbaa !1
  %131 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits100 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %131, i32 0, i32 6
  %132 = load i32, i32* %bits100, align 4, !tbaa !13
  store i32 %132, i32* %bits, align 4, !tbaa !10
  %133 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left101 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %133, i32 0, i32 7
  %134 = load i32, i32* %bits_left101, align 4, !tbaa !14
  store i32 %134, i32* %bits_left, align 4, !tbaa !10
  %135 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf102 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %135, i32 0, i32 19
  %136 = load i8*, i8** %lbuf102, align 8, !tbaa !20
  %137 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos103 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %137, i32 0, i32 26
  %138 = load i32, i32* %wpos103, align 4, !tbaa !33
  %idx.ext104 = sext i32 %138 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %136, i64 %idx.ext104
  store i8* %add.ptr105, i8** %q, align 8, !tbaa !1
  %139 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit106 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %139, i32 0, i32 22
  %140 = load i32, i32* %cbit106, align 4, !tbaa !27
  store i32 %140, i32* %qbit, align 4, !tbaa !10
  %141 = load i32, i32* %status, align 4, !tbaa !10
  %cmp107 = icmp slt i32 %141, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.79
  br label %dwx

if.end.110:                                       ; preds = %if.end.79
  %142 = load i8*, i8** %q, align 8, !tbaa !1
  %143 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp111 = icmp uge i8* %142, %143
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.120

land.lhs.true.113:                                ; preds = %if.end.110
  %144 = load i32, i32* %qbit, align 4, !tbaa !10
  %145 = load i32, i32* %end_bit, align 4, !tbaa !10
  %cmp114 = icmp sle i32 %144, %145
  br i1 %cmp114, label %if.then.119, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.113
  %146 = load i8*, i8** %q, align 8, !tbaa !1
  %147 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp117 = icmp ugt i8* %146, %147
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %lor.lhs.false.116, %land.lhs.true.113
  store i32 0, i32* %run_color, align 4, !tbaa !10
  br label %done

if.end.120:                                       ; preds = %lor.lhs.false.116, %if.end.110
  store i32 1, i32* %run_color, align 4, !tbaa !10
  br label %db

db:                                               ; preds = %dbx, %if.end.120, %if.then.77, %if.then
  %148 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr121 = ashr i32 %148, 3
  %149 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext122 = sext i32 %shr121 to i64
  %idx.neg123 = sub i64 0, %idx.ext122
  %add.ptr124 = getelementptr inbounds i8, i8* %149, i64 %idx.neg123
  store i8* %add.ptr124, i8** %p, align 8, !tbaa !1
  %150 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr125 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %150, i32 0, i32 0
  store i8* %add.ptr124, i8** %ptr125, align 8, !tbaa !38
  %151 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and126 = and i32 %151, -8
  %152 = load i32, i32* %bits, align 4, !tbaa !10
  %shr127 = lshr i32 %152, %and126
  store i32 %shr127, i32* %bits, align 4, !tbaa !10
  %153 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits128 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %153, i32 0, i32 6
  store i32 %shr127, i32* %bits128, align 4, !tbaa !13
  %154 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and129 = and i32 %154, 7
  store i32 %and129, i32* %bits_left, align 4, !tbaa !10
  %155 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left130 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %155, i32 0, i32 7
  store i32 %and129, i32* %bits_left130, align 4, !tbaa !14
  %156 = load i8*, i8** %q, align 8, !tbaa !1
  %157 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf131 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %157, i32 0, i32 19
  %158 = load i8*, i8** %lbuf131, align 8, !tbaa !20
  %sub.ptr.lhs.cast132 = ptrtoint i8* %156 to i64
  %sub.ptr.rhs.cast133 = ptrtoint i8* %158 to i64
  %sub.ptr.sub134 = sub i64 %sub.ptr.lhs.cast132, %sub.ptr.rhs.cast133
  %conv135 = trunc i64 %sub.ptr.sub134 to i32
  %159 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos136 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %159, i32 0, i32 26
  store i32 %conv135, i32* %wpos136, align 4, !tbaa !33
  %160 = load i32, i32* %qbit, align 4, !tbaa !10
  %161 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit137 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %161, i32 0, i32 22
  store i32 %160, i32* %cbit137, align 4, !tbaa !27
  %162 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %163 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %call138 = call i32 @get_run(%struct.stream_CFD_state_s* %162, %struct.stream_cursor_read_s* %163, %struct.hcd_code_s* getelementptr inbounds ([0 x %struct.hcd_code_s], [0 x %struct.hcd_code_s]* @cf_black_decode, i32 0, i32 0), i32 7, i32 2, i32* %bcnt, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #5
  store i32 %call138, i32* %status, align 4, !tbaa !10
  %164 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr139 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %164, i32 0, i32 0
  %165 = load i8*, i8** %ptr139, align 8, !tbaa !38
  store i8* %165, i8** %p, align 8, !tbaa !1
  %166 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit140 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %166, i32 0, i32 1
  %167 = load i8*, i8** %limit140, align 8, !tbaa !40
  store i8* %167, i8** %rlimit, align 8, !tbaa !1
  %168 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits141 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %168, i32 0, i32 6
  %169 = load i32, i32* %bits141, align 4, !tbaa !13
  store i32 %169, i32* %bits, align 4, !tbaa !10
  %170 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left142 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %170, i32 0, i32 7
  %171 = load i32, i32* %bits_left142, align 4, !tbaa !14
  store i32 %171, i32* %bits_left, align 4, !tbaa !10
  %172 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf143 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %172, i32 0, i32 19
  %173 = load i8*, i8** %lbuf143, align 8, !tbaa !20
  %174 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos144 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %174, i32 0, i32 26
  %175 = load i32, i32* %wpos144, align 4, !tbaa !33
  %idx.ext145 = sext i32 %175 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %173, i64 %idx.ext145
  store i8* %add.ptr146, i8** %q, align 8, !tbaa !1
  %176 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit147 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %176, i32 0, i32 22
  %177 = load i32, i32* %cbit147, align 4, !tbaa !27
  store i32 %177, i32* %qbit, align 4, !tbaa !10
  %178 = load i32, i32* %status, align 4, !tbaa !10
  %cmp148 = icmp slt i32 %178, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %db
  br label %out1

if.end.151:                                       ; preds = %db
  %179 = load i32, i32* %bcnt, align 4, !tbaa !10
  %cmp152 = icmp slt i32 %179, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.151
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %out

if.end.155:                                       ; preds = %if.end.151
  %180 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr156 = ashr i32 %180, 3
  %181 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext157 = sext i32 %shr156 to i64
  %idx.neg158 = sub i64 0, %idx.ext157
  %add.ptr159 = getelementptr inbounds i8, i8* %181, i64 %idx.neg158
  store i8* %add.ptr159, i8** %p, align 8, !tbaa !1
  %182 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr160 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %182, i32 0, i32 0
  store i8* %add.ptr159, i8** %ptr160, align 8, !tbaa !38
  %183 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and161 = and i32 %183, -8
  %184 = load i32, i32* %bits, align 4, !tbaa !10
  %shr162 = lshr i32 %184, %and161
  store i32 %shr162, i32* %bits, align 4, !tbaa !10
  %185 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits163 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %185, i32 0, i32 6
  store i32 %shr162, i32* %bits163, align 4, !tbaa !13
  %186 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and164 = and i32 %186, 7
  store i32 %and164, i32* %bits_left, align 4, !tbaa !10
  %187 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left165 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %187, i32 0, i32 7
  store i32 %and164, i32* %bits_left165, align 4, !tbaa !14
  %188 = load i8*, i8** %q, align 8, !tbaa !1
  %189 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf166 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %189, i32 0, i32 19
  %190 = load i8*, i8** %lbuf166, align 8, !tbaa !20
  %sub.ptr.lhs.cast167 = ptrtoint i8* %188 to i64
  %sub.ptr.rhs.cast168 = ptrtoint i8* %190 to i64
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168
  %conv170 = trunc i64 %sub.ptr.sub169 to i32
  %191 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos171 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %191, i32 0, i32 26
  store i32 %conv170, i32* %wpos171, align 4, !tbaa !33
  %192 = load i32, i32* %qbit, align 4, !tbaa !10
  %193 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit172 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %193, i32 0, i32 22
  store i32 %192, i32* %cbit172, align 4, !tbaa !27
  %194 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %195 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %196 = load i8, i8* %black_byte, align 1, !tbaa !12
  %call173 = call i32 @invert_data(%struct.stream_CFD_state_s* %194, %struct.stream_cursor_read_s* %195, i32* %bcnt, i8 zeroext %196) #5
  store i32 %call173, i32* %status, align 4, !tbaa !10
  %197 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr174 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %197, i32 0, i32 0
  %198 = load i8*, i8** %ptr174, align 8, !tbaa !38
  store i8* %198, i8** %p, align 8, !tbaa !1
  %199 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit175 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %199, i32 0, i32 1
  %200 = load i8*, i8** %limit175, align 8, !tbaa !40
  store i8* %200, i8** %rlimit, align 8, !tbaa !1
  %201 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits176 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %201, i32 0, i32 6
  %202 = load i32, i32* %bits176, align 4, !tbaa !13
  store i32 %202, i32* %bits, align 4, !tbaa !10
  %203 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left177 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %203, i32 0, i32 7
  %204 = load i32, i32* %bits_left177, align 4, !tbaa !14
  store i32 %204, i32* %bits_left, align 4, !tbaa !10
  %205 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf178 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %205, i32 0, i32 19
  %206 = load i8*, i8** %lbuf178, align 8, !tbaa !20
  %207 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos179 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %207, i32 0, i32 26
  %208 = load i32, i32* %wpos179, align 4, !tbaa !33
  %idx.ext180 = sext i32 %208 to i64
  %add.ptr181 = getelementptr inbounds i8, i8* %206, i64 %idx.ext180
  store i8* %add.ptr181, i8** %q, align 8, !tbaa !1
  %209 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit182 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %209, i32 0, i32 22
  %210 = load i32, i32* %cbit182, align 4, !tbaa !27
  store i32 %210, i32* %qbit, align 4, !tbaa !10
  %211 = load i32, i32* %status, align 4, !tbaa !10
  %cmp183 = icmp slt i32 %211, 0
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.155
  br label %dbx

if.end.186:                                       ; preds = %if.end.155
  br label %top

dwx:                                              ; preds = %if.then.109
  store i32 -1, i32* %run_color, align 4, !tbaa !10
  br label %dw

dbx:                                              ; preds = %if.then.185
  store i32 2, i32* %run_color, align 4, !tbaa !10
  br label %db

done:                                             ; preds = %if.then.119, %if.then.16
  %212 = load i8*, i8** %q, align 8, !tbaa !1
  %213 = load i8*, i8** %stop, align 8, !tbaa !1
  %cmp187 = icmp ugt i8* %212, %213
  br i1 %cmp187, label %if.then.192, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %done
  %214 = load i32, i32* %qbit, align 4, !tbaa !10
  %215 = load i32, i32* %end_bit, align 4, !tbaa !10
  %cmp190 = icmp slt i32 %214, %215
  br i1 %cmp190, label %if.then.192, label %if.else.193

if.then.192:                                      ; preds = %lor.lhs.false.189, %done
  store i32 -2, i32* %status, align 4, !tbaa !10
  br label %if.end.194

if.else.193:                                      ; preds = %lor.lhs.false.189
  store i32 1, i32* %status, align 4, !tbaa !10
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.193, %if.then.192
  br label %out

out:                                              ; preds = %out1, %out0, %if.end.194, %if.then.154, %sw.default
  %216 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr195 = ashr i32 %216, 3
  %217 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext196 = sext i32 %shr195 to i64
  %idx.neg197 = sub i64 0, %idx.ext196
  %add.ptr198 = getelementptr inbounds i8, i8* %217, i64 %idx.neg197
  store i8* %add.ptr198, i8** %p, align 8, !tbaa !1
  %218 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr199 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %218, i32 0, i32 0
  store i8* %add.ptr198, i8** %ptr199, align 8, !tbaa !38
  %219 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and200 = and i32 %219, -8
  %220 = load i32, i32* %bits, align 4, !tbaa !10
  %shr201 = lshr i32 %220, %and200
  store i32 %shr201, i32* %bits, align 4, !tbaa !10
  %221 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits202 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %221, i32 0, i32 6
  store i32 %shr201, i32* %bits202, align 4, !tbaa !13
  %222 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and203 = and i32 %222, 7
  store i32 %and203, i32* %bits_left, align 4, !tbaa !10
  %223 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left204 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %223, i32 0, i32 7
  store i32 %and203, i32* %bits_left204, align 4, !tbaa !14
  %224 = load i8*, i8** %q, align 8, !tbaa !1
  %225 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf205 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %225, i32 0, i32 19
  %226 = load i8*, i8** %lbuf205, align 8, !tbaa !20
  %sub.ptr.lhs.cast206 = ptrtoint i8* %224 to i64
  %sub.ptr.rhs.cast207 = ptrtoint i8* %226 to i64
  %sub.ptr.sub208 = sub i64 %sub.ptr.lhs.cast206, %sub.ptr.rhs.cast207
  %conv209 = trunc i64 %sub.ptr.sub208 to i32
  %227 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos210 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %227, i32 0, i32 26
  store i32 %conv209, i32* %wpos210, align 4, !tbaa !33
  %228 = load i32, i32* %qbit, align 4, !tbaa !10
  %229 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit211 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %229, i32 0, i32 22
  store i32 %228, i32* %cbit211, align 4, !tbaa !27
  %230 = load i32, i32* %run_color, align 4, !tbaa !10
  %231 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %run_color212 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %231, i32 0, i32 29
  store i32 %230, i32* %run_color212, align 4, !tbaa !24
  br label %do.body.213

do.body.213:                                      ; preds = %out
  br label %do.cond.214

do.cond.214:                                      ; preds = %do.body.213
  br label %do.end.215

do.end.215:                                       ; preds = %do.cond.214
  %232 = load i32, i32* %status, align 4, !tbaa !10
  store i32 %232, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

out0:                                             ; preds = %if.then.40
  store i32 0, i32* %status, align 4, !tbaa !10
  br label %out

out1:                                             ; preds = %if.then.150
  store i32 0, i32* %status, align 4, !tbaa !10
  br label %out

cleanup:                                          ; preds = %do.end.215, %if.then.65
  %233 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #2
  %234 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #2
  %235 = bitcast i32* %run_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast i8** %stop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #2
  %237 = bitcast i32* %end_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #2
  call void @llvm.lifetime.end(i64 1, i8* %black_byte) #2
  %238 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #2
  %239 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #2
  %240 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #2
  %241 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #2
  %242 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #2
  %243 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %243) #2
  %244 = load i32, i32* %retval
  ret i32 %244
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @get_run(%struct.stream_CFD_state_s* %ss, %struct.stream_cursor_read_s* %pr, %struct.hcd_code_s* %decode, i32 %initial_bits, i32 %min_bits, i32* %runlen, i8* %str) #4 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_CFD_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %decode.addr = alloca %struct.hcd_code_s*, align 8
  %initial_bits.addr = alloca i32, align 4
  %min_bits.addr = alloca i32, align 4
  %runlen.addr = alloca i32*, align 8
  %str.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %q = alloca i8*, align 8
  %qbit = alloca i32, align 4
  %np = alloca %struct.hcd_code_s*, align 8
  %clen = alloca i32, align 4
  %c = alloca i32, align 4
  %c152 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_CFD_state_s* %ss, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.hcd_code_s* %decode, %struct.hcd_code_s** %decode.addr, align 8, !tbaa !1
  store i32 %initial_bits, i32* %initial_bits.addr, align 4, !tbaa !10
  store i32 %min_bits, i32* %min_bits.addr, align 4, !tbaa !10
  store i32* %runlen, i32** %runlen.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.hcd_code_s** %np to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %ptr, align 8, !tbaa !38
  store i8* %9, i8** %p, align 8, !tbaa !1
  %10 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %limit, align 8, !tbaa !40
  store i8* %11, i8** %rlimit, align 8, !tbaa !1
  %12 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %12, i32 0, i32 6
  %13 = load i32, i32* %bits1, align 4, !tbaa !13
  store i32 %13, i32* %bits, align 4, !tbaa !10
  %14 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left2 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %14, i32 0, i32 7
  %15 = load i32, i32* %bits_left2, align 4, !tbaa !14
  store i32 %15, i32* %bits_left, align 4, !tbaa !10
  %16 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %16, i32 0, i32 19
  %17 = load i8*, i8** %lbuf, align 8, !tbaa !20
  %18 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %18, i32 0, i32 26
  %19 = load i32, i32* %wpos, align 4, !tbaa !33
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  %20 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %20, i32 0, i32 22
  %21 = load i32, i32* %cbit, align 4, !tbaa !27
  store i32 %21, i32* %qbit, align 4, !tbaa !10
  %22 = load i32, i32* %bits_left, align 4, !tbaa !10
  %23 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %cmp = icmp sge i32 %22, %23
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.67

if.else:                                          ; preds = %entry
  %24 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp3 = icmp sge i64 %sub.ptr.sub, 3
  br i1 %cmp3, label %if.then.4, label %if.else.34

if.then.4:                                        ; preds = %if.else
  %26 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %26, i32 0, i32 5
  %27 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !43
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.5, label %if.else.19

if.then.5:                                        ; preds = %if.then.4
  %28 = load i32, i32* %bits, align 4, !tbaa !10
  %shl = shl i32 %28, 24
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %idxprom = zext i8 %30 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx6, align 1, !tbaa !12
  %conv = zext i8 %31 to i32
  %shl7 = shl i32 %conv, 16
  %add = add i32 %shl, %shl7
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx8, align 1, !tbaa !12
  %idxprom9 = zext i8 %33 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom9
  %34 = load i8, i8* %arrayidx10, align 1, !tbaa !12
  %conv11 = zext i8 %34 to i32
  %shl12 = shl i32 %conv11, 8
  %add13 = add i32 %add, %shl12
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load i8, i8* %arrayidx14, align 1, !tbaa !12
  %idxprom15 = zext i8 %36 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom15
  %37 = load i8, i8* %arrayidx16, align 1, !tbaa !12
  %conv17 = zext i8 %37 to i32
  %add18 = add i32 %add13, %conv17
  store i32 %add18, i32* %bits, align 4, !tbaa !10
  br label %if.end

if.else.19:                                       ; preds = %if.then.4
  %38 = load i32, i32* %bits, align 4, !tbaa !10
  %shl20 = shl i32 %38, 24
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx21, align 1, !tbaa !12
  %conv22 = zext i8 %40 to i32
  %shl23 = shl i32 %conv22, 16
  %add24 = add i32 %shl20, %shl23
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i8, i8* %arrayidx25, align 1, !tbaa !12
  %conv26 = zext i8 %42 to i32
  %shl27 = shl i32 %conv26, 8
  %add28 = add i32 %add24, %shl27
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %43, i64 3
  %44 = load i8, i8* %arrayidx29, align 1, !tbaa !12
  %conv30 = zext i8 %44 to i32
  %add31 = add i32 %add28, %conv30
  store i32 %add31, i32* %bits, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else.19, %if.then.5
  %45 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add32 = add nsw i32 %45, 24
  store i32 %add32, i32* %bits_left, align 4, !tbaa !10
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds i8, i8* %46, i64 3
  store i8* %add.ptr33, i8** %p, align 8, !tbaa !1
  br label %if.end.66

if.else.34:                                       ; preds = %if.else
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %48 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp35 = icmp ult i8* %47, %48
  br i1 %cmp35, label %if.then.37, label %if.else.49

if.then.37:                                       ; preds = %if.else.34
  %49 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %51 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %conv38 = zext i8 %51 to i32
  store i32 %conv38, i32* %c, align 4, !tbaa !10
  %52 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder39 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %52, i32 0, i32 5
  %53 = load i32, i32* %FirstBitLowOrder39, align 4, !tbaa !43
  %tobool40 = icmp ne i32 %53, 0
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.then.37
  %54 = load i32, i32* %c, align 4, !tbaa !10
  %idxprom42 = sext i32 %54 to i64
  %arrayidx43 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom42
  %55 = load i8, i8* %arrayidx43, align 1, !tbaa !12
  %conv44 = zext i8 %55 to i32
  store i32 %conv44, i32* %c, align 4, !tbaa !10
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.then.37
  %56 = load i32, i32* %bits, align 4, !tbaa !10
  %shl46 = shl i32 %56, 8
  %57 = load i32, i32* %c, align 4, !tbaa !10
  %add47 = add i32 %shl46, %57
  store i32 %add47, i32* %bits, align 4, !tbaa !10
  %58 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add48 = add nsw i32 %58, 8
  store i32 %add48, i32* %bits_left, align 4, !tbaa !10
  %59 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  br label %if.end.65

if.else.49:                                       ; preds = %if.else.34
  %60 = load i32, i32* %bits_left, align 4, !tbaa !10
  %61 = load i32, i32* %min_bits.addr, align 4, !tbaa !10
  %cmp50 = icmp slt i32 %60, %61
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.49
  br label %outl

if.end.53:                                        ; preds = %if.else.49
  %62 = load i32, i32* %bits, align 4, !tbaa !10
  %63 = load i32, i32* %bits_left, align 4, !tbaa !10
  %idxprom54 = sext i32 %63 to i64
  %arrayidx55 = getelementptr inbounds [9 x i8], [9 x i8]* @byte_right_mask, i32 0, i64 %idxprom54
  %64 = load i8, i8* %arrayidx55, align 1, !tbaa !12
  %conv56 = zext i8 %64 to i32
  %and = and i32 %62, %conv56
  %65 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %66 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub = sub nsw i32 %65, %66
  %shl57 = shl i32 %and, %sub
  %idxprom58 = zext i32 %shl57 to i64
  %67 = load %struct.hcd_code_s*, %struct.hcd_code_s** %decode.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct.hcd_code_s, %struct.hcd_code_s* %67, i64 %idxprom58
  store %struct.hcd_code_s* %arrayidx59, %struct.hcd_code_s** %np, align 8, !tbaa !1
  %68 = load %struct.hcd_code_s*, %struct.hcd_code_s** %np, align 8, !tbaa !1
  %code_length = getelementptr inbounds %struct.hcd_code_s, %struct.hcd_code_s* %68, i32 0, i32 1
  %69 = load i16, i16* %code_length, align 2, !tbaa !47
  %conv60 = zext i16 %69 to i32
  store i32 %conv60, i32* %clen, align 4, !tbaa !10
  %70 = load i32, i32* %bits_left, align 4, !tbaa !10
  %cmp61 = icmp sgt i32 %conv60, %70
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.53
  br label %outl

if.end.64:                                        ; preds = %if.end.53
  br label %locl

if.end.65:                                        ; preds = %if.end.45
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %do.end
  %71 = load i32, i32* %bits, align 4, !tbaa !10
  %72 = load i32, i32* %bits_left, align 4, !tbaa !10
  %73 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %sub68 = sub nsw i32 %72, %73
  %shr = lshr i32 %71, %sub68
  %74 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %shl69 = shl i32 1, %74
  %sub70 = sub nsw i32 %shl69, 1
  %and71 = and i32 %shr, %sub70
  %idxprom72 = zext i32 %and71 to i64
  %75 = load %struct.hcd_code_s*, %struct.hcd_code_s** %decode.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.hcd_code_s, %struct.hcd_code_s* %75, i64 %idxprom72
  store %struct.hcd_code_s* %arrayidx73, %struct.hcd_code_s** %np, align 8, !tbaa !1
  %76 = load %struct.hcd_code_s*, %struct.hcd_code_s** %np, align 8, !tbaa !1
  %code_length74 = getelementptr inbounds %struct.hcd_code_s, %struct.hcd_code_s* %76, i32 0, i32 1
  %77 = load i16, i16* %code_length74, align 2, !tbaa !47
  %conv75 = zext i16 %77 to i32
  store i32 %conv75, i32* %clen, align 4, !tbaa !10
  %78 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %cmp76 = icmp sgt i32 %conv75, %78
  br i1 %cmp76, label %if.then.78, label %if.else.187

if.then.78:                                       ; preds = %if.end.67
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.body.79
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  %79 = load i32, i32* %bits_left, align 4, !tbaa !10
  %80 = load i32, i32* %clen, align 4, !tbaa !10
  %cmp82 = icmp sge i32 %79, %80
  br i1 %cmp82, label %if.end.94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.81
  %81 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast84 = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast85 = ptrtoint i8* %82 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %83 = load i32, i32* %clen, align 4, !tbaa !10
  %84 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub87 = sub nsw i32 %83, %84
  %sub88 = sub nsw i32 %sub87, 1
  %shr89 = ashr i32 %sub88, 3
  %conv90 = sext i32 %shr89 to i64
  %cmp91 = icmp sgt i64 %sub.ptr.sub86, %conv90
  br i1 %cmp91, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %lor.lhs.false
  br label %outl

if.end.94:                                        ; preds = %lor.lhs.false, %do.end.81
  %85 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %86 = load i32, i32* %clen, align 4, !tbaa !10
  %sub95 = sub nsw i32 %86, %85
  store i32 %sub95, i32* %clen, align 4, !tbaa !10
  %87 = load i32, i32* %initial_bits.addr, align 4, !tbaa !10
  %88 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub96 = sub nsw i32 %88, %87
  store i32 %sub96, i32* %bits_left, align 4, !tbaa !10
  br label %do.body.97

do.body.97:                                       ; preds = %if.end.94
  %89 = load i32, i32* %bits_left, align 4, !tbaa !10
  %90 = load i32, i32* %clen, align 4, !tbaa !10
  %cmp98 = icmp sge i32 %89, %90
  br i1 %cmp98, label %if.then.100, label %if.else.104

if.then.100:                                      ; preds = %do.body.97
  br label %do.body.101

do.body.101:                                      ; preds = %if.then.100
  br label %do.cond.102

do.cond.102:                                      ; preds = %do.body.101
  br label %do.end.103

do.end.103:                                       ; preds = %do.cond.102
  br label %if.end.168

if.else.104:                                      ; preds = %do.body.97
  %91 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast105 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast106 = ptrtoint i8* %92 to i64
  %sub.ptr.sub107 = sub i64 %sub.ptr.lhs.cast105, %sub.ptr.rhs.cast106
  %cmp108 = icmp sge i64 %sub.ptr.sub107, 3
  br i1 %cmp108, label %if.then.110, label %if.else.148

if.then.110:                                      ; preds = %if.else.104
  %93 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder111 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %93, i32 0, i32 5
  %94 = load i32, i32* %FirstBitLowOrder111, align 4, !tbaa !43
  %tobool112 = icmp ne i32 %94, 0
  br i1 %tobool112, label %if.then.113, label %if.else.132

if.then.113:                                      ; preds = %if.then.110
  %95 = load i32, i32* %bits, align 4, !tbaa !10
  %shl114 = shl i32 %95, 24
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx115, align 1, !tbaa !12
  %idxprom116 = zext i8 %97 to i64
  %arrayidx117 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom116
  %98 = load i8, i8* %arrayidx117, align 1, !tbaa !12
  %conv118 = zext i8 %98 to i32
  %shl119 = shl i32 %conv118, 16
  %add120 = add i32 %shl114, %shl119
  %99 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %99, i64 2
  %100 = load i8, i8* %arrayidx121, align 1, !tbaa !12
  %idxprom122 = zext i8 %100 to i64
  %arrayidx123 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom122
  %101 = load i8, i8* %arrayidx123, align 1, !tbaa !12
  %conv124 = zext i8 %101 to i32
  %shl125 = shl i32 %conv124, 8
  %add126 = add i32 %add120, %shl125
  %102 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i8, i8* %102, i64 3
  %103 = load i8, i8* %arrayidx127, align 1, !tbaa !12
  %idxprom128 = zext i8 %103 to i64
  %arrayidx129 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom128
  %104 = load i8, i8* %arrayidx129, align 1, !tbaa !12
  %conv130 = zext i8 %104 to i32
  %add131 = add i32 %add126, %conv130
  store i32 %add131, i32* %bits, align 4, !tbaa !10
  br label %if.end.145

if.else.132:                                      ; preds = %if.then.110
  %105 = load i32, i32* %bits, align 4, !tbaa !10
  %shl133 = shl i32 %105, 24
  %106 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load i8, i8* %arrayidx134, align 1, !tbaa !12
  %conv135 = zext i8 %107 to i32
  %shl136 = shl i32 %conv135, 16
  %add137 = add i32 %shl133, %shl136
  %108 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i8, i8* %108, i64 2
  %109 = load i8, i8* %arrayidx138, align 1, !tbaa !12
  %conv139 = zext i8 %109 to i32
  %shl140 = shl i32 %conv139, 8
  %add141 = add i32 %add137, %shl140
  %110 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i8, i8* %110, i64 3
  %111 = load i8, i8* %arrayidx142, align 1, !tbaa !12
  %conv143 = zext i8 %111 to i32
  %add144 = add i32 %add141, %conv143
  store i32 %add144, i32* %bits, align 4, !tbaa !10
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.132, %if.then.113
  %112 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add146 = add nsw i32 %112, 24
  store i32 %add146, i32* %bits_left, align 4, !tbaa !10
  %113 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr147 = getelementptr inbounds i8, i8* %113, i64 3
  store i8* %add.ptr147, i8** %p, align 8, !tbaa !1
  br label %if.end.167

if.else.148:                                      ; preds = %if.else.104
  %114 = load i8*, i8** %p, align 8, !tbaa !1
  %115 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp149 = icmp ult i8* %114, %115
  br i1 %cmp149, label %if.then.151, label %if.else.165

if.then.151:                                      ; preds = %if.else.148
  %116 = bitcast i32* %c152 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #2
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr153 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr153, i8** %p, align 8, !tbaa !1
  %118 = load i8, i8* %incdec.ptr153, align 1, !tbaa !12
  %conv154 = zext i8 %118 to i32
  store i32 %conv154, i32* %c152, align 4, !tbaa !10
  %119 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %FirstBitLowOrder155 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %119, i32 0, i32 5
  %120 = load i32, i32* %FirstBitLowOrder155, align 4, !tbaa !43
  %tobool156 = icmp ne i32 %120, 0
  br i1 %tobool156, label %if.then.157, label %if.end.161

if.then.157:                                      ; preds = %if.then.151
  %121 = load i32, i32* %c152, align 4, !tbaa !10
  %idxprom158 = sext i32 %121 to i64
  %arrayidx159 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom158
  %122 = load i8, i8* %arrayidx159, align 1, !tbaa !12
  %conv160 = zext i8 %122 to i32
  store i32 %conv160, i32* %c152, align 4, !tbaa !10
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.157, %if.then.151
  %123 = load i32, i32* %bits, align 4, !tbaa !10
  %shl162 = shl i32 %123, 8
  %124 = load i32, i32* %c152, align 4, !tbaa !10
  %add163 = add i32 %shl162, %124
  store i32 %add163, i32* %bits, align 4, !tbaa !10
  %125 = load i32, i32* %bits_left, align 4, !tbaa !10
  %add164 = add nsw i32 %125, 8
  store i32 %add164, i32* %bits_left, align 4, !tbaa !10
  %126 = bitcast i32* %c152 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  br label %if.end.166

if.else.165:                                      ; preds = %if.else.148
  br label %outl

if.end.166:                                       ; preds = %if.end.161
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.145
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %do.end.103
  br label %do.cond.169

do.cond.169:                                      ; preds = %if.end.168
  br label %do.end.170

do.end.170:                                       ; preds = %do.cond.169
  %127 = load %struct.hcd_code_s*, %struct.hcd_code_s** %np, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.hcd_code_s, %struct.hcd_code_s* %127, i32 0, i32 0
  %128 = load i16, i16* %value, align 2, !tbaa !50
  %conv171 = sext i16 %128 to i32
  %129 = load i32, i32* %bits, align 4, !tbaa !10
  %130 = load i32, i32* %bits_left, align 4, !tbaa !10
  %131 = load i32, i32* %clen, align 4, !tbaa !10
  %sub172 = sub nsw i32 %130, %131
  %shr173 = lshr i32 %129, %sub172
  %132 = load i32, i32* %clen, align 4, !tbaa !10
  %idxprom174 = sext i32 %132 to i64
  %arrayidx175 = getelementptr inbounds [9 x i8], [9 x i8]* @byte_right_mask, i32 0, i64 %idxprom174
  %133 = load i8, i8* %arrayidx175, align 1, !tbaa !12
  %conv176 = zext i8 %133 to i32
  %and177 = and i32 %shr173, %conv176
  %add178 = add i32 %conv171, %and177
  %idxprom179 = zext i32 %add178 to i64
  %134 = load %struct.hcd_code_s*, %struct.hcd_code_s** %decode.addr, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds %struct.hcd_code_s, %struct.hcd_code_s* %134, i64 %idxprom179
  store %struct.hcd_code_s* %arrayidx180, %struct.hcd_code_s** %np, align 8, !tbaa !1
  br label %do.body.181

do.body.181:                                      ; preds = %do.end.170
  br label %do.cond.182

do.cond.182:                                      ; preds = %do.body.181
  br label %do.end.183

do.end.183:                                       ; preds = %do.cond.182
  %135 = load %struct.hcd_code_s*, %struct.hcd_code_s** %np, align 8, !tbaa !1
  %code_length184 = getelementptr inbounds %struct.hcd_code_s, %struct.hcd_code_s* %135, i32 0, i32 1
  %136 = load i16, i16* %code_length184, align 2, !tbaa !47
  %conv185 = zext i16 %136 to i32
  %137 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub186 = sub nsw i32 %137, %conv185
  store i32 %sub186, i32* %bits_left, align 4, !tbaa !10
  br label %if.end.192

if.else.187:                                      ; preds = %if.end.67
  br label %locl

locl:                                             ; preds = %if.else.187, %if.end.64
  br label %do.body.188

do.body.188:                                      ; preds = %locl
  br label %do.cond.189

do.cond.189:                                      ; preds = %do.body.188
  br label %do.end.190

do.end.190:                                       ; preds = %do.cond.189
  %138 = load i32, i32* %clen, align 4, !tbaa !10
  %139 = load i32, i32* %bits_left, align 4, !tbaa !10
  %sub191 = sub nsw i32 %139, %138
  store i32 %sub191, i32* %bits_left, align 4, !tbaa !10
  br label %if.end.192

if.end.192:                                       ; preds = %do.end.190, %do.end.183
  %140 = load %struct.hcd_code_s*, %struct.hcd_code_s** %np, align 8, !tbaa !1
  %value193 = getelementptr inbounds %struct.hcd_code_s, %struct.hcd_code_s* %140, i32 0, i32 0
  %141 = load i16, i16* %value193, align 2, !tbaa !50
  %conv194 = sext i16 %141 to i32
  %142 = load i32*, i32** %runlen.addr, align 8, !tbaa !1
  store i32 %conv194, i32* %142, align 4, !tbaa !10
  %143 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr195 = ashr i32 %143, 3
  %144 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext196 = sext i32 %shr195 to i64
  %idx.neg = sub i64 0, %idx.ext196
  %add.ptr197 = getelementptr inbounds i8, i8* %144, i64 %idx.neg
  store i8* %add.ptr197, i8** %p, align 8, !tbaa !1
  %145 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr198 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %145, i32 0, i32 0
  store i8* %add.ptr197, i8** %ptr198, align 8, !tbaa !38
  %146 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and199 = and i32 %146, -8
  %147 = load i32, i32* %bits, align 4, !tbaa !10
  %shr200 = lshr i32 %147, %and199
  store i32 %shr200, i32* %bits, align 4, !tbaa !10
  %148 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits201 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %148, i32 0, i32 6
  store i32 %shr200, i32* %bits201, align 4, !tbaa !13
  %149 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and202 = and i32 %149, 7
  store i32 %and202, i32* %bits_left, align 4, !tbaa !10
  %150 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left203 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %150, i32 0, i32 7
  store i32 %and202, i32* %bits_left203, align 4, !tbaa !14
  %151 = load i8*, i8** %q, align 8, !tbaa !1
  %152 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf204 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %152, i32 0, i32 19
  %153 = load i8*, i8** %lbuf204, align 8, !tbaa !20
  %sub.ptr.lhs.cast205 = ptrtoint i8* %151 to i64
  %sub.ptr.rhs.cast206 = ptrtoint i8* %153 to i64
  %sub.ptr.sub207 = sub i64 %sub.ptr.lhs.cast205, %sub.ptr.rhs.cast206
  %conv208 = trunc i64 %sub.ptr.sub207 to i32
  %154 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos209 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %154, i32 0, i32 26
  store i32 %conv208, i32* %wpos209, align 4, !tbaa !33
  %155 = load i32, i32* %qbit, align 4, !tbaa !10
  %156 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit210 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %156, i32 0, i32 22
  store i32 %155, i32* %cbit210, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

outl:                                             ; preds = %if.else.165, %if.then.93, %if.then.63, %if.then.52
  %157 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr211 = ashr i32 %157, 3
  %158 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext212 = sext i32 %shr211 to i64
  %idx.neg213 = sub i64 0, %idx.ext212
  %add.ptr214 = getelementptr inbounds i8, i8* %158, i64 %idx.neg213
  store i8* %add.ptr214, i8** %p, align 8, !tbaa !1
  %159 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr215 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %159, i32 0, i32 0
  store i8* %add.ptr214, i8** %ptr215, align 8, !tbaa !38
  %160 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and216 = and i32 %160, -8
  %161 = load i32, i32* %bits, align 4, !tbaa !10
  %shr217 = lshr i32 %161, %and216
  store i32 %shr217, i32* %bits, align 4, !tbaa !10
  %162 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits218 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %162, i32 0, i32 6
  store i32 %shr217, i32* %bits218, align 4, !tbaa !13
  %163 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and219 = and i32 %163, 7
  store i32 %and219, i32* %bits_left, align 4, !tbaa !10
  %164 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left220 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %164, i32 0, i32 7
  store i32 %and219, i32* %bits_left220, align 4, !tbaa !14
  %165 = load i8*, i8** %q, align 8, !tbaa !1
  %166 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf221 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %166, i32 0, i32 19
  %167 = load i8*, i8** %lbuf221, align 8, !tbaa !20
  %sub.ptr.lhs.cast222 = ptrtoint i8* %165 to i64
  %sub.ptr.rhs.cast223 = ptrtoint i8* %167 to i64
  %sub.ptr.sub224 = sub i64 %sub.ptr.lhs.cast222, %sub.ptr.rhs.cast223
  %conv225 = trunc i64 %sub.ptr.sub224 to i32
  %168 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos226 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %168, i32 0, i32 26
  store i32 %conv225, i32* %wpos226, align 4, !tbaa !33
  %169 = load i32, i32* %qbit, align 4, !tbaa !10
  %170 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit227 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %170, i32 0, i32 22
  store i32 %169, i32* %cbit227, align 4, !tbaa !27
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %outl, %if.end.192
  %171 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast %struct.hcd_code_s** %np to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #2
  %173 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %175 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #2
  %179 = load i32, i32* %retval
  ret i32 %179
}

; Function Attrs: nounwind uwtable
define internal i32 @cf_decode_uncompressed(%struct.stream_CFD_state_s* %ss, %struct.stream_cursor_read_s* %pr) #0 {
entry:
  %ss.addr = alloca %struct.stream_CFD_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  store %struct.stream_CFD_state_s* %ss, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  ret i32 -2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @invert_data(%struct.stream_CFD_state_s* %ss, %struct.stream_cursor_read_s* %pr, i32* %rlen, i8 zeroext %black_byte) #4 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_CFD_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %rlen.addr = alloca i32*, align 8
  %black_byte.addr = alloca i8, align 1
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %q = alloca i8*, align 8
  %qbit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_CFD_state_s* %ss, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store i32* %rlen, i32** %rlen.addr, align 8, !tbaa !1
  store i8 %black_byte, i8* %black_byte.addr, align 1, !tbaa !12
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8, !tbaa !38
  store i8* %7, i8** %p, align 8, !tbaa !1
  %8 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %limit, align 8, !tbaa !40
  store i8* %9, i8** %rlimit, align 8, !tbaa !1
  %10 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %10, i32 0, i32 6
  %11 = load i32, i32* %bits1, align 4, !tbaa !13
  store i32 %11, i32* %bits, align 4, !tbaa !10
  %12 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left2 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %12, i32 0, i32 7
  %13 = load i32, i32* %bits_left2, align 4, !tbaa !14
  store i32 %13, i32* %bits_left, align 4, !tbaa !10
  %14 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %14, i32 0, i32 19
  %15 = load i8*, i8** %lbuf, align 8, !tbaa !20
  %16 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %16, i32 0, i32 26
  %17 = load i32, i32* %wpos, align 4, !tbaa !33
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  %18 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %18, i32 0, i32 22
  %19 = load i32, i32* %cbit, align 4, !tbaa !27
  store i32 %19, i32* %qbit, align 4, !tbaa !10
  %20 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %21 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !10
  %23 = load i32, i32* %qbit, align 4, !tbaa !10
  %cmp = icmp sgt i32 %22, %23
  br i1 %cmp, label %if.then, label %if.else.64

if.then:                                          ; preds = %entry
  %24 = load i8*, i8** %q, align 8, !tbaa !1
  %25 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf3 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %25, i32 0, i32 19
  %26 = load i8*, i8** %lbuf3, align 8, !tbaa !20
  %cmp4 = icmp uge i8* %24, %26
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %27 = load i32, i32* %qbit, align 4, !tbaa !10
  %shl = shl i32 1, %27
  %sub = sub nsw i32 %shl, 1
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !12
  %conv = zext i8 %29 to i32
  %xor = xor i32 %conv, %sub
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, i8* %28, align 1, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %if.then
  %30 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr7, i8** %q, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %31 = load i32, i32* %qbit, align 4, !tbaa !10
  %32 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %33 = load i32, i32* %32, align 4, !tbaa !10
  %sub8 = sub nsw i32 %33, %31
  store i32 %sub8, i32* %32, align 4, !tbaa !10
  %34 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %35 = load i32, i32* %34, align 4, !tbaa !10
  %shr = ashr i32 %35, 3
  switch i32 %shr, label %sw.default [
    i32 7, label %sw.bb
    i32 6, label %sw.bb.14
    i32 5, label %sw.bb.16
    i32 4, label %sw.bb.18
    i32 3, label %sw.bb.20
    i32 2, label %sw.bb.22
    i32 1, label %sw.bb.24
    i32 0, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.end
  %36 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %37 = load i32, i32* %36, align 4, !tbaa !10
  %38 = load i32, i32* %qbit, align 4, !tbaa !10
  %add = add nsw i32 %37, %38
  %cmp9 = icmp sge i32 %add, 64
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb
  br label %d

if.end.12:                                        ; preds = %sw.bb
  %39 = load i8, i8* %black_byte.addr, align 1, !tbaa !12
  %40 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr13, i8** %q, align 8, !tbaa !1
  store i8 %39, i8* %40, align 1, !tbaa !12
  br label %sw.bb.14

sw.bb.14:                                         ; preds = %if.end, %if.end.12
  %41 = load i8, i8* %black_byte.addr, align 1, !tbaa !12
  %42 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr15, i8** %q, align 8, !tbaa !1
  store i8 %41, i8* %42, align 1, !tbaa !12
  br label %sw.bb.16

sw.bb.16:                                         ; preds = %if.end, %sw.bb.14
  %43 = load i8, i8* %black_byte.addr, align 1, !tbaa !12
  %44 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr17, i8** %q, align 8, !tbaa !1
  store i8 %43, i8* %44, align 1, !tbaa !12
  br label %sw.bb.18

sw.bb.18:                                         ; preds = %if.end, %sw.bb.16
  %45 = load i8, i8* %black_byte.addr, align 1, !tbaa !12
  %46 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr19, i8** %q, align 8, !tbaa !1
  store i8 %45, i8* %46, align 1, !tbaa !12
  br label %sw.bb.20

sw.bb.20:                                         ; preds = %if.end, %sw.bb.18
  %47 = load i8, i8* %black_byte.addr, align 1, !tbaa !12
  %48 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr21, i8** %q, align 8, !tbaa !1
  store i8 %47, i8* %48, align 1, !tbaa !12
  br label %sw.bb.22

sw.bb.22:                                         ; preds = %if.end, %sw.bb.20
  %49 = load i8, i8* %black_byte.addr, align 1, !tbaa !12
  %50 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr23, i8** %q, align 8, !tbaa !1
  store i8 %49, i8* %50, align 1, !tbaa !12
  br label %sw.bb.24

sw.bb.24:                                         ; preds = %if.end, %sw.bb.22
  %51 = load i8, i8* %black_byte.addr, align 1, !tbaa !12
  %52 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %51, i8* %52, align 1, !tbaa !12
  %53 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %54 = load i32, i32* %53, align 4, !tbaa !10
  %and = and i32 %54, 7
  store i32 %and, i32* %53, align 4, !tbaa !10
  %55 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %56 = load i32, i32* %55, align 4, !tbaa !10
  %tobool = icmp ne i32 %56, 0
  br i1 %tobool, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %sw.bb.24
  store i32 0, i32* %qbit, align 4, !tbaa !10
  br label %sw.epilog

if.end.26:                                        ; preds = %sw.bb.24
  %57 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr27, i8** %q, align 8, !tbaa !1
  br label %sw.bb.28

sw.bb.28:                                         ; preds = %if.end, %if.end.26
  %58 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %59 = load i32, i32* %58, align 4, !tbaa !10
  %sub29 = sub nsw i32 8, %59
  store i32 %sub29, i32* %qbit, align 4, !tbaa !10
  %60 = load i32, i32* %qbit, align 4, !tbaa !10
  %shl30 = shl i32 255, %60
  %61 = load i8*, i8** %q, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !12
  %conv31 = zext i8 %62 to i32
  %xor32 = xor i32 %conv31, %shl30
  %conv33 = trunc i32 %xor32 to i8
  store i8 %conv33, i8* %61, align 1, !tbaa !12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %d

d:                                                ; preds = %sw.default, %if.then.11
  %63 = load i8*, i8** %q, align 8, !tbaa !1
  %64 = load i8, i8* %black_byte.addr, align 1, !tbaa !12
  %conv34 = zext i8 %64 to i32
  %65 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %66 = load i32, i32* %65, align 4, !tbaa !10
  %shr35 = ashr i32 %66, 3
  %conv36 = sext i32 %shr35 to i64
  %call = call i8* @memset(i8* %63, i32 %conv34, i64 %conv36) #6
  %67 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %68 = load i32, i32* %67, align 4, !tbaa !10
  %shr37 = ashr i32 %68, 3
  %69 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext38 = sext i32 %shr37 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %69, i64 %idx.ext38
  store i8* %add.ptr39, i8** %q, align 8, !tbaa !1
  %70 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %71 = load i32, i32* %70, align 4, !tbaa !10
  %and40 = and i32 %71, 7
  store i32 %and40, i32* %70, align 4, !tbaa !10
  %72 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %73 = load i32, i32* %72, align 4, !tbaa !10
  %tobool41 = icmp ne i32 %73, 0
  br i1 %tobool41, label %if.else.44, label %if.then.42

if.then.42:                                       ; preds = %d
  store i32 0, i32* %qbit, align 4, !tbaa !10
  %74 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %incdec.ptr43, i8** %q, align 8, !tbaa !1
  br label %if.end.50

if.else.44:                                       ; preds = %d
  %75 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %76 = load i32, i32* %75, align 4, !tbaa !10
  %sub45 = sub nsw i32 8, %76
  store i32 %sub45, i32* %qbit, align 4, !tbaa !10
  %77 = load i32, i32* %qbit, align 4, !tbaa !10
  %shl46 = shl i32 255, %77
  %78 = load i8*, i8** %q, align 8, !tbaa !1
  %79 = load i8, i8* %78, align 1, !tbaa !12
  %conv47 = zext i8 %79 to i32
  %xor48 = xor i32 %conv47, %shl46
  %conv49 = trunc i32 %xor48 to i8
  store i8 %conv49, i8* %78, align 1, !tbaa !12
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.44, %if.then.42
  %80 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr51 = ashr i32 %80, 3
  %81 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext52 = sext i32 %shr51 to i64
  %idx.neg = sub i64 0, %idx.ext52
  %add.ptr53 = getelementptr inbounds i8, i8* %81, i64 %idx.neg
  store i8* %add.ptr53, i8** %p, align 8, !tbaa !1
  %82 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr54 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %82, i32 0, i32 0
  store i8* %add.ptr53, i8** %ptr54, align 8, !tbaa !38
  %83 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and55 = and i32 %83, -8
  %84 = load i32, i32* %bits, align 4, !tbaa !10
  %shr56 = lshr i32 %84, %and55
  store i32 %shr56, i32* %bits, align 4, !tbaa !10
  %85 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits57 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %85, i32 0, i32 6
  store i32 %shr56, i32* %bits57, align 4, !tbaa !13
  %86 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and58 = and i32 %86, 7
  store i32 %and58, i32* %bits_left, align 4, !tbaa !10
  %87 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left59 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %87, i32 0, i32 7
  store i32 %and58, i32* %bits_left59, align 4, !tbaa !14
  %88 = load i8*, i8** %q, align 8, !tbaa !1
  %89 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf60 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %89, i32 0, i32 19
  %90 = load i8*, i8** %lbuf60, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %90 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv61 = trunc i64 %sub.ptr.sub to i32
  %91 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos62 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %91, i32 0, i32 26
  store i32 %conv61, i32* %wpos62, align 4, !tbaa !33
  %92 = load i32, i32* %qbit, align 4, !tbaa !10
  %93 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit63 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %93, i32 0, i32 22
  store i32 %92, i32* %cbit63, align 4, !tbaa !27
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.28, %if.then.25
  br label %if.end.72

if.else.64:                                       ; preds = %entry
  %94 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %95 = load i32, i32* %94, align 4, !tbaa !10
  %96 = load i32, i32* %qbit, align 4, !tbaa !10
  %sub65 = sub nsw i32 %96, %95
  store i32 %sub65, i32* %qbit, align 4, !tbaa !10
  %97 = load i32*, i32** %rlen.addr, align 8, !tbaa !1
  %98 = load i32, i32* %97, align 4, !tbaa !10
  %shl66 = shl i32 1, %98
  %sub67 = sub nsw i32 %shl66, 1
  %99 = load i32, i32* %qbit, align 4, !tbaa !10
  %shl68 = shl i32 %sub67, %99
  %100 = load i8*, i8** %q, align 8, !tbaa !1
  %101 = load i8, i8* %100, align 1, !tbaa !12
  %conv69 = zext i8 %101 to i32
  %xor70 = xor i32 %conv69, %shl68
  %conv71 = trunc i32 %xor70 to i8
  store i8 %conv71, i8* %100, align 1, !tbaa !12
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.64, %sw.epilog
  %102 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr73 = ashr i32 %102, 3
  %103 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext74 = sext i32 %shr73 to i64
  %idx.neg75 = sub i64 0, %idx.ext74
  %add.ptr76 = getelementptr inbounds i8, i8* %103, i64 %idx.neg75
  store i8* %add.ptr76, i8** %p, align 8, !tbaa !1
  %104 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr77 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %104, i32 0, i32 0
  store i8* %add.ptr76, i8** %ptr77, align 8, !tbaa !38
  %105 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and78 = and i32 %105, -8
  %106 = load i32, i32* %bits, align 4, !tbaa !10
  %shr79 = lshr i32 %106, %and78
  store i32 %shr79, i32* %bits, align 4, !tbaa !10
  %107 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits80 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %107, i32 0, i32 6
  store i32 %shr79, i32* %bits80, align 4, !tbaa !13
  %108 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and81 = and i32 %108, 7
  store i32 %and81, i32* %bits_left, align 4, !tbaa !10
  %109 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left82 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %109, i32 0, i32 7
  store i32 %and81, i32* %bits_left82, align 4, !tbaa !14
  %110 = load i8*, i8** %q, align 8, !tbaa !1
  %111 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf83 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %111, i32 0, i32 19
  %112 = load i8*, i8** %lbuf83, align 8, !tbaa !20
  %sub.ptr.lhs.cast84 = ptrtoint i8* %110 to i64
  %sub.ptr.rhs.cast85 = ptrtoint i8* %112 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %conv87 = trunc i64 %sub.ptr.sub86 to i32
  %113 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos88 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %113, i32 0, i32 26
  store i32 %conv87, i32* %wpos88, align 4, !tbaa !33
  %114 = load i32, i32* %qbit, align 4, !tbaa !10
  %115 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit89 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %115, i32 0, i32 22
  store i32 %114, i32* %cbit89, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.72, %if.end.50
  %116 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #2
  %121 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #2
  %122 = load i32, i32* %retval
  ret i32 %122
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @skip_data(%struct.stream_CFD_state_s* %ss, %struct.stream_cursor_read_s* %pr, i32 %rlen) #4 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca %struct.stream_CFD_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %rlen.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %bits = alloca i32, align 4
  %bits_left = alloca i32, align 4
  %q = alloca i8*, align 8
  %qbit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_CFD_state_s* %ss, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store i32 %rlen, i32* %rlen.addr, align 4, !tbaa !10
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8, !tbaa !38
  store i8* %7, i8** %p, align 8, !tbaa !1
  %8 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %limit, align 8, !tbaa !40
  store i8* %9, i8** %rlimit, align 8, !tbaa !1
  %10 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits1 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %10, i32 0, i32 6
  %11 = load i32, i32* %bits1, align 4, !tbaa !13
  store i32 %11, i32* %bits, align 4, !tbaa !10
  %12 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left2 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %12, i32 0, i32 7
  %13 = load i32, i32* %bits_left2, align 4, !tbaa !14
  store i32 %13, i32* %bits_left, align 4, !tbaa !10
  %14 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %14, i32 0, i32 19
  %15 = load i8*, i8** %lbuf, align 8, !tbaa !20
  %16 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %16, i32 0, i32 26
  %17 = load i32, i32* %wpos, align 4, !tbaa !33
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  %18 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %18, i32 0, i32 22
  %19 = load i32, i32* %cbit, align 4, !tbaa !27
  store i32 %19, i32* %qbit, align 4, !tbaa !10
  %20 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %21 = load i32, i32* %rlen.addr, align 4, !tbaa !10
  %22 = load i32, i32* %qbit, align 4, !tbaa !10
  %sub = sub nsw i32 %22, %21
  store i32 %sub, i32* %qbit, align 4, !tbaa !10
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %23 = load i32, i32* %qbit, align 4, !tbaa !10
  %shr = ashr i32 %23, 3
  %24 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext3 = sext i32 %shr to i64
  %idx.neg = sub i64 0, %idx.ext3
  %add.ptr4 = getelementptr inbounds i8, i8* %24, i64 %idx.neg
  store i8* %add.ptr4, i8** %q, align 8, !tbaa !1
  %25 = load i32, i32* %qbit, align 4, !tbaa !10
  %and = and i32 %25, 7
  store i32 %and, i32* %qbit, align 4, !tbaa !10
  %26 = load i32, i32* %rlen.addr, align 4, !tbaa !10
  %cmp5 = icmp sge i32 %26, 64
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %27 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr7 = ashr i32 %27, 3
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext8 = sext i32 %shr7 to i64
  %idx.neg9 = sub i64 0, %idx.ext8
  %add.ptr10 = getelementptr inbounds i8, i8* %28, i64 %idx.neg9
  store i8* %add.ptr10, i8** %p, align 8, !tbaa !1
  %29 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %29, i32 0, i32 0
  store i8* %add.ptr10, i8** %ptr11, align 8, !tbaa !38
  %30 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and12 = and i32 %30, -8
  %31 = load i32, i32* %bits, align 4, !tbaa !10
  %shr13 = lshr i32 %31, %and12
  store i32 %shr13, i32* %bits, align 4, !tbaa !10
  %32 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits14 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %32, i32 0, i32 6
  store i32 %shr13, i32* %bits14, align 4, !tbaa !13
  %33 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and15 = and i32 %33, 7
  store i32 %and15, i32* %bits_left, align 4, !tbaa !10
  %34 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left16 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %34, i32 0, i32 7
  store i32 %and15, i32* %bits_left16, align 4, !tbaa !14
  %35 = load i8*, i8** %q, align 8, !tbaa !1
  %36 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf17 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %36, i32 0, i32 19
  %37 = load i8*, i8** %lbuf17, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %38 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos18 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %38, i32 0, i32 26
  store i32 %conv, i32* %wpos18, align 4, !tbaa !33
  %39 = load i32, i32* %qbit, align 4, !tbaa !10
  %40 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit19 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %40, i32 0, i32 22
  store i32 %39, i32* %cbit19, align 4, !tbaa !27
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  %41 = load i32, i32* %bits_left, align 4, !tbaa !10
  %shr21 = ashr i32 %41, 3
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext22 = sext i32 %shr21 to i64
  %idx.neg23 = sub i64 0, %idx.ext22
  %add.ptr24 = getelementptr inbounds i8, i8* %42, i64 %idx.neg23
  store i8* %add.ptr24, i8** %p, align 8, !tbaa !1
  %43 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr25 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %43, i32 0, i32 0
  store i8* %add.ptr24, i8** %ptr25, align 8, !tbaa !38
  %44 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and26 = and i32 %44, -8
  %45 = load i32, i32* %bits, align 4, !tbaa !10
  %shr27 = lshr i32 %45, %and26
  store i32 %shr27, i32* %bits, align 4, !tbaa !10
  %46 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits28 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %46, i32 0, i32 6
  store i32 %shr27, i32* %bits28, align 4, !tbaa !13
  %47 = load i32, i32* %bits_left, align 4, !tbaa !10
  %and29 = and i32 %47, 7
  store i32 %and29, i32* %bits_left, align 4, !tbaa !10
  %48 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left30 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %48, i32 0, i32 7
  store i32 %and29, i32* %bits_left30, align 4, !tbaa !14
  %49 = load i8*, i8** %q, align 8, !tbaa !1
  %50 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %lbuf31 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %50, i32 0, i32 19
  %51 = load i8*, i8** %lbuf31, align 8, !tbaa !20
  %sub.ptr.lhs.cast32 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast33 = ptrtoint i8* %51 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %conv35 = trunc i64 %sub.ptr.sub34 to i32
  %52 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %wpos36 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %52, i32 0, i32 26
  store i32 %conv35, i32* %wpos36, align 4, !tbaa !33
  %53 = load i32, i32* %qbit, align 4, !tbaa !10
  %54 = load %struct.stream_CFD_state_s*, %struct.stream_CFD_state_s** %ss.addr, align 8, !tbaa !1
  %cbit37 = getelementptr inbounds %struct.stream_CFD_state_s, %struct.stream_CFD_state_s* %54, i32 0, i32 22
  store i32 %53, i32* %cbit37, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.6
  %55 = bitcast i32* %qbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = load i32, i32* %retval
  ret i32 %61
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 156}
!6 = !{!"stream_CFD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !2, i64 168, !2, i64 176, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !3, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 136}
!9 = !{!6, !7, i64 160}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 148}
!12 = !{!3, !3, i64 0}
!13 = !{!6, !7, i64 112}
!14 = !{!6, !7, i64 116}
!15 = !{!16, !2, i64 8}
!16 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28}
!17 = !{!18, !2, i64 64}
!18 = !{!"gs_memory_s", !2, i64 0, !19, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!19 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!20 = !{!6, !2, i64 168}
!21 = !{!6, !2, i64 176}
!22 = !{!6, !7, i64 124}
!23 = !{!6, !7, i64 184}
!24 = !{!6, !7, i64 216}
!25 = !{!6, !7, i64 220}
!26 = !{!6, !7, i64 224}
!27 = !{!6, !7, i64 188}
!28 = !{!6, !7, i64 228}
!29 = !{!6, !7, i64 140}
!30 = !{!6, !7, i64 144}
!31 = !{!6, !7, i64 192}
!32 = !{!6, !7, i64 196}
!33 = !{!6, !7, i64 204}
!34 = !{!6, !7, i64 200}
!35 = !{!6, !7, i64 208}
!36 = !{!6, !3, i64 212}
!37 = !{!6, !7, i64 24}
!38 = !{!39, !2, i64 0}
!39 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!40 = !{!39, !2, i64 8}
!41 = !{!6, !7, i64 132}
!42 = !{!6, !7, i64 128}
!43 = !{!6, !7, i64 108}
!44 = !{!6, !7, i64 152}
!45 = !{!18, !2, i64 24}
!46 = !{!6, !7, i64 120}
!47 = !{!48, !49, i64 2}
!48 = !{!"hcd_code_s", !49, i64 0, !49, i64 2}
!49 = !{!"short", !3, i64 0}
!50 = !{!48, !49, i64 0}
