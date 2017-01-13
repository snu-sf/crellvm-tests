; ModuleID = './MultiSource.Benchmarks.MallocBench/85.gs.gxdither.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.ht_bit_s = type { i16, i16 }
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@lum = internal global [8 x i16] [i16 0, i16 30, i16 59, i16 89, i16 11, i16 41, i16 70, i16 100], align 16

; Function Attrs: nounwind uwtable
define void @gx_color_render(%struct.gs_color_s* %pcolor, %struct.gx_device_color_s* %pdevc, %struct.gs_state_s* %pgs) #0 {
entry:
  %pcolor.addr = alloca %struct.gs_color_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pdev = alloca %struct.device_s*, align 8
  %max_value = alloca i64, align 8
  %mulval = alloca i64, align 8
  %hsize = alloca i64, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %nshades = alloca i64, align 8
  %lx = alloca i64, align 8
  %l = alloca i16, align 2
  %want_r = alloca i64, align 8
  %want_g = alloca i64, align 8
  %want_b = alloca i64, align 8
  %r78 = alloca i16, align 2
  %g81 = alloca i16, align 2
  %b84 = alloca i16, align 2
  %rem_r = alloca i16, align 2
  %rem_g = alloca i16, align 2
  %rem_b = alloca i16, align 2
  %adjust_r = alloca i32, align 4
  %adjust_b = alloca i32, align 4
  %adjust_g = alloca i32, align 4
  %amax = alloca i16, align 2
  %dmax = alloca i64, align 8
  %axisc = alloca i32, align 4
  %diagc = alloca i32, align 4
  %lum_invert = alloca i16, align 2
  %dot1 = alloca i64, align 8
  %dot2 = alloca i64, align 8
  %dot3 = alloca i64, align 8
  %level = alloca i32, align 4
  store %struct.gs_color_s* %pcolor, %struct.gs_color_s** %pcolor.addr, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 22
  %1 = load %struct.device_s*, %struct.device_s** %device, align 8
  store %struct.device_s* %1, %struct.device_s** %pdev, align 8
  %2 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %is_gray = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %2, i32 0, i32 4
  %3 = load i8, i8* %is_gray, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i32 0, i32 3
  %5 = load i16, i16* %luminance, align 2
  %conv = zext i16 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.device_s*, %struct.device_s** %pdev, align 8
  %black = getelementptr inbounds %struct.device_s, %struct.device_s* %6, i32 0, i32 3
  %7 = load i64, i64* %black, align 8
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %8, i32 0, i32 0
  store i64 %7, i64* %color1, align 8
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 1
  store i64 %7, i64* %color2, align 8
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 2
  store i32 0, i32* %halftone_level, align 4
  br label %if.end.293

if.else:                                          ; preds = %if.then
  %11 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance3 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %11, i32 0, i32 3
  %12 = load i16, i16* %luminance3, align 2
  %conv4 = zext i16 %12 to i32
  %cmp5 = icmp eq i32 %conv4, 65535
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %13 = load %struct.device_s*, %struct.device_s** %pdev, align 8
  %white = getelementptr inbounds %struct.device_s, %struct.device_s* %13, i32 0, i32 2
  %14 = load i64, i64* %white, align 8
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color18 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 0
  store i64 %14, i64* %color18, align 8
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color29 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %16, i32 0, i32 1
  store i64 %14, i64* %color29, align 8
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level10 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %17, i32 0, i32 2
  store i32 0, i32* %halftone_level10, align 4
  br label %if.end.293

if.end:                                           ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  %18 = load %struct.device_s*, %struct.device_s** %pdev, align 8
  %info = getelementptr inbounds %struct.device_s, %struct.device_s* %18, i32 0, i32 0
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %info, align 8
  store %struct.gx_device_s* %19, %struct.gx_device_s** %dev, align 8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %max_rgb_value = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 8
  %21 = load i16, i16* %max_rgb_value, align 2
  %conv13 = zext i16 %21 to i64
  store i64 %conv13, i64* %max_value, align 8
  %22 = load i64, i64* %max_value, align 8
  %add = add i64 %22, 1
  store i64 %add, i64* %mulval, align 8
  %23 = load i64, i64* %max_value, align 8
  %cmp14 = icmp uge i64 %23, 255
  br i1 %cmp14, label %if.then.16, label %if.end.30

