; ModuleID = './MultiSource.Benchmarks.MallocBench/55.gs.gxpath2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@scaled_flat = common global i64 0, align 8
@scaled_flat_sq = common global float 0.000000e+00, align 4

; Function Attrs: nounwind uwtable
define i32 @gx_path_current_point(%struct.gx_path_s* %ppath, %struct.gs_fixed_point_s* %ppt) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %ppt.addr = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store %struct.gs_fixed_point_s* %ppt, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 10
  %1 = load i8, i8* %position_valid, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 9
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %3 = load i64, i64* %x, align 8
  %4 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i32 0, i32 0
  store i64 %3, i64* %x1, align 8
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 9
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position2, i32 0, i32 1
  %6 = load i64, i64* %y, align 8
  %7 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %ppt.addr, align 8
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %7, i32 0, i32 1
  store i64 %6, i64* %y3, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_bbox(%struct.gx_path_s* %ppath, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %box = alloca %struct.gs_fixed_rect_s, align 8
  %pseg = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 4
  %1 = load %struct.subpath*, %struct.subpath** %first_subpath, align 8
  %cmp = icmp eq %struct.subpath* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i32 0, i32 0
  %call = call i32 @gx_path_current_point(%struct.gx_path_s* %2, %struct.gs_fixed_point_s* %p)
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %5 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %5, i32 0, i32 1
  %call1 = call i32 @gx_path_current_point(%struct.gx_path_s* %4, %struct.gs_fixed_point_s* %q)
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %box_last = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 2
  %7 = load %struct.segment_s*, %struct.segment_s** %box_last, align 8
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 5
  %9 = load %struct.subpath*, %struct.subpath** %current_subpath, align 8
  %last = getelementptr inbounds %struct.subpath, %struct.subpath* %9, i32 0, i32 4
  %10 = load %struct.segment_s*, %struct.segment_s** %last, align 8
  %cmp2 = icmp eq %struct.segment_s* %7, %10
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 1
  %13 = bitcast %struct.gs_fixed_rect_s* %11 to i8*
  %14 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  br label %if.end.161

if.else:                                          ; preds = %if.end
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %box_last4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 2
  %16 = load %struct.segment_s*, %struct.segment_s** %box_last4, align 8
  store %struct.segment_s* %16, %struct.segment_s** %pseg, align 8
  %17 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %cmp5 = icmp eq %struct.segment_s* %17, null
  br i1 %cmp5, label %if.then.6, label %if.else.17

if.then.6:                                        ; preds = %if.else
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 4
  %19 = load %struct.subpath*, %struct.subpath** %first_subpath7, align 8
  %20 = bitcast %struct.subpath* %19 to %struct.segment_s*
  store %struct.segment_s* %20, %struct.segment_s** %pseg, align 8
  %21 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %21, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %22 = load i64, i64* %x, align 8
  %q8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q8, i32 0, i32 0
  store i64 %22, i64* %x9, align 8
  %p10 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p10, i32 0, i32 0
  store i64 %22, i64* %x11, align 8
  %23 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt12 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 3
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt12, i32 0, i32 1
  %24 = load i64, i64* %y, align 8
  %q13 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q13, i32 0, i32 1
  store i64 %24, i64* %y14, align 8
  %p15 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p15, i32 0, i32 1
  store i64 %24, i64* %y16, align 8
  br label %if.end.19

if.else.17:                                       ; preds = %if.else
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %bbox18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 1
  %26 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  %27 = bitcast %struct.gs_fixed_rect_s* %bbox18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %28, i32 0, i32 1
  %29 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  store %struct.segment_s* %29, %struct.segment_s** %pseg, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.6
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.19
  %30 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %tobool = icmp ne %struct.segment_s* %30, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i32 0, i32 2
  %32 = load i32, i32* %type, align 4
  switch i32 %32, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %33 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %34 = bitcast %struct.segment_s* %33 to %struct.curve_segment*
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %34, i32 0, i32 4
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %35 = load i64, i64* %x20, align 8
  %p21 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p21, i32 0, i32 0
  %36 = load i64, i64* %x22, align 8
  %cmp23 = icmp slt i64 %35, %36
  br i1 %cmp23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %sw.bb
  %37 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %38 = bitcast %struct.segment_s* %37 to %struct.curve_segment*
  %p125 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %38, i32 0, i32 4
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p125, i32 0, i32 0
  %39 = load i64, i64* %x26, align 8
  %p27 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p27, i32 0, i32 0
  store i64 %39, i64* %x28, align 8
  br label %if.end.41

if.else.29:                                       ; preds = %sw.bb
  %40 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %41 = bitcast %struct.segment_s* %40 to %struct.curve_segment*
  %p130 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %41, i32 0, i32 4
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p130, i32 0, i32 0
  %42 = load i64, i64* %x31, align 8
  %q32 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q32, i32 0, i32 0
  %43 = load i64, i64* %x33, align 8
  %cmp34 = icmp sgt i64 %42, %43
  br i1 %cmp34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.else.29
  %44 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %45 = bitcast %struct.segment_s* %44 to %struct.curve_segment*
  %p136 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %45, i32 0, i32 4
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p136, i32 0, i32 0
  %46 = load i64, i64* %x37, align 8
  %q38 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q38, i32 0, i32 0
  store i64 %46, i64* %x39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %if.else.29
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.24
  %47 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %48 = bitcast %struct.segment_s* %47 to %struct.curve_segment*
  %p142 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %48, i32 0, i32 4
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p142, i32 0, i32 1
  %49 = load i64, i64* %y43, align 8
  %p44 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p44, i32 0, i32 1
  %50 = load i64, i64* %y45, align 8
  %cmp46 = icmp slt i64 %49, %50
  br i1 %cmp46, label %if.then.47, label %if.else.52

if.then.47:                                       ; preds = %if.end.41
  %51 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %52 = bitcast %struct.segment_s* %51 to %struct.curve_segment*
  %p148 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %52, i32 0, i32 4
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p148, i32 0, i32 1
  %53 = load i64, i64* %y49, align 8
  %p50 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p50, i32 0, i32 1
  store i64 %53, i64* %y51, align 8
  br label %if.end.64

if.else.52:                                       ; preds = %if.end.41
  %54 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %55 = bitcast %struct.segment_s* %54 to %struct.curve_segment*
  %p153 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %55, i32 0, i32 4
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p153, i32 0, i32 1
  %56 = load i64, i64* %y54, align 8
  %q55 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q55, i32 0, i32 1
  %57 = load i64, i64* %y56, align 8
  %cmp57 = icmp sgt i64 %56, %57
  br i1 %cmp57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.else.52
  %58 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %59 = bitcast %struct.segment_s* %58 to %struct.curve_segment*
  %p159 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %59, i32 0, i32 4
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p159, i32 0, i32 1
  %60 = load i64, i64* %y60, align 8
  %q61 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q61, i32 0, i32 1
  store i64 %60, i64* %y62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.else.52
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.47
  %61 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %62 = bitcast %struct.segment_s* %61 to %struct.curve_segment*
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %62, i32 0, i32 5
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %63 = load i64, i64* %x65, align 8
  %p66 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p66, i32 0, i32 0
  %64 = load i64, i64* %x67, align 8
  %cmp68 = icmp slt i64 %63, %64
  br i1 %cmp68, label %if.then.69, label %if.else.74

if.then.69:                                       ; preds = %if.end.64
  %65 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %66 = bitcast %struct.segment_s* %65 to %struct.curve_segment*
  %p270 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %66, i32 0, i32 5
  %x71 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p270, i32 0, i32 0
  %67 = load i64, i64* %x71, align 8
  %p72 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p72, i32 0, i32 0
  store i64 %67, i64* %x73, align 8
  br label %if.end.86

if.else.74:                                       ; preds = %if.end.64
  %68 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %69 = bitcast %struct.segment_s* %68 to %struct.curve_segment*
  %p275 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %69, i32 0, i32 5
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p275, i32 0, i32 0
  %70 = load i64, i64* %x76, align 8
  %q77 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q77, i32 0, i32 0
  %71 = load i64, i64* %x78, align 8
  %cmp79 = icmp sgt i64 %70, %71
  br i1 %cmp79, label %if.then.80, label %if.end.85

if.then.80:                                       ; preds = %if.else.74
  %72 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %73 = bitcast %struct.segment_s* %72 to %struct.curve_segment*
  %p281 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %73, i32 0, i32 5
  %x82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p281, i32 0, i32 0
  %74 = load i64, i64* %x82, align 8
  %q83 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x84 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q83, i32 0, i32 0
  store i64 %74, i64* %x84, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.80, %if.else.74
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.69
  %75 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %76 = bitcast %struct.segment_s* %75 to %struct.curve_segment*
  %p287 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %76, i32 0, i32 5
  %y88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p287, i32 0, i32 1
  %77 = load i64, i64* %y88, align 8
  %p89 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p89, i32 0, i32 1
  %78 = load i64, i64* %y90, align 8
  %cmp91 = icmp slt i64 %77, %78
  br i1 %cmp91, label %if.then.92, label %if.else.97

if.then.92:                                       ; preds = %if.end.86
  %79 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %80 = bitcast %struct.segment_s* %79 to %struct.curve_segment*
  %p293 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %80, i32 0, i32 5
  %y94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p293, i32 0, i32 1
  %81 = load i64, i64* %y94, align 8
  %p95 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p95, i32 0, i32 1
  store i64 %81, i64* %y96, align 8
  br label %if.end.109

if.else.97:                                       ; preds = %if.end.86
  %82 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %83 = bitcast %struct.segment_s* %82 to %struct.curve_segment*
  %p298 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %83, i32 0, i32 5
  %y99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p298, i32 0, i32 1
  %84 = load i64, i64* %y99, align 8
  %q100 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q100, i32 0, i32 1
  %85 = load i64, i64* %y101, align 8
  %cmp102 = icmp sgt i64 %84, %85
  br i1 %cmp102, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.else.97
  %86 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %87 = bitcast %struct.segment_s* %86 to %struct.curve_segment*
  %p2104 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %87, i32 0, i32 5
  %y105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2104, i32 0, i32 1
  %88 = load i64, i64* %y105, align 8
  %q106 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q106, i32 0, i32 1
  store i64 %88, i64* %y107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %if.else.97
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.92
  br label %sw.default

sw.default:                                       ; preds = %while.body, %if.end.109
  %89 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt110 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %89, i32 0, i32 3
  %x111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt110, i32 0, i32 0
  %90 = load i64, i64* %x111, align 8
  %p112 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x113 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p112, i32 0, i32 0
  %91 = load i64, i64* %x113, align 8
  %cmp114 = icmp slt i64 %90, %91
  br i1 %cmp114, label %if.then.115, label %if.else.120

if.then.115:                                      ; preds = %sw.default
  %92 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt116 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %92, i32 0, i32 3
  %x117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt116, i32 0, i32 0
  %93 = load i64, i64* %x117, align 8
  %p118 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x119 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p118, i32 0, i32 0
  store i64 %93, i64* %x119, align 8
  br label %if.end.132

if.else.120:                                      ; preds = %sw.default
  %94 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt121 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %94, i32 0, i32 3
  %x122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt121, i32 0, i32 0
  %95 = load i64, i64* %x122, align 8
  %q123 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q123, i32 0, i32 0
  %96 = load i64, i64* %x124, align 8
  %cmp125 = icmp sgt i64 %95, %96
  br i1 %cmp125, label %if.then.126, label %if.end.131

if.then.126:                                      ; preds = %if.else.120
  %97 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt127 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %97, i32 0, i32 3
  %x128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt127, i32 0, i32 0
  %98 = load i64, i64* %x128, align 8
  %q129 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q129, i32 0, i32 0
  store i64 %98, i64* %x130, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.126, %if.else.120
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.115
  %99 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt133 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %99, i32 0, i32 3
  %y134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt133, i32 0, i32 1
  %100 = load i64, i64* %y134, align 8
  %p135 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p135, i32 0, i32 1
  %101 = load i64, i64* %y136, align 8
  %cmp137 = icmp slt i64 %100, %101
  br i1 %cmp137, label %if.then.138, label %if.else.143

if.then.138:                                      ; preds = %if.end.132
  %102 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt139 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %102, i32 0, i32 3
  %y140 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt139, i32 0, i32 1
  %103 = load i64, i64* %y140, align 8
  %p141 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p141, i32 0, i32 1
  store i64 %103, i64* %y142, align 8
  br label %if.end.155

if.else.143:                                      ; preds = %if.end.132
  %104 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt144 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %104, i32 0, i32 3
  %y145 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt144, i32 0, i32 1
  %105 = load i64, i64* %y145, align 8
  %q146 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y147 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q146, i32 0, i32 1
  %106 = load i64, i64* %y147, align 8
  %cmp148 = icmp sgt i64 %105, %106
  br i1 %cmp148, label %if.then.149, label %if.end.154

if.then.149:                                      ; preds = %if.else.143
  %107 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt150 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %107, i32 0, i32 3
  %y151 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt150, i32 0, i32 1
  %108 = load i64, i64* %y151, align 8
  %q152 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y153 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q152, i32 0, i32 1
  store i64 %108, i64* %y153, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.149, %if.else.143
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.138
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.155
  %109 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %next156 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %109, i32 0, i32 1
  %110 = load %struct.segment_s*, %struct.segment_s** %next156, align 8
  store %struct.segment_s* %110, %struct.segment_s** %pseg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %111 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %bbox157 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %111, i32 0, i32 1
  %112 = bitcast %struct.gs_fixed_rect_s* %bbox157 to i8*
  %113 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 32, i32 8, i1 false)
  %114 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath158 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %114, i32 0, i32 5
  %115 = load %struct.subpath*, %struct.subpath** %current_subpath158, align 8
  %last159 = getelementptr inbounds %struct.subpath, %struct.subpath* %115, i32 0, i32 4
  %116 = load %struct.segment_s*, %struct.segment_s** %last159, align 8
  %117 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %box_last160 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %117, i32 0, i32 2
  store %struct.segment_s* %116, %struct.segment_s** %box_last160, align 8
  %118 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %119 = bitcast %struct.gs_fixed_rect_s* %118 to i8*
  %120 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 32, i32 8, i1 false)
  br label %if.end.161

