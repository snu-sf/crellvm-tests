; ModuleID = './gscolorbuffer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }

; Function Attrs: nounwind uwtable
define void @gs_transform_color_buffer_generic(i8* %inputbuffer, i32 %row_stride, i32 %plane_stride, i32 %input_num_color, i64 %rect.coerce0, i64 %rect.coerce1, i8* %outputbuffer, i32 %output_num_color, i32 %num_noncolor_planes) #0 {
entry:
  %rect = alloca %struct.gs_int_rect_s, align 8
  %inputbuffer.addr = alloca i8*, align 8
  %row_stride.addr = alloca i32, align 4
  %plane_stride.addr = alloca i32, align 4
  %input_num_color.addr = alloca i32, align 4
  %outputbuffer.addr = alloca i8*, align 8
  %output_num_color.addr = alloca i32, align 4
  %num_noncolor_planes.addr = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %num_cols = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %color_remap = alloca void (i8*, i8*)*, align 8
  %input_vector = alloca [4 x i8], align 1
  %output_vector = alloca [4 x i8], align 1
  %plane_offset = alloca [67 x i32], align 16
  %alpha_offset_in = alloca i32, align 4
  %max_num_channels = alloca i32, align 4
  %0 = bitcast %struct.gs_int_rect_s* %rect to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %rect.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %rect.coerce1, i64* %2
  store i8* %inputbuffer, i8** %inputbuffer.addr, align 8, !tbaa !1
  store i32 %row_stride, i32* %row_stride.addr, align 4, !tbaa !5
  store i32 %plane_stride, i32* %plane_stride.addr, align 4, !tbaa !5
  store i32 %input_num_color, i32* %input_num_color.addr, align 4, !tbaa !5
  store i8* %outputbuffer, i8** %outputbuffer.addr, align 8, !tbaa !1
  store i32 %output_num_color, i32* %output_num_color.addr, align 4, !tbaa !5
  store i32 %num_noncolor_planes, i32* %num_noncolor_planes.addr, align 4, !tbaa !5
  %3 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %z to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast void (i8*, i8*)** %color_remap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store void (i8*, i8*)* null, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  %9 = bitcast [4 x i8]* %input_vector to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast [4 x i8]* %output_vector to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [67 x i32]* %plane_offset to i8*
  call void @llvm.lifetime.start(i64 268, i8* %11) #1
  %12 = bitcast i32* %alpha_offset_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %max_num_channels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %14 = load i32, i32* %y1, align 4, !tbaa !7
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %15 = load i32, i32* %y2, align 4, !tbaa !10
  %sub = sub nsw i32 %14, %15
  store i32 %sub, i32* %num_rows, align 4, !tbaa !5
  %q3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q3, i32 0, i32 0
  %16 = load i32, i32* %x4, align 4, !tbaa !11
  %p5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p5, i32 0, i32 0
  %17 = load i32, i32* %x6, align 4, !tbaa !12
  %sub7 = sub nsw i32 %16, %17
  store i32 %sub7, i32* %num_cols, align 4, !tbaa !5
  %18 = load i32, i32* %output_num_color.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %18, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load i32, i32* %input_num_color.addr, align 4, !tbaa !5
  switch i32 %19, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.then
  store void (i8*, i8*)* @gray_to_cmyk, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  store void (i8*, i8*)* @rgb_to_cmyk, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  store void (i8*, i8*)* null, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb.8, %sw.bb
  br label %if.end.26

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %input_num_color.addr, align 4, !tbaa !5
  switch i32 %20, label %sw.default.24 [
    i32 1, label %sw.bb.10
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.19
  ]

sw.bb.10:                                         ; preds = %if.else
  %21 = load i32, i32* %output_num_color.addr, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %21, 3
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %sw.bb.10
  store void (i8*, i8*)* @gray_to_rgb, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  br label %if.end

if.else.13:                                       ; preds = %sw.bb.10
  store void (i8*, i8*)* @gray_to_cmyk, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.12
  br label %sw.epilog.25