if.then.16:                                       ; preds = %if.end.12
  %24 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %24, i32 0, i32 0
  %25 = load i16, i16* %red, align 2
  %conv17 = zext i16 %25 to i64
  %26 = load i64, i64* %mulval, align 8
  %mul = mul i64 %conv17, %26
  %div = udiv i64 %mul, 65536
  %conv18 = trunc i64 %div to i16
  store i16 %conv18, i16* %r, align 2
  %27 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %27, i32 0, i32 1
  %28 = load i16, i16* %green, align 2
  %conv19 = zext i16 %28 to i64
  %29 = load i64, i64* %mulval, align 8
  %mul20 = mul i64 %conv19, %29
  %div21 = udiv i64 %mul20, 65536
  %conv22 = trunc i64 %div21 to i16
  store i16 %conv22, i16* %g, align 2
  %30 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %30, i32 0, i32 2
  %31 = load i16, i16* %blue, align 2
  %conv23 = zext i16 %31 to i64
  %32 = load i64, i64* %mulval, align 8
  %mul24 = mul i64 %conv23, %32
  %div25 = udiv i64 %mul24, 65536
  %conv26 = trunc i64 %div25 to i16
  store i16 %conv26, i16* %b, align 2
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 1
  %34 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %34, i32 0, i32 5
  %35 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %map_rgb_color, align 8
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %37 = load i16, i16* %r, align 2
  %38 = load i16, i16* %g, align 2
  %39 = load i16, i16* %b, align 2
  %call = call i64 %35(%struct.gx_device_s* %36, i16 zeroext %37, i16 zeroext %38, i16 zeroext %39)
  %40 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color127 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %40, i32 0, i32 0
  store i64 %call, i64* %color127, align 8
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color228 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 1
  store i64 %call, i64* %color228, align 8
  %42 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level29 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %42, i32 0, i32 2
  store i32 0, i32* %halftone_level29, align 4
  br label %if.end.293

if.end.30:                                        ; preds = %if.end.12
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %halftone = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %43, i32 0, i32 11
  %44 = load %struct.halftone_s*, %struct.halftone_s** %halftone, align 8
  %order_size = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %44, i32 0, i32 5
  %45 = load i32, i32* %order_size, align 4
  %conv31 = zext i32 %45 to i64
  store i64 %conv31, i64* %hsize, align 8
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %has_color = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 7
  %47 = load i32, i32* %has_color, align 4
  %tobool32 = icmp ne i32 %47, 0
  br i1 %tobool32, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %if.end.30
  %48 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %is_gray33 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %48, i32 0, i32 4
  %49 = load i8, i8* %is_gray33, align 1
  %conv34 = zext i8 %49 to i32
  %tobool35 = icmp ne i32 %conv34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.68