if.end.161:                                       ; preds = %while.end, %if.then.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.161, %if.then
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gx_path_has_curves(%struct.gx_path_s* %ppath) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 8
  %1 = load i32, i32* %curve_count, align 4
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_is_void(%struct.gx_path_s* %ppath) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %segment_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 7
  %1 = load i32, i32* %segment_count, align 4
  %cmp = icmp eq i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_is_rectangle(%struct.gx_path_s* %ppath, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pseg0 = alloca %struct.subpath*, align 8
  %x0 = alloca i64, align 8
  %y0 = alloca i64, align 8
  %pseg1 = alloca %struct.segment_s*, align 8
  %pseg2 = alloca %struct.segment_s*, align 8
  %x2 = alloca i64, align 8
  %y2 = alloca i64, align 8
  %pseg3 = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 6
  %1 = load i32, i32* %subpath_count, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %segment_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 7
  %3 = load i32, i32* %segment_count, align 4
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.65

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 8
  %5 = load i32, i32* %curve_count, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.65

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 4
  %7 = load %struct.subpath*, %struct.subpath** %first_subpath, align 8
  store %struct.subpath* %7, %struct.subpath** %pseg0, align 8
  %last = getelementptr inbounds %struct.subpath, %struct.subpath* %7, i32 0, i32 4
  %8 = load %struct.segment_s*, %struct.segment_s** %last, align 8
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %8, i32 0, i32 2
  %9 = load i32, i32* %type, align 4
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %if.then, label %if.end.65

if.then:                                          ; preds = %land.lhs.true.4
  %10 = load %struct.subpath*, %struct.subpath** %pseg0, align 8
  %pt = getelementptr inbounds %struct.subpath, %struct.subpath* %10, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %11 = load i64, i64* %x, align 8
  store i64 %11, i64* %x0, align 8
  %12 = load %struct.subpath*, %struct.subpath** %pseg0, align 8
  %pt6 = getelementptr inbounds %struct.subpath, %struct.subpath* %12, i32 0, i32 3
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt6, i32 0, i32 1
  %13 = load i64, i64* %y, align 8
  store i64 %13, i64* %y0, align 8
  %14 = load %struct.subpath*, %struct.subpath** %pseg0, align 8
  %next = getelementptr inbounds %struct.subpath, %struct.subpath* %14, i32 0, i32 1
  %15 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  store %struct.segment_s* %15, %struct.segment_s** %pseg1, align 8
  %16 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8
  %next7 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %16, i32 0, i32 1
  %17 = load %struct.segment_s*, %struct.segment_s** %next7, align 8
  store %struct.segment_s* %17, %struct.segment_s** %pseg2, align 8
  %18 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8
  %pt8 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %18, i32 0, i32 3
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt8, i32 0, i32 0
  %19 = load i64, i64* %x9, align 8
  store i64 %19, i64* %x2, align 8
  %20 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8
  %pt10 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %20, i32 0, i32 3
  %y11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt10, i32 0, i32 1
  %21 = load i64, i64* %y11, align 8
  store i64 %21, i64* %y2, align 8
  %22 = load %struct.segment_s*, %struct.segment_s** %pseg2, align 8
  %next12 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %22, i32 0, i32 1
  %23 = load %struct.segment_s*, %struct.segment_s** %next12, align 8
  store %struct.segment_s* %23, %struct.segment_s** %pseg3, align 8
  %24 = load i64, i64* %x0, align 8
  %25 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8
  %pt13 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %25, i32 0, i32 3
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt13, i32 0, i32 0
  %26 = load i64, i64* %x14, align 8
  %cmp15 = icmp eq i64 %24, %26
  br i1 %cmp15, label %land.lhs.true.16, label %lor.lhs.false

land.lhs.true.16:                                 ; preds = %if.then
  %27 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8
  %pt17 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %27, i32 0, i32 3
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt17, i32 0, i32 1
  %28 = load i64, i64* %y18, align 8
  %29 = load i64, i64* %y2, align 8
  %cmp19 = icmp eq i64 %28, %29
  br i1 %cmp19, label %land.lhs.true.20, label %lor.lhs.false

land.lhs.true.20:                                 ; preds = %land.lhs.true.16
  %30 = load i64, i64* %x2, align 8
  %31 = load %struct.segment_s*, %struct.segment_s** %pseg3, align 8
  %pt21 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %31, i32 0, i32 3
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt21, i32 0, i32 0
  %32 = load i64, i64* %x22, align 8
  %cmp23 = icmp eq i64 %30, %32
  br i1 %cmp23, label %land.lhs.true.24, label %lor.lhs.false

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %33 = load %struct.segment_s*, %struct.segment_s** %pseg3, align 8
  %pt25 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %33, i32 0, i32 3
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt25, i32 0, i32 1
  %34 = load i64, i64* %y26, align 8
  %35 = load i64, i64* %y0, align 8
  %cmp27 = icmp eq i64 %34, %35
  br i1 %cmp27, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.24, %land.lhs.true.20, %land.lhs.true.16, %if.then
  %36 = load i64, i64* %x0, align 8
  %37 = load %struct.segment_s*, %struct.segment_s** %pseg3, align 8
  %pt28 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %37, i32 0, i32 3
  %x29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt28, i32 0, i32 0
  %38 = load i64, i64* %x29, align 8
  %cmp30 = icmp eq i64 %36, %38
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.64

land.lhs.true.31:                                 ; preds = %lor.lhs.false
  %39 = load %struct.segment_s*, %struct.segment_s** %pseg3, align 8
  %pt32 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %39, i32 0, i32 3
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt32, i32 0, i32 1
  %40 = load i64, i64* %y33, align 8
  %41 = load i64, i64* %y2, align 8
  %cmp34 = icmp eq i64 %40, %41
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.64

land.lhs.true.35:                                 ; preds = %land.lhs.true.31
  %42 = load i64, i64* %x2, align 8
  %43 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8
  %pt36 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %43, i32 0, i32 3
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt36, i32 0, i32 0
  %44 = load i64, i64* %x37, align 8
  %cmp38 = icmp eq i64 %42, %44
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.64

land.lhs.true.39:                                 ; preds = %land.lhs.true.35
  %45 = load %struct.segment_s*, %struct.segment_s** %pseg1, align 8
  %pt40 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %45, i32 0, i32 3
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt40, i32 0, i32 1
  %46 = load i64, i64* %y41, align 8
  %47 = load i64, i64* %y0, align 8
  %cmp42 = icmp eq i64 %46, %47
  br i1 %cmp42, label %if.then.43, label %if.end.64

if.then.43:                                       ; preds = %land.lhs.true.39, %land.lhs.true.24
  %48 = load i64, i64* %x0, align 8
  %49 = load i64, i64* %x2, align 8
  %cmp44 = icmp slt i64 %48, %49
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.then.43
  %50 = load i64, i64* %x0, align 8
  %51 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %51, i32 0, i32 0
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i64 %50, i64* %x46, align 8
  %52 = load i64, i64* %x2, align 8
  %53 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %53, i32 0, i32 1
  %x47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i64 %52, i64* %x47, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.43
  %54 = load i64, i64* %x2, align 8
  %55 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %p48 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %55, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p48, i32 0, i32 0
  store i64 %54, i64* %x49, align 8
  %56 = load i64, i64* %x0, align 8
  %57 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %q50 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %57, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q50, i32 0, i32 0
  store i64 %56, i64* %x51, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.45
  %58 = load i64, i64* %y0, align 8
  %59 = load i64, i64* %y2, align 8
  %cmp52 = icmp slt i64 %58, %59
  br i1 %cmp52, label %if.then.53, label %if.else.58

if.then.53:                                       ; preds = %if.end
  %60 = load i64, i64* %y0, align 8
  %61 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %p54 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %61, i32 0, i32 0
  %y55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p54, i32 0, i32 1
  store i64 %60, i64* %y55, align 8
  %62 = load i64, i64* %y2, align 8
  %63 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %q56 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %63, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q56, i32 0, i32 1
  store i64 %62, i64* %y57, align 8
  br label %if.end.63

if.else.58:                                       ; preds = %if.end
  %64 = load i64, i64* %y2, align 8
  %65 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %p59 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %65, i32 0, i32 0
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p59, i32 0, i32 1
  store i64 %64, i64* %y60, align 8
  %66 = load i64, i64* %y0, align 8
  %67 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %q61 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %67, i32 0, i32 1
  %y62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q61, i32 0, i32 1
  store i64 %66, i64* %y62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.58, %if.then.53
  store i32 1, i32* %retval
  br label %return

if.end.64:                                        ; preds = %land.lhs.true.39, %land.lhs.true.35, %land.lhs.true.31, %lor.lhs.false
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.end.63
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_box_for_check(%struct.gx_path_s* %ppath, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %0 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = bitcast %struct.gs_fixed_rect_s* %0 to i8*
  %3 = bitcast %struct.gs_fixed_rect_s* %cbox to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 8, i1 false)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_cpath_includes_rectangle(%struct.gx_path_s* %ppath, i64 %x0, i64 %y0, i64 %x1, i64 %y1) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x0.addr = alloca i64, align 8
  %y0.addr = alloca i64, align 8
  %x1.addr = alloca i64, align 8
  %y1.addr = alloca i64, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %x0, i64* %x0.addr, align 8
  store i64 %y0, i64* %y0.addr, align 8
  store i64 %x1, i64* %x1.addr, align 8
  store i64 %y1, i64* %y1.addr, align 8
  %0 = load i64, i64* %x0.addr, align 8
  %1 = load i64, i64* %x1.addr, align 8
  %cmp = icmp sle i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 3
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %3 = load i64, i64* %x, align 8
  %4 = load i64, i64* %x0.addr, align 8
  %cmp1 = icmp sle i64 %3, %4
  br i1 %cmp1, label %land.lhs.true, label %land.end.36

land.lhs.true:                                    ; preds = %cond.true
  %5 = load i64, i64* %x1.addr, align 8
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 3
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox2, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %7 = load i64, i64* %x3, align 8
  %cmp4 = icmp sle i64 %5, %7
  br i1 %cmp4, label %land.rhs, label %land.end.36

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 3
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox5, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 0
  %9 = load i64, i64* %x7, align 8
  %10 = load i64, i64* %x1.addr, align 8
  %cmp8 = icmp sle i64 %9, %10
  br i1 %cmp8, label %land.lhs.true.9, label %land.end.36

land.lhs.true.9:                                  ; preds = %cond.false
  %11 = load i64, i64* %x0.addr, align 8
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 3
  %q11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox10, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q11, i32 0, i32 0
  %13 = load i64, i64* %x12, align 8
  %cmp13 = icmp sle i64 %11, %13
  br i1 %cmp13, label %land.rhs, label %land.end.36

land.rhs:                                         ; preds = %land.lhs.true.9, %land.lhs.true
  %14 = load i64, i64* %y0.addr, align 8
  %15 = load i64, i64* %y1.addr, align 8
  %cmp14 = icmp sle i64 %14, %15
  br i1 %cmp14, label %cond.true.15, label %cond.false.24

cond.true.15:                                     ; preds = %land.rhs
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 3
  %p17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox16, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p17, i32 0, i32 1
  %17 = load i64, i64* %y, align 8
  %18 = load i64, i64* %y0.addr, align 8
  %cmp18 = icmp sle i64 %17, %18
  br i1 %cmp18, label %land.rhs.19, label %land.end

land.rhs.19:                                      ; preds = %cond.true.15
  %19 = load i64, i64* %y1.addr, align 8
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox20 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 3
  %q21 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox20, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q21, i32 0, i32 1
  %21 = load i64, i64* %y22, align 8
  %cmp23 = icmp sle i64 %19, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs.19, %cond.true.15
  %22 = phi i1 [ false, %cond.true.15 ], [ %cmp23, %land.rhs.19 ]
  %land.ext = zext i1 %22 to i32
  br label %cond.end

cond.false.24:                                    ; preds = %land.rhs
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 3
  %p26 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox25, i32 0, i32 0
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p26, i32 0, i32 1
  %24 = load i64, i64* %y27, align 8
  %25 = load i64, i64* %y1.addr, align 8
  %cmp28 = icmp sle i64 %24, %25
  br i1 %cmp28, label %land.rhs.29, label %land.end.34

land.rhs.29:                                      ; preds = %cond.false.24
  %26 = load i64, i64* %y0.addr, align 8
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %cbox30 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %27, i32 0, i32 3
  %q31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %cbox30, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q31, i32 0, i32 1
  %28 = load i64, i64* %y32, align 8
  %cmp33 = icmp sle i64 %26, %28
  br label %land.end.34

land.end.34:                                      ; preds = %land.rhs.29, %cond.false.24
  %29 = phi i1 [ false, %cond.false.24 ], [ %cmp33, %land.rhs.29 ]
  %land.ext35 = zext i1 %29 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end.34, %land.end
  %cond = phi i32 [ %land.ext, %land.end ], [ %land.ext35, %land.end.34 ]
  %tobool = icmp ne i32 %cond, 0
  br label %land.end.36

land.end.36:                                      ; preds = %cond.end, %land.lhs.true.9, %cond.false, %land.lhs.true, %cond.true
  %30 = phi i1 [ false, %land.lhs.true.9 ], [ false, %cond.false ], [ false, %land.lhs.true ], [ false, %cond.true ], [ %tobool, %cond.end ]
  %land.ext37 = zext i1 %30 to i32
  ret i32 %land.ext37
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_copy(%struct.gx_path_s* %ppath_old, %struct.gx_path_s* %ppath) #0 {
entry:
  %ppath_old.addr = alloca %struct.gx_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath_old, %struct.gx_path_s** %ppath_old.addr, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call = call i32 @copy_path(%struct.gx_path_s* %0, %struct.gx_path_s* %1, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* @gx_path_add_curve)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @copy_path(%struct.gx_path_s* %ppath_old, %struct.gx_path_s* %ppath, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* %curve_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath_old.addr = alloca %struct.gx_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %curve_proc.addr = alloca i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)*, align 8
  %old = alloca %struct.gx_path_s, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %code = alloca i32, align 4
  %pc = alloca %struct.curve_segment*, align 8
  store %struct.gx_path_s* %ppath_old, %struct.gx_path_s** %ppath_old.addr, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* %curve_proc, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)** %curve_proc.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8
  %1 = bitcast %struct.gx_path_s* %old to i8*
  %2 = bitcast %struct.gx_path_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 144, i32 8, i1 false)
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 0
  call void @gx_path_init(%struct.gx_path_s* %3, %struct.gs_memory_procs* %memory_procs)
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %old, i32 0, i32 4
  %5 = load %struct.subpath*, %struct.subpath** %first_subpath, align 8
  %6 = bitcast %struct.subpath* %5 to %struct.segment_s*
  store %struct.segment_s* %6, %struct.segment_s** %pseg, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %7 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %tobool = icmp ne %struct.segment_s* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %8, i32 0, i32 2
  %9 = load i32, i32* %type, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.2
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %while.body
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %11 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %11, i32 0, i32 3
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %12 = load i64, i64* %x, align 8
  %13 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt1 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %13, i32 0, i32 3
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt1, i32 0, i32 1
  %14 = load i64, i64* %y, align 8
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %10, i64 %12, i64 %14)
  store i32 %call, i32* %code, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  %15 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %16 = bitcast %struct.segment_s* %15 to %struct.curve_segment*
  store %struct.curve_segment* %16, %struct.curve_segment** %pc, align 8
  %17 = load i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)** %curve_proc.addr, align 8
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %19 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %19, i32 0, i32 4
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %20 = load i64, i64* %x3, align 8
  %21 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %p14 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %21, i32 0, i32 4
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 1
  %22 = load i64, i64* %y5, align 8
  %23 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %23, i32 0, i32 5
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %24 = load i64, i64* %x6, align 8
  %25 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %p27 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %25, i32 0, i32 5
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p27, i32 0, i32 1
  %26 = load i64, i64* %y8, align 8
  %27 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %pt9 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %27, i32 0, i32 3
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt9, i32 0, i32 0
  %28 = load i64, i64* %x10, align 8
  %29 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %pt11 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %29, i32 0, i32 3
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt11, i32 0, i32 1
  %30 = load i64, i64* %y12, align 8
  %call13 = call i32 %17(%struct.gx_path_s* %18, i64 %20, i64 %22, i64 %24, i64 %26, i64 %28, i64 %30)
  store i32 %call13, i32* %code, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body
  %31 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %32 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt15 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %32, i32 0, i32 3
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt15, i32 0, i32 0
  %33 = load i64, i64* %x16, align 8
  %34 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt17 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %34, i32 0, i32 3
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt17, i32 0, i32 1
  %35 = load i64, i64* %y18, align 8
  %call19 = call i32 @gx_path_add_line(%struct.gx_path_s* %31, i64 %33, i64 %35)
  store i32 %call19, i32* %code, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %while.body
  %36 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call21 = call i32 @gx_path_close_subpath(%struct.gx_path_s* %36)
  store i32 %call21, i32* %code, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb.20, %sw.bb.14, %sw.bb.2, %sw.bb
  %37 = load i32, i32* %code, align 4
  %tobool22 = icmp ne i32 %37, 0
  br i1 %tobool22, label %if.then, label %if.end.24

