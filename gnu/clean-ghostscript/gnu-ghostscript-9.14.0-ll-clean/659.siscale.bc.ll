; ModuleID = './siscale.bc'
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
%struct.filter_defn_s = type { double (double)*, i32, i32 (double)*, double }
%struct.stream_IScale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s, i32, i32, i8*, i8*, i8*, %struct.CLIST*, %struct.CONTRIB*, i32, i32, i32, i32, i32, i32, i32, %struct.CLIST, i32, i32, i32, double (double)*, double, %struct.CONTRIB* }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.CLIST = type { i32, i32, i32 }
%struct.CONTRIB = type { double }

@st_IScale_state = internal constant %struct.gs_memory_struct_type_s { i32 336, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @iscale_state_reloc_ptrs to i8*) }, align 8
@s_IScale_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_IScale_state, i32 (%struct.stream_state_s*)* @s_IScale_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_IScale_process, i32 1, i32 1, void (%struct.stream_state_s*)* @s_IScale_release, void (%struct.stream_state_s*)* @s_IScale_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [30 x i8] c"ImageScaleEncode/Decode state\00", align 1
@iscale_state_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 6, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([6 x %struct.gc_ptr_element_s], [6 x %struct.gc_ptr_element_s]* @iscale_state_enum_ptrs, i32 0, i32 0) }, align 8
@iscale_state_enum_ptrs = internal constant [6 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 224 }, %struct.gc_ptr_element_s { i16 0, i16 216 }, %struct.gc_ptr_element_s { i16 0, i16 232 }, %struct.gc_ptr_element_s { i16 0, i16 240 }, %struct.gc_ptr_element_s { i16 0, i16 248 }, %struct.gc_ptr_element_s { i16 0, i16 328 }], align 16
@Mitchell_defn = internal constant %struct.filter_defn_s { double (double)* @Mitchell_filter, i32 2, i32 (double)* @Mitchell_contrib_pixels, double 0x3FE24FD6FB3D2962 }, align 8
@Interp_defn = internal constant %struct.filter_defn_s { double (double)* @Interp_filter, i32 1, i32 (double)* @Interp_contrib_pixels, double 0.000000e+00 }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"image_scale tmp\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"image_scale contrib\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"image_scale contrib[*]\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"image_scale contrib_dst[*]\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"image_scale dst\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"image_scale src\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_IScale_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_IScale_state_s*, align 8
  %horiz = alloca %struct.filter_defn_s*, align 8
  %vert = alloca %struct.filter_defn_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IScale_state_s*
  store %struct.stream_IScale_state_s* %2, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.filter_defn_s** %horiz to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store %struct.filter_defn_s* @Mitchell_defn, %struct.filter_defn_s** %horiz, align 8, !tbaa !1
  %4 = bitcast %struct.filter_defn_s** %vert to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store %struct.filter_defn_s* @Mitchell_defn, %struct.filter_defn_s** %vert, align 8, !tbaa !1
  %5 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %5, i32 0, i32 5
  %EntireWidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 18
  %6 = load i32, i32* %EntireWidthOut, align 4, !tbaa !5
  %7 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %7, i32 0, i32 5
  %EntireWidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params1, i32 0, i32 16
  %8 = load i32, i32* %EntireWidthIn, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.filter_defn_s* @Interp_defn, %struct.filter_defn_s** %horiz, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %9, i32 0, i32 5
  %EntireHeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params2, i32 0, i32 19
  %10 = load i32, i32* %EntireHeightOut, align 4, !tbaa !12
  %11 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %11, i32 0, i32 5
  %EntireHeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params3, i32 0, i32 17
  %12 = load i32, i32* %EntireHeightIn, align 4, !tbaa !13
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct.filter_defn_s* @Interp_defn, %struct.filter_defn_s** %vert, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %14 = load %struct.filter_defn_s*, %struct.filter_defn_s** %horiz, align 8, !tbaa !1
  %15 = load %struct.filter_defn_s*, %struct.filter_defn_s** %vert, align 8, !tbaa !1
  %call = call i32 @do_init(%struct.stream_state_s* %13, %struct.filter_defn_s* %14, %struct.filter_defn_s* %15) #5
  %16 = bitcast %struct.filter_defn_s** %vert to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.filter_defn_s** %horiz to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_IScale_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_IScale_state_s*, align 8
  %wleft = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %row = alloca i8*, align 8
  %wcount = alloca i32, align 4
  %ncopy = alloca i32, align 4
  %rleft = alloca i32, align 4
  %rcount = alloca i32, align 4
  %row109 = alloca i8*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !14
  %0 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IScale_state_s*
  store %struct.stream_IScale_state_s* %2, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  br label %top

top:                                              ; preds = %cleanup.177, %entry
  %3 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_y = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %3, i32 0, i32 13
  %4 = load i32, i32* %src_y, align 4, !tbaa !15
  %5 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %5, i32 0, i32 5
  %TopMargin = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 23
  %6 = load i32, i32* %TopMargin, align 4, !tbaa !16
  %cmp = icmp sge i32 %4, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %top
  %7 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_y1 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %7, i32 0, i32 13
  %8 = load i32, i32* %src_y1, align 4, !tbaa !15
  %9 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %9, i32 0, i32 5
  %TopMargin3 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params2, i32 0, i32 23
  %10 = load i32, i32* %TopMargin3, align 4, !tbaa !16
  %11 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %11, i32 0, i32 5
  %PatchHeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params4, i32 0, i32 3
  %12 = load i32, i32* %PatchHeightIn, align 4, !tbaa !17
  %add = add nsw i32 %10, %12
  %cmp5 = icmp sle i32 %8, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %top
  %13 = phi i1 [ false, %top ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  %14 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %14, i32 0, i32 5
  %Active = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params6, i32 0, i32 24
  store i32 %land.ext, i32* %Active, align 4, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.85, %land.end
  %15 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_y7 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %15, i32 0, i32 13
  %16 = load i32, i32* %src_y7, align 4, !tbaa !15
  %17 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_last_index = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %17, i32 0, i32 21
  %18 = load i32, i32* %dst_last_index, align 4, !tbaa !19
  %cmp8 = icmp sgt i32 %16, %18
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %20, i32 0, i32 2
  %21 = load i8*, i8** %limit, align 8, !tbaa !20
  %22 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %22, i32 0, i32 1
  %23 = load i8*, i8** %ptr, align 8, !tbaa !22
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %wleft, align 4, !tbaa !14
  %24 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_y = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %24, i32 0, i32 16
  %25 = load i32, i32* %dst_y, align 4, !tbaa !23
  %26 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %26, i32 0, i32 5
  %HeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params9, i32 0, i32 13
  %27 = load i32, i32* %HeightOut, align 4, !tbaa !24
  %cmp10 = icmp eq i32 %25, %27
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end:                                           ; preds = %while.body
  %28 = load i32, i32* %wleft, align 4, !tbaa !14
  %cmp12 = icmp eq i32 %28, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83

if.end.15:                                        ; preds = %if.end
  %29 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %29, i32 0, i32 18
  %30 = load i32, i32* %dst_offset, align 4, !tbaa !25
  %cmp16 = icmp eq i32 %30, 0
  br i1 %cmp16, label %if.then.18, label %if.end.41

if.then.18:                                       ; preds = %if.end.15
  %31 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = load i32, i32* %wleft, align 4, !tbaa !14
  %33 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_size = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %33, i32 0, i32 19
  %34 = load i32, i32* %dst_size, align 4, !tbaa !26
  %cmp19 = icmp uge i32 %32, %34
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.18
  %35 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr22 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %35, i32 0, i32 1
  %36 = load i8*, i8** %ptr22, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %add.ptr, i8** %row, align 8, !tbaa !1
  %37 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_size23 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %37, i32 0, i32 19
  %38 = load i32, i32* %dst_size23, align 4, !tbaa !26
  %39 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr24 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %39, i32 0, i32 1
  %40 = load i8*, i8** %ptr24, align 8, !tbaa !22
  %idx.ext = zext i32 %38 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr25, i8** %ptr24, align 8, !tbaa !22
  br label %if.end.26

if.else:                                          ; preds = %if.then.18
  %41 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %41, i32 0, i32 9
  %42 = load i8*, i8** %dst, align 8, !tbaa !27
  store i8* %42, i8** %row, align 8, !tbaa !1
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.21
  %43 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %43, i32 0, i32 5
  %Active28 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params27, i32 0, i32 24
  %44 = load i32, i32* %Active28, align 4, !tbaa !18
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.end.26
  %45 = load i8*, i8** %row, align 8, !tbaa !1
  %46 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %46, i32 0, i32 7
  %47 = load i32, i32* %sizeofPixelOut, align 4, !tbaa !28
  %48 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %48, i32 0, i32 5
  %MaxValueOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params30, i32 0, i32 9
  %49 = load i32, i32* %MaxValueOut, align 4, !tbaa !29
  %50 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %tmp = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %50, i32 0, i32 10
  %51 = load i8*, i8** %tmp, align 8, !tbaa !30
  %52 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params31 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %52, i32 0, i32 5
  %LeftMarginOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params31, i32 0, i32 22
  %53 = load i32, i32* %LeftMarginOut, align 4, !tbaa !31
  %54 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params32 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %54, i32 0, i32 5
  %PatchWidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params32, i32 0, i32 4
  %55 = load i32, i32* %PatchWidthOut, align 4, !tbaa !32
  %56 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %56, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params33, i32 0, i32 12
  %57 = load i32, i32* %WidthOut, align 4, !tbaa !33
  %58 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params34 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %58, i32 0, i32 5
  %spp_interp = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params34, i32 0, i32 1
  %59 = load i32, i32* %spp_interp, align 4, !tbaa !34
  %60 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_next_list = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %60, i32 0, i32 20
  %61 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_items = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %61, i32 0, i32 26
  %62 = load %struct.CONTRIB*, %struct.CONTRIB** %dst_items, align 8, !tbaa !35
  call void @zoom_y(i8* %45, i32 %47, i32 %49, i8* %51, i32 %53, i32 %55, i32 %57, i32 %59, %struct.CLIST* %dst_next_list, %struct.CONTRIB* %62) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.29, %if.end.26
  %63 = load i8*, i8** %row, align 8, !tbaa !1
  %64 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst36 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %64, i32 0, i32 9
  %65 = load i8*, i8** %dst36, align 8, !tbaa !27
  %cmp37 = icmp ne i8* %63, %65
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.35
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.39, %if.end.40
  %66 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.83 [
    i32 0, label %cleanup.cont
    i32 5, label %adv
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.41

if.end.41:                                        ; preds = %cleanup.cont, %if.end.15
  %67 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_size43 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %68, i32 0, i32 19
  %69 = load i32, i32* %dst_size43, align 4, !tbaa !26
  %70 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset44 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %70, i32 0, i32 18
  %71 = load i32, i32* %dst_offset44, align 4, !tbaa !25
  %sub = sub i32 %69, %71
  store i32 %sub, i32* %wcount, align 4, !tbaa !14
  %72 = bitcast i32* %ncopy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #2
  %73 = load i32, i32* %wleft, align 4, !tbaa !14
  %74 = load i32, i32* %wcount, align 4, !tbaa !14
  %cmp46 = icmp ult i32 %73, %74
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  %75 = load i32, i32* %wleft, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  %76 = load i32, i32* %wcount, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %75, %cond.true ], [ %76, %cond.false ]
  store i32 %cond, i32* %ncopy, align 4, !tbaa !14
  %77 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params48 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %77, i32 0, i32 5
  %Active49 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params48, i32 0, i32 24
  %78 = load i32, i32* %Active49, align 4, !tbaa !18
  %tobool50 = icmp ne i32 %78, 0
  br i1 %tobool50, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %cond.end
  %79 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr52 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %79, i32 0, i32 1
  %80 = load i8*, i8** %ptr52, align 8, !tbaa !22
  %add.ptr53 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst54 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %81, i32 0, i32 9
  %82 = load i8*, i8** %dst54, align 8, !tbaa !27
  %83 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset55 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %83, i32 0, i32 18
  %84 = load i32, i32* %dst_offset55, align 4, !tbaa !25
  %idx.ext56 = zext i32 %84 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %82, i64 %idx.ext56
  %85 = load i32, i32* %ncopy, align 4, !tbaa !14
  %conv58 = zext i32 %85 to i64
  %call = call i8* @memcpy(i8* %add.ptr53, i8* %add.ptr57, i64 %conv58) #6
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.51, %cond.end
  %86 = load i32, i32* %ncopy, align 4, !tbaa !14
  %87 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr60 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %87, i32 0, i32 1
  %88 = load i8*, i8** %ptr60, align 8, !tbaa !22
  %idx.ext61 = zext i32 %86 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %88, i64 %idx.ext61
  store i8* %add.ptr62, i8** %ptr60, align 8, !tbaa !22
  %89 = load i32, i32* %ncopy, align 4, !tbaa !14
  %90 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset63 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %90, i32 0, i32 18
  %91 = load i32, i32* %dst_offset63, align 4, !tbaa !25
  %add64 = add i32 %91, %89
  store i32 %add64, i32* %dst_offset63, align 4, !tbaa !25
  %92 = load i32, i32* %ncopy, align 4, !tbaa !14
  %93 = load i32, i32* %wcount, align 4, !tbaa !14
  %cmp65 = icmp ne i32 %92, %93
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.59
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end.68:                                        ; preds = %if.end.59
  %94 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset69 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %94, i32 0, i32 18
  store i32 0, i32* %dst_offset69, align 4, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.70

cleanup.70:                                       ; preds = %if.end.68, %if.then.67
  %95 = bitcast i32* %ncopy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %cleanup.dest.72 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.72, label %cleanup.83 [
    i32 0, label %cleanup.cont.73
  ]

cleanup.cont.73:                                  ; preds = %cleanup.70
  br label %adv

adv:                                              ; preds = %cleanup.cont.73, %cleanup
  %97 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_y74 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %97, i32 0, i32 16
  %98 = load i32, i32* %dst_y74, align 4, !tbaa !23
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %dst_y74, align 4, !tbaa !23
  %99 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_y75 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %99, i32 0, i32 16
  %100 = load i32, i32* %dst_y75, align 4, !tbaa !23
  %101 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params76 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %101, i32 0, i32 5
  %HeightOut77 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params76, i32 0, i32 13
  %102 = load i32, i32* %HeightOut77, align 4, !tbaa !24
  %cmp78 = icmp ne i32 %100, %102
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %adv
  %103 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %104 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_y81 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %104, i32 0, i32 16
  %105 = load i32, i32* %dst_y81, align 4, !tbaa !23
  call void @calculate_dst_contrib(%struct.stream_IScale_state_s* %103, i32 %105) #5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %adv
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.83

cleanup.83:                                       ; preds = %if.end.82, %cleanup.70, %cleanup, %if.then.14, %if.then
  %106 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %cleanup.dest.84 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.84, label %cleanup.180 [
    i32 0, label %cleanup.cont.85
  ]

cleanup.cont.85:                                  ; preds = %cleanup.83
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %107 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #2
  %108 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit87 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %108, i32 0, i32 1
  %109 = load i8*, i8** %limit87, align 8, !tbaa !36
  %110 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr88 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %110, i32 0, i32 0
  %111 = load i8*, i8** %ptr88, align 8, !tbaa !38
  %sub.ptr.lhs.cast89 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast90 = ptrtoint i8* %111 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %conv92 = trunc i64 %sub.ptr.sub91 to i32
  store i32 %conv92, i32* %rleft, align 4, !tbaa !14
  %112 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #2
  %113 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_size = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %113, i32 0, i32 15
  %114 = load i32, i32* %src_size, align 4, !tbaa !39
  %115 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_offset = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %115, i32 0, i32 14
  %116 = load i32, i32* %src_offset, align 4, !tbaa !40
  %sub94 = sub i32 %114, %116
  store i32 %sub94, i32* %rcount, align 4, !tbaa !14
  %117 = load i32, i32* %rleft, align 4, !tbaa !14
  %cmp95 = icmp eq i32 %117, 0
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.98:                                        ; preds = %while.end
  %118 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_y99 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %118, i32 0, i32 13
  %119 = load i32, i32* %src_y99, align 4, !tbaa !15
  %120 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params100 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %120, i32 0, i32 5
  %HeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params100, i32 0, i32 11
  %121 = load i32, i32* %HeightIn, align 4, !tbaa !41
  %cmp101 = icmp sge i32 %119, %121
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.98
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

if.end.104:                                       ; preds = %if.end.98
  %122 = load i32, i32* %rleft, align 4, !tbaa !14
  %123 = load i32, i32* %rcount, align 4, !tbaa !14
  %cmp105 = icmp uge i32 %122, %123
  br i1 %cmp105, label %if.then.107, label %if.else.158

if.then.107:                                      ; preds = %if.end.104
  %124 = bitcast i8** %row109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #2
  %125 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_offset110 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %125, i32 0, i32 14
  %126 = load i32, i32* %src_offset110, align 4, !tbaa !40
  %cmp111 = icmp eq i32 %126, 0
  br i1 %cmp111, label %if.then.113, label %if.else.116

if.then.113:                                      ; preds = %if.then.107
  %127 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr114 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %127, i32 0, i32 0
  %128 = load i8*, i8** %ptr114, align 8, !tbaa !38
  %add.ptr115 = getelementptr inbounds i8, i8* %128, i64 1
  store i8* %add.ptr115, i8** %row109, align 8, !tbaa !1
  br label %if.end.131

if.else.116:                                      ; preds = %if.then.107
  %129 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %129, i32 0, i32 8
  %130 = load i8*, i8** %src, align 8, !tbaa !42
  store i8* %130, i8** %row109, align 8, !tbaa !1
  %131 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params117 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %131, i32 0, i32 5
  %Active118 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params117, i32 0, i32 24
  %132 = load i32, i32* %Active118, align 4, !tbaa !18
  %tobool119 = icmp ne i32 %132, 0
  br i1 %tobool119, label %if.then.120, label %if.end.129

if.then.120:                                      ; preds = %if.else.116
  %133 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src121 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %133, i32 0, i32 8
  %134 = load i8*, i8** %src121, align 8, !tbaa !42
  %135 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_offset122 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %135, i32 0, i32 14
  %136 = load i32, i32* %src_offset122, align 4, !tbaa !40
  %idx.ext123 = zext i32 %136 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %134, i64 %idx.ext123
  %137 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr125 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %137, i32 0, i32 0
  %138 = load i8*, i8** %ptr125, align 8, !tbaa !38
  %add.ptr126 = getelementptr inbounds i8, i8* %138, i64 1
  %139 = load i32, i32* %rcount, align 4, !tbaa !14
  %conv127 = zext i32 %139 to i64
  %call128 = call i8* @memcpy(i8* %add.ptr124, i8* %add.ptr126, i64 %conv127) #6
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.120, %if.else.116
  %140 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_offset130 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %140, i32 0, i32 14
  store i32 0, i32* %src_offset130, align 4, !tbaa !40
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.129, %if.then.113
  br label %do.body

do.body:                                          ; preds = %if.end.131
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %141 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params132 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %141, i32 0, i32 5
  %Active133 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params132, i32 0, i32 24
  %142 = load i32, i32* %Active133, align 4, !tbaa !18
  %tobool134 = icmp ne i32 %142, 0
  br i1 %tobool134, label %if.then.135, label %if.end.151

if.then.135:                                      ; preds = %do.end
  %143 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %tmp136 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %143, i32 0, i32 10
  %144 = load i8*, i8** %tmp136, align 8, !tbaa !30
  %145 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_y137 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %145, i32 0, i32 13
  %146 = load i32, i32* %src_y137, align 4, !tbaa !15
  %147 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %max_support = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %147, i32 0, i32 23
  %148 = load i32, i32* %max_support, align 4, !tbaa !43
  %rem = srem i32 %146, %148
  %149 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params138 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %149, i32 0, i32 5
  %WidthOut139 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params138, i32 0, i32 12
  %150 = load i32, i32* %WidthOut139, align 4, !tbaa !33
  %mul = mul nsw i32 %rem, %150
  %151 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params140 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %151, i32 0, i32 5
  %spp_interp141 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params140, i32 0, i32 1
  %152 = load i32, i32* %spp_interp141, align 4, !tbaa !34
  %mul142 = mul nsw i32 %mul, %152
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %144, i64 %idx.ext143
  %153 = load i8*, i8** %row109, align 8, !tbaa !1
  %154 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %154, i32 0, i32 6
  %155 = load i32, i32* %sizeofPixelIn, align 4, !tbaa !44
  %156 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params145 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %156, i32 0, i32 5
  %LeftMarginOut146 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params145, i32 0, i32 22
  %157 = load i32, i32* %LeftMarginOut146, align 4, !tbaa !31
  %158 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params147 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %158, i32 0, i32 5
  %PatchWidthOut148 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params147, i32 0, i32 4
  %159 = load i32, i32* %PatchWidthOut148, align 4, !tbaa !32
  %160 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params149 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %160, i32 0, i32 5
  %spp_interp150 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params149, i32 0, i32 1
  %161 = load i32, i32* %spp_interp150, align 4, !tbaa !34
  %162 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %contrib = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %162, i32 0, i32 11
  %163 = load %struct.CLIST*, %struct.CLIST** %contrib, align 8, !tbaa !45
  %164 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %items = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %164, i32 0, i32 12
  %165 = load %struct.CONTRIB*, %struct.CONTRIB** %items, align 8, !tbaa !46
  call void @zoom_x(i8* %add.ptr144, i8* %153, i32 %155, i32 %157, i32 %159, i32 %161, %struct.CLIST* %163, %struct.CONTRIB* %165) #5
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.135, %do.end
  %166 = load i32, i32* %rcount, align 4, !tbaa !14
  %167 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr152 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %167, i32 0, i32 0
  %168 = load i8*, i8** %ptr152, align 8, !tbaa !38
  %idx.ext153 = zext i32 %166 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %168, i64 %idx.ext153
  store i8* %add.ptr154, i8** %ptr152, align 8, !tbaa !38
  %169 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_y155 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %169, i32 0, i32 13
  %170 = load i32, i32* %src_y155, align 4, !tbaa !15
  %inc156 = add nsw i32 %170, 1
  store i32 %inc156, i32* %src_y155, align 4, !tbaa !15
  store i32 2, i32* %cleanup.dest.slot
  %171 = bitcast i8** %row109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #2
  br label %cleanup.177

if.else.158:                                      ; preds = %if.end.104
  %172 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params159 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %172, i32 0, i32 5
  %Active160 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params159, i32 0, i32 24
  %173 = load i32, i32* %Active160, align 4, !tbaa !18
  %tobool161 = icmp ne i32 %173, 0
  br i1 %tobool161, label %if.then.162, label %if.end.171

if.then.162:                                      ; preds = %if.else.158
  %174 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src163 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %174, i32 0, i32 8
  %175 = load i8*, i8** %src163, align 8, !tbaa !42
  %176 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_offset164 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %176, i32 0, i32 14
  %177 = load i32, i32* %src_offset164, align 4, !tbaa !40
  %idx.ext165 = zext i32 %177 to i64
  %add.ptr166 = getelementptr inbounds i8, i8* %175, i64 %idx.ext165
  %178 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr167 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %178, i32 0, i32 0
  %179 = load i8*, i8** %ptr167, align 8, !tbaa !38
  %add.ptr168 = getelementptr inbounds i8, i8* %179, i64 1
  %180 = load i32, i32* %rleft, align 4, !tbaa !14
  %conv169 = zext i32 %180 to i64
  %call170 = call i8* @memcpy(i8* %add.ptr166, i8* %add.ptr168, i64 %conv169) #6
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.162, %if.else.158
  %181 = load i32, i32* %rleft, align 4, !tbaa !14
  %182 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_offset172 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %182, i32 0, i32 14
  %183 = load i32, i32* %src_offset172, align 4, !tbaa !40
  %add173 = add i32 %183, %181
  store i32 %add173, i32* %src_offset172, align 4, !tbaa !40
  %184 = load i32, i32* %rleft, align 4, !tbaa !14
  %185 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr174 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %185, i32 0, i32 0
  %186 = load i8*, i8** %ptr174, align 8, !tbaa !38
  %idx.ext175 = zext i32 %184 to i64
  %add.ptr176 = getelementptr inbounds i8, i8* %186, i64 %idx.ext175
  store i8* %add.ptr176, i8** %ptr174, align 8, !tbaa !38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.177

cleanup.177:                                      ; preds = %if.end.171, %if.end.151, %if.then.103, %if.then.97
  %187 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %188 = bitcast i32* %rleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  %cleanup.dest.179 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.179, label %cleanup.180 [
    i32 2, label %top
  ]

cleanup.180:                                      ; preds = %cleanup.177, %cleanup.83
  %189 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  %190 = load i32, i32* %retval
  ret i32 %190
}