if.then.36:                                       ; preds = %lor.lhs.false, %if.end.30
  %50 = load i64, i64* %hsize, align 8
  %51 = load i64, i64* %max_value, align 8
  %mul37 = mul i64 %50, %51
  %add38 = add i64 %mul37, 1
  store i64 %add38, i64* %nshades, align 8
  %52 = load i64, i64* %nshades, align 8
  %53 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance_set = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %53, i32 0, i32 5
  %54 = load i8, i8* %luminance_set, align 1
  %conv39 = zext i8 %54 to i32
  %tobool40 = icmp ne i32 %conv39, 0
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.36
  %55 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance41 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %55, i32 0, i32 3
  %56 = load i16, i16* %luminance41, align 2
  %conv42 = zext i16 %56 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.36
  %57 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %call43 = call zeroext i16 @gx_color_luminance(%struct.gs_color_s* %57)
  %conv44 = zext i16 %call43 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv42, %cond.true ], [ %conv44, %cond.false ]
  %conv45 = sext i32 %cond to i64
  %mul46 = mul i64 %52, %conv45
  %div47 = udiv i64 %mul46, 65536
  store i64 %div47, i64* %lx, align 8
  %58 = load i64, i64* %lx, align 8
  %59 = load i64, i64* %hsize, align 8
  %div48 = udiv i64 %58, %59
  %conv49 = trunc i64 %div48 to i16
  store i16 %conv49, i16* %l, align 2
  %60 = load i64, i64* %lx, align 8
  %61 = load i64, i64* %hsize, align 8
  %rem = urem i64 %60, %61
  %conv50 = trunc i64 %rem to i32
  %62 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level51 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %62, i32 0, i32 2
  store i32 %conv50, i32* %halftone_level51, align 4
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs52 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 1
  %64 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs52, align 8
  %map_rgb_color53 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %64, i32 0, i32 5
  %65 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %map_rgb_color53, align 8
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %67 = load i16, i16* %l, align 2
  %68 = load i16, i16* %l, align 2
  %69 = load i16, i16* %l, align 2
  %call54 = call i64 %65(%struct.gx_device_s* %66, i16 zeroext %67, i16 zeroext %68, i16 zeroext %69)
  %70 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color155 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %70, i32 0, i32 0
  store i64 %call54, i64* %color155, align 8
  %71 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level56 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %71, i32 0, i32 2
  %72 = load i32, i32* %halftone_level56, align 4
  %cmp57 = icmp eq i32 %72, 0
  br i1 %cmp57, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %cond.end
  %73 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color160 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %73, i32 0, i32 0
  %74 = load i64, i64* %color160, align 8
  %75 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color261 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %75, i32 0, i32 1
  store i64 %74, i64* %color261, align 8
  br label %if.end.67

if.else.62:                                       ; preds = %cond.end
  %76 = load i16, i16* %l, align 2
  %inc = add i16 %76, 1
  store i16 %inc, i16* %l, align 2
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs63 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %77, i32 0, i32 1
  %78 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs63, align 8
  %map_rgb_color64 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %78, i32 0, i32 5
  %79 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %map_rgb_color64, align 8
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %81 = load i16, i16* %l, align 2
  %82 = load i16, i16* %l, align 2
  %83 = load i16, i16* %l, align 2
  %call65 = call i64 %79(%struct.gx_device_s* %80, i16 zeroext %81, i16 zeroext %82, i16 zeroext %83)
  %84 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color266 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %84, i32 0, i32 1
  store i64 %call65, i64* %color266, align 8
  %85 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %86 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  call void @gx_color_load(%struct.gx_device_color_s* %85, %struct.gs_state_s* %86)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.62, %if.then.59
  br label %if.end.293