if.then:                                          ; preds = %sw.epilog
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  call void @gx_path_release(%struct.gx_path_s* %38)
  %39 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8
  %cmp = icmp eq %struct.gx_path_s* %39, %40
  br i1 %cmp, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  %41 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8
  %42 = bitcast %struct.gx_path_s* %41 to i8*
  %43 = bitcast %struct.gx_path_s* %old to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 144, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then
  %44 = load i32, i32* %code, align 4
  store i32 %44, i32* %retval
  br label %return

if.end.24:                                        ; preds = %sw.epilog
  %45 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %45, i32 0, i32 1
  %46 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  store %struct.segment_s* %46, %struct.segment_s** %pseg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %47, i32 0, i32 9
  %position25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %old, i32 0, i32 9
  %48 = bitcast %struct.gs_fixed_point_s* %position to i8*
  %49 = bitcast %struct.gs_fixed_point_s* %position25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @gx_path_add_curve(%struct.gx_path_s*, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gx_path_merge(%struct.gx_path_s* %ppfrom, %struct.gx_path_s* %ppto) #0 {
entry:
  %ppfrom.addr = alloca %struct.gx_path_s*, align 8
  %ppto.addr = alloca %struct.gx_path_s*, align 8
  %psfrom = alloca %struct.subpath*, align 8
  %psto = alloca %struct.subpath*, align 8
  store %struct.gx_path_s* %ppfrom, %struct.gx_path_s** %ppfrom.addr, align 8
  store %struct.gx_path_s* %ppto, %struct.gx_path_s** %ppto.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8
  %current_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 5
  %1 = load %struct.subpath*, %struct.subpath** %current_subpath, align 8
  store %struct.subpath* %1, %struct.subpath** %psfrom, align 8
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8
  %current_subpath1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 5
  %3 = load %struct.subpath*, %struct.subpath** %current_subpath1, align 8
  store %struct.subpath* %3, %struct.subpath** %psto, align 8
  %4 = load %struct.subpath*, %struct.subpath** %psto, align 8
  %cmp = icmp ne %struct.subpath* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.subpath*, %struct.subpath** %psfrom, align 8
  %last = getelementptr inbounds %struct.subpath, %struct.subpath* %5, i32 0, i32 4
  %6 = load %struct.segment_s*, %struct.segment_s** %last, align 8
  %7 = load %struct.subpath*, %struct.subpath** %psto, align 8
  %last2 = getelementptr inbounds %struct.subpath, %struct.subpath* %7, i32 0, i32 4
  %8 = load %struct.segment_s*, %struct.segment_s** %last2, align 8
  %cmp3 = icmp ne %struct.segment_s* %6, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8
  call void @gx_path_release(%struct.gx_path_s* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppto.addr, align 8
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8
  %12 = bitcast %struct.gx_path_s* %10 to i8*
  %13 = bitcast %struct.gx_path_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 144, i32 8, i1 false)
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppfrom.addr, align 8
  %shares_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 12
  store i8 1, i8* %shares_segments, align 1
  ret i32 0
}

