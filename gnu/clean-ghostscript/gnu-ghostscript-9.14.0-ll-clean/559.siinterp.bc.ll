; ModuleID = './siinterp.bc'
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
%struct.stream_IIEncode_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.gx_dda_int_s, %struct.gx_dda_int_s, i32, i32, %struct.gx_dda_int_s, i32, i32 }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_dda_int_s = type { %struct.ia_, %struct.ie_ }
%struct.ia_ = type { i32, i32 }
%struct.ie_ = type { i32, i32, i32 }

@st_IIEncode_state = internal constant %struct.gs_memory_struct_type_s { i32 328, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @iiencode_state_reloc_ptrs to i8*) }, align 8
@s_IIEncode_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_IIEncode_state, i32 (%struct.stream_state_s*)* @s_IIEncode_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_IIEncode_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_IIEncode_release, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [29 x i8] c"ImageInterpolateEncode state\00", align 1
@iiencode_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @iiencode_state_enum_ptrs, i32 0, i32 0) }, align 8
@iiencode_state_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 224 }, %struct.gc_ptr_element_s { i16 0, i16 232 }], align 2
@.str.1 = private unnamed_addr constant [14 x i8] c"IIEncode prev\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"IIEncode cur\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_IIEncode_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_IIEncode_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IIEncode_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IIEncode_state_s*
  store %struct.stream_IIEncode_state_s* %2, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %6, i32 0, i32 5
  %BitsPerComponentIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 6
  %7 = load i32, i32* %BitsPerComponentIn, align 4, !tbaa !12
  %div = sdiv i32 %7, 8
  %8 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %8, i32 0, i32 5
  %spp_interp = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params1, i32 0, i32 1
  %9 = load i32, i32* %spp_interp, align 4, !tbaa !13
  %mul = mul nsw i32 %div, %9
  %10 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %10, i32 0, i32 6
  store i32 %mul, i32* %sizeofPixelIn, align 4, !tbaa !14
  %11 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %11, i32 0, i32 5
  %BitsPerComponentOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params2, i32 0, i32 8
  %12 = load i32, i32* %BitsPerComponentOut, align 4, !tbaa !15
  %div3 = sdiv i32 %12, 8
  %13 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %13, i32 0, i32 5
  %spp_interp5 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params4, i32 0, i32 1
  %14 = load i32, i32* %spp_interp5, align 4, !tbaa !13
  %mul6 = mul nsw i32 %div3, %14
  %15 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %15, i32 0, i32 7
  store i32 %mul6, i32* %sizeofPixelOut, align 4, !tbaa !16
  %16 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn7 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %16, i32 0, i32 6
  %17 = load i32, i32* %sizeofPixelIn7, align 4, !tbaa !14
  %18 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %18, i32 0, i32 5
  %WidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params8, i32 0, i32 10
  %19 = load i32, i32* %WidthIn, align 4, !tbaa !17
  %mul9 = mul nsw i32 %17, %19
  %20 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_size = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %20, i32 0, i32 8
  store i32 %mul9, i32* %src_size, align 4, !tbaa !18
  %21 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut10 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %21, i32 0, i32 7
  %22 = load i32, i32* %sizeofPixelOut10, align 4, !tbaa !16
  %23 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %23, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params11, i32 0, i32 12
  %24 = load i32, i32* %WidthOut, align 4, !tbaa !19
  %mul12 = mul nsw i32 %22, %24
  %25 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_size = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %25, i32 0, i32 9
  store i32 %mul12, i32* %dst_size, align 4, !tbaa !20
  %26 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_x = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %26, i32 0, i32 13
  store i32 0, i32* %dst_x, align 4, !tbaa !21
  %27 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_offset = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %27, i32 0, i32 20
  store i32 0, i32* %dst_offset, align 4, !tbaa !22
  %28 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_offset = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %28, i32 0, i32 19
  store i32 0, i32* %src_offset, align 4, !tbaa !23
  br label %do.body

do.body:                                          ; preds = %entry
  %29 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %29, i32 0, i32 14
  %state = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x, i32 0, i32 0
  %Q = getelementptr inbounds %struct.ia_, %struct.ia_* %state, i32 0, i32 0
  store i32 0, i32* %Q, align 4, !tbaa !24
  %30 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %30, i32 0, i32 5
  %WidthOut14 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params13, i32 0, i32 12
  %31 = load i32, i32* %WidthOut14, align 4, !tbaa !19
  %sub = sub nsw i32 %31, 1
  %32 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x15 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %32, i32 0, i32 14
  %state16 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x15, i32 0, i32 0
  %R = getelementptr inbounds %struct.ia_, %struct.ia_* %state16, i32 0, i32 1
  store i32 %sub, i32* %R, align 4, !tbaa !25
  br label %do.body.17

do.body.17:                                       ; preds = %do.body
  %33 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %33, i32 0, i32 5
  %WidthOut19 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params18, i32 0, i32 12
  %34 = load i32, i32* %WidthOut19, align 4, !tbaa !19
  %cmp = icmp eq i32 %34, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body.17
  %35 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x20 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %35, i32 0, i32 14
  %step = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x20, i32 0, i32 1
  %dQ = getelementptr inbounds %struct.ie_, %struct.ie_* %step, i32 0, i32 0
  store i32 0, i32* %dQ, align 4, !tbaa !26
  %36 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x21 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %36, i32 0, i32 14
  %step22 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x21, i32 0, i32 1
  %dR = getelementptr inbounds %struct.ie_, %struct.ie_* %step22, i32 0, i32 1
  store i32 0, i32* %dR, align 4, !tbaa !27
  br label %if.end.77

if.else:                                          ; preds = %do.body.17
  %37 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %37, i32 0, i32 5
  %WidthIn24 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params23, i32 0, i32 10
  %38 = load i32, i32* %WidthIn24, align 4, !tbaa !17
  %cmp25 = icmp slt i32 %38, 0
  br i1 %cmp25, label %if.then.26, label %if.else.59

if.then.26:                                       ; preds = %if.else
  %39 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %39, i32 0, i32 5
  %WidthIn28 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params27, i32 0, i32 10
  %40 = load i32, i32* %WidthIn28, align 4, !tbaa !17
  %sub29 = sub nsw i32 0, %40
  %41 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %41, i32 0, i32 5
  %WidthOut31 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params30, i32 0, i32 12
  %42 = load i32, i32* %WidthOut31, align 4, !tbaa !19
  %div32 = udiv i32 %sub29, %42
  %sub33 = sub nsw i32 0, %div32
  %43 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x34 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %43, i32 0, i32 14
  %step35 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x34, i32 0, i32 1
  %dQ36 = getelementptr inbounds %struct.ie_, %struct.ie_* %step35, i32 0, i32 0
  store i32 %sub33, i32* %dQ36, align 4, !tbaa !26
  %44 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params37 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %44, i32 0, i32 5
  %WidthIn38 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params37, i32 0, i32 10
  %45 = load i32, i32* %WidthIn38, align 4, !tbaa !17
  %sub39 = sub nsw i32 0, %45
  %46 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %46, i32 0, i32 5
  %WidthOut41 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params40, i32 0, i32 12
  %47 = load i32, i32* %WidthOut41, align 4, !tbaa !19
  %rem = srem i32 %sub39, %47
  %48 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x42 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %48, i32 0, i32 14
  %step43 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x42, i32 0, i32 1
  %dR44 = getelementptr inbounds %struct.ie_, %struct.ie_* %step43, i32 0, i32 1
  store i32 %rem, i32* %dR44, align 4, !tbaa !27
  %cmp45 = icmp ne i32 %rem, 0
  br i1 %cmp45, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %if.then.26
  %49 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x47 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %49, i32 0, i32 14
  %step48 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x47, i32 0, i32 1
  %dQ49 = getelementptr inbounds %struct.ie_, %struct.ie_* %step48, i32 0, i32 0
  %50 = load i32, i32* %dQ49, align 4, !tbaa !26
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %dQ49, align 4, !tbaa !26
  %51 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params50 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %51, i32 0, i32 5
  %WidthOut51 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params50, i32 0, i32 12
  %52 = load i32, i32* %WidthOut51, align 4, !tbaa !19
  %53 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x52 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %53, i32 0, i32 14
  %step53 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x52, i32 0, i32 1
  %dR54 = getelementptr inbounds %struct.ie_, %struct.ie_* %step53, i32 0, i32 1
  %54 = load i32, i32* %dR54, align 4, !tbaa !27
  %sub55 = sub i32 %52, %54
  %55 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x56 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %55, i32 0, i32 14
  %step57 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x56, i32 0, i32 1
  %dR58 = getelementptr inbounds %struct.ie_, %struct.ie_* %step57, i32 0, i32 1
  store i32 %sub55, i32* %dR58, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then.46, %if.then.26
  br label %if.end.76

