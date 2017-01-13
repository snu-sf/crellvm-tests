; ModuleID = './sidscale.bc'
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
%struct.stream_ISpecialDownScale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s, i32, i32, i8*, i8*, i8*, %struct.gx_dda_int_s, i32, i32, i32, %struct.gx_dda_int_s, i32, i32, i32, i32, %struct.gx_dda_int_s }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_dda_int_s = type { %struct.ia_, %struct.ie_ }
%struct.ia_ = type { i32, i32 }
%struct.ie_ = type { i32, i32, i32 }

@st_ISpecialDownScale_state = internal constant %struct.gs_memory_struct_type_s { i32 328, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @isdscale_state_reloc_ptrs to i8*) }, align 8
@s_ISpecialDownScale_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_ISpecialDownScale_state, i32 (%struct.stream_state_s*)* @s_ISpecialDownScale_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_ISpecialDownScale_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_ISpecialDownScale_release, void (%struct.stream_state_s*)* @s_ISpecialDownScale_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [41 x i8] c"ImageSpecialDownScaleEncode/Decode state\00", align 1
@isdscale_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @isdscale_state_enum_ptrs, i32 0, i32 0) }, align 8
@isdscale_state_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 224 }, %struct.gc_ptr_element_s { i16 0, i16 216 }, %struct.gc_ptr_element_s { i16 0, i16 232 }], align 2
@.str.1 = private unnamed_addr constant [16 x i8] c"image_scale tmp\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"image_scale dst\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"image_scale src\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_ISpecialDownScale_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_ISpecialDownScale_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_ISpecialDownScale_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_ISpecialDownScale_state_s*
  store %struct.stream_ISpecialDownScale_state_s* %2, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %6, i32 0, i32 5
  %BitsPerComponentIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 6
  %7 = load i32, i32* %BitsPerComponentIn, align 4, !tbaa !12
  %div = sdiv i32 %7, 8
  %8 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %8, i32 0, i32 6
  store i32 %div, i32* %sizeofPixelIn, align 4, !tbaa !13
  %9 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %9, i32 0, i32 5
  %BitsPerComponentOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params1, i32 0, i32 8
  %10 = load i32, i32* %BitsPerComponentOut, align 4, !tbaa !14
  %div2 = sdiv i32 %10, 8
  %11 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %11, i32 0, i32 7
  store i32 %div2, i32* %sizeofPixelOut, align 4, !tbaa !15
  %12 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %12, i32 0, i32 5
  %WidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params3, i32 0, i32 10
  %13 = load i32, i32* %WidthIn, align 4, !tbaa !16
  %14 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn4 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %14, i32 0, i32 6
  %15 = load i32, i32* %sizeofPixelIn4, align 4, !tbaa !13
  %mul = mul nsw i32 %13, %15
  %16 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %16, i32 0, i32 5
  %spp_interp = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params5, i32 0, i32 1
  %17 = load i32, i32* %spp_interp, align 4, !tbaa !17
  %mul6 = mul nsw i32 %mul, %17
  %18 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_size = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %18, i32 0, i32 18
  store i32 %mul6, i32* %src_size, align 4, !tbaa !18
  %19 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %19, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params7, i32 0, i32 12
  %20 = load i32, i32* %WidthOut, align 4, !tbaa !19
  %21 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut8 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %21, i32 0, i32 7
  %22 = load i32, i32* %sizeofPixelOut8, align 4, !tbaa !15
  %mul9 = mul nsw i32 %20, %22
  %23 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %23, i32 0, i32 5
  %spp_interp11 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params10, i32 0, i32 1
  %24 = load i32, i32* %spp_interp11, align 4, !tbaa !17
  %mul12 = mul nsw i32 %mul9, %24
  %25 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_size = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %25, i32 0, i32 14
  store i32 %mul12, i32* %dst_size, align 4, !tbaa !20
  %26 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_x = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %26, i32 0, i32 12
  store i32 0, i32* %dst_x, align 4, !tbaa !21
  %27 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %27, i32 0, i32 13
  store i32 0, i32* %dst_offset, align 4, !tbaa !22
  %28 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_offset = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %28, i32 0, i32 17
  store i32 0, i32* %src_offset, align 4, !tbaa !23
  br label %do.body

do.body:                                          ; preds = %entry
  %29 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %29, i32 0, i32 15
  %state = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x, i32 0, i32 0
  %Q = getelementptr inbounds %struct.ia_, %struct.ia_* %state, i32 0, i32 0
  store i32 0, i32* %Q, align 4, !tbaa !24
  %30 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %30, i32 0, i32 5
  %WidthOut14 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params13, i32 0, i32 12
  %31 = load i32, i32* %WidthOut14, align 4, !tbaa !19
  %sub = sub nsw i32 %31, 1
  %32 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x15 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %32, i32 0, i32 15
  %state16 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x15, i32 0, i32 0
  %R = getelementptr inbounds %struct.ia_, %struct.ia_* %state16, i32 0, i32 1
  store i32 %sub, i32* %R, align 4, !tbaa !25
  br label %do.body.17

do.body.17:                                       ; preds = %do.body
  %33 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %33, i32 0, i32 5
  %WidthOut19 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params18, i32 0, i32 12
  %34 = load i32, i32* %WidthOut19, align 4, !tbaa !19
  %cmp = icmp eq i32 %34, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body.17
  %35 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x20 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %35, i32 0, i32 15
  %step = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x20, i32 0, i32 1
  %dQ = getelementptr inbounds %struct.ie_, %struct.ie_* %step, i32 0, i32 0
  store i32 0, i32* %dQ, align 4, !tbaa !26
  %36 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x21 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %36, i32 0, i32 15
  %step22 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x21, i32 0, i32 1
  %dR = getelementptr inbounds %struct.ie_, %struct.ie_* %step22, i32 0, i32 1
  store i32 0, i32* %dR, align 4, !tbaa !27
  br label %if.end.77

if.else:                                          ; preds = %do.body.17
  %37 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %37, i32 0, i32 5
  %WidthIn24 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params23, i32 0, i32 10
  %38 = load i32, i32* %WidthIn24, align 4, !tbaa !16
  %cmp25 = icmp slt i32 %38, 0
  br i1 %cmp25, label %if.then.26, label %if.else.59

if.then.26:                                       ; preds = %if.else
  %39 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %39, i32 0, i32 5
  %WidthIn28 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params27, i32 0, i32 10
  %40 = load i32, i32* %WidthIn28, align 4, !tbaa !16
  %sub29 = sub nsw i32 0, %40
  %41 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %41, i32 0, i32 5
  %WidthOut31 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params30, i32 0, i32 12
  %42 = load i32, i32* %WidthOut31, align 4, !tbaa !19
  %div32 = udiv i32 %sub29, %42
  %sub33 = sub nsw i32 0, %div32
  %43 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x34 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %43, i32 0, i32 15
  %step35 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x34, i32 0, i32 1
  %dQ36 = getelementptr inbounds %struct.ie_, %struct.ie_* %step35, i32 0, i32 0
  store i32 %sub33, i32* %dQ36, align 4, !tbaa !26
  %44 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params37 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %44, i32 0, i32 5
  %WidthIn38 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params37, i32 0, i32 10
  %45 = load i32, i32* %WidthIn38, align 4, !tbaa !16
  %sub39 = sub nsw i32 0, %45
  %46 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %46, i32 0, i32 5
  %WidthOut41 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params40, i32 0, i32 12
  %47 = load i32, i32* %WidthOut41, align 4, !tbaa !19
  %rem = srem i32 %sub39, %47
  %48 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x42 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %48, i32 0, i32 15
  %step43 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x42, i32 0, i32 1
  %dR44 = getelementptr inbounds %struct.ie_, %struct.ie_* %step43, i32 0, i32 1
  store i32 %rem, i32* %dR44, align 4, !tbaa !27
  %cmp45 = icmp ne i32 %rem, 0
  br i1 %cmp45, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %if.then.26
  %49 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x47 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %49, i32 0, i32 15
  %step48 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x47, i32 0, i32 1
  %dQ49 = getelementptr inbounds %struct.ie_, %struct.ie_* %step48, i32 0, i32 0
  %50 = load i32, i32* %dQ49, align 4, !tbaa !26
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %dQ49, align 4, !tbaa !26
  %51 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params50 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %51, i32 0, i32 5
  %WidthOut51 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params50, i32 0, i32 12
  %52 = load i32, i32* %WidthOut51, align 4, !tbaa !19
  %53 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x52 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %53, i32 0, i32 15
  %step53 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x52, i32 0, i32 1
  %dR54 = getelementptr inbounds %struct.ie_, %struct.ie_* %step53, i32 0, i32 1
  %54 = load i32, i32* %dR54, align 4, !tbaa !27
  %sub55 = sub i32 %52, %54
  %55 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x56 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %55, i32 0, i32 15
  %step57 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x56, i32 0, i32 1
  %dR58 = getelementptr inbounds %struct.ie_, %struct.ie_* %step57, i32 0, i32 1
  store i32 %sub55, i32* %dR58, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then.46, %if.then.26
  br label %if.end.76

if.else.59:                                       ; preds = %if.else
  %56 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params60 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %56, i32 0, i32 5
  %WidthIn61 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params60, i32 0, i32 10
  %57 = load i32, i32* %WidthIn61, align 4, !tbaa !16
  %58 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params62 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %58, i32 0, i32 5
  %WidthOut63 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params62, i32 0, i32 12
  %59 = load i32, i32* %WidthOut63, align 4, !tbaa !19
  %div64 = sdiv i32 %57, %59
  %60 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x65 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %60, i32 0, i32 15
  %step66 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x65, i32 0, i32 1
  %dQ67 = getelementptr inbounds %struct.ie_, %struct.ie_* %step66, i32 0, i32 0
  store i32 %div64, i32* %dQ67, align 4, !tbaa !26
  %61 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params68 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %61, i32 0, i32 5
  %WidthIn69 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params68, i32 0, i32 10
  %62 = load i32, i32* %WidthIn69, align 4, !tbaa !16
  %63 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params70 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %63, i32 0, i32 5
  %WidthOut71 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params70, i32 0, i32 12
  %64 = load i32, i32* %WidthOut71, align 4, !tbaa !19
  %rem72 = srem i32 %62, %64
  %65 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x73 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %65, i32 0, i32 15
  %step74 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x73, i32 0, i32 1
  %dR75 = getelementptr inbounds %struct.ie_, %struct.ie_* %step74, i32 0, i32 1
  store i32 %rem72, i32* %dR75, align 4, !tbaa !27
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.59, %if.end
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then
  %66 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params78 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %66, i32 0, i32 5
  %WidthOut79 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params78, i32 0, i32 12
  %67 = load i32, i32* %WidthOut79, align 4, !tbaa !19
  %68 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x80 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %68, i32 0, i32 15
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
  %69 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x_init = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %69, i32 0, i32 11
  %70 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_x84 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %70, i32 0, i32 15
  %71 = bitcast %struct.gx_dda_int_s* %dda_x_init to i8*
  %72 = bitcast %struct.gx_dda_int_s* %dda_x84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 20, i32 4, i1 false), !tbaa.struct !29
  %73 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_y = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %73, i32 0, i32 19
  store i32 0, i32* %dst_y, align 4, !tbaa !31
  %74 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_y = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %74, i32 0, i32 16
  store i32 0, i32* %src_y, align 4, !tbaa !32
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.83
  %75 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %75, i32 0, i32 20
  %state86 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y, i32 0, i32 0
  %Q87 = getelementptr inbounds %struct.ia_, %struct.ia_* %state86, i32 0, i32 0
  store i32 0, i32* %Q87, align 4, !tbaa !33
  %76 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params88 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %76, i32 0, i32 5
  %HeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params88, i32 0, i32 11
  %77 = load i32, i32* %HeightIn, align 4, !tbaa !34
  %sub89 = sub nsw i32 %77, 1
  %78 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y90 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %78, i32 0, i32 20
  %state91 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y90, i32 0, i32 0
  %R92 = getelementptr inbounds %struct.ia_, %struct.ia_* %state91, i32 0, i32 1
  store i32 %sub89, i32* %R92, align 4, !tbaa !35
  br label %do.body.93

do.body.93:                                       ; preds = %do.body.85
  %79 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params94 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %79, i32 0, i32 5
  %HeightIn95 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params94, i32 0, i32 11
  %80 = load i32, i32* %HeightIn95, align 4, !tbaa !34
  %cmp96 = icmp eq i32 %80, 0
  br i1 %cmp96, label %if.then.97, label %if.else.104

if.then.97:                                       ; preds = %do.body.93
  %81 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y98 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %81, i32 0, i32 20
  %step99 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y98, i32 0, i32 1
  %dQ100 = getelementptr inbounds %struct.ie_, %struct.ie_* %step99, i32 0, i32 0
  store i32 0, i32* %dQ100, align 4, !tbaa !36
  %82 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y101 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %82, i32 0, i32 20
  %step102 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y101, i32 0, i32 1
  %dR103 = getelementptr inbounds %struct.ie_, %struct.ie_* %step102, i32 0, i32 1
  store i32 0, i32* %dR103, align 4, !tbaa !37
  br label %if.end.161