sw.bb.14:                                         ; preds = %if.else
  %22 = load i32, i32* %output_num_color.addr, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %22, 1
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %sw.bb.14
  store void (i8*, i8*)* @rgb_to_gray, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  br label %if.end.18

if.else.17:                                       ; preds = %sw.bb.14
  store void (i8*, i8*)* @rgb_to_cmyk, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  br label %sw.epilog.25

sw.bb.19:                                         ; preds = %if.else
  %23 = load i32, i32* %output_num_color.addr, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %23, 1
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %sw.bb.19
  store void (i8*, i8*)* @cmyk_to_gray, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  br label %if.end.23

if.else.22:                                       ; preds = %sw.bb.19
  store void (i8*, i8*)* @cmyk_to_rgb, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %sw.epilog.25

sw.default.24:                                    ; preds = %if.else
  br label %sw.epilog.25

sw.epilog.25:                                     ; preds = %sw.default.24, %if.end.23, %if.end.18, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %sw.epilog.25, %sw.epilog
  %24 = load i32, i32* %input_num_color.addr, align 4, !tbaa !5
  %25 = load i32, i32* %output_num_color.addr, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %24, %25
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %26 = load i32, i32* %input_num_color.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  %27 = load i32, i32* %output_num_color.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  %28 = load i32, i32* %num_noncolor_planes.addr, align 4, !tbaa !5
  %add = add nsw i32 %cond, %28
  store i32 %add, i32* %max_num_channels, align 4, !tbaa !5
  store i32 0, i32* %z, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %29 = load i32, i32* %z, align 4, !tbaa !5
  %30 = load i32, i32* %max_num_channels, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %29, %30
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %z, align 4, !tbaa !5
  %32 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %31, %32
  %33 = load i32, i32* %z, align 4, !tbaa !5
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds [67 x i32], [67 x i32]* %plane_offset, i32 0, i64 %idxprom
  store i32 %mul, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %z, align 4, !tbaa !5
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %z, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load void (i8*, i8*)*, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  %cmp29 = icmp eq void (i8*, i8*)* %35, null
  br i1 %cmp29, label %if.then.30, label %if.else.47

if.then.30:                                       ; preds = %for.end
  %36 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %38 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %mul31 = mul nsw i32 4, %38
  %conv = sext i32 %mul31 to i64
  %call = call i8* @memcpy(i8* %36, i8* %37, i64 %conv) #3
  %39 = load i32, i32* %num_noncolor_planes.addr, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %39, 0
  br i1 %cmp32, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %if.then.30
  %40 = load i32, i32* %output_num_color.addr, align 4, !tbaa !5
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds [67 x i32], [67 x i32]* %plane_offset, i32 0, i64 %idxprom35
  %41 = load i32, i32* %arrayidx36, align 4, !tbaa !5
  %idxprom37 = sext i32 %41 to i64
  %42 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %42, i64 %idxprom37
  %43 = load i32, i32* %input_num_color.addr, align 4, !tbaa !5
  %idxprom39 = sext i32 %43 to i64
  %arrayidx40 = getelementptr inbounds [67 x i32], [67 x i32]* %plane_offset, i32 0, i64 %idxprom39
  %44 = load i32, i32* %arrayidx40, align 4, !tbaa !5
  %idxprom41 = sext i32 %44 to i64
  %45 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  %46 = load i32, i32* %num_noncolor_planes.addr, align 4, !tbaa !5
  %47 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %mul43 = mul nsw i32 %46, %47
  %conv44 = sext i32 %mul43 to i64
  %call45 = call i8* @memcpy(i8* %arrayidx38, i8* %arrayidx42, i64 %conv44) #3
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.34, %if.then.30
  br label %if.end.130