if.else.59:                                       ; preds = %if.else
  %56 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params60 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %56, i32 0, i32 5
  %WidthIn61 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params60, i32 0, i32 10
  %57 = load i32, i32* %WidthIn61, align 4, !tbaa !17
  %58 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params62 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %58, i32 0, i32 5
  %WidthOut63 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params62, i32 0, i32 12
  %59 = load i32, i32* %WidthOut63, align 4, !tbaa !19
  %div64 = sdiv i32 %57, %59
  %60 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x65 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %60, i32 0, i32 14
  %step66 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x65, i32 0, i32 1
  %dQ67 = getelementptr inbounds %struct.ie_, %struct.ie_* %step66, i32 0, i32 0
  store i32 %div64, i32* %dQ67, align 4, !tbaa !26
  %61 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params68 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %61, i32 0, i32 5
  %WidthIn69 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params68, i32 0, i32 10
  %62 = load i32, i32* %WidthIn69, align 4, !tbaa !17
  %63 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params70 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %63, i32 0, i32 5
  %WidthOut71 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params70, i32 0, i32 12
  %64 = load i32, i32* %WidthOut71, align 4, !tbaa !19
  %rem72 = srem i32 %62, %64
  %65 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x73 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %65, i32 0, i32 14
  %step74 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x73, i32 0, i32 1
  %dR75 = getelementptr inbounds %struct.ie_, %struct.ie_* %step74, i32 0, i32 1
  store i32 %rem72, i32* %dR75, align 4, !tbaa !27
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.59, %if.end
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then
  %66 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params78 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %66, i32 0, i32 5
  %WidthOut79 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params78, i32 0, i32 12
  %67 = load i32, i32* %WidthOut79, align 4, !tbaa !19
  %68 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x80 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %68, i32 0, i32 14
  %step81 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x80, i32 0, i32 1
  %N = getelementptr inbounds %struct.ie_, %struct.ie_* %step81, i32 0, i32 2
  store i32 %67, i32* %N, align 4, !tbaa !28
  br label %do.cond

do.cond:                                          ; preds = %if.end.77
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.82

do.cond.82:                                       ; preds = %do.end
  br label %do.end.83

do.end.83:                                        ; preds = %do.cond.82
  %69 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x_init = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %69, i32 0, i32 15
  %70 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x84 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %70, i32 0, i32 14
  %71 = bitcast %struct.gx_dda_int_s* %dda_x_init to i8*
  %72 = bitcast %struct.gx_dda_int_s* %dda_x84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 20, i32 4, i1 false), !tbaa.struct !29
  %73 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_y = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %73, i32 0, i32 17
  store i32 0, i32* %dst_y, align 4, !tbaa !31
  %74 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_y = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %74, i32 0, i32 16
  store i32 0, i32* %src_y, align 4, !tbaa !32
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.83
  %75 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %75, i32 0, i32 18
  %state86 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y, i32 0, i32 0
  %Q87 = getelementptr inbounds %struct.ia_, %struct.ia_* %state86, i32 0, i32 0
  store i32 0, i32* %Q87, align 4, !tbaa !33
  %76 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params88 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %76, i32 0, i32 5
  %HeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params88, i32 0, i32 11
  %77 = load i32, i32* %HeightIn, align 4, !tbaa !34
  %sub89 = sub nsw i32 %77, 1
  %78 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y90 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %78, i32 0, i32 18
  %state91 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y90, i32 0, i32 0
  %R92 = getelementptr inbounds %struct.ia_, %struct.ia_* %state91, i32 0, i32 1
  store i32 %sub89, i32* %R92, align 4, !tbaa !35
  br label %do.body.93

do.body.93:                                       ; preds = %do.body.85
  %79 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params94 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %79, i32 0, i32 5
  %HeightIn95 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params94, i32 0, i32 11
  %80 = load i32, i32* %HeightIn95, align 4, !tbaa !34
  %cmp96 = icmp eq i32 %80, 0
  br i1 %cmp96, label %if.then.97, label %if.else.104

if.then.97:                                       ; preds = %do.body.93
  %81 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y98 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %81, i32 0, i32 18
  %step99 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y98, i32 0, i32 1
  %dQ100 = getelementptr inbounds %struct.ie_, %struct.ie_* %step99, i32 0, i32 0
  store i32 0, i32* %dQ100, align 4, !tbaa !36
  %82 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y101 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %82, i32 0, i32 18
  %step102 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y101, i32 0, i32 1
  %dR103 = getelementptr inbounds %struct.ie_, %struct.ie_* %step102, i32 0, i32 1
  store i32 0, i32* %dR103, align 4, !tbaa !37
  br label %if.end.161

if.else.104:                                      ; preds = %do.body.93
  %83 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params105 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %83, i32 0, i32 5
  %HeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params105, i32 0, i32 13
  %84 = load i32, i32* %HeightOut, align 4, !tbaa !38
  %cmp106 = icmp slt i32 %84, 0
  br i1 %cmp106, label %if.then.107, label %if.else.143

if.then.107:                                      ; preds = %if.else.104
  %85 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params108 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %85, i32 0, i32 5
  %HeightOut109 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params108, i32 0, i32 13
  %86 = load i32, i32* %HeightOut109, align 4, !tbaa !38
  %sub110 = sub nsw i32 0, %86
  %87 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params111 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %87, i32 0, i32 5
  %HeightIn112 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params111, i32 0, i32 11
  %88 = load i32, i32* %HeightIn112, align 4, !tbaa !34
  %div113 = udiv i32 %sub110, %88
  %sub114 = sub nsw i32 0, %div113
  %89 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y115 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %89, i32 0, i32 18
  %step116 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y115, i32 0, i32 1
  %dQ117 = getelementptr inbounds %struct.ie_, %struct.ie_* %step116, i32 0, i32 0
  store i32 %sub114, i32* %dQ117, align 4, !tbaa !36
  %90 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params118 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %90, i32 0, i32 5
  %HeightOut119 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params118, i32 0, i32 13
  %91 = load i32, i32* %HeightOut119, align 4, !tbaa !38
  %sub120 = sub nsw i32 0, %91
  %92 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params121 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %92, i32 0, i32 5
  %HeightIn122 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params121, i32 0, i32 11
  %93 = load i32, i32* %HeightIn122, align 4, !tbaa !34
  %rem123 = srem i32 %sub120, %93
  %94 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y124 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %94, i32 0, i32 18
  %step125 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y124, i32 0, i32 1
  %dR126 = getelementptr inbounds %struct.ie_, %struct.ie_* %step125, i32 0, i32 1
  store i32 %rem123, i32* %dR126, align 4, !tbaa !37
  %cmp127 = icmp ne i32 %rem123, 0
  br i1 %cmp127, label %if.then.128, label %if.end.142

