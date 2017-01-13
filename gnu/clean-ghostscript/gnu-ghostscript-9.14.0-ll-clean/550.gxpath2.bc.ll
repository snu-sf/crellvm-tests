; ModuleID = './gxpath2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_path_enum_s = type { %struct.gs_memory_s*, %struct.gs_matrix_s, %struct.segment_s*, %struct.gx_path_s*, %struct.gx_path_s*, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }

@.str = private unnamed_addr constant [13 x i8] c"gs_path_enum\00", align 1
@path_enum_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @path_enum_enum_ptrs, i32 0, i32 0) }, align 8
@st_path_enum = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @path_enum_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"./base/gxpath2.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"bad type %x in gx_path_enum_next!\0A\00", align 1
@path_enum_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 32 }, %struct.gc_ptr_element_s { i16 0, i16 40 }, %struct.gc_ptr_element_s { i16 0, i16 48 }], align 2

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gx_path_current_point(%struct.gx_path_s* %ppath, %struct.gs_fixed_point_s* %ppt) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 8
  %1 = load i8, i8* %state_flags, align 1, !tbaa !5
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 14
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %3 = load i32, i32* %x, align 4, !tbaa !14
  %4 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i32 0, i32 0
  store i32 %3, i32* %x2, align 4, !tbaa !15
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 14
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position3, i32 0, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !16
  %7 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %7, i32 0, i32 1
  store i32 %6, i32* %y4, align 4, !tbaa !17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_subpath_start_point(%struct.gx_path_s* %ppath, %struct.gs_fixed_point_s* %ppt) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %psub = alloca %struct.subpath_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %3 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !19
  store %struct.subpath_s* %3, %struct.subpath_s** %psub, align 8, !tbaa !1
  %4 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %tobool = icmp ne %struct.subpath_s* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8, !tbaa !1
  %6 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %6, i32 0, i32 4
  %7 = bitcast %struct.gs_fixed_point_s* %5 to i8*
  %8 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 4, i1 false), !tbaa.struct !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gx_path_bbox(%struct.gx_path_s* %ppath, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %code = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %qx = alloca i32, align 4
  %qy = alloca i32, align 4
  %pseg = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_accurate = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 10
  %1 = load i8, i8* %bbox_accurate, align 1, !tbaa !22
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 5
  %4 = bitcast %struct.gs_fixed_rect_s* %2 to i8*
  %5 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 4, i1 false), !tbaa.struct !23
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 3
  %7 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %7, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %8 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !24
  %cmp = icmp eq %struct.subpath_s* %8, null
  br i1 %cmp, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.end
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %11 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %11, i32 0, i32 0
  %call = call i32 @gx_path_current_point(%struct.gx_path_s* %10, %struct.gs_fixed_point_s* %p) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %12 = load i32, i32* %code, align 4, !tbaa !21
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.then.1
  %13 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %13, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p4, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !25
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p5, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !26
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.then.1
  %15 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %15, i32 0, i32 1
  %16 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %16, i32 0, i32 0
  %17 = bitcast %struct.gs_fixed_point_s* %q to i8*
  %18 = bitcast %struct.gs_fixed_point_s* %p7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 4, i1 false), !tbaa.struct !20
  %19 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %19, i32* %retval
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  br label %return

if.end.8:                                         ; preds = %if.end
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %box_last = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 6
  %22 = load %struct.segment_s*, %struct.segment_s** %box_last, align 8, !tbaa !27
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 3
  %24 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments9, align 8, !tbaa !18
  %contents10 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %24, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents10, i32 0, i32 1
  %25 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !19
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %25, i32 0, i32 5
  %26 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !28
  %cmp11 = icmp eq %struct.segment_s* %22, %26
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.8
  %27 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %28, i32 0, i32 5
  %29 = bitcast %struct.gs_fixed_rect_s* %27 to i8*
  %30 = bitcast %struct.gs_fixed_rect_s* %bbox13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 4, i1 false), !tbaa.struct !23
  br label %if.end.164

if.else:                                          ; preds = %if.end.8
  %31 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast i32* %qx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = bitcast i32* %qy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %box_last14 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %36, i32 0, i32 6
  %37 = load %struct.segment_s*, %struct.segment_s** %box_last14, align 8, !tbaa !27
  store %struct.segment_s* %37, %struct.segment_s** %pseg, align 8, !tbaa !1
  %38 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.segment_s* %38, null
  br i1 %cmp15, label %if.then.16, label %if.else.23

if.then.16:                                       ; preds = %if.else
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %39, i32 0, i32 3
  %40 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments17, align 8, !tbaa !18
  %contents18 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %40, i32 0, i32 1
  %subpath_first19 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents18, i32 0, i32 0
  %41 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first19, align 8, !tbaa !24
  %42 = bitcast %struct.subpath_s* %41 to %struct.segment_s*
  store %struct.segment_s* %42, %struct.segment_s** %pseg, align 8, !tbaa !1
  %43 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %43, i32 0, i32 4
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %44 = load i32, i32* %x20, align 4, !tbaa !32
  store i32 %44, i32* %qx, align 4, !tbaa !21
  store i32 %44, i32* %px, align 4, !tbaa !21
  %45 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt21 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %45, i32 0, i32 4
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt21, i32 0, i32 1
  %46 = load i32, i32* %y22, align 4, !tbaa !34
  store i32 %46, i32* %qy, align 4, !tbaa !21
  store i32 %46, i32* %py, align 4, !tbaa !21
  br label %if.end.36

if.else.23:                                       ; preds = %if.else
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox24 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %47, i32 0, i32 5
  %p25 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox24, i32 0, i32 0
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p25, i32 0, i32 0
  %48 = load i32, i32* %x26, align 4, !tbaa !35
  store i32 %48, i32* %px, align 4, !tbaa !21
  %49 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %49, i32 0, i32 5
  %p28 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox27, i32 0, i32 0
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p28, i32 0, i32 1
  %50 = load i32, i32* %y29, align 4, !tbaa !36
  store i32 %50, i32* %py, align 4, !tbaa !21
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox30 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %51, i32 0, i32 5
  %q31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox30, i32 0, i32 1
  %x32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q31, i32 0, i32 0
  %52 = load i32, i32* %x32, align 4, !tbaa !37
  store i32 %52, i32* %qx, align 4, !tbaa !21
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox33 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %53, i32 0, i32 5
  %q34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox33, i32 0, i32 1
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q34, i32 0, i32 1
  %54 = load i32, i32* %y35, align 4, !tbaa !38
  store i32 %54, i32* %qy, align 4, !tbaa !21
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.23, %if.then.16
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.36
  %55 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %55, i32 0, i32 1
  %56 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !39
  store %struct.segment_s* %56, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp37 = icmp ne %struct.segment_s* %56, null
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %57 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %57, i32 0, i32 2
  %58 = load i16, i16* %type, align 2, !tbaa !40
  %conv = zext i16 %58 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %59 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %60 = bitcast %struct.segment_s* %59 to %struct.curve_segment*
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %60, i32 0, i32 5
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %61 = load i32, i32* %x38, align 4, !tbaa !41
  %62 = load i32, i32* %px, align 4, !tbaa !21
  %cmp39 = icmp slt i32 %61, %62
  br i1 %cmp39, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %sw.bb
  %63 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %64 = bitcast %struct.segment_s* %63 to %struct.curve_segment*
  %p142 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %64, i32 0, i32 5
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p142, i32 0, i32 0
  %65 = load i32, i32* %x43, align 4, !tbaa !41
  store i32 %65, i32* %px, align 4, !tbaa !21
  br label %if.end.53

if.else.44:                                       ; preds = %sw.bb
  %66 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %67 = bitcast %struct.segment_s* %66 to %struct.curve_segment*
  %p145 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %67, i32 0, i32 5
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p145, i32 0, i32 0
  %68 = load i32, i32* %x46, align 4, !tbaa !41
  %69 = load i32, i32* %qx, align 4, !tbaa !21
  %cmp47 = icmp sgt i32 %68, %69
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.else.44
  %70 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %71 = bitcast %struct.segment_s* %70 to %struct.curve_segment*
  %p150 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %71, i32 0, i32 5
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p150, i32 0, i32 0
  %72 = load i32, i32* %x51, align 4, !tbaa !41
  store i32 %72, i32* %qx, align 4, !tbaa !21
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.else.44
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.41
  %73 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %74 = bitcast %struct.segment_s* %73 to %struct.curve_segment*
  %p154 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %74, i32 0, i32 5
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p154, i32 0, i32 1
  %75 = load i32, i32* %y55, align 4, !tbaa !43
  %76 = load i32, i32* %py, align 4, !tbaa !21
  %cmp56 = icmp slt i32 %75, %76
  br i1 %cmp56, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %if.end.53
  %77 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %78 = bitcast %struct.segment_s* %77 to %struct.curve_segment*
  %p159 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %78, i32 0, i32 5
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p159, i32 0, i32 1
  %79 = load i32, i32* %y60, align 4, !tbaa !43
  store i32 %79, i32* %py, align 4, !tbaa !21
  br label %if.end.70

if.else.61:                                       ; preds = %if.end.53
  %80 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %81 = bitcast %struct.segment_s* %80 to %struct.curve_segment*
  %p162 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %81, i32 0, i32 5
  %y63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p162, i32 0, i32 1
  %82 = load i32, i32* %y63, align 4, !tbaa !43
  %83 = load i32, i32* %qy, align 4, !tbaa !21
  %cmp64 = icmp sgt i32 %82, %83
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.else.61
  %84 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %85 = bitcast %struct.segment_s* %84 to %struct.curve_segment*
  %p167 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %85, i32 0, i32 5
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p167, i32 0, i32 1
  %86 = load i32, i32* %y68, align 4, !tbaa !43
  store i32 %86, i32* %qy, align 4, !tbaa !21
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.else.61
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %87 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %88 = bitcast %struct.segment_s* %87 to %struct.curve_segment*
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %88, i32 0, i32 6
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %89 = load i32, i32* %x71, align 4, !tbaa !44
  %90 = load i32, i32* %px, align 4, !tbaa !21
  %cmp72 = icmp slt i32 %89, %90
  br i1 %cmp72, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %if.end.70
  %91 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %92 = bitcast %struct.segment_s* %91 to %struct.curve_segment*
  %p275 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %92, i32 0, i32 6
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p275, i32 0, i32 0
  %93 = load i32, i32* %x76, align 4, !tbaa !44
  store i32 %93, i32* %px, align 4, !tbaa !21
  br label %if.end.86