; Function Attrs: nounwind uwtable
define internal void @s_IScale_release(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_IScale_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IScale_state_s*
  store %struct.stream_IScale_state_s* %2, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !47
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !48
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %9 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %9, i32 0, i32 8
  %10 = load i8*, i8** %src, align 8, !tbaa !42
  call void %7(%struct.gs_memory_s* %8, i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #5
  %11 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src1 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %11, i32 0, i32 8
  store i8* null, i8** %src1, align 8, !tbaa !42
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object3 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3, align 8, !tbaa !48
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %15, i32 0, i32 9
  %16 = load i8*, i8** %dst, align 8, !tbaa !27
  call void %13(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #5
  %17 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst4 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %17, i32 0, i32 9
  store i8* null, i8** %dst4, align 8, !tbaa !27
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object6, align 8, !tbaa !48
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %21 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %items = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %21, i32 0, i32 12
  %22 = load %struct.CONTRIB*, %struct.CONTRIB** %items, align 8, !tbaa !46
  %23 = bitcast %struct.CONTRIB* %22 to i8*
  call void %19(%struct.gs_memory_s* %20, i8* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #5
  %24 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %items7 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %24, i32 0, i32 12
  store %struct.CONTRIB* null, %struct.CONTRIB** %items7, align 8, !tbaa !46
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object9, align 8, !tbaa !48
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %28 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %items10 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %28, i32 0, i32 12
  %29 = load %struct.CONTRIB*, %struct.CONTRIB** %items10, align 8, !tbaa !46
  %30 = bitcast %struct.CONTRIB* %29 to i8*
  call void %26(%struct.gs_memory_s* %27, i8* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #5
  %31 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_items = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %31, i32 0, i32 26
  store %struct.CONTRIB* null, %struct.CONTRIB** %dst_items, align 8, !tbaa !35
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !48
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %35 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %contrib = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %35, i32 0, i32 11
  %36 = load %struct.CLIST*, %struct.CLIST** %contrib, align 8, !tbaa !45
  %37 = bitcast %struct.CLIST* %36 to i8*
  call void %33(%struct.gs_memory_s* %34, i8* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #5
  %38 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %contrib13 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %38, i32 0, i32 11
  store %struct.CLIST* null, %struct.CLIST** %contrib13, align 8, !tbaa !45
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object15, align 8, !tbaa !48
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %42 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %tmp = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %42, i32 0, i32 10
  %43 = load i8*, i8** %tmp, align 8, !tbaa !30
  call void %40(%struct.gs_memory_s* %41, i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  %44 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %tmp16 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %44, i32 0, i32 10
  store i8* null, i8** %tmp16, align 8, !tbaa !30
  %45 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_IScale_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_IScale_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IScale_state_s*
  store %struct.stream_IScale_state_s* %2, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %3, i32 0, i32 8
  store i8* null, i8** %src, align 8, !tbaa !42
  %4 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %4, i32 0, i32 9
  store i8* null, i8** %dst, align 8, !tbaa !27
  %5 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %tmp = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %5, i32 0, i32 10
  store i8* null, i8** %tmp, align 8, !tbaa !30
  %6 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %contrib = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %6, i32 0, i32 11
  store %struct.CLIST* null, %struct.CLIST** %contrib, align 8, !tbaa !45
  %7 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %items = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %7, i32 0, i32 12
  store %struct.CONTRIB* null, %struct.CONTRIB** %items, align 8, !tbaa !46
  %8 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @do_init(%struct.stream_state_s* %st, %struct.filter_defn_s* %horiz, %struct.filter_defn_s* %vert) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %horiz.addr = alloca %struct.filter_defn_s*, align 8
  %vert.addr = alloca %struct.filter_defn_s*, align 8
  %ss = alloca %struct.stream_IScale_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.filter_defn_s* %horiz, %struct.filter_defn_s** %horiz.addr, align 8, !tbaa !1
  store %struct.filter_defn_s* %vert, %struct.filter_defn_s** %vert.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_IScale_state_s*
  store %struct.stream_IScale_state_s* %2, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !47
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %6, i32 0, i32 5
  %BitsPerComponentIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 6
  %7 = load i32, i32* %BitsPerComponentIn, align 4, !tbaa !51
  %div = sdiv i32 %7, 8
  %8 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %8, i32 0, i32 6
  store i32 %div, i32* %sizeofPixelIn, align 4, !tbaa !44
  %9 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %9, i32 0, i32 5
  %BitsPerComponentOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params1, i32 0, i32 8
  %10 = load i32, i32* %BitsPerComponentOut, align 4, !tbaa !52
  %div2 = sdiv i32 %10, 8
  %11 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %11, i32 0, i32 7
  store i32 %div2, i32* %sizeofPixelOut, align 4, !tbaa !28
  %12 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_y = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %12, i32 0, i32 13
  store i32 0, i32* %src_y, align 4, !tbaa !15
  %13 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %13, i32 0, i32 5
  %WidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params3, i32 0, i32 10
  %14 = load i32, i32* %WidthIn, align 4, !tbaa !53
  %15 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn4 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %15, i32 0, i32 6
  %16 = load i32, i32* %sizeofPixelIn4, align 4, !tbaa !44
  %mul = mul nsw i32 %14, %16
  %17 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %17, i32 0, i32 5
  %spp_interp = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params5, i32 0, i32 1
  %18 = load i32, i32* %spp_interp, align 4, !tbaa !34
  %mul6 = mul nsw i32 %mul, %18
  %19 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_size = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %19, i32 0, i32 15
  store i32 %mul6, i32* %src_size, align 4, !tbaa !39
  %20 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_offset = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %20, i32 0, i32 14
  store i32 0, i32* %src_offset, align 4, !tbaa !40
  %21 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_y = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %21, i32 0, i32 16
  store i32 0, i32* %dst_y, align 4, !tbaa !23
  %22 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %22, i32 0, i32 5
  %src_y_offset = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params7, i32 0, i32 15
  %23 = load i32, i32* %src_y_offset, align 4, !tbaa !54
  %24 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src_y_offset8 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %24, i32 0, i32 17
  store i32 %23, i32* %src_y_offset8, align 4, !tbaa !55
  %25 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %25, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params9, i32 0, i32 12
  %26 = load i32, i32* %WidthOut, align 4, !tbaa !33
  %27 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut10 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %27, i32 0, i32 7
  %28 = load i32, i32* %sizeofPixelOut10, align 4, !tbaa !28
  %mul11 = mul nsw i32 %26, %28
  %29 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %29, i32 0, i32 5
  %spp_interp13 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params12, i32 0, i32 1
  %30 = load i32, i32* %spp_interp13, align 4, !tbaa !34
  %mul14 = mul nsw i32 %mul11, %30
  %31 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_size = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %31, i32 0, i32 19
  store i32 %mul14, i32* %dst_size, align 4, !tbaa !26
  %32 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_offset = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %32, i32 0, i32 18
  store i32 0, i32* %dst_offset, align 4, !tbaa !25
  %33 = load %struct.filter_defn_s*, %struct.filter_defn_s** %vert.addr, align 8, !tbaa !1
  %contrib_pixels = getelementptr inbounds %struct.filter_defn_s, %struct.filter_defn_s* %33, i32 0, i32 2
  %34 = load i32 (double)*, i32 (double)** %contrib_pixels, align 8, !tbaa !56
  %35 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %35, i32 0, i32 5
  %EntireHeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params15, i32 0, i32 19
  %36 = load i32, i32* %EntireHeightOut, align 4, !tbaa !12
  %conv = sitofp i32 %36 to double
  %37 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %37, i32 0, i32 5
  %EntireHeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params16, i32 0, i32 17
  %38 = load i32, i32* %EntireHeightIn, align 4, !tbaa !13
  %conv17 = sitofp i32 %38 to double
  %div18 = fdiv double %conv, %conv17
  %call = call i32 %34(double %div18) #5
  %39 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %max_support = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %39, i32 0, i32 23
  store i32 %call, i32* %max_support, align 4, !tbaa !43
  %40 = load %struct.filter_defn_s*, %struct.filter_defn_s** %vert.addr, align 8, !tbaa !1
  %filter_width = getelementptr inbounds %struct.filter_defn_s, %struct.filter_defn_s* %40, i32 0, i32 1
  %41 = load i32, i32* %filter_width, align 4, !tbaa !58
  %42 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %filter_width19 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %42, i32 0, i32 22
  store i32 %41, i32* %filter_width19, align 4, !tbaa !59
  %43 = load %struct.filter_defn_s*, %struct.filter_defn_s** %vert.addr, align 8, !tbaa !1
  %filter = getelementptr inbounds %struct.filter_defn_s, %struct.filter_defn_s* %43, i32 0, i32 0
  %44 = load double (double)*, double (double)** %filter, align 8, !tbaa !60
  %45 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %filter20 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %45, i32 0, i32 24
  store double (double)* %44, double (double)** %filter20, align 8, !tbaa !61
  %46 = load %struct.filter_defn_s*, %struct.filter_defn_s** %vert.addr, align 8, !tbaa !1
  %min_scale = getelementptr inbounds %struct.filter_defn_s, %struct.filter_defn_s* %46, i32 0, i32 3
  %47 = load double, double* %min_scale, align 8, !tbaa !62
  %48 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %min_scale21 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %48, i32 0, i32 25
  store double %47, double* %min_scale21, align 8, !tbaa !63
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %50 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !64
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %52 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %max_support22 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %52, i32 0, i32 23
  %53 = load i32, i32* %max_support22, align 4, !tbaa !43
  %54 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %54, i32 0, i32 5
  %WidthOut24 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params23, i32 0, i32 12
  %55 = load i32, i32* %WidthOut24, align 4, !tbaa !33
  %56 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %56, i32 0, i32 5
  %spp_interp26 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params25, i32 0, i32 1
  %57 = load i32, i32* %spp_interp26, align 4, !tbaa !34
  %mul27 = mul nsw i32 %55, %57
  %call28 = call i8* %50(%struct.gs_memory_s* %51, i32 %53, i32 %mul27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #5
  %58 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %tmp = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %58, i32 0, i32 10
  store i8* %call28, i8** %tmp, align 8, !tbaa !30
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %alloc_byte_array30 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 10
  %60 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array30, align 8, !tbaa !64
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %62 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params31 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %62, i32 0, i32 5
  %WidthOut32 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params31, i32 0, i32 12
  %63 = load i32, i32* %WidthOut32, align 4, !tbaa !33
  %64 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %64, i32 0, i32 5
  %HeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params33, i32 0, i32 13
  %65 = load i32, i32* %HeightOut, align 4, !tbaa !24
  %cmp = icmp sgt i32 %63, %65
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %66 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params35 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %66, i32 0, i32 5
  %WidthOut36 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params35, i32 0, i32 12
  %67 = load i32, i32* %WidthOut36, align 4, !tbaa !33
  br label %cond.end

cond.false:                                       ; preds = %entry
  %68 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params37 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %68, i32 0, i32 5
  %HeightOut38 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params37, i32 0, i32 13
  %69 = load i32, i32* %HeightOut38, align 4, !tbaa !24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %67, %cond.true ], [ %69, %cond.false ]
  %call39 = call i8* %60(%struct.gs_memory_s* %61, i32 %cond, i32 12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #5
  %70 = bitcast i8* %call39 to %struct.CLIST*
  %71 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %contrib = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %71, i32 0, i32 11
  store %struct.CLIST* %70, %struct.CLIST** %contrib, align 8, !tbaa !45
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 1
  %alloc_byte_array41 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 10
  %73 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array41, align 8, !tbaa !64
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %75 = load %struct.filter_defn_s*, %struct.filter_defn_s** %horiz.addr, align 8, !tbaa !1
  %contrib_pixels42 = getelementptr inbounds %struct.filter_defn_s, %struct.filter_defn_s* %75, i32 0, i32 2
  %76 = load i32 (double)*, i32 (double)** %contrib_pixels42, align 8, !tbaa !56
  %77 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params43 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %77, i32 0, i32 5
  %EntireWidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params43, i32 0, i32 18
  %78 = load i32, i32* %EntireWidthOut, align 4, !tbaa !5
  %conv44 = sitofp i32 %78 to double
  %79 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params45 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %79, i32 0, i32 5
  %EntireWidthIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params45, i32 0, i32 16
  %80 = load i32, i32* %EntireWidthIn, align 4, !tbaa !11
  %conv46 = sitofp i32 %80 to double
  %div47 = fdiv double %conv44, %conv46
  %call48 = call i32 %76(double %div47) #5
  %81 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params49 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %81, i32 0, i32 5
  %WidthOut50 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params49, i32 0, i32 12
  %82 = load i32, i32* %WidthOut50, align 4, !tbaa !33
  %mul51 = mul nsw i32 %call48, %82
  %call52 = call i8* %73(%struct.gs_memory_s* %74, i32 %mul51, i32 8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #5
  %83 = bitcast i8* %call52 to %struct.CONTRIB*
  %84 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %items = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %84, i32 0, i32 12
  store %struct.CONTRIB* %83, %struct.CONTRIB** %items, align 8, !tbaa !46
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 1
  %alloc_byte_array54 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs53, i32 0, i32 10
  %86 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array54, align 8, !tbaa !64
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %88 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %max_support55 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %88, i32 0, i32 23
  %89 = load i32, i32* %max_support55, align 4, !tbaa !43
  %mul56 = mul nsw i32 %89, 2
  %call57 = call i8* %86(%struct.gs_memory_s* %87, i32 %mul56, i32 8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #5
  %90 = bitcast i8* %call57 to %struct.CONTRIB*
  %91 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_items = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %91, i32 0, i32 26
  store %struct.CONTRIB* %90, %struct.CONTRIB** %dst_items, align 8, !tbaa !35
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs58 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %92, i32 0, i32 1
  %alloc_byte_array59 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs58, i32 0, i32 10
  %93 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array59, align 8, !tbaa !64
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %95 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params60 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %95, i32 0, i32 5
  %WidthOut61 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params60, i32 0, i32 12
  %96 = load i32, i32* %WidthOut61, align 4, !tbaa !33
  %97 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params62 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %97, i32 0, i32 5
  %spp_interp63 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params62, i32 0, i32 1
  %98 = load i32, i32* %spp_interp63, align 4, !tbaa !34
  %mul64 = mul nsw i32 %96, %98
  %99 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelOut65 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %99, i32 0, i32 7
  %100 = load i32, i32* %sizeofPixelOut65, align 4, !tbaa !28
  %call66 = call i8* %93(%struct.gs_memory_s* %94, i32 %mul64, i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)) #5
  %101 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %101, i32 0, i32 9
  store i8* %call66, i8** %dst, align 8, !tbaa !27
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %102, i32 0, i32 1
  %alloc_byte_array68 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs67, i32 0, i32 10
  %103 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array68, align 8, !tbaa !64
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %105 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params69 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %105, i32 0, i32 5
  %WidthIn70 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params69, i32 0, i32 10
  %106 = load i32, i32* %WidthIn70, align 4, !tbaa !53
  %107 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params71 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %107, i32 0, i32 5
  %spp_interp72 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params71, i32 0, i32 1
  %108 = load i32, i32* %spp_interp72, align 4, !tbaa !34
  %mul73 = mul nsw i32 %106, %108
  %109 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %sizeofPixelIn74 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %109, i32 0, i32 6
  %110 = load i32, i32* %sizeofPixelIn74, align 4, !tbaa !44
  %call75 = call i8* %103(%struct.gs_memory_s* %104, i32 %mul73, i32 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #5
  %111 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %111, i32 0, i32 8
  store i8* %call75, i8** %src, align 8, !tbaa !42
  %112 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %tmp76 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %112, i32 0, i32 10
  %113 = load i8*, i8** %tmp76, align 8, !tbaa !30
  %cmp77 = icmp eq i8* %113, null
  br i1 %cmp77, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %114 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %contrib79 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %114, i32 0, i32 11
  %115 = load %struct.CLIST*, %struct.CLIST** %contrib79, align 8, !tbaa !45
  %cmp80 = icmp eq %struct.CLIST* %115, null
  br i1 %cmp80, label %if.then, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %lor.lhs.false
  %116 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %items83 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %116, i32 0, i32 12
  %117 = load %struct.CONTRIB*, %struct.CONTRIB** %items83, align 8, !tbaa !46
  %cmp84 = icmp eq %struct.CONTRIB* %117, null
  br i1 %cmp84, label %if.then, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.82
  %118 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst_items87 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %118, i32 0, i32 26
  %119 = load %struct.CONTRIB*, %struct.CONTRIB** %dst_items87, align 8, !tbaa !35
  %cmp88 = icmp eq %struct.CONTRIB* %119, null
  br i1 %cmp88, label %if.then, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.86
  %120 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %dst91 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %120, i32 0, i32 9
  %121 = load i8*, i8** %dst91, align 8, !tbaa !27
  %cmp92 = icmp eq i8* %121, null
  br i1 %cmp92, label %if.then, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %lor.lhs.false.90
  %122 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %src95 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %122, i32 0, i32 8
  %123 = load i8*, i8** %src95, align 8, !tbaa !42
  %cmp96 = icmp eq i8* %123, null
  br i1 %cmp96, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.94, %lor.lhs.false.90, %lor.lhs.false.86, %lor.lhs.false.82, %lor.lhs.false, %cond.end
  %124 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  call void @s_IScale_release(%struct.stream_state_s* %124) #5
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.94
  %125 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %contrib98 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %125, i32 0, i32 11
  %126 = load %struct.CLIST*, %struct.CLIST** %contrib98, align 8, !tbaa !45
  %127 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %items99 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %127, i32 0, i32 12
  %128 = load %struct.CONTRIB*, %struct.CONTRIB** %items99, align 8, !tbaa !46
  %129 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params100 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %129, i32 0, i32 5
  %EntireWidthOut101 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params100, i32 0, i32 18
  %130 = load i32, i32* %EntireWidthOut101, align 4, !tbaa !5
  %conv102 = sitofp i32 %130 to double
  %131 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params103 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %131, i32 0, i32 5
  %EntireWidthIn104 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params103, i32 0, i32 16
  %132 = load i32, i32* %EntireWidthIn104, align 4, !tbaa !11
  %conv105 = sitofp i32 %132 to double
  %div106 = fdiv double %conv102, %conv105
  %133 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params107 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %133, i32 0, i32 5
  %WidthOut108 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params107, i32 0, i32 12
  %134 = load i32, i32* %WidthOut108, align 4, !tbaa !33
  %135 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params109 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %135, i32 0, i32 5
  %WidthIn110 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params109, i32 0, i32 10
  %136 = load i32, i32* %WidthIn110, align 4, !tbaa !53
  %137 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params111 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %137, i32 0, i32 5
  %WidthOut112 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params111, i32 0, i32 12
  %138 = load i32, i32* %WidthOut112, align 4, !tbaa !33
  %139 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params113 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %139, i32 0, i32 5
  %WidthIn114 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params113, i32 0, i32 10
  %140 = load i32, i32* %WidthIn114, align 4, !tbaa !53
  %141 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params115 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %141, i32 0, i32 5
  %WidthIn116 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params115, i32 0, i32 10
  %142 = load i32, i32* %WidthIn116, align 4, !tbaa !53
  %143 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params117 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %143, i32 0, i32 5
  %spp_interp118 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params117, i32 0, i32 1
  %144 = load i32, i32* %spp_interp118, align 4, !tbaa !34
  %145 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  %params119 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %145, i32 0, i32 5
  %MaxValueIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params119, i32 0, i32 7
  %146 = load i32, i32* %MaxValueIn, align 4, !tbaa !65
  %conv120 = uitofp i32 %146 to double
  %div121 = fdiv double 2.550000e+02, %conv120
  %147 = load %struct.filter_defn_s*, %struct.filter_defn_s** %horiz.addr, align 8, !tbaa !1
  %filter_width122 = getelementptr inbounds %struct.filter_defn_s, %struct.filter_defn_s* %147, i32 0, i32 1
  %148 = load i32, i32* %filter_width122, align 4, !tbaa !58
  %149 = load %struct.filter_defn_s*, %struct.filter_defn_s** %horiz.addr, align 8, !tbaa !1
  %filter123 = getelementptr inbounds %struct.filter_defn_s, %struct.filter_defn_s* %149, i32 0, i32 0
  %150 = load double (double)*, double (double)** %filter123, align 8, !tbaa !60
  %151 = load %struct.filter_defn_s*, %struct.filter_defn_s** %horiz.addr, align 8, !tbaa !1
  %min_scale124 = getelementptr inbounds %struct.filter_defn_s, %struct.filter_defn_s* %151, i32 0, i32 3
  %152 = load double, double* %min_scale124, align 8, !tbaa !62
  %call125 = call i32 @calculate_contrib(%struct.CLIST* %126, %struct.CONTRIB* %128, double %div106, i32 0, i32 0, i32 %134, i32 %136, i32 %138, i32 %140, i32 %142, i32 %144, double %div121, i32 %148, double (double)* %150, double %152) #5
  %153 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss, align 8, !tbaa !1
  call void @calculate_dst_contrib(%struct.stream_IScale_state_s* %153, i32 0) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %154 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #2
  %155 = bitcast %struct.stream_IScale_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #2
  %156 = load i32, i32* %retval
  ret i32 %156
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal double @Mitchell_filter(double %t) #0 {
entry:
  %retval = alloca double, align 8
  %t.addr = alloca double, align 8
  %t2 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %t, double* %t.addr, align 8, !tbaa !66
  %0 = bitcast double* %t2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load double, double* %t.addr, align 8, !tbaa !66
  %2 = load double, double* %t.addr, align 8, !tbaa !66
  %mul = fmul double %1, %2
  store double %mul, double* %t2, align 8, !tbaa !66
  %3 = load double, double* %t.addr, align 8, !tbaa !66
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %t.addr, align 8, !tbaa !66
  %sub = fsub double -0.000000e+00, %4
  store double %sub, double* %t.addr, align 8, !tbaa !66
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load double, double* %t.addr, align 8, !tbaa !66
  %cmp1 = fcmp olt double %5, 1.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load double, double* %t.addr, align 8, !tbaa !66
  %7 = load double, double* %t2, align 8, !tbaa !66
  %mul3 = fmul double %6, %7
  %mul4 = fmul double 7.000000e+00, %mul3
  %8 = load double, double* %t2, align 8, !tbaa !66
  %mul5 = fmul double -1.200000e+01, %8
  %add = fadd double %mul4, %mul5
  %add6 = fadd double %add, 0x4015555555555555
  %div = fdiv double %add6, 6.000000e+00
  store double %div, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %9 = load double, double* %t.addr, align 8, !tbaa !66
  %cmp7 = fcmp olt double %9, 2.000000e+00
  br i1 %cmp7, label %if.then.8, label %if.else.17

if.then.8:                                        ; preds = %if.else
  %10 = load double, double* %t.addr, align 8, !tbaa !66
  %11 = load double, double* %t2, align 8, !tbaa !66
  %mul9 = fmul double %10, %11
  %mul10 = fmul double 0xC002AAAAAAAAAAAB, %mul9
  %12 = load double, double* %t2, align 8, !tbaa !66
  %mul11 = fmul double 1.200000e+01, %12
  %add12 = fadd double %mul10, %mul11
  %13 = load double, double* %t.addr, align 8, !tbaa !66
  %mul13 = fmul double -2.000000e+01, %13
  %add14 = fadd double %add12, %mul13
  %add15 = fadd double %add14, 0x4025555555555555
  %div16 = fdiv double %add15, 6.000000e+00
  store double %div16, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.17:                                       ; preds = %if.else
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.17, %if.then.8, %if.then.2
  %14 = bitcast double* %t2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load double, double* %retval
  ret double %15
}

; Function Attrs: nounwind uwtable
define internal i32 @Mitchell_contrib_pixels(double %scale) #0 {
entry:
  %retval = alloca i32, align 4
  %scale.addr = alloca double, align 8
  store double %scale, double* %scale.addr, align 8, !tbaa !66
  %0 = load double, double* %scale.addr, align 8, !tbaa !66
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %scale.addr, align 8, !tbaa !66
  %cmp1 = fcmp oge double %1, 1.000000e+00
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end.5

cond.false:                                       ; preds = %if.end
  %2 = load double, double* %scale.addr, align 8, !tbaa !66
  %cmp2 = fcmp ogt double %2, 0x3FE24FD6FB3D2962
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  %3 = load double, double* %scale.addr, align 8, !tbaa !66
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi double [ %3, %cond.true.3 ], [ 0x3FE24FD6FB3D2962, %cond.false.4 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %div = fdiv double 2.000000e+00, %cond6
  %mul = fmul double %div, 2.000000e+00
  %add = fadd double %mul, 1.500000e+00
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.5, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal double @Interp_filter(double %t) #0 {
entry:
  %retval = alloca double, align 8
  %t.addr = alloca double, align 8
  store double %t, double* %t.addr, align 8, !tbaa !66
  %0 = load double, double* %t.addr, align 8, !tbaa !66
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %t.addr, align 8, !tbaa !66
  %sub = fsub double -0.000000e+00, %1
  store double %sub, double* %t.addr, align 8, !tbaa !66
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load double, double* %t.addr, align 8, !tbaa !66
  %cmp1 = fcmp oge double %2, 1.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store double 0.000000e+00, double* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %t.addr, align 8, !tbaa !66
  %mul = fmul double 2.000000e+00, %3
  %sub4 = fsub double %mul, 3.000000e+00
  %4 = load double, double* %t.addr, align 8, !tbaa !66
  %mul5 = fmul double %sub4, %4
  %5 = load double, double* %t.addr, align 8, !tbaa !66
  %mul6 = fmul double %mul5, %5
  %add = fadd double 1.000000e+00, %mul6
  store double %add, double* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %6 = load double, double* %retval
  ret double %6
}

; Function Attrs: nounwind uwtable
define internal i32 @Interp_contrib_pixels(double %scale) #0 {
entry:
  %retval = alloca i32, align 4
  %scale.addr = alloca double, align 8
  store double %scale, double* %scale.addr, align 8, !tbaa !66
  %0 = load double, double* %scale.addr, align 8, !tbaa !66
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %scale.addr, align 8, !tbaa !66
  %cmp1 = fcmp oge double %1, 1.000000e+00
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %2 = load double, double* %scale.addr, align 8, !tbaa !66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %2, %cond.false ]
  %div = fdiv double 1.000000e+00, %cond
  %mul = fmul double %div, 2.000000e+00
  %add = fadd double %mul, 1.500000e+00
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @calculate_contrib(%struct.CLIST* %contrib, %struct.CONTRIB* %items, double %scale, i32 %starting_output_index, i32 %src_y_offset, i32 %dst_size, i32 %src_size, i32 %size, i32 %limit, i32 %modulus, i32 %stride, double %rescale_factor, i32 %fWidthIn, double (double)* %fproc, double %min_scale) #0 {
entry:
  %contrib.addr = alloca %struct.CLIST*, align 8
  %items.addr = alloca %struct.CONTRIB*, align 8
  %scale.addr = alloca double, align 8
  %starting_output_index.addr = alloca i32, align 4
  %src_y_offset.addr = alloca i32, align 4
  %dst_size.addr = alloca i32, align 4
  %src_size.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %modulus.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %rescale_factor.addr = alloca double, align 8
  %fWidthIn.addr = alloca i32, align 4
  %fproc.addr = alloca double (double)*, align 8
  %min_scale.addr = alloca double, align 8
  %WidthIn = alloca double, align 8
  %fscale = alloca double, align 8
  %squeeze = alloca i32, align 4
  %npixels = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %last_index = alloca i32, align 4
  %clamped_scale = alloca double, align 8
  %dst_y_offset_fraction_num = alloca i32, align 4
  %center_denom = alloca i32, align 4
  %center_num = alloca i64, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %center = alloca double, align 8
  %first_pixel = alloca i32, align 4
  %last_pixel = alloca i32, align 4
  %p = alloca %struct.CONTRIB*, align 8
  %sum = alloca double, align 8
  %weight129 = alloca double, align 8
  %n136 = alloca i32, align 4
  %k = alloca i32, align 4
  %sum165 = alloca double, align 8
  %weight181 = alloca double, align 8
  %n186 = alloca i32, align 4
  %k200 = alloca i32, align 4
  store %struct.CLIST* %contrib, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  store %struct.CONTRIB* %items, %struct.CONTRIB** %items.addr, align 8, !tbaa !1
  store double %scale, double* %scale.addr, align 8, !tbaa !66
  store i32 %starting_output_index, i32* %starting_output_index.addr, align 4, !tbaa !14
  store i32 %src_y_offset, i32* %src_y_offset.addr, align 4, !tbaa !14
  store i32 %dst_size, i32* %dst_size.addr, align 4, !tbaa !14
  store i32 %src_size, i32* %src_size.addr, align 4, !tbaa !14
  store i32 %size, i32* %size.addr, align 4, !tbaa !14
  store i32 %limit, i32* %limit.addr, align 4, !tbaa !14
  store i32 %modulus, i32* %modulus.addr, align 4, !tbaa !14
  store i32 %stride, i32* %stride.addr, align 4, !tbaa !14
  store double %rescale_factor, double* %rescale_factor.addr, align 8, !tbaa !66
  store i32 %fWidthIn, i32* %fWidthIn.addr, align 4, !tbaa !14
  store double (double)* %fproc, double (double)** %fproc.addr, align 8, !tbaa !1
  store double %min_scale, double* %min_scale.addr, align 8, !tbaa !66
  %0 = bitcast double* %WidthIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double* %fscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %squeeze to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %npixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %last_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 -1, i32* %last_index, align 4, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load double, double* %scale.addr, align 8, !tbaa !66
  %cmp = fcmp olt double %7, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %8 = bitcast double* %clamped_scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load double, double* %scale.addr, align 8, !tbaa !66
  %10 = load double, double* %min_scale.addr, align 8, !tbaa !66
  %cmp1 = fcmp ogt double %9, %10
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load double, double* %scale.addr, align 8, !tbaa !66
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load double, double* %min_scale.addr, align 8, !tbaa !66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %11, %cond.true ], [ %12, %cond.false ]
  store double %cond, double* %clamped_scale, align 8, !tbaa !66
  %13 = load i32, i32* %fWidthIn.addr, align 4, !tbaa !14
  %conv = sitofp i32 %13 to double
  %14 = load double, double* %clamped_scale, align 8, !tbaa !66
  %div = fdiv double %conv, %14
  store double %div, double* %WidthIn, align 8, !tbaa !66
  %15 = load double, double* %clamped_scale, align 8, !tbaa !66
  %div2 = fdiv double 1.000000e+00, %15
  store double %div2, double* %fscale, align 8, !tbaa !66
  store i32 1, i32* %squeeze, align 4, !tbaa !14
  %16 = bitcast double* %clamped_scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  br label %if.end

if.else:                                          ; preds = %do.end
  %17 = load i32, i32* %fWidthIn.addr, align 4, !tbaa !14
  %conv3 = sitofp i32 %17 to double
  store double %conv3, double* %WidthIn, align 8, !tbaa !66
  store double 1.000000e+00, double* %fscale, align 8, !tbaa !66
  store i32 0, i32* %squeeze, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %18 = load double, double* %WidthIn, align 8, !tbaa !66
  %mul = fmul double %18, 2.000000e+00
  %add = fadd double %mul, 1.000000e+00
  %conv4 = fptosi double %add to i32
  store i32 %conv4, i32* %npixels, align 4, !tbaa !14
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.219, %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %20 = load i32, i32* %size.addr, align 4, !tbaa !14
  %cmp5 = icmp slt i32 %19, %20
  br i1 %cmp5, label %for.body, label %for.end.221

for.body:                                         ; preds = %for.cond
  %21 = bitcast i32* %dst_y_offset_fraction_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i32, i32* %src_y_offset.addr, align 4, !tbaa !14
  %conv7 = sext i32 %22 to i64
  %23 = load i32, i32* %dst_size.addr, align 4, !tbaa !14
  %conv8 = sext i32 %23 to i64
  %mul9 = mul nsw i64 %conv7, %conv8
  %24 = load i32, i32* %src_size.addr, align 4, !tbaa !14
  %conv10 = sext i32 %24 to i64
  %rem = srem i64 %mul9, %conv10
  %conv11 = trunc i64 %rem to i32
  %mul12 = mul nsw i32 %conv11, 2
  %25 = load i32, i32* %src_size.addr, align 4, !tbaa !14
  %cmp13 = icmp sle i32 %mul12, %25
  br i1 %cmp13, label %cond.true.15, label %cond.false.22

cond.true.15:                                     ; preds = %for.body
  %26 = load i32, i32* %src_y_offset.addr, align 4, !tbaa !14
  %conv16 = sext i32 %26 to i64
  %27 = load i32, i32* %dst_size.addr, align 4, !tbaa !14
  %conv17 = sext i32 %27 to i64
  %mul18 = mul nsw i64 %conv16, %conv17
  %28 = load i32, i32* %src_size.addr, align 4, !tbaa !14
  %conv19 = sext i32 %28 to i64
  %rem20 = srem i64 %mul18, %conv19
  %conv21 = trunc i64 %rem20 to i32
  %sub = sub nsw i32 0, %conv21
  br label %cond.end.30

cond.false.22:                                    ; preds = %for.body
  %29 = load i32, i32* %src_size.addr, align 4, !tbaa !14
  %30 = load i32, i32* %src_y_offset.addr, align 4, !tbaa !14
  %conv23 = sext i32 %30 to i64
  %31 = load i32, i32* %dst_size.addr, align 4, !tbaa !14
  %conv24 = sext i32 %31 to i64
  %mul25 = mul nsw i64 %conv23, %conv24
  %32 = load i32, i32* %src_size.addr, align 4, !tbaa !14
  %conv26 = sext i32 %32 to i64
  %rem27 = srem i64 %mul25, %conv26
  %conv28 = trunc i64 %rem27 to i32
  %sub29 = sub nsw i32 %29, %conv28
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.22, %cond.true.15
  %cond31 = phi i32 [ %sub, %cond.true.15 ], [ %sub29, %cond.false.22 ]
  store i32 %cond31, i32* %dst_y_offset_fraction_num, align 4, !tbaa !14
  %33 = bitcast i32* %center_denom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load i32, i32* %dst_size.addr, align 4, !tbaa !14
  %mul32 = mul nsw i32 %34, 2
  store i32 %mul32, i32* %center_denom, align 4, !tbaa !14
  %35 = bitcast i64* %center_num to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load i32, i32* %starting_output_index.addr, align 4, !tbaa !14
  %37 = load i32, i32* %i, align 4, !tbaa !14
  %add33 = add nsw i32 %36, %37
  %38 = load i32, i32* %src_size.addr, align 4, !tbaa !14
  %mul34 = mul nsw i32 %add33, %38
  %mul35 = mul nsw i32 %mul34, 2
  %39 = load i32, i32* %src_size.addr, align 4, !tbaa !14
  %add36 = add nsw i32 %mul35, %39
  %40 = load i32, i32* %dst_y_offset_fraction_num, align 4, !tbaa !14
  %mul37 = mul nsw i32 %40, 2
  %add38 = add nsw i32 %add36, %mul37
  %41 = load i32, i32* %dst_size.addr, align 4, !tbaa !14
  %sub39 = sub nsw i32 %add38, %41
  %conv40 = sext i32 %sub39 to i64
  store i64 %conv40, i64* %center_num, align 8, !tbaa !67
  %42 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = load i64, i64* %center_num, align 8, !tbaa !67
  %conv41 = sitofp i64 %43 to double
  %44 = load double, double* %WidthIn, align 8, !tbaa !66
  %45 = load i32, i32* %center_denom, align 4, !tbaa !14
  %conv42 = sitofp i32 %45 to double
  %mul43 = fmul double %44, %conv42
  %sub44 = fsub double %conv41, %mul43
  %46 = load i32, i32* %center_denom, align 4, !tbaa !14
  %conv45 = sitofp i32 %46 to double
  %div46 = fdiv double %sub44, %conv45
  %call = call double @ceil(double %div46) #7
  %conv47 = fptosi double %call to i32
  store i32 %conv47, i32* %left, align 4, !tbaa !14
  %47 = bitcast i32* %right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = load i64, i64* %center_num, align 8, !tbaa !67
  %conv48 = sitofp i64 %48 to double
  %49 = load double, double* %WidthIn, align 8, !tbaa !66
  %50 = load i32, i32* %center_denom, align 4, !tbaa !14
  %conv49 = sitofp i32 %50 to double
  %mul50 = fmul double %49, %conv49
  %add51 = fadd double %conv48, %mul50
  %51 = load i32, i32* %center_denom, align 4, !tbaa !14
  %conv52 = sitofp i32 %51 to double
  %div53 = fdiv double %add51, %conv52
  %call54 = call double @floor(double %div53) #7
  %conv55 = fptosi double %call54 to i32
  store i32 %conv55, i32* %right, align 4, !tbaa !14
  %52 = bitcast double* %center to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #2
  %53 = load i64, i64* %center_num, align 8, !tbaa !67
  %conv56 = sitofp i64 %53 to double
  %54 = load i32, i32* %center_denom, align 4, !tbaa !14
  %conv57 = sitofp i32 %54 to double
  %div58 = fdiv double %conv56, %conv57
  store double %div58, double* %center, align 8, !tbaa !66
  %55 = bitcast i32* %first_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load i32, i32* %left, align 4, !tbaa !14
  %cmp59 = icmp slt i32 %56, 0
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.30
  br label %cond.end.70

cond.false.62:                                    ; preds = %cond.end.30
  %57 = load i32, i32* %left, align 4, !tbaa !14
  %58 = load i32, i32* %limit.addr, align 4, !tbaa !14
  %cmp63 = icmp sge i32 %57, %58
  br i1 %cmp63, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %cond.false.62
  %59 = load i32, i32* %limit.addr, align 4, !tbaa !14
  %sub66 = sub nsw i32 %59, 1
  br label %cond.end.68

cond.false.67:                                    ; preds = %cond.false.62
  %60 = load i32, i32* %left, align 4, !tbaa !14
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.65
  %cond69 = phi i32 [ %sub66, %cond.true.65 ], [ %60, %cond.false.67 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %cond.true.61
  %cond71 = phi i32 [ 0, %cond.true.61 ], [ %cond69, %cond.end.68 ]
  store i32 %cond71, i32* %first_pixel, align 4, !tbaa !14
  %61 = bitcast i32* %last_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = load i32, i32* %right, align 4, !tbaa !14
  %cmp72 = icmp slt i32 %62, 0
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.end.70
  br label %cond.end.83

cond.false.75:                                    ; preds = %cond.end.70
  %63 = load i32, i32* %right, align 4, !tbaa !14
  %64 = load i32, i32* %limit.addr, align 4, !tbaa !14
  %cmp76 = icmp sge i32 %63, %64
  br i1 %cmp76, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %cond.false.75
  %65 = load i32, i32* %limit.addr, align 4, !tbaa !14
  %sub79 = sub nsw i32 %65, 1
  br label %cond.end.81

cond.false.80:                                    ; preds = %cond.false.75
  %66 = load i32, i32* %right, align 4, !tbaa !14
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.78
  %cond82 = phi i32 [ %sub79, %cond.true.78 ], [ %66, %cond.false.80 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.74
  %cond84 = phi i32 [ 0, %cond.true.74 ], [ %cond82, %cond.end.81 ]
  store i32 %cond84, i32* %last_pixel, align 4, !tbaa !14
  %67 = bitcast %struct.CONTRIB** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  br label %do.body.85

do.body.85:                                       ; preds = %cond.end.83
  br label %do.cond.86

do.cond.86:                                       ; preds = %do.body.85
  br label %do.end.87

do.end.87:                                        ; preds = %do.cond.86
  %68 = load i32, i32* %last_pixel, align 4, !tbaa !14
  %69 = load i32, i32* %last_index, align 4, !tbaa !14
  %cmp88 = icmp sgt i32 %68, %69
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %do.end.87
  %70 = load i32, i32* %last_pixel, align 4, !tbaa !14
  store i32 %70, i32* %last_index, align 4, !tbaa !14
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %do.end.87
  %71 = load i32, i32* %first_pixel, align 4, !tbaa !14
  %72 = load i32, i32* %modulus.addr, align 4, !tbaa !14
  %rem92 = srem i32 %71, %72
  %73 = load i32, i32* %stride.addr, align 4, !tbaa !14
  %mul93 = mul nsw i32 %rem92, %73
  %74 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %74 to i64
  %75 = load %struct.CLIST*, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.CLIST, %struct.CLIST* %75, i64 %idxprom
  %first_pixel94 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %arrayidx, i32 0, i32 2
  store i32 %mul93, i32* %first_pixel94, align 4, !tbaa !69
  %76 = load i32, i32* %last_pixel, align 4, !tbaa !14
  %77 = load i32, i32* %first_pixel, align 4, !tbaa !14
  %sub95 = sub nsw i32 %76, %77
  %add96 = add nsw i32 %sub95, 1
  %78 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom97 = sext i32 %78 to i64
  %79 = load %struct.CLIST*, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %79, i64 %idxprom97
  %n = getelementptr inbounds %struct.CLIST, %struct.CLIST* %arrayidx98, i32 0, i32 1
  store i32 %add96, i32* %n, align 4, !tbaa !70
  %80 = load i32, i32* %i, align 4, !tbaa !14
  %81 = load i32, i32* %npixels, align 4, !tbaa !14
  %mul99 = mul nsw i32 %80, %81
  %82 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom100 = sext i32 %82 to i64
  %83 = load %struct.CLIST*, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %83, i64 %idxprom100
  %index = getelementptr inbounds %struct.CLIST, %struct.CLIST* %arrayidx101, i32 0, i32 0
  store i32 %mul99, i32* %index, align 4, !tbaa !71
  %84 = load %struct.CONTRIB*, %struct.CONTRIB** %items.addr, align 8, !tbaa !1
  %85 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom102 = sext i32 %85 to i64
  %86 = load %struct.CLIST*, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %86, i64 %idxprom102
  %index104 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %arrayidx103, i32 0, i32 0
  %87 = load i32, i32* %index104, align 4, !tbaa !71
  %idx.ext = sext i32 %87 to i64
  %add.ptr = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %84, i64 %idx.ext
  store %struct.CONTRIB* %add.ptr, %struct.CONTRIB** %p, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc, %if.end.91
  %88 = load i32, i32* %j, align 4, !tbaa !14
  %89 = load i32, i32* %npixels, align 4, !tbaa !14
  %cmp106 = icmp slt i32 %88, %89
  br i1 %cmp106, label %for.body.108, label %for.end

for.body.108:                                     ; preds = %for.cond.105
  %90 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom109 = sext i32 %90 to i64
  %91 = load %struct.CONTRIB*, %struct.CONTRIB** %p, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %91, i64 %idxprom109
  %weight = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %arrayidx110, i32 0, i32 0
  store double 0.000000e+00, double* %weight, align 8, !tbaa !72
  br label %for.inc

for.inc:                                          ; preds = %for.body.108
  %92 = load i32, i32* %j, align 4, !tbaa !14
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %j, align 4, !tbaa !14
  br label %for.cond.105

for.end:                                          ; preds = %for.cond.105
  %93 = load i32, i32* %squeeze, align 4, !tbaa !14
  %tobool = icmp ne i32 %93, 0
  br i1 %tobool, label %if.then.111, label %if.else.164

if.then.111:                                      ; preds = %for.end
  %94 = bitcast double* %sum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #2
  store double 0.000000e+00, double* %sum, align 8, !tbaa !66
  %95 = load i32, i32* %left, align 4, !tbaa !14
  store i32 %95, i32* %j, align 4, !tbaa !14
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.122, %if.then.111
  %96 = load i32, i32* %j, align 4, !tbaa !14
  %97 = load i32, i32* %right, align 4, !tbaa !14
  %cmp113 = icmp sle i32 %96, %97
  br i1 %cmp113, label %for.body.115, label %for.end.124

for.body.115:                                     ; preds = %for.cond.112
  %98 = load double (double)*, double (double)** %fproc.addr, align 8, !tbaa !1
  %99 = load double, double* %center, align 8, !tbaa !66
  %100 = load i32, i32* %j, align 4, !tbaa !14
  %conv116 = sitofp i32 %100 to double
  %sub117 = fsub double %99, %conv116
  %101 = load double, double* %fscale, align 8, !tbaa !66
  %div118 = fdiv double %sub117, %101
  %call119 = call double %98(double %div118) #5
  %102 = load double, double* %fscale, align 8, !tbaa !66
  %div120 = fdiv double %call119, %102
  %103 = load double, double* %sum, align 8, !tbaa !66
  %add121 = fadd double %103, %div120
  store double %add121, double* %sum, align 8, !tbaa !66
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.115
  %104 = load i32, i32* %j, align 4, !tbaa !14
  %inc123 = add nsw i32 %104, 1
  store i32 %inc123, i32* %j, align 4, !tbaa !14
  br label %for.cond.112

for.end.124:                                      ; preds = %for.cond.112
  %105 = load i32, i32* %left, align 4, !tbaa !14
  store i32 %105, i32* %j, align 4, !tbaa !14
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.161, %for.end.124
  %106 = load i32, i32* %j, align 4, !tbaa !14
  %107 = load i32, i32* %right, align 4, !tbaa !14
  %cmp126 = icmp sle i32 %106, %107
  br i1 %cmp126, label %for.body.128, label %for.end.163

for.body.128:                                     ; preds = %for.cond.125
  %108 = bitcast double* %weight129 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #2
  %109 = load double (double)*, double (double)** %fproc.addr, align 8, !tbaa !1
  %110 = load double, double* %center, align 8, !tbaa !66
  %111 = load i32, i32* %j, align 4, !tbaa !14
  %conv130 = sitofp i32 %111 to double
  %sub131 = fsub double %110, %conv130
  %112 = load double, double* %fscale, align 8, !tbaa !66
  %div132 = fdiv double %sub131, %112
  %call133 = call double %109(double %div132) #5
  %113 = load double, double* %fscale, align 8, !tbaa !66
  %div134 = fdiv double %call133, %113
  %114 = load double, double* %sum, align 8, !tbaa !66
  %div135 = fdiv double %div134, %114
  store double %div135, double* %weight129, align 8, !tbaa !66
  %115 = bitcast i32* %n136 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #2
  %116 = load i32, i32* %j, align 4, !tbaa !14
  %cmp137 = icmp slt i32 %116, 0
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %for.body.128
  br label %cond.end.148

cond.false.140:                                   ; preds = %for.body.128
  %117 = load i32, i32* %j, align 4, !tbaa !14
  %118 = load i32, i32* %limit.addr, align 4, !tbaa !14
  %cmp141 = icmp sge i32 %117, %118
  br i1 %cmp141, label %cond.true.143, label %cond.false.145

cond.true.143:                                    ; preds = %cond.false.140
  %119 = load i32, i32* %limit.addr, align 4, !tbaa !14
  %sub144 = sub nsw i32 %119, 1
  br label %cond.end.146

cond.false.145:                                   ; preds = %cond.false.140
  %120 = load i32, i32* %j, align 4, !tbaa !14
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.145, %cond.true.143
  %cond147 = phi i32 [ %sub144, %cond.true.143 ], [ %120, %cond.false.145 ]
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.end.146, %cond.true.139
  %cond149 = phi i32 [ 0, %cond.true.139 ], [ %cond147, %cond.end.146 ]
  store i32 %cond149, i32* %n136, align 4, !tbaa !14
  %121 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #2
  %122 = load i32, i32* %n136, align 4, !tbaa !14
  %123 = load i32, i32* %first_pixel, align 4, !tbaa !14
  %sub150 = sub nsw i32 %122, %123
  store i32 %sub150, i32* %k, align 4, !tbaa !14
  %124 = load double, double* %weight129, align 8, !tbaa !66
  %125 = load double, double* %rescale_factor.addr, align 8, !tbaa !66
  %mul151 = fmul double %124, %125
  %conv152 = fptrunc double %mul151 to float
  %conv153 = fpext float %conv152 to double
  %126 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom154 = sext i32 %126 to i64
  %127 = load %struct.CONTRIB*, %struct.CONTRIB** %p, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %127, i64 %idxprom154
  %weight156 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %arrayidx155, i32 0, i32 0
  %128 = load double, double* %weight156, align 8, !tbaa !72
  %add157 = fadd double %128, %conv153
  store double %add157, double* %weight156, align 8, !tbaa !72
  br label %do.body.158

do.body.158:                                      ; preds = %cond.end.148
  br label %do.cond.159

do.cond.159:                                      ; preds = %do.body.158
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  %129 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i32* %n136 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast double* %weight129 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #2
  br label %for.inc.161

for.inc.161:                                      ; preds = %do.end.160
  %132 = load i32, i32* %j, align 4, !tbaa !14
  %inc162 = add nsw i32 %132, 1
  store i32 %inc162, i32* %j, align 4, !tbaa !14
  br label %for.cond.125

for.end.163:                                      ; preds = %for.cond.125
  %133 = bitcast double* %sum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #2
  br label %if.end.215

if.else.164:                                      ; preds = %for.end
  %134 = bitcast double* %sum165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #2
  store double 0.000000e+00, double* %sum165, align 8, !tbaa !66
  %135 = load i32, i32* %left, align 4, !tbaa !14
  store i32 %135, i32* %j, align 4, !tbaa !14
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.174, %if.else.164
  %136 = load i32, i32* %j, align 4, !tbaa !14
  %137 = load i32, i32* %right, align 4, !tbaa !14
  %cmp167 = icmp sle i32 %136, %137
  br i1 %cmp167, label %for.body.169, label %for.end.176

for.body.169:                                     ; preds = %for.cond.166
  %138 = load double (double)*, double (double)** %fproc.addr, align 8, !tbaa !1
  %139 = load double, double* %center, align 8, !tbaa !66
  %140 = load i32, i32* %j, align 4, !tbaa !14
  %conv170 = sitofp i32 %140 to double
  %sub171 = fsub double %139, %conv170
  %call172 = call double %138(double %sub171) #5
  %141 = load double, double* %sum165, align 8, !tbaa !66
  %add173 = fadd double %141, %call172
  store double %add173, double* %sum165, align 8, !tbaa !66
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.169
  %142 = load i32, i32* %j, align 4, !tbaa !14
  %inc175 = add nsw i32 %142, 1
  store i32 %inc175, i32* %j, align 4, !tbaa !14
  br label %for.cond.166

for.end.176:                                      ; preds = %for.cond.166
  %143 = load i32, i32* %left, align 4, !tbaa !14
  store i32 %143, i32* %j, align 4, !tbaa !14
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.212, %for.end.176
  %144 = load i32, i32* %j, align 4, !tbaa !14
  %145 = load i32, i32* %right, align 4, !tbaa !14
  %cmp178 = icmp sle i32 %144, %145
  br i1 %cmp178, label %for.body.180, label %for.end.214

for.body.180:                                     ; preds = %for.cond.177
  %146 = bitcast double* %weight181 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #2
  %147 = load double (double)*, double (double)** %fproc.addr, align 8, !tbaa !1
  %148 = load double, double* %center, align 8, !tbaa !66
  %149 = load i32, i32* %j, align 4, !tbaa !14
  %conv182 = sitofp i32 %149 to double
  %sub183 = fsub double %148, %conv182
  %call184 = call double %147(double %sub183) #5
  %150 = load double, double* %sum165, align 8, !tbaa !66
  %div185 = fdiv double %call184, %150
  store double %div185, double* %weight181, align 8, !tbaa !66
  %151 = bitcast i32* %n186 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #2
  %152 = load i32, i32* %j, align 4, !tbaa !14
  %cmp187 = icmp slt i32 %152, 0
  br i1 %cmp187, label %cond.true.189, label %cond.false.190

cond.true.189:                                    ; preds = %for.body.180
  br label %cond.end.198

cond.false.190:                                   ; preds = %for.body.180
  %153 = load i32, i32* %j, align 4, !tbaa !14
  %154 = load i32, i32* %limit.addr, align 4, !tbaa !14
  %cmp191 = icmp sge i32 %153, %154
  br i1 %cmp191, label %cond.true.193, label %cond.false.195

cond.true.193:                                    ; preds = %cond.false.190
  %155 = load i32, i32* %limit.addr, align 4, !tbaa !14
  %sub194 = sub nsw i32 %155, 1
  br label %cond.end.196

cond.false.195:                                   ; preds = %cond.false.190
  %156 = load i32, i32* %j, align 4, !tbaa !14
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.195, %cond.true.193
  %cond197 = phi i32 [ %sub194, %cond.true.193 ], [ %156, %cond.false.195 ]
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.end.196, %cond.true.189
  %cond199 = phi i32 [ 0, %cond.true.189 ], [ %cond197, %cond.end.196 ]
  store i32 %cond199, i32* %n186, align 4, !tbaa !14
  %157 = bitcast i32* %k200 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #2
  %158 = load i32, i32* %n186, align 4, !tbaa !14
  %159 = load i32, i32* %first_pixel, align 4, !tbaa !14
  %sub201 = sub nsw i32 %158, %159
  store i32 %sub201, i32* %k200, align 4, !tbaa !14
  %160 = load double, double* %weight181, align 8, !tbaa !66
  %161 = load double, double* %rescale_factor.addr, align 8, !tbaa !66
  %mul202 = fmul double %160, %161
  %conv203 = fptrunc double %mul202 to float
  %conv204 = fpext float %conv203 to double
  %162 = load i32, i32* %k200, align 4, !tbaa !14
  %idxprom205 = sext i32 %162 to i64
  %163 = load %struct.CONTRIB*, %struct.CONTRIB** %p, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %163, i64 %idxprom205
  %weight207 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %arrayidx206, i32 0, i32 0
  %164 = load double, double* %weight207, align 8, !tbaa !72
  %add208 = fadd double %164, %conv204
  store double %add208, double* %weight207, align 8, !tbaa !72
  br label %do.body.209

do.body.209:                                      ; preds = %cond.end.198
  br label %do.cond.210

do.cond.210:                                      ; preds = %do.body.209
  br label %do.end.211

do.end.211:                                       ; preds = %do.cond.210
  %165 = bitcast i32* %k200 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #2
  %166 = bitcast i32* %n186 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast double* %weight181 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  br label %for.inc.212

for.inc.212:                                      ; preds = %do.end.211
  %168 = load i32, i32* %j, align 4, !tbaa !14
  %inc213 = add nsw i32 %168, 1
  store i32 %inc213, i32* %j, align 4, !tbaa !14
  br label %for.cond.177

for.end.214:                                      ; preds = %for.cond.177
  %169 = bitcast double* %sum165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #2
  br label %if.end.215

if.end.215:                                       ; preds = %for.end.214, %for.end.163
  br label %do.body.216

do.body.216:                                      ; preds = %if.end.215
  br label %do.cond.217

do.cond.217:                                      ; preds = %do.body.216
  br label %do.end.218

do.end.218:                                       ; preds = %do.cond.217
  %170 = bitcast %struct.CONTRIB** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  %171 = bitcast i32* %last_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast i32* %first_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast double* %center to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast i32* %right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i64* %center_num to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #2
  %177 = bitcast i32* %center_denom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  %178 = bitcast i32* %dst_y_offset_fraction_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  br label %for.inc.219

for.inc.219:                                      ; preds = %do.end.218
  %179 = load i32, i32* %i, align 4, !tbaa !14
  %inc220 = add nsw i32 %179, 1
  store i32 %inc220, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end.221:                                      ; preds = %for.cond
  %180 = load i32, i32* %last_index, align 4, !tbaa !14
  %181 = bitcast i32* %last_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %182 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i32* %npixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast i32* %squeeze to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %186 = bitcast double* %fscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #2
  %187 = bitcast double* %WidthIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #2
  ret i32 %180
}

; Function Attrs: nounwind uwtable
define internal void @calculate_dst_contrib(%struct.stream_IScale_state_s* %ss, i32 %y) #0 {
entry:
  %ss.addr = alloca %struct.stream_IScale_state_s*, align 8
  %y.addr = alloca i32, align 4
  %row_size = alloca i32, align 4
  %last_index = alloca i32, align 4
  %first_index_mod = alloca i32, align 4
  %shuffle = alloca %struct.CONTRIB*, align 8
  %i = alloca i32, align 4
  store %struct.stream_IScale_state_s* %ss, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !14
  %0 = bitcast i32* %row_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %1, i32 0, i32 5
  %WidthOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params, i32 0, i32 12
  %2 = load i32, i32* %WidthOut, align 4, !tbaa !33
  %3 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %3, i32 0, i32 5
  %spp_interp = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params1, i32 0, i32 1
  %4 = load i32, i32* %spp_interp, align 4, !tbaa !34
  %mul = mul nsw i32 %2, %4
  store i32 %mul, i32* %row_size, align 4, !tbaa !14
  %5 = bitcast i32* %last_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_next_list = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %6, i32 0, i32 20
  %7 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_items = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %7, i32 0, i32 26
  %8 = load %struct.CONTRIB*, %struct.CONTRIB** %dst_items, align 8, !tbaa !35
  %9 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %9, i32 0, i32 5
  %EntireHeightOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params2, i32 0, i32 19
  %10 = load i32, i32* %EntireHeightOut, align 4, !tbaa !12
  %conv = sitofp i32 %10 to double
  %11 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %11, i32 0, i32 5
  %EntireHeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params3, i32 0, i32 17
  %12 = load i32, i32* %EntireHeightIn, align 4, !tbaa !13
  %conv4 = sitofp i32 %12 to double
  %div = fdiv double %conv, %conv4
  %13 = load i32, i32* %y.addr, align 4, !tbaa !14
  %14 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %src_y_offset = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %14, i32 0, i32 17
  %15 = load i32, i32* %src_y_offset, align 4, !tbaa !55
  %16 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %16, i32 0, i32 5
  %EntireHeightOut6 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params5, i32 0, i32 19
  %17 = load i32, i32* %EntireHeightOut6, align 4, !tbaa !12
  %18 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %18, i32 0, i32 5
  %EntireHeightIn8 = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params7, i32 0, i32 17
  %19 = load i32, i32* %EntireHeightIn8, align 4, !tbaa !13
  %20 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %20, i32 0, i32 5
  %HeightIn = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params9, i32 0, i32 11
  %21 = load i32, i32* %HeightIn, align 4, !tbaa !41
  %22 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %max_support = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %22, i32 0, i32 23
  %23 = load i32, i32* %max_support, align 4, !tbaa !43
  %24 = load i32, i32* %row_size, align 4, !tbaa !14
  %25 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %25, i32 0, i32 5
  %MaxValueOut = getelementptr inbounds %struct.stream_image_scale_params_s, %struct.stream_image_scale_params_s* %params10, i32 0, i32 9
  %26 = load i32, i32* %MaxValueOut, align 4, !tbaa !29
  %conv11 = uitofp i32 %26 to double
  %div12 = fdiv double %conv11, 2.550000e+02
  %27 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %filter_width = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %27, i32 0, i32 22
  %28 = load i32, i32* %filter_width, align 4, !tbaa !59
  %29 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %filter = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %29, i32 0, i32 24
  %30 = load double (double)*, double (double)** %filter, align 8, !tbaa !61
  %31 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %min_scale = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %31, i32 0, i32 25
  %32 = load double, double* %min_scale, align 8, !tbaa !63
  %call = call i32 @calculate_contrib(%struct.CLIST* %dst_next_list, %struct.CONTRIB* %8, double %div, i32 %13, i32 %15, i32 %17, i32 %19, i32 1, i32 %21, i32 %23, i32 %24, double %div12, i32 %28, double (double)* %30, double %32) #5
  store i32 %call, i32* %last_index, align 4, !tbaa !14
  %33 = bitcast i32* %first_index_mod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_next_list13 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %34, i32 0, i32 20
  %first_pixel = getelementptr inbounds %struct.CLIST, %struct.CLIST* %dst_next_list13, i32 0, i32 2
  %35 = load i32, i32* %first_pixel, align 4, !tbaa !74
  %36 = load i32, i32* %row_size, align 4, !tbaa !14
  %div14 = udiv i32 %35, %36
  store i32 %div14, i32* %first_index_mod, align 4, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %37 = load i32, i32* %last_index, align 4, !tbaa !14
  %38 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_last_index = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %38, i32 0, i32 21
  store i32 %37, i32* %dst_last_index, align 4, !tbaa !19
  %39 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %max_support15 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %39, i32 0, i32 23
  %40 = load i32, i32* %max_support15, align 4, !tbaa !43
  %41 = load i32, i32* %last_index, align 4, !tbaa !14
  %rem = srem i32 %41, %40
  store i32 %rem, i32* %last_index, align 4, !tbaa !14
  %42 = load i32, i32* %last_index, align 4, !tbaa !14
  %43 = load i32, i32* %first_index_mod, align 4, !tbaa !14
  %cmp = icmp slt i32 %42, %43
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %44 = bitcast %struct.CONTRIB** %shuffle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #2
  %45 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %max_support17 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %45, i32 0, i32 23
  %46 = load i32, i32* %max_support17, align 4, !tbaa !43
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_items18 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %47, i32 0, i32 26
  %48 = load %struct.CONTRIB*, %struct.CONTRIB** %dst_items18, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %48, i64 %idxprom
  store %struct.CONTRIB* %arrayidx, %struct.CONTRIB** %shuffle, align 8, !tbaa !1
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %50 = load i32, i32* %i, align 4, !tbaa !14
  %51 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %max_support19 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %51, i32 0, i32 23
  %52 = load i32, i32* %max_support19, align 4, !tbaa !43
  %cmp20 = icmp slt i32 %50, %52
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %i, align 4, !tbaa !14
  %54 = load i32, i32* %last_index, align 4, !tbaa !14
  %cmp22 = icmp sle i32 %53, %54
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %55 = load i32, i32* %i, align 4, !tbaa !14
  %56 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %max_support24 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %56, i32 0, i32 23
  %57 = load i32, i32* %max_support24, align 4, !tbaa !43
  %add = add nsw i32 %55, %57
  %58 = load i32, i32* %first_index_mod, align 4, !tbaa !14
  %sub = sub nsw i32 %add, %58
  %idxprom25 = sext i32 %sub to i64
  %59 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_items26 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %59, i32 0, i32 26
  %60 = load %struct.CONTRIB*, %struct.CONTRIB** %dst_items26, align 8, !tbaa !35
  %arrayidx27 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %60, i64 %idxprom25
  %weight = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %arrayidx27, i32 0, i32 0
  %61 = load double, double* %weight, align 8, !tbaa !72
  br label %cond.end.37

cond.false:                                       ; preds = %for.body
  %62 = load i32, i32* %i, align 4, !tbaa !14
  %63 = load i32, i32* %first_index_mod, align 4, !tbaa !14
  %cmp28 = icmp sge i32 %62, %63
  br i1 %cmp28, label %cond.true.30, label %cond.false.36

cond.true.30:                                     ; preds = %cond.false
  %64 = load i32, i32* %i, align 4, !tbaa !14
  %65 = load i32, i32* %first_index_mod, align 4, !tbaa !14
  %sub31 = sub nsw i32 %64, %65
  %idxprom32 = sext i32 %sub31 to i64
  %66 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_items33 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %66, i32 0, i32 26
  %67 = load %struct.CONTRIB*, %struct.CONTRIB** %dst_items33, align 8, !tbaa !35
  %arrayidx34 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %67, i64 %idxprom32
  %weight35 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %arrayidx34, i32 0, i32 0
  %68 = load double, double* %weight35, align 8, !tbaa !72
  br label %cond.end

cond.false.36:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.36, %cond.true.30
  %cond = phi double [ %68, %cond.true.30 ], [ 0.000000e+00, %cond.false.36 ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end, %cond.true
  %cond38 = phi double [ %61, %cond.true ], [ %cond, %cond.end ]
  %69 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom39 = sext i32 %69 to i64
  %70 = load %struct.CONTRIB*, %struct.CONTRIB** %shuffle, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %70, i64 %idxprom39
  %weight41 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %arrayidx40, i32 0, i32 0
  store double %cond38, double* %weight41, align 8, !tbaa !72
  br label %do.body.42

do.body.42:                                       ; preds = %cond.end.37
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.body.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  br label %for.inc

for.inc:                                          ; preds = %do.end.44
  %71 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_items45 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %72, i32 0, i32 26
  %73 = load %struct.CONTRIB*, %struct.CONTRIB** %dst_items45, align 8, !tbaa !35
  %74 = bitcast %struct.CONTRIB* %73 to i8*
  %75 = load %struct.CONTRIB*, %struct.CONTRIB** %shuffle, align 8, !tbaa !1
  %76 = bitcast %struct.CONTRIB* %75 to i8*
  %77 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %max_support46 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %77, i32 0, i32 23
  %78 = load i32, i32* %max_support46, align 4, !tbaa !43
  %conv47 = sext i32 %78 to i64
  %mul48 = mul i64 %conv47, 8
  %call49 = call i8* @memcpy(i8* %74, i8* %76, i64 %mul48) #6
  %79 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %max_support50 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %79, i32 0, i32 23
  %80 = load i32, i32* %max_support50, align 4, !tbaa !43
  %81 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_next_list51 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %81, i32 0, i32 20
  %n = getelementptr inbounds %struct.CLIST, %struct.CLIST* %dst_next_list51, i32 0, i32 1
  store i32 %80, i32* %n, align 4, !tbaa !75
  %82 = load %struct.stream_IScale_state_s*, %struct.stream_IScale_state_s** %ss.addr, align 8, !tbaa !1
  %dst_next_list52 = getelementptr inbounds %struct.stream_IScale_state_s, %struct.stream_IScale_state_s* %82, i32 0, i32 20
  %first_pixel53 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %dst_next_list52, i32 0, i32 2
  store i32 0, i32* %first_pixel53, align 4, !tbaa !74
  %83 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast %struct.CONTRIB** %shuffle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %do.end
  br label %do.body.54

do.body.54:                                       ; preds = %if.end
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %85 = bitcast i32* %first_index_mod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %last_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %row_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  ret void
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @zoom_y(i8* %dst, i32 %sizeofPixelOut, i32 %MaxValueOut, i8* %tmp, i32 %skip, i32 %WidthOut, i32 %Stride, i32 %Colors, %struct.CLIST* %contrib, %struct.CONTRIB* %items) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %sizeofPixelOut.addr = alloca i32, align 4
  %MaxValueOut.addr = alloca i32, align 4
  %tmp.addr = alloca i8*, align 8
  %skip.addr = alloca i32, align 4
  %WidthOut.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %Colors.addr = alloca i32, align 4
  %contrib.addr = alloca %struct.CLIST*, align 8
  %items.addr = alloca %struct.CONTRIB*, align 8
  %kn = alloca i32, align 4
  %width = alloca i32, align 4
  %cn = alloca i32, align 4
  %first_pixel = alloca i32, align 4
  %cbp = alloca %struct.CONTRIB*, align 8
  %kc = alloca i32, align 4
  %max_weight = alloca i32, align 4
  %weight = alloca double, align 8
  %pp = alloca i8*, align 8
  %pixel = alloca i32, align 4
  %j = alloca i32, align 4
  %cp = alloca %struct.CONTRIB*, align 8
  %weight50 = alloca double, align 8
  %pp52 = alloca i8*, align 8
  %pixel57 = alloca i32, align 4
  %j59 = alloca i32, align 4
  %cp61 = alloca %struct.CONTRIB*, align 8
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i32 %sizeofPixelOut, i32* %sizeofPixelOut.addr, align 4, !tbaa !14
  store i32 %MaxValueOut, i32* %MaxValueOut.addr, align 4, !tbaa !14
  store i8* %tmp, i8** %tmp.addr, align 8, !tbaa !1
  store i32 %skip, i32* %skip.addr, align 4, !tbaa !14
  store i32 %WidthOut, i32* %WidthOut.addr, align 4, !tbaa !14
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !14
  store i32 %Colors, i32* %Colors.addr, align 4, !tbaa !14
  store %struct.CLIST* %contrib, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  store %struct.CONTRIB* %items, %struct.CONTRIB** %items.addr, align 8, !tbaa !1
  %0 = bitcast i32* %kn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %Stride.addr, align 4, !tbaa !14
  %2 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %kn, align 4, !tbaa !14
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %WidthOut.addr, align 4, !tbaa !14
  %5 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  %mul3 = mul nsw i32 %4, %5
  store i32 %mul3, i32* %width, align 4, !tbaa !14
  %6 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.CLIST*, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.CLIST, %struct.CLIST* %7, i32 0, i32 1
  %8 = load i32, i32* %n, align 4, !tbaa !70
  store i32 %8, i32* %cn, align 4, !tbaa !14
  %9 = bitcast i32* %first_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.CLIST*, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  %first_pixel6 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %10, i32 0, i32 2
  %11 = load i32, i32* %first_pixel6, align 4, !tbaa !69
  store i32 %11, i32* %first_pixel, align 4, !tbaa !14
  %12 = bitcast %struct.CONTRIB** %cbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.CONTRIB*, %struct.CONTRIB** %items.addr, align 8, !tbaa !1
  %14 = load %struct.CLIST*, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.CLIST, %struct.CLIST* %14, i32 0, i32 0
  %15 = load i32, i32* %index, align 4, !tbaa !71
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %13, i64 %idx.ext
  store %struct.CONTRIB* %add.ptr, %struct.CONTRIB** %cbp, align 8, !tbaa !1
  %16 = bitcast i32* %kc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %max_weight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %MaxValueOut.addr, align 4, !tbaa !14
  store i32 %18, i32* %max_weight, align 4, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  %20 = load i32, i32* %skip.addr, align 4, !tbaa !14
  %mul10 = mul nsw i32 %20, %19
  store i32 %mul10, i32* %skip.addr, align 4, !tbaa !14
  %21 = load i32, i32* %skip.addr, align 4, !tbaa !14
  %22 = load i32, i32* %width, align 4, !tbaa !14
  %add = add nsw i32 %22, %21
  store i32 %add, i32* %width, align 4, !tbaa !14
  %23 = load i32, i32* %sizeofPixelOut.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %24 = load i32, i32* %skip.addr, align 4, !tbaa !14
  store i32 %24, i32* %kc, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %if.then
  %25 = load i32, i32* %kc, align 4, !tbaa !14
  %26 = load i32, i32* %width, align 4, !tbaa !14
  %cmp11 = icmp slt i32 %25, %26
  br i1 %cmp11, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %27 = bitcast double* %weight to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  store double 0.000000e+00, double* %weight, align 8, !tbaa !66
  %28 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load i32, i32* %kc, align 4, !tbaa !14
  %30 = load i32, i32* %first_pixel, align 4, !tbaa !14
  %add14 = add nsw i32 %29, %30
  %idxprom = sext i32 %add14 to i64
  %31 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  store i8* %arrayidx, i8** %pp, align 8, !tbaa !1
  %32 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load i32, i32* %cn, align 4, !tbaa !14
  store i32 %34, i32* %j, align 4, !tbaa !14
  %35 = bitcast %struct.CONTRIB** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load %struct.CONTRIB*, %struct.CONTRIB** %cbp, align 8, !tbaa !1
  store %struct.CONTRIB* %36, %struct.CONTRIB** %cp, align 8, !tbaa !1
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %37 = load i32, i32* %j, align 4, !tbaa !14
  %cmp19 = icmp sgt i32 %37, 0
  br i1 %cmp19, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.18
  %38 = load i8*, i8** %pp, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !76
  %conv = zext i8 %39 to i32
  %conv21 = sitofp i32 %conv to double
  %40 = load %struct.CONTRIB*, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %weight22 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %40, i32 0, i32 0
  %41 = load double, double* %weight22, align 8, !tbaa !72
  %mul23 = fmul double %conv21, %41
  %42 = load double, double* %weight, align 8, !tbaa !66
  %add24 = fadd double %42, %mul23
  store double %add24, double* %weight, align 8, !tbaa !66
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %43 = load i32, i32* %kn, align 4, !tbaa !14
  %44 = load i8*, i8** %pp, align 8, !tbaa !1
  %idx.ext25 = sext i32 %43 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %44, i64 %idx.ext25
  store i8* %add.ptr26, i8** %pp, align 8, !tbaa !1
  %45 = load %struct.CONTRIB*, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %45, i32 1
  store %struct.CONTRIB* %incdec.ptr, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %46 = load i32, i32* %j, align 4, !tbaa !14
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %j, align 4, !tbaa !14
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %47 = load double, double* %weight, align 8, !tbaa !66
  %add27 = fadd double %47, 5.000000e-01
  %conv28 = fptosi double %add27 to i32
  store i32 %conv28, i32* %pixel, align 4, !tbaa !14
  br label %do.body.29

do.body.29:                                       ; preds = %for.end
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.body.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %48 = load i32, i32* %pixel, align 4, !tbaa !14
  %cmp32 = icmp slt i32 %48, 0
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.31
  br label %cond.end.38

cond.false:                                       ; preds = %do.end.31
  %49 = load i32, i32* %pixel, align 4, !tbaa !14
  %50 = load i32, i32* %max_weight, align 4, !tbaa !14
  %cmp34 = icmp sgt i32 %49, %50
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.false
  %51 = load i32, i32* %max_weight, align 4, !tbaa !14
  br label %cond.end

cond.false.37:                                    ; preds = %cond.false
  %52 = load i32, i32* %pixel, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false.37, %cond.true.36
  %cond = phi i32 [ %51, %cond.true.36 ], [ %52, %cond.false.37 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end, %cond.true
  %cond39 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv40 = trunc i32 %cond39 to i8
  %53 = load i32, i32* %kc, align 4, !tbaa !14
  %idxprom41 = sext i32 %53 to i64
  %54 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %54, i64 %idxprom41
  store i8 %conv40, i8* %arrayidx42, align 1, !tbaa !76
  %55 = bitcast %struct.CONTRIB** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast double* %weight to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  br label %for.inc.43

for.inc.43:                                       ; preds = %cond.end.38
  %60 = load i32, i32* %kc, align 4, !tbaa !14
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %kc, align 4, !tbaa !14
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %do.end
  %61 = load i32, i32* %skip.addr, align 4, !tbaa !14
  store i32 %61, i32* %kc, align 4, !tbaa !14
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.97, %if.else
  %62 = load i32, i32* %kc, align 4, !tbaa !14
  %63 = load i32, i32* %width, align 4, !tbaa !14
  %cmp46 = icmp slt i32 %62, %63
  br i1 %cmp46, label %for.body.48, label %for.end.99

for.body.48:                                      ; preds = %for.cond.45
  %64 = bitcast double* %weight50 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  store double 0.000000e+00, double* %weight50, align 8, !tbaa !66
  %65 = bitcast i8** %pp52 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  %66 = load i32, i32* %kc, align 4, !tbaa !14
  %67 = load i32, i32* %first_pixel, align 4, !tbaa !14
  %add53 = add nsw i32 %66, %67
  %idxprom54 = sext i32 %add53 to i64
  %68 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %68, i64 %idxprom54
  store i8* %arrayidx55, i8** %pp52, align 8, !tbaa !1
  %69 = bitcast i32* %pixel57 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = bitcast i32* %j59 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #2
  %71 = load i32, i32* %cn, align 4, !tbaa !14
  store i32 %71, i32* %j59, align 4, !tbaa !14
  %72 = bitcast %struct.CONTRIB** %cp61 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #2
  %73 = load %struct.CONTRIB*, %struct.CONTRIB** %cbp, align 8, !tbaa !1
  store %struct.CONTRIB* %73, %struct.CONTRIB** %cp61, align 8, !tbaa !1
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.71, %for.body.48
  %74 = load i32, i32* %j59, align 4, !tbaa !14
  %cmp63 = icmp sgt i32 %74, 0
  br i1 %cmp63, label %for.body.65, label %for.end.76

for.body.65:                                      ; preds = %for.cond.62
  %75 = load i8*, i8** %pp52, align 8, !tbaa !1
  %76 = load i8, i8* %75, align 1, !tbaa !76
  %conv66 = zext i8 %76 to i32
  %conv67 = sitofp i32 %conv66 to double
  %77 = load %struct.CONTRIB*, %struct.CONTRIB** %cp61, align 8, !tbaa !1
  %weight68 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %77, i32 0, i32 0
  %78 = load double, double* %weight68, align 8, !tbaa !72
  %mul69 = fmul double %conv67, %78
  %79 = load double, double* %weight50, align 8, !tbaa !66
  %add70 = fadd double %79, %mul69
  store double %add70, double* %weight50, align 8, !tbaa !66
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.65
  %80 = load i32, i32* %kn, align 4, !tbaa !14
  %81 = load i8*, i8** %pp52, align 8, !tbaa !1
  %idx.ext72 = sext i32 %80 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %81, i64 %idx.ext72
  store i8* %add.ptr73, i8** %pp52, align 8, !tbaa !1
  %82 = load %struct.CONTRIB*, %struct.CONTRIB** %cp61, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %82, i32 1
  store %struct.CONTRIB* %incdec.ptr74, %struct.CONTRIB** %cp61, align 8, !tbaa !1
  %83 = load i32, i32* %j59, align 4, !tbaa !14
  %dec75 = add nsw i32 %83, -1
  store i32 %dec75, i32* %j59, align 4, !tbaa !14
  br label %for.cond.62

for.end.76:                                       ; preds = %for.cond.62
  %84 = load double, double* %weight50, align 8, !tbaa !66
  %add77 = fadd double %84, 5.000000e-01
  %conv78 = fptosi double %add77 to i32
  store i32 %conv78, i32* %pixel57, align 4, !tbaa !14
  br label %do.body.79

do.body.79:                                       ; preds = %for.end.76
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.body.79
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  %85 = load i32, i32* %pixel57, align 4, !tbaa !14
  %cmp82 = icmp slt i32 %85, 0
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %do.end.81
  br label %cond.end.92

cond.false.85:                                    ; preds = %do.end.81
  %86 = load i32, i32* %pixel57, align 4, !tbaa !14
  %87 = load i32, i32* %max_weight, align 4, !tbaa !14
  %cmp86 = icmp sgt i32 %86, %87
  br i1 %cmp86, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.false.85
  %88 = load i32, i32* %max_weight, align 4, !tbaa !14
  br label %cond.end.90

cond.false.89:                                    ; preds = %cond.false.85
  %89 = load i32, i32* %pixel57, align 4, !tbaa !14
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.88
  %cond91 = phi i32 [ %88, %cond.true.88 ], [ %89, %cond.false.89 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.84
  %cond93 = phi i32 [ 0, %cond.true.84 ], [ %cond91, %cond.end.90 ]
  %conv94 = trunc i32 %cond93 to i16
  %90 = load i32, i32* %kc, align 4, !tbaa !14
  %idxprom95 = sext i32 %90 to i64
  %91 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %92 = bitcast i8* %91 to i16*
  %arrayidx96 = getelementptr inbounds i16, i16* %92, i64 %idxprom95
  store i16 %conv94, i16* %arrayidx96, align 2, !tbaa !77
  %93 = bitcast %struct.CONTRIB** %cp61 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i32* %j59 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i32* %pixel57 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i8** %pp52 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast double* %weight50 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  br label %for.inc.97

for.inc.97:                                       ; preds = %cond.end.92
  %98 = load i32, i32* %kc, align 4, !tbaa !14
  %inc98 = add nsw i32 %98, 1
  store i32 %inc98, i32* %kc, align 4, !tbaa !14
  br label %for.cond.45

for.end.99:                                       ; preds = %for.cond.45
  br label %if.end

if.end:                                           ; preds = %for.end.99, %for.end.44
  br label %do.body.100

do.body.100:                                      ; preds = %if.end
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %99 = bitcast i32* %max_weight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast i32* %kc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = bitcast %struct.CONTRIB** %cbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #2
  %102 = bitcast i32* %first_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32* %cn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %kn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zoom_x(i8* %tmp, i8* %src, i32 %sizeofPixelIn, i32 %skip, i32 %tmp_width, i32 %Colors, %struct.CLIST* %contrib, %struct.CONTRIB* %items) #0 {
entry:
  %tmp.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %sizeofPixelIn.addr = alloca i32, align 4
  %skip.addr = alloca i32, align 4
  %tmp_width.addr = alloca i32, align 4
  %Colors.addr = alloca i32, align 4
  %contrib.addr = alloca %struct.CLIST*, align 8
  %items.addr = alloca %struct.CONTRIB*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %tp = alloca i8*, align 8
  %clp = alloca %struct.CLIST*, align 8
  %raster = alloca i8*, align 8
  %weight = alloca double, align 8
  %pixel = alloca i32, align 4
  %j = alloca i32, align 4
  %pp = alloca i8*, align 8
  %cp = alloca %struct.CONTRIB*, align 8
  %raster82 = alloca i16*, align 8
  %weight90 = alloca double, align 8
  %pixel92 = alloca i32, align 4
  %j94 = alloca i32, align 4
  %pp97 = alloca i16*, align 8
  %cp102 = alloca %struct.CONTRIB*, align 8
  store i8* %tmp, i8** %tmp.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %sizeofPixelIn, i32* %sizeofPixelIn.addr, align 4, !tbaa !14
  store i32 %skip, i32* %skip.addr, align 4, !tbaa !14
  store i32 %tmp_width, i32* %tmp_width.addr, align 4, !tbaa !14
  store i32 %Colors, i32* %Colors.addr, align 4, !tbaa !14
  store %struct.CLIST* %contrib, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  store %struct.CONTRIB* %items, %struct.CONTRIB** %items.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %skip.addr, align 4, !tbaa !14
  %3 = load %struct.CLIST*, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.CLIST, %struct.CLIST* %3, i64 %idx.ext
  store %struct.CLIST* %add.ptr, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  %4 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  %5 = load i32, i32* %skip.addr, align 4, !tbaa !14
  %mul = mul nsw i32 %4, %5
  %6 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  %idx.ext3 = sext i32 %mul to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %6, i64 %idx.ext3
  store i8* %add.ptr4, i8** %tmp.addr, align 8, !tbaa !1
  store i32 0, i32* %c, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.180, %entry
  %7 = load i32, i32* %c, align 4, !tbaa !14
  %8 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.182

for.body:                                         ; preds = %for.cond
  %9 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i8*, i8** %tmp.addr, align 8, !tbaa !1
  %11 = load i32, i32* %c, align 4, !tbaa !14
  %idx.ext6 = sext i32 %11 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %10, i64 %idx.ext6
  store i8* %add.ptr7, i8** %tp, align 8, !tbaa !1
  %12 = bitcast %struct.CLIST** %clp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.CLIST*, %struct.CLIST** %contrib.addr, align 8, !tbaa !1
  store %struct.CLIST* %13, %struct.CLIST** %clp, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %sizeofPixelIn.addr, align 4, !tbaa !14
  %cmp9 = icmp eq i32 %14, 1
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %15 = bitcast i8** %raster to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %17 = load i32, i32* %c, align 4, !tbaa !14
  %idx.ext11 = sext i32 %17 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %16, i64 %idx.ext11
  store i8* %add.ptr12, i8** %raster, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.76, %if.then
  %18 = load i32, i32* %i, align 4, !tbaa !14
  %19 = load i32, i32* %tmp_width.addr, align 4, !tbaa !14
  %cmp14 = icmp slt i32 %18, %19
  br i1 %cmp14, label %for.body.15, label %for.end.80

for.body.15:                                      ; preds = %for.cond.13
  %20 = bitcast double* %weight to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  store double 0.000000e+00, double* %weight, align 8, !tbaa !66
  %21 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.CLIST*, %struct.CLIST** %clp, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.CLIST, %struct.CLIST* %23, i32 0, i32 1
  %24 = load i32, i32* %n, align 4, !tbaa !70
  store i32 %24, i32* %j, align 4, !tbaa !14
  %25 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load i8*, i8** %raster, align 8, !tbaa !1
  %27 = load %struct.CLIST*, %struct.CLIST** %clp, align 8, !tbaa !1
  %first_pixel = getelementptr inbounds %struct.CLIST, %struct.CLIST* %27, i32 0, i32 2
  %28 = load i32, i32* %first_pixel, align 4, !tbaa !69
  %idx.ext20 = sext i32 %28 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %26, i64 %idx.ext20
  store i8* %add.ptr21, i8** %pp, align 8, !tbaa !1
  %29 = bitcast %struct.CONTRIB** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load %struct.CONTRIB*, %struct.CONTRIB** %items.addr, align 8, !tbaa !1
  %31 = load %struct.CLIST*, %struct.CLIST** %clp, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.CLIST, %struct.CLIST* %31, i32 0, i32 0
  %32 = load i32, i32* %index, align 4, !tbaa !71
  %idx.ext23 = sext i32 %32 to i64
  %add.ptr24 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %30, i64 %idx.ext23
  store %struct.CONTRIB* %add.ptr24, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %33 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  switch i32 %33, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %for.body.15
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %sw.bb
  %34 = load i32, i32* %j, align 4, !tbaa !14
  %cmp26 = icmp sgt i32 %34, 0
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %35 = load i8*, i8** %pp, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !76
  %conv = zext i8 %36 to i32
  %conv28 = sitofp i32 %conv to double
  %37 = load %struct.CONTRIB*, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %weight29 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %37, i32 0, i32 0
  %38 = load double, double* %weight29, align 8, !tbaa !72
  %mul30 = fmul double %conv28, %38
  %39 = load double, double* %weight, align 8, !tbaa !66
  %add = fadd double %39, %mul30
  store double %add, double* %weight, align 8, !tbaa !66
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %40 = load i8*, i8** %pp, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %add.ptr31, i8** %pp, align 8, !tbaa !1
  %41 = load %struct.CONTRIB*, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %41, i32 1
  store %struct.CONTRIB* %incdec.ptr, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %42 = load i32, i32* %j, align 4, !tbaa !14
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %j, align 4, !tbaa !14
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %sw.epilog

sw.bb.32:                                         ; preds = %for.body.15
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.42, %sw.bb.32
  %43 = load i32, i32* %j, align 4, !tbaa !14
  %cmp34 = icmp sgt i32 %43, 0
  br i1 %cmp34, label %for.body.36, label %for.end.46

for.body.36:                                      ; preds = %for.cond.33
  %44 = load i8*, i8** %pp, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !76
  %conv37 = zext i8 %45 to i32
  %conv38 = sitofp i32 %conv37 to double
  %46 = load %struct.CONTRIB*, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %weight39 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %46, i32 0, i32 0
  %47 = load double, double* %weight39, align 8, !tbaa !72
  %mul40 = fmul double %conv38, %47
  %48 = load double, double* %weight, align 8, !tbaa !66
  %add41 = fadd double %48, %mul40
  store double %add41, double* %weight, align 8, !tbaa !66
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.36
  %49 = load i8*, i8** %pp, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i8, i8* %49, i64 3
  store i8* %add.ptr43, i8** %pp, align 8, !tbaa !1
  %50 = load %struct.CONTRIB*, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %50, i32 1
  store %struct.CONTRIB* %incdec.ptr44, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %51 = load i32, i32* %j, align 4, !tbaa !14
  %dec45 = add nsw i32 %51, -1
  store i32 %dec45, i32* %j, align 4, !tbaa !14
  br label %for.cond.33

for.end.46:                                       ; preds = %for.cond.33
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.15
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.56, %sw.default
  %52 = load i32, i32* %j, align 4, !tbaa !14
  %cmp48 = icmp sgt i32 %52, 0
  br i1 %cmp48, label %for.body.50, label %for.end.61

for.body.50:                                      ; preds = %for.cond.47
  %53 = load i8*, i8** %pp, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !76
  %conv51 = zext i8 %54 to i32
  %conv52 = sitofp i32 %conv51 to double
  %55 = load %struct.CONTRIB*, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %weight53 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %55, i32 0, i32 0
  %56 = load double, double* %weight53, align 8, !tbaa !72
  %mul54 = fmul double %conv52, %56
  %57 = load double, double* %weight, align 8, !tbaa !66
  %add55 = fadd double %57, %mul54
  store double %add55, double* %weight, align 8, !tbaa !66
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.50
  %58 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  %59 = load i8*, i8** %pp, align 8, !tbaa !1
  %idx.ext57 = sext i32 %58 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %59, i64 %idx.ext57
  store i8* %add.ptr58, i8** %pp, align 8, !tbaa !1
  %60 = load %struct.CONTRIB*, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %60, i32 1
  store %struct.CONTRIB* %incdec.ptr59, %struct.CONTRIB** %cp, align 8, !tbaa !1
  %61 = load i32, i32* %j, align 4, !tbaa !14
  %dec60 = add nsw i32 %61, -1
  store i32 %dec60, i32* %j, align 4, !tbaa !14
  br label %for.cond.47

for.end.61:                                       ; preds = %for.cond.47
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.61, %for.end.46, %for.end
  %62 = load double, double* %weight, align 8, !tbaa !66
  %add62 = fadd double %62, 5.000000e-01
  %conv63 = fptosi double %add62 to i32
  store i32 %conv63, i32* %pixel, align 4, !tbaa !14
  br label %do.body.64

do.body.64:                                       ; preds = %sw.epilog
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.body.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  %63 = load i32, i32* %pixel, align 4, !tbaa !14
  %cmp67 = icmp slt i32 %63, 0
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.66
  br label %cond.end.73

cond.false:                                       ; preds = %do.end.66
  %64 = load i32, i32* %pixel, align 4, !tbaa !14
  %cmp69 = icmp sgt i32 %64, 255
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %cond.false
  br label %cond.end

cond.false.72:                                    ; preds = %cond.false
  %65 = load i32, i32* %pixel, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false.72, %cond.true.71
  %cond = phi i32 [ 255, %cond.true.71 ], [ %65, %cond.false.72 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end, %cond.true
  %cond74 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv75 = trunc i32 %cond74 to i8
  %66 = load i8*, i8** %tp, align 8, !tbaa !1
  store i8 %conv75, i8* %66, align 1, !tbaa !76
  %67 = bitcast %struct.CONTRIB** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast double* %weight to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  br label %for.inc.76

for.inc.76:                                       ; preds = %cond.end.73
  %72 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  %73 = load i8*, i8** %tp, align 8, !tbaa !1
  %idx.ext77 = sext i32 %72 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %73, i64 %idx.ext77
  store i8* %add.ptr78, i8** %tp, align 8, !tbaa !1
  %74 = load %struct.CLIST*, %struct.CLIST** %clp, align 8, !tbaa !1
  %incdec.ptr79 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %74, i32 1
  store %struct.CLIST* %incdec.ptr79, %struct.CLIST** %clp, align 8, !tbaa !1
  %75 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond.13

for.end.80:                                       ; preds = %for.cond.13
  %76 = bitcast i8** %raster to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  br label %if.end

if.else:                                          ; preds = %do.end
  %77 = bitcast i16** %raster82 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #2
  %78 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %79 = bitcast i8* %78 to i16*
  %80 = load i32, i32* %c, align 4, !tbaa !14
  %idx.ext83 = sext i32 %80 to i64
  %add.ptr84 = getelementptr inbounds i16, i16* %79, i64 %idx.ext83
  store i16* %add.ptr84, i16** %raster82, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.171, %if.else
  %81 = load i32, i32* %i, align 4, !tbaa !14
  %82 = load i32, i32* %tmp_width.addr, align 4, !tbaa !14
  %cmp86 = icmp slt i32 %81, %82
  br i1 %cmp86, label %for.body.88, label %for.end.176

for.body.88:                                      ; preds = %for.cond.85
  %83 = bitcast double* %weight90 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  store double 0.000000e+00, double* %weight90, align 8, !tbaa !66
  %84 = bitcast i32* %pixel92 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #2
  %85 = bitcast i32* %j94 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #2
  %86 = load %struct.CLIST*, %struct.CLIST** %clp, align 8, !tbaa !1
  %n95 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %86, i32 0, i32 1
  %87 = load i32, i32* %n95, align 4, !tbaa !70
  store i32 %87, i32* %j94, align 4, !tbaa !14
  %88 = bitcast i16** %pp97 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #2
  %89 = load i16*, i16** %raster82, align 8, !tbaa !1
  %90 = load %struct.CLIST*, %struct.CLIST** %clp, align 8, !tbaa !1
  %first_pixel98 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %90, i32 0, i32 2
  %91 = load i32, i32* %first_pixel98, align 4, !tbaa !69
  %idx.ext99 = sext i32 %91 to i64
  %add.ptr100 = getelementptr inbounds i16, i16* %89, i64 %idx.ext99
  store i16* %add.ptr100, i16** %pp97, align 8, !tbaa !1
  %92 = bitcast %struct.CONTRIB** %cp102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #2
  %93 = load %struct.CONTRIB*, %struct.CONTRIB** %items.addr, align 8, !tbaa !1
  %94 = load %struct.CLIST*, %struct.CLIST** %clp, align 8, !tbaa !1
  %index103 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %94, i32 0, i32 0
  %95 = load i32, i32* %index103, align 4, !tbaa !71
  %idx.ext104 = sext i32 %95 to i64
  %add.ptr105 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %93, i64 %idx.ext104
  store %struct.CONTRIB* %add.ptr105, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %96 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  switch i32 %96, label %sw.default.136 [
    i32 1, label %sw.bb.106
    i32 3, label %sw.bb.121
  ]

sw.bb.106:                                        ; preds = %for.body.88
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.116, %sw.bb.106
  %97 = load i32, i32* %j94, align 4, !tbaa !14
  %cmp108 = icmp sgt i32 %97, 0
  br i1 %cmp108, label %for.body.110, label %for.end.120

for.body.110:                                     ; preds = %for.cond.107
  %98 = load i16*, i16** %pp97, align 8, !tbaa !1
  %99 = load i16, i16* %98, align 2, !tbaa !77
  %conv111 = zext i16 %99 to i32
  %conv112 = sitofp i32 %conv111 to double
  %100 = load %struct.CONTRIB*, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %weight113 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %100, i32 0, i32 0
  %101 = load double, double* %weight113, align 8, !tbaa !72
  %mul114 = fmul double %conv112, %101
  %102 = load double, double* %weight90, align 8, !tbaa !66
  %add115 = fadd double %102, %mul114
  store double %add115, double* %weight90, align 8, !tbaa !66
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.110
  %103 = load i16*, i16** %pp97, align 8, !tbaa !1
  %add.ptr117 = getelementptr inbounds i16, i16* %103, i64 1
  store i16* %add.ptr117, i16** %pp97, align 8, !tbaa !1
  %104 = load %struct.CONTRIB*, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %104, i32 1
  store %struct.CONTRIB* %incdec.ptr118, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %105 = load i32, i32* %j94, align 4, !tbaa !14
  %dec119 = add nsw i32 %105, -1
  store i32 %dec119, i32* %j94, align 4, !tbaa !14
  br label %for.cond.107

for.end.120:                                      ; preds = %for.cond.107
  br label %sw.epilog.152

sw.bb.121:                                        ; preds = %for.body.88
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.131, %sw.bb.121
  %106 = load i32, i32* %j94, align 4, !tbaa !14
  %cmp123 = icmp sgt i32 %106, 0
  br i1 %cmp123, label %for.body.125, label %for.end.135

for.body.125:                                     ; preds = %for.cond.122
  %107 = load i16*, i16** %pp97, align 8, !tbaa !1
  %108 = load i16, i16* %107, align 2, !tbaa !77
  %conv126 = zext i16 %108 to i32
  %conv127 = sitofp i32 %conv126 to double
  %109 = load %struct.CONTRIB*, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %weight128 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %109, i32 0, i32 0
  %110 = load double, double* %weight128, align 8, !tbaa !72
  %mul129 = fmul double %conv127, %110
  %111 = load double, double* %weight90, align 8, !tbaa !66
  %add130 = fadd double %111, %mul129
  store double %add130, double* %weight90, align 8, !tbaa !66
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.125
  %112 = load i16*, i16** %pp97, align 8, !tbaa !1
  %add.ptr132 = getelementptr inbounds i16, i16* %112, i64 3
  store i16* %add.ptr132, i16** %pp97, align 8, !tbaa !1
  %113 = load %struct.CONTRIB*, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %113, i32 1
  store %struct.CONTRIB* %incdec.ptr133, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %114 = load i32, i32* %j94, align 4, !tbaa !14
  %dec134 = add nsw i32 %114, -1
  store i32 %dec134, i32* %j94, align 4, !tbaa !14
  br label %for.cond.122

for.end.135:                                      ; preds = %for.cond.122
  br label %sw.epilog.152

sw.default.136:                                   ; preds = %for.body.88
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.146, %sw.default.136
  %115 = load i32, i32* %j94, align 4, !tbaa !14
  %cmp138 = icmp sgt i32 %115, 0
  br i1 %cmp138, label %for.body.140, label %for.end.151

for.body.140:                                     ; preds = %for.cond.137
  %116 = load i16*, i16** %pp97, align 8, !tbaa !1
  %117 = load i16, i16* %116, align 2, !tbaa !77
  %conv141 = zext i16 %117 to i32
  %conv142 = sitofp i32 %conv141 to double
  %118 = load %struct.CONTRIB*, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %weight143 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %118, i32 0, i32 0
  %119 = load double, double* %weight143, align 8, !tbaa !72
  %mul144 = fmul double %conv142, %119
  %120 = load double, double* %weight90, align 8, !tbaa !66
  %add145 = fadd double %120, %mul144
  store double %add145, double* %weight90, align 8, !tbaa !66
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.140
  %121 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  %122 = load i16*, i16** %pp97, align 8, !tbaa !1
  %idx.ext147 = sext i32 %121 to i64
  %add.ptr148 = getelementptr inbounds i16, i16* %122, i64 %idx.ext147
  store i16* %add.ptr148, i16** %pp97, align 8, !tbaa !1
  %123 = load %struct.CONTRIB*, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %incdec.ptr149 = getelementptr inbounds %struct.CONTRIB, %struct.CONTRIB* %123, i32 1
  store %struct.CONTRIB* %incdec.ptr149, %struct.CONTRIB** %cp102, align 8, !tbaa !1
  %124 = load i32, i32* %j94, align 4, !tbaa !14
  %dec150 = add nsw i32 %124, -1
  store i32 %dec150, i32* %j94, align 4, !tbaa !14
  br label %for.cond.137

for.end.151:                                      ; preds = %for.cond.137
  br label %sw.epilog.152

sw.epilog.152:                                    ; preds = %for.end.151, %for.end.135, %for.end.120
  %125 = load double, double* %weight90, align 8, !tbaa !66
  %add153 = fadd double %125, 5.000000e-01
  %conv154 = fptosi double %add153 to i32
  store i32 %conv154, i32* %pixel92, align 4, !tbaa !14
  br label %do.body.155

do.body.155:                                      ; preds = %sw.epilog.152
  br label %do.cond.156

do.cond.156:                                      ; preds = %do.body.155
  br label %do.end.157

do.end.157:                                       ; preds = %do.cond.156
  %126 = load i32, i32* %pixel92, align 4, !tbaa !14
  %cmp158 = icmp slt i32 %126, 0
  br i1 %cmp158, label %cond.true.160, label %cond.false.161

cond.true.160:                                    ; preds = %do.end.157
  br label %cond.end.168

cond.false.161:                                   ; preds = %do.end.157
  %127 = load i32, i32* %pixel92, align 4, !tbaa !14
  %cmp162 = icmp sgt i32 %127, 255
  br i1 %cmp162, label %cond.true.164, label %cond.false.165

cond.true.164:                                    ; preds = %cond.false.161
  br label %cond.end.166

cond.false.165:                                   ; preds = %cond.false.161
  %128 = load i32, i32* %pixel92, align 4, !tbaa !14
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.165, %cond.true.164
  %cond167 = phi i32 [ 255, %cond.true.164 ], [ %128, %cond.false.165 ]
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.end.166, %cond.true.160
  %cond169 = phi i32 [ 0, %cond.true.160 ], [ %cond167, %cond.end.166 ]
  %conv170 = trunc i32 %cond169 to i8
  %129 = load i8*, i8** %tp, align 8, !tbaa !1
  store i8 %conv170, i8* %129, align 1, !tbaa !76
  %130 = bitcast %struct.CONTRIB** %cp102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #2
  %131 = bitcast i16** %pp97 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #2
  %132 = bitcast i32* %j94 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast i32* %pixel92 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast double* %weight90 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  br label %for.inc.171

for.inc.171:                                      ; preds = %cond.end.168
  %135 = load i32, i32* %Colors.addr, align 4, !tbaa !14
  %136 = load i8*, i8** %tp, align 8, !tbaa !1
  %idx.ext172 = sext i32 %135 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %136, i64 %idx.ext172
  store i8* %add.ptr173, i8** %tp, align 8, !tbaa !1
  %137 = load %struct.CLIST*, %struct.CLIST** %clp, align 8, !tbaa !1
  %incdec.ptr174 = getelementptr inbounds %struct.CLIST, %struct.CLIST* %137, i32 1
  store %struct.CLIST* %incdec.ptr174, %struct.CLIST** %clp, align 8, !tbaa !1
  %138 = load i32, i32* %i, align 4, !tbaa !14
  %inc175 = add nsw i32 %138, 1
  store i32 %inc175, i32* %i, align 4, !tbaa !14
  br label %for.cond.85

for.end.176:                                      ; preds = %for.cond.85
  %139 = bitcast i16** %raster82 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  br label %if.end

if.end:                                           ; preds = %for.end.176, %for.end.80
  br label %do.body.177

do.body.177:                                      ; preds = %if.end
  br label %do.cond.178

do.cond.178:                                      ; preds = %do.body.177
  br label %do.end.179

do.end.179:                                       ; preds = %do.cond.178
  %140 = bitcast %struct.CLIST** %clp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  br label %for.inc.180

for.inc.180:                                      ; preds = %do.end.179
  %142 = load i32, i32* %c, align 4, !tbaa !14
  %inc181 = add nsw i32 %142, 1
  store i32 %inc181, i32* %c, align 4, !tbaa !14
  br label %for.cond

for.end.182:                                      ; preds = %for.cond
  %143 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 180}
!6 = !{!"stream_IScale_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !8, i64 108, !7, i64 208, !7, i64 212, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !9, i64 284, !7, i64 296, !7, i64 300, !7, i64 304, !2, i64 312, !10, i64 320, !2, i64 328}
!7 = !{!"int", !3, i64 0}
!8 = !{!"stream_image_scale_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!9 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!10 = !{!"double", !3, i64 0}
!11 = !{!6, !7, i64 172}
!12 = !{!6, !7, i64 184}
!13 = !{!6, !7, i64 176}
!14 = !{!7, !7, i64 0}
!15 = !{!6, !7, i64 256}
!16 = !{!6, !7, i64 200}
!17 = !{!6, !7, i64 120}
!18 = !{!6, !7, i64 204}
!19 = !{!6, !7, i64 296}
!20 = !{!21, !2, i64 16}
!21 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!21, !2, i64 8}
!23 = !{!6, !7, i64 268}
!24 = !{!6, !7, i64 160}
!25 = !{!6, !7, i64 276}
!26 = !{!6, !7, i64 280}
!27 = !{!6, !2, i64 224}
!28 = !{!6, !7, i64 212}
!29 = !{!6, !7, i64 144}
!30 = !{!6, !2, i64 232}
!31 = !{!6, !7, i64 196}
!32 = !{!6, !7, i64 124}
!33 = !{!6, !7, i64 156}
!34 = !{!6, !7, i64 112}
!35 = !{!6, !2, i64 328}
!36 = !{!37, !2, i64 8}
!37 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!38 = !{!37, !2, i64 0}
!39 = !{!6, !7, i64 264}
!40 = !{!6, !7, i64 260}
!41 = !{!6, !7, i64 152}
!42 = !{!6, !2, i64 216}
!43 = !{!6, !7, i64 304}
!44 = !{!6, !7, i64 208}
!45 = !{!6, !2, i64 240}
!46 = !{!6, !2, i64 248}
!47 = !{!6, !2, i64 8}
!48 = !{!49, !2, i64 24}
!49 = !{!"gs_memory_s", !2, i64 0, !50, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!50 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!51 = !{!6, !7, i64 132}
!52 = !{!6, !7, i64 140}
!53 = !{!6, !7, i64 148}
!54 = !{!6, !7, i64 168}
!55 = !{!6, !7, i64 272}
!56 = !{!57, !2, i64 16}
!57 = !{!"filter_defn_s", !2, i64 0, !7, i64 8, !2, i64 16, !10, i64 24}
!58 = !{!57, !7, i64 8}
!59 = !{!6, !7, i64 300}
!60 = !{!57, !2, i64 0}
!61 = !{!6, !2, i64 312}
!62 = !{!57, !10, i64 24}
!63 = !{!6, !10, i64 320}
!64 = !{!49, !2, i64 88}
!65 = !{!6, !7, i64 136}
!66 = !{!10, !10, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"long", !3, i64 0}
!69 = !{!9, !7, i64 8}
!70 = !{!9, !7, i64 4}
!71 = !{!9, !7, i64 0}
!72 = !{!73, !10, i64 0}
!73 = !{!"", !10, i64 0}
!74 = !{!6, !7, i64 292}
!75 = !{!6, !7, i64 288}
!76 = !{!3, !3, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"short", !3, i64 0}