if.else.47:                                       ; preds = %for.end
  %48 = load i32, i32* %input_num_color.addr, align 4, !tbaa !5
  %49 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %mul48 = mul nsw i32 %48, %49
  store i32 %mul48, i32* %alpha_offset_in, align 4, !tbaa !5
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.127, %if.else.47
  %50 = load i32, i32* %y, align 4, !tbaa !5
  %51 = load i32, i32* %num_rows, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %50, %51
  br i1 %cmp50, label %for.body.52, label %for.end.129

for.body.52:                                      ; preds = %for.cond.49
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.113, %for.body.52
  %52 = load i32, i32* %x, align 4, !tbaa !5
  %53 = load i32, i32* %num_cols, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %52, %53
  br i1 %cmp54, label %for.body.56, label %for.end.115

for.body.56:                                      ; preds = %for.cond.53
  %54 = load i32, i32* %x, align 4, !tbaa !5
  %55 = load i32, i32* %alpha_offset_in, align 4, !tbaa !5
  %add57 = add nsw i32 %54, %55
  %idxprom58 = sext i32 %add57 to i64
  %56 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 %idxprom58
  %57 = load i8, i8* %arrayidx59, align 1, !tbaa !13
  %conv60 = zext i8 %57 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.112

if.then.63:                                       ; preds = %for.body.56
  store i32 0, i32* %z, align 4, !tbaa !5
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.75, %if.then.63
  %58 = load i32, i32* %z, align 4, !tbaa !5
  %59 = load i32, i32* %input_num_color.addr, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %58, %59
  br i1 %cmp65, label %for.body.67, label %for.end.77

for.body.67:                                      ; preds = %for.cond.64
  %60 = load i32, i32* %x, align 4, !tbaa !5
  %61 = load i32, i32* %z, align 4, !tbaa !5
  %idxprom68 = sext i32 %61 to i64
  %arrayidx69 = getelementptr inbounds [67 x i32], [67 x i32]* %plane_offset, i32 0, i64 %idxprom68
  %62 = load i32, i32* %arrayidx69, align 4, !tbaa !5
  %add70 = add nsw i32 %60, %62
  %idxprom71 = sext i32 %add70 to i64
  %63 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %63, i64 %idxprom71
  %64 = load i8, i8* %arrayidx72, align 1, !tbaa !13
  %65 = load i32, i32* %z, align 4, !tbaa !5
  %idxprom73 = sext i32 %65 to i64
  %arrayidx74 = getelementptr inbounds [4 x i8], [4 x i8]* %input_vector, i32 0, i64 %idxprom73
  store i8 %64, i8* %arrayidx74, align 1, !tbaa !13
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.67
  %66 = load i32, i32* %z, align 4, !tbaa !5
  %inc76 = add nsw i32 %66, 1
  store i32 %inc76, i32* %z, align 4, !tbaa !5
  br label %for.cond.64

for.end.77:                                       ; preds = %for.cond.64
  %67 = load void (i8*, i8*)*, void (i8*, i8*)** %color_remap, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %input_vector, i32 0, i32 0
  %arraydecay78 = getelementptr inbounds [4 x i8], [4 x i8]* %output_vector, i32 0, i32 0
  call void %67(i8* %arraydecay, i8* %arraydecay78) #4
  store i32 0, i32* %z, align 4, !tbaa !5
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.90, %for.end.77
  %68 = load i32, i32* %z, align 4, !tbaa !5
  %69 = load i32, i32* %output_num_color.addr, align 4, !tbaa !5
  %cmp80 = icmp slt i32 %68, %69
  br i1 %cmp80, label %for.body.82, label %for.end.92