if.then.128:                                      ; preds = %if.then.107
  %95 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y129 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %95, i32 0, i32 18
  %step130 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y129, i32 0, i32 1
  %dQ131 = getelementptr inbounds %struct.ie_, %struct.ie_* %step130, i32 0, i32 0
  %96 = load i32, i32* %dQ131, align 4, !tbaa !36
  %dec132 = add nsw i32 %96, -1
  store i32 %dec132, i32* %dQ131, align 4, !tbaa !36
  %97 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params133 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %97, i32 0, i32 5
  %HeightIn134 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params133, i32 0, i32 11
  %98 = load i32, i32* %HeightIn134, align 4, !tbaa !34
  %99 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y135 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %99, i32 0, i32 18
  %step136 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y135, i32 0, i32 1
  %dR137 = getelementptr inbounds %struct.ie_, %struct.ie_* %step136, i32 0, i32 1
  %100 = load i32, i32* %dR137, align 4, !tbaa !37
  %sub138 = sub i32 %98, %100
  %101 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y139 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %101, i32 0, i32 18
  %step140 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y139, i32 0, i32 1
  %dR141 = getelementptr inbounds %struct.ie_, %struct.ie_* %step140, i32 0, i32 1
  store i32 %sub138, i32* %dR141, align 4, !tbaa !37
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.128, %if.then.107
  br label %if.end.160

if.else.143:                                      ; preds = %if.else.104
  %102 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params144 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %102, i32 0, i32 5
  %HeightOut145 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params144, i32 0, i32 13
  %103 = load i32, i32* %HeightOut145, align 4, !tbaa !38
  %104 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params146 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %104, i32 0, i32 5
  %HeightIn147 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params146, i32 0, i32 11
  %105 = load i32, i32* %HeightIn147, align 4, !tbaa !34
  %div148 = sdiv i32 %103, %105
  %106 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y149 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %106, i32 0, i32 18
  %step150 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y149, i32 0, i32 1
  %dQ151 = getelementptr inbounds %struct.ie_, %struct.ie_* %step150, i32 0, i32 0
  store i32 %div148, i32* %dQ151, align 4, !tbaa !36
  %107 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params152 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %107, i32 0, i32 5
  %HeightOut153 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params152, i32 0, i32 13
  %108 = load i32, i32* %HeightOut153, align 4, !tbaa !38
  %109 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params154 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %109, i32 0, i32 5
  %HeightIn155 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params154, i32 0, i32 11
  %110 = load i32, i32* %HeightIn155, align 4, !tbaa !34
  %rem156 = srem i32 %108, %110
  %111 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y157 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %111, i32 0, i32 18
  %step158 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y157, i32 0, i32 1
  %dR159 = getelementptr inbounds %struct.ie_, %struct.ie_* %step158, i32 0, i32 1
  store i32 %rem156, i32* %dR159, align 4, !tbaa !37
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.143, %if.end.142
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.97
  %112 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params162 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %112, i32 0, i32 5
  %HeightIn163 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params162, i32 0, i32 11
  %113 = load i32, i32* %HeightIn163, align 4, !tbaa !34
  %114 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y164 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %114, i32 0, i32 18
  %step165 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y164, i32 0, i32 1
  %N166 = getelementptr inbounds %struct.ie_, %struct.ie_* %step165, i32 0, i32 2
  store i32 %113, i32* %N166, align 4, !tbaa !39
  br label %do.cond.167

do.cond.167:                                      ; preds = %if.end.161
  br label %do.end.168

do.end.168:                                       ; preds = %do.cond.167
  br label %do.cond.169

do.cond.169:                                      ; preds = %do.end.168
  br label %do.end.170