declare void @gx_path_release(%struct.gx_path_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_path_translate(%struct.gx_path_s* %ppath, i64 %dx, i64 %dy) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %dx.addr = alloca i64, align 8
  %dy.addr = alloca i64, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %pc = alloca %struct.curve_segment*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %dx, i64* %dx.addr, align 8
  store i64 %dy, i64* %dy.addr, align 8
  %0 = load i64, i64* %dx.addr, align 8
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %2 = load i64, i64* %x, align 8
  %add = add nsw i64 %2, %0
  store i64 %add, i64* %x, align 8
  %3 = load i64, i64* %dy.addr, align 8
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %bbox1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 1
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %5 = load i64, i64* %y, align 8
  %add3 = add nsw i64 %5, %3
  store i64 %add3, i64* %y, align 8
  %6 = load i64, i64* %dx.addr, align 8
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %bbox4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox4, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %8 = load i64, i64* %x5, align 8
  %add6 = add nsw i64 %8, %6
  store i64 %add6, i64* %x5, align 8
  %9 = load i64, i64* %dy.addr, align 8
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %bbox7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 1
  %q8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox7, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q8, i32 0, i32 1
  %11 = load i64, i64* %y9, align 8
  %add10 = add nsw i64 %11, %9
  store i64 %add10, i64* %y9, align 8
  %12 = load i64, i64* %dx.addr, align 8
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 9
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %14 = load i64, i64* %x11, align 8
  %add12 = add nsw i64 %14, %12
  store i64 %add12, i64* %x11, align 8
  %15 = load i64, i64* %dy.addr, align 8
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 9
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position13, i32 0, i32 1
  %17 = load i64, i64* %y14, align 8
  %add15 = add nsw i64 %17, %15
  store i64 %add15, i64* %y14, align 8
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 4
  %19 = load %struct.subpath*, %struct.subpath** %first_subpath, align 8
  %20 = bitcast %struct.subpath* %19 to %struct.segment_s*
  store %struct.segment_s* %20, %struct.segment_s** %pseg, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %21 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %tobool = icmp ne %struct.segment_s* %21, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %22, i32 0, i32 2
  %23 = load i32, i32* %type, align 4
  switch i32 %23, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %24 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %25 = bitcast %struct.segment_s* %24 to %struct.curve_segment*
  store %struct.curve_segment* %25, %struct.curve_segment** %pc, align 8
  %26 = load i64, i64* %dx.addr, align 8
  %27 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %27, i32 0, i32 4
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  %28 = load i64, i64* %x16, align 8
  %add17 = add nsw i64 %28, %26
  store i64 %add17, i64* %x16, align 8
  %29 = load i64, i64* %dy.addr, align 8
  %30 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %p118 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %30, i32 0, i32 4
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p118, i32 0, i32 1
  %31 = load i64, i64* %y19, align 8
  %add20 = add nsw i64 %31, %29
  store i64 %add20, i64* %y19, align 8
  %32 = load i64, i64* %dx.addr, align 8
  %33 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %p221 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %33, i32 0, i32 5
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p221, i32 0, i32 0
  %34 = load i64, i64* %x22, align 8
  %add23 = add nsw i64 %34, %32
  store i64 %add23, i64* %x22, align 8
  %35 = load i64, i64* %dy.addr, align 8
  %36 = load %struct.curve_segment*, %struct.curve_segment** %pc, align 8
  %p224 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %36, i32 0, i32 5
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p224, i32 0, i32 1
  %37 = load i64, i64* %y25, align 8
  %add26 = add nsw i64 %37, %35
  store i64 %add26, i64* %y25, align 8
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb
  %38 = load i64, i64* %dx.addr, align 8
  %39 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %39, i32 0, i32 3
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %40 = load i64, i64* %x27, align 8
  %add28 = add nsw i64 %40, %38
  store i64 %add28, i64* %x27, align 8
  %41 = load i64, i64* %dy.addr, align 8
  %42 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %pt29 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %42, i32 0, i32 3
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt29, i32 0, i32 1
  %43 = load i64, i64* %y30, align 8
  %add31 = add nsw i64 %43, %41
  store i64 %add31, i64* %y30, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %44 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %44, i32 0, i32 1
  %45 = load %struct.segment_s*, %struct.segment_s** %next, align 8
  store %struct.segment_s* %45, %struct.segment_s** %pseg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_flatten(%struct.gx_path_s* %ppath_old, %struct.gx_path_s* %ppath, double %flatness) #0 {
entry:
  %ppath_old.addr = alloca %struct.gx_path_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %flatness.addr = alloca double, align 8
  %ff = alloca float, align 4
  store %struct.gx_path_s* %ppath_old, %struct.gx_path_s** %ppath_old.addr, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store double %flatness, double* %flatness.addr, align 8
  %0 = load double, double* %flatness.addr, align 8
  %mul = fmul double %0, 4.096000e+03
  %conv = fptrunc double %mul to float
  store float %conv, float* %ff, align 4
  %1 = load float, float* %ff, align 4
  %conv1 = fptosi float %1 to i64
  store i64 %conv1, i64* @scaled_flat, align 8
  %2 = load float, float* %ff, align 4
  %conv2 = fpext float %2 to double
  %mul3 = fmul double %conv2, 4.500000e-01
  %conv4 = fptrunc double %mul3 to float
  store float %conv4, float* @scaled_flat_sq, align 4
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath_old.addr, align 8
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call = call i32 @copy_path(%struct.gx_path_s* %3, %struct.gx_path_s* %4, i32 (%struct.gx_path_s*, i64, i64, i64, i64, i64, i64)* @flatten_curve)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @flatten_curve(%struct.gx_path_s* %ppath, i64 %x1, i64 %y1, i64 %x2, i64 %y2, i64 %x3, i64 %y3) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x1.addr = alloca i64, align 8
  %y1.addr = alloca i64, align 8
  %x2.addr = alloca i64, align 8
  %y2.addr = alloca i64, align 8
  %x3.addr = alloca i64, align 8
  %y3.addr = alloca i64, align 8
  %x0 = alloca i64, align 8
  %y0 = alloca i64, align 8
  %dx3 = alloca i64, align 8
  %dy3 = alloca i64, align 8
  %t = alloca float, align 4
  %d = alloca i64, align 8
  %dist = alloca i64, align 8
  %x01 = alloca i64, align 8
  %y01 = alloca i64, align 8
  %x12 = alloca i64, align 8
  %y12 = alloca i64, align 8
  %x02 = alloca i64, align 8
  %y02 = alloca i64, align 8
  %code = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %x1, i64* %x1.addr, align 8
  store i64 %y1, i64* %y1.addr, align 8
  store i64 %x2, i64* %x2.addr, align 8
  store i64 %y2, i64* %y2.addr, align 8
  store i64 %x3, i64* %x3.addr, align 8
  store i64 %y3, i64* %y3.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 9
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %1 = load i64, i64* %x, align 8
  store i64 %1, i64* %x0, align 8
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 9
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position1, i32 0, i32 1
  %3 = load i64, i64* %y, align 8
  store i64 %3, i64* %y0, align 8
  br label %top

top:                                              ; preds = %if.end.117, %entry
  %4 = load i64, i64* %x3.addr, align 8
  %5 = load i64, i64* %x0, align 8
  %sub = sub nsw i64 %4, %5
  store i64 %sub, i64* %dx3, align 8
  %6 = load i64, i64* %y3.addr, align 8
  %7 = load i64, i64* %y0, align 8
  %sub2 = sub nsw i64 %6, %7
  store i64 %sub2, i64* %dy3, align 8
  %8 = load i64, i64* %dx3, align 8
  %cmp = icmp slt i64 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %top
  %9 = load i64, i64* %dx3, align 8
  %sub3 = sub nsw i64 0, %9
  br label %cond.end

cond.false:                                       ; preds = %top
  %10 = load i64, i64* %dx3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub3, %cond.true ], [ %10, %cond.false ]
  %11 = load i64, i64* %dy3, align 8
  %cmp4 = icmp slt i64 %11, 0
  br i1 %cmp4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %12 = load i64, i64* %dy3, align 8
  %sub6 = sub nsw i64 0, %12
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  %13 = load i64, i64* %dy3, align 8
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i64 [ %sub6, %cond.true.5 ], [ %13, %cond.false.7 ]
  %cmp10 = icmp sge i64 %cond, %cond9
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.8
  %14 = load i64, i64* %dx3, align 8
  %cmp11 = icmp eq i64 %14, 0
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load i64, i64* %dy3, align 8
  %conv = sitofp i64 %15 to float
  %16 = load i64, i64* %dx3, align 8
  %conv13 = sitofp i64 %16 to float
  %div = fdiv float %conv, %conv13
  store float %div, float* %t, align 4
  %17 = load float, float* %t, align 4
  %18 = load float, float* %t, align 4
  %mul = fmul float %17, %18
  %19 = load float, float* @scaled_flat_sq, align 4
  %mul14 = fmul float %mul, %19
  %conv15 = fptosi float %mul14 to i64
  %20 = load i64, i64* @scaled_flat, align 8
  %add = add nsw i64 %conv15, %20
  store i64 %add, i64* %d, align 8
  %21 = load float, float* %t, align 4
  %22 = load i64, i64* %x1.addr, align 8
  %23 = load i64, i64* %x0, align 8
  %sub16 = sub nsw i64 %22, %23
  %conv17 = sitofp i64 %sub16 to float
  %mul18 = fmul float %21, %conv17
  %conv19 = fptosi float %mul18 to i64
  %24 = load i64, i64* %y1.addr, align 8
  %sub20 = sub nsw i64 %conv19, %24
  %25 = load i64, i64* %y0, align 8
  %add21 = add nsw i64 %sub20, %25
  store i64 %add21, i64* %dist, align 8
  %cmp22 = icmp slt i64 %add21, 0
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %if.end
  %26 = load i64, i64* %dist, align 8
  %sub25 = sub nsw i64 0, %26
  br label %cond.end.27