if.else.104:                                      ; preds = %do.body.93
  %83 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params105 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %83, i32 0, i32 5
  %HeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params105, i32 0, i32 13
  %84 = load i32, i32* %HeightOut, align 4, !tbaa !38
  %cmp106 = icmp slt i32 %84, 0
  br i1 %cmp106, label %if.then.107, label %if.else.143

if.then.107:                                      ; preds = %if.else.104
  %85 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params108 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %85, i32 0, i32 5
  %HeightOut109 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params108, i32 0, i32 13
  %86 = load i32, i32* %HeightOut109, align 4, !tbaa !38
  %sub110 = sub nsw i32 0, %86
  %87 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params111 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %87, i32 0, i32 5
  %HeightIn112 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params111, i32 0, i32 11
  %88 = load i32, i32* %HeightIn112, align 4, !tbaa !34
  %div113 = udiv i32 %sub110, %88
  %sub114 = sub nsw i32 0, %div113
  %89 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y115 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %89, i32 0, i32 20
  %step116 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y115, i32 0, i32 1
  %dQ117 = getelementptr inbounds %struct.ie_, %struct.ie_* %step116, i32 0, i32 0
  store i32 %sub114, i32* %dQ117, align 4, !tbaa !36
  %90 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params118 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %90, i32 0, i32 5
  %HeightOut119 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params118, i32 0, i32 13
  %91 = load i32, i32* %HeightOut119, align 4, !tbaa !38
  %sub120 = sub nsw i32 0, %91
  %92 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params121 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %92, i32 0, i32 5
  %HeightIn122 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params121, i32 0, i32 11
  %93 = load i32, i32* %HeightIn122, align 4, !tbaa !34
  %rem123 = srem i32 %sub120, %93
  %94 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y124 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %94, i32 0, i32 20
  %step125 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y124, i32 0, i32 1
  %dR126 = getelementptr inbounds %struct.ie_, %struct.ie_* %step125, i32 0, i32 1
  store i32 %rem123, i32* %dR126, align 4, !tbaa !37
  %cmp127 = icmp ne i32 %rem123, 0
  br i1 %cmp127, label %if.then.128, label %if.end.142

if.then.128:                                      ; preds = %if.then.107
  %95 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y129 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %95, i32 0, i32 20
  %step130 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y129, i32 0, i32 1
  %dQ131 = getelementptr inbounds %struct.ie_, %struct.ie_* %step130, i32 0, i32 0
  %96 = load i32, i32* %dQ131, align 4, !tbaa !36
  %dec132 = add nsw i32 %96, -1
  store i32 %dec132, i32* %dQ131, align 4, !tbaa !36
  %97 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params133 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %97, i32 0, i32 5
  %HeightIn134 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params133, i32 0, i32 11
  %98 = load i32, i32* %HeightIn134, align 4, !tbaa !34
  %99 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y135 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %99, i32 0, i32 20
  %step136 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y135, i32 0, i32 1
  %dR137 = getelementptr inbounds %struct.ie_, %struct.ie_* %step136, i32 0, i32 1
  %100 = load i32, i32* %dR137, align 4, !tbaa !37
  %sub138 = sub i32 %98, %100
  %101 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y139 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %101, i32 0, i32 20
  %step140 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y139, i32 0, i32 1
  %dR141 = getelementptr inbounds %struct.ie_, %struct.ie_* %step140, i32 0, i32 1
  store i32 %sub138, i32* %dR141, align 4, !tbaa !37
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.128, %if.then.107
  br label %if.end.160