if.else.77:                                       ; preds = %if.end.70
  %94 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %95 = bitcast %struct.segment_s* %94 to %struct.curve_segment*
  %p278 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %95, i32 0, i32 6
  %x79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p278, i32 0, i32 0
  %96 = load i32, i32* %x79, align 4, !tbaa !44
  %97 = load i32, i32* %qx, align 4, !tbaa !21
  %cmp80 = icmp sgt i32 %96, %97
  br i1 %cmp80, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %if.else.77
  %98 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %99 = bitcast %struct.segment_s* %98 to %struct.curve_segment*
  %p283 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %99, i32 0, i32 6
  %x84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p283, i32 0, i32 0
  %100 = load i32, i32* %x84, align 4, !tbaa !44
  store i32 %100, i32* %qx, align 4, !tbaa !21
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %if.else.77
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.74
  %101 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %102 = bitcast %struct.segment_s* %101 to %struct.curve_segment*
  %p287 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %102, i32 0, i32 6
  %y88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p287, i32 0, i32 1
  %103 = load i32, i32* %y88, align 4, !tbaa !45
  %104 = load i32, i32* %py, align 4, !tbaa !21
  %cmp89 = icmp slt i32 %103, %104
  br i1 %cmp89, label %if.then.91, label %if.else.94

if.then.91:                                       ; preds = %if.end.86
  %105 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %106 = bitcast %struct.segment_s* %105 to %struct.curve_segment*
  %p292 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %106, i32 0, i32 6
  %y93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p292, i32 0, i32 1
  %107 = load i32, i32* %y93, align 4, !tbaa !45
  store i32 %107, i32* %py, align 4, !tbaa !21
  br label %if.end.103

if.else.94:                                       ; preds = %if.end.86
  %108 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %109 = bitcast %struct.segment_s* %108 to %struct.curve_segment*
  %p295 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %109, i32 0, i32 6
  %y96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p295, i32 0, i32 1
  %110 = load i32, i32* %y96, align 4, !tbaa !45
  %111 = load i32, i32* %qy, align 4, !tbaa !21
  %cmp97 = icmp sgt i32 %110, %111
  br i1 %cmp97, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %if.else.94
  %112 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %113 = bitcast %struct.segment_s* %112 to %struct.curve_segment*
  %p2100 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %113, i32 0, i32 6
  %y101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2100, i32 0, i32 1
  %114 = load i32, i32* %y101, align 4, !tbaa !45
  store i32 %114, i32* %qy, align 4, !tbaa !21
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %if.else.94
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.91
  br label %sw.default

sw.default:                                       ; preds = %while.body, %if.end.103
  %115 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt104 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %115, i32 0, i32 4
  %x105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt104, i32 0, i32 0
  %116 = load i32, i32* %x105, align 4, !tbaa !32
  %117 = load i32, i32* %px, align 4, !tbaa !21
  %cmp106 = icmp slt i32 %116, %117
  br i1 %cmp106, label %if.then.108, label %if.else.111

if.then.108:                                      ; preds = %sw.default
  %118 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt109 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %118, i32 0, i32 4
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt109, i32 0, i32 0
  %119 = load i32, i32* %x110, align 4, !tbaa !32
  store i32 %119, i32* %px, align 4, !tbaa !21
  br label %if.end.120

if.else.111:                                      ; preds = %sw.default
  %120 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt112 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %120, i32 0, i32 4
  %x113 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt112, i32 0, i32 0
  %121 = load i32, i32* %x113, align 4, !tbaa !32
  %122 = load i32, i32* %qx, align 4, !tbaa !21
  %cmp114 = icmp sgt i32 %121, %122
  br i1 %cmp114, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %if.else.111
  %123 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt117 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %123, i32 0, i32 4
  %x118 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt117, i32 0, i32 0
  %124 = load i32, i32* %x118, align 4, !tbaa !32
  store i32 %124, i32* %qx, align 4, !tbaa !21
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %if.else.111
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.108
  %125 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt121 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %125, i32 0, i32 4
  %y122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt121, i32 0, i32 1
  %126 = load i32, i32* %y122, align 4, !tbaa !34
  %127 = load i32, i32* %py, align 4, !tbaa !21
  %cmp123 = icmp slt i32 %126, %127
  br i1 %cmp123, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %if.end.120
  %128 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt126 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %128, i32 0, i32 4
  %y127 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt126, i32 0, i32 1
  %129 = load i32, i32* %y127, align 4, !tbaa !34
  store i32 %129, i32* %py, align 4, !tbaa !21
  br label %if.end.137

if.else.128:                                      ; preds = %if.end.120
  %130 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt129 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %130, i32 0, i32 4
  %y130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt129, i32 0, i32 1
  %131 = load i32, i32* %y130, align 4, !tbaa !34
  %132 = load i32, i32* %qy, align 4, !tbaa !21
  %cmp131 = icmp sgt i32 %131, %132
  br i1 %cmp131, label %if.then.133, label %if.end.136

if.then.133:                                      ; preds = %if.else.128
  %133 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt134 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %133, i32 0, i32 4
  %y135 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt134, i32 0, i32 1
  %134 = load i32, i32* %y135, align 4, !tbaa !34
  store i32 %134, i32* %qy, align 4, !tbaa !21
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.133, %if.else.128
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.125
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.137
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %135 = load i32, i32* %px, align 4, !tbaa !21
  %136 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p138 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %136, i32 0, i32 0
  %x139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p138, i32 0, i32 0
  store i32 %135, i32* %x139, align 4, !tbaa !26
  %137 = load i32, i32* %py, align 4, !tbaa !21
  %138 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p140 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %138, i32 0, i32 0
  %y141 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p140, i32 0, i32 1
  store i32 %137, i32* %y141, align 4, !tbaa !25
  %139 = load i32, i32* %qx, align 4, !tbaa !21
  %140 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q142 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %140, i32 0, i32 1
  %x143 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q142, i32 0, i32 0
  store i32 %139, i32* %x143, align 4, !tbaa !46
  %141 = load i32, i32* %qy, align 4, !tbaa !21
  %142 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q144 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %142, i32 0, i32 1
  %y145 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q144, i32 0, i32 1
  store i32 %141, i32* %y145, align 4, !tbaa !47
  %143 = load i32, i32* %px, align 4, !tbaa !21
  %144 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox146 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %144, i32 0, i32 5
  %p147 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox146, i32 0, i32 0
  %x148 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p147, i32 0, i32 0
  store i32 %143, i32* %x148, align 4, !tbaa !35
  %145 = load i32, i32* %py, align 4, !tbaa !21
  %146 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox149 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %146, i32 0, i32 5
  %p151 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox149, i32 0, i32 0
  %y152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p151, i32 0, i32 1
  store i32 %145, i32* %y152, align 4, !tbaa !36
  %147 = load i32, i32* %qx, align 4, !tbaa !21
  %148 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox153 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %148, i32 0, i32 5
  %q154 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox153, i32 0, i32 1
  %x155 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q154, i32 0, i32 0
  store i32 %147, i32* %x155, align 4, !tbaa !37
  %149 = load i32, i32* %qy, align 4, !tbaa !21
  %150 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox156 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %150, i32 0, i32 5
  %q157 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox156, i32 0, i32 1
  %y158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q157, i32 0, i32 1
  store i32 %149, i32* %y158, align 4, !tbaa !38
  %151 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments159 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %151, i32 0, i32 3
  %152 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments159, align 8, !tbaa !18
  %contents160 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %152, i32 0, i32 1
  %subpath_current161 = getelementptr inbounds %struct.psc_, %struct.psc_* %contents160, i32 0, i32 1
  %153 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current161, align 8, !tbaa !19
  %last162 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %153, i32 0, i32 5
  %154 = load %struct.segment_s*, %struct.segment_s** %last162, align 8, !tbaa !28
  %155 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %box_last163 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %155, i32 0, i32 6
  store %struct.segment_s* %154, %struct.segment_s** %box_last163, align 8, !tbaa !27
  %156 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %157 = bitcast i32* %qy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %qx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  br label %if.end.164

if.end.164:                                       ; preds = %while.end, %if.then.12
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.164, %if.end.6, %if.then
  %161 = load i32, i32* %retval
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_bbox_set(%struct.gx_path_s* %ppath, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox_set = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 9
  %1 = load i8, i8* %bbox_set, align 1, !tbaa !48
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 5
  %4 = bitcast %struct.gs_fixed_rect_s* %2 to i8*
  %5 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 4, i1 false), !tbaa.struct !23
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %7 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_bbox(%struct.gx_path_s* %6, %struct.gs_fixed_rect_s* %7) #3
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_has_curves(%struct.gx_path_s* %ppath) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 13
  %1 = load i32, i32* %curve_count, align 4, !tbaa !49
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_is_void(%struct.gx_path_s* %ppath) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 3
  %1 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %cmp = icmp ne %struct.gx_path_segments_s* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 3
  %3 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %3, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %4 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !24
  %cmp2 = icmp eq %struct.subpath_s* %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_is_null(%struct.gx_path_s* %ppath) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 3
  %1 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %cmp = icmp ne %struct.gx_path_segments_s* %1, null
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 3
  %3 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments1, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %3, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %4 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !24
  %cmp2 = icmp eq %struct.subpath_s* %4, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 8
  %6 = load i8, i8* %state_flags, align 1, !tbaa !5
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 1
  %cmp3 = icmp ne i32 %and, 0
  %lnot = xor i1 %cmp3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @gx_subpath_is_rectangular(%struct.subpath_s* %pseg0, %struct.gs_fixed_rect_s* %pbox, %struct.subpath_s** %ppnext) #1 {
entry:
  %retval = alloca i32, align 4
  %pseg0.addr = alloca %struct.subpath_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %ppnext.addr = alloca %struct.subpath_s**, align 8
  %pseg1 = alloca %struct.segment_s*, align 8
  %pseg2 = alloca %struct.segment_s*, align 8
  %pseg3 = alloca %struct.segment_s*, align 8
  %pseg4 = alloca %struct.segment_s*, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct.subpath_s* %pseg0, %struct.subpath_s** %pseg0.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  store %struct.subpath_s** %ppnext, %struct.subpath_s*** %ppnext.addr, align 8, !tbaa !1
  %0 = bitcast %struct.segment_s** %pseg1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.segment_s** %pseg2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.segment_s** %pseg3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.segment_s** %pseg4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.subpath_s*, %struct.subpath_s** %pseg0.addr, align 8, !tbaa !1
  %curve_count = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %5, i32 0, i32 6
  %6 = load i32, i32* %curve_count, align 4, !tbaa !50
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.148

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.subpath_s*, %struct.subpath_s** %pseg0.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %7, i32 0, i32 1
  %8 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !51
  store %struct.segment_s* %8, %struct.segment_s** %pseg1, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.segment_s* %8, null
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.148

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %9 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %9, i32 0, i32 1
  %10 = load %struct.segment_s*, %struct.segment_s** %next3, align 8, !tbaa !39
  store %struct.segment_s* %10, %struct.segment_s** %pseg2, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.segment_s* %10, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.148