do.end.170:                                       ; preds = %do.cond.169
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %115, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %116 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !40
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %118 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params171 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %118, i32 0, i32 5
  %WidthIn172 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params171, i32 0, i32 10
  %119 = load i32, i32* %WidthIn172, align 4, !tbaa !17
  %120 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut173 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %120, i32 0, i32 7
  %121 = load i32, i32* %sizeofPixelOut173, align 4, !tbaa !16
  %call = call i8* %116(%struct.gs_memory_s* %117, i32 %119, i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  %122 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %122, i32 0, i32 10
  store i8* %call, i8** %prev, align 8, !tbaa !43
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs174 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %123, i32 0, i32 1
  %alloc_byte_array175 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs174, i32 0, i32 10
  %124 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array175, align 8, !tbaa !40
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %126 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params176 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %126, i32 0, i32 5
  %WidthIn177 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params176, i32 0, i32 10
  %127 = load i32, i32* %WidthIn177, align 4, !tbaa !17
  %128 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut178 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %128, i32 0, i32 7
  %129 = load i32, i32* %sizeofPixelOut178, align 4, !tbaa !16
  %call179 = call i8* %124(%struct.gs_memory_s* %125, i32 %127, i32 %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #4
  %130 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %130, i32 0, i32 11
  store i8* %call179, i8** %cur, align 8, !tbaa !44
  %131 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %prev180 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %131, i32 0, i32 10
  %132 = load i8*, i8** %prev180, align 8, !tbaa !43
  %cmp181 = icmp eq i8* %132, null
  br i1 %cmp181, label %if.then.184, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.170
  %133 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %cur182 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %133, i32 0, i32 11
  %134 = load i8*, i8** %cur182, align 8, !tbaa !44
  %cmp183 = icmp eq i8* %134, null
  br i1 %cmp183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %lor.lhs.false, %do.end.170
  %135 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void @s_IIEncode_release(%struct.stream_state_s* %135) #4
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.185:                                       ; preds = %lor.lhs.false
  %136 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params186 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %136, i32 0, i32 5
  %BitsPerComponentIn187 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params186, i32 0, i32 6
  %137 = load i32, i32* %BitsPerComponentIn187, align 4, !tbaa !12
  %cmp188 = icmp eq i32 %137, 8
  br i1 %cmp188, label %cond.true, label %cond.false.211

cond.true:                                        ; preds = %if.end.185
  %138 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params189 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %138, i32 0, i32 5
  %BitsPerComponentOut190 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params189, i32 0, i32 8
  %139 = load i32, i32* %BitsPerComponentOut190, align 4, !tbaa !15
  %cmp191 = icmp eq i32 %139, 8
  br i1 %cmp191, label %cond.true.192, label %cond.false

cond.true.192:                                    ; preds = %cond.true
  %140 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params193 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %140, i32 0, i32 5
  %MaxValueIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params193, i32 0, i32 7
  %141 = load i32, i32* %MaxValueIn, align 4, !tbaa !45
  %142 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params194 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %142, i32 0, i32 5
  %MaxValueOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params194, i32 0, i32 9
  %143 = load i32, i32* %MaxValueOut, align 4, !tbaa !46
  %cmp195 = icmp eq i32 %141, %143
  %cond = select i1 %cmp195, i32 0, i32 2
  br label %cond.end.209

cond.false:                                       ; preds = %cond.true
  %144 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params196 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %144, i32 0, i32 5
  %MaxValueIn197 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params196, i32 0, i32 7
  %145 = load i32, i32* %MaxValueIn197, align 4, !tbaa !45
  %cmp198 = icmp eq i32 %145, 255
  br i1 %cmp198, label %land.lhs.true, label %cond.false.207

land.lhs.true:                                    ; preds = %cond.false
  %146 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params199 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %146, i32 0, i32 5
  %MaxValueOut200 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params199, i32 0, i32 9
  %147 = load i32, i32* %MaxValueOut200, align 4, !tbaa !46
  %cmp201 = icmp eq i32 %147, 32760
  br i1 %cmp201, label %cond.true.202, label %cond.false.207

cond.true.202:                                    ; preds = %land.lhs.true
  %148 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params203 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %148, i32 0, i32 5
  %spp_interp204 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params203, i32 0, i32 1
  %149 = load i32, i32* %spp_interp204, align 4, !tbaa !13
  %cmp205 = icmp eq i32 %149, 3
  %cond206 = select i1 %cmp205, i32 6, i32 4
  br label %cond.end

cond.false.207:                                   ; preds = %land.lhs.true, %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.207, %cond.true.202
  %cond208 = phi i32 [ %cond206, %cond.true.202 ], [ 8, %cond.false.207 ]
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.end, %cond.true.192
  %cond210 = phi i32 [ %cond, %cond.true.192 ], [ %cond208, %cond.end ]
  br label %cond.end.225

cond.false.211:                                   ; preds = %if.end.185
  %150 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params212 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %150, i32 0, i32 5
  %BitsPerComponentOut213 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params212, i32 0, i32 8
  %151 = load i32, i32* %BitsPerComponentOut213, align 4, !tbaa !15
  %cmp214 = icmp eq i32 %151, 8
  br i1 %cmp214, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %cond.false.211
  br label %cond.end.223

cond.false.216:                                   ; preds = %cond.false.211
  %152 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params217 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %152, i32 0, i32 5
  %MaxValueIn218 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params217, i32 0, i32 7
  %153 = load i32, i32* %MaxValueIn218, align 4, !tbaa !45
  %154 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params219 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %154, i32 0, i32 5
  %MaxValueOut220 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params219, i32 0, i32 9
  %155 = load i32, i32* %MaxValueOut220, align 4, !tbaa !46
  %cmp221 = icmp eq i32 %153, %155
  %cond222 = select i1 %cmp221, i32 0, i32 12
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.216, %cond.true.215
  %cond224 = phi i32 [ 10, %cond.true.215 ], [ %cond222, %cond.false.216 ]
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.end.223, %cond.end.209
  %cond226 = phi i32 [ %cond210, %cond.end.209 ], [ %cond224, %cond.end.223 ]
  %156 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %scale_case = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %156, i32 0, i32 12
  store i32 %cond226, i32* %scale_case, align 4, !tbaa !47
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.225, %if.then.184
  %157 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #2
  %158 = bitcast %struct.stream_IIEncode_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = load i32, i32* %retval
  ret i32 %159
}

; Function Attrs: nounwind uwtable
define internal i32 @s_IIEncode_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_IIEncode_state_s*, align 8
  %scale_case = alloca i32, align 4
  %out = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %sx = alloca i32, align 4
  %in = alloca i8*, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %b = alloca i32, align 4
  %value = alloca i32, align 4
  %b57 = alloca i32, align 4
  %value100 = alloca i32, align 4
  %value145 = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !30
  %0 = bitcast %struct.stream_IIEncode_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IIEncode_state_s*
  store %struct.stream_IIEncode_state_s* %2, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %scale_case to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %scale_case1 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %4, i32 0, i32 12
  %5 = load i32, i32* %scale_case1, align 4, !tbaa !47
  %6 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %ptr, align 8, !tbaa !48
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %and = and i64 %sub.ptr.sub, 1
  %conv = trunc i64 %and to i32
  %add = add i32 %5, %conv
  store i32 %add, i32* %scale_case, align 4, !tbaa !50
  %8 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %ptr2, align 8, !tbaa !48
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %add.ptr, i8** %out, align 8, !tbaa !1
  %11 = bitcast i8** %limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit3 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %12, i32 0, i32 2
  %13 = load i8*, i8** %limit3, align 8, !tbaa !51
  %add.ptr4 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %14, i32 0, i32 7
  %15 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !16
  %idx.ext = sext i32 %15 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr4, i64 %idx.neg
  store i8* %add.ptr5, i8** %limit, align 8, !tbaa !1
  br label %top

top:                                              ; preds = %do.end.293, %while.end, %entry
  %16 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %16, i32 0, i32 18
  %state = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y, i32 0, i32 0
  %Q = getelementptr inbounds %struct.ia_, %struct.ia_* %state, i32 0, i32 0
  %17 = load i32, i32* %Q, align 4, !tbaa !33
  %18 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_y = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %18, i32 0, i32 17
  %19 = load i32, i32* %dst_y, align 4, !tbaa !31
  %cmp = icmp sgt i32 %17, %19
  br i1 %cmp, label %if.then, label %if.end.196

if.then:                                          ; preds = %top
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.then
  %20 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_x = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %20, i32 0, i32 13
  %21 = load i32, i32* %dst_x, align 4, !tbaa !21
  %22 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %22, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 12
  %23 = load i32, i32* %WidthOut, align 4, !tbaa !19
  %cmp7 = icmp slt i32 %21, %23
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %25, i32 0, i32 14
  %state9 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x, i32 0, i32 0
  %Q10 = getelementptr inbounds %struct.ia_, %struct.ia_* %state9, i32 0, i32 0
  %26 = load i32, i32* %Q10, align 4, !tbaa !24
  %27 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %27, i32 0, i32 6
  %28 = load i32, i32* %sizeofPixelIn, align 4, !tbaa !14
  %mul = mul nsw i32 %26, %28
  store i32 %mul, i32* %sx, align 4, !tbaa !30
  %29 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %30, i32 0, i32 11
  %31 = load i8*, i8** %cur, align 8, !tbaa !44
  %32 = load i32, i32* %sx, align 4, !tbaa !30
  %idx.ext11 = zext i32 %32 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %31, i64 %idx.ext11
  store i8* %add.ptr12, i8** %in, align 8, !tbaa !1
  %33 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load i8*, i8** %out, align 8, !tbaa !1
  %35 = load i8*, i8** %limit, align 8, !tbaa !1
  %cmp13 = icmp ugt i8* %34, %35
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %while.body
  %36 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i8, i8* %36, i64 -1
  %37 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr17 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %37, i32 0, i32 1
  store i8* %add.ptr16, i8** %ptr17, align 8, !tbaa !48
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %38 = load i32, i32* %scale_case, align 4, !tbaa !50
  switch i32 %38, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.23
    i32 3, label %sw.bb.23
    i32 4, label %sw.bb.33
    i32 5, label %sw.bb.33
    i32 6, label %sw.bb.33
    i32 7, label %sw.bb.56
    i32 8, label %sw.bb.92
    i32 9, label %sw.bb.92
    i32 10, label %sw.bb.117
    i32 11, label %sw.bb.117
    i32 12, label %sw.bb.137
    i32 13, label %sw.bb.137
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %39 = load i8*, i8** %out, align 8, !tbaa !1
  %40 = load i8*, i8** %in, align 8, !tbaa !1
  %41 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn18 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %41, i32 0, i32 6
  %42 = load i32, i32* %sizeofPixelIn18, align 4, !tbaa !14
  %conv19 = sext i32 %42 to i64
  %call = call i8* @memcpy(i8* %39, i8* %40, i64 %conv19) #5
  %43 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn20 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %43, i32 0, i32 6
  %44 = load i32, i32* %sizeofPixelIn20, align 4, !tbaa !14
  %45 = load i8*, i8** %out, align 8, !tbaa !1
  %idx.ext21 = sext i32 %44 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %45, i64 %idx.ext21
  store i8* %add.ptr22, i8** %out, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end, %if.end
  %46 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %46, i32 0, i32 5
  %spp_interp = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params24, i32 0, i32 1
  %47 = load i32, i32* %spp_interp, align 4, !tbaa !13
  store i32 %47, i32* %c, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.23
  %48 = load i32, i32* %c, align 4, !tbaa !30
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %c, align 4, !tbaa !30
  %cmp25 = icmp sge i32 %dec, 0
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i8*, i8** %in, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !50
  %conv27 = zext i8 %50 to i32
  %51 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %51, i32 0, i32 5
  %MaxValueOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params28, i32 0, i32 9
  %52 = load i32, i32* %MaxValueOut, align 4, !tbaa !46
  %mul29 = mul i32 %conv27, %52
  %53 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %53, i32 0, i32 5
  %MaxValueIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params30, i32 0, i32 7
  %54 = load i32, i32* %MaxValueIn, align 4, !tbaa !45
  %div = udiv i32 %mul29, %54
  %conv31 = trunc i32 %div to i8
  %55 = load i8*, i8** %out, align 8, !tbaa !1
  store i8 %conv31, i8* %55, align 1, !tbaa !50
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %in, align 8, !tbaa !1
  %57 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr32, i8** %out, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end, %if.end, %if.end
  %58 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params34 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %58, i32 0, i32 5
  %spp_interp35 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params34, i32 0, i32 1
  %59 = load i32, i32* %spp_interp35, align 4, !tbaa !13
  store i32 %59, i32* %c, align 4, !tbaa !30
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.52, %sw.bb.33
  %60 = load i32, i32* %c, align 4, !tbaa !30
  %dec37 = add nsw i32 %60, -1
  store i32 %dec37, i32* %c, align 4, !tbaa !30
  %cmp38 = icmp sge i32 %dec37, 0
  br i1 %cmp38, label %for.body.40, label %for.end.55

for.body.40:                                      ; preds = %for.cond.36
  %61 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = load i8*, i8** %in, align 8, !tbaa !1
  %63 = load i8, i8* %62, align 1, !tbaa !50
  %conv41 = zext i8 %63 to i32
  store i32 %conv41, i32* %b, align 4, !tbaa !30
  %64 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = load i32, i32* %b, align 4, !tbaa !30
  %conv42 = trunc i32 %65 to i16
  %conv43 = sext i16 %conv42 to i32
  %shl = shl i32 %conv43, 7
  %66 = load i32, i32* %b, align 4, !tbaa !30
  %shr = lshr i32 %66, 1
  %add44 = add i32 %shl, %shr
  %67 = load i32, i32* %b, align 4, !tbaa !30
  %shr45 = lshr i32 %67, 5
  %sub = sub i32 %add44, %shr45
  %conv46 = trunc i32 %sub to i16
  %conv47 = sext i16 %conv46 to i32
  store i32 %conv47, i32* %value, align 4, !tbaa !30
  %68 = load i32, i32* %value, align 4, !tbaa !30
  %shr48 = lshr i32 %68, 8
  %conv49 = trunc i32 %shr48 to i8
  %69 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %conv49, i8* %arrayidx, align 1, !tbaa !50
  %70 = load i32, i32* %value, align 4, !tbaa !30
  %conv50 = trunc i32 %70 to i8
  %71 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 %conv50, i8* %arrayidx51, align 1, !tbaa !50
  %72 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.40
  %74 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr53, i8** %in, align 8, !tbaa !1
  %75 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr54 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %add.ptr54, i8** %out, align 8, !tbaa !1
  br label %for.cond.36

for.end.55:                                       ; preds = %for.cond.36
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end
  %76 = bitcast i32* %b57 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %77, i64 0
  %78 = load i8, i8* %arrayidx58, align 1, !tbaa !50
  %conv59 = zext i8 %78 to i32
  store i32 %conv59, i32* %b57, align 4, !tbaa !30
  %79 = load i32, i32* %b57, align 4, !tbaa !30
  %conv60 = trunc i32 %79 to i16
  %conv61 = sext i16 %conv60 to i32
  %shl62 = shl i32 %conv61, 7
  %80 = load i32, i32* %b57, align 4, !tbaa !30
  %shr63 = lshr i32 %80, 1
  %add64 = add i32 %shl62, %shr63
  %81 = load i32, i32* %b57, align 4, !tbaa !30
  %shr65 = lshr i32 %81, 5
  %sub66 = sub i32 %add64, %shr65
  %conv67 = trunc i32 %sub66 to i16
  %82 = load i8*, i8** %out, align 8, !tbaa !1
  %83 = bitcast i8* %82 to i16*
  %arrayidx68 = getelementptr inbounds i16, i16* %83, i64 0
  store i16 %conv67, i16* %arrayidx68, align 2, !tbaa !52
  %84 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx69, align 1, !tbaa !50
  %conv70 = zext i8 %85 to i32
  store i32 %conv70, i32* %b57, align 4, !tbaa !30
  %86 = load i32, i32* %b57, align 4, !tbaa !30
  %conv71 = trunc i32 %86 to i16
  %conv72 = sext i16 %conv71 to i32
  %shl73 = shl i32 %conv72, 7
  %87 = load i32, i32* %b57, align 4, !tbaa !30
  %shr74 = lshr i32 %87, 1
  %add75 = add i32 %shl73, %shr74
  %88 = load i32, i32* %b57, align 4, !tbaa !30
  %shr76 = lshr i32 %88, 5
  %sub77 = sub i32 %add75, %shr76
  %conv78 = trunc i32 %sub77 to i16
  %89 = load i8*, i8** %out, align 8, !tbaa !1
  %90 = bitcast i8* %89 to i16*
  %arrayidx79 = getelementptr inbounds i16, i16* %90, i64 1
  store i16 %conv78, i16* %arrayidx79, align 2, !tbaa !52
  %91 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %91, i64 2
  %92 = load i8, i8* %arrayidx80, align 1, !tbaa !50
  %conv81 = zext i8 %92 to i32
  store i32 %conv81, i32* %b57, align 4, !tbaa !30
  %93 = load i32, i32* %b57, align 4, !tbaa !30
  %conv82 = trunc i32 %93 to i16
  %conv83 = sext i16 %conv82 to i32
  %shl84 = shl i32 %conv83, 7
  %94 = load i32, i32* %b57, align 4, !tbaa !30
  %shr85 = lshr i32 %94, 1
  %add86 = add i32 %shl84, %shr85
  %95 = load i32, i32* %b57, align 4, !tbaa !30
  %shr87 = lshr i32 %95, 5
  %sub88 = sub i32 %add86, %shr87
  %conv89 = trunc i32 %sub88 to i16
  %96 = load i8*, i8** %out, align 8, !tbaa !1
  %97 = bitcast i8* %96 to i16*
  %arrayidx90 = getelementptr inbounds i16, i16* %97, i64 2
  store i16 %conv89, i16* %arrayidx90, align 2, !tbaa !52
  %98 = bitcast i32* %b57 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr91 = getelementptr inbounds i8, i8* %99, i64 6
  store i8* %add.ptr91, i8** %out, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end, %if.end
  %100 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params93 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %100, i32 0, i32 5
  %spp_interp94 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params93, i32 0, i32 1
  %101 = load i32, i32* %spp_interp94, align 4, !tbaa !13
  store i32 %101, i32* %c, align 4, !tbaa !30
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.113, %sw.bb.92
  %102 = load i32, i32* %c, align 4, !tbaa !30
  %dec96 = add nsw i32 %102, -1
  store i32 %dec96, i32* %c, align 4, !tbaa !30
  %cmp97 = icmp sge i32 %dec96, 0
  br i1 %cmp97, label %for.body.99, label %for.end.116

for.body.99:                                      ; preds = %for.cond.95
  %103 = bitcast i32* %value100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #2
  %104 = load i8*, i8** %in, align 8, !tbaa !1
  %105 = load i8, i8* %104, align 1, !tbaa !50
  %conv101 = zext i8 %105 to i32
  %106 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params102 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %106, i32 0, i32 5
  %MaxValueOut103 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params102, i32 0, i32 9
  %107 = load i32, i32* %MaxValueOut103, align 4, !tbaa !46
  %mul104 = mul i32 %conv101, %107
  %108 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params105 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %108, i32 0, i32 5
  %MaxValueIn106 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params105, i32 0, i32 7
  %109 = load i32, i32* %MaxValueIn106, align 4, !tbaa !45
  %div107 = udiv i32 %mul104, %109
  store i32 %div107, i32* %value100, align 4, !tbaa !30
  %110 = load i32, i32* %value100, align 4, !tbaa !30
  %shr108 = lshr i32 %110, 8
  %conv109 = trunc i32 %shr108 to i8
  %111 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 %conv109, i8* %arrayidx110, align 1, !tbaa !50
  %112 = load i32, i32* %value100, align 4, !tbaa !30
  %conv111 = trunc i32 %112 to i8
  %113 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %113, i64 1
  store i8 %conv111, i8* %arrayidx112, align 1, !tbaa !50
  %114 = bitcast i32* %value100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.99
  %115 = load i8*, i8** %in, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr114, i8** %in, align 8, !tbaa !1
  %116 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr115 = getelementptr inbounds i8, i8* %116, i64 2
  store i8* %add.ptr115, i8** %out, align 8, !tbaa !1
  br label %for.cond.95

for.end.116:                                      ; preds = %for.cond.95
  br label %sw.epilog

sw.bb.117:                                        ; preds = %if.end, %if.end
  %117 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params118 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %117, i32 0, i32 5
  %spp_interp119 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params118, i32 0, i32 1
  %118 = load i32, i32* %spp_interp119, align 4, !tbaa !13
  store i32 %118, i32* %c, align 4, !tbaa !30
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.133, %sw.bb.117
  %119 = load i32, i32* %c, align 4, !tbaa !30
  %dec121 = add nsw i32 %119, -1
  store i32 %dec121, i32* %c, align 4, !tbaa !30
  %cmp122 = icmp sge i32 %dec121, 0
  br i1 %cmp122, label %for.body.124, label %for.end.136

for.body.124:                                     ; preds = %for.cond.120
  %120 = load i8*, i8** %in, align 8, !tbaa !1
  %121 = bitcast i8* %120 to i16*
  %122 = load i16, i16* %121, align 2, !tbaa !52
  %conv125 = zext i16 %122 to i32
  %123 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params126 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %123, i32 0, i32 5
  %MaxValueOut127 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params126, i32 0, i32 9
  %124 = load i32, i32* %MaxValueOut127, align 4, !tbaa !46
  %mul128 = mul i32 %conv125, %124
  %125 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params129 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %125, i32 0, i32 5
  %MaxValueIn130 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params129, i32 0, i32 7
  %126 = load i32, i32* %MaxValueIn130, align 4, !tbaa !45
  %div131 = udiv i32 %mul128, %126
  %conv132 = trunc i32 %div131 to i8
  %127 = load i8*, i8** %out, align 8, !tbaa !1
  store i8 %conv132, i8* %127, align 1, !tbaa !50
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.124
  %128 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr134 = getelementptr inbounds i8, i8* %128, i64 2
  store i8* %add.ptr134, i8** %in, align 8, !tbaa !1
  %129 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr135 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr135, i8** %out, align 8, !tbaa !1
  br label %for.cond.120

for.end.136:                                      ; preds = %for.cond.120
  br label %sw.epilog

sw.bb.137:                                        ; preds = %if.end, %if.end
  %130 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params138 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %130, i32 0, i32 5
  %spp_interp139 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params138, i32 0, i32 1
  %131 = load i32, i32* %spp_interp139, align 4, !tbaa !13
  store i32 %131, i32* %c, align 4, !tbaa !30
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.158, %sw.bb.137
  %132 = load i32, i32* %c, align 4, !tbaa !30
  %dec141 = add nsw i32 %132, -1
  store i32 %dec141, i32* %c, align 4, !tbaa !30
  %cmp142 = icmp sge i32 %dec141, 0
  br i1 %cmp142, label %for.body.144, label %for.end.161

for.body.144:                                     ; preds = %for.cond.140
  %133 = bitcast i32* %value145 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #2
  %134 = load i8*, i8** %in, align 8, !tbaa !1
  %135 = bitcast i8* %134 to i16*
  %136 = load i16, i16* %135, align 2, !tbaa !52
  %conv146 = zext i16 %136 to i32
  %137 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params147 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %137, i32 0, i32 5
  %MaxValueOut148 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params147, i32 0, i32 9
  %138 = load i32, i32* %MaxValueOut148, align 4, !tbaa !46
  %mul149 = mul i32 %conv146, %138
  %139 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params150 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %139, i32 0, i32 5
  %MaxValueIn151 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params150, i32 0, i32 7
  %140 = load i32, i32* %MaxValueIn151, align 4, !tbaa !45
  %div152 = udiv i32 %mul149, %140
  store i32 %div152, i32* %value145, align 4, !tbaa !30
  %141 = load i32, i32* %value145, align 4, !tbaa !30
  %shr153 = lshr i32 %141, 8
  %conv154 = trunc i32 %shr153 to i8
  %142 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 %conv154, i8* %arrayidx155, align 1, !tbaa !50
  %143 = load i32, i32* %value145, align 4, !tbaa !30
  %conv156 = trunc i32 %143 to i8
  %144 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx157 = getelementptr inbounds i8, i8* %144, i64 1
  store i8 %conv156, i8* %arrayidx157, align 1, !tbaa !50
  %145 = bitcast i32* %value145 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.144
  %146 = load i8*, i8** %in, align 8, !tbaa !1
  %add.ptr159 = getelementptr inbounds i8, i8* %146, i64 2
  store i8* %add.ptr159, i8** %in, align 8, !tbaa !1
  %147 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr160 = getelementptr inbounds i8, i8* %147, i64 2
  store i8* %add.ptr160, i8** %out, align 8, !tbaa !1
  br label %for.cond.140

for.end.161:                                      ; preds = %for.cond.140
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.161, %if.end, %for.end.136, %for.end.116, %sw.bb.56, %for.end.55, %for.end, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %148 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x162 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %148, i32 0, i32 14
  %step = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x162, i32 0, i32 1
  %dR = getelementptr inbounds %struct.ie_, %struct.ie_* %step, i32 0, i32 1
  %149 = load i32, i32* %dR, align 4, !tbaa !27
  %150 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x163 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %150, i32 0, i32 14
  %state164 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x163, i32 0, i32 0
  %R = getelementptr inbounds %struct.ia_, %struct.ia_* %state164, i32 0, i32 1
  %151 = load i32, i32* %R, align 4, !tbaa !25
  %sub165 = sub i32 %151, %149
  store i32 %sub165, i32* %R, align 4, !tbaa !25
  %152 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x166 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %152, i32 0, i32 14
  %state167 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x166, i32 0, i32 0
  %R168 = getelementptr inbounds %struct.ia_, %struct.ia_* %state167, i32 0, i32 1
  %153 = load i32, i32* %R168, align 4, !tbaa !25
  %cmp169 = icmp slt i32 %153, 0
  br i1 %cmp169, label %if.then.171, label %if.end.181

if.then.171:                                      ; preds = %do.body
  %154 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x172 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %154, i32 0, i32 14
  %state173 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x172, i32 0, i32 0
  %Q174 = getelementptr inbounds %struct.ia_, %struct.ia_* %state173, i32 0, i32 0
  %155 = load i32, i32* %Q174, align 4, !tbaa !24
  %inc = add nsw i32 %155, 1
  store i32 %inc, i32* %Q174, align 4, !tbaa !24
  %156 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x175 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %156, i32 0, i32 14
  %step176 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x175, i32 0, i32 1
  %N = getelementptr inbounds %struct.ie_, %struct.ie_* %step176, i32 0, i32 2
  %157 = load i32, i32* %N, align 4, !tbaa !28
  %158 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x177 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %158, i32 0, i32 14
  %state178 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x177, i32 0, i32 0
  %R179 = getelementptr inbounds %struct.ia_, %struct.ia_* %state178, i32 0, i32 1
  %159 = load i32, i32* %R179, align 4, !tbaa !25
  %add180 = add i32 %159, %157
  store i32 %add180, i32* %R179, align 4, !tbaa !25
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.171, %do.body
  %160 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x182 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %160, i32 0, i32 14
  %step183 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x182, i32 0, i32 1
  %dQ = getelementptr inbounds %struct.ie_, %struct.ie_* %step183, i32 0, i32 0
  %161 = load i32, i32* %dQ, align 4, !tbaa !26
  %162 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x184 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %162, i32 0, i32 14
  %state185 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x184, i32 0, i32 0
  %Q186 = getelementptr inbounds %struct.ia_, %struct.ia_* %state185, i32 0, i32 0
  %163 = load i32, i32* %Q186, align 4, !tbaa !24
  %add187 = add nsw i32 %163, %161
  store i32 %add187, i32* %Q186, align 4, !tbaa !24
  br label %do.cond

do.cond:                                          ; preds = %if.end.181
  br label %do.end

do.end:                                           ; preds = %do.cond
  %164 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_x188 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %164, i32 0, i32 13
  %165 = load i32, i32* %dst_x188, align 4, !tbaa !21
  %inc189 = add nsw i32 %165, 1
  store i32 %inc189, i32* %dst_x188, align 4, !tbaa !21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.15
  %166 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  %168 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.294 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %169 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_x192 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %169, i32 0, i32 13
  store i32 0, i32* %dst_x192, align 4, !tbaa !21
  %170 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_y193 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %170, i32 0, i32 17
  %171 = load i32, i32* %dst_y193, align 4, !tbaa !31
  %inc194 = add nsw i32 %171, 1
  store i32 %inc194, i32* %dst_y193, align 4, !tbaa !31
  %172 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x195 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %172, i32 0, i32 14
  %173 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x_init = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %173, i32 0, i32 15
  %174 = bitcast %struct.gx_dda_int_s* %dda_x195 to i8*
  %175 = bitcast %struct.gx_dda_int_s* %dda_x_init to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* %175, i64 20, i32 4, i1 false), !tbaa.struct !29
  br label %top

