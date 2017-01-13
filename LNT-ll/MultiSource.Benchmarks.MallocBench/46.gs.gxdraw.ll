; ModuleID = './MultiSource.Benchmarks.MallocBench/46.gs.gxdraw.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

; Function Attrs: nounwind uwtable
define i32 @gz_fill_rectangle(i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdevc, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %darker = alloca i64, align 8
  %lighter = alloca i64, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %tile = alloca %struct.gx_bitmap_s*, align 8
  %code = alloca i32, align 4
  %xmod = alloca i32, align 4
  %ymod = alloca i32, align 4
  %raster = alloca i32, align 4
  %tdata = alloca i8*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load i64, i64* %color1, align 8
  store i64 %1, i64* %darker, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 22
  %3 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %4, %struct.gx_device_s** %dev, align 8
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 2
  %6 = load i32, i32* %halftone_level, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 1
  %8 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %8, i32 0, i32 7
  %9 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %y.addr, align 4
  %13 = load i32, i32* %w.addr, align 4
  %14 = load i32, i32* %h.addr, align 4
  %15 = load i64, i64* %darker, align 8
  %call = call i32 %9(%struct.gx_device_s* %10, i32 %11, i32 %12, i32 %13, i32 %14, i64 %15)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %16, i32 0, i32 1
  %17 = load i64, i64* %color2, align 8
  store i64 %17, i64* %lighter, align 8
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %tile1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 3
  %19 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile1, align 8
  store %struct.gx_bitmap_s* %19, %struct.gx_bitmap_s** %tile, align 8
  %20 = load i32, i32* %w.addr, align 4
  %21 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %width = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %21, i32 0, i32 2
  %22 = load i32, i32* %width, align 4
  %cmp2 = icmp sle i32 %20, %22
  br i1 %cmp2, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %23 = load i32, i32* %h.addr, align 4
  %24 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %height = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %24, i32 0, i32 3
  %25 = load i32, i32* %height, align 4
  %cmp3 = icmp sle i32 %23, %25
  br i1 %cmp3, label %if.then.4, label %if.end.23

if.then.4:                                        ; preds = %land.lhs.true
  %26 = load i32, i32* %x.addr, align 4
  %27 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %width5 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %27, i32 0, i32 2
  %28 = load i32, i32* %width5, align 4
  %rem = srem i32 %26, %28
  store i32 %rem, i32* %xmod, align 4
  %29 = load i32, i32* %xmod, align 4
  %30 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %29, %30
  %31 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %width6 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %31, i32 0, i32 2
  %32 = load i32, i32* %width6, align 4
  %cmp7 = icmp sle i32 %add, %32
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.22

land.lhs.true.8:                                  ; preds = %if.then.4
  %33 = load i32, i32* %y.addr, align 4
  %34 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %height9 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %34, i32 0, i32 3
  %35 = load i32, i32* %height9, align 4
  %rem10 = srem i32 %33, %35
  store i32 %rem10, i32* %ymod, align 4
  %36 = load i32, i32* %h.addr, align 4
  %add11 = add nsw i32 %rem10, %36
  %37 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %height12 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %37, i32 0, i32 3
  %38 = load i32, i32* %height12, align 4
  %cmp13 = icmp sle i32 %add11, %38
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %land.lhs.true.8
  %39 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %raster15 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %39, i32 0, i32 1
  %40 = load i32, i32* %raster15, align 4
  store i32 %40, i32* %raster, align 4
  %41 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %data = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %41, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8
  %43 = load i32, i32* %ymod, align 4
  %44 = load i32, i32* %raster, align 4
  %mul = mul nsw i32 %43, %44
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  store i8* %add.ptr, i8** %tdata, align 8
  %45 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level16 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %45, i32 0, i32 2
  %46 = load i32, i32* %halftone_level16, align 4
  %cmp17 = icmp slt i32 %46, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 1
  %48 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs18, align 8
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %48, i32 0, i32 10
  %49 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %copy_color, align 8
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %51 = load i8*, i8** %tdata, align 8
  %52 = load i32, i32* %xmod, align 4
  %53 = load i32, i32* %raster, align 4
  %54 = load i32, i32* %x.addr, align 4
  %55 = load i32, i32* %y.addr, align 4
  %56 = load i32, i32* %w.addr, align 4
  %57 = load i32, i32* %h.addr, align 4
  %call19 = call i32 %49(%struct.gx_device_s* %50, i8* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 1
  %59 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs20, align 8
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %59, i32 0, i32 9
  %60 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %62 = load i8*, i8** %tdata, align 8
  %63 = load i32, i32* %xmod, align 4
  %64 = load i32, i32* %raster, align 4
  %65 = load i32, i32* %x.addr, align 4
  %66 = load i32, i32* %y.addr, align 4
  %67 = load i32, i32* %w.addr, align 4
  %68 = load i32, i32* %h.addr, align 4
  %69 = load i64, i64* %darker, align 8
  %70 = load i64, i64* %lighter, align 8
  %call21 = call i32 %60(%struct.gx_device_s* %61, i8* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i64 %69, i64 %70)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call19, %cond.true ], [ %call21, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.8, %if.then.4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %if.end
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level24 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %71, i32 0, i32 2
  %72 = load i32, i32* %halftone_level24, align 4
  %cmp25 = icmp slt i32 %72, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store i64 -1, i64* %lighter, align 8
  store i64 -1, i64* %darker, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 1
  %74 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs28, align 8
  %tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %74, i32 0, i32 8
  %75 = load i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)** %tile_rectangle, align 8
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %77 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %78 = load i32, i32* %x.addr, align 4
  %79 = load i32, i32* %y.addr, align 4
  %80 = load i32, i32* %w.addr, align 4
  %81 = load i32, i32* %h.addr, align 4
  %82 = load i64, i64* %darker, align 8
  %83 = load i64, i64* %lighter, align 8
  %call29 = call i32 %75(%struct.gx_device_s* %76, %struct.gx_bitmap_s* %77, i32 %78, i32 %79, i32 %80, i32 %81, i64 %82, i64 %83)
  store i32 %call29, i32* %code, align 4
  %84 = load i32, i32* %code, align 4
  %cmp30 = icmp slt i32 %84, 0
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.27
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %86 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile, align 8
  %87 = load i32, i32* %x.addr, align 4
  %88 = load i32, i32* %y.addr, align 4
  %89 = load i32, i32* %w.addr, align 4
  %90 = load i32, i32* %h.addr, align 4
  %91 = load i64, i64* %darker, align 8
  %92 = load i64, i64* %lighter, align 8
  %call32 = call i32 @gx_default_tile_rectangle(%struct.gx_device_s* %85, %struct.gx_bitmap_s* %86, i32 %87, i32 %88, i32 %89, i32 %90, i64 %91, i64 %92)
  store i32 %call32, i32* %code, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.27
  %93 = load i32, i32* %code, align 4
  store i32 %93, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %cond.end, %if.then
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_bitmap_s* %tile, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tile.addr = alloca %struct.gx_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %raster = alloca i32, align 4
  %ex = alloca i32, align 4
  %ey = alloca i32, align 4
  %fex = alloca i32, align 4
  %fey = alloca i32, align 4
  %irx = alloca i32, align 4
  %ry = alloca i32, align 4
  %icw = alloca i32, align 4
  %ch = alloca i32, align 4
  %row = alloca i8*, align 8
  %proc_mono = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, align 8
  %proc_color = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, align 8
  %color_halftone = alloca i32, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gx_bitmap_s* %tile, %struct.gx_bitmap_s** %tile.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i64 %color0, i64* %color0.addr, align 8
  store i64 %color1, i64* %color1.addr, align 8
  %0 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile.addr, align 8
  %width1 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %0, i32 0, i32 2
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile.addr, align 8
  %height2 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %2, i32 0, i32 3
  %3 = load i32, i32* %height2, align 4
  store i32 %3, i32* %height, align 4
  %4 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile.addr, align 8
  %raster3 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %4, i32 0, i32 1
  %5 = load i32, i32* %raster3, align 4
  store i32 %5, i32* %raster, align 4
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %ex, align 4
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* %h.addr, align 4
  %add4 = add nsw i32 %8, %9
  store i32 %add4, i32* %ey, align 4
  %10 = load i32, i32* %ex, align 4
  %11 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %10, %11
  store i32 %sub, i32* %fex, align 4
  %12 = load i32, i32* %ey, align 4
  %13 = load i32, i32* %height, align 4
  %sub5 = sub nsw i32 %12, %13
  store i32 %sub5, i32* %fey, align 4
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %width, align 4
  %sub6 = sub nsw i32 %15, 1
  %and = and i32 %14, %sub6
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %width, align 4
  %sub7 = sub nsw i32 %17, 1
  %and8 = and i32 %16, %sub7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %width, align 4
  %rem = srem i32 %18, %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and8, %cond.true ], [ %rem, %cond.false ]
  store i32 %cond, i32* %irx, align 4
  %20 = load i32, i32* %y.addr, align 4
  %21 = load i32, i32* %height, align 4
  %rem9 = srem i32 %20, %21
  store i32 %rem9, i32* %ry, align 4
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %irx, align 4
  %sub10 = sub nsw i32 %22, %23
  store i32 %sub10, i32* %icw, align 4
  %24 = load i32, i32* %height, align 4
  %25 = load i32, i32* %ry, align 4
  %sub11 = sub nsw i32 %24, %25
  store i32 %sub11, i32* %ch, align 4
  %26 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile.addr, align 8
  %data = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = load i32, i32* %ry, align 4
  %29 = load i32, i32* %raster, align 4
  %mul = mul nsw i32 %28, %29
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8
  %30 = load i64, i64* %color0.addr, align 8
  %cmp12 = icmp eq i64 %30, -1
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %31 = load i64, i64* %color1.addr, align 8
  %cmp13 = icmp eq i64 %31, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %32 = phi i1 [ false, %cond.end ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  store i32 %land.ext, i32* %color_halftone, align 4
  %33 = load i32, i32* %color_halftone, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 1
  %35 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %35, i32 0, i32 10
  %36 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %copy_color, align 8
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* %36, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %proc_color, align 8
  br label %if.end

if.else:                                          ; preds = %land.end
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %procs14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 1
  %38 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs14, align 8
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %38, i32 0, i32 9
  %39 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* %39, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %40 = load i32, i32* %icw, align 4
  %41 = load i32, i32* %w.addr, align 4
  %cmp15 = icmp sgt i32 %40, %41
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %42 = load i32, i32* %w.addr, align 4
  store i32 %42, i32* %icw, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end
  %43 = load i32, i32* %ch, align 4
  %44 = load i32, i32* %h.addr, align 4
  %cmp18 = icmp sgt i32 %43, %44
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %45 = load i32, i32* %h.addr, align 4
  store i32 %45, i32* %ch, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %46 = load i32, i32* %y.addr, align 4
  store i32 %46, i32* %cy, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end.55, %if.end.20
  %47 = load i32, i32* %cy, align 4
  %48 = load i32, i32* %ey, align 4
  %cmp21 = icmp slt i32 %47, %48
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %color_halftone, align 4
  %tobool22 = icmp ne i32 %49, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %for.body
  %50 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %proc_color, align 8
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %52 = load i8*, i8** %row, align 8
  %53 = load i32, i32* %irx, align 4
  %54 = load i32, i32* %raster, align 4
  %55 = load i32, i32* %x.addr, align 4
  %56 = load i32, i32* %cy, align 4
  %57 = load i32, i32* %icw, align 4
  %58 = load i32, i32* %ch, align 4
  %call = call i32 %50(%struct.gx_device_s* %51, i8* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  br label %cond.end.26

cond.false.24:                                    ; preds = %for.body
  %59 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %61 = load i8*, i8** %row, align 8
  %62 = load i32, i32* %irx, align 4
  %63 = load i32, i32* %raster, align 4
  %64 = load i32, i32* %x.addr, align 4
  %65 = load i32, i32* %cy, align 4
  %66 = load i32, i32* %icw, align 4
  %67 = load i32, i32* %ch, align 4
  %68 = load i64, i64* %color0.addr, align 8
  %69 = load i64, i64* %color1.addr, align 8
  %call25 = call i32 %59(%struct.gx_device_s* %60, i8* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i64 %68, i64 %69)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i32 [ %call, %cond.true.23 ], [ %call25, %cond.false.24 ]
  %70 = load i32, i32* %x.addr, align 4
  %71 = load i32, i32* %icw, align 4
  %add28 = add nsw i32 %70, %71
  store i32 %add28, i32* %cx, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.35, %cond.end.26
  %72 = load i32, i32* %cx, align 4
  %73 = load i32, i32* %fex, align 4
  %cmp29 = icmp sle i32 %72, %73
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %74 = load i32, i32* %color_halftone, align 4
  %tobool30 = icmp ne i32 %74, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %while.body
  %75 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %proc_color, align 8
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %77 = load i8*, i8** %row, align 8
  %78 = load i32, i32* %raster, align 4
  %79 = load i32, i32* %cx, align 4
  %80 = load i32, i32* %cy, align 4
  %81 = load i32, i32* %width, align 4
  %82 = load i32, i32* %ch, align 4
  %call32 = call i32 %75(%struct.gx_device_s* %76, i8* %77, i32 0, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  br label %cond.end.35

cond.false.33:                                    ; preds = %while.body
  %83 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %85 = load i8*, i8** %row, align 8
  %86 = load i32, i32* %raster, align 4
  %87 = load i32, i32* %cx, align 4
  %88 = load i32, i32* %cy, align 4
  %89 = load i32, i32* %width, align 4
  %90 = load i32, i32* %ch, align 4
  %91 = load i64, i64* %color0.addr, align 8
  %92 = load i64, i64* %color1.addr, align 8
  %call34 = call i32 %83(%struct.gx_device_s* %84, i8* %85, i32 0, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i64 %91, i64 %92)
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.31
  %cond36 = phi i32 [ %call32, %cond.true.31 ], [ %call34, %cond.false.33 ]
  %93 = load i32, i32* %width, align 4
  %94 = load i32, i32* %cx, align 4
  %add37 = add nsw i32 %94, %93
  store i32 %add37, i32* %cx, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %95 = load i32, i32* %cx, align 4
  %96 = load i32, i32* %ex, align 4
  %cmp38 = icmp slt i32 %95, %96
  br i1 %cmp38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %while.end
  %97 = load i32, i32* %color_halftone, align 4
  %tobool40 = icmp ne i32 %97, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.44

cond.true.41:                                     ; preds = %if.then.39
  %98 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %proc_color, align 8
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %100 = load i8*, i8** %row, align 8
  %101 = load i32, i32* %raster, align 4
  %102 = load i32, i32* %cx, align 4
  %103 = load i32, i32* %cy, align 4
  %104 = load i32, i32* %ex, align 4
  %105 = load i32, i32* %cx, align 4
  %sub42 = sub nsw i32 %104, %105
  %106 = load i32, i32* %ch, align 4
  %call43 = call i32 %98(%struct.gx_device_s* %99, i8* %100, i32 0, i32 %101, i32 %102, i32 %103, i32 %sub42, i32 %106)
  br label %cond.end.47

cond.false.44:                                    ; preds = %if.then.39
  %107 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8
  %109 = load i8*, i8** %row, align 8
  %110 = load i32, i32* %raster, align 4
  %111 = load i32, i32* %cx, align 4
  %112 = load i32, i32* %cy, align 4
  %113 = load i32, i32* %ex, align 4
  %114 = load i32, i32* %cx, align 4
  %sub45 = sub nsw i32 %113, %114
  %115 = load i32, i32* %ch, align 4
  %116 = load i64, i64* %color0.addr, align 8
  %117 = load i64, i64* %color1.addr, align 8
  %call46 = call i32 %107(%struct.gx_device_s* %108, i8* %109, i32 0, i32 %110, i32 %111, i32 %112, i32 %sub45, i32 %115, i64 %116, i64 %117)
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.true.41
  %cond48 = phi i32 [ %call43, %cond.true.41 ], [ %call46, %cond.false.44 ]
  br label %if.end.49

if.end.49:                                        ; preds = %cond.end.47, %while.end
  %118 = load i32, i32* %ch, align 4
  %119 = load i32, i32* %cy, align 4
  %add50 = add nsw i32 %119, %118
  store i32 %add50, i32* %cy, align 4
  %120 = load i32, i32* %cy, align 4
  %121 = load i32, i32* %fey, align 4
  %cmp51 = icmp sgt i32 %120, %121
  br i1 %cmp51, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %if.end.49
  %122 = load i32, i32* %ey, align 4
  %123 = load i32, i32* %cy, align 4
  %sub53 = sub nsw i32 %122, %123
  br label %cond.end.55

cond.false.54:                                    ; preds = %if.end.49
  %124 = load i32, i32* %height, align 4
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.52
  %cond56 = phi i32 [ %sub53, %cond.true.52 ], [ %124, %cond.false.54 ]
  store i32 %cond56, i32* %ch, align 4
  %125 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %tile.addr, align 8
  %data57 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %125, i32 0, i32 0
  %126 = load i8*, i8** %data57, align 8
  store i8* %126, i8** %row, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gz_fill_trapezoid_fixed(i64 %fx0, i64 %fw0, i64 %fy0, i64 %fx1, i64 %fw1, i64 %fh, i32 %swap_axes, %struct.gx_device_color_s* %pdevc, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %fx0.addr = alloca i64, align 8
  %fw0.addr = alloca i64, align 8
  %fy0.addr = alloca i64, align 8
  %fx1.addr = alloca i64, align 8
  %fw1.addr = alloca i64, align 8
  %fh.addr = alloca i64, align 8
  %swap_axes.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %x0 = alloca i32, align 4
  %fx0r = alloca i64, align 8
  %w0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %fx1r = alloca i64, align 8
  %w1 = alloca i32, align 4
  %fy1 = alloca i64, align 8
  %y1 = alloca i32, align 4
  %h = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %xl = alloca i32, align 4
  %fxl = alloca i32, align 4
  %dxl = alloca i32, align 4
  %dxl1 = alloca i32, align 4
  %dxlf = alloca i32, align 4
  %xr = alloca i32, align 4
  %fxr = alloca i32, align 4
  %dxr = alloca i32, align 4
  %dxr1 = alloca i32, align 4
  %dxrf = alloca i32, align 4
  %y = alloca i32, align 4
  %rxl = alloca i32, align 4
  %rxr = alloca i32, align 4
  %ry = alloca i32, align 4
  store i64 %fx0, i64* %fx0.addr, align 8
  store i64 %fw0, i64* %fw0.addr, align 8
  store i64 %fy0, i64* %fy0.addr, align 8
  store i64 %fx1, i64* %fx1.addr, align 8
  store i64 %fw1, i64* %fw1.addr, align 8
  store i64 %fh, i64* %fh.addr, align 8
  store i32 %swap_axes, i32* %swap_axes.addr, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load i64, i64* %fx0.addr, align 8
  %shr = ashr i64 %0, 12
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %x0, align 4
  %1 = load i64, i64* %fx0.addr, align 8
  %2 = load i64, i64* %fw0.addr, align 8
  %add = add nsw i64 %1, %2
  store i64 %add, i64* %fx0r, align 8
  %3 = load i64, i64* %fx0r, align 8
  %add1 = add nsw i64 %3, 4095
  %shr2 = ashr i64 %add1, 12
  %conv3 = trunc i64 %shr2 to i32
  %4 = load i32, i32* %x0, align 4
  %sub = sub nsw i32 %conv3, %4
  store i32 %sub, i32* %w0, align 4
  %5 = load i64, i64* %fy0.addr, align 8
  %shr4 = ashr i64 %5, 12
  %conv5 = trunc i64 %shr4 to i32
  store i32 %conv5, i32* %y0, align 4
  %6 = load i64, i64* %fx1.addr, align 8
  %shr6 = ashr i64 %6, 12
  %conv7 = trunc i64 %shr6 to i32
  store i32 %conv7, i32* %x1, align 4
  %7 = load i64, i64* %fx1.addr, align 8
  %8 = load i64, i64* %fw1.addr, align 8
  %add8 = add nsw i64 %7, %8
  store i64 %add8, i64* %fx1r, align 8
  %9 = load i64, i64* %fx1r, align 8
  %add9 = add nsw i64 %9, 4095
  %shr10 = ashr i64 %add9, 12
  %conv11 = trunc i64 %shr10 to i32
  %10 = load i32, i32* %x1, align 4
  %sub12 = sub nsw i32 %conv11, %10
  store i32 %sub12, i32* %w1, align 4
  %11 = load i64, i64* %fy0.addr, align 8
  %12 = load i64, i64* %fh.addr, align 8
  %add13 = add nsw i64 %11, %12
  store i64 %add13, i64* %fy1, align 8
  %13 = load i64, i64* %fy1, align 8
  %add14 = add nsw i64 %13, 4095
  %shr15 = ashr i64 %add14, 12
  %conv16 = trunc i64 %shr15 to i32
  store i32 %conv16, i32* %y1, align 4
  %14 = load i32, i32* %y1, align 4
  %15 = load i32, i32* %y0, align 4
  %sub17 = sub nsw i32 %14, %15
  store i32 %sub17, i32* %h, align 4
  %16 = load i32, i32* %w0, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %17 = load i32, i32* %w1, align 4
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %18 = load i32, i32* %h, align 4
  %cmp21 = icmp sle i32 %18, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %19 = load i32, i32* %swap_axes.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end.31, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %if.end
  %20 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %20, i32 0, i32 2
  %21 = load i32, i32* %halftone_level, align 4
  %cmp24 = icmp eq i32 %21, 0
  br i1 %cmp24, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %land.lhs.true.23
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 22
  %23 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %23, i32 0, i32 0
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %24, %struct.gx_device_s** %dev, align 8
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 1
  %26 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %fill_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %26, i32 0, i32 12
  %27 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)** %fill_trapezoid, align 8
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %29 = load i32, i32* %x0, align 4
  %30 = load i32, i32* %y0, align 4
  %31 = load i32, i32* %w0, align 4
  %32 = load i32, i32* %x1, align 4
  %33 = load i32, i32* %y1, align 4
  %34 = load i32, i32* %w1, align 4
  %35 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %35, i32 0, i32 0
  %36 = load i64, i64* %color1, align 8
  %call = call i32 %27(%struct.gx_device_s* %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i64 %36)
  %cmp27 = icmp sge i32 %call, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true.23, %if.end
  %37 = load i32, i32* %x1, align 4
  %38 = load i32, i32* %x0, align 4
  %sub32 = sub nsw i32 %37, %38
  store i32 %sub32, i32* %dxlf, align 4
  %39 = load i32, i32* %x1, align 4
  %40 = load i32, i32* %w1, align 4
  %add33 = add nsw i32 %39, %40
  %41 = load i32, i32* %x0, align 4
  %42 = load i32, i32* %w0, align 4
  %add34 = add nsw i32 %41, %42
  %sub35 = sub nsw i32 %add33, %add34
  store i32 %sub35, i32* %dxrf, align 4
  %43 = load i32, i32* %y0, align 4
  store i32 %43, i32* %y, align 4
  %44 = load i32, i32* %dxlf, align 4
  %cmp36 = icmp sge i32 %44, 0
  br i1 %cmp36, label %if.then.38, label %if.else.45

if.then.38:                                       ; preds = %if.end.31
  %45 = load i32, i32* %dxlf, align 4
  %46 = load i32, i32* %h, align 4
  %cmp39 = icmp sge i32 %45, %46
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.then.38
  %47 = load i32, i32* %dxlf, align 4
  %48 = load i32, i32* %h, align 4
  %div = sdiv i32 %47, %48
  store i32 %div, i32* %dxl, align 4
  %add42 = add nsw i32 %div, 1
  store i32 %add42, i32* %dxl1, align 4
  %49 = load i32, i32* %dxl, align 4
  %50 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %49, %50
  %51 = load i32, i32* %dxlf, align 4
  %sub43 = sub nsw i32 %51, %mul
  store i32 %sub43, i32* %dxlf, align 4
  br label %if.end.44

if.else:                                          ; preds = %if.then.38
  store i32 0, i32* %dxl, align 4
  store i32 1, i32* %dxl1, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.41
  br label %if.end.57

if.else.45:                                       ; preds = %if.end.31
  %52 = load i32, i32* %dxlf, align 4
  %53 = load i32, i32* %h, align 4
  %sub46 = sub nsw i32 0, %53
  %cmp47 = icmp sle i32 %52, %sub46
  br i1 %cmp47, label %if.then.49, label %if.else.54

if.then.49:                                       ; preds = %if.else.45
  %54 = load i32, i32* %dxlf, align 4
  %55 = load i32, i32* %h, align 4
  %div50 = sdiv i32 %54, %55
  store i32 %div50, i32* %dxl, align 4
  %sub51 = sub nsw i32 %div50, 1
  store i32 %sub51, i32* %dxl1, align 4
  %56 = load i32, i32* %dxl, align 4
  %57 = load i32, i32* %h, align 4
  %mul52 = mul nsw i32 %56, %57
  %58 = load i32, i32* %dxlf, align 4
  %sub53 = sub nsw i32 %mul52, %58
  store i32 %sub53, i32* %dxlf, align 4
  br label %if.end.56

if.else.54:                                       ; preds = %if.else.45
  store i32 0, i32* %dxl, align 4
  store i32 -1, i32* %dxl1, align 4
  %59 = load i32, i32* %dxlf, align 4
  %sub55 = sub nsw i32 0, %59
  store i32 %sub55, i32* %dxlf, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.then.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.44
  %60 = load i32, i32* %dxrf, align 4
  %cmp58 = icmp sge i32 %60, 0
  br i1 %cmp58, label %if.then.60, label %if.else.86

if.then.60:                                       ; preds = %if.end.57
  %61 = load i32, i32* %dxrf, align 4
  %62 = load i32, i32* %h, align 4
  %cmp61 = icmp sge i32 %61, %62
  br i1 %cmp61, label %if.then.63, label %if.else.68

if.then.63:                                       ; preds = %if.then.60
  %63 = load i32, i32* %dxrf, align 4
  %64 = load i32, i32* %h, align 4
  %div64 = sdiv i32 %63, %64
  store i32 %div64, i32* %dxr, align 4
  %add65 = add nsw i32 %div64, 1
  store i32 %add65, i32* %dxr1, align 4
  %65 = load i32, i32* %dxr, align 4
  %66 = load i32, i32* %h, align 4
  %mul66 = mul nsw i32 %65, %66
  %67 = load i32, i32* %dxrf, align 4
  %sub67 = sub nsw i32 %67, %mul66
  store i32 %sub67, i32* %dxrf, align 4
  br label %if.end.85

if.else.68:                                       ; preds = %if.then.60
  %68 = load i32, i32* %dxl, align 4
  %cmp69 = icmp eq i32 %68, 0
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.84

land.lhs.true.71:                                 ; preds = %if.else.68
  %69 = load i32, i32* %dxlf, align 4
  %cmp72 = icmp eq i32 %69, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.84

land.lhs.true.74:                                 ; preds = %land.lhs.true.71
  %70 = load i32, i32* %dxrf, align 4
  %cmp75 = icmp eq i32 %70, 0
  br i1 %cmp75, label %if.then.77, label %if.end.84

if.then.77:                                       ; preds = %land.lhs.true.74
  %71 = load i32, i32* %swap_axes.addr, align 4
  %tobool78 = icmp ne i32 %71, 0
  br i1 %tobool78, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %if.then.77
  %72 = load i32, i32* %y0, align 4
  %73 = load i32, i32* %x0, align 4
  %74 = load i32, i32* %h, align 4
  %75 = load i32, i32* %w0, align 4
  %76 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call80 = call i32 @gz_fill_rectangle(i32 %72, i32 %73, i32 %74, i32 %75, %struct.gx_device_color_s* %76, %struct.gs_state_s* %77)
  br label %if.end.83

if.else.81:                                       ; preds = %if.then.77
  %78 = load i32, i32* %x0, align 4
  %79 = load i32, i32* %y0, align 4
  %80 = load i32, i32* %w0, align 4
  %81 = load i32, i32* %h, align 4
  %82 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call82 = call i32 @gz_fill_rectangle(i32 %78, i32 %79, i32 %80, i32 %81, %struct.gx_device_color_s* %82, %struct.gs_state_s* %83)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.79
  store i32 0, i32* %retval
  br label %return

if.end.84:                                        ; preds = %land.lhs.true.74, %land.lhs.true.71, %if.else.68
  store i32 0, i32* %dxr, align 4
  store i32 1, i32* %dxr1, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.63
  br label %if.end.98

if.else.86:                                       ; preds = %if.end.57
  %84 = load i32, i32* %dxrf, align 4
  %85 = load i32, i32* %h, align 4
  %sub87 = sub nsw i32 0, %85
  %cmp88 = icmp sle i32 %84, %sub87
  br i1 %cmp88, label %if.then.90, label %if.else.95

if.then.90:                                       ; preds = %if.else.86
  %86 = load i32, i32* %dxrf, align 4
  %87 = load i32, i32* %h, align 4
  %div91 = sdiv i32 %86, %87
  store i32 %div91, i32* %dxr, align 4
  %sub92 = sub nsw i32 %div91, 1
  store i32 %sub92, i32* %dxr1, align 4
  %88 = load i32, i32* %dxr, align 4
  %89 = load i32, i32* %h, align 4
  %mul93 = mul nsw i32 %88, %89
  %90 = load i32, i32* %dxrf, align 4
  %sub94 = sub nsw i32 %mul93, %90
  store i32 %sub94, i32* %dxrf, align 4
  br label %if.end.97

if.else.95:                                       ; preds = %if.else.86
  store i32 0, i32* %dxr, align 4
  store i32 -1, i32* %dxr1, align 4
  %91 = load i32, i32* %dxrf, align 4
  %sub96 = sub nsw i32 0, %91
  store i32 %sub96, i32* %dxrf, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.95, %if.then.90
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.85
  %92 = load i32, i32* %x0, align 4
  store i32 %92, i32* %xl, align 4
  %93 = load i32, i32* %dxlf, align 4
  %shr99 = ashr i32 %93, 1
  store i32 %shr99, i32* %fxl, align 4
  %94 = load i32, i32* %x0, align 4
  %95 = load i32, i32* %w0, align 4
  %add100 = add nsw i32 %94, %95
  store i32 %add100, i32* %xr, align 4
  %96 = load i32, i32* %dxrf, align 4
  %shr101 = ashr i32 %96, 1
  store i32 %shr101, i32* %fxr, align 4
  %97 = load i32, i32* %xl, align 4
  store i32 %97, i32* %rxl, align 4
  %98 = load i32, i32* %xr, align 4
  store i32 %98, i32* %rxr, align 4
  %99 = load i32, i32* %y, align 4
  store i32 %99, i32* %ry, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.98
  %100 = load i32, i32* %xl, align 4
  %101 = load i32, i32* %rxl, align 4
  %cmp102 = icmp ne i32 %100, %101
  br i1 %cmp102, label %if.then.107, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %do.body
  %102 = load i32, i32* %xr, align 4
  %103 = load i32, i32* %rxr, align 4
  %cmp105 = icmp ne i32 %102, %103
  br i1 %cmp105, label %if.then.107, label %if.end.118

if.then.107:                                      ; preds = %lor.lhs.false.104, %do.body
  %104 = load i32, i32* %swap_axes.addr, align 4
  %tobool108 = icmp ne i32 %104, 0
  br i1 %tobool108, label %if.then.109, label %if.else.113

if.then.109:                                      ; preds = %if.then.107
  %105 = load i32, i32* %ry, align 4
  %106 = load i32, i32* %rxl, align 4
  %107 = load i32, i32* %y, align 4
  %108 = load i32, i32* %ry, align 4
  %sub110 = sub nsw i32 %107, %108
  %109 = load i32, i32* %rxr, align 4
  %110 = load i32, i32* %rxl, align 4
  %sub111 = sub nsw i32 %109, %110
  %111 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %112 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call112 = call i32 @gz_fill_rectangle(i32 %105, i32 %106, i32 %sub110, i32 %sub111, %struct.gx_device_color_s* %111, %struct.gs_state_s* %112)
  br label %if.end.117

if.else.113:                                      ; preds = %if.then.107
  %113 = load i32, i32* %rxl, align 4
  %114 = load i32, i32* %ry, align 4
  %115 = load i32, i32* %rxr, align 4
  %116 = load i32, i32* %rxl, align 4
  %sub114 = sub nsw i32 %115, %116
  %117 = load i32, i32* %y, align 4
  %118 = load i32, i32* %ry, align 4
  %sub115 = sub nsw i32 %117, %118
  %119 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %120 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call116 = call i32 @gz_fill_rectangle(i32 %113, i32 %114, i32 %sub114, i32 %sub115, %struct.gx_device_color_s* %119, %struct.gs_state_s* %120)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.113, %if.then.109
  %121 = load i32, i32* %xl, align 4
  store i32 %121, i32* %rxl, align 4
  %122 = load i32, i32* %xr, align 4
  store i32 %122, i32* %rxr, align 4
  %123 = load i32, i32* %y, align 4
  store i32 %123, i32* %ry, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %lor.lhs.false.104
  %124 = load i32, i32* %dxlf, align 4
  %125 = load i32, i32* %fxl, align 4
  %add119 = add nsw i32 %125, %124
  store i32 %add119, i32* %fxl, align 4
  %126 = load i32, i32* %h, align 4
  %cmp120 = icmp sge i32 %add119, %126
  br i1 %cmp120, label %if.then.122, label %if.else.125

if.then.122:                                      ; preds = %if.end.118
  %127 = load i32, i32* %h, align 4
  %128 = load i32, i32* %fxl, align 4
  %sub123 = sub nsw i32 %128, %127
  store i32 %sub123, i32* %fxl, align 4
  %129 = load i32, i32* %dxl1, align 4
  %130 = load i32, i32* %xl, align 4
  %add124 = add nsw i32 %130, %129
  store i32 %add124, i32* %xl, align 4
  br label %if.end.127

if.else.125:                                      ; preds = %if.end.118
  %131 = load i32, i32* %dxl, align 4
  %132 = load i32, i32* %xl, align 4
  %add126 = add nsw i32 %132, %131
  store i32 %add126, i32* %xl, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.125, %if.then.122
  %133 = load i32, i32* %dxrf, align 4
  %134 = load i32, i32* %fxr, align 4
  %add128 = add nsw i32 %134, %133
  store i32 %add128, i32* %fxr, align 4
  %135 = load i32, i32* %h, align 4
  %cmp129 = icmp sge i32 %add128, %135
  br i1 %cmp129, label %if.then.131, label %if.else.134

if.then.131:                                      ; preds = %if.end.127
  %136 = load i32, i32* %h, align 4
  %137 = load i32, i32* %fxr, align 4
  %sub132 = sub nsw i32 %137, %136
  store i32 %sub132, i32* %fxr, align 4
  %138 = load i32, i32* %dxr1, align 4
  %139 = load i32, i32* %xr, align 4
  %add133 = add nsw i32 %139, %138
  store i32 %add133, i32* %xr, align 4
  br label %if.end.136

if.else.134:                                      ; preds = %if.end.127
  %140 = load i32, i32* %dxr, align 4
  %141 = load i32, i32* %xr, align 4
  %add135 = add nsw i32 %141, %140
  store i32 %add135, i32* %xr, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.134, %if.then.131
  br label %do.cond

do.cond:                                          ; preds = %if.end.136
  %142 = load i32, i32* %y, align 4
  %inc = add nsw i32 %142, 1
  store i32 %inc, i32* %y, align 4
  %143 = load i32, i32* %y1, align 4
  %cmp137 = icmp slt i32 %inc, %143
  br i1 %cmp137, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %144 = load i32, i32* %y, align 4
  %145 = load i32, i32* %ry, align 4
  %cmp139 = icmp ne i32 %144, %145
  br i1 %cmp139, label %if.then.141, label %if.end.152

if.then.141:                                      ; preds = %do.end
  %146 = load i32, i32* %swap_axes.addr, align 4
  %tobool142 = icmp ne i32 %146, 0
  br i1 %tobool142, label %if.then.143, label %if.else.147

if.then.143:                                      ; preds = %if.then.141
  %147 = load i32, i32* %ry, align 4
  %148 = load i32, i32* %rxl, align 4
  %149 = load i32, i32* %y, align 4
  %150 = load i32, i32* %ry, align 4
  %sub144 = sub nsw i32 %149, %150
  %151 = load i32, i32* %rxr, align 4
  %152 = load i32, i32* %rxl, align 4
  %sub145 = sub nsw i32 %151, %152
  %153 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %154 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call146 = call i32 @gz_fill_rectangle(i32 %147, i32 %148, i32 %sub144, i32 %sub145, %struct.gx_device_color_s* %153, %struct.gs_state_s* %154)
  br label %if.end.151

if.else.147:                                      ; preds = %if.then.141
  %155 = load i32, i32* %rxl, align 4
  %156 = load i32, i32* %ry, align 4
  %157 = load i32, i32* %rxr, align 4
  %158 = load i32, i32* %rxl, align 4
  %sub148 = sub nsw i32 %157, %158
  %159 = load i32, i32* %y, align 4
  %160 = load i32, i32* %ry, align 4
  %sub149 = sub nsw i32 %159, %160
  %161 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %162 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call150 = call i32 @gz_fill_rectangle(i32 %155, i32 %156, i32 %sub148, i32 %sub149, %struct.gx_device_color_s* %161, %struct.gs_state_s* %162)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.147, %if.then.143
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.152, %if.end.83, %if.then.29, %if.then
  %163 = load i32, i32* %retval
  ret i32 %163
}

; Function Attrs: nounwind uwtable
define i32 @gz_draw_line_fixed(i64 %ixf, i64 %iyf, i64 %itoxf, i64 %itoyf, %struct.gx_device_color_s* %pdevc, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %ixf.addr = alloca i64, align 8
  %iyf.addr = alloca i64, align 8
  %itoxf.addr = alloca i64, align 8
  %itoyf.addr = alloca i64, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %itox = alloca i32, align 4
  %itoy = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %h = alloca i64, align 8
  %w = alloca i64, align 8
  %tf = alloca i64, align 8
  store i64 %ixf, i64* %ixf.addr, align 8
  store i64 %iyf, i64* %iyf.addr, align 8
  store i64 %itoxf, i64* %itoxf.addr, align 8
  store i64 %itoyf, i64* %itoyf.addr, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load i64, i64* %ixf.addr, align 8
  %shr = ashr i64 %0, 12
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %ix, align 4
  %1 = load i64, i64* %iyf.addr, align 8
  %shr1 = ashr i64 %1, 12
  %conv2 = trunc i64 %shr1 to i32
  store i32 %conv2, i32* %iy, align 4
  %2 = load i64, i64* %itoxf.addr, align 8
  %shr3 = ashr i64 %2, 12
  %conv4 = trunc i64 %shr3 to i32
  store i32 %conv4, i32* %itox, align 4
  %3 = load i64, i64* %itoyf.addr, align 8
  %shr5 = ashr i64 %3, 12
  %conv6 = trunc i64 %shr5 to i32
  store i32 %conv6, i32* %itoy, align 4
  %4 = load i32, i32* %itoy, align 4
  %5 = load i32, i32* %iy, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else.18

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ix, align 4
  %7 = load i32, i32* %itox, align 4
  %cmp8 = icmp sle i32 %6, %7
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %8 = load i32, i32* %ix, align 4
  %9 = load i32, i32* %iy, align 4
  %10 = load i64, i64* %itoxf.addr, align 8
  %add = add nsw i64 %10, 4095
  %shr11 = ashr i64 %add, 12
  %conv12 = trunc i64 %shr11 to i32
  %11 = load i32, i32* %ix, align 4
  %sub = sub nsw i32 %conv12, %11
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call = call i32 @gz_fill_rectangle(i32 %8, i32 %9, i32 %sub, i32 1, %struct.gx_device_color_s* %12, %struct.gs_state_s* %13)
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load i32, i32* %itox, align 4
  %15 = load i32, i32* %iy, align 4
  %16 = load i64, i64* %ixf.addr, align 8
  %add13 = add nsw i64 %16, 4095
  %shr14 = ashr i64 %add13, 12
  %conv15 = trunc i64 %shr14 to i32
  %17 = load i32, i32* %itox, align 4
  %sub16 = sub nsw i32 %conv15, %17
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call17 = call i32 @gz_fill_rectangle(i32 %14, i32 %15, i32 %sub16, i32 1, %struct.gx_device_color_s* %18, %struct.gs_state_s* %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.55

if.else.18:                                       ; preds = %entry
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 22
  %21 = load %struct.device_s*, %struct.device_s** %device, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %21, i32 0, i32 0
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %22, %struct.gx_device_s** %dev, align 8
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %23, i32 0, i32 2
  %24 = load i32, i32* %halftone_level, align 4
  %cmp19 = icmp eq i32 %24, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.else.18
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 1
  %26 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %draw_line = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %26, i32 0, i32 11
  %27 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %draw_line, align 8
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %29 = load i32, i32* %ix, align 4
  %30 = load i32, i32* %iy, align 4
  %31 = load i32, i32* %itox, align 4
  %32 = load i32, i32* %itoy, align 4
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %33, i32 0, i32 0
  %34 = load i64, i64* %color1, align 8
  %call21 = call i32 %27(%struct.gx_device_s* %28, i32 %29, i32 %30, i32 %31, i32 %32, i64 %34)
  %cmp22 = icmp sge i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true, %if.else.18
  %35 = load i64, i64* %itoyf.addr, align 8
  %36 = load i64, i64* %iyf.addr, align 8
  %sub26 = sub nsw i64 %35, %36
  store i64 %sub26, i64* %h, align 8
  %37 = load i64, i64* %itoxf.addr, align 8
  %38 = load i64, i64* %ixf.addr, align 8
  %sub27 = sub nsw i64 %37, %38
  store i64 %sub27, i64* %w, align 8
  %39 = load i64, i64* %w, align 8
  %cmp28 = icmp slt i64 %39, 0
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %40 = load i64, i64* %w, align 8
  %sub30 = sub nsw i64 0, %40
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  %41 = load i64, i64* %w, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub30, %cond.true ], [ %41, %cond.false ]
  %42 = load i64, i64* %h, align 8
  %cmp31 = icmp slt i64 %42, 0
  br i1 %cmp31, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %cond.end
  %43 = load i64, i64* %h, align 8
  %sub34 = sub nsw i64 0, %43
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end
  %44 = load i64, i64* %h, align 8
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.33
  %cond37 = phi i64 [ %sub34, %cond.true.33 ], [ %44, %cond.false.35 ]
  %cmp38 = icmp sle i64 %cond, %cond37
  br i1 %cmp38, label %if.then.40, label %if.else.47

if.then.40:                                       ; preds = %cond.end.36
  %45 = load i64, i64* %h, align 8
  %cmp41 = icmp slt i64 %45, 0
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.40
  %46 = load i64, i64* %ixf.addr, align 8
  store i64 %46, i64* %tf, align 8
  %47 = load i64, i64* %itoxf.addr, align 8
  store i64 %47, i64* %ixf.addr, align 8
  %48 = load i64, i64* %tf, align 8
  store i64 %48, i64* %itoxf.addr, align 8
  %49 = load i64, i64* %iyf.addr, align 8
  store i64 %49, i64* %tf, align 8
  %50 = load i64, i64* %itoyf.addr, align 8
  store i64 %50, i64* %iyf.addr, align 8
  %51 = load i64, i64* %tf, align 8
  store i64 %51, i64* %itoyf.addr, align 8
  %52 = load i64, i64* %h, align 8
  %sub44 = sub nsw i64 0, %52
  store i64 %sub44, i64* %h, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.then.40
  %53 = load i64, i64* %ixf.addr, align 8
  %54 = load i64, i64* %iyf.addr, align 8
  %55 = load i64, i64* %itoxf.addr, align 8
  %56 = load i64, i64* %h, align 8
  %57 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call46 = call i32 @gz_fill_trapezoid_fixed(i64 %53, i64 1, i64 %54, i64 %55, i64 1, i64 %56, i32 0, %struct.gx_device_color_s* %57, %struct.gs_state_s* %58)
  br label %if.end.54

if.else.47:                                       ; preds = %cond.end.36
  %59 = load i64, i64* %w, align 8
  %cmp48 = icmp slt i64 %59, 0
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.else.47
  %60 = load i64, i64* %ixf.addr, align 8
  store i64 %60, i64* %tf, align 8
  %61 = load i64, i64* %itoxf.addr, align 8
  store i64 %61, i64* %ixf.addr, align 8
  %62 = load i64, i64* %tf, align 8
  store i64 %62, i64* %itoxf.addr, align 8
  %63 = load i64, i64* %iyf.addr, align 8
  store i64 %63, i64* %tf, align 8
  %64 = load i64, i64* %itoyf.addr, align 8
  store i64 %64, i64* %iyf.addr, align 8
  %65 = load i64, i64* %tf, align 8
  store i64 %65, i64* %itoyf.addr, align 8
  %66 = load i64, i64* %w, align 8
  %sub51 = sub nsw i64 0, %66
  store i64 %sub51, i64* %w, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.else.47
  %67 = load i64, i64* %iyf.addr, align 8
  %68 = load i64, i64* %ixf.addr, align 8
  %69 = load i64, i64* %itoyf.addr, align 8
  %70 = load i64, i64* %w, align 8
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %72 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %call53 = call i32 @gz_fill_trapezoid_fixed(i64 %67, i64 1, i64 %68, i64 %69, i64 1, i64 %70, i32 1, %struct.gx_device_color_s* %71, %struct.gs_state_s* %72)
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.52, %if.end.45
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.24
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_draw_line(%struct.gx_device_s* %dev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_fill_trapezoid(%struct.gx_device_s* %dev, i32 %x0, i32 %y0, i32 %width0, i32 %x1, i32 %y1, i32 %width1, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %width0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width1.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %width0, i32* %width0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width1, i32* %width1.addr, align 4
  store i64 %color, i64* %color.addr, align 8
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_tile_trapezoid(%struct.gx_device_s* %dev, %struct.gx_bitmap_s* %tile, i32 %x0, i32 %y0, i32 %width0, i32 %x1, i32 %y1, i32 %width1, i64 %color0, i64 %color1) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tile.addr = alloca %struct.gx_bitmap_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %width0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width1.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gx_bitmap_s* %tile, %struct.gx_bitmap_s** %tile.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %width0, i32* %width0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width1, i32* %width1.addr, align 4
  store i64 %color0, i64* %color0.addr, align 8
  store i64 %color1, i64* %color1.addr, align 8
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_tile_trapezoid_color(%struct.gx_device_s* %dev, %struct.gx_bitmap_s* %tile, i32 %x0, i32 %y0, i32 %width0, i32 %x1, i32 %y1, i32 %width1) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tile.addr = alloca %struct.gx_bitmap_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %width0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width1.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8
  store %struct.gx_bitmap_s* %tile, %struct.gx_bitmap_s** %tile.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %width0, i32* %width0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width1, i32* %width1.addr, align 4
  ret i32 -1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