land.lhs.true.5:                                  ; preds = %land.lhs.true.2
  %11 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !1
  %next6 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %11, i32 0, i32 1
  %12 = load %struct.segment_s*, %struct.segment_s** %next6, align 8, !tbaa !39
  store %struct.segment_s* %12, %struct.segment_s** %pseg3, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.segment_s* %12, null
  br i1 %cmp7, label %if.then, label %if.end.148

if.then:                                          ; preds = %land.lhs.true.5
  %13 = load %struct.segment_s*, %struct.segment_s** %pseg3, align 8, !tbaa !1
  %next8 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %13, i32 0, i32 1
  %14 = load %struct.segment_s*, %struct.segment_s** %next8, align 8, !tbaa !39
  store %struct.segment_s* %14, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.segment_s* %14, null
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %type10 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %15, i32 0, i32 2
  %16 = load i16, i16* %type10, align 2, !tbaa !40
  %conv = zext i16 %16 to i32
  %cmp11 = icmp eq i32 %conv, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %type, align 4, !tbaa !52
  br label %if.end.64

if.else:                                          ; preds = %lor.lhs.false
  %17 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %type14 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %17, i32 0, i32 2
  %18 = load i16, i16* %type14, align 2, !tbaa !40
  %conv15 = zext i16 %18 to i32
  %cmp16 = icmp ne i32 %conv15, 1
  br i1 %cmp16, label %land.lhs.true.18, label %if.else.24

land.lhs.true.18:                                 ; preds = %if.else
  %19 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %type19 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %19, i32 0, i32 2
  %20 = load i16, i16* %type19, align 2, !tbaa !40
  %conv20 = zext i16 %20 to i32
  %cmp21 = icmp ne i32 %conv20, 5
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.18
  store i32 3, i32* %type, align 4, !tbaa !52
  br label %if.end.63

if.else.24:                                       ; preds = %land.lhs.true.18, %if.else
  %21 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %21, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %22 = load i32, i32* %x, align 4, !tbaa !32
  %23 = load %struct.subpath_s*, %struct.subpath_s** %pseg0.addr, align 8, !tbaa !1
  %pt25 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %23, i32 0, i32 4
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt25, i32 0, i32 0
  %24 = load i32, i32* %x26, align 4, !tbaa !53
  %cmp27 = icmp ne i32 %22, %24
  br i1 %cmp27, label %if.then.35, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.else.24
  %25 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %pt30 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %25, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt30, i32 0, i32 1
  %26 = load i32, i32* %y, align 4, !tbaa !34
  %27 = load %struct.subpath_s*, %struct.subpath_s** %pseg0.addr, align 8, !tbaa !1
  %pt31 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %27, i32 0, i32 4
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt31, i32 0, i32 1
  %28 = load i32, i32* %y32, align 4, !tbaa !54
  %cmp33 = icmp ne i32 %26, %28
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %lor.lhs.false.29, %if.else.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.else.36:                                       ; preds = %lor.lhs.false.29
  %29 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %next37 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %29, i32 0, i32 1
  %30 = load %struct.segment_s*, %struct.segment_s** %next37, align 8, !tbaa !39
  %cmp38 = icmp eq %struct.segment_s* %30, null
  br i1 %cmp38, label %if.then.46, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.else.36
  %31 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %next41 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i32 0, i32 1
  %32 = load %struct.segment_s*, %struct.segment_s** %next41, align 8, !tbaa !39
  %type42 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %32, i32 0, i32 2
  %33 = load i16, i16* %type42, align 2, !tbaa !40
  %conv43 = zext i16 %33 to i32
  %cmp44 = icmp eq i32 %conv43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %lor.lhs.false.40, %if.else.36
  store i32 2, i32* %type, align 4, !tbaa !52
  br label %if.end.61

if.else.47:                                       ; preds = %lor.lhs.false.40
  %34 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %next48 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %34, i32 0, i32 1
  %35 = load %struct.segment_s*, %struct.segment_s** %next48, align 8, !tbaa !39
  %type49 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %35, i32 0, i32 2
  %36 = load i16, i16* %type49, align 2, !tbaa !40
  %conv50 = zext i16 %36 to i32
  %cmp51 = icmp ne i32 %conv50, 1
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.60

land.lhs.true.53:                                 ; preds = %if.else.47
  %37 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %next54 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i32 0, i32 1
  %38 = load %struct.segment_s*, %struct.segment_s** %next54, align 8, !tbaa !39
  %type55 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %38, i32 0, i32 2
  %39 = load i16, i16* %type55, align 2, !tbaa !40
  %conv56 = zext i16 %39 to i32
  %cmp57 = icmp ne i32 %conv56, 5
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.53
  store i32 3, i32* %type, align 4, !tbaa !52
  br label %if.end

if.else.60:                                       ; preds = %land.lhs.true.53, %if.else.47
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

if.end:                                           ; preds = %if.then.59
  br label %if.end.61

if.end.61:                                        ; preds = %if.end, %if.then.46
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.23
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.13
  %40 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = load %struct.subpath_s*, %struct.subpath_s** %pseg0.addr, align 8, !tbaa !1
  %pt65 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %41, i32 0, i32 4
  %x66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt65, i32 0, i32 0
  %42 = load i32, i32* %x66, align 4, !tbaa !53
  store i32 %42, i32* %x0, align 4, !tbaa !21
  %43 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load %struct.subpath_s*, %struct.subpath_s** %pseg0.addr, align 8, !tbaa !1
  %pt67 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %44, i32 0, i32 4
  %y68 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt67, i32 0, i32 1
  %45 = load i32, i32* %y68, align 4, !tbaa !54
  store i32 %45, i32* %y0, align 4, !tbaa !21
  %46 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !1
  %pt69 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %47, i32 0, i32 4
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt69, i32 0, i32 0
  %48 = load i32, i32* %x70, align 4, !tbaa !32
  store i32 %48, i32* %x2, align 4, !tbaa !21
  %49 = bitcast i32* %y2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8, !tbaa !1
  %pt71 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %50, i32 0, i32 4
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt71, i32 0, i32 1
  %51 = load i32, i32* %y72, align 4, !tbaa !34
  store i32 %51, i32* %y2, align 4, !tbaa !21
  %52 = load i32, i32* %x0, align 4, !tbaa !21
  %53 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !1
  %pt73 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %53, i32 0, i32 4
  %x74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt73, i32 0, i32 0
  %54 = load i32, i32* %x74, align 4, !tbaa !32
  %cmp75 = icmp eq i32 %52, %54
  br i1 %cmp75, label %land.lhs.true.77, label %lor.lhs.false.92

land.lhs.true.77:                                 ; preds = %if.end.64
  %55 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !1
  %pt78 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %55, i32 0, i32 4
  %y79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt78, i32 0, i32 1
  %56 = load i32, i32* %y79, align 4, !tbaa !34
  %57 = load i32, i32* %y2, align 4, !tbaa !21
  %cmp80 = icmp eq i32 %56, %57
  br i1 %cmp80, label %land.lhs.true.82, label %lor.lhs.false.92

land.lhs.true.82:                                 ; preds = %land.lhs.true.77
  %58 = load i32, i32* %x2, align 4, !tbaa !21
  %59 = load %struct.segment_s*, %struct.segment_s** %pseg3, align 8, !tbaa !1
  %pt83 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %59, i32 0, i32 4
  %x84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt83, i32 0, i32 0
  %60 = load i32, i32* %x84, align 4, !tbaa !32
  %cmp85 = icmp eq i32 %58, %60
  br i1 %cmp85, label %land.lhs.true.87, label %lor.lhs.false.92

land.lhs.true.87:                                 ; preds = %land.lhs.true.82
  %61 = load %struct.segment_s*, %struct.segment_s** %pseg3, align 8, !tbaa !1
  %pt88 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %61, i32 0, i32 4
  %y89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt88, i32 0, i32 1
  %62 = load i32, i32* %y89, align 4, !tbaa !34
  %63 = load i32, i32* %y0, align 4, !tbaa !21
  %cmp90 = icmp eq i32 %62, %63
  br i1 %cmp90, label %if.then.112, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true.87, %land.lhs.true.82, %land.lhs.true.77, %if.end.64
  %64 = load i32, i32* %x0, align 4, !tbaa !21
  %65 = load %struct.segment_s*, %struct.segment_s** %pseg3, align 8, !tbaa !1
  %pt93 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %65, i32 0, i32 4
  %x94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt93, i32 0, i32 0
  %66 = load i32, i32* %x94, align 4, !tbaa !32
  %cmp95 = icmp eq i32 %64, %66
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.144

land.lhs.true.97:                                 ; preds = %lor.lhs.false.92
  %67 = load %struct.segment_s*, %struct.segment_s** %pseg3, align 8, !tbaa !1
  %pt98 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %67, i32 0, i32 4
  %y99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt98, i32 0, i32 1
  %68 = load i32, i32* %y99, align 4, !tbaa !34
  %69 = load i32, i32* %y2, align 4, !tbaa !21
  %cmp100 = icmp eq i32 %68, %69
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.144

land.lhs.true.102:                                ; preds = %land.lhs.true.97
  %70 = load i32, i32* %x2, align 4, !tbaa !21
  %71 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !1
  %pt103 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %71, i32 0, i32 4
  %x104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt103, i32 0, i32 0
  %72 = load i32, i32* %x104, align 4, !tbaa !32
  %cmp105 = icmp eq i32 %70, %72
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.144

land.lhs.true.107:                                ; preds = %land.lhs.true.102
  %73 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !1
  %pt108 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %73, i32 0, i32 4
  %y109 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt108, i32 0, i32 1
  %74 = load i32, i32* %y109, align 4, !tbaa !34
  %75 = load i32, i32* %y0, align 4, !tbaa !21
  %cmp110 = icmp eq i32 %74, %75
  br i1 %cmp110, label %if.then.112, label %if.end.144

if.then.112:                                      ; preds = %land.lhs.true.107, %land.lhs.true.87
  %76 = load i32, i32* %x0, align 4, !tbaa !21
  %77 = load i32, i32* %x2, align 4, !tbaa !21
  %cmp113 = icmp slt i32 %76, %77
  br i1 %cmp113, label %if.then.115, label %if.else.118

