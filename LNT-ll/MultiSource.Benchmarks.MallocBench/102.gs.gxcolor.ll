; ModuleID = './MultiSource.Benchmarks.MallocBench/102.gs.gxcolor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.ht_bit_s = type { i16, i16 }

; Function Attrs: nounwind uwtable
define void @gx_color_from_rgb(%struct.gs_color_s* %pcolor) #0 {
entry:
  %pcolor.addr = alloca %struct.gs_color_s*, align 8
  store %struct.gs_color_s* %pcolor, %struct.gs_color_s** %pcolor.addr, align 8
  %0 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i32 0, i32 0
  %1 = load i16, i16* %red, align 2
  %conv = zext i16 %1 to i32
  %2 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %2, i32 0, i32 1
  %3 = load i16, i16* %green, align 2
  %conv1 = zext i16 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %green3 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i32 0, i32 1
  %5 = load i16, i16* %green3, align 2
  %conv4 = zext i16 %5 to i32
  %6 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %6, i32 0, i32 2
  %7 = load i16, i16* %blue, align 2
  %conv5 = zext i16 %7 to i32
  %cmp6 = icmp eq i32 %conv4, %conv5
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red8 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %8, i32 0, i32 0
  %9 = load i16, i16* %red8, align 2
  %10 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %10, i32 0, i32 3
  store i16 %9, i16* %luminance, align 2
  %11 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance_set = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %11, i32 0, i32 5
  store i8 1, i8* %luminance_set, align 1
  %12 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %is_gray = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %12, i32 0, i32 4
  store i8 1, i8* %is_gray, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance_set9 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %13, i32 0, i32 5
  store i8 0, i8* %luminance_set9, align 1
  %14 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %is_gray10 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %14, i32 0, i32 4
  store i8 0, i8* %is_gray10, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i16 @gx_color_luminance(%struct.gs_color_s* %pcolor) #0 {
entry:
  %pcolor.addr = alloca %struct.gs_color_s*, align 8
  store %struct.gs_color_s* %pcolor, %struct.gs_color_s** %pcolor.addr, align 8
  %0 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance_set = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i32 0, i32 5
  %1 = load i8, i8* %luminance_set, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %2, i32 0, i32 0
  %3 = load i16, i16* %red, align 2
  %conv = zext i16 %3 to i64
  %mul = mul i64 %conv, 30
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i32 0, i32 1
  %5 = load i16, i16* %green, align 2
  %conv1 = zext i16 %5 to i64
  %mul2 = mul i64 %conv1, 59
  %add = add i64 %mul, %mul2
  %6 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %6, i32 0, i32 2
  %7 = load i16, i16* %blue, align 2
  %conv3 = zext i16 %7 to i64
  %mul4 = mul i64 %conv3, 11
  %add5 = add i64 %add, %mul4
  %add6 = add i64 %add5, 50
  %div = udiv i64 %add6, 100
  %conv7 = trunc i64 %div to i16
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %8, i32 0, i32 3
  store i16 %conv7, i16* %luminance, align 2
  %9 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance_set8 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %9, i32 0, i32 5
  store i8 1, i8* %luminance_set8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %luminance9 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %10, i32 0, i32 3
  %11 = load i16, i16* %luminance9, align 2
  ret i16 %11
}

; Function Attrs: nounwind uwtable
define void @gx_color_to_hsb(%struct.gs_color_s* %pcolor, i16* %hsb) #0 {
entry:
  %pcolor.addr = alloca %struct.gs_color_s*, align 8
  %hsb.addr = alloca i16*, align 8
  %c = alloca %struct.gs_color_s, align 2
  %V = alloca i16, align 2
  %Temp = alloca i16, align 2
  %diff = alloca i64, align 8
  %H = alloca i64, align 8
  store %struct.gs_color_s* %pcolor, %struct.gs_color_s** %pcolor.addr, align 8
  store i16* %hsb, i16** %hsb.addr, align 8
  %0 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %is_gray = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i32 0, i32 4
  %1 = load i8, i8* %is_gray, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16*, i16** %hsb.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 0
  store i16 0, i16* %arrayidx, align 2
  %3 = load i16*, i16** %hsb.addr, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 0, i16* %arrayidx1, align 2
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i32 0, i32 0
  %5 = load i16, i16* %red, align 2
  %6 = load i16*, i16** %hsb.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 2
  store i16 %5, i16* %arrayidx2, align 2
  br label %if.end.102