if.end.196:                                       ; preds = %top
  %176 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr197 = getelementptr inbounds i8, i8* %176, i64 -1
  %177 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr198 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %177, i32 0, i32 1
  store i8* %add.ptr197, i8** %ptr198, align 8, !tbaa !48
  %178 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_y199 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %178, i32 0, i32 17
  %179 = load i32, i32* %dst_y199, align 4, !tbaa !31
  %180 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %params200 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %180, i32 0, i32 5
  %HeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params200, i32 0, i32 13
  %181 = load i32, i32* %HeightOut, align 4, !tbaa !38
  %cmp201 = icmp sge i32 %179, %181
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.196
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.294

if.end.204:                                       ; preds = %if.end.196
  %182 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_offset = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %182, i32 0, i32 19
  %183 = load i32, i32* %src_offset, align 4, !tbaa !23
  %184 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_size = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %184, i32 0, i32 8
  %185 = load i32, i32* %src_size, align 4, !tbaa !18
  %cmp205 = icmp ult i32 %183, %185
  br i1 %cmp205, label %if.then.207, label %if.end.254

if.then.207:                                      ; preds = %if.end.204
  %186 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #2
  %187 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_size208 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %187, i32 0, i32 8
  %188 = load i32, i32* %src_size208, align 4, !tbaa !18
  %189 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_offset209 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %189, i32 0, i32 19
  %190 = load i32, i32* %src_offset209, align 4, !tbaa !23
  %sub210 = sub i32 %188, %190
  %conv211 = zext i32 %sub210 to i64
  %191 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit212 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %191, i32 0, i32 1
  %192 = load i8*, i8** %limit212, align 8, !tbaa !54
  %193 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr213 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %193, i32 0, i32 0
  %194 = load i8*, i8** %ptr213, align 8, !tbaa !56
  %sub.ptr.lhs.cast214 = ptrtoint i8* %192 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %194 to i64
  %sub.ptr.sub215 = sub i64 %sub.ptr.lhs.cast214, %sub.ptr.rhs.cast
  %cmp216 = icmp slt i64 %conv211, %sub.ptr.sub215
  br i1 %cmp216, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.207
  %195 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_size218 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %195, i32 0, i32 8
  %196 = load i32, i32* %src_size218, align 4, !tbaa !18
  %197 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_offset219 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %197, i32 0, i32 19
  %198 = load i32, i32* %src_offset219, align 4, !tbaa !23
  %sub220 = sub i32 %196, %198
  %conv221 = zext i32 %sub220 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.207
  %199 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit222 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %199, i32 0, i32 1
  %200 = load i8*, i8** %limit222, align 8, !tbaa !54
  %201 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr223 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %201, i32 0, i32 0
  %202 = load i8*, i8** %ptr223, align 8, !tbaa !56
  %sub.ptr.lhs.cast224 = ptrtoint i8* %200 to i64
  %sub.ptr.rhs.cast225 = ptrtoint i8* %202 to i64
  %sub.ptr.sub226 = sub i64 %sub.ptr.lhs.cast224, %sub.ptr.rhs.cast225
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv221, %cond.true ], [ %sub.ptr.sub226, %cond.false ]
  %conv227 = trunc i64 %cond to i32
  store i32 %conv227, i32* %count, align 4, !tbaa !30
  %203 = load i32, i32* %count, align 4, !tbaa !30
  %cmp228 = icmp eq i32 %203, 0
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.251