if.then.115:                                      ; preds = %if.then.112
  %78 = load i32, i32* %x0, align 4, !tbaa !21
  %79 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %79, i32 0, i32 0
  %x116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %78, i32* %x116, align 4, !tbaa !26
  %80 = load i32, i32* %x2, align 4, !tbaa !21
  %81 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %81, i32 0, i32 1
  %x117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %80, i32* %x117, align 4, !tbaa !46
  br label %if.end.123

if.else.118:                                      ; preds = %if.then.112
  %82 = load i32, i32* %x2, align 4, !tbaa !21
  %83 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p119 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %83, i32 0, i32 0
  %x120 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p119, i32 0, i32 0
  store i32 %82, i32* %x120, align 4, !tbaa !26
  %84 = load i32, i32* %x0, align 4, !tbaa !21
  %85 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q121 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %85, i32 0, i32 1
  %x122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q121, i32 0, i32 0
  store i32 %84, i32* %x122, align 4, !tbaa !46
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.118, %if.then.115
  %86 = load i32, i32* %y0, align 4, !tbaa !21
  %87 = load i32, i32* %y2, align 4, !tbaa !21
  %cmp124 = icmp slt i32 %86, %87
  br i1 %cmp124, label %if.then.126, label %if.else.131

if.then.126:                                      ; preds = %if.end.123
  %88 = load i32, i32* %y0, align 4, !tbaa !21
  %89 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p127 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %89, i32 0, i32 0
  %y128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p127, i32 0, i32 1
  store i32 %88, i32* %y128, align 4, !tbaa !25
  %90 = load i32, i32* %y2, align 4, !tbaa !21
  %91 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q129 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %91, i32 0, i32 1
  %y130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q129, i32 0, i32 1
  store i32 %90, i32* %y130, align 4, !tbaa !47
  br label %if.end.136

if.else.131:                                      ; preds = %if.end.123
  %92 = load i32, i32* %y2, align 4, !tbaa !21
  %93 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p132 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %93, i32 0, i32 0
  %y133 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p132, i32 0, i32 1
  store i32 %92, i32* %y133, align 4, !tbaa !25
  %94 = load i32, i32* %y0, align 4, !tbaa !21
  %95 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q134 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %95, i32 0, i32 1
  %y135 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q134, i32 0, i32 1
  store i32 %94, i32* %y135, align 4, !tbaa !47
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.131, %if.then.126
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.136
  %96 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %cmp137 = icmp ne %struct.segment_s* %96, null
  br i1 %cmp137, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %97 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %type139 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %97, i32 0, i32 2
  %98 = load i16, i16* %type139, align 2, !tbaa !40
  %conv140 = zext i16 %98 to i32
  %cmp141 = icmp ne i32 %conv140, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %99 = phi i1 [ false, %while.cond ], [ %cmp141, %land.rhs ]
  br i1 %99, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %100 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %next143 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %100, i32 0, i32 1
  %101 = load %struct.segment_s*, %struct.segment_s** %next143, align 8, !tbaa !39
  store %struct.segment_s* %101, %struct.segment_s** %pseg4, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %102 = load %struct.segment_s*, %struct.segment_s** %pseg4, align 8, !tbaa !1
  %103 = bitcast %struct.segment_s* %102 to %struct.subpath_s*
  %104 = load %struct.subpath_s**, %struct.subpath_s*** %ppnext.addr, align 8, !tbaa !1
  store %struct.subpath_s* %103, %struct.subpath_s** %104, align 8, !tbaa !1
  %105 = load i32, i32* %type, align 4, !tbaa !52
  store i32 %105, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.144:                                       ; preds = %land.lhs.true.107, %land.lhs.true.102, %land.lhs.true.97, %lor.lhs.false.92
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.144, %while.end
  %106 = bitcast i32* %y2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32* %x2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.149 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.148

if.end.148:                                       ; preds = %cleanup.cont, %land.lhs.true.5, %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.149