if.end.68:                                        ; preds = %lor.lhs.false
  %87 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red69 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %87, i32 0, i32 0
  %88 = load i16, i16* %red69, align 2
  %conv70 = zext i16 %88 to i64
  %89 = load i64, i64* %max_value, align 8
  %mul71 = mul i64 %conv70, %89
  store i64 %mul71, i64* %want_r, align 8
  %90 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %green72 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %90, i32 0, i32 1
  %91 = load i16, i16* %green72, align 2
  %conv73 = zext i16 %91 to i64
  %92 = load i64, i64* %max_value, align 8
  %mul74 = mul i64 %conv73, %92
  store i64 %mul74, i64* %want_g, align 8
  %93 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %blue75 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %93, i32 0, i32 2
  %94 = load i16, i16* %blue75, align 2
  %conv76 = zext i16 %94 to i64
  %95 = load i64, i64* %max_value, align 8
  %mul77 = mul i64 %conv76, %95
  store i64 %mul77, i64* %want_b, align 8
  %96 = load i64, i64* %want_r, align 8
  %div79 = udiv i64 %96, 65535
  %conv80 = trunc i64 %div79 to i16
  store i16 %conv80, i16* %r78, align 2
  %97 = load i64, i64* %want_g, align 8
  %div82 = udiv i64 %97, 65535
  %conv83 = trunc i64 %div82 to i16
  store i16 %conv83, i16* %g81, align 2
  %98 = load i64, i64* %want_b, align 8
  %div85 = udiv i64 %98, 65535
  %conv86 = trunc i64 %div85 to i16
  store i16 %conv86, i16* %b84, align 2
  %99 = load i64, i64* %want_r, align 8
  %conv87 = trunc i64 %99 to i16
  %conv88 = zext i16 %conv87 to i32
  %100 = load i16, i16* %r78, align 2
  %conv89 = zext i16 %100 to i32
  %mul90 = mul nsw i32 %conv89, 65535
  %sub = sub nsw i32 %conv88, %mul90
  %conv91 = trunc i32 %sub to i16
  store i16 %conv91, i16* %rem_r, align 2
  %101 = load i64, i64* %want_g, align 8
  %conv92 = trunc i64 %101 to i16
  %conv93 = zext i16 %conv92 to i32
  %102 = load i16, i16* %g81, align 2
  %conv94 = zext i16 %102 to i32
  %mul95 = mul nsw i32 %conv94, 65535
  %sub96 = sub nsw i32 %conv93, %mul95
  %conv97 = trunc i32 %sub96 to i16
  store i16 %conv97, i16* %rem_g, align 2
  %103 = load i64, i64* %want_b, align 8
  %conv98 = trunc i64 %103 to i16
  %conv99 = zext i16 %conv98 to i32
  %104 = load i16, i16* %b84, align 2
  %conv100 = zext i16 %104 to i32
  %mul101 = mul nsw i32 %conv100, 65535
  %sub102 = sub nsw i32 %conv99, %mul101
  %conv103 = trunc i32 %sub102 to i16
  store i16 %conv103, i16* %rem_b, align 2
  %105 = load i16, i16* %rem_r, align 2
  %conv104 = zext i16 %105 to i32
  %106 = load i16, i16* %rem_g, align 2
  %conv105 = zext i16 %106 to i32
  %or = or i32 %conv104, %conv105
  %107 = load i16, i16* %rem_b, align 2
  %conv106 = zext i16 %107 to i32
  %or107 = or i32 %or, %conv106
  %tobool108 = icmp ne i32 %or107, 0
  br i1 %tobool108, label %if.end.116, label %if.then.109

if.then.109:                                      ; preds = %if.end.68
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs110 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 1
  %109 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs110, align 8
  %map_rgb_color111 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %109, i32 0, i32 5
  %110 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %map_rgb_color111, align 8
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %112 = load i16, i16* %r78, align 2
  %113 = load i16, i16* %g81, align 2
  %114 = load i16, i16* %b84, align 2
  %call112 = call i64 %110(%struct.gx_device_s* %111, i16 zeroext %112, i16 zeroext %113, i16 zeroext %114)
  %115 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color1113 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %115, i32 0, i32 0
  store i64 %call112, i64* %color1113, align 8
  %116 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color2114 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %116, i32 0, i32 1
  store i64 %call112, i64* %color2114, align 8
  %117 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level115 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %117, i32 0, i32 2
  store i32 0, i32* %halftone_level115, align 4
  br label %if.end.293

if.end.116:                                       ; preds = %if.end.68
  store i16 0, i16* %lum_invert, align 2
  %118 = load i16, i16* %rem_r, align 2
  %conv117 = zext i16 %118 to i32
  %cmp118 = icmp sgt i32 %conv117, 32767
  br i1 %cmp118, label %if.then.120, label %if.else.128

if.then.120:                                      ; preds = %if.end.116
  %119 = load i16, i16* %rem_r, align 2
  %conv121 = zext i16 %119 to i32
  %sub122 = sub nsw i32 65535, %conv121
  %conv123 = trunc i32 %sub122 to i16
  store i16 %conv123, i16* %rem_r, align 2
  store i32 -1, i32* %adjust_r, align 4
  %120 = load i16, i16* %r78, align 2
  %inc124 = add i16 %120, 1
  store i16 %inc124, i16* %r78, align 2
  %121 = load i16, i16* %lum_invert, align 2
  %conv125 = zext i16 %121 to i32
  %add126 = add nsw i32 %conv125, 30
  %conv127 = trunc i32 %add126 to i16
  store i16 %conv127, i16* %lum_invert, align 2
  br label %if.end.129