if.end.231:                                       ; preds = %cond.end
  %204 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %cur232 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %204, i32 0, i32 11
  %205 = load i8*, i8** %cur232, align 8, !tbaa !44
  %206 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_offset233 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %206, i32 0, i32 19
  %207 = load i32, i32* %src_offset233, align 4, !tbaa !23
  %idx.ext234 = sext i32 %207 to i64
  %add.ptr235 = getelementptr inbounds i8, i8* %205, i64 %idx.ext234
  %208 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr236 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %208, i32 0, i32 0
  %209 = load i8*, i8** %ptr236, align 8, !tbaa !56
  %add.ptr237 = getelementptr inbounds i8, i8* %209, i64 1
  %210 = load i32, i32* %count, align 4, !tbaa !30
  %conv238 = zext i32 %210 to i64
  %call239 = call i8* @memcpy(i8* %add.ptr235, i8* %add.ptr237, i64 %conv238) #5
  %211 = load i32, i32* %count, align 4, !tbaa !30
  %212 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_offset240 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %212, i32 0, i32 19
  %213 = load i32, i32* %src_offset240, align 4, !tbaa !23
  %add241 = add i32 %213, %211
  store i32 %add241, i32* %src_offset240, align 4, !tbaa !23
  %214 = load i32, i32* %count, align 4, !tbaa !30
  %215 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr242 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %215, i32 0, i32 0
  %216 = load i8*, i8** %ptr242, align 8, !tbaa !56
  %idx.ext243 = zext i32 %214 to i64
  %add.ptr244 = getelementptr inbounds i8, i8* %216, i64 %idx.ext243
  store i8* %add.ptr244, i8** %ptr242, align 8, !tbaa !56
  %217 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_offset245 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %217, i32 0, i32 19
  %218 = load i32, i32* %src_offset245, align 4, !tbaa !23
  %219 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_size246 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %219, i32 0, i32 8
  %220 = load i32, i32* %src_size246, align 4, !tbaa !18
  %cmp247 = icmp ult i32 %218, %220
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %if.end.231
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.251