cleanup.149:                                      ; preds = %if.end.148, %cleanup, %if.else.60, %if.then.35
  %110 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast %struct.segment_s** %pseg4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #2
  %112 = bitcast %struct.segment_s** %pseg3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  %113 = bitcast %struct.segment_s** %pseg2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %114 = bitcast %struct.segment_s** %pseg1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_is_rectangular(%struct.gx_path_s* %ppath, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pnext = alloca %struct.subpath_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.subpath_s** %pnext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 12
  %2 = load i32, i32* %subpath_count, align 4, !tbaa !55
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 3
  %4 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %4, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %5 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !24
  %6 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %call = call i32 @gx_subpath_is_rectangular(%struct.subpath_s* %5, %struct.gs_fixed_rect_s* %6, %struct.subpath_s** %pnext) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  %7 = bitcast %struct.subpath_s** %pnext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_translate(%struct.gx_path_s* %ppath, i32 %dx, i32 %dy) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %pseg = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !21
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !21
  %0 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %box_last = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 6
  %2 = load %struct.segment_s*, %struct.segment_s** %box_last, align 8, !tbaa !27
  %cmp = icmp ne %struct.segment_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %dx.addr, align 4, !tbaa !21
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %5 = load i32, i32* %x, align 4, !tbaa !35
  %add = add nsw i32 %5, %3
  store i32 %add, i32* %x, align 4, !tbaa !35
  %6 = load i32, i32* %dy.addr, align 4, !tbaa !21
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 5
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %8 = load i32, i32* %y, align 4, !tbaa !36
  %add3 = add nsw i32 %8, %6
  store i32 %add3, i32* %y, align 4, !tbaa !36
  %9 = load i32, i32* %dx.addr, align 4, !tbaa !21
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox4, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %11 = load i32, i32* %x5, align 4, !tbaa !37
  %add6 = add nsw i32 %11, %9
  store i32 %add6, i32* %x5, align 4, !tbaa !37
  %12 = load i32, i32* %dy.addr, align 4, !tbaa !21
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 5
  %q8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox7, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q8, i32 0, i32 1
  %14 = load i32, i32* %y9, align 4, !tbaa !38
  %add10 = add nsw i32 %14, %12
  store i32 %add10, i32* %y9, align 4, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 8
  %16 = load i8, i8* %state_flags, align 1, !tbaa !5
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 1
  %cmp11 = icmp ne i32 %and, 0
  br i1 %cmp11, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end
  %17 = load i32, i32* %dx.addr, align 4, !tbaa !21
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 14
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %19 = load i32, i32* %x14, align 4, !tbaa !14
  %add15 = add nsw i32 %19, %17
  store i32 %add15, i32* %x14, align 4, !tbaa !14
  %20 = load i32, i32* %dy.addr, align 4, !tbaa !21
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 14
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position16, i32 0, i32 1
  %22 = load i32, i32* %y17, align 4, !tbaa !16
  %add18 = add nsw i32 %22, %20
  store i32 %add18, i32* %y17, align 4, !tbaa !16
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %if.end
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 3
  %24 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %24, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %25 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !24
  %26 = bitcast %struct.subpath_s* %25 to %struct.segment_s*
  store %struct.segment_s* %26, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %27 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp20 = icmp ne %struct.segment_s* %27, null
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i32 0, i32 2
  %29 = load i16, i16* %type, align 2, !tbaa !40
  %conv22 = zext i16 %29 to i32
  switch i32 %conv22, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body
  %30 = load i32, i32* %dx.addr, align 4, !tbaa !21
  %31 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %32 = bitcast %struct.segment_s* %31 to %struct.curve_segment*
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %32, i32 0, i32 5
  %x23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %33 = load i32, i32* %x23, align 4, !tbaa !41
  %add24 = add nsw i32 %33, %30
  store i32 %add24, i32* %x23, align 4, !tbaa !41
  %34 = load i32, i32* %dy.addr, align 4, !tbaa !21
  %35 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %36 = bitcast %struct.segment_s* %35 to %struct.curve_segment*
  %p125 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %36, i32 0, i32 5
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p125, i32 0, i32 1
  %37 = load i32, i32* %y26, align 4, !tbaa !43
  %add27 = add nsw i32 %37, %34
  store i32 %add27, i32* %y26, align 4, !tbaa !43
  %38 = load i32, i32* %dx.addr, align 4, !tbaa !21
  %39 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %40 = bitcast %struct.segment_s* %39 to %struct.curve_segment*
  %p228 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %40, i32 0, i32 6
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p228, i32 0, i32 0
  %41 = load i32, i32* %x29, align 4, !tbaa !44
  %add30 = add nsw i32 %41, %38
  store i32 %add30, i32* %x29, align 4, !tbaa !44
  %42 = load i32, i32* %dy.addr, align 4, !tbaa !21
  %43 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %44 = bitcast %struct.segment_s* %43 to %struct.curve_segment*
  %p231 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %44, i32 0, i32 6
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p231, i32 0, i32 1
  %45 = load i32, i32* %y32, align 4, !tbaa !45
  %add33 = add nsw i32 %45, %42
  store i32 %add33, i32* %y32, align 4, !tbaa !45
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb
  %46 = load i32, i32* %dx.addr, align 4, !tbaa !21
  %47 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %47, i32 0, i32 4
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %48 = load i32, i32* %x34, align 4, !tbaa !32
  %add35 = add nsw i32 %48, %46
  store i32 %add35, i32* %x34, align 4, !tbaa !32
  %49 = load i32, i32* %dy.addr, align 4, !tbaa !21
  %50 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt36 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %50, i32 0, i32 4
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt36, i32 0, i32 1
  %51 = load i32, i32* %y37, align 4, !tbaa !34
  %add38 = add nsw i32 %51, %49
  store i32 %add38, i32* %y37, align 4, !tbaa !34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %52 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %52, i32 0, i32 1
  %53 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !39
  store %struct.segment_s* %53, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gx_point_scale_exp2(%struct.gs_fixed_point_s* %pt, i32 %sx, i32 %sy) #1 {
entry:
  %pt.addr = alloca %struct.gs_fixed_point_s*, align 8
  %sx.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.gs_fixed_point_s* %pt, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  store i32 %sx, i32* %sx.addr, align 4, !tbaa !21
  store i32 %sy, i32* %sy.addr, align 4, !tbaa !21
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %sx.addr, align 4, !tbaa !21
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %sx.addr, align 4, !tbaa !21
  %shr = ashr i32 2147227647, %2
  store i32 %shr, i32* %v, align 4, !tbaa !21
  %3 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i32 0, i32 0
  %4 = load i32, i32* %x, align 4, !tbaa !15
  %5 = load i32, i32* %v, align 4, !tbaa !21
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %v, align 4, !tbaa !21
  %7 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %7, i32 0, i32 0
  store i32 %6, i32* %x3, align 4, !tbaa !15
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %8 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 0
  %9 = load i32, i32* %x4, align 4, !tbaa !15
  %10 = load i32, i32* %v, align 4, !tbaa !21
  %sub = sub nsw i32 0, %10
  %cmp5 = icmp slt i32 %9, %sub
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %11 = load i32, i32* %v, align 4, !tbaa !21
  %sub7 = sub nsw i32 0, %11
  %12 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %12, i32 0, i32 0
  store i32 %sub7, i32* %x8, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.2
  %13 = load i32, i32* %sx.addr, align 4, !tbaa !21
  %14 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %14, i32 0, i32 0
  %15 = load i32, i32* %x10, align 4, !tbaa !15
  %shl = shl i32 %15, %13
  store i32 %shl, i32* %x10, align 4, !tbaa !15
  br label %if.end.15

if.else.11:                                       ; preds = %entry
  %16 = load i32, i32* %sx.addr, align 4, !tbaa !21
  %sub12 = sub nsw i32 0, %16
  %17 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i32 0, i32 0
  %18 = load i32, i32* %x13, align 4, !tbaa !15
  %shr14 = ashr i32 %18, %sub12
  store i32 %shr14, i32* %x13, align 4, !tbaa !15
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.11, %if.end.9
  %19 = load i32, i32* %sy.addr, align 4, !tbaa !21
  %cmp16 = icmp sgt i32 %19, 0
  br i1 %cmp16, label %if.then.17, label %if.else.33

if.then.17:                                       ; preds = %if.end.15
  %20 = load i32, i32* %sy.addr, align 4, !tbaa !21
  %shr18 = ashr i32 2147227647, %20
  store i32 %shr18, i32* %v, align 4, !tbaa !21
  %21 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %21, i32 0, i32 1
  %22 = load i32, i32* %y, align 4, !tbaa !17
  %23 = load i32, i32* %v, align 4, !tbaa !21
  %cmp19 = icmp sgt i32 %22, %23
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.then.17
  %24 = load i32, i32* %v, align 4, !tbaa !21
  %25 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %25, i32 0, i32 1
  store i32 %24, i32* %y21, align 4, !tbaa !17
  br label %if.end.30

if.else.22:                                       ; preds = %if.then.17
  %26 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %26, i32 0, i32 1
  %27 = load i32, i32* %y23, align 4, !tbaa !17
  %28 = load i32, i32* %v, align 4, !tbaa !21
  %sub24 = sub nsw i32 0, %28
  %cmp25 = icmp slt i32 %27, %sub24
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.else.22
  %29 = load i32, i32* %v, align 4, !tbaa !21
  %sub27 = sub nsw i32 0, %29
  %30 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %30, i32 0, i32 1
  store i32 %sub27, i32* %y28, align 4, !tbaa !17
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.else.22
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.20
  %31 = load i32, i32* %sy.addr, align 4, !tbaa !21
  %32 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %32, i32 0, i32 1
  %33 = load i32, i32* %y31, align 4, !tbaa !17
  %shl32 = shl i32 %33, %31
  store i32 %shl32, i32* %y31, align 4, !tbaa !17
  br label %if.end.37

if.else.33:                                       ; preds = %if.end.15
  %34 = load i32, i32* %sy.addr, align 4, !tbaa !21
  %sub34 = sub nsw i32 0, %34
  %35 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %pt.addr, align 8, !tbaa !1
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %35, i32 0, i32 1
  %36 = load i32, i32* %y35, align 4, !tbaa !17
  %shr36 = ashr i32 %36, %sub34
  store i32 %shr36, i32* %y35, align 4, !tbaa !17
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.33, %if.end.30
  %37 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_rect_scale_exp2(%struct.gs_fixed_rect_s* %pr, i32 %sx, i32 %sy) #1 {
entry:
  %pr.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %sx.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  store %struct.gs_fixed_rect_s* %pr, %struct.gs_fixed_rect_s** %pr.addr, align 8, !tbaa !1
  store i32 %sx, i32* %sx.addr, align 4, !tbaa !21
  store i32 %sy, i32* %sy.addr, align 4, !tbaa !21
  %0 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %0, i32 0, i32 0
  %1 = load i32, i32* %sx.addr, align 4, !tbaa !21
  %2 = load i32, i32* %sy.addr, align 4, !tbaa !21
  call void @gx_point_scale_exp2(%struct.gs_fixed_point_s* %p, i32 %1, i32 %2) #3
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pr.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i32 0, i32 1
  %4 = load i32, i32* %sx.addr, align 4, !tbaa !21
  %5 = load i32, i32* %sy.addr, align 4, !tbaa !21
  call void @gx_point_scale_exp2(%struct.gs_fixed_point_s* %q, i32 %4, i32 %5) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_scale_exp2_shared(%struct.gx_path_s* %ppath, i32 %log2_scale_x, i32 %log2_scale_y, i32 %segments_shared) #1 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %log2_scale_x.addr = alloca i32, align 4
  %log2_scale_y.addr = alloca i32, align 4
  %segments_shared.addr = alloca i32, align 4
  %pseg = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store i32 %log2_scale_x, i32* %log2_scale_x.addr, align 4, !tbaa !21
  store i32 %log2_scale_y, i32* %log2_scale_y.addr, align 4, !tbaa !21
  store i32 %segments_shared, i32* %segments_shared.addr, align 4, !tbaa !21
  %0 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 5
  %2 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !21
  %3 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !21
  call void @gx_rect_scale_exp2(%struct.gs_fixed_rect_s* %bbox, i32 %2, i32 %3) #3
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 14
  %5 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !21
  %6 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !21
  call void @gx_point_scale_exp2(%struct.gs_fixed_point_s* %position, i32 %5, i32 %6) #3
  %7 = load i32, i32* %segments_shared.addr, align 4, !tbaa !21
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 3
  %9 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %9, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %10 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !24
  %11 = bitcast %struct.subpath_s* %10 to %struct.segment_s*
  store %struct.segment_s* %11, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp = icmp ne %struct.segment_s* %12, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %13, i32 0, i32 2
  %14 = load i16, i16* %type, align 2, !tbaa !40
  %conv = zext i16 %14 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body
  %15 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %16 = bitcast %struct.segment_s* %15 to %struct.curve_segment*
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %16, i32 0, i32 5
  %17 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !21
  %18 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !21
  call void @gx_point_scale_exp2(%struct.gs_fixed_point_s* %p1, i32 %17, i32 %18) #3
  %19 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %20 = bitcast %struct.segment_s* %19 to %struct.curve_segment*
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %20, i32 0, i32 6
  %21 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !21
  %22 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !21
  call void @gx_point_scale_exp2(%struct.gs_fixed_point_s* %p2, i32 %21, i32 %22) #3
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb
  %23 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 4
  %24 = load i32, i32* %log2_scale_x.addr, align 4, !tbaa !21
  %25 = load i32, i32* %log2_scale_y.addr, align 4, !tbaa !21
  call void @gx_point_scale_exp2(%struct.gs_fixed_point_s* %pt, i32 %24, i32 %25) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %26 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %26, i32 0, i32 1
  %27 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !39
  store %struct.segment_s* %27, %struct.segment_s** %pseg, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %28 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_copy_reversed(%struct.gx_path_s* %ppath_old, %struct.gx_path_s* %ppath) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath_old.addr = alloca %struct.gx_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %psub = alloca %struct.subpath_s*, align 8
  %prev = alloca %struct.segment_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %notes = alloca i32, align 4
  %prev_notes = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pc = alloca %struct.curve_segment*, align 8
  %code78 = alloca i32, align 4
  store %struct.gx_path_s* %ppath_old, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %3 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !19
  store %struct.subpath_s* %3, %struct.subpath_s** %psub, align 8, !tbaa !1
  br label %nsp

nsp:                                              ; preds = %cleanup, %entry
  %4 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %tobool = icmp ne %struct.subpath_s* %4, null
  br i1 %tobool, label %if.then, label %if.end.68

if.then:                                          ; preds = %nsp
  %5 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %6, i32 0, i32 5
  %7 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !28
  store %struct.segment_s* %7, %struct.segment_s** %prev, align 8, !tbaa !1
  %8 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %11 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %12 = bitcast %struct.subpath_s* %11 to %struct.segment_s*
  %cmp = icmp eq %struct.segment_s* %10, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %13, i32 0, i32 1
  %14 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !51
  %notes1 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %14, i32 0, i32 3
  %15 = load i16, i16* %notes1, align 2, !tbaa !56
  %conv = zext i16 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %notes, align 4, !tbaa !52
  %16 = bitcast i32* %prev_notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %is_closed = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %18, i32 0, i32 8
  %19 = load i8, i8* %is_closed, align 1, !tbaa !57
  %tobool2 = icmp ne i8 %19, 0
  br i1 %tobool2, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %cond.end
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %21 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %21, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %22 = load i32, i32* %x, align 4, !tbaa !32
  %23 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt4 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt4, i32 0, i32 1
  %24 = load i32, i32* %y, align 4, !tbaa !34
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %20, i32 %22, i32 %24) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %25 = load i32, i32* %code, align 4, !tbaa !21
  %cmp5 = icmp slt i32 %25, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.3
  %26 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %cond.end
  br label %do.body

do.body:                                          ; preds = %do.cond.60, %if.end.8
  %27 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  store %struct.segment_s* %27, %struct.segment_s** %pseg, align 8, !tbaa !1
  %28 = load i32, i32* %notes, align 4, !tbaa !52
  store i32 %28, i32* %prev_notes, align 4, !tbaa !52
  %29 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %prev9 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %29, i32 0, i32 0
  %30 = load %struct.segment_s*, %struct.segment_s** %prev9, align 8, !tbaa !58
  store %struct.segment_s* %30, %struct.segment_s** %prev, align 8, !tbaa !1
  %31 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes10 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i32 0, i32 3
  %32 = load i16, i16* %notes10, align 2, !tbaa !56
  %conv11 = zext i16 %32 to i32
  store i32 %conv11, i32* %notes, align 4, !tbaa !52
  %33 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %and = and i32 %33, 1
  %34 = load i32, i32* %notes, align 4, !tbaa !52
  %and12 = and i32 %34, -2
  %or = or i32 %and, %and12
  store i32 %or, i32* %prev_notes, align 4, !tbaa !52
  %35 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %35, i32 0, i32 2
  %36 = load i16, i16* %type, align 2, !tbaa !40
  %conv13 = zext i16 %36 to i32
  switch i32 %conv13, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.30
    i32 1, label %sw.bb.42
    i32 5, label %sw.bb.48
    i32 2, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %do.body
  %37 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %is_closed14 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %37, i32 0, i32 8
  %38 = load i8, i8* %is_closed14, align 1, !tbaa !57
  %tobool15 = icmp ne i8 %38, 0
  br i1 %tobool15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %sw.bb
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %40 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %call17 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %39, i32 %40) #3
  store i32 %call17, i32* %code, align 4, !tbaa !21
  %41 = load i32, i32* %code, align 4, !tbaa !21
  %cmp18 = icmp slt i32 %41, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %42 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %sw.bb
  br label %do.body.23