cond.false.26:                                    ; preds = %if.end
  %27 = load i64, i64* %dist, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.24
  %cond28 = phi i64 [ %sub25, %cond.true.24 ], [ %27, %cond.false.26 ]
  %28 = load i64, i64* %d, align 8
  %cmp29 = icmp sle i64 %cond28, %28
  br i1 %cmp29, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %cond.end.27
  %29 = load float, float* %t, align 4
  %30 = load i64, i64* %x2.addr, align 8
  %31 = load i64, i64* %x0, align 8
  %sub31 = sub nsw i64 %30, %31
  %conv32 = sitofp i64 %sub31 to float
  %mul33 = fmul float %29, %conv32
  %conv34 = fptosi float %mul33 to i64
  %32 = load i64, i64* %y2.addr, align 8
  %sub35 = sub nsw i64 %conv34, %32
  %33 = load i64, i64* %y0, align 8
  %add36 = add nsw i64 %sub35, %33
  store i64 %add36, i64* %dist, align 8
  %cmp37 = icmp slt i64 %add36, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %land.lhs.true
  %34 = load i64, i64* %dist, align 8
  %sub40 = sub nsw i64 0, %34
  br label %cond.end.42

cond.false.41:                                    ; preds = %land.lhs.true
  %35 = load i64, i64* %dist, align 8
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi i64 [ %sub40, %cond.true.39 ], [ %35, %cond.false.41 ]
  %36 = load i64, i64* %d, align 8
  %cmp44 = icmp sle i64 %cond43, %36
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end.42
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %38 = load i64, i64* %x3.addr, align 8
  %39 = load i64, i64* %y3.addr, align 8
  %call = call i32 @gx_path_add_line(%struct.gx_path_s* %37, i64 %38, i64 %39)
  store i32 %call, i32* %retval
  br label %return