for.body.82:                                      ; preds = %for.cond.79
  %70 = load i32, i32* %z, align 4, !tbaa !5
  %idxprom83 = sext i32 %70 to i64
  %arrayidx84 = getelementptr inbounds [4 x i8], [4 x i8]* %output_vector, i32 0, i64 %idxprom83
  %71 = load i8, i8* %arrayidx84, align 1, !tbaa !13
  %72 = load i32, i32* %x, align 4, !tbaa !5
  %73 = load i32, i32* %z, align 4, !tbaa !5
  %idxprom85 = sext i32 %73 to i64
  %arrayidx86 = getelementptr inbounds [67 x i32], [67 x i32]* %plane_offset, i32 0, i64 %idxprom85
  %74 = load i32, i32* %arrayidx86, align 4, !tbaa !5
  %add87 = add nsw i32 %72, %74
  %idxprom88 = sext i32 %add87 to i64
  %75 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %75, i64 %idxprom88
  store i8 %71, i8* %arrayidx89, align 1, !tbaa !13
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.82
  %76 = load i32, i32* %z, align 4, !tbaa !5
  %inc91 = add nsw i32 %76, 1
  store i32 %inc91, i32* %z, align 4, !tbaa !5
  br label %for.cond.79

for.end.92:                                       ; preds = %for.cond.79
  store i32 0, i32* %z, align 4, !tbaa !5
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.109, %for.end.92
  %77 = load i32, i32* %z, align 4, !tbaa !5
  %78 = load i32, i32* %num_noncolor_planes.addr, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %77, %78
  br i1 %cmp94, label %for.body.96, label %for.end.111

for.body.96:                                      ; preds = %for.cond.93
  %79 = load i32, i32* %x, align 4, !tbaa !5
  %80 = load i32, i32* %input_num_color.addr, align 4, !tbaa !5
  %81 = load i32, i32* %z, align 4, !tbaa !5
  %add97 = add nsw i32 %80, %81
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds [67 x i32], [67 x i32]* %plane_offset, i32 0, i64 %idxprom98
  %82 = load i32, i32* %arrayidx99, align 4, !tbaa !5
  %add100 = add nsw i32 %79, %82
  %idxprom101 = sext i32 %add100 to i64
  %83 = load i8*, i8** %inputbuffer.addr, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %83, i64 %idxprom101
  %84 = load i8, i8* %arrayidx102, align 1, !tbaa !13
  %85 = load i32, i32* %x, align 4, !tbaa !5
  %86 = load i32, i32* %output_num_color.addr, align 4, !tbaa !5
  %87 = load i32, i32* %z, align 4, !tbaa !5
  %add103 = add nsw i32 %86, %87
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds [67 x i32], [67 x i32]* %plane_offset, i32 0, i64 %idxprom104
  %88 = load i32, i32* %arrayidx105, align 4, !tbaa !5
  %add106 = add nsw i32 %85, %88
  %idxprom107 = sext i32 %add106 to i64
  %89 = load i8*, i8** %outputbuffer.addr, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i8, i8* %89, i64 %idxprom107
  store i8 %84, i8* %arrayidx108, align 1, !tbaa !13
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.96
  %90 = load i32, i32* %z, align 4, !tbaa !5
  %inc110 = add nsw i32 %90, 1
  store i32 %inc110, i32* %z, align 4, !tbaa !5
  br label %for.cond.93

for.end.111:                                      ; preds = %for.cond.93
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %for.body.56
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %91 = load i32, i32* %x, align 4, !tbaa !5
  %inc114 = add nsw i32 %91, 1
  store i32 %inc114, i32* %x, align 4, !tbaa !5
  br label %for.cond.53

for.end.115:                                      ; preds = %for.cond.53
  store i32 0, i32* %z, align 4, !tbaa !5
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.123, %for.end.115
  %92 = load i32, i32* %z, align 4, !tbaa !5
  %93 = load i32, i32* %max_num_channels, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %92, %93
  br i1 %cmp117, label %for.body.119, label %for.end.125