if.else.143:                                      ; preds = %if.else.104
  %102 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params144 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %102, i32 0, i32 5
  %HeightOut145 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params144, i32 0, i32 13
  %103 = load i32, i32* %HeightOut145, align 4, !tbaa !38
  %104 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params146 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %104, i32 0, i32 5
  %HeightIn147 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params146, i32 0, i32 11
  %105 = load i32, i32* %HeightIn147, align 4, !tbaa !34
  %div148 = sdiv i32 %103, %105
  %106 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y149 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %106, i32 0, i32 20
  %step150 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y149, i32 0, i32 1
  %dQ151 = getelementptr inbounds %struct.ie_, %struct.ie_* %step150, i32 0, i32 0
  store i32 %div148, i32* %dQ151, align 4, !tbaa !36
  %107 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params152 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %107, i32 0, i32 5
  %HeightOut153 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params152, i32 0, i32 13
  %108 = load i32, i32* %HeightOut153, align 4, !tbaa !38
  %109 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params154 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %109, i32 0, i32 5
  %HeightIn155 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params154, i32 0, i32 11
  %110 = load i32, i32* %HeightIn155, align 4, !tbaa !34
  %rem156 = srem i32 %108, %110
  %111 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y157 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %111, i32 0, i32 20
  %step158 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y157, i32 0, i32 1
  %dR159 = getelementptr inbounds %struct.ie_, %struct.ie_* %step158, i32 0, i32 1
  store i32 %rem156, i32* %dR159, align 4, !tbaa !37
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.143, %if.end.142
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.97
  %112 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params162 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %112, i32 0, i32 5
  %HeightIn163 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params162, i32 0, i32 11
  %113 = load i32, i32* %HeightIn163, align 4, !tbaa !34
  %114 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y164 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %114, i32 0, i32 20
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
  %118 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params171 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %118, i32 0, i32 5
  %WidthOut172 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params171, i32 0, i32 12
  %119 = load i32, i32* %WidthOut172, align 4, !tbaa !19
  %120 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params173 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %120, i32 0, i32 5
  %spp_interp174 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params173, i32 0, i32 1
  %121 = load i32, i32* %spp_interp174, align 4, !tbaa !17
  %mul175 = mul nsw i32 %119, %121
  %122 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn176 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %122, i32 0, i32 6
  %123 = load i32, i32* %sizeofPixelIn176, align 4, !tbaa !13
  %call = call i8* %116(%struct.gs_memory_s* %117, i32 %mul175, i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #4
  %124 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %tmp = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %124, i32 0, i32 10
  store i8* %call, i8** %tmp, align 8, !tbaa !43
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs177 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 1
  %alloc_byte_array178 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs177, i32 0, i32 10
  %126 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array178, align 8, !tbaa !40
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %128 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params179 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %128, i32 0, i32 5
  %WidthOut180 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params179, i32 0, i32 12
  %129 = load i32, i32* %WidthOut180, align 4, !tbaa !19
  %130 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params181 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %130, i32 0, i32 5
  %spp_interp182 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params181, i32 0, i32 1
  %131 = load i32, i32* %spp_interp182, align 4, !tbaa !17
  %mul183 = mul nsw i32 %129, %131
  %132 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut184 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %132, i32 0, i32 7
  %133 = load i32, i32* %sizeofPixelOut184, align 4, !tbaa !15
  %call185 = call i8* %126(%struct.gs_memory_s* %127, i32 %mul183, i32 %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #4
  %134 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %134, i32 0, i32 9
  store i8* %call185, i8** %dst, align 8, !tbaa !44
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs186 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %135, i32 0, i32 1
  %alloc_byte_array187 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs186, i32 0, i32 10
  %136 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array187, align 8, !tbaa !40
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %138 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params188 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %138, i32 0, i32 5
  %WidthIn189 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params188, i32 0, i32 10
  %139 = load i32, i32* %WidthIn189, align 4, !tbaa !16
  %140 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params190 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %140, i32 0, i32 5
  %spp_interp191 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params190, i32 0, i32 1
  %141 = load i32, i32* %spp_interp191, align 4, !tbaa !17
  %mul192 = mul nsw i32 %139, %141
  %142 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn193 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %142, i32 0, i32 6
  %143 = load i32, i32* %sizeofPixelIn193, align 4, !tbaa !13
  %call194 = call i8* %136(%struct.gs_memory_s* %137, i32 %mul192, i32 %143, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)) #4
  %144 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %144, i32 0, i32 8
  store i8* %call194, i8** %src, align 8, !tbaa !45
  %145 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %tmp195 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %145, i32 0, i32 10
  %146 = load i8*, i8** %tmp195, align 8, !tbaa !43
  %cmp196 = icmp eq i8* %146, null
  br i1 %cmp196, label %if.then.202, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.170
  %147 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst197 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %147, i32 0, i32 9
  %148 = load i8*, i8** %dst197, align 8, !tbaa !44
  %cmp198 = icmp eq i8* %148, null
  br i1 %cmp198, label %if.then.202, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %lor.lhs.false
  %149 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src200 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %149, i32 0, i32 8
  %150 = load i8*, i8** %src200, align 8, !tbaa !45
  %cmp201 = icmp eq i8* %150, null
  br i1 %cmp201, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %lor.lhs.false.199, %lor.lhs.false, %do.end.170
  %151 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void @s_ISpecialDownScale_release(%struct.stream_state_s* %151) #4
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.203:                                       ; preds = %lor.lhs.false.199
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.203, %if.then.202
  %152 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = bitcast %struct.stream_ISpecialDownScale_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = load i32, i32* %retval
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define internal i32 @s_ISpecialDownScale_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_ISpecialDownScale_state_s*, align 8
  %cur_y = alloca i32, align 4
  %wleft = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %row = alloca i8*, align 8
  %wcount = alloca i32, align 4
  %ncopy = alloca i32, align 4
  %rleft = alloca i32, align 4
  %rcount = alloca i32, align 4
  %row98 = alloca i8*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !30
  %0 = bitcast %struct.stream_ISpecialDownScale_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_ISpecialDownScale_state_s*
  store %struct.stream_ISpecialDownScale_state_s* %2, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %cur_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %4, i32 0, i32 20
  %state = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y, i32 0, i32 0
  %Q = getelementptr inbounds %struct.ia_, %struct.ia_* %state, i32 0, i32 0
  %5 = load i32, i32* %Q, align 4, !tbaa !33
  store i32 %5, i32* %cur_y, align 4, !tbaa !30
  br label %top

top:                                              ; preds = %cleanup.188, %entry
  %6 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_y = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %6, i32 0, i32 16
  %7 = load i32, i32* %src_y, align 4, !tbaa !32
  %8 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %8, i32 0, i32 5
  %TopMargin = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 23
  %9 = load i32, i32* %TopMargin, align 4, !tbaa !46
  %cmp = icmp sge i32 %7, %9
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %top
  %10 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_y1 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %10, i32 0, i32 16
  %11 = load i32, i32* %src_y1, align 4, !tbaa !32
  %12 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %12, i32 0, i32 5
  %TopMargin3 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params2, i32 0, i32 23
  %13 = load i32, i32* %TopMargin3, align 4, !tbaa !46
  %14 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %14, i32 0, i32 5
  %PatchHeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params4, i32 0, i32 3
  %15 = load i32, i32* %PatchHeightIn, align 4, !tbaa !47
  %add = add nsw i32 %13, %15
  %cmp5 = icmp sle i32 %11, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %top
  %16 = phi i1 [ false, %top ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %17 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %17, i32 0, i32 5
  %Active = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params6, i32 0, i32 24
  store i32 %land.ext, i32* %Active, align 4, !tbaa !48
  %18 = load i32, i32* %cur_y, align 4, !tbaa !30
  %19 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_y = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %19, i32 0, i32 19
  %20 = load i32, i32* %dst_y, align 4, !tbaa !31
  %cmp7 = icmp ugt i32 %18, %20
  br i1 %cmp7, label %if.then, label %if.end.74

if.then:                                          ; preds = %land.end
  %21 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %22, i32 0, i32 2
  %23 = load i8*, i8** %limit, align 8, !tbaa !49
  %24 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %ptr, align 8, !tbaa !51
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %wleft, align 4, !tbaa !30
  %26 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_y8 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %26, i32 0, i32 19
  %27 = load i32, i32* %dst_y8, align 4, !tbaa !31
  %28 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %28, i32 0, i32 5
  %HeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params9, i32 0, i32 13
  %29 = load i32, i32* %HeightOut, align 4, !tbaa !38
  %cmp10 = icmp eq i32 %27, %29
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end:                                           ; preds = %if.then
  %30 = load i32, i32* %wleft, align 4, !tbaa !30
  %cmp13 = icmp eq i32 %30, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end.16:                                        ; preds = %if.end
  %31 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %31, i32 0, i32 13
  %32 = load i32, i32* %dst_offset, align 4, !tbaa !22
  %cmp17 = icmp eq i32 %32, 0
  br i1 %cmp17, label %if.then.19, label %if.end.37

if.then.19:                                       ; preds = %if.end.16
  %33 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load i32, i32* %wleft, align 4, !tbaa !30
  %35 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_size = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %35, i32 0, i32 14
  %36 = load i32, i32* %dst_size, align 4, !tbaa !20
  %cmp20 = icmp uge i32 %34, %36
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.19
  %37 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %37, i32 0, i32 1
  %38 = load i8*, i8** %ptr23, align 8, !tbaa !51
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %add.ptr, i8** %row, align 8, !tbaa !1
  %39 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_size24 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %39, i32 0, i32 14
  %40 = load i32, i32* %dst_size24, align 4, !tbaa !20
  %41 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr25 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %41, i32 0, i32 1
  %42 = load i8*, i8** %ptr25, align 8, !tbaa !51
  %idx.ext = zext i32 %40 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  store i8* %add.ptr26, i8** %ptr25, align 8, !tbaa !51
  br label %if.end.27

if.else:                                          ; preds = %if.then.19
  %43 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %43, i32 0, i32 9
  %44 = load i8*, i8** %dst, align 8, !tbaa !44
  store i8* %44, i8** %row, align 8, !tbaa !1
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.22
  %45 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %45, i32 0, i32 5
  %Active29 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params28, i32 0, i32 24
  %46 = load i32, i32* %Active29, align 4, !tbaa !48
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %47 = load i8*, i8** %row, align 8, !tbaa !1
  %48 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %tmp = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %48, i32 0, i32 10
  %49 = load i8*, i8** %tmp, align 8, !tbaa !43
  %50 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  call void @idownscale_y(i8* %47, i8* %49, %struct.stream_ISpecialDownScale_state_s* %50) #4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %51 = load i8*, i8** %row, align 8, !tbaa !1
  %52 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst32 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %52, i32 0, i32 9
  %53 = load i8*, i8** %dst32, align 8, !tbaa !44
  %cmp33 = icmp ne i8* %51, %53
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.35, %if.end.36
  %54 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.71 [
    i32 0, label %cleanup.cont
    i32 3, label %adv
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.37

if.end.37:                                        ; preds = %cleanup.cont, %if.end.16
  %55 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_size39 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %56, i32 0, i32 14
  %57 = load i32, i32* %dst_size39, align 4, !tbaa !20
  %58 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset40 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %58, i32 0, i32 13
  %59 = load i32, i32* %dst_offset40, align 4, !tbaa !22
  %sub = sub i32 %57, %59
  store i32 %sub, i32* %wcount, align 4, !tbaa !30
  %60 = bitcast i32* %ncopy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  %61 = load i32, i32* %wleft, align 4, !tbaa !30
  %62 = load i32, i32* %wcount, align 4, !tbaa !30
  %cmp42 = icmp ult i32 %61, %62
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %63 = load i32, i32* %wleft, align 4, !tbaa !30
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  %64 = load i32, i32* %wcount, align 4, !tbaa !30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %63, %cond.true ], [ %64, %cond.false ]
  store i32 %cond, i32* %ncopy, align 4, !tbaa !30
  %65 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params44 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %65, i32 0, i32 5
  %Active45 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params44, i32 0, i32 24
  %66 = load i32, i32* %Active45, align 4, !tbaa !48
  %tobool46 = icmp ne i32 %66, 0
  br i1 %tobool46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %cond.end
  %67 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr48 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %67, i32 0, i32 1
  %68 = load i8*, i8** %ptr48, align 8, !tbaa !51
  %add.ptr49 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst50 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %69, i32 0, i32 9
  %70 = load i8*, i8** %dst50, align 8, !tbaa !44
  %71 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset51 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %71, i32 0, i32 13
  %72 = load i32, i32* %dst_offset51, align 4, !tbaa !22
  %idx.ext52 = zext i32 %72 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %70, i64 %idx.ext52
  %73 = load i32, i32* %ncopy, align 4, !tbaa !30
  %conv54 = zext i32 %73 to i64
  %call = call i8* @memcpy(i8* %add.ptr49, i8* %add.ptr53, i64 %conv54) #5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.47, %cond.end
  %74 = load i32, i32* %ncopy, align 4, !tbaa !30
  %75 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr56 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %75, i32 0, i32 1
  %76 = load i8*, i8** %ptr56, align 8, !tbaa !51
  %idx.ext57 = zext i32 %74 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %76, i64 %idx.ext57
  store i8* %add.ptr58, i8** %ptr56, align 8, !tbaa !51
  %77 = load i32, i32* %ncopy, align 4, !tbaa !30
  %78 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset59 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %78, i32 0, i32 13
  %79 = load i32, i32* %dst_offset59, align 4, !tbaa !22
  %add60 = add i32 %79, %77
  store i32 %add60, i32* %dst_offset59, align 4, !tbaa !22
  %80 = load i32, i32* %ncopy, align 4, !tbaa !30
  %81 = load i32, i32* %wcount, align 4, !tbaa !30
  %cmp61 = icmp ne i32 %80, %81
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.55
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

if.end.64:                                        ; preds = %if.end.55
  %82 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset65 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %82, i32 0, i32 13
  store i32 0, i32* %dst_offset65, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.66

cleanup.66:                                       ; preds = %if.end.64, %if.then.63
  %83 = bitcast i32* %ncopy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %cleanup.dest.68 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.68, label %cleanup.71 [
    i32 0, label %cleanup.cont.69
  ]

cleanup.cont.69:                                  ; preds = %cleanup.66
  br label %adv

adv:                                              ; preds = %cleanup.cont.69, %cleanup
  %85 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst_y70 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %85, i32 0, i32 19
  %86 = load i32, i32* %dst_y70, align 4, !tbaa !31
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %dst_y70, align 4, !tbaa !31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.71

cleanup.71:                                       ; preds = %adv, %cleanup.66, %cleanup, %if.then.15, %if.then.12
  %87 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %cleanup.dest.72 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.72, label %cleanup.191 [
    i32 0, label %cleanup.cont.73
  ]

cleanup.cont.73:                                  ; preds = %cleanup.71
  br label %if.end.74

if.end.74:                                        ; preds = %cleanup.cont.73, %land.end
  %88 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #2
  %89 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit76 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %89, i32 0, i32 1
  %90 = load i8*, i8** %limit76, align 8, !tbaa !52
  %91 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr77 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %91, i32 0, i32 0
  %92 = load i8*, i8** %ptr77, align 8, !tbaa !54
  %sub.ptr.lhs.cast78 = ptrtoint i8* %90 to i64
  %sub.ptr.rhs.cast79 = ptrtoint i8* %92 to i64
  %sub.ptr.sub80 = sub i64 %sub.ptr.lhs.cast78, %sub.ptr.rhs.cast79
  %conv81 = trunc i64 %sub.ptr.sub80 to i32
  store i32 %conv81, i32* %rleft, align 4, !tbaa !30
  %93 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #2
  %94 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_size = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %94, i32 0, i32 18
  %95 = load i32, i32* %src_size, align 4, !tbaa !18
  %96 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_offset = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %96, i32 0, i32 17
  %97 = load i32, i32* %src_offset, align 4, !tbaa !23
  %sub83 = sub i32 %95, %97
  store i32 %sub83, i32* %rcount, align 4, !tbaa !30
  %98 = load i32, i32* %rleft, align 4, !tbaa !30
  %cmp84 = icmp eq i32 %98, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.74
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.188

if.end.87:                                        ; preds = %if.end.74
  %99 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_y88 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %99, i32 0, i32 16
  %100 = load i32, i32* %src_y88, align 4, !tbaa !32
  %101 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params89 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %101, i32 0, i32 5
  %HeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params89, i32 0, i32 11
  %102 = load i32, i32* %HeightIn, align 4, !tbaa !34
  %cmp90 = icmp sge i32 %100, %102
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.87
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.188

if.end.93:                                        ; preds = %if.end.87
  %103 = load i32, i32* %rleft, align 4, !tbaa !30
  %104 = load i32, i32* %rcount, align 4, !tbaa !30
  %cmp94 = icmp uge i32 %103, %104
  br i1 %cmp94, label %if.then.96, label %if.else.169

if.then.96:                                       ; preds = %if.end.93
  %105 = bitcast i8** %row98 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #2
  %106 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_offset99 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %106, i32 0, i32 17
  %107 = load i32, i32* %src_offset99, align 4, !tbaa !23
  %cmp100 = icmp eq i32 %107, 0
  br i1 %cmp100, label %if.then.102, label %if.else.105

if.then.102:                                      ; preds = %if.then.96
  %108 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr103 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %108, i32 0, i32 0
  %109 = load i8*, i8** %ptr103, align 8, !tbaa !54
  %add.ptr104 = getelementptr inbounds i8, i8* %109, i64 1
  store i8* %add.ptr104, i8** %row98, align 8, !tbaa !1
  br label %if.end.120

if.else.105:                                      ; preds = %if.then.96
  %110 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %110, i32 0, i32 8
  %111 = load i8*, i8** %src, align 8, !tbaa !45
  store i8* %111, i8** %row98, align 8, !tbaa !1
  %112 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params106 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %112, i32 0, i32 5
  %Active107 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params106, i32 0, i32 24
  %113 = load i32, i32* %Active107, align 4, !tbaa !48
  %tobool108 = icmp ne i32 %113, 0
  br i1 %tobool108, label %if.then.109, label %if.end.118

if.then.109:                                      ; preds = %if.else.105
  %114 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src110 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %114, i32 0, i32 8
  %115 = load i8*, i8** %src110, align 8, !tbaa !45
  %116 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_offset111 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %116, i32 0, i32 17
  %117 = load i32, i32* %src_offset111, align 4, !tbaa !23
  %idx.ext112 = zext i32 %117 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %115, i64 %idx.ext112
  %118 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr114 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %118, i32 0, i32 0
  %119 = load i8*, i8** %ptr114, align 8, !tbaa !54
  %add.ptr115 = getelementptr inbounds i8, i8* %119, i64 1
  %120 = load i32, i32* %rcount, align 4, !tbaa !30
  %conv116 = zext i32 %120 to i64
  %call117 = call i8* @memcpy(i8* %add.ptr113, i8* %add.ptr115, i64 %conv116) #5
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.109, %if.else.105
  %121 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_offset119 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %121, i32 0, i32 17
  store i32 0, i32* %src_offset119, align 4, !tbaa !23
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.118, %if.then.102
  br label %do.body

do.body:                                          ; preds = %if.end.120
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %122 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params121 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %122, i32 0, i32 5
  %Active122 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params121, i32 0, i32 24
  %123 = load i32, i32* %Active122, align 4, !tbaa !48
  %tobool123 = icmp ne i32 %123, 0
  br i1 %tobool123, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %do.end
  %124 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %tmp125 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %124, i32 0, i32 10
  %125 = load i8*, i8** %tmp125, align 8, !tbaa !43
  %126 = load i8*, i8** %row98, align 8, !tbaa !1
  %127 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  call void @idownscale_x(i8* %125, i8* %126, %struct.stream_ISpecialDownScale_state_s* %127) #4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %do.end
  %128 = load i32, i32* %rcount, align 4, !tbaa !30
  %129 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr127 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %129, i32 0, i32 0
  %130 = load i8*, i8** %ptr127, align 8, !tbaa !54
  %idx.ext128 = zext i32 %128 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %130, i64 %idx.ext128
  store i8* %add.ptr129, i8** %ptr127, align 8, !tbaa !54
  %131 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_y130 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %131, i32 0, i32 16
  %132 = load i32, i32* %src_y130, align 4, !tbaa !32
  %inc131 = add nsw i32 %132, 1
  store i32 %inc131, i32* %src_y130, align 4, !tbaa !32
  br label %do.body.132

do.body.132:                                      ; preds = %if.end.126
  br label %do.body.133

do.body.133:                                      ; preds = %do.body.132
  %133 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y134 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %133, i32 0, i32 20
  %step = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y134, i32 0, i32 1
  %dR = getelementptr inbounds %struct.ie_, %struct.ie_* %step, i32 0, i32 1
  %134 = load i32, i32* %dR, align 4, !tbaa !37
  %135 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y135 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %135, i32 0, i32 20
  %state136 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y135, i32 0, i32 0
  %R = getelementptr inbounds %struct.ia_, %struct.ia_* %state136, i32 0, i32 1
  %136 = load i32, i32* %R, align 4, !tbaa !35
  %sub137 = sub i32 %136, %134
  store i32 %sub137, i32* %R, align 4, !tbaa !35
  %137 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y138 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %137, i32 0, i32 20
  %state139 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y138, i32 0, i32 0
  %R140 = getelementptr inbounds %struct.ia_, %struct.ia_* %state139, i32 0, i32 1
  %138 = load i32, i32* %R140, align 4, !tbaa !35
  %cmp141 = icmp slt i32 %138, 0
  br i1 %cmp141, label %if.then.143, label %if.end.154

if.then.143:                                      ; preds = %do.body.133
  %139 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y144 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %139, i32 0, i32 20
  %state145 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y144, i32 0, i32 0
  %Q146 = getelementptr inbounds %struct.ia_, %struct.ia_* %state145, i32 0, i32 0
  %140 = load i32, i32* %Q146, align 4, !tbaa !33
  %inc147 = add nsw i32 %140, 1
  store i32 %inc147, i32* %Q146, align 4, !tbaa !33
  %141 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y148 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %141, i32 0, i32 20
  %step149 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y148, i32 0, i32 1
  %N = getelementptr inbounds %struct.ie_, %struct.ie_* %step149, i32 0, i32 2
  %142 = load i32, i32* %N, align 4, !tbaa !39
  %143 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y150 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %143, i32 0, i32 20
  %state151 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y150, i32 0, i32 0
  %R152 = getelementptr inbounds %struct.ia_, %struct.ia_* %state151, i32 0, i32 1
  %144 = load i32, i32* %R152, align 4, !tbaa !35
  %add153 = add i32 %144, %142
  store i32 %add153, i32* %R152, align 4, !tbaa !35
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.143, %do.body.133
  %145 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y155 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %145, i32 0, i32 20
  %step156 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y155, i32 0, i32 1
  %dQ = getelementptr inbounds %struct.ie_, %struct.ie_* %step156, i32 0, i32 0
  %146 = load i32, i32* %dQ, align 4, !tbaa !36
  %147 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y157 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %147, i32 0, i32 20
  %state158 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y157, i32 0, i32 0
  %Q159 = getelementptr inbounds %struct.ia_, %struct.ia_* %state158, i32 0, i32 0
  %148 = load i32, i32* %Q159, align 4, !tbaa !33
  %add160 = add nsw i32 %148, %146
  store i32 %add160, i32* %Q159, align 4, !tbaa !33
  br label %do.cond.161

do.cond.161:                                      ; preds = %if.end.154
  br label %do.end.162

do.end.162:                                       ; preds = %do.cond.161
  %149 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dda_y163 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %149, i32 0, i32 20
  %state164 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y163, i32 0, i32 0
  %Q165 = getelementptr inbounds %struct.ia_, %struct.ia_* %state164, i32 0, i32 0
  %150 = load i32, i32* %Q165, align 4, !tbaa !33
  store i32 %150, i32* %cur_y, align 4, !tbaa !30
  br label %do.cond.166

do.cond.166:                                      ; preds = %do.end.162
  br label %do.end.167

do.end.167:                                       ; preds = %do.cond.166
  store i32 2, i32* %cleanup.dest.slot
  %151 = bitcast i8** %row98 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  br label %cleanup.188

if.else.169:                                      ; preds = %if.end.93
  %152 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %params170 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %152, i32 0, i32 5
  %Active171 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params170, i32 0, i32 24
  %153 = load i32, i32* %Active171, align 4, !tbaa !48
  %tobool172 = icmp ne i32 %153, 0
  br i1 %tobool172, label %if.then.173, label %if.end.182

if.then.173:                                      ; preds = %if.else.169
  %154 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src174 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %154, i32 0, i32 8
  %155 = load i8*, i8** %src174, align 8, !tbaa !45
  %156 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_offset175 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %156, i32 0, i32 17
  %157 = load i32, i32* %src_offset175, align 4, !tbaa !23
  %idx.ext176 = zext i32 %157 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %155, i64 %idx.ext176
  %158 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr178 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %158, i32 0, i32 0
  %159 = load i8*, i8** %ptr178, align 8, !tbaa !54
  %add.ptr179 = getelementptr inbounds i8, i8* %159, i64 1
  %160 = load i32, i32* %rleft, align 4, !tbaa !30
  %conv180 = zext i32 %160 to i64
  %call181 = call i8* @memcpy(i8* %add.ptr177, i8* %add.ptr179, i64 %conv180) #5
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.173, %if.else.169
  %161 = load i32, i32* %rleft, align 4, !tbaa !30
  %162 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src_offset183 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %162, i32 0, i32 17
  %163 = load i32, i32* %src_offset183, align 4, !tbaa !23
  %add184 = add i32 %163, %161
  store i32 %add184, i32* %src_offset183, align 4, !tbaa !23
  %164 = load i32, i32* %rleft, align 4, !tbaa !30
  %165 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr185 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %165, i32 0, i32 0
  %166 = load i8*, i8** %ptr185, align 8, !tbaa !54
  %idx.ext186 = zext i32 %164 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %166, i64 %idx.ext186
  store i8* %add.ptr187, i8** %ptr185, align 8, !tbaa !54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.188

cleanup.188:                                      ; preds = %if.end.182, %do.end.167, %if.then.92, %if.then.86
  %167 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #2
  %168 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %cleanup.dest.190 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.190, label %cleanup.191 [
    i32 2, label %top
  ]

cleanup.191:                                      ; preds = %cleanup.188, %cleanup.71
  %169 = bitcast i32* %cur_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast %struct.stream_ISpecialDownScale_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = load i32, i32* %retval
  ret i32 %171
}

; Function Attrs: nounwind uwtable
define internal void @s_ISpecialDownScale_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_ISpecialDownScale_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_ISpecialDownScale_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_ISpecialDownScale_state_s*
  store %struct.stream_ISpecialDownScale_state_s* %2, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !55
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %9 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %9, i32 0, i32 8
  %10 = load i8*, i8** %src, align 8, !tbaa !45
  call void %7(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)) #4
  %11 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src1 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %11, i32 0, i32 8
  store i8* null, i8** %src1, align 8, !tbaa !45
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object3 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3, align 8, !tbaa !55
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %15, i32 0, i32 9
  %16 = load i8*, i8** %dst, align 8, !tbaa !44
  call void %13(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #4
  %17 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst4 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %17, i32 0, i32 9
  store i8* null, i8** %dst4, align 8, !tbaa !44
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object6, align 8, !tbaa !55
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %21 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %tmp = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %21, i32 0, i32 10
  %22 = load i8*, i8** %tmp, align 8, !tbaa !43
  call void %19(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #4
  %23 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %tmp7 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %23, i32 0, i32 10
  store i8* null, i8** %tmp7, align 8, !tbaa !43
  %24 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.stream_ISpecialDownScale_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_ISpecialDownScale_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_ISpecialDownScale_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_ISpecialDownScale_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_ISpecialDownScale_state_s*
  store %struct.stream_ISpecialDownScale_state_s* %2, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %3, i32 0, i32 8
  store i8* null, i8** %src, align 8, !tbaa !45
  %4 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %dst = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %4, i32 0, i32 9
  store i8* null, i8** %dst, align 8, !tbaa !44
  %5 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss, align 8, !tbaa !1
  %tmp = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %5, i32 0, i32 10
  store i8* null, i8** %tmp, align 8, !tbaa !43
  %6 = bitcast %struct.stream_ISpecialDownScale_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
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

; Function Attrs: nounwind uwtable
define internal void @idownscale_y(i8* %dst, i8* %tmp, %struct.stream_ISpecialDownScale_state_s* %ss) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %tmp.addr = alloca i8*, align 8
  %ss.addr = alloca %struct.stream_ISpecialDownScale_state_s*, align 8
  %kn = alloca i32, align 4
  %kc = alloca i32, align 4
  %scale = alloca float, align 4
  %pp = alloca i8*, align 8
  %pp19 = alloca i16*, align 8
  %pp43 = alloca i8*, align 8
  %pp63 = alloca i16*, align 8
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %tmp, i8** %tmp.addr, align 8, !tbaa !1
  store %struct.stream_ISpecialDownScale_state_s* %ss, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast i32* %kn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %1, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 12
  %2 = load i32, i32* %WidthOut, align 4, !tbaa !19
  %3 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %3, i32 0, i32 5
  %spp_interp = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params2, i32 0, i32 1
  %4 = load i32, i32* %spp_interp, align 4, !tbaa !17
  %mul = mul nsw i32 %2, %4
  store i32 %mul, i32* %kn, align 4, !tbaa !30
  %5 = bitcast i32* %kc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast float* %scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %7, i32 0, i32 5
  %MaxValueOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params5, i32 0, i32 9
  %8 = load i32, i32* %MaxValueOut, align 4, !tbaa !56
  %conv = uitofp i32 %8 to float
  %conv6 = fpext float %conv to double
  %div = fdiv double %conv6, 2.550000e+02
  %conv7 = fptrunc double %div to float
  store float %conv7, float* %scale, align 4, !tbaa !57
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %sizeofPixelOut = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %9, i32 0, i32 7
  %10 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !15
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then, label %if.else.37

if.then:                                          ; preds = %do.end
  %11 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %sizeofPixelIn = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %11, i32 0, i32 6
  %12 = load i32, i32* %sizeofPixelIn, align 4, !tbaa !13
  %cmp9 = icmp eq i32 %12, 1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %13 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  store i8* %14, i8** %pp, align 8, !tbaa !1
  store i32 0, i32* %kc, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %15 = load i32, i32* %kc, align 4, !tbaa !30
  %16 = load i32, i32* %kn, align 4, !tbaa !30
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.15

do.body.15:                                       ; preds = %for.body
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.body.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %17 = load i8*, i8** %pp, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !59
  %19 = load i32, i32* %kc, align 4, !tbaa !30
  %idxprom = sext i32 %19 to i64
  %20 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  store i8 %18, i8* %arrayidx, align 1, !tbaa !59
  br label %for.inc

for.inc:                                          ; preds = %do.end.17
  %21 = load i32, i32* %kc, align 4, !tbaa !30
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %kc, align 4, !tbaa !30
  %22 = load i8*, i8** %pp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %pp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  br label %if.end

if.else:                                          ; preds = %if.then
  %24 = bitcast i16** %pp19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to i16*
  store i16* %26, i16** %pp19, align 8, !tbaa !1
  store i32 0, i32* %kc, align 4, !tbaa !30
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.33, %if.else
  %27 = load i32, i32* %kc, align 4, !tbaa !30
  %28 = load i32, i32* %kn, align 4, !tbaa !30
  %cmp21 = icmp slt i32 %27, %28
  br i1 %cmp21, label %for.body.23, label %for.end.36

for.body.23:                                      ; preds = %for.cond.20
  br label %do.body.24

do.body.24:                                       ; preds = %for.body.23
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %29 = load i16*, i16** %pp19, align 8, !tbaa !1
  %30 = load i16, i16* %29, align 2, !tbaa !60
  %conv27 = zext i16 %30 to i32
  %shr = ashr i32 %conv27, 12
  %31 = load i16*, i16** %pp19, align 8, !tbaa !1
  %32 = load i16, i16* %31, align 2, !tbaa !60
  %conv28 = zext i16 %32 to i32
  %add = add nsw i32 %shr, %conv28
  %shr29 = ashr i32 %add, 7
  %conv30 = trunc i32 %shr29 to i8
  %33 = load i32, i32* %kc, align 4, !tbaa !30
  %idxprom31 = sext i32 %33 to i64
  %34 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %34, i64 %idxprom31
  store i8 %conv30, i8* %arrayidx32, align 1, !tbaa !59
  br label %for.inc.33

for.inc.33:                                       ; preds = %do.end.26
  %35 = load i32, i32* %kc, align 4, !tbaa !30
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, i32* %kc, align 4, !tbaa !30
  %36 = load i16*, i16** %pp19, align 8, !tbaa !1
  %incdec.ptr35 = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %incdec.ptr35, i16** %pp19, align 8, !tbaa !1
  br label %for.cond.20

for.end.36:                                       ; preds = %for.cond.20
  %37 = bitcast i16** %pp19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  br label %if.end

if.end:                                           ; preds = %for.end.36, %for.end
  br label %if.end.78

if.else.37:                                       ; preds = %do.end
  %38 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %sizeofPixelIn38 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %38, i32 0, i32 6
  %39 = load i32, i32* %sizeofPixelIn38, align 4, !tbaa !13
  %cmp39 = icmp eq i32 %39, 1
  br i1 %cmp39, label %if.then.41, label %if.else.61

if.then.41:                                       ; preds = %if.else.37
  %40 = bitcast i8** %pp43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  %41 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  store i8* %41, i8** %pp43, align 8, !tbaa !1
  store i32 0, i32* %kc, align 4, !tbaa !30
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.57, %if.then.41
  %42 = load i32, i32* %kc, align 4, !tbaa !30
  %43 = load i32, i32* %kn, align 4, !tbaa !30
  %cmp45 = icmp slt i32 %42, %43
  br i1 %cmp45, label %for.body.47, label %for.end.60

for.body.47:                                      ; preds = %for.cond.44
  br label %do.body.48

do.body.48:                                       ; preds = %for.body.47
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.body.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %44 = load i8*, i8** %pp43, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !59
  %conv51 = zext i8 %45 to i32
  %conv52 = sitofp i32 %conv51 to float
  %46 = load float, float* %scale, align 4, !tbaa !57
  %mul53 = fmul float %conv52, %46
  %conv54 = fptoui float %mul53 to i16
  %47 = load i32, i32* %kc, align 4, !tbaa !30
  %idxprom55 = sext i32 %47 to i64
  %48 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %49 = bitcast i8* %48 to i16*
  %arrayidx56 = getelementptr inbounds i16, i16* %49, i64 %idxprom55
  store i16 %conv54, i16* %arrayidx56, align 2, !tbaa !60
  br label %for.inc.57

for.inc.57:                                       ; preds = %do.end.50
  %50 = load i32, i32* %kc, align 4, !tbaa !30
  %inc58 = add nsw i32 %50, 1
  store i32 %inc58, i32* %kc, align 4, !tbaa !30
  %51 = load i8*, i8** %pp43, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr59, i8** %pp43, align 8, !tbaa !1
  br label %for.cond.44

for.end.60:                                       ; preds = %for.cond.44
  %52 = bitcast i8** %pp43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  br label %if.end.77

if.else.61:                                       ; preds = %if.else.37
  %53 = bitcast i16** %pp63 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %54 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  %55 = bitcast i8* %54 to i16*
  store i16* %55, i16** %pp63, align 8, !tbaa !1
  store i32 0, i32* %kc, align 4, !tbaa !30
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.73, %if.else.61
  %56 = load i32, i32* %kc, align 4, !tbaa !30
  %57 = load i32, i32* %kn, align 4, !tbaa !30
  %cmp65 = icmp slt i32 %56, %57
  br i1 %cmp65, label %for.body.67, label %for.end.76

for.body.67:                                      ; preds = %for.cond.64
  br label %do.body.68

do.body.68:                                       ; preds = %for.body.67
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.68
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  %58 = load i16*, i16** %pp63, align 8, !tbaa !1
  %59 = load i16, i16* %58, align 2, !tbaa !60
  %60 = load i32, i32* %kc, align 4, !tbaa !30
  %idxprom71 = sext i32 %60 to i64
  %61 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %62 = bitcast i8* %61 to i16*
  %arrayidx72 = getelementptr inbounds i16, i16* %62, i64 %idxprom71
  store i16 %59, i16* %arrayidx72, align 2, !tbaa !60
  br label %for.inc.73

for.inc.73:                                       ; preds = %do.end.70
  %63 = load i32, i32* %kc, align 4, !tbaa !30
  %inc74 = add nsw i32 %63, 1
  store i32 %inc74, i32* %kc, align 4, !tbaa !30
  %64 = load i16*, i16** %pp63, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %incdec.ptr75, i16** %pp63, align 8, !tbaa !1
  br label %for.cond.64

for.end.76:                                       ; preds = %for.cond.64
  %65 = bitcast i16** %pp63 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %for.end.60
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end
  br label %do.body.79

do.body.79:                                       ; preds = %if.end.78
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.body.79
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  %66 = bitcast float* %scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %kc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %kn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @idownscale_x(i8* %tmp, i8* %src, %struct.stream_ISpecialDownScale_state_s* %ss) #0 {
entry:
  %tmp.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %ss.addr = alloca %struct.stream_ISpecialDownScale_state_s*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %Colors = alloca i32, align 4
  %WidthIn = alloca i32, align 4
  %prev_y = alloca i32, align 4
  %cur_y = alloca i32, align 4
  %firstline = alloca i32, align 4
  %polarity_additive = alloca i32, align 4
  %tp = alloca i8*, align 8
  %pp = alloca i8*, align 8
  %endx = alloca i32, align 4
  %endx168 = alloca i32, align 4
  %tp255 = alloca i16*, align 8
  %pp259 = alloca i16*, align 8
  %endx274 = alloca i32, align 4
  %endx354 = alloca i32, align 4
  store i8* %tmp, i8** %tmp.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store %struct.stream_ISpecialDownScale_state_s* %ss, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %Colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %3, i32 0, i32 5
  %spp_interp = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 1
  %4 = load i32, i32* %spp_interp, align 4, !tbaa !17
  store i32 %4, i32* %Colors, align 4, !tbaa !30
  %5 = bitcast i32* %WidthIn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %6, i32 0, i32 5
  %WidthIn6 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params5, i32 0, i32 10
  %7 = load i32, i32* %WidthIn6, align 4, !tbaa !16
  store i32 %7, i32* %WidthIn, align 4, !tbaa !30
  %8 = bitcast i32* %prev_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %cur_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %firstline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %polarity_additive to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %12, i32 0, i32 5
  %ColorPolarityAdditive = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params11, i32 0, i32 14
  %13 = load i32, i32* %ColorPolarityAdditive, align 4, !tbaa !62
  store i32 %13, i32* %polarity_additive, align 4, !tbaa !30
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.12

do.body.12:                                       ; preds = %do.body
  %14 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %14, i32 0, i32 20
  %step = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y, i32 0, i32 1
  %dR = getelementptr inbounds %struct.ie_, %struct.ie_* %step, i32 0, i32 1
  %15 = load i32, i32* %dR, align 4, !tbaa !37
  %16 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y13 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %16, i32 0, i32 20
  %state = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y13, i32 0, i32 0
  %R = getelementptr inbounds %struct.ia_, %struct.ia_* %state, i32 0, i32 1
  %17 = load i32, i32* %R, align 4, !tbaa !35
  %add = add i32 %17, %15
  store i32 %add, i32* %R, align 4, !tbaa !35
  %18 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y14 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %18, i32 0, i32 20
  %state15 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y14, i32 0, i32 0
  %R16 = getelementptr inbounds %struct.ia_, %struct.ia_* %state15, i32 0, i32 1
  %19 = load i32, i32* %R16, align 4, !tbaa !35
  %20 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y17 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %20, i32 0, i32 20
  %step18 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y17, i32 0, i32 1
  %N = getelementptr inbounds %struct.ie_, %struct.ie_* %step18, i32 0, i32 2
  %21 = load i32, i32* %N, align 4, !tbaa !39
  %cmp = icmp uge i32 %19, %21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.12
  %22 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y19 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %22, i32 0, i32 20
  %state20 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y19, i32 0, i32 0
  %Q = getelementptr inbounds %struct.ia_, %struct.ia_* %state20, i32 0, i32 0
  %23 = load i32, i32* %Q, align 4, !tbaa !33
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %Q, align 4, !tbaa !33
  %24 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y21 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %24, i32 0, i32 20
  %step22 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y21, i32 0, i32 1
  %N23 = getelementptr inbounds %struct.ie_, %struct.ie_* %step22, i32 0, i32 2
  %25 = load i32, i32* %N23, align 4, !tbaa !39
  %26 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y24 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %26, i32 0, i32 20
  %state25 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y24, i32 0, i32 0
  %R26 = getelementptr inbounds %struct.ia_, %struct.ia_* %state25, i32 0, i32 1
  %27 = load i32, i32* %R26, align 4, !tbaa !35
  %sub = sub i32 %27, %25
  store i32 %sub, i32* %R26, align 4, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.12
  %28 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y27 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %28, i32 0, i32 20
  %step28 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y27, i32 0, i32 1
  %dQ = getelementptr inbounds %struct.ie_, %struct.ie_* %step28, i32 0, i32 0
  %29 = load i32, i32* %dQ, align 4, !tbaa !36
  %30 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y29 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %30, i32 0, i32 20
  %state30 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y29, i32 0, i32 0
  %Q31 = getelementptr inbounds %struct.ia_, %struct.ia_* %state30, i32 0, i32 0
  %31 = load i32, i32* %Q31, align 4, !tbaa !33
  %sub32 = sub nsw i32 %31, %29
  store i32 %sub32, i32* %Q31, align 4, !tbaa !33
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %32 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y33 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %32, i32 0, i32 20
  %state34 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y33, i32 0, i32 0
  %Q35 = getelementptr inbounds %struct.ia_, %struct.ia_* %state34, i32 0, i32 0
  %33 = load i32, i32* %Q35, align 4, !tbaa !33
  store i32 %33, i32* %prev_y, align 4, !tbaa !30
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.end
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  %34 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y40 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %34, i32 0, i32 20
  %step41 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y40, i32 0, i32 1
  %dR42 = getelementptr inbounds %struct.ie_, %struct.ie_* %step41, i32 0, i32 1
  %35 = load i32, i32* %dR42, align 4, !tbaa !37
  %36 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y43 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %36, i32 0, i32 20
  %state44 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y43, i32 0, i32 0
  %R45 = getelementptr inbounds %struct.ia_, %struct.ia_* %state44, i32 0, i32 1
  %37 = load i32, i32* %R45, align 4, !tbaa !35
  %sub46 = sub i32 %37, %35
  store i32 %sub46, i32* %R45, align 4, !tbaa !35
  %38 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y47 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %38, i32 0, i32 20
  %state48 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y47, i32 0, i32 0
  %R49 = getelementptr inbounds %struct.ia_, %struct.ia_* %state48, i32 0, i32 1
  %39 = load i32, i32* %R49, align 4, !tbaa !35
  %cmp50 = icmp slt i32 %39, 0
  br i1 %cmp50, label %if.then.51, label %if.end.62

if.then.51:                                       ; preds = %do.body.39
  %40 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y52 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %40, i32 0, i32 20
  %state53 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y52, i32 0, i32 0
  %Q54 = getelementptr inbounds %struct.ia_, %struct.ia_* %state53, i32 0, i32 0
  %41 = load i32, i32* %Q54, align 4, !tbaa !33
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %Q54, align 4, !tbaa !33
  %42 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y55 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %42, i32 0, i32 20
  %step56 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y55, i32 0, i32 1
  %N57 = getelementptr inbounds %struct.ie_, %struct.ie_* %step56, i32 0, i32 2
  %43 = load i32, i32* %N57, align 4, !tbaa !39
  %44 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y58 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %44, i32 0, i32 20
  %state59 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y58, i32 0, i32 0
  %R60 = getelementptr inbounds %struct.ia_, %struct.ia_* %state59, i32 0, i32 1
  %45 = load i32, i32* %R60, align 4, !tbaa !35
  %add61 = add i32 %45, %43
  store i32 %add61, i32* %R60, align 4, !tbaa !35
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.51, %do.body.39
  %46 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y63 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %46, i32 0, i32 20
  %step64 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y63, i32 0, i32 1
  %dQ65 = getelementptr inbounds %struct.ie_, %struct.ie_* %step64, i32 0, i32 0
  %47 = load i32, i32* %dQ65, align 4, !tbaa !36
  %48 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y66 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %48, i32 0, i32 20
  %state67 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y66, i32 0, i32 0
  %Q68 = getelementptr inbounds %struct.ia_, %struct.ia_* %state67, i32 0, i32 0
  %49 = load i32, i32* %Q68, align 4, !tbaa !33
  %add69 = add nsw i32 %49, %47
  store i32 %add69, i32* %Q68, align 4, !tbaa !33
  br label %do.cond.70

do.cond.70:                                       ; preds = %if.end.62
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  %50 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_y72 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %50, i32 0, i32 20
  %state73 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_y72, i32 0, i32 0
  %Q74 = getelementptr inbounds %struct.ia_, %struct.ia_* %state73, i32 0, i32 0
  %51 = load i32, i32* %Q74, align 4, !tbaa !33
  store i32 %51, i32* %cur_y, align 4, !tbaa !30
  br label %do.cond.75

do.cond.75:                                       ; preds = %do.end.71
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  %52 = load i32, i32* %prev_y, align 4, !tbaa !30
  %53 = load i32, i32* %cur_y, align 4, !tbaa !30
  %cmp77 = icmp ne i32 %52, %53
  %conv = zext i1 %cmp77 to i32
  store i32 %conv, i32* %firstline, align 4, !tbaa !30
  %54 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %sizeofPixelIn = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %54, i32 0, i32 6
  %55 = load i32, i32* %sizeofPixelIn, align 4, !tbaa !13
  %cmp78 = icmp eq i32 %55, 1
  br i1 %cmp78, label %if.then.80, label %if.else.249

if.then.80:                                       ; preds = %do.end.76
  store i32 0, i32* %c, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc.246, %if.then.80
  %56 = load i32, i32* %c, align 4, !tbaa !30
  %57 = load i32, i32* %Colors, align 4, !tbaa !30
  %cmp81 = icmp slt i32 %56, %57
  br i1 %cmp81, label %for.body, label %for.end.248

for.body:                                         ; preds = %for.cond
  %58 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  %60 = load i32, i32* %c, align 4, !tbaa !30
  %idx.ext = sext i32 %60 to i64
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 %idx.ext
  store i8* %add.ptr, i8** %tp, align 8, !tbaa !1
  %61 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #2
  %62 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %63 = load i32, i32* %c, align 4, !tbaa !30
  %idx.ext85 = sext i32 %63 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %62, i64 %idx.ext85
  store i8* %add.ptr86, i8** %pp, align 8, !tbaa !1
  %64 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %64, i32 0, i32 15
  %65 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x_init = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %65, i32 0, i32 11
  %66 = bitcast %struct.gx_dda_int_s* %dda_x to i8*
  %67 = bitcast %struct.gx_dda_int_s* %dda_x_init to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 20, i32 4, i1 false), !tbaa.struct !29
  br label %do.body.87

do.body.87:                                       ; preds = %for.body
  br label %do.cond.88

do.cond.88:                                       ; preds = %do.body.87
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  %68 = load i32, i32* %polarity_additive, align 4, !tbaa !30
  %tobool = icmp ne i32 %68, 0
  br i1 %tobool, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %do.end.89
  store i32 0, i32* %i, align 4, !tbaa !30
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc, %if.then.90
  %69 = load i32, i32* %i, align 4, !tbaa !30
  %70 = load i32, i32* %WidthIn, align 4, !tbaa !30
  %cmp92 = icmp slt i32 %69, %70
  br i1 %cmp92, label %for.body.94, label %for.end

for.body.94:                                      ; preds = %for.cond.91
  %71 = bitcast i32* %endx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  br label %do.body.96

do.body.96:                                       ; preds = %for.body.94
  br label %do.body.97

do.body.97:                                       ; preds = %do.body.96
  %72 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x98 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %72, i32 0, i32 15
  %step99 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x98, i32 0, i32 1
  %dR100 = getelementptr inbounds %struct.ie_, %struct.ie_* %step99, i32 0, i32 1
  %73 = load i32, i32* %dR100, align 4, !tbaa !27
  %74 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x101 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %74, i32 0, i32 15
  %state102 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x101, i32 0, i32 0
  %R103 = getelementptr inbounds %struct.ia_, %struct.ia_* %state102, i32 0, i32 1
  %75 = load i32, i32* %R103, align 4, !tbaa !25
  %sub104 = sub i32 %75, %73
  store i32 %sub104, i32* %R103, align 4, !tbaa !25
  %76 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x105 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %76, i32 0, i32 15
  %state106 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x105, i32 0, i32 0
  %R107 = getelementptr inbounds %struct.ia_, %struct.ia_* %state106, i32 0, i32 1
  %77 = load i32, i32* %R107, align 4, !tbaa !25
  %cmp108 = icmp slt i32 %77, 0
  br i1 %cmp108, label %if.then.110, label %if.end.122

if.then.110:                                      ; preds = %do.body.97
  %78 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x111 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %78, i32 0, i32 15
  %state112 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x111, i32 0, i32 0
  %Q113 = getelementptr inbounds %struct.ia_, %struct.ia_* %state112, i32 0, i32 0
  %79 = load i32, i32* %Q113, align 4, !tbaa !24
  %inc114 = add nsw i32 %79, 1
  store i32 %inc114, i32* %Q113, align 4, !tbaa !24
  %80 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x115 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %80, i32 0, i32 15
  %step116 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x115, i32 0, i32 1
  %N117 = getelementptr inbounds %struct.ie_, %struct.ie_* %step116, i32 0, i32 2
  %81 = load i32, i32* %N117, align 4, !tbaa !28
  %82 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x118 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %82, i32 0, i32 15
  %state119 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x118, i32 0, i32 0
  %R120 = getelementptr inbounds %struct.ia_, %struct.ia_* %state119, i32 0, i32 1
  %83 = load i32, i32* %R120, align 4, !tbaa !25
  %add121 = add i32 %83, %81
  store i32 %add121, i32* %R120, align 4, !tbaa !25
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.110, %do.body.97
  %84 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x123 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %84, i32 0, i32 15
  %step124 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x123, i32 0, i32 1
  %dQ125 = getelementptr inbounds %struct.ie_, %struct.ie_* %step124, i32 0, i32 0
  %85 = load i32, i32* %dQ125, align 4, !tbaa !26
  %86 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x126 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %86, i32 0, i32 15
  %state127 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x126, i32 0, i32 0
  %Q128 = getelementptr inbounds %struct.ia_, %struct.ia_* %state127, i32 0, i32 0
  %87 = load i32, i32* %Q128, align 4, !tbaa !24
  %add129 = add nsw i32 %87, %85
  store i32 %add129, i32* %Q128, align 4, !tbaa !24
  br label %do.cond.130

do.cond.130:                                      ; preds = %if.end.122
  br label %do.end.131

do.end.131:                                       ; preds = %do.cond.130
  %88 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x132 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %88, i32 0, i32 15
  %state133 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x132, i32 0, i32 0
  %Q134 = getelementptr inbounds %struct.ia_, %struct.ia_* %state133, i32 0, i32 0
  %89 = load i32, i32* %Q134, align 4, !tbaa !24
  store i32 %89, i32* %endx, align 4, !tbaa !30
  br label %do.cond.135

do.cond.135:                                      ; preds = %do.end.131
  br label %do.end.136

do.end.136:                                       ; preds = %do.cond.135
  %90 = load i32, i32* %firstline, align 4, !tbaa !30
  %tobool137 = icmp ne i32 %90, 0
  br i1 %tobool137, label %if.then.142, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.136
  %91 = load i8*, i8** %pp, align 8, !tbaa !1
  %92 = load i8, i8* %91, align 1, !tbaa !59
  %conv138 = zext i8 %92 to i32
  %93 = load i8*, i8** %tp, align 8, !tbaa !1
  %94 = load i8, i8* %93, align 1, !tbaa !59
  %conv139 = zext i8 %94 to i32
  %cmp140 = icmp slt i32 %conv138, %conv139
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %lor.lhs.false, %do.end.136
  %95 = load i8*, i8** %pp, align 8, !tbaa !1
  %96 = load i8, i8* %95, align 1, !tbaa !59
  %97 = load i8*, i8** %tp, align 8, !tbaa !1
  store i8 %96, i8* %97, align 1, !tbaa !59
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %lor.lhs.false
  %98 = load i32, i32* %i, align 4, !tbaa !30
  %inc144 = add nsw i32 %98, 1
  store i32 %inc144, i32* %i, align 4, !tbaa !30
  %99 = load i32, i32* %Colors, align 4, !tbaa !30
  %100 = load i8*, i8** %pp, align 8, !tbaa !1
  %idx.ext145 = sext i32 %99 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %100, i64 %idx.ext145
  store i8* %add.ptr146, i8** %pp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.154, %if.end.143
  %101 = load i32, i32* %i, align 4, !tbaa !30
  %102 = load i32, i32* %endx, align 4, !tbaa !30
  %cmp147 = icmp slt i32 %101, %102
  br i1 %cmp147, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %103 = load i8*, i8** %pp, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !59
  %conv149 = zext i8 %104 to i32
  %105 = load i8*, i8** %tp, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !59
  %conv150 = zext i8 %106 to i32
  %cmp151 = icmp slt i32 %conv149, %conv150
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %while.body
  %107 = load i8*, i8** %pp, align 8, !tbaa !1
  %108 = load i8, i8* %107, align 1, !tbaa !59
  %109 = load i8*, i8** %tp, align 8, !tbaa !1
  store i8 %108, i8* %109, align 1, !tbaa !59
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.153, %while.body
  %110 = load i32, i32* %i, align 4, !tbaa !30
  %inc155 = add nsw i32 %110, 1
  store i32 %inc155, i32* %i, align 4, !tbaa !30
  %111 = load i32, i32* %Colors, align 4, !tbaa !30
  %112 = load i8*, i8** %pp, align 8, !tbaa !1
  %idx.ext156 = sext i32 %111 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %112, i64 %idx.ext156
  store i8* %add.ptr157, i8** %pp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.158

do.body.158:                                      ; preds = %while.end
  br label %do.cond.159

do.cond.159:                                      ; preds = %do.body.158
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  %113 = bitcast i32* %endx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  br label %for.inc

for.inc:                                          ; preds = %do.end.160
  %114 = load i32, i32* %Colors, align 4, !tbaa !30
  %115 = load i8*, i8** %tp, align 8, !tbaa !1
  %idx.ext161 = sext i32 %114 to i64
  %add.ptr162 = getelementptr inbounds i8, i8* %115, i64 %idx.ext161
  store i8* %add.ptr162, i8** %tp, align 8, !tbaa !1
  br label %for.cond.91

for.end:                                          ; preds = %for.cond.91
  br label %if.end.242

if.else:                                          ; preds = %do.end.89
  store i32 0, i32* %i, align 4, !tbaa !30
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.238, %if.else
  %116 = load i32, i32* %i, align 4, !tbaa !30
  %117 = load i32, i32* %WidthIn, align 4, !tbaa !30
  %cmp164 = icmp slt i32 %116, %117
  br i1 %cmp164, label %for.body.166, label %for.end.241

for.body.166:                                     ; preds = %for.cond.163
  %118 = bitcast i32* %endx168 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #2
  br label %do.body.169

do.body.169:                                      ; preds = %for.body.166
  br label %do.body.170

do.body.170:                                      ; preds = %do.body.169
  %119 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x171 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %119, i32 0, i32 15
  %step172 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x171, i32 0, i32 1
  %dR173 = getelementptr inbounds %struct.ie_, %struct.ie_* %step172, i32 0, i32 1
  %120 = load i32, i32* %dR173, align 4, !tbaa !27
  %121 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x174 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %121, i32 0, i32 15
  %state175 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x174, i32 0, i32 0
  %R176 = getelementptr inbounds %struct.ia_, %struct.ia_* %state175, i32 0, i32 1
  %122 = load i32, i32* %R176, align 4, !tbaa !25
  %sub177 = sub i32 %122, %120
  store i32 %sub177, i32* %R176, align 4, !tbaa !25
  %123 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x178 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %123, i32 0, i32 15
  %state179 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x178, i32 0, i32 0
  %R180 = getelementptr inbounds %struct.ia_, %struct.ia_* %state179, i32 0, i32 1
  %124 = load i32, i32* %R180, align 4, !tbaa !25
  %cmp181 = icmp slt i32 %124, 0
  br i1 %cmp181, label %if.then.183, label %if.end.195

if.then.183:                                      ; preds = %do.body.170
  %125 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x184 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %125, i32 0, i32 15
  %state185 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x184, i32 0, i32 0
  %Q186 = getelementptr inbounds %struct.ia_, %struct.ia_* %state185, i32 0, i32 0
  %126 = load i32, i32* %Q186, align 4, !tbaa !24
  %inc187 = add nsw i32 %126, 1
  store i32 %inc187, i32* %Q186, align 4, !tbaa !24
  %127 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x188 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %127, i32 0, i32 15
  %step189 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x188, i32 0, i32 1
  %N190 = getelementptr inbounds %struct.ie_, %struct.ie_* %step189, i32 0, i32 2
  %128 = load i32, i32* %N190, align 4, !tbaa !28
  %129 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x191 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %129, i32 0, i32 15
  %state192 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x191, i32 0, i32 0
  %R193 = getelementptr inbounds %struct.ia_, %struct.ia_* %state192, i32 0, i32 1
  %130 = load i32, i32* %R193, align 4, !tbaa !25
  %add194 = add i32 %130, %128
  store i32 %add194, i32* %R193, align 4, !tbaa !25
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.183, %do.body.170
  %131 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x196 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %131, i32 0, i32 15
  %step197 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x196, i32 0, i32 1
  %dQ198 = getelementptr inbounds %struct.ie_, %struct.ie_* %step197, i32 0, i32 0
  %132 = load i32, i32* %dQ198, align 4, !tbaa !26
  %133 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x199 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %133, i32 0, i32 15
  %state200 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x199, i32 0, i32 0
  %Q201 = getelementptr inbounds %struct.ia_, %struct.ia_* %state200, i32 0, i32 0
  %134 = load i32, i32* %Q201, align 4, !tbaa !24
  %add202 = add nsw i32 %134, %132
  store i32 %add202, i32* %Q201, align 4, !tbaa !24
  br label %do.cond.203

do.cond.203:                                      ; preds = %if.end.195
  br label %do.end.204

do.end.204:                                       ; preds = %do.cond.203
  %135 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x205 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %135, i32 0, i32 15
  %state206 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x205, i32 0, i32 0
  %Q207 = getelementptr inbounds %struct.ia_, %struct.ia_* %state206, i32 0, i32 0
  %136 = load i32, i32* %Q207, align 4, !tbaa !24
  store i32 %136, i32* %endx168, align 4, !tbaa !30
  br label %do.cond.208

do.cond.208:                                      ; preds = %do.end.204
  br label %do.end.209

do.end.209:                                       ; preds = %do.cond.208
  %137 = load i32, i32* %firstline, align 4, !tbaa !30
  %tobool210 = icmp ne i32 %137, 0
  br i1 %tobool210, label %if.then.216, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %do.end.209
  %138 = load i8*, i8** %pp, align 8, !tbaa !1
  %139 = load i8, i8* %138, align 1, !tbaa !59
  %conv212 = zext i8 %139 to i32
  %140 = load i8*, i8** %tp, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !59
  %conv213 = zext i8 %141 to i32
  %cmp214 = icmp sgt i32 %conv212, %conv213
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %lor.lhs.false.211, %do.end.209
  %142 = load i8*, i8** %pp, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !59
  %144 = load i8*, i8** %tp, align 8, !tbaa !1
  store i8 %143, i8* %144, align 1, !tbaa !59
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.216, %lor.lhs.false.211
  %145 = load i32, i32* %i, align 4, !tbaa !30
  %inc218 = add nsw i32 %145, 1
  store i32 %inc218, i32* %i, align 4, !tbaa !30
  %146 = load i32, i32* %Colors, align 4, !tbaa !30
  %147 = load i8*, i8** %pp, align 8, !tbaa !1
  %idx.ext219 = sext i32 %146 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %147, i64 %idx.ext219
  store i8* %add.ptr220, i8** %pp, align 8, !tbaa !1
  br label %while.cond.221

while.cond.221:                                   ; preds = %if.end.230, %if.end.217
  %148 = load i32, i32* %i, align 4, !tbaa !30
  %149 = load i32, i32* %endx168, align 4, !tbaa !30
  %cmp222 = icmp slt i32 %148, %149
  br i1 %cmp222, label %while.body.224, label %while.end.234

while.body.224:                                   ; preds = %while.cond.221
  %150 = load i8*, i8** %pp, align 8, !tbaa !1
  %151 = load i8, i8* %150, align 1, !tbaa !59
  %conv225 = zext i8 %151 to i32
  %152 = load i8*, i8** %tp, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !59
  %conv226 = zext i8 %153 to i32
  %cmp227 = icmp sgt i32 %conv225, %conv226
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %while.body.224
  %154 = load i8*, i8** %pp, align 8, !tbaa !1
  %155 = load i8, i8* %154, align 1, !tbaa !59
  %156 = load i8*, i8** %tp, align 8, !tbaa !1
  store i8 %155, i8* %156, align 1, !tbaa !59
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %while.body.224
  %157 = load i32, i32* %i, align 4, !tbaa !30
  %inc231 = add nsw i32 %157, 1
  store i32 %inc231, i32* %i, align 4, !tbaa !30
  %158 = load i32, i32* %Colors, align 4, !tbaa !30
  %159 = load i8*, i8** %pp, align 8, !tbaa !1
  %idx.ext232 = sext i32 %158 to i64
  %add.ptr233 = getelementptr inbounds i8, i8* %159, i64 %idx.ext232
  store i8* %add.ptr233, i8** %pp, align 8, !tbaa !1
  br label %while.cond.221

while.end.234:                                    ; preds = %while.cond.221
  br label %do.body.235

do.body.235:                                      ; preds = %while.end.234
  br label %do.cond.236

do.cond.236:                                      ; preds = %do.body.235
  br label %do.end.237

do.end.237:                                       ; preds = %do.cond.236
  %160 = bitcast i32* %endx168 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  br label %for.inc.238

for.inc.238:                                      ; preds = %do.end.237
  %161 = load i32, i32* %Colors, align 4, !tbaa !30
  %162 = load i8*, i8** %tp, align 8, !tbaa !1
  %idx.ext239 = sext i32 %161 to i64
  %add.ptr240 = getelementptr inbounds i8, i8* %162, i64 %idx.ext239
  store i8* %add.ptr240, i8** %tp, align 8, !tbaa !1
  br label %for.cond.163

for.end.241:                                      ; preds = %for.cond.163
  br label %if.end.242

if.end.242:                                       ; preds = %for.end.241, %for.end
  br label %do.body.243

do.body.243:                                      ; preds = %if.end.242
  br label %do.cond.244

do.cond.244:                                      ; preds = %do.body.243
  br label %do.end.245

do.end.245:                                       ; preds = %do.cond.244
  %163 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #2
  br label %for.inc.246

for.inc.246:                                      ; preds = %do.end.245
  %165 = load i32, i32* %c, align 4, !tbaa !30
  %inc247 = add nsw i32 %165, 1
  store i32 %inc247, i32* %c, align 4, !tbaa !30
  br label %for.cond

for.end.248:                                      ; preds = %for.cond
  br label %if.end.435

if.else.249:                                      ; preds = %do.end.76
  store i32 0, i32* %c, align 4, !tbaa !30
  br label %for.cond.250

for.cond.250:                                     ; preds = %for.inc.432, %if.else.249
  %166 = load i32, i32* %c, align 4, !tbaa !30
  %167 = load i32, i32* %Colors, align 4, !tbaa !30
  %cmp251 = icmp slt i32 %166, %167
  br i1 %cmp251, label %for.body.253, label %for.end.434

for.body.253:                                     ; preds = %for.cond.250
  %168 = bitcast i16** %tp255 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #2
  %169 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  %170 = bitcast i8* %169 to i16*
  %171 = load i32, i32* %c, align 4, !tbaa !30
  %idx.ext256 = sext i32 %171 to i64
  %add.ptr257 = getelementptr inbounds i16, i16* %170, i64 %idx.ext256
  store i16* %add.ptr257, i16** %tp255, align 8, !tbaa !1
  %172 = bitcast i16** %pp259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #2
  %173 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %174 = bitcast i8* %173 to i16*
  %175 = load i32, i32* %c, align 4, !tbaa !30
  %idx.ext260 = sext i32 %175 to i64
  %add.ptr261 = getelementptr inbounds i16, i16* %174, i64 %idx.ext260
  store i16* %add.ptr261, i16** %pp259, align 8, !tbaa !1
  %176 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x262 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %176, i32 0, i32 15
  %177 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x_init263 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %177, i32 0, i32 11
  %178 = bitcast %struct.gx_dda_int_s* %dda_x262 to i8*
  %179 = bitcast %struct.gx_dda_int_s* %dda_x_init263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %179, i64 20, i32 4, i1 false), !tbaa.struct !29
  br label %do.body.264