if.else.128:                                      ; preds = %if.end.116
  store i32 1, i32* %adjust_r, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.128, %if.then.120
  %122 = load i16, i16* %rem_g, align 2
  %conv130 = zext i16 %122 to i32
  %cmp131 = icmp sgt i32 %conv130, 32767
  br i1 %cmp131, label %if.then.133, label %if.else.141

if.then.133:                                      ; preds = %if.end.129
  %123 = load i16, i16* %rem_g, align 2
  %conv134 = zext i16 %123 to i32
  %sub135 = sub nsw i32 65535, %conv134
  %conv136 = trunc i32 %sub135 to i16
  store i16 %conv136, i16* %rem_g, align 2
  store i32 -1, i32* %adjust_g, align 4
  %124 = load i16, i16* %g81, align 2
  %inc137 = add i16 %124, 1
  store i16 %inc137, i16* %g81, align 2
  %125 = load i16, i16* %lum_invert, align 2
  %conv138 = zext i16 %125 to i32
  %add139 = add nsw i32 %conv138, 59
  %conv140 = trunc i32 %add139 to i16
  store i16 %conv140, i16* %lum_invert, align 2
  br label %if.end.142

if.else.141:                                      ; preds = %if.end.129
  store i32 1, i32* %adjust_g, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.141, %if.then.133
  %126 = load i16, i16* %rem_b, align 2
  %conv143 = zext i16 %126 to i32
  %cmp144 = icmp sgt i32 %conv143, 32767
  br i1 %cmp144, label %if.then.146, label %if.else.154

if.then.146:                                      ; preds = %if.end.142
  %127 = load i16, i16* %rem_b, align 2
  %conv147 = zext i16 %127 to i32
  %sub148 = sub nsw i32 65535, %conv147
  %conv149 = trunc i32 %sub148 to i16
  store i16 %conv149, i16* %rem_b, align 2
  store i32 -1, i32* %adjust_b, align 4
  %128 = load i16, i16* %b84, align 2
  %inc150 = add i16 %128, 1
  store i16 %inc150, i16* %b84, align 2
  %129 = load i16, i16* %lum_invert, align 2
  %conv151 = zext i16 %129 to i32
  %add152 = add nsw i32 %conv151, 11
  %conv153 = trunc i32 %add152 to i16
  store i16 %conv153, i16* %lum_invert, align 2
  br label %if.end.155

if.else.154:                                      ; preds = %if.end.142
  store i32 1, i32* %adjust_b, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.154, %if.then.146
  %130 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs156 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %130, i32 0, i32 1
  %131 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs156, align 8
  %map_rgb_color157 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %131, i32 0, i32 5
  %132 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %map_rgb_color157, align 8
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %134 = load i16, i16* %r78, align 2
  %135 = load i16, i16* %g81, align 2
  %136 = load i16, i16* %b84, align 2
  %call158 = call i64 %132(%struct.gx_device_s* %133, i16 zeroext %134, i16 zeroext %135, i16 zeroext %136)
  %137 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color1159 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %137, i32 0, i32 0
  store i64 %call158, i64* %color1159, align 8
  %138 = load i16, i16* %rem_g, align 2
  %conv160 = zext i16 %138 to i32
  %139 = load i16, i16* %rem_r, align 2
  %conv161 = zext i16 %139 to i32
  %cmp162 = icmp sgt i32 %conv160, %conv161
  br i1 %cmp162, label %if.then.164, label %if.else.185

if.then.164:                                      ; preds = %if.end.155
  %140 = load i16, i16* %rem_b, align 2
  %conv165 = zext i16 %140 to i32
  %141 = load i16, i16* %rem_g, align 2
  %conv166 = zext i16 %141 to i32
  %cmp167 = icmp sgt i32 %conv165, %conv166
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %if.then.164
  %142 = load i16, i16* %rem_b, align 2
  store i16 %142, i16* %amax, align 2
  store i32 4, i32* %axisc, align 4
  br label %if.end.171