if.end.47:                                        ; preds = %cond.end.42, %cond.end.27
  br label %if.end.89

if.else:                                          ; preds = %cond.end.8
  %40 = load i64, i64* %dx3, align 8
  %conv48 = sitofp i64 %40 to float
  %41 = load i64, i64* %dy3, align 8
  %conv49 = sitofp i64 %41 to float
  %div50 = fdiv float %conv48, %conv49
  store float %div50, float* %t, align 4
  %42 = load float, float* %t, align 4
  %43 = load float, float* %t, align 4
  %mul51 = fmul float %42, %43
  %44 = load float, float* @scaled_flat_sq, align 4
  %mul52 = fmul float %mul51, %44
  %conv53 = fptosi float %mul52 to i64
  %45 = load i64, i64* @scaled_flat, align 8
  %add54 = add nsw i64 %conv53, %45
  store i64 %add54, i64* %d, align 8
  %46 = load float, float* %t, align 4
  %47 = load i64, i64* %y1.addr, align 8
  %48 = load i64, i64* %y0, align 8
  %sub55 = sub nsw i64 %47, %48
  %conv56 = sitofp i64 %sub55 to float
  %mul57 = fmul float %46, %conv56
  %conv58 = fptosi float %mul57 to i64
  %49 = load i64, i64* %x1.addr, align 8
  %sub59 = sub nsw i64 %conv58, %49
  %50 = load i64, i64* %x0, align 8
  %add60 = add nsw i64 %sub59, %50
  store i64 %add60, i64* %dist, align 8
  %cmp61 = icmp slt i64 %add60, 0
  br i1 %cmp61, label %cond.true.63, label %cond.false.65