do.body.264:                                      ; preds = %for.body.253
  br label %do.cond.265

do.cond.265:                                      ; preds = %do.body.264
  br label %do.end.266

do.end.266:                                       ; preds = %do.cond.265
  %180 = load i32, i32* %polarity_additive, align 4, !tbaa !30
  %tobool267 = icmp ne i32 %180, 0
  br i1 %tobool267, label %if.then.268, label %if.else.348

if.then.268:                                      ; preds = %do.end.266
  store i32 0, i32* %i, align 4, !tbaa !30
  br label %for.cond.269

for.cond.269:                                     ; preds = %for.inc.344, %if.then.268
  %181 = load i32, i32* %i, align 4, !tbaa !30
  %182 = load i32, i32* %WidthIn, align 4, !tbaa !30
  %cmp270 = icmp slt i32 %181, %182
  br i1 %cmp270, label %for.body.272, label %for.end.347

for.body.272:                                     ; preds = %for.cond.269
  %183 = bitcast i32* %endx274 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #2
  br label %do.body.275

do.body.275:                                      ; preds = %for.body.272
  br label %do.body.276

do.body.276:                                      ; preds = %do.body.275
  %184 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x277 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %184, i32 0, i32 15
  %step278 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x277, i32 0, i32 1
  %dR279 = getelementptr inbounds %struct.ie_, %struct.ie_* %step278, i32 0, i32 1
  %185 = load i32, i32* %dR279, align 4, !tbaa !27
  %186 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x280 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %186, i32 0, i32 15
  %state281 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x280, i32 0, i32 0
  %R282 = getelementptr inbounds %struct.ia_, %struct.ia_* %state281, i32 0, i32 1
  %187 = load i32, i32* %R282, align 4, !tbaa !25
  %sub283 = sub i32 %187, %185
  store i32 %sub283, i32* %R282, align 4, !tbaa !25
  %188 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x284 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %188, i32 0, i32 15
  %state285 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x284, i32 0, i32 0
  %R286 = getelementptr inbounds %struct.ia_, %struct.ia_* %state285, i32 0, i32 1
  %189 = load i32, i32* %R286, align 4, !tbaa !25
  %cmp287 = icmp slt i32 %189, 0
  br i1 %cmp287, label %if.then.289, label %if.end.301