if.else.170:                                      ; preds = %if.then.164
  %143 = load i16, i16* %rem_g, align 2
  store i16 %143, i16* %amax, align 2
  store i32 2, i32* %axisc, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.170, %if.then.169
  %144 = load i16, i16* %rem_b, align 2
  %conv172 = zext i16 %144 to i32
  %145 = load i16, i16* %rem_r, align 2
  %conv173 = zext i16 %145 to i32
  %cmp174 = icmp sgt i32 %conv172, %conv173
  br i1 %cmp174, label %if.then.176, label %if.else.180

if.then.176:                                      ; preds = %if.end.171
  %146 = load i16, i16* %rem_g, align 2
  %conv177 = zext i16 %146 to i64
  %147 = load i16, i16* %rem_b, align 2
  %conv178 = zext i16 %147 to i64
  %add179 = add i64 %conv177, %conv178
  store i64 %add179, i64* %dmax, align 8
  store i32 6, i32* %diagc, align 4
  br label %if.end.184

if.else.180:                                      ; preds = %if.end.171
  %148 = load i16, i16* %rem_r, align 2
  %conv181 = zext i16 %148 to i64
  %149 = load i16, i16* %rem_g, align 2
  %conv182 = zext i16 %149 to i64
  %add183 = add i64 %conv181, %conv182
  store i64 %add183, i64* %dmax, align 8
  store i32 3, i32* %diagc, align 4
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.180, %if.then.176
  br label %if.end.206

if.else.185:                                      ; preds = %if.end.155
  %150 = load i16, i16* %rem_b, align 2
  %conv186 = zext i16 %150 to i32
  %151 = load i16, i16* %rem_r, align 2
  %conv187 = zext i16 %151 to i32
  %cmp188 = icmp sgt i32 %conv186, %conv187
  br i1 %cmp188, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %if.else.185
  %152 = load i16, i16* %rem_b, align 2
  store i16 %152, i16* %amax, align 2
  store i32 4, i32* %axisc, align 4
  br label %if.end.192

if.else.191:                                      ; preds = %if.else.185
  %153 = load i16, i16* %rem_r, align 2
  store i16 %153, i16* %amax, align 2
  store i32 1, i32* %axisc, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.191, %if.then.190
  %154 = load i16, i16* %rem_b, align 2
  %conv193 = zext i16 %154 to i32
  %155 = load i16, i16* %rem_g, align 2
  %conv194 = zext i16 %155 to i32
  %cmp195 = icmp sgt i32 %conv193, %conv194
  br i1 %cmp195, label %if.then.197, label %if.else.201

if.then.197:                                      ; preds = %if.end.192
  %156 = load i16, i16* %rem_b, align 2
  %conv198 = zext i16 %156 to i64
  %157 = load i16, i16* %rem_r, align 2
  %conv199 = zext i16 %157 to i64
  %add200 = add i64 %conv198, %conv199
  store i64 %add200, i64* %dmax, align 8
  store i32 5, i32* %diagc, align 4
  br label %if.end.205

if.else.201:                                      ; preds = %if.end.192
  %158 = load i16, i16* %rem_r, align 2
  %conv202 = zext i16 %158 to i64
  %159 = load i16, i16* %rem_g, align 2
  %conv203 = zext i16 %159 to i64
  %add204 = add i64 %conv202, %conv203
  store i64 %add204, i64* %dmax, align 8
  store i32 3, i32* %diagc, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.201, %if.then.197
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.184
  %160 = load i16, i16* %amax, align 2
  %conv207 = zext i16 %160 to i64
  %mul208 = mul i64 %conv207, 100
  store i64 %mul208, i64* %dot1, align 8
  %161 = load i64, i64* %dmax, align 8
  %mul209 = mul i64 %161, 71
  store i64 %mul209, i64* %dot2, align 8
  %162 = load i16, i16* %rem_r, align 2
  %conv210 = zext i16 %162 to i64
  %163 = load i16, i16* %rem_g, align 2
  %conv211 = zext i16 %163 to i64
  %add212 = add i64 %conv210, %conv211
  %164 = load i16, i16* %rem_b, align 2
  %conv213 = zext i16 %164 to i64
  %add214 = add i64 %add212, %conv213
  store i64 %add214, i64* %dot3, align 8
  %165 = load i64, i64* %dot1, align 8
  %166 = load i64, i64* %dot2, align 8
  %cmp215 = icmp ugt i64 %165, %166
  br i1 %cmp215, label %if.then.217, label %if.else.231