do.body.23:                                       ; preds = %land.end, %if.end.22
  %43 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %prev24 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %43, i32 0, i32 0
  %44 = load %struct.segment_s*, %struct.segment_s** %prev24, align 8, !tbaa !59
  %45 = bitcast %struct.segment_s* %44 to %struct.subpath_s*
  store %struct.subpath_s* %45, %struct.subpath_s** %psub, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.23
  %46 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %tobool25 = icmp ne %struct.subpath_s* %46, null
  br i1 %tobool25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %47 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %type26 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %47, i32 0, i32 2
  %48 = load i16, i16* %type26, align 2, !tbaa !60
  %conv27 = zext i16 %48 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %49 = phi i1 [ false, %do.cond ], [ %cmp28, %land.rhs ]
  br i1 %49, label %do.body.23, label %do.end

do.end:                                           ; preds = %land.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.30:                                         ; preds = %do.body
  %50 = bitcast %struct.curve_segment** %pc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %52 = bitcast %struct.segment_s* %51 to %struct.curve_segment*
  store %struct.curve_segment* %52, %struct.curve_segment** %pc, align 8, !tbaa !1
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %54 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %54, i32 0, i32 6
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %55 = load i32, i32* %x31, align 4, !tbaa !44
  %56 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p232 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %56, i32 0, i32 6
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p232, i32 0, i32 1
  %57 = load i32, i32* %y33, align 4, !tbaa !45
  %58 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %58, i32 0, i32 5
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %59 = load i32, i32* %x34, align 4, !tbaa !41
  %60 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p135 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %60, i32 0, i32 5
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p135, i32 0, i32 1
  %61 = load i32, i32* %y36, align 4, !tbaa !43
  %62 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt37 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %62, i32 0, i32 4
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt37, i32 0, i32 0
  %63 = load i32, i32* %x38, align 4, !tbaa !32
  %64 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt39 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %64, i32 0, i32 4
  %y40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt39, i32 0, i32 1
  %65 = load i32, i32* %y40, align 4, !tbaa !34
  %66 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %call41 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %53, i32 %55, i32 %57, i32 %59, i32 %61, i32 %63, i32 %65, i32 %66) #3
  store i32 %call41, i32* %code, align 4, !tbaa !21
  store i32 5, i32* %cleanup.dest.slot
  %67 = bitcast %struct.curve_segment** %pc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  br label %sw.epilog

sw.bb.42:                                         ; preds = %do.body
  %68 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %69 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt43 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %69, i32 0, i32 4
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt43, i32 0, i32 0
  %70 = load i32, i32* %x44, align 4, !tbaa !32
  %71 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt45 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %71, i32 0, i32 4
  %y46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt45, i32 0, i32 1
  %72 = load i32, i32* %y46, align 4, !tbaa !34
  %73 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %call47 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %68, i32 %70, i32 %72, i32 %73) #3
  store i32 %call47, i32* %code, align 4, !tbaa !21
  br label %sw.epilog

sw.bb.48:                                         ; preds = %do.body
  %74 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %75 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt49 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %75, i32 0, i32 4
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt49, i32 0, i32 0
  %76 = load i32, i32* %x50, align 4, !tbaa !32
  %77 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt51 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %77, i32 0, i32 4
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt51, i32 0, i32 1
  %78 = load i32, i32* %y52, align 4, !tbaa !34
  %79 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %call53 = call i32 @gx_path_add_gap_notes(%struct.gx_path_s* %74, i32 %76, i32 %78, i32 %79) #3
  store i32 %call53, i32* %code, align 4, !tbaa !21
  br label %sw.epilog

sw.bb.54:                                         ; preds = %do.body
  %80 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %81 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt55 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %81, i32 0, i32 4
  %x56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt55, i32 0, i32 0
  %82 = load i32, i32* %x56, align 4, !tbaa !32
  %83 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt57 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %83, i32 0, i32 4
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt57, i32 0, i32 1
  %84 = load i32, i32* %y58, align 4, !tbaa !34
  %call59 = call i32 @gx_path_add_point(%struct.gx_path_s* %80, i32 %82, i32 %84) #3
  store i32 %call59, i32* %code, align 4, !tbaa !21
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.54, %sw.bb.48, %sw.bb.42, %sw.bb.30
  br label %do.cond.60

do.cond.60:                                       ; preds = %sw.epilog
  %85 = load i32, i32* %code, align 4, !tbaa !21
  %cmp61 = icmp sge i32 %85, 0
  br i1 %cmp61, label %do.body, label %do.end.63

do.end.63:                                        ; preds = %do.cond.60
  %86 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.63, %sw.default, %do.end, %if.then.20, %if.then.7
  %87 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %prev_notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.90 [
    i32 2, label %nsp
  ]

if.end.68:                                        ; preds = %nsp
  %92 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %segments69 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %92, i32 0, i32 3
  %93 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments69, align 8, !tbaa !18
  %contents70 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %93, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents70, i32 0, i32 0
  %94 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !24
  %cmp71 = icmp eq %struct.subpath_s* %94, null
  br i1 %cmp71, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.end.68
  %95 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %95, i32 0, i32 8
  %96 = load i8, i8* %state_flags, align 1, !tbaa !5
  %conv73 = zext i8 %96 to i32
  %and74 = and i32 %conv73, -9
  %cmp75 = icmp eq i32 %and74, 3
  br i1 %cmp75, label %if.then.77, label %if.end.89

if.then.77:                                       ; preds = %land.lhs.true
  %97 = bitcast i32* %code78 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #2
  %98 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %99 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %99, i32 0, i32 14
  %x79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %100 = load i32, i32* %x79, align 4, !tbaa !14
  %101 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %position80 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %101, i32 0, i32 14
  %y81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position80, i32 0, i32 1
  %102 = load i32, i32* %y81, align 4, !tbaa !16
  %call82 = call i32 @gx_path_add_point(%struct.gx_path_s* %98, i32 %100, i32 %102) #3
  store i32 %call82, i32* %code78, align 4, !tbaa !21
  %103 = load i32, i32* %code78, align 4, !tbaa !21
  %cmp83 = icmp slt i32 %103, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.77
  %104 = load i32, i32* %code78, align 4, !tbaa !21
  store i32 %104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end.86:                                        ; preds = %if.then.77
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %if.end.86, %if.then.85
  %105 = bitcast i32* %code78 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %cleanup.90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.87
  br label %if.end.89

if.end.89:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end.68
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.end.89, %cleanup.87, %cleanup
  %106 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = load i32, i32* %retval
  ret i32 %107
}

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #0

declare i32 @gx_path_close_subpath_notes(%struct.gx_path_s*, i32) #0

declare i32 @gx_path_add_curve_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32) #0

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #0

declare i32 @gx_path_add_gap_notes(%struct.gx_path_s*, i32, i32, i32) #0

; Function Attrs: nounwind uwtable
define i32 @gx_path_append_reversed(%struct.gx_path_s* %ppath_old, %struct.gx_path_s* %ppath) #1 {
entry:
  %retval = alloca i32, align 4
  %ppath_old.addr = alloca %struct.gx_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %psub = alloca %struct.subpath_s*, align 8
  %prev = alloca %struct.segment_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %notes = alloca i32, align 4
  %prev_notes = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pc = alloca %struct.curve_segment*, align 8
  %code78 = alloca i32, align 4
  store %struct.gx_path_s* %ppath_old, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %3 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !19
  store %struct.subpath_s* %3, %struct.subpath_s** %psub, align 8, !tbaa !1
  br label %nsp

nsp:                                              ; preds = %cleanup, %entry
  %4 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %tobool = icmp ne %struct.subpath_s* %4, null
  br i1 %tobool, label %if.then, label %if.end.68

if.then:                                          ; preds = %nsp
  %5 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %6, i32 0, i32 5
  %7 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !28
  store %struct.segment_s* %7, %struct.segment_s** %prev, align 8, !tbaa !1
  %8 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %11 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %12 = bitcast %struct.subpath_s* %11 to %struct.segment_s*
  %cmp = icmp eq %struct.segment_s* %10, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %13, i32 0, i32 1
  %14 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !51
  %notes1 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %14, i32 0, i32 3
  %15 = load i16, i16* %notes1, align 2, !tbaa !56
  %conv = zext i16 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %notes, align 4, !tbaa !52
  %16 = bitcast i32* %prev_notes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %is_closed = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %18, i32 0, i32 8
  %19 = load i8, i8* %is_closed, align 1, !tbaa !57
  %tobool2 = icmp ne i8 %19, 0
  br i1 %tobool2, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %cond.end
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %21 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %21, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %22 = load i32, i32* %x, align 4, !tbaa !32
  %23 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt4 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt4, i32 0, i32 1
  %24 = load i32, i32* %y, align 4, !tbaa !34
  %call = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %20, i32 %22, i32 %24, i32 0) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %25 = load i32, i32* %code, align 4, !tbaa !21
  %cmp5 = icmp slt i32 %25, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.3
  %26 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %cond.end
  br label %do.body

do.body:                                          ; preds = %do.cond.60, %if.end.8
  %27 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  store %struct.segment_s* %27, %struct.segment_s** %pseg, align 8, !tbaa !1
  %28 = load i32, i32* %notes, align 4, !tbaa !52
  store i32 %28, i32* %prev_notes, align 4, !tbaa !52
  %29 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %prev9 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %29, i32 0, i32 0
  %30 = load %struct.segment_s*, %struct.segment_s** %prev9, align 8, !tbaa !58
  store %struct.segment_s* %30, %struct.segment_s** %prev, align 8, !tbaa !1
  %31 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes10 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i32 0, i32 3
  %32 = load i16, i16* %notes10, align 2, !tbaa !56
  %conv11 = zext i16 %32 to i32
  store i32 %conv11, i32* %notes, align 4, !tbaa !52
  %33 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %and = and i32 %33, 1
  %34 = load i32, i32* %notes, align 4, !tbaa !52
  %and12 = and i32 %34, -2
  %or = or i32 %and, %and12
  store i32 %or, i32* %prev_notes, align 4, !tbaa !52
  %35 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %35, i32 0, i32 2
  %36 = load i16, i16* %type, align 2, !tbaa !40
  %conv13 = zext i16 %36 to i32
  switch i32 %conv13, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.30
    i32 1, label %sw.bb.42
    i32 5, label %sw.bb.48
    i32 2, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %do.body
  %37 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %is_closed14 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %37, i32 0, i32 8
  %38 = load i8, i8* %is_closed14, align 1, !tbaa !57
  %tobool15 = icmp ne i8 %38, 0
  br i1 %tobool15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %sw.bb
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %40 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %call17 = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %39, i32 %40) #3
  store i32 %call17, i32* %code, align 4, !tbaa !21
  %41 = load i32, i32* %code, align 4, !tbaa !21
  %cmp18 = icmp slt i32 %41, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %42 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %sw.bb
  br label %do.body.23