if.then.289:                                      ; preds = %do.body.276
  %190 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x290 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %190, i32 0, i32 15
  %state291 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x290, i32 0, i32 0
  %Q292 = getelementptr inbounds %struct.ia_, %struct.ia_* %state291, i32 0, i32 0
  %191 = load i32, i32* %Q292, align 4, !tbaa !24
  %inc293 = add nsw i32 %191, 1
  store i32 %inc293, i32* %Q292, align 4, !tbaa !24
  %192 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x294 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %192, i32 0, i32 15
  %step295 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x294, i32 0, i32 1
  %N296 = getelementptr inbounds %struct.ie_, %struct.ie_* %step295, i32 0, i32 2
  %193 = load i32, i32* %N296, align 4, !tbaa !28
  %194 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x297 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %194, i32 0, i32 15
  %state298 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x297, i32 0, i32 0
  %R299 = getelementptr inbounds %struct.ia_, %struct.ia_* %state298, i32 0, i32 1
  %195 = load i32, i32* %R299, align 4, !tbaa !25
  %add300 = add i32 %195, %193
  store i32 %add300, i32* %R299, align 4, !tbaa !25
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.289, %do.body.276
  %196 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x302 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %196, i32 0, i32 15
  %step303 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x302, i32 0, i32 1
  %dQ304 = getelementptr inbounds %struct.ie_, %struct.ie_* %step303, i32 0, i32 0
  %197 = load i32, i32* %dQ304, align 4, !tbaa !26
  %198 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x305 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %198, i32 0, i32 15
  %state306 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x305, i32 0, i32 0
  %Q307 = getelementptr inbounds %struct.ia_, %struct.ia_* %state306, i32 0, i32 0
  %199 = load i32, i32* %Q307, align 4, !tbaa !24
  %add308 = add nsw i32 %199, %197
  store i32 %add308, i32* %Q307, align 4, !tbaa !24
  br label %do.cond.309