if.then.217:                                      ; preds = %if.end.206
  %167 = load i64, i64* %dot3, align 8
  %mul218 = mul i64 %167, 62
  %168 = load i64, i64* %dot1, align 8
  %cmp219 = icmp ugt i64 %mul218, %168
  br i1 %cmp219, label %if.then.221, label %if.else.225

if.then.221:                                      ; preds = %if.then.217
  store i32 7, i32* %diagc, align 4
  %169 = load i64, i64* %hsize, align 8
  %170 = load i64, i64* %dot3, align 8
  %mul222 = mul i64 %169, %170
  %div223 = udiv i64 %mul222, 196605
  %conv224 = trunc i64 %div223 to i32
  store i32 %conv224, i32* %level, align 4
  br label %if.end.230

if.else.225:                                      ; preds = %if.then.217
  %171 = load i32, i32* %axisc, align 4
  store i32 %171, i32* %diagc, align 4
  %172 = load i64, i64* %hsize, align 8
  %173 = load i16, i16* %amax, align 2
  %conv226 = zext i16 %173 to i64
  %mul227 = mul i64 %172, %conv226
  %div228 = udiv i64 %mul227, 65535
  %conv229 = trunc i64 %div228 to i32
  store i32 %conv229, i32* %level, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.225, %if.then.221
  br label %if.end.244

if.else.231:                                      ; preds = %if.end.206
  %174 = load i64, i64* %dot3, align 8
  %mul232 = mul i64 %174, 62
  %175 = load i64, i64* %dot2, align 8
  %cmp233 = icmp ugt i64 %mul232, %175
  br i1 %cmp233, label %if.then.235, label %if.else.239

if.then.235:                                      ; preds = %if.else.231
  store i32 7, i32* %diagc, align 4
  %176 = load i64, i64* %hsize, align 8
  %177 = load i64, i64* %dot3, align 8
  %mul236 = mul i64 %176, %177
  %div237 = udiv i64 %mul236, 196605
  %conv238 = trunc i64 %div237 to i32
  store i32 %conv238, i32* %level, align 4
  br label %if.end.243

if.else.239:                                      ; preds = %if.else.231
  %178 = load i64, i64* %hsize, align 8
  %179 = load i64, i64* %dmax, align 8
  %mul240 = mul i64 %178, %179
  %div241 = udiv i64 %mul240, 131070
  %conv242 = trunc i64 %div241 to i32
  store i32 %conv242, i32* %level, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.239, %if.then.235
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.end.230
  %180 = load i32, i32* %level, align 4
  %181 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level245 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %181, i32 0, i32 2
  store i32 %180, i32* %halftone_level245, align 4
  %cmp246 = icmp eq i32 %180, 0
  br i1 %cmp246, label %if.then.248, label %if.else.251

if.then.248:                                      ; preds = %if.end.244
  %182 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color1249 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %182, i32 0, i32 0
  %183 = load i64, i64* %color1249, align 8
  %184 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color2250 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %184, i32 0, i32 1
  store i64 %183, i64* %color2250, align 8
  br label %if.end.293

if.else.251:                                      ; preds = %if.end.244
  %185 = load i32, i32* %diagc, align 4
  %and = and i32 %185, 1
  %tobool252 = icmp ne i32 %and, 0
  br i1 %tobool252, label %if.then.253, label %if.end.257

if.then.253:                                      ; preds = %if.else.251
  %186 = load i32, i32* %adjust_r, align 4
  %187 = load i16, i16* %r78, align 2
  %conv254 = zext i16 %187 to i32
  %add255 = add nsw i32 %conv254, %186
  %conv256 = trunc i32 %add255 to i16
  store i16 %conv256, i16* %r78, align 2
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.253, %if.else.251
  %188 = load i32, i32* %diagc, align 4
  %and258 = and i32 %188, 2
  %tobool259 = icmp ne i32 %and258, 0
  br i1 %tobool259, label %if.then.260, label %if.end.264