do.body.23:                                       ; preds = %land.end, %if.end.22
  %43 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %prev24 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %43, i32 0, i32 0
  %44 = load %struct.segment_s*, %struct.segment_s** %prev24, align 8, !tbaa !59
  %45 = bitcast %struct.segment_s* %44 to %struct.subpath_s*
  store %struct.subpath_s* %45, %struct.subpath_s** %psub, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.23
  %46 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %tobool25 = icmp ne %struct.subpath_s* %46, null
  br i1 %tobool25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %47 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %type26 = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %47, i32 0, i32 2
  %48 = load i16, i16* %type26, align 2, !tbaa !60
  %conv27 = zext i16 %48 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %49 = phi i1 [ false, %do.cond ], [ %cmp28, %land.rhs ]
  br i1 %49, label %do.body.23, label %do.end

do.end:                                           ; preds = %land.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.30:                                         ; preds = %do.body
  %50 = bitcast %struct.curve_segment** %pc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %52 = bitcast %struct.segment_s* %51 to %struct.curve_segment*
  store %struct.curve_segment* %52, %struct.curve_segment** %pc, align 8, !tbaa !1
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %54 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %54, i32 0, i32 6
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %55 = load i32, i32* %x31, align 4, !tbaa !44
  %56 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p232 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %56, i32 0, i32 6
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p232, i32 0, i32 1
  %57 = load i32, i32* %y33, align 4, !tbaa !45
  %58 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %58, i32 0, i32 5
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %59 = load i32, i32* %x34, align 4, !tbaa !41
  %60 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8, !tbaa !1
  %p135 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %60, i32 0, i32 5
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p135, i32 0, i32 1
  %61 = load i32, i32* %y36, align 4, !tbaa !43
  %62 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt37 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %62, i32 0, i32 4
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt37, i32 0, i32 0
  %63 = load i32, i32* %x38, align 4, !tbaa !32
  %64 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt39 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %64, i32 0, i32 4
  %y40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt39, i32 0, i32 1
  %65 = load i32, i32* %y40, align 4, !tbaa !34
  %66 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %call41 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %53, i32 %55, i32 %57, i32 %59, i32 %61, i32 %63, i32 %65, i32 %66) #3
  store i32 %call41, i32* %code, align 4, !tbaa !21
  store i32 5, i32* %cleanup.dest.slot
  %67 = bitcast %struct.curve_segment** %pc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  br label %sw.epilog

sw.bb.42:                                         ; preds = %do.body
  %68 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %69 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt43 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %69, i32 0, i32 4
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt43, i32 0, i32 0
  %70 = load i32, i32* %x44, align 4, !tbaa !32
  %71 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt45 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %71, i32 0, i32 4
  %y46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt45, i32 0, i32 1
  %72 = load i32, i32* %y46, align 4, !tbaa !34
  %73 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %call47 = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %68, i32 %70, i32 %72, i32 %73) #3
  store i32 %call47, i32* %code, align 4, !tbaa !21
  br label %sw.epilog

sw.bb.48:                                         ; preds = %do.body
  %74 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %75 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt49 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %75, i32 0, i32 4
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt49, i32 0, i32 0
  %76 = load i32, i32* %x50, align 4, !tbaa !32
  %77 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt51 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %77, i32 0, i32 4
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt51, i32 0, i32 1
  %78 = load i32, i32* %y52, align 4, !tbaa !34
  %79 = load i32, i32* %prev_notes, align 4, !tbaa !52
  %call53 = call i32 @gx_path_add_gap_notes(%struct.gx_path_s* %74, i32 %76, i32 %78, i32 %79) #3
  store i32 %call53, i32* %code, align 4, !tbaa !21
  br label %sw.epilog

sw.bb.54:                                         ; preds = %do.body
  %80 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %81 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt55 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %81, i32 0, i32 4
  %x56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt55, i32 0, i32 0
  %82 = load i32, i32* %x56, align 4, !tbaa !32
  %83 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !1
  %pt57 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %83, i32 0, i32 4
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt57, i32 0, i32 1
  %84 = load i32, i32* %y58, align 4, !tbaa !34
  %call59 = call i32 @gx_path_add_point(%struct.gx_path_s* %80, i32 %82, i32 %84) #3
  store i32 %call59, i32* %code, align 4, !tbaa !21
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.54, %sw.bb.48, %sw.bb.42, %sw.bb.30
  br label %do.cond.60

do.cond.60:                                       ; preds = %sw.epilog
  %85 = load i32, i32* %code, align 4, !tbaa !21
  %cmp61 = icmp sge i32 %85, 0
  br i1 %cmp61, label %do.body, label %do.end.63

do.end.63:                                        ; preds = %do.cond.60
  %86 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.63, %sw.default, %do.end, %if.then.20, %if.then.7
  %87 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %prev_notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %notes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast %struct.segment_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.90 [
    i32 2, label %nsp
  ]

if.end.68:                                        ; preds = %nsp
  %92 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %segments69 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %92, i32 0, i32 3
  %93 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments69, align 8, !tbaa !18
  %contents70 = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %93, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents70, i32 0, i32 0
  %94 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !24
  %cmp71 = icmp eq %struct.subpath_s* %94, null
  br i1 %cmp71, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.end.68
  %95 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %95, i32 0, i32 8
  %96 = load i8, i8* %state_flags, align 1, !tbaa !5
  %conv73 = zext i8 %96 to i32
  %and74 = and i32 %conv73, -9
  %cmp75 = icmp eq i32 %and74, 3
  br i1 %cmp75, label %if.then.77, label %if.end.89

if.then.77:                                       ; preds = %land.lhs.true
  %97 = bitcast i32* %code78 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #2
  %98 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %99 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %99, i32 0, i32 14
  %x79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %100 = load i32, i32* %x79, align 4, !tbaa !14
  %101 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8, !tbaa !1
  %position80 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %101, i32 0, i32 14
  %y81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position80, i32 0, i32 1
  %102 = load i32, i32* %y81, align 4, !tbaa !16
  %call82 = call i32 @gx_path_add_point(%struct.gx_path_s* %98, i32 %100, i32 %102) #3
  store i32 %call82, i32* %code78, align 4, !tbaa !21
  %103 = load i32, i32* %code78, align 4, !tbaa !21
  %cmp83 = icmp slt i32 %103, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.77
  %104 = load i32, i32* %code78, align 4, !tbaa !21
  store i32 %104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.87

if.end.86:                                        ; preds = %if.then.77
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.87

cleanup.87:                                       ; preds = %if.end.86, %if.then.85
  %105 = bitcast i32* %code78 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %cleanup.90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.87
  br label %if.end.89

if.end.89:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end.68
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.90

cleanup.90:                                       ; preds = %if.end.89, %cleanup.87, %cleanup
  %106 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = load i32, i32* %retval
  ret i32 %107
}

; Function Attrs: nounwind uwtable
define %struct.gs_path_enum_s* @gs_path_enum_alloc(%struct.gs_memory_s* %mem, i8* %cname) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %1 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !61
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_path_enum to %struct.gs_memory_struct_type_s*), i8* %3) #3
  %4 = bitcast i8* %call to %struct.gs_path_enum_s*
  ret %struct.gs_path_enum_s* %4
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_enum_init(%struct.gs_path_enum_s* %penum, %struct.gx_path_s* %ppath) #1 {
entry:
  %penum.addr = alloca %struct.gs_path_enum_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gs_path_enum_s* %penum, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %0 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %0, i32 0, i32 0
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory, align 8, !tbaa !64
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %2 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %2, i32 0, i32 3
  store %struct.gx_path_s* %1, %struct.gx_path_s** %path, align 8, !tbaa !68
  %3 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %copied_path = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %3, i32 0, i32 4
  store %struct.gx_path_s* null, %struct.gx_path_s** %copied_path, align 8, !tbaa !69
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 3
  %5 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %5, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %6 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !24
  %7 = bitcast %struct.subpath_s* %6 to %struct.segment_s*
  %8 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %pseg = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %8, i32 0, i32 2
  store %struct.segment_s* %7, %struct.segment_s** %pseg, align 8, !tbaa !70
  %9 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %moveto_done = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %9, i32 0, i32 5
  store i32 0, i32* %moveto_done, align 4, !tbaa !71
  %10 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %notes = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %10, i32 0, i32 6
  store i32 0, i32* %notes, align 4, !tbaa !72
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_fixed_point_s* %ppts) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_path_enum_s*, align 8
  %ppts.addr = alloca %struct.gs_fixed_point_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %ppath = alloca %struct.gx_path_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_path_enum_s* %penum, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %ppts, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %0 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %pseg1 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %1, i32 0, i32 2
  %2 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !70
  store %struct.segment_s* %2, %struct.segment_s** %pseg, align 8, !tbaa !1
  %3 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp = icmp eq %struct.segment_s* %3, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %5, i32 0, i32 3
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !68
  store %struct.gx_path_s* %6, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 8
  %8 = load i8, i8* %state_flags, align 1, !tbaa !5
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, -9
  %cmp2 = icmp eq i32 %and, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %moveto_done = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %9, i32 0, i32 5
  %10 = load i32, i32* %moveto_done, align 4, !tbaa !71
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %11 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %moveto_done5 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %11, i32 0, i32 5
  store i32 1, i32* %moveto_done5, align 4, !tbaa !71
  %12 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %notes = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %12, i32 0, i32 6
  store i32 0, i32* %notes, align 4, !tbaa !72
  %13 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %13, i64 0
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 14
  %15 = bitcast %struct.gs_fixed_point_s* %arrayidx to i8*
  %16 = bitcast %struct.gs_fixed_point_s* %position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 4, i1 false), !tbaa.struct !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %17 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  br label %cleanup.31