do.cond.309:                                      ; preds = %if.end.301
  br label %do.end.310

do.end.310:                                       ; preds = %do.cond.309
  %200 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x311 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %200, i32 0, i32 15
  %state312 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x311, i32 0, i32 0
  %Q313 = getelementptr inbounds %struct.ia_, %struct.ia_* %state312, i32 0, i32 0
  %201 = load i32, i32* %Q313, align 4, !tbaa !24
  store i32 %201, i32* %endx274, align 4, !tbaa !30
  br label %do.cond.314

do.cond.314:                                      ; preds = %do.end.310
  br label %do.end.315

do.end.315:                                       ; preds = %do.cond.314
  %202 = load i32, i32* %firstline, align 4, !tbaa !30
  %tobool316 = icmp ne i32 %202, 0
  br i1 %tobool316, label %if.then.322, label %lor.lhs.false.317

lor.lhs.false.317:                                ; preds = %do.end.315
  %203 = load i16*, i16** %pp259, align 8, !tbaa !1
  %204 = load i16, i16* %203, align 2, !tbaa !60
  %conv318 = zext i16 %204 to i32
  %205 = load i16*, i16** %tp255, align 8, !tbaa !1
  %206 = load i16, i16* %205, align 2, !tbaa !60
  %conv319 = zext i16 %206 to i32
  %cmp320 = icmp slt i32 %conv318, %conv319
  br i1 %cmp320, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %lor.lhs.false.317, %do.end.315
  %207 = load i16*, i16** %pp259, align 8, !tbaa !1
  %208 = load i16, i16* %207, align 2, !tbaa !60
  %209 = load i16*, i16** %tp255, align 8, !tbaa !1
  store i16 %208, i16* %209, align 2, !tbaa !60
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %lor.lhs.false.317
  %210 = load i32, i32* %i, align 4, !tbaa !30
  %inc324 = add nsw i32 %210, 1
  store i32 %inc324, i32* %i, align 4, !tbaa !30
  %211 = load i32, i32* %Colors, align 4, !tbaa !30
  %212 = load i16*, i16** %pp259, align 8, !tbaa !1
  %idx.ext325 = sext i32 %211 to i64
  %add.ptr326 = getelementptr inbounds i16, i16* %212, i64 %idx.ext325
  store i16* %add.ptr326, i16** %pp259, align 8, !tbaa !1
  br label %while.cond.327