cond.true.63:                                     ; preds = %if.else
  %51 = load i64, i64* %dist, align 8
  %sub64 = sub nsw i64 0, %51
  br label %cond.end.66

cond.false.65:                                    ; preds = %if.else
  %52 = load i64, i64* %dist, align 8
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.63
  %cond67 = phi i64 [ %sub64, %cond.true.63 ], [ %52, %cond.false.65 ]
  %53 = load i64, i64* %d, align 8
  %cmp68 = icmp sle i64 %cond67, %53
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.88

land.lhs.true.70:                                 ; preds = %cond.end.66
  %54 = load float, float* %t, align 4
  %55 = load i64, i64* %y2.addr, align 8
  %56 = load i64, i64* %y0, align 8
  %sub71 = sub nsw i64 %55, %56
  %conv72 = sitofp i64 %sub71 to float
  %mul73 = fmul float %54, %conv72
  %conv74 = fptosi float %mul73 to i64
  %57 = load i64, i64* %x2.addr, align 8
  %sub75 = sub nsw i64 %conv74, %57
  %58 = load i64, i64* %x0, align 8
  %add76 = add nsw i64 %sub75, %58
  store i64 %add76, i64* %dist, align 8
  %cmp77 = icmp slt i64 %add76, 0
  br i1 %cmp77, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %land.lhs.true.70
  %59 = load i64, i64* %dist, align 8
  %sub80 = sub nsw i64 0, %59
  br label %cond.end.82