if.end.250:                                       ; preds = %if.end.231
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.251

cleanup.251:                                      ; preds = %if.end.250, %if.then.249, %if.then.230
  %221 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #2
  %cleanup.dest.252 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.252, label %cleanup.294 [
    i32 0, label %cleanup.cont.253
  ]

cleanup.cont.253:                                 ; preds = %cleanup.251
  br label %if.end.254

if.end.254:                                       ; preds = %cleanup.cont.253, %if.end.204
  %222 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %src_offset255 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %222, i32 0, i32 19
  store i32 0, i32* %src_offset255, align 4, !tbaa !23
  %223 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dst_x256 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %223, i32 0, i32 13
  store i32 0, i32* %dst_x256, align 4, !tbaa !21
  %224 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x257 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %224, i32 0, i32 14
  %225 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_x_init258 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %225, i32 0, i32 15
  %226 = bitcast %struct.gx_dda_int_s* %dda_x257 to i8*
  %227 = bitcast %struct.gx_dda_int_s* %dda_x_init258 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %226, i8* %227, i64 20, i32 4, i1 false), !tbaa.struct !29
  br label %do.body.259

do.body.259:                                      ; preds = %if.end.254
  %228 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y260 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %228, i32 0, i32 18
  %step261 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y260, i32 0, i32 1
  %dR262 = getelementptr inbounds %struct.ie_, %struct.ie_* %step261, i32 0, i32 1
  %229 = load i32, i32* %dR262, align 4, !tbaa !37
  %230 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y263 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %230, i32 0, i32 18
  %state264 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y263, i32 0, i32 0
  %R265 = getelementptr inbounds %struct.ia_, %struct.ia_* %state264, i32 0, i32 1
  %231 = load i32, i32* %R265, align 4, !tbaa !35
  %sub266 = sub i32 %231, %229
  store i32 %sub266, i32* %R265, align 4, !tbaa !35
  %232 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y267 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %232, i32 0, i32 18
  %state268 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y267, i32 0, i32 0
  %R269 = getelementptr inbounds %struct.ia_, %struct.ia_* %state268, i32 0, i32 1
  %233 = load i32, i32* %R269, align 4, !tbaa !35
  %cmp270 = icmp slt i32 %233, 0
  br i1 %cmp270, label %if.then.272, label %if.end.284