while.cond.327:                                   ; preds = %if.end.336, %if.end.323
  %213 = load i32, i32* %i, align 4, !tbaa !30
  %214 = load i32, i32* %endx274, align 4, !tbaa !30
  %cmp328 = icmp slt i32 %213, %214
  br i1 %cmp328, label %while.body.330, label %while.end.340

while.body.330:                                   ; preds = %while.cond.327
  %215 = load i16*, i16** %pp259, align 8, !tbaa !1
  %216 = load i16, i16* %215, align 2, !tbaa !60
  %conv331 = zext i16 %216 to i32
  %217 = load i16*, i16** %tp255, align 8, !tbaa !1
  %218 = load i16, i16* %217, align 2, !tbaa !60
  %conv332 = zext i16 %218 to i32
  %cmp333 = icmp slt i32 %conv331, %conv332
  br i1 %cmp333, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %while.body.330
  %219 = load i16*, i16** %pp259, align 8, !tbaa !1
  %220 = load i16, i16* %219, align 2, !tbaa !60
  %221 = load i16*, i16** %tp255, align 8, !tbaa !1
  store i16 %220, i16* %221, align 2, !tbaa !60
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.335, %while.body.330
  %222 = load i32, i32* %i, align 4, !tbaa !30
  %inc337 = add nsw i32 %222, 1
  store i32 %inc337, i32* %i, align 4, !tbaa !30
  %223 = load i32, i32* %Colors, align 4, !tbaa !30
  %224 = load i16*, i16** %pp259, align 8, !tbaa !1
  %idx.ext338 = sext i32 %223 to i64
  %add.ptr339 = getelementptr inbounds i16, i16* %224, i64 %idx.ext338
  store i16* %add.ptr339, i16** %pp259, align 8, !tbaa !1
  br label %while.cond.327

while.end.340:                                    ; preds = %while.cond.327
  br label %do.body.341

do.body.341:                                      ; preds = %while.end.340
  br label %do.cond.342

do.cond.342:                                      ; preds = %do.body.341
  br label %do.end.343

do.end.343:                                       ; preds = %do.cond.342
  %225 = bitcast i32* %endx274 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #2
  br label %for.inc.344

for.inc.344:                                      ; preds = %do.end.343
  %226 = load i32, i32* %Colors, align 4, !tbaa !30
  %227 = load i16*, i16** %tp255, align 8, !tbaa !1
  %idx.ext345 = sext i32 %226 to i64
  %add.ptr346 = getelementptr inbounds i16, i16* %227, i64 %idx.ext345
  store i16* %add.ptr346, i16** %tp255, align 8, !tbaa !1
  br label %for.cond.269