if.end.6:                                         ; preds = %entry
  %18 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %18, i32 0, i32 1
  %19 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !39
  %20 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %pseg7 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %20, i32 0, i32 2
  store %struct.segment_s* %19, %struct.segment_s** %pseg7, align 8, !tbaa !70
  %21 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %notes8 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %21, i32 0, i32 3
  %22 = load i16, i16* %notes8, align 2, !tbaa !56
  %conv9 = zext i16 %22 to i32
  %23 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %notes10 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %23, i32 0, i32 6
  store i32 %conv9, i32* %notes10, align 4, !tbaa !72
  %24 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %24, i32 0, i32 2
  %25 = load i16, i16* %type, align 2, !tbaa !40
  %conv11 = zext i16 %25 to i32
  switch i32 %conv11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 5, label %sw.bb.16
    i32 2, label %sw.bb.19
    i32 3, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.end.6
  %26 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %26, i64 0
  %27 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %27, i32 0, i32 4
  %28 = bitcast %struct.gs_fixed_point_s* %arrayidx12 to i8*
  %29 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 4, i1 false), !tbaa.struct !20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

sw.bb.13:                                         ; preds = %if.end.6
  %30 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %30, i64 0
  %31 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt15 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i32 0, i32 4
  %32 = bitcast %struct.gs_fixed_point_s* %arrayidx14 to i8*
  %33 = bitcast %struct.gs_fixed_point_s* %pt15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 4, i1 false), !tbaa.struct !20
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

sw.bb.16:                                         ; preds = %if.end.6
  %34 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %34, i64 0
  %35 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt18 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %35, i32 0, i32 4
  %36 = bitcast %struct.gs_fixed_point_s* %arrayidx17 to i8*
  %37 = bitcast %struct.gs_fixed_point_s* %pt18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 4, i1 false), !tbaa.struct !20
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

sw.bb.19:                                         ; preds = %if.end.6
  %38 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %38, i64 0
  %39 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt21 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %39, i32 0, i32 4
  %40 = bitcast %struct.gs_fixed_point_s* %arrayidx20 to i8*
  %41 = bitcast %struct.gs_fixed_point_s* %pt21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 8, i32 4, i1 false), !tbaa.struct !20
  store i32 4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

sw.bb.22:                                         ; preds = %if.end.6
  %42 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %42, i64 0
  %43 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %44 = bitcast %struct.segment_s* %43 to %struct.curve_segment*
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %44, i32 0, i32 5
  %45 = bitcast %struct.gs_fixed_point_s* %arrayidx23 to i8*
  %46 = bitcast %struct.gs_fixed_point_s* %p1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 4, i1 false), !tbaa.struct !20
  %47 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %47, i64 1
  %48 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %49 = bitcast %struct.segment_s* %48 to %struct.curve_segment*
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %49, i32 0, i32 6
  %50 = bitcast %struct.gs_fixed_point_s* %arrayidx24 to i8*
  %51 = bitcast %struct.gs_fixed_point_s* %p2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 8, i32 4, i1 false), !tbaa.struct !20
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppts.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i64 2
  %53 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %pt26 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %53, i32 0, i32 4
  %54 = bitcast %struct.gs_fixed_point_s* %arrayidx25 to i8*
  %55 = bitcast %struct.gs_fixed_point_s* %pt26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 8, i32 4, i1 false), !tbaa.struct !20
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

sw.default:                                       ; preds = %if.end.6
  %call = call i8* @gs_program_name() #3
  %call27 = call i64 @gs_revision_number() #3
  call void @eprintf_program_ident(i8* %call, i64 %call27) #3
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 615) #3
  %56 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %type28 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %56, i32 0, i32 2
  %57 = load i16, i16* %type28, align 2, !tbaa !40
  %conv29 = zext i16 %57 to i32
  %call30 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %conv29) #3
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

cleanup.31:                                       ; preds = %sw.default, %sw.bb.22, %sw.bb.19, %sw.bb.16, %sw.bb.13, %sw.bb, %cleanup
  %58 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare void @lprintf_file_and_line(i8*, i32) #0

declare i32 @errprintf_nomem(i8*, ...) #0

; Function Attrs: nounwind uwtable
define i32 @gx_path_enum_notes(%struct.gs_path_enum_s* %penum) #1 {
entry:
  %penum.addr = alloca %struct.gs_path_enum_s*, align 8
  store %struct.gs_path_enum_s* %penum, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %notes = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %0, i32 0, i32 6
  %1 = load i32, i32* %notes, align 4, !tbaa !72
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_enum_backup(%struct.gs_path_enum_s* %penum) #1 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_path_enum_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %cleanup.dest.slot = alloca i32
  %ppath = alloca %struct.gx_path_s*, align 8
  %psub = alloca %struct.subpath_s*, align 8
  store %struct.gs_path_enum_s* %penum, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %pseg1 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %1, i32 0, i32 2
  %2 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8, !tbaa !70
  store %struct.segment_s* %2, %struct.segment_s** %pseg, align 8, !tbaa !1
  %3 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp = icmp ne %struct.segment_s* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.segment_s, %struct.segment_s* %4, i32 0, i32 0
  %5 = load %struct.segment_s*, %struct.segment_s** %prev, align 8, !tbaa !58
  store %struct.segment_s* %5, %struct.segment_s** %pseg, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.segment_s* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

if.end:                                           ; preds = %if.then
  %6 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8, !tbaa !1
  %7 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %pseg4 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %7, i32 0, i32 2
  store %struct.segment_s* %6, %struct.segment_s** %pseg4, align 8, !tbaa !70
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

if.end.5:                                         ; preds = %entry
  %8 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %9, i32 0, i32 3
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !68
  store %struct.gx_path_s* %10, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %state_flags = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 8
  %12 = load i8, i8* %state_flags, align 1, !tbaa !5
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, -9
  %cmp6 = icmp eq i32 %and, 3
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.5
  %13 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %moveto_done = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %13, i32 0, i32 5
  %14 = load i32, i32* %moveto_done, align 4, !tbaa !71
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true
  %15 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %moveto_done9 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %15, i32 0, i32 5
  store i32 0, i32* %moveto_done9, align 4, !tbaa !71
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.end.10:                                        ; preds = %land.lhs.true, %if.end.5
  %16 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 3
  %18 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !18
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %18, i32 0, i32 1
  %subpath_current = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 1
  %19 = load %struct.subpath_s*, %struct.subpath_s** %subpath_current, align 8, !tbaa !19
  store %struct.subpath_s* %19, %struct.subpath_s** %psub, align 8, !tbaa !1
  %20 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.subpath_s* %20, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %21 = load %struct.subpath_s*, %struct.subpath_s** %psub, align 8, !tbaa !1
  %last = getelementptr inbounds %struct.subpath_s, %struct.subpath_s* %21, i32 0, i32 5
  %22 = load %struct.segment_s*, %struct.segment_s** %last, align 8, !tbaa !28
  %23 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum.addr, align 8, !tbaa !1
  %pseg15 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %23, i32 0, i32 2
  store %struct.segment_s* %22, %struct.segment_s** %pseg15, align 8, !tbaa !70
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13
  %24 = bitcast %struct.subpath_s** %psub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  br label %cleanup.16

cleanup.16:                                       ; preds = %cleanup, %if.then.8
  %25 = bitcast %struct.gx_path_s** %ppath to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  br label %cleanup.17

cleanup.17:                                       ; preds = %cleanup.16, %if.end, %if.then.3
  %26 = bitcast %struct.segment_s** %pseg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !3, i64 97}
!6 = !{!"gx_path_s", !7, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !11, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !13, i64 104, !13, i64 108, !12, i64 112, !2, i64 120}
!7 = !{!"gx_path_segments_s", !8, i64 0, !10, i64 24}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"psc_", !2, i64 0, !2, i64 8}
!11 = !{!"gs_fixed_rect_s", !12, i64 0, !12, i64 8}
!12 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 4}
!13 = !{!"int", !3, i64 0}
!14 = !{!6, !13, i64 112}
!15 = !{!12, !13, i64 0}
!16 = !{!6, !13, i64 116}
!17 = !{!12, !13, i64 4}
!18 = !{!6, !2, i64 56}
!19 = !{!7, !2, i64 32}
!20 = !{i64 0, i64 4, !21, i64 4, i64 4, !21}
!21 = !{!13, !13, i64 0}
!22 = !{!6, !3, i64 99}
!23 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21, i64 12, i64 4, !21}
!24 = !{!7, !2, i64 24}
!25 = !{!11, !13, i64 4}
!26 = !{!11, !13, i64 0}
!27 = !{!6, !2, i64 88}
!28 = !{!29, !2, i64 32}
!29 = !{!"subpath_s", !2, i64 0, !2, i64 8, !30, i64 16, !30, i64 18, !12, i64 20, !2, i64 32, !13, i64 40, !31, i64 48, !3, i64 88}
!30 = !{!"short", !3, i64 0}
!31 = !{!"", !2, i64 0, !2, i64 8, !30, i64 16, !30, i64 18, !12, i64 20, !2, i64 32}
!32 = !{!33, !13, i64 20}
!33 = !{!"segment_s", !2, i64 0, !2, i64 8, !30, i64 16, !30, i64 18, !12, i64 20}
!34 = !{!33, !13, i64 24}
!35 = !{!6, !13, i64 72}
!36 = !{!6, !13, i64 76}
!37 = !{!6, !13, i64 80}
!38 = !{!6, !13, i64 84}
!39 = !{!33, !2, i64 8}
!40 = !{!33, !30, i64 16}
!41 = !{!42, !13, i64 28}
!42 = !{!"", !2, i64 0, !2, i64 8, !30, i64 16, !30, i64 18, !12, i64 20, !12, i64 28, !12, i64 36}
!43 = !{!42, !13, i64 32}
!44 = !{!42, !13, i64 36}
!45 = !{!42, !13, i64 40}
!46 = !{!11, !13, i64 8}
!47 = !{!11, !13, i64 12}
!48 = !{!6, !3, i64 98}
!49 = !{!6, !13, i64 108}
!50 = !{!29, !13, i64 40}
!51 = !{!29, !2, i64 8}
!52 = !{!3, !3, i64 0}
!53 = !{!29, !13, i64 20}
!54 = !{!29, !13, i64 24}
!55 = !{!6, !13, i64 104}
!56 = !{!33, !30, i64 18}
!57 = !{!29, !3, i64 88}
!58 = !{!33, !2, i64 0}
!59 = !{!29, !2, i64 0}
!60 = !{!29, !30, i64 16}
!61 = !{!62, !2, i64 72}
!62 = !{!"gs_memory_s", !2, i64 0, !63, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!63 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!64 = !{!65, !2, i64 0}
!65 = !{!"gs_path_enum_s", !2, i64 0, !66, i64 8, !2, i64 32, !2, i64 40, !2, i64 48, !13, i64 56, !3, i64 60}
!66 = !{!"gs_matrix_s", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20}
!67 = !{!"float", !3, i64 0}
!68 = !{!65, !2, i64 40}
!69 = !{!65, !2, i64 48}
!70 = !{!65, !2, i64 32}
!71 = !{!65, !13, i64 56}
!72 = !{!65, !3, i64 60}