for.body.119:                                     ; preds = %for.cond.116
  %94 = load i32, i32* %row_stride.addr, align 4, !tbaa !5
  %95 = load i32, i32* %z, align 4, !tbaa !5
  %idxprom120 = sext i32 %95 to i64
  %arrayidx121 = getelementptr inbounds [67 x i32], [67 x i32]* %plane_offset, i32 0, i64 %idxprom120
  %96 = load i32, i32* %arrayidx121, align 4, !tbaa !5
  %add122 = add nsw i32 %96, %94
  store i32 %add122, i32* %arrayidx121, align 4, !tbaa !5
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.119
  %97 = load i32, i32* %z, align 4, !tbaa !5
  %inc124 = add nsw i32 %97, 1
  store i32 %inc124, i32* %z, align 4, !tbaa !5
  br label %for.cond.116

for.end.125:                                      ; preds = %for.cond.116
  %98 = load i32, i32* %row_stride.addr, align 4, !tbaa !5
  %99 = load i32, i32* %alpha_offset_in, align 4, !tbaa !5
  %add126 = add nsw i32 %99, %98
  store i32 %add126, i32* %alpha_offset_in, align 4, !tbaa !5
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end.125
  %100 = load i32, i32* %y, align 4, !tbaa !5
  %inc128 = add nsw i32 %100, 1
  store i32 %inc128, i32* %y, align 4, !tbaa !5
  br label %for.cond.49

for.end.129:                                      ; preds = %for.cond.49
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.129, %if.end.46
  %101 = bitcast i32* %max_num_channels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %alpha_offset_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast [67 x i32]* %plane_offset to i8*
  call void @llvm.lifetime.end(i64 268, i8* %103) #1
  %104 = bitcast [4 x i8]* %output_vector to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast [4 x i8]* %input_vector to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast void (i8*, i8*)** %color_remap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i32* %z to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %num_cols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @gray_to_cmyk(i8* %gray, i8* %cmyk) #0 {
entry:
  %gray.addr = alloca i8*, align 8
  %cmyk.addr = alloca i8*, align 8
  store i8* %gray, i8** %gray.addr, align 8, !tbaa !1
  store i8* %cmyk, i8** %cmyk.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !13
  %1 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 0, i8* %arrayidx1, align 1, !tbaa !13
  %2 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 0, i8* %arrayidx2, align 1, !tbaa !13
  %3 = load i8*, i8** %gray.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx3, align 1, !tbaa !13
  %conv = zext i8 %4 to i32
  %sub = sub nsw i32 255, %conv
  %conv4 = trunc i32 %sub to i8
  %5 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 3
  store i8 %conv4, i8* %arrayidx5, align 1, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_to_cmyk(i8* %rgb, i8* %cmyk) #0 {
entry:
  %rgb.addr = alloca i8*, align 8
  %cmyk.addr = alloca i8*, align 8
  store i8* %rgb, i8** %rgb.addr, align 8, !tbaa !1
  store i8* %cmyk, i8** %cmyk.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 255, %conv
  %conv1 = trunc i32 %sub to i8
  %2 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  store i8 %conv1, i8* %arrayidx2, align 1, !tbaa !13
  %3 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx3, align 1, !tbaa !13
  %conv4 = zext i8 %4 to i32
  %sub5 = sub nsw i32 255, %conv4
  %conv6 = trunc i32 %sub5 to i8
  %5 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 %conv6, i8* %arrayidx7, align 1, !tbaa !13
  %6 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx8, align 1, !tbaa !13
  %conv9 = zext i8 %7 to i32
  %sub10 = sub nsw i32 255, %conv9
  %conv11 = trunc i32 %sub10 to i8
  %8 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 2
  store i8 %conv11, i8* %arrayidx12, align 1, !tbaa !13
  %9 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx13, align 1, !tbaa !13
  %conv14 = zext i8 %10 to i32
  %11 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx15, align 1, !tbaa !13
  %conv16 = zext i8 %12 to i32
  %cmp = icmp slt i32 %conv14, %conv16
  br i1 %cmp, label %cond.true, label %cond.false.29