if.else:                                          ; preds = %entry
  %7 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red3 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %7, i32 0, i32 0
  %8 = load i16, i16* %red3, align 2
  %red4 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 0
  store i16 %8, i16* %red4, align 2
  %9 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %9, i32 0, i32 1
  %10 = load i16, i16* %green, align 2
  %green5 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 1
  store i16 %10, i16* %green5, align 2
  %11 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %11, i32 0, i32 2
  %12 = load i16, i16* %blue, align 2
  %blue6 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 2
  store i16 %12, i16* %blue6, align 2
  %red7 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 0
  %13 = load i16, i16* %red7, align 2
  %conv = zext i16 %13 to i32
  %green8 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 1
  %14 = load i16, i16* %green8, align 2
  %conv9 = zext i16 %14 to i32
  %cmp = icmp sgt i32 %conv, %conv9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %red11 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 0
  %15 = load i16, i16* %red11, align 2
  %conv12 = zext i16 %15 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %green13 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 1
  %16 = load i16, i16* %green13, align 2
  %conv14 = zext i16 %16 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv12, %cond.true ], [ %conv14, %cond.false ]
  %conv15 = trunc i32 %cond to i16
  store i16 %conv15, i16* %V, align 2
  %blue16 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 2
  %17 = load i16, i16* %blue16, align 2
  %conv17 = zext i16 %17 to i32
  %18 = load i16, i16* %V, align 2
  %conv18 = zext i16 %18 to i32
  %cmp19 = icmp sgt i32 %conv17, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %cond.end
  %blue22 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 2
  %19 = load i16, i16* %blue22, align 2
  store i16 %19, i16* %V, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.21, %cond.end
  %red23 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 0
  %20 = load i16, i16* %red23, align 2
  %conv24 = zext i16 %20 to i32
  %green25 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 1
  %21 = load i16, i16* %green25, align 2
  %conv26 = zext i16 %21 to i32
  %cmp27 = icmp sgt i32 %conv24, %conv26
  br i1 %cmp27, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %if.end
  %green30 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 1
  %22 = load i16, i16* %green30, align 2
  %conv31 = zext i16 %22 to i32
  br label %cond.end.35

cond.false.32:                                    ; preds = %if.end
  %red33 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 0
  %23 = load i16, i16* %red33, align 2
  %conv34 = zext i16 %23 to i32
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.29
  %cond36 = phi i32 [ %conv31, %cond.true.29 ], [ %conv34, %cond.false.32 ]
  %conv37 = trunc i32 %cond36 to i16
  store i16 %conv37, i16* %Temp, align 2
  %blue38 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 2
  %24 = load i16, i16* %blue38, align 2
  %conv39 = zext i16 %24 to i32
  %25 = load i16, i16* %Temp, align 2
  %conv40 = zext i16 %25 to i32
  %cmp41 = icmp slt i32 %conv39, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %cond.end.35
  %blue44 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 2
  %26 = load i16, i16* %blue44, align 2
  store i16 %26, i16* %Temp, align 2
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %cond.end.35
  %27 = load i16, i16* %V, align 2
  %conv46 = zext i16 %27 to i32
  %28 = load i16, i16* %Temp, align 2
  %conv47 = zext i16 %28 to i32
  %sub = sub nsw i32 %conv46, %conv47
  %conv48 = sext i32 %sub to i64
  store i64 %conv48, i64* %diff, align 8
  %29 = load i16, i16* %V, align 2
  %conv49 = zext i16 %29 to i32
  %red50 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 0
  %30 = load i16, i16* %red50, align 2
  %conv51 = zext i16 %30 to i32
  %cmp52 = icmp eq i32 %conv49, %conv51
  br i1 %cmp52, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %if.end.45
  %green55 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 1
  %31 = load i16, i16* %green55, align 2
  %conv56 = zext i16 %31 to i32
  %blue57 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 2
  %32 = load i16, i16* %blue57, align 2
  %conv58 = zext i16 %32 to i32
  %sub59 = sub nsw i32 %conv56, %conv58
  %conv60 = sext i32 %sub59 to i64
  %mul = mul nsw i64 %conv60, 65535
  %33 = load i64, i64* %diff, align 8
  %div = sdiv i64 %mul, %33
  store i64 %div, i64* %H, align 8
  br label %if.end.87

if.else.61:                                       ; preds = %if.end.45
  %34 = load i16, i16* %V, align 2
  %conv62 = zext i16 %34 to i32
  %green63 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 1
  %35 = load i16, i16* %green63, align 2
  %conv64 = zext i16 %35 to i32
  %cmp65 = icmp eq i32 %conv62, %conv64
  br i1 %cmp65, label %if.then.67, label %if.else.76