if.then.260:                                      ; preds = %if.end.257
  %189 = load i32, i32* %adjust_g, align 4
  %190 = load i16, i16* %g81, align 2
  %conv261 = zext i16 %190 to i32
  %add262 = add nsw i32 %conv261, %189
  %conv263 = trunc i32 %add262 to i16
  store i16 %conv263, i16* %g81, align 2
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.260, %if.end.257
  %191 = load i32, i32* %diagc, align 4
  %and265 = and i32 %191, 4
  %tobool266 = icmp ne i32 %and265, 0
  br i1 %tobool266, label %if.then.267, label %if.end.271

if.then.267:                                      ; preds = %if.end.264
  %192 = load i32, i32* %adjust_b, align 4
  %193 = load i16, i16* %b84, align 2
  %conv268 = zext i16 %193 to i32
  %add269 = add nsw i32 %conv268, %192
  %conv270 = trunc i32 %add269 to i16
  store i16 %conv270, i16* %b84, align 2
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.267, %if.end.264
  %194 = load i32, i32* %diagc, align 4
  %idxprom = sext i32 %194 to i64
  %arrayidx = getelementptr inbounds [8 x i16], [8 x i16]* @lum, i32 0, i64 %idxprom
  %195 = load i16, i16* %arrayidx, align 2
  %conv272 = zext i16 %195 to i32
  %196 = load i16, i16* %lum_invert, align 2
  %conv273 = zext i16 %196 to i32
  %cmp274 = icmp slt i32 %conv272, %conv273
  br i1 %cmp274, label %if.then.276, label %if.else.287

if.then.276:                                      ; preds = %if.end.271
  %197 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color1277 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %197, i32 0, i32 0
  %198 = load i64, i64* %color1277, align 8
  %199 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color2278 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %199, i32 0, i32 1
  store i64 %198, i64* %color2278, align 8
  %200 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs279 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %200, i32 0, i32 1
  %201 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs279, align 8
  %map_rgb_color280 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %201, i32 0, i32 5
  %202 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %map_rgb_color280, align 8
  %203 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %204 = load i16, i16* %r78, align 2
  %205 = load i16, i16* %g81, align 2
  %206 = load i16, i16* %b84, align 2
  %call281 = call i64 %202(%struct.gx_device_s* %203, i16 zeroext %204, i16 zeroext %205, i16 zeroext %206)
  %207 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color1282 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %207, i32 0, i32 0
  store i64 %call281, i64* %color1282, align 8
  %208 = load i64, i64* %hsize, align 8
  %209 = load i32, i32* %level, align 4
  %conv283 = sext i32 %209 to i64
  %sub284 = sub i64 %208, %conv283
  %conv285 = trunc i64 %sub284 to i32
  store i32 %conv285, i32* %level, align 4
  %210 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %halftone_level286 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %210, i32 0, i32 2
  store i32 %conv285, i32* %halftone_level286, align 4
  br label %if.end.292

if.else.287:                                      ; preds = %if.end.271
  %211 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %procs288 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %211, i32 0, i32 1
  %212 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs288, align 8
  %map_rgb_color289 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %212, i32 0, i32 5
  %213 = load i64 (%struct.gx_device_s*, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16)** %map_rgb_color289, align 8
  %214 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %215 = load i16, i16* %r78, align 2
  %216 = load i16, i16* %g81, align 2
  %217 = load i16, i16* %b84, align 2
  %call290 = call i64 %213(%struct.gx_device_s* %214, i16 zeroext %215, i16 zeroext %216, i16 zeroext %217)
  %218 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %color2291 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %218, i32 0, i32 1
  store i64 %call290, i64* %color2291, align 8
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.287, %if.then.276
  %219 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8
  %220 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  call void @gx_color_load(%struct.gx_device_color_s* %219, %struct.gs_state_s* %220)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.2, %if.then.7, %if.then.16, %if.end.67, %if.then.109, %if.end.292, %if.then.248
  ret void
}

declare zeroext i16 @gx_color_luminance(%struct.gs_color_s*) #1

declare void @gx_color_load(%struct.gx_device_color_s*, %struct.gs_state_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