cond.true:                                        ; preds = %entry
  %13 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx18, align 1, !tbaa !13
  %conv19 = zext i8 %14 to i32
  %15 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx20, align 1, !tbaa !13
  %conv21 = zext i8 %16 to i32
  %cmp22 = icmp slt i32 %conv19, %conv21
  br i1 %cmp22, label %cond.true.24, label %cond.false

cond.true.24:                                     ; preds = %cond.true
  %17 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx25, align 1, !tbaa !13
  %conv26 = zext i8 %18 to i32
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %19 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx27, align 1, !tbaa !13
  %conv28 = zext i8 %20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.24
  %cond = phi i32 [ %conv26, %cond.true.24 ], [ %conv28, %cond.false ]
  br label %cond.end.44

cond.false.29:                                    ; preds = %entry
  %21 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx30, align 1, !tbaa !13
  %conv31 = zext i8 %22 to i32
  %23 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %23, i64 2
  %24 = load i8, i8* %arrayidx32, align 1, !tbaa !13
  %conv33 = zext i8 %24 to i32
  %cmp34 = icmp slt i32 %conv31, %conv33
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.false.29
  %25 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx37, align 1, !tbaa !13
  %conv38 = zext i8 %26 to i32
  br label %cond.end.42

cond.false.39:                                    ; preds = %cond.false.29
  %27 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load i8, i8* %arrayidx40, align 1, !tbaa !13
  %conv41 = zext i8 %28 to i32
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.39, %cond.true.36
  %cond43 = phi i32 [ %conv38, %cond.true.36 ], [ %conv41, %cond.false.39 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.42, %cond.end
  %cond45 = phi i32 [ %cond, %cond.end ], [ %cond43, %cond.end.42 ]
  %conv46 = trunc i32 %cond45 to i8
  %29 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %29, i64 3
  store i8 %conv46, i8* %arrayidx47, align 1, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gray_to_rgb(i8* %gray, i8* %rgb) #0 {
entry:
  %gray.addr = alloca i8*, align 8
  %rgb.addr = alloca i8*, align 8
  store i8* %gray, i8** %gray.addr, align 8, !tbaa !1
  store i8* %rgb, i8** %rgb.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %gray.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %2 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 0
  store i8 %1, i8* %arrayidx1, align 1, !tbaa !13
  %3 = load i8*, i8** %gray.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1, !tbaa !13
  %5 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 %4, i8* %arrayidx3, align 1, !tbaa !13
  %6 = load i8*, i8** %gray.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx4, align 1, !tbaa !13
  %8 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 2
  store i8 %7, i8* %arrayidx5, align 1, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_to_gray(i8* %rgb, i8* %gray) #0 {
entry:
  %rgb.addr = alloca i8*, align 8
  %gray.addr = alloca i8*, align 8
  %temp_value = alloca float, align 4
  store i8* %rgb, i8** %rgb.addr, align 8, !tbaa !1
  store i8* %gray, i8** %gray.addr, align 8, !tbaa !1
  %0 = bitcast float* %temp_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv = zext i8 %2 to i32
  %conv1 = sitofp i32 %conv to double
  %mul = fmul double %conv1, 3.000000e-01
  %3 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx2, align 1, !tbaa !13
  %conv3 = zext i8 %4 to i32
  %conv4 = sitofp i32 %conv3 to double
  %mul5 = fmul double %conv4, 5.900000e-01
  %add = fadd double %mul, %mul5
  %5 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx6, align 1, !tbaa !13
  %conv7 = zext i8 %6 to i32
  %conv8 = sitofp i32 %conv7 to double
  %mul9 = fmul double %conv8, 1.100000e-01
  %add10 = fadd double %add, %mul9
  %conv11 = fptrunc double %add10 to float
  store float %conv11, float* %temp_value, align 4, !tbaa !14
  %7 = load float, float* %temp_value, align 4, !tbaa !14
  %conv12 = fpext float %7 to double
  %mul13 = fmul double %conv12, 0x3F70101010101010
  %conv14 = fptrunc double %mul13 to float
  store float %conv14, float* %temp_value, align 4, !tbaa !14
  %8 = load float, float* %temp_value, align 4, !tbaa !14
  %conv15 = fpext float %8 to double
  %cmp = fcmp olt double 0.000000e+00, %conv15
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %9 = load float, float* %temp_value, align 4, !tbaa !14
  %conv17 = fpext float %9 to double
  %cmp18 = fcmp olt double %conv17, 1.000000e+00
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %10 = load float, float* %temp_value, align 4, !tbaa !14
  %conv20 = fpext float %10 to double
  %mul21 = fmul double %conv20, 2.550000e+02
  %conv22 = fptoui double %mul21 to i8
  %conv23 = zext i8 %conv22 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %11 = load float, float* %temp_value, align 4, !tbaa !14
  %conv24 = fpext float %11 to double
  %cmp25 = fcmp ole double %conv24, 0.000000e+00
  %cond = select i1 %cmp25, i32 0, i32 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond27 = phi i32 [ %conv23, %cond.true ], [ %cond, %cond.false ]
  %conv28 = trunc i32 %cond27 to i8
  %12 = load i8*, i8** %gray.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !13
  %13 = bitcast float* %temp_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_to_gray(i8* %cmyk, i8* %gray) #0 {
entry:
  %cmyk.addr = alloca i8*, align 8
  %gray.addr = alloca i8*, align 8
  %temp_value = alloca float, align 4
  store i8* %cmyk, i8** %cmyk.addr, align 8, !tbaa !1
  store i8* %gray, i8** %gray.addr, align 8, !tbaa !1
  %0 = bitcast float* %temp_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv = zext i8 %2 to i32
  %sub = sub nsw i32 255, %conv
  %conv1 = sitofp i32 %sub to double
  %mul = fmul double %conv1, 3.000000e-01
  %3 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx2, align 1, !tbaa !13
  %conv3 = zext i8 %4 to i32
  %sub4 = sub nsw i32 255, %conv3
  %conv5 = sitofp i32 %sub4 to double
  %mul6 = fmul double %conv5, 5.900000e-01
  %add = fadd double %mul, %mul6
  %5 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx7, align 1, !tbaa !13
  %conv8 = zext i8 %6 to i32
  %sub9 = sub nsw i32 255, %conv8
  %conv10 = sitofp i32 %sub9 to double
  %mul11 = fmul double %conv10, 1.100000e-01
  %add12 = fadd double %add, %mul11
  %7 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %7, i64 3
  %8 = load i8, i8* %arrayidx13, align 1, !tbaa !13
  %conv14 = zext i8 %8 to i32
  %sub15 = sub nsw i32 255, %conv14
  %conv16 = sitofp i32 %sub15 to double
  %mul17 = fmul double %add12, %conv16
  %conv18 = fptrunc double %mul17 to float
  store float %conv18, float* %temp_value, align 4, !tbaa !14
  %9 = load float, float* %temp_value, align 4, !tbaa !14
  %conv19 = fpext float %9 to double
  %mul20 = fmul double %conv19, 0x3EF0203040506071
  %conv21 = fptrunc double %mul20 to float
  store float %conv21, float* %temp_value, align 4, !tbaa !14
  %10 = load float, float* %temp_value, align 4, !tbaa !14
  %conv22 = fpext float %10 to double
  %cmp = fcmp olt double 0.000000e+00, %conv22
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %11 = load float, float* %temp_value, align 4, !tbaa !14
  %conv24 = fpext float %11 to double
  %cmp25 = fcmp olt double %conv24, 1.000000e+00
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %12 = load float, float* %temp_value, align 4, !tbaa !14
  %conv27 = fpext float %12 to double
  %mul28 = fmul double %conv27, 2.550000e+02
  %conv29 = fptoui double %mul28 to i8
  %conv30 = zext i8 %conv29 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %13 = load float, float* %temp_value, align 4, !tbaa !14
  %conv31 = fpext float %13 to double
  %cmp32 = fcmp ole double %conv31, 0.000000e+00
  %cond = select i1 %cmp32, i32 0, i32 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond34 = phi i32 [ %conv30, %cond.true ], [ %cond, %cond.false ]
  %conv35 = trunc i32 %cond34 to i8
  %14 = load i8*, i8** %gray.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %conv35, i8* %arrayidx36, align 1, !tbaa !13
  %15 = bitcast float* %temp_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_to_rgb(i8* %cmyk, i8* %rgb) #0 {
entry:
  %cmyk.addr = alloca i8*, align 8
  %rgb.addr = alloca i8*, align 8
  store i8* %cmyk, i8** %cmyk.addr, align 8, !tbaa !1
  store i8* %rgb, i8** %rgb.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 3
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !13
  %conv2 = zext i8 %3 to i32
  %add = add nsw i32 %conv, %conv2
  %cmp = icmp slt i32 %add, 255
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx4, align 1, !tbaa !13
  %conv5 = zext i8 %5 to i32
  %6 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx6, align 1, !tbaa !13
  %conv7 = zext i8 %7 to i32
  %add8 = add nsw i32 %conv5, %conv7
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add8, %cond.true ], [ 255, %cond.false ]
  %sub = sub nsw i32 255, %cond
  %conv9 = trunc i32 %sub to i8
  %8 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %conv9, i8* %arrayidx10, align 1, !tbaa !13
  %9 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx11, align 1, !tbaa !13
  %conv12 = zext i8 %10 to i32
  %11 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx13, align 1, !tbaa !13
  %conv14 = zext i8 %12 to i32
  %add15 = add nsw i32 %conv12, %conv14
  %cmp16 = icmp slt i32 %add15, 255
  br i1 %cmp16, label %cond.true.18, label %cond.false.24