if.then.67:                                       ; preds = %if.else.61
  %blue68 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 2
  %36 = load i16, i16* %blue68, align 2
  %conv69 = zext i16 %36 to i32
  %red70 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 0
  %37 = load i16, i16* %red70, align 2
  %conv71 = zext i16 %37 to i32
  %sub72 = sub nsw i32 %conv69, %conv71
  %conv73 = sext i32 %sub72 to i64
  %mul74 = mul nsw i64 %conv73, 65535
  %38 = load i64, i64* %diff, align 8
  %div75 = sdiv i64 %mul74, %38
  %add = add nsw i64 %div75, 131070
  store i64 %add, i64* %H, align 8
  br label %if.end.86

if.else.76:                                       ; preds = %if.else.61
  %red77 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 0
  %39 = load i16, i16* %red77, align 2
  %conv78 = zext i16 %39 to i32
  %green79 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %c, i32 0, i32 1
  %40 = load i16, i16* %green79, align 2
  %conv80 = zext i16 %40 to i32
  %sub81 = sub nsw i32 %conv78, %conv80
  %conv82 = sext i32 %sub81 to i64
  %mul83 = mul nsw i64 %conv82, 65535
  %41 = load i64, i64* %diff, align 8
  %div84 = sdiv i64 %mul83, %41
  %add85 = add nsw i64 %div84, 262140
  store i64 %add85, i64* %H, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.76, %if.then.67
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.54
  %42 = load i64, i64* %H, align 8
  %cmp88 = icmp slt i64 %42, 0
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.end.87
  %43 = load i64, i64* %H, align 8
  %add91 = add nsw i64 %43, 393210
  store i64 %add91, i64* %H, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.end.87
  %44 = load i64, i64* %H, align 8
  %div93 = sdiv i64 %44, 6
  %conv94 = trunc i64 %div93 to i16
  %45 = load i16*, i16** %hsb.addr, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %45, i64 0
  store i16 %conv94, i16* %arrayidx95, align 2
  %46 = load i64, i64* %diff, align 8
  %mul96 = mul nsw i64 %46, 65535
  %47 = load i16, i16* %V, align 2
  %conv97 = zext i16 %47 to i64
  %div98 = sdiv i64 %mul96, %conv97
  %conv99 = trunc i64 %div98 to i16
  %48 = load i16*, i16** %hsb.addr, align 8
  %arrayidx100 = getelementptr inbounds i16, i16* %48, i64 1
  store i16 %conv99, i16* %arrayidx100, align 2
  %49 = load i16, i16* %V, align 2
  %50 = load i16*, i16** %hsb.addr, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %50, i64 2
  store i16 %49, i16* %arrayidx101, align 2
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.92, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_color_from_hsb(%struct.gs_color_s* %pcolor, i16 zeroext %hue, i16 zeroext %saturation, i16 zeroext %brightness) #0 {
entry:
  %pcolor.addr = alloca %struct.gs_color_s*, align 8
  %hue.addr = alloca i16, align 2
  %saturation.addr = alloca i16, align 2
  %brightness.addr = alloca i16, align 2
  %V = alloca float, align 4
  %S = alloca float, align 4
  %I = alloca i32, align 4
  %F = alloca float, align 4
  %M = alloca float, align 4
  %N = alloca float, align 4
  %K = alloca float, align 4
  %R = alloca float, align 4
  %G = alloca float, align 4
  %B = alloca float, align 4
  store %struct.gs_color_s* %pcolor, %struct.gs_color_s** %pcolor.addr, align 8
  store i16 %hue, i16* %hue.addr, align 2
  store i16 %saturation, i16* %saturation.addr, align 2
  store i16 %brightness, i16* %brightness.addr, align 2
  %0 = load i16, i16* %saturation.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %brightness.addr, align 2
  %2 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %blue = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %2, i32 0, i32 2
  store i16 %1, i16* %blue, align 2
  %3 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %green = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %3, i32 0, i32 1
  store i16 %1, i16* %green, align 2
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i32 0, i32 0
  store i16 %1, i16* %red, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i16, i16* %brightness.addr, align 2
  %conv2 = zext i16 %5 to i32
  %add = add nsw i32 %conv2, 0
  %conv3 = sitofp i32 %add to float
  %div = fdiv float %conv3, 6.553500e+04
  store float %div, float* %V, align 4
  %6 = load i16, i16* %saturation.addr, align 2
  %conv4 = zext i16 %6 to i32
  %add5 = add nsw i32 %conv4, 0
  %conv6 = sitofp i32 %add5 to float
  %div7 = fdiv float %conv6, 6.553500e+04
  store float %div7, float* %S, align 4
  %7 = load i16, i16* %hue.addr, align 2
  %conv8 = zext i16 %7 to i32
  %div9 = sdiv i32 %conv8, 10923
  store i32 %div9, i32* %I, align 4
  %8 = load i16, i16* %hue.addr, align 2
  %conv10 = zext i16 %8 to i32
  %rem = srem i32 %conv10, 10923
  %conv11 = sitofp i32 %rem to float
  %div12 = fdiv float %conv11, 1.092300e+04
  store float %div12, float* %F, align 4
  %9 = load float, float* %V, align 4
  %10 = load float, float* %S, align 4
  %sub = fsub float 1.000000e+00, %10
  %mul = fmul float %9, %sub
  store float %mul, float* %M, align 4
  %11 = load float, float* %V, align 4
  %12 = load float, float* %S, align 4
  %13 = load float, float* %F, align 4
  %mul13 = fmul float %12, %13
  %sub14 = fsub float 1.000000e+00, %mul13
  %mul15 = fmul float %11, %sub14
  store float %mul15, float* %N, align 4
  %14 = load float, float* %V, align 4
  %15 = load float, float* %S, align 4
  %16 = load float, float* %F, align 4
  %sub16 = fsub float 1.000000e+00, %16
  %mul17 = fmul float %15, %sub16
  %sub18 = fsub float 1.000000e+00, %mul17
  %mul19 = fmul float %14, %sub18
  store float %mul19, float* %K, align 4
  %17 = load i32, i32* %I, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.21
    i32 4, label %sw.bb.22
    i32 5, label %sw.bb.23
  ]