cond.false.81:                                    ; preds = %land.lhs.true.70
  %60 = load i64, i64* %dist, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.79
  %cond83 = phi i64 [ %sub80, %cond.true.79 ], [ %60, %cond.false.81 ]
  %61 = load i64, i64* %d, align 8
  %cmp84 = icmp sle i64 %cond83, %61
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %cond.end.82
  %62 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %63 = load i64, i64* %x3.addr, align 8
  %64 = load i64, i64* %y3.addr, align 8
  %call87 = call i32 @gx_path_add_line(%struct.gx_path_s* %62, i64 %63, i64 %64)
  store i32 %call87, i32* %retval
  br label %return

if.end.88:                                        ; preds = %cond.end.82, %cond.end.66
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.47
  %65 = load i64, i64* %x0, align 8
  %66 = load i64, i64* %x1.addr, align 8
  %add90 = add nsw i64 %65, %66
  %shr = ashr i64 %add90, 1
  store i64 %shr, i64* %x01, align 8
  %67 = load i64, i64* %y0, align 8
  %68 = load i64, i64* %y1.addr, align 8
  %add91 = add nsw i64 %67, %68
  %shr92 = ashr i64 %add91, 1
  store i64 %shr92, i64* %y01, align 8
  %69 = load i64, i64* %x1.addr, align 8
  %70 = load i64, i64* %x2.addr, align 8
  %add93 = add nsw i64 %69, %70
  %shr94 = ashr i64 %add93, 1
  store i64 %shr94, i64* %x12, align 8
  %71 = load i64, i64* %y1.addr, align 8
  %72 = load i64, i64* %y2.addr, align 8
  %add95 = add nsw i64 %71, %72
  %shr96 = ashr i64 %add95, 1
  store i64 %shr96, i64* %y12, align 8
  %73 = load i64, i64* %x01, align 8
  %74 = load i64, i64* %x12, align 8
  %add97 = add nsw i64 %73, %74
  %shr98 = ashr i64 %add97, 1
  store i64 %shr98, i64* %x02, align 8
  %75 = load i64, i64* %y01, align 8
  %76 = load i64, i64* %y12, align 8
  %add99 = add nsw i64 %75, %76
  %shr100 = ashr i64 %add99, 1
  store i64 %shr100, i64* %y02, align 8
  %77 = load i64, i64* %x2.addr, align 8
  %78 = load i64, i64* %x3.addr, align 8
  %add101 = add nsw i64 %77, %78
  %shr102 = ashr i64 %add101, 1
  store i64 %shr102, i64* %x2.addr, align 8
  %79 = load i64, i64* %y2.addr, align 8
  %80 = load i64, i64* %y3.addr, align 8
  %add103 = add nsw i64 %79, %80
  %shr104 = ashr i64 %add103, 1
  store i64 %shr104, i64* %y2.addr, align 8
  %81 = load i64, i64* %x12, align 8
  %82 = load i64, i64* %x2.addr, align 8
  %add105 = add nsw i64 %81, %82
  %shr106 = ashr i64 %add105, 1
  store i64 %shr106, i64* %x1.addr, align 8
  %83 = load i64, i64* %y12, align 8
  %84 = load i64, i64* %y2.addr, align 8
  %add107 = add nsw i64 %83, %84
  %shr108 = ashr i64 %add107, 1
  store i64 %shr108, i64* %y1.addr, align 8
  %85 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %86 = load i64, i64* %x01, align 8
  %87 = load i64, i64* %y01, align 8
  %88 = load i64, i64* %x02, align 8
  %89 = load i64, i64* %y02, align 8
  %90 = load i64, i64* %x02, align 8
  %91 = load i64, i64* %x1.addr, align 8
  %add109 = add nsw i64 %90, %91
  %shr110 = ashr i64 %add109, 1
  store i64 %shr110, i64* %x0, align 8
  %92 = load i64, i64* %y02, align 8
  %93 = load i64, i64* %y1.addr, align 8
  %add111 = add nsw i64 %92, %93
  %shr112 = ashr i64 %add111, 1
  store i64 %shr112, i64* %y0, align 8
  %call113 = call i32 @flatten_curve(%struct.gx_path_s* %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %shr110, i64 %shr112)
  store i32 %call113, i32* %code, align 4
  %94 = load i32, i32* %code, align 4
  %cmp114 = icmp slt i32 %94, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end.89
  %95 = load i32, i32* %code, align 4
  store i32 %95, i32* %retval
  br label %return

if.end.117:                                       ; preds = %if.end.89
  br label %top

return:                                           ; preds = %if.then.116, %if.then.86, %if.then.46, %if.then.12
  %96 = load i32, i32* %retval
  ret i32 %96
}

declare void @gx_path_init(%struct.gx_path_s*, %struct.gs_memory_procs*) #2

declare i32 @gx_path_add_point(%struct.gx_path_s*, i64, i64) #2

declare i32 @gx_path_add_line(%struct.gx_path_s*, i64, i64) #2

declare i32 @gx_path_close_subpath(%struct.gx_path_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