cond.true.18:                                     ; preds = %cond.end
  %13 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx19, align 1, !tbaa !13
  %conv20 = zext i8 %14 to i32
  %15 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %15, i64 3
  %16 = load i8, i8* %arrayidx21, align 1, !tbaa !13
  %conv22 = zext i8 %16 to i32
  %add23 = add nsw i32 %conv20, %conv22
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.18
  %cond26 = phi i32 [ %add23, %cond.true.18 ], [ 255, %cond.false.24 ]
  %sub27 = sub nsw i32 255, %cond26
  %conv28 = trunc i32 %sub27 to i8
  %17 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !13
  %18 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx30, align 1, !tbaa !13
  %conv31 = zext i8 %19 to i32
  %20 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %20, i64 3
  %21 = load i8, i8* %arrayidx32, align 1, !tbaa !13
  %conv33 = zext i8 %21 to i32
  %add34 = add nsw i32 %conv31, %conv33
  %cmp35 = icmp slt i32 %add34, 255
  br i1 %cmp35, label %cond.true.37, label %cond.false.43

cond.true.37:                                     ; preds = %cond.end.25
  %22 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx38, align 1, !tbaa !13
  %conv39 = zext i8 %23 to i32
  %24 = load i8*, i8** %cmyk.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 3
  %25 = load i8, i8* %arrayidx40, align 1, !tbaa !13
  %conv41 = zext i8 %25 to i32
  %add42 = add nsw i32 %conv39, %conv41
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end.25
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.37
  %cond45 = phi i32 [ %add42, %cond.true.37 ], [ 255, %cond.false.43 ]
  %sub46 = sub nsw i32 255, %cond45
  %conv47 = trunc i32 %sub46 to i8
  %26 = load i8*, i8** %rgb.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %26, i64 2
  store i8 %conv47, i8* %arrayidx48, align 1, !tbaa !13
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 12}
!8 = !{!"gs_int_rect_s", !9, i64 0, !9, i64 8}
!9 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!10 = !{!8, !6, i64 4}
!11 = !{!8, !6, i64 8}
!12 = !{!8, !6, i64 0}
!13 = !{!3, !3, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !3, i64 0}