sw.default:                                       ; preds = %if.else
  %18 = load float, float* %V, align 4
  store float %18, float* %R, align 4
  %19 = load float, float* %K, align 4
  store float %19, float* %G, align 4
  %20 = load float, float* %M, align 4
  store float %20, float* %B, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else
  %21 = load float, float* %N, align 4
  store float %21, float* %R, align 4
  %22 = load float, float* %V, align 4
  store float %22, float* %G, align 4
  %23 = load float, float* %M, align 4
  store float %23, float* %B, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.else
  %24 = load float, float* %M, align 4
  store float %24, float* %R, align 4
  %25 = load float, float* %V, align 4
  store float %25, float* %G, align 4
  %26 = load float, float* %K, align 4
  store float %26, float* %B, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.else
  %27 = load float, float* %M, align 4
  store float %27, float* %R, align 4
  %28 = load float, float* %N, align 4
  store float %28, float* %G, align 4
  %29 = load float, float* %V, align 4
  store float %29, float* %B, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.else
  %30 = load float, float* %K, align 4
  store float %30, float* %R, align 4
  %31 = load float, float* %M, align 4
  store float %31, float* %G, align 4
  %32 = load float, float* %V, align 4
  store float %32, float* %B, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.else
  %33 = load float, float* %V, align 4
  store float %33, float* %R, align 4
  %34 = load float, float* %M, align 4
  store float %34, float* %G, align 4
  %35 = load float, float* %N, align 4
  store float %35, float* %B, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb, %sw.default
  %36 = load float, float* %R, align 4
  %mul24 = fmul float %36, 6.553500e+04
  %conv25 = fptoui float %mul24 to i16
  %37 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %red26 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %37, i32 0, i32 0
  store i16 %conv25, i16* %red26, align 2
  %38 = load float, float* %G, align 4
  %mul27 = fmul float %38, 6.553500e+04
  %conv28 = fptoui float %mul27 to i16
  %39 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %green29 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %39, i32 0, i32 1
  store i16 %conv28, i16* %green29, align 2
  %40 = load float, float* %B, align 4
  %mul30 = fmul float %40, 6.553500e+04
  %conv31 = fptoui float %mul30 to i16
  %41 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  %blue32 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %41, i32 0, i32 2
  store i16 %conv31, i16* %blue32, align 2
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %42 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor.addr, align 8
  call void @gx_color_from_rgb(%struct.gs_color_s* %42)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_sort_ht_order(%struct.ht_bit_s* %recs, i32 %N) #0 {
entry:
  %recs.addr = alloca %struct.ht_bit_s*, align 8
  %N.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  %R = alloca %struct.ht_bit_s, align 2
  %i = alloca i32, align 4
  store %struct.ht_bit_s* %recs, %struct.ht_bit_s** %recs.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %shr = lshr i32 %0, 1
  store i32 %shr, i32* %l, align 4
  %1 = load i32, i32* %N.addr, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %r, align 4
  %2 = load i32, i32* %N.addr, align 4
  %cmp = icmp ule i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end.49

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %while.end
  %3 = load i32, i32* %l, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %while.body
  %4 = load i32, i32* %l, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %l, align 4
  %idxprom = zext i32 %dec to i64
  %5 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %5, i64 %idxprom
  %6 = bitcast %struct.ht_bit_s* %R to i8*
  %7 = bitcast %struct.ht_bit_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 4, i32 2, i1 false)
  br label %if.end.13