for.end.347:                                      ; preds = %for.cond.269
  br label %if.end.428

if.else.348:                                      ; preds = %do.end.266
  store i32 0, i32* %i, align 4, !tbaa !30
  br label %for.cond.349

for.cond.349:                                     ; preds = %for.inc.424, %if.else.348
  %228 = load i32, i32* %i, align 4, !tbaa !30
  %229 = load i32, i32* %WidthIn, align 4, !tbaa !30
  %cmp350 = icmp slt i32 %228, %229
  br i1 %cmp350, label %for.body.352, label %for.end.427

for.body.352:                                     ; preds = %for.cond.349
  %230 = bitcast i32* %endx354 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #2
  br label %do.body.355

do.body.355:                                      ; preds = %for.body.352
  br label %do.body.356

do.body.356:                                      ; preds = %do.body.355
  %231 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x357 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %231, i32 0, i32 15
  %step358 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x357, i32 0, i32 1
  %dR359 = getelementptr inbounds %struct.ie_, %struct.ie_* %step358, i32 0, i32 1
  %232 = load i32, i32* %dR359, align 4, !tbaa !27
  %233 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x360 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %233, i32 0, i32 15
  %state361 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x360, i32 0, i32 0
  %R362 = getelementptr inbounds %struct.ia_, %struct.ia_* %state361, i32 0, i32 1
  %234 = load i32, i32* %R362, align 4, !tbaa !25
  %sub363 = sub i32 %234, %232
  store i32 %sub363, i32* %R362, align 4, !tbaa !25
  %235 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x364 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %235, i32 0, i32 15
  %state365 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x364, i32 0, i32 0
  %R366 = getelementptr inbounds %struct.ia_, %struct.ia_* %state365, i32 0, i32 1
  %236 = load i32, i32* %R366, align 4, !tbaa !25
  %cmp367 = icmp slt i32 %236, 0
  br i1 %cmp367, label %if.then.369, label %if.end.381

if.then.369:                                      ; preds = %do.body.356
  %237 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x370 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %237, i32 0, i32 15
  %state371 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x370, i32 0, i32 0
  %Q372 = getelementptr inbounds %struct.ia_, %struct.ia_* %state371, i32 0, i32 0
  %238 = load i32, i32* %Q372, align 4, !tbaa !24
  %inc373 = add nsw i32 %238, 1
  store i32 %inc373, i32* %Q372, align 4, !tbaa !24
  %239 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x374 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %239, i32 0, i32 15
  %step375 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x374, i32 0, i32 1
  %N376 = getelementptr inbounds %struct.ie_, %struct.ie_* %step375, i32 0, i32 2
  %240 = load i32, i32* %N376, align 4, !tbaa !28
  %241 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x377 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %241, i32 0, i32 15
  %state378 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x377, i32 0, i32 0
  %R379 = getelementptr inbounds %struct.ia_, %struct.ia_* %state378, i32 0, i32 1
  %242 = load i32, i32* %R379, align 4, !tbaa !25
  %add380 = add i32 %242, %240
  store i32 %add380, i32* %R379, align 4, !tbaa !25
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.369, %do.body.356
  %243 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x382 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %243, i32 0, i32 15
  %step383 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x382, i32 0, i32 1
  %dQ384 = getelementptr inbounds %struct.ie_, %struct.ie_* %step383, i32 0, i32 0
  %244 = load i32, i32* %dQ384, align 4, !tbaa !26
  %245 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x385 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %245, i32 0, i32 15
  %state386 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x385, i32 0, i32 0
  %Q387 = getelementptr inbounds %struct.ia_, %struct.ia_* %state386, i32 0, i32 0
  %246 = load i32, i32* %Q387, align 4, !tbaa !24
  %add388 = add nsw i32 %246, %244
  store i32 %add388, i32* %Q387, align 4, !tbaa !24
  br label %do.cond.389

do.cond.389:                                      ; preds = %if.end.381
  br label %do.end.390

do.end.390:                                       ; preds = %do.cond.389
  %247 = load %struct.stream_ISpecialDownScale_state_s*, %struct.stream_ISpecialDownScale_state_s** %ss.addr, align 8, !tbaa !1
  %dda_x391 = getelementptr inbounds %struct.stream_ISpecialDownScale_state_s, %struct.stream_ISpecialDownScale_state_s* %247, i32 0, i32 15
  %state392 = getelementptr inbounds %struct.gx_dda_int_s, %struct.gx_dda_int_s* %dda_x391, i32 0, i32 0
  %Q393 = getelementptr inbounds %struct.ia_, %struct.ia_* %state392, i32 0, i32 0
  %248 = load i32, i32* %Q393, align 4, !tbaa !24
  store i32 %248, i32* %endx354, align 4, !tbaa !30
  br label %do.cond.394

do.cond.394:                                      ; preds = %do.end.390
  br label %do.end.395

do.end.395:                                       ; preds = %do.cond.394
  %249 = load i32, i32* %firstline, align 4, !tbaa !30
  %tobool396 = icmp ne i32 %249, 0
  br i1 %tobool396, label %if.then.402, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %do.end.395
  %250 = load i16*, i16** %pp259, align 8, !tbaa !1
  %251 = load i16, i16* %250, align 2, !tbaa !60
  %conv398 = zext i16 %251 to i32
  %252 = load i16*, i16** %tp255, align 8, !tbaa !1
  %253 = load i16, i16* %252, align 2, !tbaa !60
  %conv399 = zext i16 %253 to i32
  %cmp400 = icmp sgt i32 %conv398, %conv399
  br i1 %cmp400, label %if.then.402, label %if.end.403

if.then.402:                                      ; preds = %lor.lhs.false.397, %do.end.395
  %254 = load i16*, i16** %pp259, align 8, !tbaa !1
  %255 = load i16, i16* %254, align 2, !tbaa !60
  %256 = load i16*, i16** %tp255, align 8, !tbaa !1
  store i16 %255, i16* %256, align 2, !tbaa !60
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.402, %lor.lhs.false.397
  %257 = load i32, i32* %i, align 4, !tbaa !30
  %inc404 = add nsw i32 %257, 1
  store i32 %inc404, i32* %i, align 4, !tbaa !30
  %258 = load i32, i32* %Colors, align 4, !tbaa !30
  %259 = load i16*, i16** %pp259, align 8, !tbaa !1
  %idx.ext405 = sext i32 %258 to i64
  %add.ptr406 = getelementptr inbounds i16, i16* %259, i64 %idx.ext405
  store i16* %add.ptr406, i16** %pp259, align 8, !tbaa !1
  br label %while.cond.407

while.cond.407:                                   ; preds = %if.end.416, %if.end.403
  %260 = load i32, i32* %i, align 4, !tbaa !30
  %261 = load i32, i32* %endx354, align 4, !tbaa !30
  %cmp408 = icmp slt i32 %260, %261
  br i1 %cmp408, label %while.body.410, label %while.end.420

while.body.410:                                   ; preds = %while.cond.407
  %262 = load i16*, i16** %pp259, align 8, !tbaa !1
  %263 = load i16, i16* %262, align 2, !tbaa !60
  %conv411 = zext i16 %263 to i32
  %264 = load i16*, i16** %tp255, align 8, !tbaa !1
  %265 = load i16, i16* %264, align 2, !tbaa !60
  %conv412 = zext i16 %265 to i32
  %cmp413 = icmp sgt i32 %conv411, %conv412
  br i1 %cmp413, label %if.then.415, label %if.end.416

if.then.415:                                      ; preds = %while.body.410
  %266 = load i16*, i16** %pp259, align 8, !tbaa !1
  %267 = load i16, i16* %266, align 2, !tbaa !60
  %268 = load i16*, i16** %tp255, align 8, !tbaa !1
  store i16 %267, i16* %268, align 2, !tbaa !60
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.415, %while.body.410
  %269 = load i32, i32* %i, align 4, !tbaa !30
  %inc417 = add nsw i32 %269, 1
  store i32 %inc417, i32* %i, align 4, !tbaa !30
  %270 = load i32, i32* %Colors, align 4, !tbaa !30
  %271 = load i16*, i16** %pp259, align 8, !tbaa !1
  %idx.ext418 = sext i32 %270 to i64
  %add.ptr419 = getelementptr inbounds i16, i16* %271, i64 %idx.ext418
  store i16* %add.ptr419, i16** %pp259, align 8, !tbaa !1
  br label %while.cond.407

while.end.420:                                    ; preds = %while.cond.407
  br label %do.body.421

do.body.421:                                      ; preds = %while.end.420
  br label %do.cond.422

do.cond.422:                                      ; preds = %do.body.421
  br label %do.end.423

do.end.423:                                       ; preds = %do.cond.422
  %272 = bitcast i32* %endx354 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #2
  br label %for.inc.424

for.inc.424:                                      ; preds = %do.end.423
  %273 = load i32, i32* %Colors, align 4, !tbaa !30
  %274 = load i16*, i16** %tp255, align 8, !tbaa !1
  %idx.ext425 = sext i32 %273 to i64
  %add.ptr426 = getelementptr inbounds i16, i16* %274, i64 %idx.ext425
  store i16* %add.ptr426, i16** %tp255, align 8, !tbaa !1
  br label %for.cond.349

for.end.427:                                      ; preds = %for.cond.349
  br label %if.end.428

if.end.428:                                       ; preds = %for.end.427, %for.end.347
  br label %do.body.429

do.body.429:                                      ; preds = %if.end.428
  br label %do.cond.430

do.cond.430:                                      ; preds = %do.body.429
  br label %do.end.431

do.end.431:                                       ; preds = %do.cond.430
  %275 = bitcast i16** %pp259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #2
  %276 = bitcast i16** %tp255 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #2
  br label %for.inc.432

for.inc.432:                                      ; preds = %do.end.431
  %277 = load i32, i32* %c, align 4, !tbaa !30
  %inc433 = add nsw i32 %277, 1
  store i32 %inc433, i32* %c, align 4, !tbaa !30
  br label %for.cond.250

for.end.434:                                      ; preds = %for.cond.250
  br label %if.end.435

if.end.435:                                       ; preds = %for.end.434, %for.end.248
  %278 = bitcast i32* %polarity_additive to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #2
  %279 = bitcast i32* %firstline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #2
  %280 = bitcast i32* %cur_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #2
  %281 = bitcast i32* %prev_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #2
  %282 = bitcast i32* %WidthIn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #2
  %283 = bitcast i32* %Colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #2
  %284 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #2
  %285 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #2
  ret void
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
!5 = !{!6, !2, i64 8}
!6 = !{!"stream_ISpecialDownScale_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !8, i64 108, !7, i64 208, !7, i64 212, !2, i64 216, !2, i64 224, !2, i64 232, !9, i64 240, !7, i64 260, !7, i64 264, !7, i64 268, !9, i64 272, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !9, i64 308}
!7 = !{!"int", !3, i64 0}
!8 = !{!"stream_image_scale_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!9 = !{!"gx_dda_int_s", !10, i64 0, !11, i64 8}
!10 = !{!"ia_", !7, i64 0, !7, i64 4}
!11 = !{!"ie_", !7, i64 0, !7, i64 4, !7, i64 8}
!12 = !{!6, !7, i64 132}
!13 = !{!6, !7, i64 208}
!14 = !{!6, !7, i64 140}
!15 = !{!6, !7, i64 212}
!16 = !{!6, !7, i64 148}
!17 = !{!6, !7, i64 112}
!18 = !{!6, !7, i64 300}
!19 = !{!6, !7, i64 156}
!20 = !{!6, !7, i64 268}
!21 = !{!6, !7, i64 260}
!22 = !{!6, !7, i64 264}
!23 = !{!6, !7, i64 296}
!24 = !{!6, !7, i64 272}
!25 = !{!6, !7, i64 276}
!26 = !{!6, !7, i64 280}
!27 = !{!6, !7, i64 284}
!28 = !{!6, !7, i64 288}
!29 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 4, !30}
!30 = !{!7, !7, i64 0}
!31 = !{!6, !7, i64 304}
!32 = !{!6, !7, i64 292}
!33 = !{!6, !7, i64 308}
!34 = !{!6, !7, i64 152}
!35 = !{!6, !7, i64 312}
!36 = !{!6, !7, i64 316}
!37 = !{!6, !7, i64 320}
!38 = !{!6, !7, i64 160}
!39 = !{!6, !7, i64 324}
!40 = !{!41, !2, i64 88}
!41 = !{!"gs_memory_s", !2, i64 0, !42, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!42 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!43 = !{!6, !2, i64 232}
!44 = !{!6, !2, i64 224}
!45 = !{!6, !2, i64 216}
!46 = !{!6, !7, i64 200}
!47 = !{!6, !7, i64 120}
!48 = !{!6, !7, i64 204}
!49 = !{!50, !2, i64 16}
!50 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!51 = !{!50, !2, i64 8}
!52 = !{!53, !2, i64 8}
!53 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!54 = !{!53, !2, i64 0}
!55 = !{!41, !2, i64 24}
!56 = !{!6, !7, i64 144}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !3, i64 0}
!59 = !{!3, !3, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"short", !3, i64 0}
!62 = !{!6, !7, i64 164}