if.then.272:                                      ; preds = %do.body.259
  %234 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y273 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %234, i32 0, i32 18
  %state274 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y273, i32 0, i32 0
  %Q275 = getelementptr inbounds %struct.ia_, %struct.ia_* %state274, i32 0, i32 0
  %235 = load i32, i32* %Q275, align 4, !tbaa !33
  %inc276 = add nsw i32 %235, 1
  store i32 %inc276, i32* %Q275, align 4, !tbaa !33
  %236 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y277 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %236, i32 0, i32 18
  %step278 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y277, i32 0, i32 1
  %N279 = getelementptr inbounds %struct.ie_, %struct.ie_* %step278, i32 0, i32 2
  %237 = load i32, i32* %N279, align 4, !tbaa !39
  %238 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y280 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %238, i32 0, i32 18
  %state281 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y280, i32 0, i32 0
  %R282 = getelementptr inbounds %struct.ia_, %struct.ia_* %state281, i32 0, i32 1
  %239 = load i32, i32* %R282, align 4, !tbaa !35
  %add283 = add i32 %239, %237
  store i32 %add283, i32* %R282, align 4, !tbaa !35
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.272, %do.body.259
  %240 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y285 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %240, i32 0, i32 18
  %step286 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y285, i32 0, i32 1
  %dQ287 = getelementptr inbounds %struct.ie_, %struct.ie_* %step286, i32 0, i32 0
  %241 = load i32, i32* %dQ287, align 4, !tbaa !36
  %242 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %dda_y288 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %242, i32 0, i32 18
  %state289 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y288, i32 0, i32 0
  %Q290 = getelementptr inbounds %struct.ia_, %struct.ia_* %state289, i32 0, i32 0
  %243 = load i32, i32* %Q290, align 4, !tbaa !33
  %add291 = add nsw i32 %243, %241
  store i32 %add291, i32* %Q290, align 4, !tbaa !33
  br label %do.cond.292

do.cond.292:                                      ; preds = %if.end.284
  br label %do.end.293

do.end.293:                                       ; preds = %do.cond.292
  br label %top

cleanup.294:                                      ; preds = %cleanup.251, %if.then.203, %cleanup
  %244 = bitcast i8** %limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #2
  %245 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #2
  %246 = bitcast i32* %scale_case to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #2
  %247 = bitcast %struct.stream_IIEncode_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #2
  %248 = load i32, i32* %retval
  ret i32 %248
}

; Function Attrs: nounwind uwtable
define internal void @s_IIEncode_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_IIEncode_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IIEncode_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IIEncode_state_s*
  store %struct.stream_IIEncode_state_s* %2, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !57
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %9 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %9, i32 0, i32 11
  %10 = load i8*, i8** %cur, align 8, !tbaa !44
  call void %7(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #4
  %11 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %cur1 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %11, i32 0, i32 11
  store i8* null, i8** %cur1, align 8, !tbaa !44
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object3 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3, align 8, !tbaa !57
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %15, i32 0, i32 10
  %16 = load i8*, i8** %prev, align 8, !tbaa !43
  call void %13(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  %17 = load %struct.stream_IIEncode_state_s*, %struct.stream_IIEncode_state_s** %ss, align 8, !tbaa !1
  %prev4 = getelementptr inbounds %struct.stream_IIEncode_state_s, %struct.stream_IIEncode_state_s* %17, i32 0, i32 10
  store i8* null, i8** %prev4, align 8, !tbaa !43
  %18 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast %struct.stream_IIEncode_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

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
!5 = !{!6, !2, i64 8}
!6 = !{!"stream_IIEncode_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !8, i64 108, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !2, i64 224, !2, i64 232, !3, i64 240, !7, i64 244, !9, i64 248, !9, i64 268, !7, i64 288, !7, i64 292, !9, i64 296, !7, i64 316, !7, i64 320}
!7 = !{!"int", !3, i64 0}
!8 = !{!"stream_image_scale_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!9 = !{!"gx_dda_int_s", !10, i64 0, !11, i64 8}
!10 = !{!"ia_", !7, i64 0, !7, i64 4}
!11 = !{!"ie_", !7, i64 0, !7, i64 4, !7, i64 8}
!12 = !{!6, !7, i64 132}
!13 = !{!6, !7, i64 112}
!14 = !{!6, !7, i64 208}
!15 = !{!6, !7, i64 140}
!16 = !{!6, !7, i64 212}
!17 = !{!6, !7, i64 148}
!18 = !{!6, !7, i64 216}
!19 = !{!6, !7, i64 156}
!20 = !{!6, !7, i64 220}
!21 = !{!6, !7, i64 244}
!22 = !{!6, !7, i64 320}
!23 = !{!6, !7, i64 316}
!24 = !{!6, !7, i64 248}
!25 = !{!6, !7, i64 252}
!26 = !{!6, !7, i64 256}
!27 = !{!6, !7, i64 260}
!28 = !{!6, !7, i64 264}
!29 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 4, !30}
!30 = !{!7, !7, i64 0}
!31 = !{!6, !7, i64 292}
!32 = !{!6, !7, i64 288}
!33 = !{!6, !7, i64 296}
!34 = !{!6, !7, i64 152}
!35 = !{!6, !7, i64 300}
!36 = !{!6, !7, i64 304}
!37 = !{!6, !7, i64 308}
!38 = !{!6, !7, i64 160}
!39 = !{!6, !7, i64 312}
!40 = !{!41, !2, i64 88}
!41 = !{!"gs_memory_s", !2, i64 0, !42, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!42 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!43 = !{!6, !2, i64 224}
!44 = !{!6, !2, i64 232}
!45 = !{!6, !7, i64 136}
!46 = !{!6, !7, i64 144}
!47 = !{!6, !3, i64 240}
!48 = !{!49, !2, i64 8}
!49 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!50 = !{!3, !3, i64 0}
!51 = !{!49, !2, i64 16}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !3, i64 0}
!54 = !{!55, !2, i64 8}
!55 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!56 = !{!55, !2, i64 0}
!57 = !{!41, !2, i64 24}