if.else:                                          ; preds = %while.body
  %8 = load i32, i32* %r, align 4
  %idxprom3 = zext i32 %8 to i64
  %9 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %9, i64 %idxprom3
  %10 = bitcast %struct.ht_bit_s* %R to i8*
  %11 = bitcast %struct.ht_bit_s* %arrayidx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 4, i32 2, i1 false)
  %12 = load i32, i32* %r, align 4
  %idxprom5 = zext i32 %12 to i64
  %13 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %13, i64 %idxprom5
  %14 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %14, i64 0
  %15 = bitcast %struct.ht_bit_s* %arrayidx6 to i8*
  %16 = bitcast %struct.ht_bit_s* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 4, i32 2, i1 false)
  %17 = load i32, i32* %r, align 4
  %dec8 = add i32 %17, -1
  store i32 %dec8, i32* %r, align 4
  %cmp9 = icmp eq i32 %dec8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.else
  %18 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %18, i64 0
  %19 = bitcast %struct.ht_bit_s* %arrayidx11 to i8*
  %20 = bitcast %struct.ht_bit_s* %R to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 4, i32 2, i1 false)
  br label %while.end.49

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.2
  %21 = load i32, i32* %l, align 4
  store i32 %21, i32* %j, align 4
  br label %while.body.15

while.body.15:                                    ; preds = %if.end.13, %if.end.44
  %22 = load i32, i32* %j, align 4
  store i32 %22, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %j, align 4
  %add = add i32 %23, %24
  %add16 = add i32 %add, 1
  store i32 %add16, i32* %j, align 4
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %r, align 4
  %cmp17 = icmp ult i32 %25, %26
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %while.body.15
  %27 = load i32, i32* %j, align 4
  %idxprom19 = zext i32 %27 to i64
  %28 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %28, i64 %idxprom19
  %mask = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %arrayidx20, i32 0, i32 1
  %29 = load i16, i16* %mask, align 2
  %conv = zext i16 %29 to i32
  %30 = load i32, i32* %j, align 4
  %add21 = add i32 %30, 1
  %idxprom22 = zext i32 %add21 to i64
  %31 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %31, i64 %idxprom22
  %mask24 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %arrayidx23, i32 0, i32 1
  %32 = load i16, i16* %mask24, align 2
  %conv25 = zext i16 %32 to i32
  %cmp26 = icmp slt i32 %conv, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.18
  %33 = load i32, i32* %j, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %while.body.15
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %r, align 4
  %cmp31 = icmp ugt i32 %34, %35
  br i1 %cmp31, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %mask33 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %R, i32 0, i32 1
  %36 = load i16, i16* %mask33, align 2
  %conv34 = zext i16 %36 to i32
  %37 = load i32, i32* %j, align 4
  %idxprom35 = zext i32 %37 to i64
  %38 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %38, i64 %idxprom35
  %mask37 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %arrayidx36, i32 0, i32 1
  %39 = load i16, i16* %mask37, align 2
  %conv38 = zext i16 %39 to i32
  %cmp39 = icmp sge i32 %conv34, %conv38
  br i1 %cmp39, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %lor.lhs.false, %if.end.30
  %40 = load i32, i32* %i, align 4
  %idxprom42 = zext i32 %40 to i64
  %41 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %41, i64 %idxprom42
  %42 = bitcast %struct.ht_bit_s* %arrayidx43 to i8*
  %43 = bitcast %struct.ht_bit_s* %R to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 4, i32 2, i1 false)
  br label %while.end

if.end.44:                                        ; preds = %lor.lhs.false
  %44 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %44 to i64
  %45 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %45, i64 %idxprom45
  %46 = load i32, i32* %j, align 4
  %idxprom47 = zext i32 %46 to i64
  %47 = load %struct.ht_bit_s*, %struct.ht_bit_s** %recs.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %47, i64 %idxprom47
  %48 = bitcast %struct.ht_bit_s* %arrayidx46 to i8*
  %49 = bitcast %struct.ht_bit_s* %arrayidx48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 4, i32 2, i1 false)
  br label %while.body.15

while.end:                                        ; preds = %if.then.41
  br label %while.body

while.end.49:                                     ; preds = %if.then, %if.then.10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
