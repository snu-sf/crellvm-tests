; ModuleID = './eprnfs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eprn_OctetString = type { i8*, i32 }

; Function Attrs: nounwind uwtable
define void @eprn_split_FS(%struct.eprn_OctetString* %line, %struct.eprn_OctetString* %next_line, i32 %max_octets, i32 %colour_model, i32 %black_levels, i32 %non_black_levels, %struct.eprn_OctetString* %bitplanes) #0 {
entry:
  %line.addr = alloca %struct.eprn_OctetString*, align 8
  %next_line.addr = alloca %struct.eprn_OctetString*, align 8
  %max_octets.addr = alloca i32, align 4
  %colour_model.addr = alloca i32, align 4
  %black_levels.addr = alloca i32, align 4
  %non_black_levels.addr = alloca i32, align 4
  %bitplanes.addr = alloca %struct.eprn_OctetString*, align 8
  store %struct.eprn_OctetString* %line, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  store %struct.eprn_OctetString* %next_line, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  store i32 %max_octets, i32* %max_octets.addr, align 4, !tbaa !5
  store i32 %colour_model, i32* %colour_model.addr, align 4, !tbaa !7
  store i32 %black_levels, i32* %black_levels.addr, align 4, !tbaa !5
  store i32 %non_black_levels, i32* %non_black_levels.addr, align 4, !tbaa !5
  store %struct.eprn_OctetString* %bitplanes, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %0 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %3 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %4 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %5 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_Gray_2(%struct.eprn_OctetString* %2, %struct.eprn_OctetString* %3, i32 %4, %struct.eprn_OctetString* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %7 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %8 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %9 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %10 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_Gray(%struct.eprn_OctetString* %6, %struct.eprn_OctetString* %7, i32 %8, i32 %9, %struct.eprn_OctetString* %10) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.17

if.else.3:                                        ; preds = %entry
  %11 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp4 = icmp eq i32 %11, 4
  br i1 %cmp4, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else.3
  %12 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %12, 2
  br i1 %cmp5, label %land.lhs.true.6, label %if.else.9

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %13, 2
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true.6
  %14 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %15 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %16 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %17 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_colour_CMYK_2(%struct.eprn_OctetString* %14, %struct.eprn_OctetString* %15, i32 %16, %struct.eprn_OctetString* %17) #3
  br label %if.end.16

if.else.9:                                        ; preds = %land.lhs.true.6, %land.lhs.true, %if.else.3
  %18 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %cmp10 = icmp ule i32 %18, 2
  br i1 %cmp10, label %land.lhs.true.11, label %if.else.14

land.lhs.true.11:                                 ; preds = %if.else.9
  %19 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %19, 2
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.11
  %20 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %21 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %22 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %23 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %24 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_colour_at_most_2(%struct.eprn_OctetString* %20, %struct.eprn_OctetString* %21, i32 %22, i32 %23, %struct.eprn_OctetString* %24) #3
  br label %if.end.15

if.else.14:                                       ; preds = %land.lhs.true.11, %if.else.9
  %25 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %26 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %27 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %28 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %29 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %30 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !5
  %31 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_colour(%struct.eprn_OctetString* %25, %struct.eprn_OctetString* %26, i32 %27, i32 %28, i32 %29, i32 %30, %struct.eprn_OctetString* %31) #3
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @split_Gray_2(%struct.eprn_OctetString* %line, %struct.eprn_OctetString* %next_line, i32 %max_octets, %struct.eprn_OctetString* %bitplanes) #0 {
entry:
  %line.addr = alloca %struct.eprn_OctetString*, align 8
  %next_line.addr = alloca %struct.eprn_OctetString*, align 8
  %max_octets.addr = alloca i32, align 4
  %bitplanes.addr = alloca %struct.eprn_OctetString*, align 8
  %max_pixel = alloca i32, align 4
  %correction = alloca i32, align 4
  %error = alloca i32, align 4
  %new_value = alloca i32, align 4
  %pixel = alloca i32, align 4
  %pixel_mod_8 = alloca i32, align 4
  %pixels = alloca i32, align 4
  %remaining_error = alloca i32, align 4
  %approx = alloca i8, align 1
  %from = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %to = alloca i8*, align 8
  store %struct.eprn_OctetString* %line, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  store %struct.eprn_OctetString* %next_line, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  store i32 %max_octets, i32* %max_octets.addr, align 4, !tbaa !5
  store %struct.eprn_OctetString* %bitplanes, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %0 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %max_pixel, align 4, !tbaa !5
  %2 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %8, i32 0, i32 1
  %9 = load i32, i32* %length, align 4, !tbaa !8
  store i32 %9, i32* %pixels, align 4, !tbaa !5
  %10 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  call void @llvm.lifetime.start(i64 1, i8* %approx) #1
  %11 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %14, i64 0
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx, i32 0, i32 0
  %15 = load i8*, i8** %str, align 8, !tbaa !10
  store i8* %15, i8** %ptr, align 8, !tbaa !1
  store i32 0, i32* %pixel, align 4, !tbaa !5
  store i32 8, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %pixel, align 4, !tbaa !5
  %17 = load i32, i32* %pixels, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %18, 8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %pixel_mod_8, align 4, !tbaa !5
  %19 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8 0, i8* %19, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %20 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %str2 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %20, i32 0, i32 0
  %21 = load i8*, i8** %str2, align 8, !tbaa !10
  %22 = load i32, i32* %pixel, align 4, !tbaa !5
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %from, align 8, !tbaa !1
  %23 = load i8*, i8** %from, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !7
  %conv = zext i8 %24 to i32
  %shr = ashr i32 %conv, 7
  %conv3 = trunc i32 %shr to i8
  store i8 %conv3, i8* %approx, align 1, !tbaa !7
  %25 = load i8*, i8** %from, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !7
  %conv4 = zext i8 %26 to i32
  %27 = load i8, i8* %approx, align 1, !tbaa !7
  %conv5 = zext i8 %27 to i32
  %mul = mul nsw i32 255, %conv5
  %sub6 = sub nsw i32 %conv4, %mul
  store i32 %sub6, i32* %error, align 4, !tbaa !5
  %28 = load i8*, i8** %ptr, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !7
  %conv7 = zext i8 %29 to i32
  %shl = shl i32 %conv7, 1
  %30 = load i8, i8* %approx, align 1, !tbaa !7
  %conv8 = zext i8 %30 to i32
  %or = or i32 %shl, %conv8
  %conv9 = trunc i32 %or to i8
  %31 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8 %conv9, i8* %31, align 1, !tbaa !7
  %32 = load i32, i32* %error, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %32, 0
  br i1 %cmp10, label %if.then.12, label %if.end.145

if.then.12:                                       ; preds = %if.end
  %33 = load i32, i32* %error, align 4, !tbaa !5
  store i32 %33, i32* %remaining_error, align 4, !tbaa !5
  %34 = load i32, i32* %error, align 4, !tbaa !5
  %mul13 = mul nsw i32 7, %34
  %div = sdiv i32 %mul13, 16
  store i32 %div, i32* %correction, align 4, !tbaa !5
  %35 = load i32, i32* %correction, align 4, !tbaa !5
  %36 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub14 = sub nsw i32 %36, %35
  store i32 %sub14, i32* %remaining_error, align 4, !tbaa !5
  %37 = load i32, i32* %pixel, align 4, !tbaa !5
  %38 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %37, %38
  br i1 %cmp15, label %if.then.17, label %if.end.43

if.then.17:                                       ; preds = %if.then.12
  %39 = load i8*, i8** %from, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %add.ptr18, i8** %to, align 8, !tbaa !1
  %40 = load i8*, i8** %to, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !7
  %conv19 = zext i8 %41 to i32
  %42 = load i32, i32* %correction, align 4, !tbaa !5
  %add = add nsw i32 %conv19, %42
  store i32 %add, i32* %new_value, align 4, !tbaa !5
  %43 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %43, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.17
  %44 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %44, align 1, !tbaa !7
  %45 = load i32, i32* %new_value, align 4, !tbaa !5
  %46 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add23 = add nsw i32 %46, %45
  store i32 %add23, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.32

if.else:                                          ; preds = %if.then.17
  %47 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp24 = icmp slt i32 255, %47
  br i1 %cmp24, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.else
  %48 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %48, align 1, !tbaa !7
  %49 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub27 = sub nsw i32 %49, 255
  %50 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add28 = add nsw i32 %50, %sub27
  store i32 %add28, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.31

if.else.29:                                       ; preds = %if.else
  %51 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv30 = trunc i32 %51 to i8
  %52 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv30, i8* %52, align 1, !tbaa !7
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.22
  %53 = load i32, i32* %pixel, align 4, !tbaa !5
  %54 = load i32, i32* %pixels, align 4, !tbaa !5
  %sub33 = sub nsw i32 %54, 1
  %cmp34 = icmp eq i32 %53, %sub33
  br i1 %cmp34, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end.32
  %55 = load i8*, i8** %to, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !7
  %conv36 = zext i8 %56 to i32
  %cmp37 = icmp sgt i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %land.lhs.true
  %57 = load i32, i32* %pixels, align 4, !tbaa !5
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %pixels, align 4, !tbaa !5
  %58 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length40 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %58, i32 0, i32 1
  %59 = load i32, i32* %length40, align 4, !tbaa !8
  %inc41 = add nsw i32 %59, 1
  store i32 %inc41, i32* %length40, align 4, !tbaa !8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %land.lhs.true, %if.end.32
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.12
  %60 = load i32, i32* %error, align 4, !tbaa !5
  %mul44 = mul nsw i32 3, %60
  %div45 = sdiv i32 %mul44, 16
  store i32 %div45, i32* %correction, align 4, !tbaa !5
  %61 = load i32, i32* %correction, align 4, !tbaa !5
  %62 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub46 = sub nsw i32 %62, %61
  store i32 %sub46, i32* %remaining_error, align 4, !tbaa !5
  %63 = load i32, i32* %pixel, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %63, 0
  br i1 %cmp47, label %if.then.49, label %if.end.80

if.then.49:                                       ; preds = %if.end.43
  %64 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str50 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %64, i32 0, i32 0
  %65 = load i8*, i8** %str50, align 8, !tbaa !10
  %66 = load i32, i32* %pixel, align 4, !tbaa !5
  %sub51 = sub nsw i32 %66, 1
  %idx.ext52 = sext i32 %sub51 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %65, i64 %idx.ext52
  store i8* %add.ptr53, i8** %to, align 8, !tbaa !1
  %67 = load i8*, i8** %to, align 8, !tbaa !1
  %68 = load i8, i8* %67, align 1, !tbaa !7
  %conv54 = zext i8 %68 to i32
  %69 = load i32, i32* %correction, align 4, !tbaa !5
  %add55 = add nsw i32 %conv54, %69
  store i32 %add55, i32* %new_value, align 4, !tbaa !5
  %70 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %70, 0
  br i1 %cmp56, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %if.then.49
  %71 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %71, align 1, !tbaa !7
  %72 = load i32, i32* %new_value, align 4, !tbaa !5
  %73 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add59 = add nsw i32 %73, %72
  store i32 %add59, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.69

if.else.60:                                       ; preds = %if.then.49
  %74 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp61 = icmp slt i32 255, %74
  br i1 %cmp61, label %if.then.63, label %if.else.66

if.then.63:                                       ; preds = %if.else.60
  %75 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %75, align 1, !tbaa !7
  %76 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub64 = sub nsw i32 %76, 255
  %77 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add65 = add nsw i32 %77, %sub64
  store i32 %add65, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.68

if.else.66:                                       ; preds = %if.else.60
  %78 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv67 = trunc i32 %78 to i8
  %79 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv67, i8* %79, align 1, !tbaa !7
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.63
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.58
  %80 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length70 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %80, i32 0, i32 1
  %81 = load i32, i32* %length70, align 4, !tbaa !8
  %82 = load i32, i32* %pixel, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %81, %82
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.79

land.lhs.true.73:                                 ; preds = %if.end.69
  %83 = load i8*, i8** %to, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !7
  %conv74 = zext i8 %84 to i32
  %cmp75 = icmp sgt i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %land.lhs.true.73
  %85 = load i32, i32* %pixel, align 4, !tbaa !5
  %86 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length78 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %86, i32 0, i32 1
  store i32 %85, i32* %length78, align 4, !tbaa !8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %land.lhs.true.73, %if.end.69
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.43
  %87 = load i32, i32* %error, align 4, !tbaa !5
  %mul81 = mul nsw i32 5, %87
  %div82 = sdiv i32 %mul81, 16
  store i32 %div82, i32* %correction, align 4, !tbaa !5
  %88 = load i32, i32* %correction, align 4, !tbaa !5
  %89 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub83 = sub nsw i32 %89, %88
  store i32 %sub83, i32* %remaining_error, align 4, !tbaa !5
  %90 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str84 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %90, i32 0, i32 0
  %91 = load i8*, i8** %str84, align 8, !tbaa !10
  %92 = load i32, i32* %pixel, align 4, !tbaa !5
  %idx.ext85 = sext i32 %92 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %91, i64 %idx.ext85
  store i8* %add.ptr86, i8** %to, align 8, !tbaa !1
  %93 = load i8*, i8** %to, align 8, !tbaa !1
  %94 = load i8, i8* %93, align 1, !tbaa !7
  %conv87 = zext i8 %94 to i32
  %95 = load i32, i32* %correction, align 4, !tbaa !5
  %add88 = add nsw i32 %conv87, %95
  store i32 %add88, i32* %new_value, align 4, !tbaa !5
  %96 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %96, 0
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.end.80
  %97 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %97, align 1, !tbaa !7
  %98 = load i32, i32* %new_value, align 4, !tbaa !5
  %99 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add92 = add nsw i32 %99, %98
  store i32 %add92, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.102

if.else.93:                                       ; preds = %if.end.80
  %100 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp94 = icmp slt i32 255, %100
  br i1 %cmp94, label %if.then.96, label %if.else.99

if.then.96:                                       ; preds = %if.else.93
  %101 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %101, align 1, !tbaa !7
  %102 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub97 = sub nsw i32 %102, 255
  %103 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add98 = add nsw i32 %103, %sub97
  store i32 %add98, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.101

if.else.99:                                       ; preds = %if.else.93
  %104 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv100 = trunc i32 %104 to i8
  %105 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv100, i8* %105, align 1, !tbaa !7
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.99, %if.then.96
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.91
  %106 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length103 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %106, i32 0, i32 1
  %107 = load i32, i32* %length103, align 4, !tbaa !8
  %108 = load i32, i32* %pixel, align 4, !tbaa !5
  %cmp104 = icmp sle i32 %107, %108
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.113

land.lhs.true.106:                                ; preds = %if.end.102
  %109 = load i8*, i8** %to, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !7
  %conv107 = zext i8 %110 to i32
  %cmp108 = icmp sgt i32 %conv107, 0
  br i1 %cmp108, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %land.lhs.true.106
  %111 = load i32, i32* %pixel, align 4, !tbaa !5
  %add111 = add nsw i32 %111, 1
  %112 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length112 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %112, i32 0, i32 1
  store i32 %add111, i32* %length112, align 4, !tbaa !8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %land.lhs.true.106, %if.end.102
  %113 = load i32, i32* %pixel, align 4, !tbaa !5
  %114 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp114 = icmp slt i32 %113, %114
  br i1 %cmp114, label %if.then.116, label %if.end.144

if.then.116:                                      ; preds = %if.end.113
  %115 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str117 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %115, i32 0, i32 0
  %116 = load i8*, i8** %str117, align 8, !tbaa !10
  %117 = load i32, i32* %pixel, align 4, !tbaa !5
  %add118 = add nsw i32 %117, 1
  %idx.ext119 = sext i32 %add118 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %116, i64 %idx.ext119
  store i8* %add.ptr120, i8** %to, align 8, !tbaa !1
  %118 = load i8*, i8** %to, align 8, !tbaa !1
  %119 = load i8, i8* %118, align 1, !tbaa !7
  %conv121 = zext i8 %119 to i32
  %120 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add122 = add nsw i32 %conv121, %120
  store i32 %add122, i32* %new_value, align 4, !tbaa !5
  %121 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp123 = icmp slt i32 %121, 0
  br i1 %cmp123, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.116
  br label %cond.end.129

cond.false:                                       ; preds = %if.then.116
  %122 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp125 = icmp sgt i32 %122, 255
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %cond.false
  br label %cond.end

cond.false.128:                                   ; preds = %cond.false
  %123 = load i32, i32* %new_value, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.128, %cond.true.127
  %cond = phi i32 [ 255, %cond.true.127 ], [ %123, %cond.false.128 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end, %cond.true
  %cond130 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv131 = trunc i32 %cond130 to i8
  %124 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv131, i8* %124, align 1, !tbaa !7
  %125 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length132 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %125, i32 0, i32 1
  %126 = load i32, i32* %length132, align 4, !tbaa !8
  %127 = load i32, i32* %pixel, align 4, !tbaa !5
  %add133 = add nsw i32 %127, 2
  %cmp134 = icmp slt i32 %126, %add133
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.143

land.lhs.true.136:                                ; preds = %cond.end.129
  %128 = load i8*, i8** %to, align 8, !tbaa !1
  %129 = load i8, i8* %128, align 1, !tbaa !7
  %conv137 = zext i8 %129 to i32
  %cmp138 = icmp sgt i32 %conv137, 0
  br i1 %cmp138, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %land.lhs.true.136
  %130 = load i32, i32* %pixel, align 4, !tbaa !5
  %add141 = add nsw i32 %130, 2
  %131 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length142 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %131, i32 0, i32 1
  store i32 %add141, i32* %length142, align 4, !tbaa !8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %land.lhs.true.136, %cond.end.129
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.113
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end
  %132 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp146 = icmp eq i32 %132, 7
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.145
  %133 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.end.145
  br label %for.inc

for.inc:                                          ; preds = %if.end.149
  %134 = load i32, i32* %pixel, align 4, !tbaa !5
  %inc150 = add nsw i32 %134, 1
  store i32 %inc150, i32* %pixel, align 4, !tbaa !5
  %135 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %inc151 = add nsw i32 %135, 1
  store i32 %inc151, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %136 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %137 = load i32, i32* %pixels, align 4, !tbaa !5
  call void @eprn_finalize(i32 0, i32 0, i32 1, %struct.eprn_OctetString* %136, i8** %ptr, i32 %137) #3
  %138 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  call void @llvm.lifetime.end(i64 1, i8* %approx) #1
  %141 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @split_Gray(%struct.eprn_OctetString* %line, %struct.eprn_OctetString* %next_line, i32 %max_octets, i32 %black_levels, %struct.eprn_OctetString* %bitplanes) #0 {
entry:
  %line.addr = alloca %struct.eprn_OctetString*, align 8
  %next_line.addr = alloca %struct.eprn_OctetString*, align 8
  %max_octets.addr = alloca i32, align 4
  %black_levels.addr = alloca i32, align 4
  %bitplanes.addr = alloca %struct.eprn_OctetString*, align 8
  %max_pixel = alloca i32, align 4
  %planes = alloca i32, align 4
  %correction = alloca i32, align 4
  %error = alloca i32, align 4
  %new_value = alloca i32, align 4
  %pixel = alloca i32, align 4
  %pixel_mod_8 = alloca i32, align 4
  %pixels = alloca i32, align 4
  %plane = alloca i32, align 4
  %remaining_error = alloca i32, align 4
  %approx = alloca i8, align 1
  %from = alloca i8*, align 8
  %ptr = alloca [8 x i8*], align 16
  %to = alloca i8*, align 8
  %divisor = alloca i32, align 4
  %max_level = alloca i32, align 4
  store %struct.eprn_OctetString* %line, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  store %struct.eprn_OctetString* %next_line, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  store i32 %max_octets, i32* %max_octets.addr, align 4, !tbaa !5
  store i32 %black_levels, i32* %black_levels.addr, align 4, !tbaa !5
  store %struct.eprn_OctetString* %bitplanes, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %0 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %max_pixel, align 4, !tbaa !5
  %2 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %call = call i32 @eprn_bits_for_levels(i32 %3) #3
  store i32 %call, i32* %planes, align 4, !tbaa !5
  %4 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %10, i32 0, i32 1
  %11 = load i32, i32* %length, align 4, !tbaa !8
  store i32 %11, i32* %pixels, align 4, !tbaa !5
  %12 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  call void @llvm.lifetime.start(i64 1, i8* %approx) #1
  %14 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast [8 x i8*]* %ptr to i8*
  call void @llvm.lifetime.start(i64 64, i8* %15) #1
  %16 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %divisor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %div = udiv i32 256, %18
  store i32 %div, i32* %divisor, align 4, !tbaa !5
  %19 = bitcast i32* %max_level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %sub1 = sub i32 %20, 1
  store i32 %sub1, i32* %max_level, align 4, !tbaa !5
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %plane, align 4, !tbaa !5
  %22 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %24, i64 %idxprom
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx, i32 0, i32 0
  %25 = load i8*, i8** %str, align 8, !tbaa !10
  %26 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom2 = sext i32 %26 to i64
  %arrayidx3 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom2
  store i8* %25, i8** %arrayidx3, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %plane, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %pixel, align 4, !tbaa !5
  store i32 8, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.190, %for.end
  %28 = load i32, i32* %pixel, align 4, !tbaa !5
  %29 = load i32, i32* %pixels, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %28, %29
  br i1 %cmp5, label %for.body.6, label %for.end.193

for.body.6:                                       ; preds = %for.cond.4
  %30 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %30, 8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  store i32 0, i32* %pixel_mod_8, align 4, !tbaa !5
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.13, %if.then
  %31 = load i32, i32* %plane, align 4, !tbaa !5
  %32 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %31, %32
  br i1 %cmp9, label %for.body.10, label %for.end.15

for.body.10:                                      ; preds = %for.cond.8
  %33 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom11 = sext i32 %33 to i64
  %arrayidx12 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom11
  %34 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  store i8 0, i8* %34, align 1, !tbaa !7
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %35 = load i32, i32* %plane, align 4, !tbaa !5
  %inc14 = add nsw i32 %35, 1
  store i32 %inc14, i32* %plane, align 4, !tbaa !5
  br label %for.cond.8

for.end.15:                                       ; preds = %for.cond.8
  br label %if.end

if.end:                                           ; preds = %for.end.15, %for.body.6
  %36 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %str16 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %36, i32 0, i32 0
  %37 = load i8*, i8** %str16, align 8, !tbaa !10
  %38 = load i32, i32* %pixel, align 4, !tbaa !5
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %from, align 8, !tbaa !1
  %39 = load i8*, i8** %from, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !7
  %conv = zext i8 %40 to i32
  %41 = load i32, i32* %divisor, align 4, !tbaa !5
  %div17 = udiv i32 %conv, %41
  %conv18 = trunc i32 %div17 to i8
  store i8 %conv18, i8* %approx, align 1, !tbaa !7
  %42 = load i8*, i8** %from, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !7
  %conv19 = zext i8 %43 to i32
  %44 = load i8, i8* %approx, align 1, !tbaa !7
  %conv20 = zext i8 %44 to i32
  %mul = mul nsw i32 255, %conv20
  %45 = load i32, i32* %max_level, align 4, !tbaa !5
  %div21 = udiv i32 %mul, %45
  %sub22 = sub i32 %conv19, %div21
  store i32 %sub22, i32* %error, align 4, !tbaa !5
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.36, %if.end
  %46 = load i32, i32* %plane, align 4, !tbaa !5
  %47 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %46, %47
  br i1 %cmp24, label %for.body.26, label %for.end.38

for.body.26:                                      ; preds = %for.cond.23
  %48 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom27 = sext i32 %48 to i64
  %arrayidx28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom27
  %49 = load i8*, i8** %arrayidx28, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !7
  %conv29 = zext i8 %50 to i32
  %shl = shl i32 %conv29, 1
  %51 = load i8, i8* %approx, align 1, !tbaa !7
  %conv30 = zext i8 %51 to i32
  %and = and i32 %conv30, 1
  %or = or i32 %shl, %and
  %conv31 = trunc i32 %or to i8
  %52 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom32 = sext i32 %52 to i64
  %arrayidx33 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom32
  %53 = load i8*, i8** %arrayidx33, align 8, !tbaa !1
  store i8 %conv31, i8* %53, align 1, !tbaa !7
  %54 = load i8, i8* %approx, align 1, !tbaa !7
  %conv34 = zext i8 %54 to i32
  %shr = ashr i32 %conv34, 1
  %conv35 = trunc i32 %shr to i8
  store i8 %conv35, i8* %approx, align 1, !tbaa !7
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.26
  %55 = load i32, i32* %plane, align 4, !tbaa !5
  %inc37 = add nsw i32 %55, 1
  store i32 %inc37, i32* %plane, align 4, !tbaa !5
  br label %for.cond.23

for.end.38:                                       ; preds = %for.cond.23
  %56 = load i32, i32* %error, align 4, !tbaa !5
  %cmp39 = icmp ne i32 %56, 0
  br i1 %cmp39, label %if.then.41, label %if.end.176

if.then.41:                                       ; preds = %for.end.38
  %57 = load i32, i32* %error, align 4, !tbaa !5
  store i32 %57, i32* %remaining_error, align 4, !tbaa !5
  %58 = load i32, i32* %error, align 4, !tbaa !5
  %mul42 = mul nsw i32 7, %58
  %div43 = sdiv i32 %mul42, 16
  store i32 %div43, i32* %correction, align 4, !tbaa !5
  %59 = load i32, i32* %correction, align 4, !tbaa !5
  %60 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub44 = sub nsw i32 %60, %59
  store i32 %sub44, i32* %remaining_error, align 4, !tbaa !5
  %61 = load i32, i32* %pixel, align 4, !tbaa !5
  %62 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %61, %62
  br i1 %cmp45, label %if.then.47, label %if.end.74

if.then.47:                                       ; preds = %if.then.41
  %63 = load i8*, i8** %from, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %add.ptr48, i8** %to, align 8, !tbaa !1
  %64 = load i8*, i8** %to, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !7
  %conv49 = zext i8 %65 to i32
  %66 = load i32, i32* %correction, align 4, !tbaa !5
  %add = add nsw i32 %conv49, %66
  store i32 %add, i32* %new_value, align 4, !tbaa !5
  %67 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %67, 0
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.then.47
  %68 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %68, align 1, !tbaa !7
  %69 = load i32, i32* %new_value, align 4, !tbaa !5
  %70 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add53 = add nsw i32 %70, %69
  store i32 %add53, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.62

if.else:                                          ; preds = %if.then.47
  %71 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp54 = icmp slt i32 255, %71
  br i1 %cmp54, label %if.then.56, label %if.else.59

if.then.56:                                       ; preds = %if.else
  %72 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %72, align 1, !tbaa !7
  %73 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub57 = sub nsw i32 %73, 255
  %74 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add58 = add nsw i32 %74, %sub57
  store i32 %add58, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.61

if.else.59:                                       ; preds = %if.else
  %75 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv60 = trunc i32 %75 to i8
  %76 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv60, i8* %76, align 1, !tbaa !7
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.56
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.52
  %77 = load i32, i32* %pixel, align 4, !tbaa !5
  %78 = load i32, i32* %pixels, align 4, !tbaa !5
  %sub63 = sub nsw i32 %78, 1
  %cmp64 = icmp eq i32 %77, %sub63
  br i1 %cmp64, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.end.62
  %79 = load i8*, i8** %to, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !7
  %conv66 = zext i8 %80 to i32
  %cmp67 = icmp sgt i32 %conv66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %land.lhs.true
  %81 = load i32, i32* %pixels, align 4, !tbaa !5
  %inc70 = add nsw i32 %81, 1
  store i32 %inc70, i32* %pixels, align 4, !tbaa !5
  %82 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length71 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %82, i32 0, i32 1
  %83 = load i32, i32* %length71, align 4, !tbaa !8
  %inc72 = add nsw i32 %83, 1
  store i32 %inc72, i32* %length71, align 4, !tbaa !8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %land.lhs.true, %if.end.62
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.41
  %84 = load i32, i32* %error, align 4, !tbaa !5
  %mul75 = mul nsw i32 3, %84
  %div76 = sdiv i32 %mul75, 16
  store i32 %div76, i32* %correction, align 4, !tbaa !5
  %85 = load i32, i32* %correction, align 4, !tbaa !5
  %86 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub77 = sub nsw i32 %86, %85
  store i32 %sub77, i32* %remaining_error, align 4, !tbaa !5
  %87 = load i32, i32* %pixel, align 4, !tbaa !5
  %cmp78 = icmp sgt i32 %87, 0
  br i1 %cmp78, label %if.then.80, label %if.end.111

if.then.80:                                       ; preds = %if.end.74
  %88 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str81 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %88, i32 0, i32 0
  %89 = load i8*, i8** %str81, align 8, !tbaa !10
  %90 = load i32, i32* %pixel, align 4, !tbaa !5
  %sub82 = sub nsw i32 %90, 1
  %idx.ext83 = sext i32 %sub82 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %89, i64 %idx.ext83
  store i8* %add.ptr84, i8** %to, align 8, !tbaa !1
  %91 = load i8*, i8** %to, align 8, !tbaa !1
  %92 = load i8, i8* %91, align 1, !tbaa !7
  %conv85 = zext i8 %92 to i32
  %93 = load i32, i32* %correction, align 4, !tbaa !5
  %add86 = add nsw i32 %conv85, %93
  store i32 %add86, i32* %new_value, align 4, !tbaa !5
  %94 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp87 = icmp slt i32 %94, 0
  br i1 %cmp87, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %if.then.80
  %95 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %95, align 1, !tbaa !7
  %96 = load i32, i32* %new_value, align 4, !tbaa !5
  %97 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add90 = add nsw i32 %97, %96
  store i32 %add90, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.100

if.else.91:                                       ; preds = %if.then.80
  %98 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp92 = icmp slt i32 255, %98
  br i1 %cmp92, label %if.then.94, label %if.else.97

if.then.94:                                       ; preds = %if.else.91
  %99 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %99, align 1, !tbaa !7
  %100 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub95 = sub nsw i32 %100, 255
  %101 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add96 = add nsw i32 %101, %sub95
  store i32 %add96, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.99

if.else.97:                                       ; preds = %if.else.91
  %102 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv98 = trunc i32 %102 to i8
  %103 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv98, i8* %103, align 1, !tbaa !7
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.94
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.89
  %104 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length101 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %104, i32 0, i32 1
  %105 = load i32, i32* %length101, align 4, !tbaa !8
  %106 = load i32, i32* %pixel, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %105, %106
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.110

land.lhs.true.104:                                ; preds = %if.end.100
  %107 = load i8*, i8** %to, align 8, !tbaa !1
  %108 = load i8, i8* %107, align 1, !tbaa !7
  %conv105 = zext i8 %108 to i32
  %cmp106 = icmp sgt i32 %conv105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %land.lhs.true.104
  %109 = load i32, i32* %pixel, align 4, !tbaa !5
  %110 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length109 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %110, i32 0, i32 1
  store i32 %109, i32* %length109, align 4, !tbaa !8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %land.lhs.true.104, %if.end.100
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.74
  %111 = load i32, i32* %error, align 4, !tbaa !5
  %mul112 = mul nsw i32 5, %111
  %div113 = sdiv i32 %mul112, 16
  store i32 %div113, i32* %correction, align 4, !tbaa !5
  %112 = load i32, i32* %correction, align 4, !tbaa !5
  %113 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub114 = sub nsw i32 %113, %112
  store i32 %sub114, i32* %remaining_error, align 4, !tbaa !5
  %114 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str115 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %114, i32 0, i32 0
  %115 = load i8*, i8** %str115, align 8, !tbaa !10
  %116 = load i32, i32* %pixel, align 4, !tbaa !5
  %idx.ext116 = sext i32 %116 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %115, i64 %idx.ext116
  store i8* %add.ptr117, i8** %to, align 8, !tbaa !1
  %117 = load i8*, i8** %to, align 8, !tbaa !1
  %118 = load i8, i8* %117, align 1, !tbaa !7
  %conv118 = zext i8 %118 to i32
  %119 = load i32, i32* %correction, align 4, !tbaa !5
  %add119 = add nsw i32 %conv118, %119
  store i32 %add119, i32* %new_value, align 4, !tbaa !5
  %120 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp120 = icmp slt i32 %120, 0
  br i1 %cmp120, label %if.then.122, label %if.else.124

if.then.122:                                      ; preds = %if.end.111
  %121 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %121, align 1, !tbaa !7
  %122 = load i32, i32* %new_value, align 4, !tbaa !5
  %123 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add123 = add nsw i32 %123, %122
  store i32 %add123, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.133

if.else.124:                                      ; preds = %if.end.111
  %124 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp125 = icmp slt i32 255, %124
  br i1 %cmp125, label %if.then.127, label %if.else.130

if.then.127:                                      ; preds = %if.else.124
  %125 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %125, align 1, !tbaa !7
  %126 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub128 = sub nsw i32 %126, 255
  %127 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add129 = add nsw i32 %127, %sub128
  store i32 %add129, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.132

if.else.130:                                      ; preds = %if.else.124
  %128 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv131 = trunc i32 %128 to i8
  %129 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv131, i8* %129, align 1, !tbaa !7
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.130, %if.then.127
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.122
  %130 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length134 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %130, i32 0, i32 1
  %131 = load i32, i32* %length134, align 4, !tbaa !8
  %132 = load i32, i32* %pixel, align 4, !tbaa !5
  %cmp135 = icmp sle i32 %131, %132
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.144

land.lhs.true.137:                                ; preds = %if.end.133
  %133 = load i8*, i8** %to, align 8, !tbaa !1
  %134 = load i8, i8* %133, align 1, !tbaa !7
  %conv138 = zext i8 %134 to i32
  %cmp139 = icmp sgt i32 %conv138, 0
  br i1 %cmp139, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %land.lhs.true.137
  %135 = load i32, i32* %pixel, align 4, !tbaa !5
  %add142 = add nsw i32 %135, 1
  %136 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length143 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %136, i32 0, i32 1
  store i32 %add142, i32* %length143, align 4, !tbaa !8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %land.lhs.true.137, %if.end.133
  %137 = load i32, i32* %pixel, align 4, !tbaa !5
  %138 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp145 = icmp slt i32 %137, %138
  br i1 %cmp145, label %if.then.147, label %if.end.175

if.then.147:                                      ; preds = %if.end.144
  %139 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str148 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %139, i32 0, i32 0
  %140 = load i8*, i8** %str148, align 8, !tbaa !10
  %141 = load i32, i32* %pixel, align 4, !tbaa !5
  %add149 = add nsw i32 %141, 1
  %idx.ext150 = sext i32 %add149 to i64
  %add.ptr151 = getelementptr inbounds i8, i8* %140, i64 %idx.ext150
  store i8* %add.ptr151, i8** %to, align 8, !tbaa !1
  %142 = load i8*, i8** %to, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !7
  %conv152 = zext i8 %143 to i32
  %144 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add153 = add nsw i32 %conv152, %144
  store i32 %add153, i32* %new_value, align 4, !tbaa !5
  %145 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp154 = icmp slt i32 %145, 0
  br i1 %cmp154, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.147
  br label %cond.end.160

cond.false:                                       ; preds = %if.then.147
  %146 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp156 = icmp sgt i32 %146, 255
  br i1 %cmp156, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %cond.false
  br label %cond.end

cond.false.159:                                   ; preds = %cond.false
  %147 = load i32, i32* %new_value, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.159, %cond.true.158
  %cond = phi i32 [ 255, %cond.true.158 ], [ %147, %cond.false.159 ]
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.end, %cond.true
  %cond161 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv162 = trunc i32 %cond161 to i8
  %148 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv162, i8* %148, align 1, !tbaa !7
  %149 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length163 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %149, i32 0, i32 1
  %150 = load i32, i32* %length163, align 4, !tbaa !8
  %151 = load i32, i32* %pixel, align 4, !tbaa !5
  %add164 = add nsw i32 %151, 2
  %cmp165 = icmp slt i32 %150, %add164
  br i1 %cmp165, label %land.lhs.true.167, label %if.end.174

land.lhs.true.167:                                ; preds = %cond.end.160
  %152 = load i8*, i8** %to, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !7
  %conv168 = zext i8 %153 to i32
  %cmp169 = icmp sgt i32 %conv168, 0
  br i1 %cmp169, label %if.then.171, label %if.end.174

if.then.171:                                      ; preds = %land.lhs.true.167
  %154 = load i32, i32* %pixel, align 4, !tbaa !5
  %add172 = add nsw i32 %154, 2
  %155 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length173 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %155, i32 0, i32 1
  store i32 %add172, i32* %length173, align 4, !tbaa !8
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.171, %land.lhs.true.167, %cond.end.160
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.144
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %for.end.38
  %156 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp177 = icmp eq i32 %156, 7
  br i1 %cmp177, label %if.then.179, label %if.end.189

if.then.179:                                      ; preds = %if.end.176
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.186, %if.then.179
  %157 = load i32, i32* %plane, align 4, !tbaa !5
  %158 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp181 = icmp slt i32 %157, %158
  br i1 %cmp181, label %for.body.183, label %for.end.188

for.body.183:                                     ; preds = %for.cond.180
  %159 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom184 = sext i32 %159 to i64
  %arrayidx185 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom184
  %160 = load i8*, i8** %arrayidx185, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %incdec.ptr, i8** %arrayidx185, align 8, !tbaa !1
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.183
  %161 = load i32, i32* %plane, align 4, !tbaa !5
  %inc187 = add nsw i32 %161, 1
  store i32 %inc187, i32* %plane, align 4, !tbaa !5
  br label %for.cond.180

for.end.188:                                      ; preds = %for.cond.180
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.188, %if.end.176
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %162 = load i32, i32* %pixel, align 4, !tbaa !5
  %inc191 = add nsw i32 %162, 1
  store i32 %inc191, i32* %pixel, align 4, !tbaa !5
  %163 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %inc192 = add nsw i32 %163, 1
  store i32 %inc192, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond.4

for.end.193:                                      ; preds = %for.cond.4
  %164 = load i32, i32* %planes, align 4, !tbaa !5
  %165 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i32 0
  %166 = load i32, i32* %pixels, align 4, !tbaa !5
  call void @eprn_finalize(i32 0, i32 0, i32 %164, %struct.eprn_OctetString* %165, i8** %arraydecay, i32 %166) #3
  %167 = bitcast i32* %max_level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %divisor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast [8 x i8*]* %ptr to i8*
  call void @llvm.lifetime.end(i64 64, i8* %170) #1
  %171 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  call void @llvm.lifetime.end(i64 1, i8* %approx) #1
  %172 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @split_colour_CMYK_2(%struct.eprn_OctetString* %line, %struct.eprn_OctetString* %next_line, i32 %max_octets, %struct.eprn_OctetString* %bitplanes) #0 {
entry:
  %line.addr = alloca %struct.eprn_OctetString*, align 8
  %next_line.addr = alloca %struct.eprn_OctetString*, align 8
  %max_octets.addr = alloca i32, align 4
  %bitplanes.addr = alloca %struct.eprn_OctetString*, align 8
  %max_pixel = alloca i32, align 4
  %colorant = alloca i32, align 4
  %correction = alloca i32, align 4
  %error = alloca i32, align 4
  %new_value = alloca i32, align 4
  %pixel = alloca i32, align 4
  %pixel_mod_8 = alloca i32, align 4
  %pixels = alloca i32, align 4
  %plane = alloca i32, align 4
  %remaining_error = alloca i32, align 4
  %approx = alloca i8, align 1
  %from = alloca i8*, align 8
  %ptr = alloca [4 x i8*], align 16
  %to = alloca i8*, align 8
  store %struct.eprn_OctetString* %line, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  store %struct.eprn_OctetString* %next_line, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  store i32 %max_octets, i32* %max_octets.addr, align 4, !tbaa !5
  store %struct.eprn_OctetString* %bitplanes, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %0 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %div = sdiv i32 %1, 4
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %max_pixel, align 4, !tbaa !5
  %2 = bitcast i32* %colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %9, i32 0, i32 1
  %10 = load i32, i32* %length, align 4, !tbaa !8
  %div1 = sdiv i32 %10, 4
  store i32 %div1, i32* %pixels, align 4, !tbaa !5
  %11 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  call void @llvm.lifetime.start(i64 1, i8* %approx) #1
  %13 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast [4 x i8*]* %ptr to i8*
  call void @llvm.lifetime.start(i64 32, i8* %14) #1
  %15 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %plane, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %18, i64 %idxprom
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx, i32 0, i32 0
  %19 = load i8*, i8** %str, align 8, !tbaa !10
  %20 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom2 = sext i32 %20 to i64
  %arrayidx3 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom2
  store i8* %19, i8** %arrayidx3, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %plane, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %pixel, align 4, !tbaa !5
  store i32 8, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.203, %for.end
  %22 = load i32, i32* %pixel, align 4, !tbaa !5
  %23 = load i32, i32* %pixels, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %22, %23
  br i1 %cmp5, label %for.body.6, label %for.end.206

for.body.6:                                       ; preds = %for.cond.4
  %24 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %24, 8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  store i32 0, i32* %pixel_mod_8, align 4, !tbaa !5
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.13, %if.then
  %25 = load i32, i32* %plane, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %25, 4
  br i1 %cmp9, label %for.body.10, label %for.end.15

for.body.10:                                      ; preds = %for.cond.8
  %26 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom11 = sext i32 %26 to i64
  %arrayidx12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom11
  %27 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  store i8 0, i8* %27, align 1, !tbaa !7
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %28 = load i32, i32* %plane, align 4, !tbaa !5
  %inc14 = add nsw i32 %28, 1
  store i32 %inc14, i32* %plane, align 4, !tbaa !5
  br label %for.cond.8

for.end.15:                                       ; preds = %for.cond.8
  br label %if.end

if.end:                                           ; preds = %for.end.15, %for.body.6
  store i32 3, i32* %colorant, align 4, !tbaa !5
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.188, %if.end
  %29 = load i32, i32* %colorant, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %29, 0
  br i1 %cmp17, label %for.body.18, label %for.end.189

for.body.18:                                      ; preds = %for.cond.16
  %30 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %str19 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %30, i32 0, i32 0
  %31 = load i8*, i8** %str19, align 8, !tbaa !10
  %32 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul = mul nsw i32 %32, 4
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  %33 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext20 = sext i32 %33 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext20
  store i8* %add.ptr21, i8** %from, align 8, !tbaa !1
  %34 = load i8*, i8** %from, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !7
  %conv = zext i8 %35 to i32
  %shr = ashr i32 %conv, 7
  %conv22 = trunc i32 %shr to i8
  store i8 %conv22, i8* %approx, align 1, !tbaa !7
  %36 = load i8*, i8** %from, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !7
  %conv23 = zext i8 %37 to i32
  %38 = load i8, i8* %approx, align 1, !tbaa !7
  %conv24 = zext i8 %38 to i32
  %mul25 = mul nsw i32 255, %conv24
  %sub26 = sub nsw i32 %conv23, %mul25
  store i32 %sub26, i32* %error, align 4, !tbaa !5
  %39 = load i32, i32* %colorant, align 4, !tbaa !5
  %sub27 = sub nsw i32 3, %39
  store i32 %sub27, i32* %plane, align 4, !tbaa !5
  %40 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom28 = sext i32 %40 to i64
  %arrayidx29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom28
  %41 = load i8*, i8** %arrayidx29, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !7
  %conv30 = zext i8 %42 to i32
  %shl = shl i32 %conv30, 1
  %43 = load i8, i8* %approx, align 1, !tbaa !7
  %conv31 = zext i8 %43 to i32
  %or = or i32 %shl, %conv31
  %conv32 = trunc i32 %or to i8
  %44 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom33 = sext i32 %44 to i64
  %arrayidx34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom33
  %45 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  store i8 %conv32, i8* %45, align 1, !tbaa !7
  %46 = load i32, i32* %error, align 4, !tbaa !5
  %cmp35 = icmp ne i32 %46, 0
  br i1 %cmp35, label %if.then.37, label %if.end.187

if.then.37:                                       ; preds = %for.body.18
  %47 = load i32, i32* %error, align 4, !tbaa !5
  store i32 %47, i32* %remaining_error, align 4, !tbaa !5
  %48 = load i32, i32* %error, align 4, !tbaa !5
  %mul38 = mul nsw i32 7, %48
  %div39 = sdiv i32 %mul38, 16
  store i32 %div39, i32* %correction, align 4, !tbaa !5
  %49 = load i32, i32* %correction, align 4, !tbaa !5
  %50 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub40 = sub nsw i32 %50, %49
  store i32 %sub40, i32* %remaining_error, align 4, !tbaa !5
  %51 = load i32, i32* %pixel, align 4, !tbaa !5
  %52 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %51, %52
  br i1 %cmp41, label %if.then.43, label %if.end.70

if.then.43:                                       ; preds = %if.then.37
  %53 = load i8*, i8** %from, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %add.ptr44, i8** %to, align 8, !tbaa !1
  %54 = load i8*, i8** %to, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !7
  %conv45 = zext i8 %55 to i32
  %56 = load i32, i32* %correction, align 4, !tbaa !5
  %add = add nsw i32 %conv45, %56
  store i32 %add, i32* %new_value, align 4, !tbaa !5
  %57 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %57, 0
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.then.43
  %58 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %58, align 1, !tbaa !7
  %59 = load i32, i32* %new_value, align 4, !tbaa !5
  %60 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add49 = add nsw i32 %60, %59
  store i32 %add49, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.58

if.else:                                          ; preds = %if.then.43
  %61 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp50 = icmp slt i32 255, %61
  br i1 %cmp50, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %if.else
  %62 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %62, align 1, !tbaa !7
  %63 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub53 = sub nsw i32 %63, 255
  %64 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add54 = add nsw i32 %64, %sub53
  store i32 %add54, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.57

if.else.55:                                       ; preds = %if.else
  %65 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv56 = trunc i32 %65 to i8
  %66 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv56, i8* %66, align 1, !tbaa !7
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.52
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.48
  %67 = load i32, i32* %pixel, align 4, !tbaa !5
  %68 = load i32, i32* %pixels, align 4, !tbaa !5
  %sub59 = sub nsw i32 %68, 1
  %cmp60 = icmp eq i32 %67, %sub59
  br i1 %cmp60, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %if.end.58
  %69 = load i8*, i8** %to, align 8, !tbaa !1
  %70 = load i8, i8* %69, align 1, !tbaa !7
  %conv62 = zext i8 %70 to i32
  %cmp63 = icmp sgt i32 %conv62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %land.lhs.true
  %71 = load i32, i32* %pixels, align 4, !tbaa !5
  %inc66 = add nsw i32 %71, 1
  store i32 %inc66, i32* %pixels, align 4, !tbaa !5
  %72 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length67 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %72, i32 0, i32 1
  %73 = load i32, i32* %length67, align 4, !tbaa !8
  %add68 = add nsw i32 %73, 4
  store i32 %add68, i32* %length67, align 4, !tbaa !8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %land.lhs.true, %if.end.58
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.37
  %74 = load i32, i32* %error, align 4, !tbaa !5
  %mul71 = mul nsw i32 3, %74
  %div72 = sdiv i32 %mul71, 16
  store i32 %div72, i32* %correction, align 4, !tbaa !5
  %75 = load i32, i32* %correction, align 4, !tbaa !5
  %76 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub73 = sub nsw i32 %76, %75
  store i32 %sub73, i32* %remaining_error, align 4, !tbaa !5
  %77 = load i32, i32* %pixel, align 4, !tbaa !5
  %cmp74 = icmp sgt i32 %77, 0
  br i1 %cmp74, label %if.then.76, label %if.end.112

if.then.76:                                       ; preds = %if.end.70
  %78 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str77 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %78, i32 0, i32 0
  %79 = load i8*, i8** %str77, align 8, !tbaa !10
  %80 = load i32, i32* %pixel, align 4, !tbaa !5
  %sub78 = sub nsw i32 %80, 1
  %mul79 = mul nsw i32 %sub78, 4
  %idx.ext80 = sext i32 %mul79 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %79, i64 %idx.ext80
  %81 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext82 = sext i32 %81 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr81, i64 %idx.ext82
  store i8* %add.ptr83, i8** %to, align 8, !tbaa !1
  %82 = load i8*, i8** %to, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !7
  %conv84 = zext i8 %83 to i32
  %84 = load i32, i32* %correction, align 4, !tbaa !5
  %add85 = add nsw i32 %conv84, %84
  store i32 %add85, i32* %new_value, align 4, !tbaa !5
  %85 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.then.76
  %86 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %86, align 1, !tbaa !7
  %87 = load i32, i32* %new_value, align 4, !tbaa !5
  %88 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add89 = add nsw i32 %88, %87
  store i32 %add89, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.99

if.else.90:                                       ; preds = %if.then.76
  %89 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp91 = icmp slt i32 255, %89
  br i1 %cmp91, label %if.then.93, label %if.else.96

if.then.93:                                       ; preds = %if.else.90
  %90 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %90, align 1, !tbaa !7
  %91 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub94 = sub nsw i32 %91, 255
  %92 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add95 = add nsw i32 %92, %sub94
  store i32 %add95, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.98

if.else.96:                                       ; preds = %if.else.90
  %93 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv97 = trunc i32 %93 to i8
  %94 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv97, i8* %94, align 1, !tbaa !7
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.93
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.88
  %95 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length100 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %95, i32 0, i32 1
  %96 = load i32, i32* %length100, align 4, !tbaa !8
  %97 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul101 = mul nsw i32 %97, 4
  %cmp102 = icmp slt i32 %96, %mul101
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.111

land.lhs.true.104:                                ; preds = %if.end.99
  %98 = load i8*, i8** %to, align 8, !tbaa !1
  %99 = load i8, i8* %98, align 1, !tbaa !7
  %conv105 = zext i8 %99 to i32
  %cmp106 = icmp sgt i32 %conv105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %land.lhs.true.104
  %100 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul109 = mul nsw i32 %100, 4
  %101 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length110 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %101, i32 0, i32 1
  store i32 %mul109, i32* %length110, align 4, !tbaa !8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.108, %land.lhs.true.104, %if.end.99
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.70
  %102 = load i32, i32* %error, align 4, !tbaa !5
  %mul113 = mul nsw i32 5, %102
  %div114 = sdiv i32 %mul113, 16
  store i32 %div114, i32* %correction, align 4, !tbaa !5
  %103 = load i32, i32* %correction, align 4, !tbaa !5
  %104 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub115 = sub nsw i32 %104, %103
  store i32 %sub115, i32* %remaining_error, align 4, !tbaa !5
  %105 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str116 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %105, i32 0, i32 0
  %106 = load i8*, i8** %str116, align 8, !tbaa !10
  %107 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul117 = mul nsw i32 %107, 4
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %106, i64 %idx.ext118
  %108 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext120 = sext i32 %108 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %add.ptr119, i64 %idx.ext120
  store i8* %add.ptr121, i8** %to, align 8, !tbaa !1
  %109 = load i8*, i8** %to, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !7
  %conv122 = zext i8 %110 to i32
  %111 = load i32, i32* %correction, align 4, !tbaa !5
  %add123 = add nsw i32 %conv122, %111
  store i32 %add123, i32* %new_value, align 4, !tbaa !5
  %112 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %112, 0
  br i1 %cmp124, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %if.end.112
  %113 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %113, align 1, !tbaa !7
  %114 = load i32, i32* %new_value, align 4, !tbaa !5
  %115 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add127 = add nsw i32 %115, %114
  store i32 %add127, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.137

if.else.128:                                      ; preds = %if.end.112
  %116 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp129 = icmp slt i32 255, %116
  br i1 %cmp129, label %if.then.131, label %if.else.134

if.then.131:                                      ; preds = %if.else.128
  %117 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %117, align 1, !tbaa !7
  %118 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub132 = sub nsw i32 %118, 255
  %119 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add133 = add nsw i32 %119, %sub132
  store i32 %add133, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.136

if.else.134:                                      ; preds = %if.else.128
  %120 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv135 = trunc i32 %120 to i8
  %121 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv135, i8* %121, align 1, !tbaa !7
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.134, %if.then.131
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.126
  %122 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length138 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %122, i32 0, i32 1
  %123 = load i32, i32* %length138, align 4, !tbaa !8
  %124 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul139 = mul nsw i32 %124, 4
  %cmp140 = icmp sle i32 %123, %mul139
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.150

land.lhs.true.142:                                ; preds = %if.end.137
  %125 = load i8*, i8** %to, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !7
  %conv143 = zext i8 %126 to i32
  %cmp144 = icmp sgt i32 %conv143, 0
  br i1 %cmp144, label %if.then.146, label %if.end.150

if.then.146:                                      ; preds = %land.lhs.true.142
  %127 = load i32, i32* %pixel, align 4, !tbaa !5
  %add147 = add nsw i32 %127, 1
  %mul148 = mul nsw i32 %add147, 4
  %128 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length149 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %128, i32 0, i32 1
  store i32 %mul148, i32* %length149, align 4, !tbaa !8
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.146, %land.lhs.true.142, %if.end.137
  %129 = load i32, i32* %pixel, align 4, !tbaa !5
  %130 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp151 = icmp slt i32 %129, %130
  br i1 %cmp151, label %if.then.153, label %if.end.186

if.then.153:                                      ; preds = %if.end.150
  %131 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str154 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %131, i32 0, i32 0
  %132 = load i8*, i8** %str154, align 8, !tbaa !10
  %133 = load i32, i32* %pixel, align 4, !tbaa !5
  %add155 = add nsw i32 %133, 1
  %mul156 = mul nsw i32 %add155, 4
  %idx.ext157 = sext i32 %mul156 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %132, i64 %idx.ext157
  %134 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext159 = sext i32 %134 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %add.ptr158, i64 %idx.ext159
  store i8* %add.ptr160, i8** %to, align 8, !tbaa !1
  %135 = load i8*, i8** %to, align 8, !tbaa !1
  %136 = load i8, i8* %135, align 1, !tbaa !7
  %conv161 = zext i8 %136 to i32
  %137 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add162 = add nsw i32 %conv161, %137
  store i32 %add162, i32* %new_value, align 4, !tbaa !5
  %138 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp163 = icmp slt i32 %138, 0
  br i1 %cmp163, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.153
  br label %cond.end.169

cond.false:                                       ; preds = %if.then.153
  %139 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp165 = icmp sgt i32 %139, 255
  br i1 %cmp165, label %cond.true.167, label %cond.false.168

cond.true.167:                                    ; preds = %cond.false
  br label %cond.end

cond.false.168:                                   ; preds = %cond.false
  %140 = load i32, i32* %new_value, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.168, %cond.true.167
  %cond = phi i32 [ 255, %cond.true.167 ], [ %140, %cond.false.168 ]
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.end, %cond.true
  %cond170 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv171 = trunc i32 %cond170 to i8
  %141 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv171, i8* %141, align 1, !tbaa !7
  %142 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length172 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %142, i32 0, i32 1
  %143 = load i32, i32* %length172, align 4, !tbaa !8
  %144 = load i32, i32* %pixel, align 4, !tbaa !5
  %add173 = add nsw i32 %144, 2
  %mul174 = mul nsw i32 %add173, 4
  %cmp175 = icmp slt i32 %143, %mul174
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.185

land.lhs.true.177:                                ; preds = %cond.end.169
  %145 = load i8*, i8** %to, align 8, !tbaa !1
  %146 = load i8, i8* %145, align 1, !tbaa !7
  %conv178 = zext i8 %146 to i32
  %cmp179 = icmp sgt i32 %conv178, 0
  br i1 %cmp179, label %if.then.181, label %if.end.185

if.then.181:                                      ; preds = %land.lhs.true.177
  %147 = load i32, i32* %pixel, align 4, !tbaa !5
  %add182 = add nsw i32 %147, 2
  %mul183 = mul nsw i32 %add182, 4
  %148 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length184 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %148, i32 0, i32 1
  store i32 %mul183, i32* %length184, align 4, !tbaa !8
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.181, %land.lhs.true.177, %cond.end.169
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.150
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %for.body.18
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.187
  %149 = load i32, i32* %colorant, align 4, !tbaa !5
  %dec = add nsw i32 %149, -1
  store i32 %dec, i32* %colorant, align 4, !tbaa !5
  br label %for.cond.16

for.end.189:                                      ; preds = %for.cond.16
  %150 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp190 = icmp eq i32 %150, 7
  br i1 %cmp190, label %if.then.192, label %if.end.202

if.then.192:                                      ; preds = %for.end.189
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.199, %if.then.192
  %151 = load i32, i32* %plane, align 4, !tbaa !5
  %cmp194 = icmp slt i32 %151, 4
  br i1 %cmp194, label %for.body.196, label %for.end.201

for.body.196:                                     ; preds = %for.cond.193
  %152 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom197 = sext i32 %152 to i64
  %arrayidx198 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom197
  %153 = load i8*, i8** %arrayidx198, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr, i8** %arrayidx198, align 8, !tbaa !1
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.196
  %154 = load i32, i32* %plane, align 4, !tbaa !5
  %inc200 = add nsw i32 %154, 1
  store i32 %inc200, i32* %plane, align 4, !tbaa !5
  br label %for.cond.193

for.end.201:                                      ; preds = %for.cond.193
  br label %if.end.202

if.end.202:                                       ; preds = %for.end.201, %for.end.189
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %155 = load i32, i32* %pixel, align 4, !tbaa !5
  %inc204 = add nsw i32 %155, 1
  store i32 %inc204, i32* %pixel, align 4, !tbaa !5
  %156 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %inc205 = add nsw i32 %156, 1
  store i32 %inc205, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond.4

for.end.206:                                      ; preds = %for.cond.4
  %157 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i32 0
  %158 = load i32, i32* %pixels, align 4, !tbaa !5
  call void @eprn_finalize(i32 0, i32 2, i32 4, %struct.eprn_OctetString* %157, i8** %arraydecay, i32 %158) #3
  %159 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast [4 x i8*]* %ptr to i8*
  call void @llvm.lifetime.end(i64 32, i8* %160) #1
  %161 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  call void @llvm.lifetime.end(i64 1, i8* %approx) #1
  %162 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @split_colour_at_most_2(%struct.eprn_OctetString* %line, %struct.eprn_OctetString* %next_line, i32 %max_octets, i32 %colour_model, %struct.eprn_OctetString* %bitplanes) #0 {
entry:
  %line.addr = alloca %struct.eprn_OctetString*, align 8
  %next_line.addr = alloca %struct.eprn_OctetString*, align 8
  %max_octets.addr = alloca i32, align 4
  %colour_model.addr = alloca i32, align 4
  %bitplanes.addr = alloca %struct.eprn_OctetString*, align 8
  %last_colorant = alloca i32, align 4
  %max_pixel = alloca i32, align 4
  %planes = alloca i32, align 4
  %colorant = alloca i32, align 4
  %correction = alloca i32, align 4
  %error = alloca i32, align 4
  %new_value = alloca i32, align 4
  %pixel = alloca i32, align 4
  %pixel_mod_8 = alloca i32, align 4
  %pixels = alloca i32, align 4
  %plane = alloca i32, align 4
  %remaining_error = alloca i32, align 4
  %approx = alloca [4 x i8], align 1
  %from = alloca i8*, align 8
  %ptr = alloca [4 x i8*], align 16
  %to = alloca i8*, align 8
  store %struct.eprn_OctetString* %line, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  store %struct.eprn_OctetString* %next_line, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  store i32 %max_octets, i32* %max_octets.addr, align 4, !tbaa !5
  store i32 %colour_model, i32* %colour_model.addr, align 4, !tbaa !7
  store %struct.eprn_OctetString* %bitplanes, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %0 = bitcast i32* %last_colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %2, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %cond = select i1 %3, i32 3, i32 2
  store i32 %cond, i32* %last_colorant, align 4, !tbaa !5
  %4 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %div = sdiv i32 %5, 4
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %max_pixel, align 4, !tbaa !5
  %6 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp2 = icmp eq i32 %7, 3
  br i1 %cmp2, label %lor.end.5, label %lor.rhs.3

lor.rhs.3:                                        ; preds = %lor.end
  %8 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp4 = icmp eq i32 %8, 4
  br label %lor.end.5

lor.end.5:                                        ; preds = %lor.rhs.3, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ %cmp4, %lor.rhs.3 ]
  %cond6 = select i1 %9, i32 4, i32 3
  store i32 %cond6, i32* %planes, align 4, !tbaa !5
  %10 = bitcast i32* %colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %17, i32 0, i32 1
  %18 = load i32, i32* %length, align 4, !tbaa !8
  %div7 = sdiv i32 %18, 4
  store i32 %div7, i32* %pixels, align 4, !tbaa !5
  %19 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast [4 x i8]* %approx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast [4 x i8*]* %ptr to i8*
  call void @llvm.lifetime.start(i64 32, i8* %23) #1
  %24 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end.5
  %25 = load i32, i32* %plane, align 4, !tbaa !5
  %26 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %25, %26
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %28, i64 %idxprom
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx, i32 0, i32 0
  %29 = load i8*, i8** %str, align 8, !tbaa !10
  %30 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom9 = sext i32 %30 to i64
  %arrayidx10 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom9
  store i8* %29, i8** %arrayidx10, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %plane, align 4, !tbaa !5
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %pixel, align 4, !tbaa !5
  store i32 8, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.252, %for.end
  %32 = load i32, i32* %pixel, align 4, !tbaa !5
  %33 = load i32, i32* %pixels, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %32, %33
  br i1 %cmp12, label %for.body.13, label %for.end.255

for.body.13:                                      ; preds = %for.cond.11
  %34 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %34, 8
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.13
  store i32 0, i32* %pixel_mod_8, align 4, !tbaa !5
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.20, %if.then
  %35 = load i32, i32* %plane, align 4, !tbaa !5
  %36 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %35, %36
  br i1 %cmp16, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.15
  %37 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom18 = sext i32 %37 to i64
  %arrayidx19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom18
  %38 = load i8*, i8** %arrayidx19, align 8, !tbaa !1
  store i8 0, i8* %38, align 1, !tbaa !7
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %39 = load i32, i32* %plane, align 4, !tbaa !5
  %inc21 = add nsw i32 %39, 1
  store i32 %inc21, i32* %plane, align 4, !tbaa !5
  br label %for.cond.15

for.end.22:                                       ; preds = %for.cond.15
  br label %if.end

if.end:                                           ; preds = %for.end.22, %for.body.13
  %40 = load i32, i32* %last_colorant, align 4, !tbaa !5
  store i32 %40, i32* %colorant, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.192, %if.end
  %41 = load i32, i32* %colorant, align 4, !tbaa !5
  %cmp24 = icmp sge i32 %41, 0
  br i1 %cmp24, label %for.body.25, label %for.end.193

for.body.25:                                      ; preds = %for.cond.23
  %42 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %str26 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %42, i32 0, i32 0
  %43 = load i8*, i8** %str26, align 8, !tbaa !10
  %44 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul = mul nsw i32 %44, 4
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  %45 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext27 = sext i32 %45 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext27
  store i8* %add.ptr28, i8** %from, align 8, !tbaa !1
  %46 = load i8*, i8** %from, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !7
  %conv = zext i8 %47 to i32
  %shr = ashr i32 %conv, 7
  %conv29 = trunc i32 %shr to i8
  %48 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom30 = sext i32 %48 to i64
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 %idxprom30
  store i8 %conv29, i8* %arrayidx31, align 1, !tbaa !7
  %49 = load i8*, i8** %from, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !7
  %conv32 = zext i8 %50 to i32
  %51 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom33 = sext i32 %51 to i64
  %arrayidx34 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 %idxprom33
  %52 = load i8, i8* %arrayidx34, align 1, !tbaa !7
  %conv35 = zext i8 %52 to i32
  %mul36 = mul nsw i32 255, %conv35
  %sub37 = sub nsw i32 %conv32, %mul36
  store i32 %sub37, i32* %error, align 4, !tbaa !5
  %53 = load i32, i32* %error, align 4, !tbaa !5
  %cmp38 = icmp ne i32 %53, 0
  br i1 %cmp38, label %if.then.40, label %if.end.191

if.then.40:                                       ; preds = %for.body.25
  %54 = load i32, i32* %error, align 4, !tbaa !5
  store i32 %54, i32* %remaining_error, align 4, !tbaa !5
  %55 = load i32, i32* %error, align 4, !tbaa !5
  %mul41 = mul nsw i32 7, %55
  %div42 = sdiv i32 %mul41, 16
  store i32 %div42, i32* %correction, align 4, !tbaa !5
  %56 = load i32, i32* %correction, align 4, !tbaa !5
  %57 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub43 = sub nsw i32 %57, %56
  store i32 %sub43, i32* %remaining_error, align 4, !tbaa !5
  %58 = load i32, i32* %pixel, align 4, !tbaa !5
  %59 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %58, %59
  br i1 %cmp44, label %if.then.46, label %if.end.73

if.then.46:                                       ; preds = %if.then.40
  %60 = load i8*, i8** %from, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %add.ptr47, i8** %to, align 8, !tbaa !1
  %61 = load i8*, i8** %to, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !7
  %conv48 = zext i8 %62 to i32
  %63 = load i32, i32* %correction, align 4, !tbaa !5
  %add = add nsw i32 %conv48, %63
  store i32 %add, i32* %new_value, align 4, !tbaa !5
  %64 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %64, 0
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.then.46
  %65 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %65, align 1, !tbaa !7
  %66 = load i32, i32* %new_value, align 4, !tbaa !5
  %67 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add52 = add nsw i32 %67, %66
  store i32 %add52, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.61

if.else:                                          ; preds = %if.then.46
  %68 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp53 = icmp slt i32 255, %68
  br i1 %cmp53, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.else
  %69 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %69, align 1, !tbaa !7
  %70 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub56 = sub nsw i32 %70, 255
  %71 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add57 = add nsw i32 %71, %sub56
  store i32 %add57, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.60

if.else.58:                                       ; preds = %if.else
  %72 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv59 = trunc i32 %72 to i8
  %73 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv59, i8* %73, align 1, !tbaa !7
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.55
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.51
  %74 = load i32, i32* %pixel, align 4, !tbaa !5
  %75 = load i32, i32* %pixels, align 4, !tbaa !5
  %sub62 = sub nsw i32 %75, 1
  %cmp63 = icmp eq i32 %74, %sub62
  br i1 %cmp63, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %if.end.61
  %76 = load i8*, i8** %to, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !7
  %conv65 = zext i8 %77 to i32
  %cmp66 = icmp sgt i32 %conv65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %land.lhs.true
  %78 = load i32, i32* %pixels, align 4, !tbaa !5
  %inc69 = add nsw i32 %78, 1
  store i32 %inc69, i32* %pixels, align 4, !tbaa !5
  %79 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length70 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %79, i32 0, i32 1
  %80 = load i32, i32* %length70, align 4, !tbaa !8
  %add71 = add nsw i32 %80, 4
  store i32 %add71, i32* %length70, align 4, !tbaa !8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %land.lhs.true, %if.end.61
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.40
  %81 = load i32, i32* %error, align 4, !tbaa !5
  %mul74 = mul nsw i32 3, %81
  %div75 = sdiv i32 %mul74, 16
  store i32 %div75, i32* %correction, align 4, !tbaa !5
  %82 = load i32, i32* %correction, align 4, !tbaa !5
  %83 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub76 = sub nsw i32 %83, %82
  store i32 %sub76, i32* %remaining_error, align 4, !tbaa !5
  %84 = load i32, i32* %pixel, align 4, !tbaa !5
  %cmp77 = icmp sgt i32 %84, 0
  br i1 %cmp77, label %if.then.79, label %if.end.115

if.then.79:                                       ; preds = %if.end.73
  %85 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str80 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %85, i32 0, i32 0
  %86 = load i8*, i8** %str80, align 8, !tbaa !10
  %87 = load i32, i32* %pixel, align 4, !tbaa !5
  %sub81 = sub nsw i32 %87, 1
  %mul82 = mul nsw i32 %sub81, 4
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %86, i64 %idx.ext83
  %88 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext85 = sext i32 %88 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr84, i64 %idx.ext85
  store i8* %add.ptr86, i8** %to, align 8, !tbaa !1
  %89 = load i8*, i8** %to, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !7
  %conv87 = zext i8 %90 to i32
  %91 = load i32, i32* %correction, align 4, !tbaa !5
  %add88 = add nsw i32 %conv87, %91
  store i32 %add88, i32* %new_value, align 4, !tbaa !5
  %92 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %92, 0
  br i1 %cmp89, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.then.79
  %93 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %93, align 1, !tbaa !7
  %94 = load i32, i32* %new_value, align 4, !tbaa !5
  %95 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add92 = add nsw i32 %95, %94
  store i32 %add92, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.102

if.else.93:                                       ; preds = %if.then.79
  %96 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp94 = icmp slt i32 255, %96
  br i1 %cmp94, label %if.then.96, label %if.else.99

if.then.96:                                       ; preds = %if.else.93
  %97 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %97, align 1, !tbaa !7
  %98 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub97 = sub nsw i32 %98, 255
  %99 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add98 = add nsw i32 %99, %sub97
  store i32 %add98, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.101

if.else.99:                                       ; preds = %if.else.93
  %100 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv100 = trunc i32 %100 to i8
  %101 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv100, i8* %101, align 1, !tbaa !7
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.99, %if.then.96
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.91
  %102 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length103 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %102, i32 0, i32 1
  %103 = load i32, i32* %length103, align 4, !tbaa !8
  %104 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul104 = mul nsw i32 %104, 4
  %cmp105 = icmp slt i32 %103, %mul104
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.114

land.lhs.true.107:                                ; preds = %if.end.102
  %105 = load i8*, i8** %to, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !7
  %conv108 = zext i8 %106 to i32
  %cmp109 = icmp sgt i32 %conv108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %land.lhs.true.107
  %107 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul112 = mul nsw i32 %107, 4
  %108 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length113 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %108, i32 0, i32 1
  store i32 %mul112, i32* %length113, align 4, !tbaa !8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %land.lhs.true.107, %if.end.102
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.73
  %109 = load i32, i32* %error, align 4, !tbaa !5
  %mul116 = mul nsw i32 5, %109
  %div117 = sdiv i32 %mul116, 16
  store i32 %div117, i32* %correction, align 4, !tbaa !5
  %110 = load i32, i32* %correction, align 4, !tbaa !5
  %111 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub118 = sub nsw i32 %111, %110
  store i32 %sub118, i32* %remaining_error, align 4, !tbaa !5
  %112 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str119 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %112, i32 0, i32 0
  %113 = load i8*, i8** %str119, align 8, !tbaa !10
  %114 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul120 = mul nsw i32 %114, 4
  %idx.ext121 = sext i32 %mul120 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %113, i64 %idx.ext121
  %115 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext123 = sext i32 %115 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr122, i64 %idx.ext123
  store i8* %add.ptr124, i8** %to, align 8, !tbaa !1
  %116 = load i8*, i8** %to, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !7
  %conv125 = zext i8 %117 to i32
  %118 = load i32, i32* %correction, align 4, !tbaa !5
  %add126 = add nsw i32 %conv125, %118
  store i32 %add126, i32* %new_value, align 4, !tbaa !5
  %119 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp127 = icmp slt i32 %119, 0
  br i1 %cmp127, label %if.then.129, label %if.else.131

if.then.129:                                      ; preds = %if.end.115
  %120 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %120, align 1, !tbaa !7
  %121 = load i32, i32* %new_value, align 4, !tbaa !5
  %122 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add130 = add nsw i32 %122, %121
  store i32 %add130, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.140

if.else.131:                                      ; preds = %if.end.115
  %123 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp132 = icmp slt i32 255, %123
  br i1 %cmp132, label %if.then.134, label %if.else.137

if.then.134:                                      ; preds = %if.else.131
  %124 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %124, align 1, !tbaa !7
  %125 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub135 = sub nsw i32 %125, 255
  %126 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add136 = add nsw i32 %126, %sub135
  store i32 %add136, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.139

if.else.137:                                      ; preds = %if.else.131
  %127 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv138 = trunc i32 %127 to i8
  %128 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv138, i8* %128, align 1, !tbaa !7
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.137, %if.then.134
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.129
  %129 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length141 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %129, i32 0, i32 1
  %130 = load i32, i32* %length141, align 4, !tbaa !8
  %131 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul142 = mul nsw i32 %131, 4
  %cmp143 = icmp sle i32 %130, %mul142
  br i1 %cmp143, label %land.lhs.true.145, label %if.end.153

land.lhs.true.145:                                ; preds = %if.end.140
  %132 = load i8*, i8** %to, align 8, !tbaa !1
  %133 = load i8, i8* %132, align 1, !tbaa !7
  %conv146 = zext i8 %133 to i32
  %cmp147 = icmp sgt i32 %conv146, 0
  br i1 %cmp147, label %if.then.149, label %if.end.153

if.then.149:                                      ; preds = %land.lhs.true.145
  %134 = load i32, i32* %pixel, align 4, !tbaa !5
  %add150 = add nsw i32 %134, 1
  %mul151 = mul nsw i32 %add150, 4
  %135 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length152 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %135, i32 0, i32 1
  store i32 %mul151, i32* %length152, align 4, !tbaa !8
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.149, %land.lhs.true.145, %if.end.140
  %136 = load i32, i32* %pixel, align 4, !tbaa !5
  %137 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp154 = icmp slt i32 %136, %137
  br i1 %cmp154, label %if.then.156, label %if.end.190

if.then.156:                                      ; preds = %if.end.153
  %138 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str157 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %138, i32 0, i32 0
  %139 = load i8*, i8** %str157, align 8, !tbaa !10
  %140 = load i32, i32* %pixel, align 4, !tbaa !5
  %add158 = add nsw i32 %140, 1
  %mul159 = mul nsw i32 %add158, 4
  %idx.ext160 = sext i32 %mul159 to i64
  %add.ptr161 = getelementptr inbounds i8, i8* %139, i64 %idx.ext160
  %141 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext162 = sext i32 %141 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %add.ptr161, i64 %idx.ext162
  store i8* %add.ptr163, i8** %to, align 8, !tbaa !1
  %142 = load i8*, i8** %to, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !7
  %conv164 = zext i8 %143 to i32
  %144 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add165 = add nsw i32 %conv164, %144
  store i32 %add165, i32* %new_value, align 4, !tbaa !5
  %145 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp166 = icmp slt i32 %145, 0
  br i1 %cmp166, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.156
  br label %cond.end.173

cond.false:                                       ; preds = %if.then.156
  %146 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp168 = icmp sgt i32 %146, 255
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %cond.false
  br label %cond.end

cond.false.171:                                   ; preds = %cond.false
  %147 = load i32, i32* %new_value, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.171, %cond.true.170
  %cond172 = phi i32 [ 255, %cond.true.170 ], [ %147, %cond.false.171 ]
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.end, %cond.true
  %cond174 = phi i32 [ 0, %cond.true ], [ %cond172, %cond.end ]
  %conv175 = trunc i32 %cond174 to i8
  %148 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv175, i8* %148, align 1, !tbaa !7
  %149 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length176 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %149, i32 0, i32 1
  %150 = load i32, i32* %length176, align 4, !tbaa !8
  %151 = load i32, i32* %pixel, align 4, !tbaa !5
  %add177 = add nsw i32 %151, 2
  %mul178 = mul nsw i32 %add177, 4
  %cmp179 = icmp slt i32 %150, %mul178
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.189

land.lhs.true.181:                                ; preds = %cond.end.173
  %152 = load i8*, i8** %to, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !7
  %conv182 = zext i8 %153 to i32
  %cmp183 = icmp sgt i32 %conv182, 0
  br i1 %cmp183, label %if.then.185, label %if.end.189

if.then.185:                                      ; preds = %land.lhs.true.181
  %154 = load i32, i32* %pixel, align 4, !tbaa !5
  %add186 = add nsw i32 %154, 2
  %mul187 = mul nsw i32 %add186, 4
  %155 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length188 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %155, i32 0, i32 1
  store i32 %mul187, i32* %length188, align 4, !tbaa !8
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.185, %land.lhs.true.181, %cond.end.173
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.153
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %for.body.25
  br label %for.inc.192

for.inc.192:                                      ; preds = %if.end.191
  %156 = load i32, i32* %colorant, align 4, !tbaa !5
  %dec = add nsw i32 %156, -1
  store i32 %dec, i32* %colorant, align 4, !tbaa !5
  br label %for.cond.23

for.end.193:                                      ; preds = %for.cond.23
  %157 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp194 = icmp eq i32 %157, 3
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.221

land.lhs.true.196:                                ; preds = %for.end.193
  %arrayidx197 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 0
  %158 = load i8, i8* %arrayidx197, align 1, !tbaa !7
  %conv198 = zext i8 %158 to i32
  %arrayidx199 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 1
  %159 = load i8, i8* %arrayidx199, align 1, !tbaa !7
  %conv200 = zext i8 %159 to i32
  %cmp201 = icmp eq i32 %conv198, %conv200
  br i1 %cmp201, label %land.lhs.true.203, label %if.end.221

land.lhs.true.203:                                ; preds = %land.lhs.true.196
  %arrayidx204 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 1
  %160 = load i8, i8* %arrayidx204, align 1, !tbaa !7
  %conv205 = zext i8 %160 to i32
  %arrayidx206 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 2
  %161 = load i8, i8* %arrayidx206, align 1, !tbaa !7
  %conv207 = zext i8 %161 to i32
  %cmp208 = icmp eq i32 %conv205, %conv207
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.221

land.lhs.true.210:                                ; preds = %land.lhs.true.203
  %arrayidx211 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 0
  %162 = load i8, i8* %arrayidx211, align 1, !tbaa !7
  %conv212 = zext i8 %162 to i32
  %cmp213 = icmp sgt i32 %conv212, 0
  br i1 %cmp213, label %if.then.215, label %if.end.221

if.then.215:                                      ; preds = %land.lhs.true.210
  %arrayidx216 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 0
  %163 = load i8, i8* %arrayidx216, align 1, !tbaa !7
  %arrayidx217 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 3
  store i8 %163, i8* %arrayidx217, align 1, !tbaa !7
  %arrayidx218 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 2
  store i8 0, i8* %arrayidx218, align 1, !tbaa !7
  %arrayidx219 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 1
  store i8 0, i8* %arrayidx219, align 1, !tbaa !7
  %arrayidx220 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 0
  store i8 0, i8* %arrayidx220, align 1, !tbaa !7
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.215, %land.lhs.true.210, %land.lhs.true.203, %land.lhs.true.196, %for.end.193
  %164 = load i32, i32* %last_colorant, align 4, !tbaa !5
  store i32 %164, i32* %colorant, align 4, !tbaa !5
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.235, %if.end.221
  %165 = load i32, i32* %colorant, align 4, !tbaa !5
  %cmp223 = icmp sge i32 %165, 0
  br i1 %cmp223, label %for.body.225, label %for.end.238

for.body.225:                                     ; preds = %for.cond.222
  %166 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom226 = sext i32 %166 to i64
  %arrayidx227 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom226
  %167 = load i8*, i8** %arrayidx227, align 8, !tbaa !1
  %168 = load i8, i8* %167, align 1, !tbaa !7
  %conv228 = zext i8 %168 to i32
  %shl = shl i32 %conv228, 1
  %169 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom229 = sext i32 %169 to i64
  %arrayidx230 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 %idxprom229
  %170 = load i8, i8* %arrayidx230, align 1, !tbaa !7
  %conv231 = zext i8 %170 to i32
  %or = or i32 %shl, %conv231
  %conv232 = trunc i32 %or to i8
  %171 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom233 = sext i32 %171 to i64
  %arrayidx234 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom233
  %172 = load i8*, i8** %arrayidx234, align 8, !tbaa !1
  store i8 %conv232, i8* %172, align 1, !tbaa !7
  br label %for.inc.235

for.inc.235:                                      ; preds = %for.body.225
  %173 = load i32, i32* %colorant, align 4, !tbaa !5
  %dec236 = add nsw i32 %173, -1
  store i32 %dec236, i32* %colorant, align 4, !tbaa !5
  %174 = load i32, i32* %plane, align 4, !tbaa !5
  %inc237 = add nsw i32 %174, 1
  store i32 %inc237, i32* %plane, align 4, !tbaa !5
  br label %for.cond.222

for.end.238:                                      ; preds = %for.cond.222
  %175 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp239 = icmp eq i32 %175, 7
  br i1 %cmp239, label %if.then.241, label %if.end.251

if.then.241:                                      ; preds = %for.end.238
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.248, %if.then.241
  %176 = load i32, i32* %plane, align 4, !tbaa !5
  %177 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp243 = icmp slt i32 %176, %177
  br i1 %cmp243, label %for.body.245, label %for.end.250

for.body.245:                                     ; preds = %for.cond.242
  %178 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom246 = sext i32 %178 to i64
  %arrayidx247 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom246
  %179 = load i8*, i8** %arrayidx247, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr, i8** %arrayidx247, align 8, !tbaa !1
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.body.245
  %180 = load i32, i32* %plane, align 4, !tbaa !5
  %inc249 = add nsw i32 %180, 1
  store i32 %inc249, i32* %plane, align 4, !tbaa !5
  br label %for.cond.242

for.end.250:                                      ; preds = %for.cond.242
  br label %if.end.251

if.end.251:                                       ; preds = %for.end.250, %for.end.238
  br label %for.inc.252

for.inc.252:                                      ; preds = %if.end.251
  %181 = load i32, i32* %pixel, align 4, !tbaa !5
  %inc253 = add nsw i32 %181, 1
  store i32 %inc253, i32* %pixel, align 4, !tbaa !5
  %182 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %inc254 = add nsw i32 %182, 1
  store i32 %inc254, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond.11

for.end.255:                                      ; preds = %for.cond.11
  %183 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp256 = icmp eq i32 %183, 1
  %conv257 = zext i1 %cmp256 to i32
  %184 = load i32, i32* %planes, align 4, !tbaa !5
  %185 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i32 0
  %186 = load i32, i32* %pixels, align 4, !tbaa !5
  call void @eprn_finalize(i32 %conv257, i32 2, i32 %184, %struct.eprn_OctetString* %185, i8** %arraydecay, i32 %186) #3
  %187 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast [4 x i8*]* %ptr to i8*
  call void @llvm.lifetime.end(i64 32, i8* %188) #1
  %189 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast [4 x i8]* %approx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %last_colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @split_colour(%struct.eprn_OctetString* %line, %struct.eprn_OctetString* %next_line, i32 %max_octets, i32 %colour_model, i32 %black_levels, i32 %non_black_levels, %struct.eprn_OctetString* %bitplanes) #0 {
entry:
  %line.addr = alloca %struct.eprn_OctetString*, align 8
  %next_line.addr = alloca %struct.eprn_OctetString*, align 8
  %max_octets.addr = alloca i32, align 4
  %colour_model.addr = alloca i32, align 4
  %black_levels.addr = alloca i32, align 4
  %non_black_levels.addr = alloca i32, align 4
  %bitplanes.addr = alloca %struct.eprn_OctetString*, align 8
  %black_planes = alloca i32, align 4
  %last_colorant = alloca i32, align 4
  %max_pixel = alloca i32, align 4
  %non_black_planes = alloca i32, align 4
  %planes = alloca i32, align 4
  %colorant = alloca i32, align 4
  %correction = alloca i32, align 4
  %error = alloca i32, align 4
  %new_value = alloca i32, align 4
  %next_plane = alloca [4 x i32], align 16
  %pixel = alloca i32, align 4
  %pixel_mod_8 = alloca i32, align 4
  %pixels = alloca i32, align 4
  %plane = alloca i32, align 4
  %remaining_error = alloca i32, align 4
  %approx = alloca [4 x i8], align 1
  %from = alloca i8*, align 8
  %ptr = alloca [32 x i8*], align 16
  %to = alloca i8*, align 8
  %divisor = alloca [4 x i32], align 16
  %max_level = alloca [4 x i32], align 16
  %value = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.eprn_OctetString* %line, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  store %struct.eprn_OctetString* %next_line, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  store i32 %max_octets, i32* %max_octets.addr, align 4, !tbaa !5
  store i32 %colour_model, i32* %colour_model.addr, align 4, !tbaa !7
  store i32 %black_levels, i32* %black_levels.addr, align 4, !tbaa !5
  store i32 %non_black_levels, i32* %non_black_levels.addr, align 4, !tbaa !5
  store %struct.eprn_OctetString* %bitplanes, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %0 = bitcast i32* %black_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %call = call i32 @eprn_bits_for_levels(i32 %1) #3
  store i32 %call, i32* %black_planes, align 4, !tbaa !5
  %2 = bitcast i32* %last_colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %3, 0
  %cond = select i1 %cmp, i32 3, i32 2
  store i32 %cond, i32* %last_colorant, align 4, !tbaa !5
  %4 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %max_octets.addr, align 4, !tbaa !5
  %div = sdiv i32 %5, 4
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %max_pixel, align 4, !tbaa !5
  %6 = bitcast i32* %non_black_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !5
  %call1 = call i32 @eprn_bits_for_levels(i32 %7) #3
  store i32 %call1, i32* %non_black_planes, align 4, !tbaa !5
  %8 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %black_planes, align 4, !tbaa !5
  %10 = load i32, i32* %non_black_planes, align 4, !tbaa !5
  %mul = mul nsw i32 3, %10
  %add = add nsw i32 %9, %mul
  store i32 %add, i32* %planes, align 4, !tbaa !5
  %11 = bitcast i32* %colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast [4 x i32]* %next_plane to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %19, i32 0, i32 1
  %20 = load i32, i32* %length, align 4, !tbaa !8
  %div2 = sdiv i32 %20, 4
  store i32 %div2, i32* %pixels, align 4, !tbaa !5
  %21 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast [4 x i8]* %approx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast [32 x i8*]* %ptr to i8*
  call void @llvm.lifetime.start(i64 256, i8* %25) #1
  %26 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast [4 x i32]* %divisor to i8*
  call void @llvm.lifetime.start(i64 16, i8* %27) #1
  %28 = bitcast [4 x i32]* %max_level to i8*
  call void @llvm.lifetime.start(i64 16, i8* %28) #1
  %29 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %cmp3 = icmp ugt i32 %29, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %30 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %div4 = udiv i32 256, %30
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %divisor, i32 0, i64 3
  store i32 %div4, i32* %arrayidx, align 4, !tbaa !5
  %31 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %sub5 = sub i32 %31, 1
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %max_level, i32 0, i64 3
  store i32 %sub5, i32* %arrayidx6, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %divisor, i32 0, i64 3
  store i32 0, i32* %arrayidx7, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %max_level, i32 0, i64 3
  store i32 0, i32* %arrayidx8, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load i32, i32* %black_planes, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %next_plane, i32 0, i64 3
  store i32 %32, i32* %arrayidx9, align 4, !tbaa !5
  store i32 0, i32* %colorant, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %33 = load i32, i32* %colorant, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %33, 3
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !5
  %div11 = udiv i32 256, %34
  %35 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom = sext i32 %35 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %divisor, i32 0, i64 %idxprom
  store i32 %div11, i32* %arrayidx12, align 4, !tbaa !5
  %36 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !5
  %sub13 = sub i32 %36, 1
  %37 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom14 = sext i32 %37 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %max_level, i32 0, i64 %idxprom14
  store i32 %sub13, i32* %arrayidx15, align 4, !tbaa !5
  %38 = load i32, i32* %colorant, align 4, !tbaa !5
  %sub16 = sub nsw i32 3, %38
  %39 = load i32, i32* %non_black_planes, align 4, !tbaa !5
  %mul17 = mul nsw i32 %sub16, %39
  %40 = load i32, i32* %black_planes, align 4, !tbaa !5
  %add18 = add nsw i32 %mul17, %40
  %41 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom19 = sext i32 %41 to i64
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %next_plane, i32 0, i64 %idxprom19
  store i32 %add18, i32* %arrayidx20, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %colorant, align 4, !tbaa !5
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %colorant, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.28, %for.end
  %43 = load i32, i32* %plane, align 4, !tbaa !5
  %44 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %43, %44
  br i1 %cmp22, label %for.body.23, label %for.end.30

for.body.23:                                      ; preds = %for.cond.21
  %45 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom24 = sext i32 %45 to i64
  %46 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %46, i64 %idxprom24
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx25, i32 0, i32 0
  %47 = load i8*, i8** %str, align 8, !tbaa !10
  %48 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom26 = sext i32 %48 to i64
  %arrayidx27 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom26
  store i8* %47, i8** %arrayidx27, align 8, !tbaa !1
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.23
  %49 = load i32, i32* %plane, align 4, !tbaa !5
  %inc29 = add nsw i32 %49, 1
  store i32 %inc29, i32* %plane, align 4, !tbaa !5
  br label %for.cond.21

for.end.30:                                       ; preds = %for.cond.21
  store i32 0, i32* %pixel, align 4, !tbaa !5
  store i32 8, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.302, %for.end.30
  %50 = load i32, i32* %pixel, align 4, !tbaa !5
  %51 = load i32, i32* %pixels, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %50, %51
  br i1 %cmp32, label %for.body.33, label %for.end.305

for.body.33:                                      ; preds = %for.cond.31
  %52 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %52, 8
  br i1 %cmp34, label %if.then.35, label %if.end.44

if.then.35:                                       ; preds = %for.body.33
  store i32 0, i32* %pixel_mod_8, align 4, !tbaa !5
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.41, %if.then.35
  %53 = load i32, i32* %plane, align 4, !tbaa !5
  %54 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %53, %54
  br i1 %cmp37, label %for.body.38, label %for.end.43

for.body.38:                                      ; preds = %for.cond.36
  %55 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom39 = sext i32 %55 to i64
  %arrayidx40 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom39
  %56 = load i8*, i8** %arrayidx40, align 8, !tbaa !1
  store i8 0, i8* %56, align 1, !tbaa !7
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.38
  %57 = load i32, i32* %plane, align 4, !tbaa !5
  %inc42 = add nsw i32 %57, 1
  store i32 %inc42, i32* %plane, align 4, !tbaa !5
  br label %for.cond.36

for.end.43:                                       ; preds = %for.cond.36
  br label %if.end.44

if.end.44:                                        ; preds = %for.end.43, %for.body.33
  %58 = load i32, i32* %last_colorant, align 4, !tbaa !5
  store i32 %58, i32* %colorant, align 4, !tbaa !5
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.223, %if.end.44
  %59 = load i32, i32* %colorant, align 4, !tbaa !5
  %cmp46 = icmp sge i32 %59, 0
  br i1 %cmp46, label %for.body.47, label %for.end.224

for.body.47:                                      ; preds = %for.cond.45
  %60 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %str48 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %60, i32 0, i32 0
  %61 = load i8*, i8** %str48, align 8, !tbaa !10
  %62 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul49 = mul nsw i32 %62, 4
  %idx.ext = sext i32 %mul49 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  %63 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext50 = sext i32 %63 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext50
  store i8* %add.ptr51, i8** %from, align 8, !tbaa !1
  %64 = load i8*, i8** %from, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !7
  %conv = zext i8 %65 to i32
  %66 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom52 = sext i32 %66 to i64
  %arrayidx53 = getelementptr inbounds [4 x i32], [4 x i32]* %divisor, i32 0, i64 %idxprom52
  %67 = load i32, i32* %arrayidx53, align 4, !tbaa !5
  %div54 = udiv i32 %conv, %67
  %conv55 = trunc i32 %div54 to i8
  %68 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom56 = sext i32 %68 to i64
  %arrayidx57 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 %idxprom56
  store i8 %conv55, i8* %arrayidx57, align 1, !tbaa !7
  %69 = load i8*, i8** %from, align 8, !tbaa !1
  %70 = load i8, i8* %69, align 1, !tbaa !7
  %conv58 = zext i8 %70 to i32
  %71 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom59 = sext i32 %71 to i64
  %arrayidx60 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 %idxprom59
  %72 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  %conv61 = zext i8 %72 to i32
  %mul62 = mul nsw i32 255, %conv61
  %73 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom63 = sext i32 %73 to i64
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %max_level, i32 0, i64 %idxprom63
  %74 = load i32, i32* %arrayidx64, align 4, !tbaa !5
  %div65 = udiv i32 %mul62, %74
  %sub66 = sub i32 %conv58, %div65
  store i32 %sub66, i32* %error, align 4, !tbaa !5
  %75 = load i32, i32* %error, align 4, !tbaa !5
  %cmp67 = icmp ne i32 %75, 0
  br i1 %cmp67, label %if.then.69, label %if.end.222

if.then.69:                                       ; preds = %for.body.47
  %76 = load i32, i32* %error, align 4, !tbaa !5
  store i32 %76, i32* %remaining_error, align 4, !tbaa !5
  %77 = load i32, i32* %error, align 4, !tbaa !5
  %mul70 = mul nsw i32 7, %77
  %div71 = sdiv i32 %mul70, 16
  store i32 %div71, i32* %correction, align 4, !tbaa !5
  %78 = load i32, i32* %correction, align 4, !tbaa !5
  %79 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub72 = sub nsw i32 %79, %78
  store i32 %sub72, i32* %remaining_error, align 4, !tbaa !5
  %80 = load i32, i32* %pixel, align 4, !tbaa !5
  %81 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %80, %81
  br i1 %cmp73, label %if.then.75, label %if.end.104

if.then.75:                                       ; preds = %if.then.69
  %82 = load i8*, i8** %from, align 8, !tbaa !1
  %add.ptr76 = getelementptr inbounds i8, i8* %82, i64 4
  store i8* %add.ptr76, i8** %to, align 8, !tbaa !1
  %83 = load i8*, i8** %to, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !7
  %conv77 = zext i8 %84 to i32
  %85 = load i32, i32* %correction, align 4, !tbaa !5
  %add78 = add nsw i32 %conv77, %85
  store i32 %add78, i32* %new_value, align 4, !tbaa !5
  %86 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp79 = icmp slt i32 %86, 0
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.then.75
  %87 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %87, align 1, !tbaa !7
  %88 = load i32, i32* %new_value, align 4, !tbaa !5
  %89 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add82 = add nsw i32 %89, %88
  store i32 %add82, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.92

if.else.83:                                       ; preds = %if.then.75
  %90 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp84 = icmp slt i32 255, %90
  br i1 %cmp84, label %if.then.86, label %if.else.89

if.then.86:                                       ; preds = %if.else.83
  %91 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %91, align 1, !tbaa !7
  %92 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub87 = sub nsw i32 %92, 255
  %93 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add88 = add nsw i32 %93, %sub87
  store i32 %add88, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.91

if.else.89:                                       ; preds = %if.else.83
  %94 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv90 = trunc i32 %94 to i8
  %95 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv90, i8* %95, align 1, !tbaa !7
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.89, %if.then.86
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.81
  %96 = load i32, i32* %pixel, align 4, !tbaa !5
  %97 = load i32, i32* %pixels, align 4, !tbaa !5
  %sub93 = sub nsw i32 %97, 1
  %cmp94 = icmp eq i32 %96, %sub93
  br i1 %cmp94, label %land.lhs.true, label %if.end.103

land.lhs.true:                                    ; preds = %if.end.92
  %98 = load i8*, i8** %to, align 8, !tbaa !1
  %99 = load i8, i8* %98, align 1, !tbaa !7
  %conv96 = zext i8 %99 to i32
  %cmp97 = icmp sgt i32 %conv96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.103

if.then.99:                                       ; preds = %land.lhs.true
  %100 = load i32, i32* %pixels, align 4, !tbaa !5
  %inc100 = add nsw i32 %100, 1
  store i32 %inc100, i32* %pixels, align 4, !tbaa !5
  %101 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length101 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %101, i32 0, i32 1
  %102 = load i32, i32* %length101, align 4, !tbaa !8
  %add102 = add nsw i32 %102, 4
  store i32 %add102, i32* %length101, align 4, !tbaa !8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.99, %land.lhs.true, %if.end.92
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.69
  %103 = load i32, i32* %error, align 4, !tbaa !5
  %mul105 = mul nsw i32 3, %103
  %div106 = sdiv i32 %mul105, 16
  store i32 %div106, i32* %correction, align 4, !tbaa !5
  %104 = load i32, i32* %correction, align 4, !tbaa !5
  %105 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub107 = sub nsw i32 %105, %104
  store i32 %sub107, i32* %remaining_error, align 4, !tbaa !5
  %106 = load i32, i32* %pixel, align 4, !tbaa !5
  %cmp108 = icmp sgt i32 %106, 0
  br i1 %cmp108, label %if.then.110, label %if.end.146

if.then.110:                                      ; preds = %if.end.104
  %107 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str111 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %107, i32 0, i32 0
  %108 = load i8*, i8** %str111, align 8, !tbaa !10
  %109 = load i32, i32* %pixel, align 4, !tbaa !5
  %sub112 = sub nsw i32 %109, 1
  %mul113 = mul nsw i32 %sub112, 4
  %idx.ext114 = sext i32 %mul113 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %108, i64 %idx.ext114
  %110 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext116 = sext i32 %110 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %add.ptr115, i64 %idx.ext116
  store i8* %add.ptr117, i8** %to, align 8, !tbaa !1
  %111 = load i8*, i8** %to, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !7
  %conv118 = zext i8 %112 to i32
  %113 = load i32, i32* %correction, align 4, !tbaa !5
  %add119 = add nsw i32 %conv118, %113
  store i32 %add119, i32* %new_value, align 4, !tbaa !5
  %114 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp120 = icmp slt i32 %114, 0
  br i1 %cmp120, label %if.then.122, label %if.else.124

if.then.122:                                      ; preds = %if.then.110
  %115 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %115, align 1, !tbaa !7
  %116 = load i32, i32* %new_value, align 4, !tbaa !5
  %117 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add123 = add nsw i32 %117, %116
  store i32 %add123, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.133

if.else.124:                                      ; preds = %if.then.110
  %118 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp125 = icmp slt i32 255, %118
  br i1 %cmp125, label %if.then.127, label %if.else.130

if.then.127:                                      ; preds = %if.else.124
  %119 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %119, align 1, !tbaa !7
  %120 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub128 = sub nsw i32 %120, 255
  %121 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add129 = add nsw i32 %121, %sub128
  store i32 %add129, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.132

if.else.130:                                      ; preds = %if.else.124
  %122 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv131 = trunc i32 %122 to i8
  %123 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv131, i8* %123, align 1, !tbaa !7
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.130, %if.then.127
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.122
  %124 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length134 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %124, i32 0, i32 1
  %125 = load i32, i32* %length134, align 4, !tbaa !8
  %126 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul135 = mul nsw i32 %126, 4
  %cmp136 = icmp slt i32 %125, %mul135
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.145

land.lhs.true.138:                                ; preds = %if.end.133
  %127 = load i8*, i8** %to, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !7
  %conv139 = zext i8 %128 to i32
  %cmp140 = icmp sgt i32 %conv139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %land.lhs.true.138
  %129 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul143 = mul nsw i32 %129, 4
  %130 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length144 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %130, i32 0, i32 1
  store i32 %mul143, i32* %length144, align 4, !tbaa !8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %land.lhs.true.138, %if.end.133
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.104
  %131 = load i32, i32* %error, align 4, !tbaa !5
  %mul147 = mul nsw i32 5, %131
  %div148 = sdiv i32 %mul147, 16
  store i32 %div148, i32* %correction, align 4, !tbaa !5
  %132 = load i32, i32* %correction, align 4, !tbaa !5
  %133 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %sub149 = sub nsw i32 %133, %132
  store i32 %sub149, i32* %remaining_error, align 4, !tbaa !5
  %134 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str150 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %134, i32 0, i32 0
  %135 = load i8*, i8** %str150, align 8, !tbaa !10
  %136 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul151 = mul nsw i32 %136, 4
  %idx.ext152 = sext i32 %mul151 to i64
  %add.ptr153 = getelementptr inbounds i8, i8* %135, i64 %idx.ext152
  %137 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext154 = sext i32 %137 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %add.ptr153, i64 %idx.ext154
  store i8* %add.ptr155, i8** %to, align 8, !tbaa !1
  %138 = load i8*, i8** %to, align 8, !tbaa !1
  %139 = load i8, i8* %138, align 1, !tbaa !7
  %conv156 = zext i8 %139 to i32
  %140 = load i32, i32* %correction, align 4, !tbaa !5
  %add157 = add nsw i32 %conv156, %140
  store i32 %add157, i32* %new_value, align 4, !tbaa !5
  %141 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %141, 0
  br i1 %cmp158, label %if.then.160, label %if.else.162

if.then.160:                                      ; preds = %if.end.146
  %142 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %142, align 1, !tbaa !7
  %143 = load i32, i32* %new_value, align 4, !tbaa !5
  %144 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add161 = add nsw i32 %144, %143
  store i32 %add161, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.171

if.else.162:                                      ; preds = %if.end.146
  %145 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp163 = icmp slt i32 255, %145
  br i1 %cmp163, label %if.then.165, label %if.else.168

if.then.165:                                      ; preds = %if.else.162
  %146 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 -1, i8* %146, align 1, !tbaa !7
  %147 = load i32, i32* %new_value, align 4, !tbaa !5
  %sub166 = sub nsw i32 %147, 255
  %148 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add167 = add nsw i32 %148, %sub166
  store i32 %add167, i32* %remaining_error, align 4, !tbaa !5
  br label %if.end.170

if.else.168:                                      ; preds = %if.else.162
  %149 = load i32, i32* %new_value, align 4, !tbaa !5
  %conv169 = trunc i32 %149 to i8
  %150 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv169, i8* %150, align 1, !tbaa !7
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.168, %if.then.165
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.160
  %151 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length172 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %151, i32 0, i32 1
  %152 = load i32, i32* %length172, align 4, !tbaa !8
  %153 = load i32, i32* %pixel, align 4, !tbaa !5
  %mul173 = mul nsw i32 %153, 4
  %cmp174 = icmp sle i32 %152, %mul173
  br i1 %cmp174, label %land.lhs.true.176, label %if.end.184

land.lhs.true.176:                                ; preds = %if.end.171
  %154 = load i8*, i8** %to, align 8, !tbaa !1
  %155 = load i8, i8* %154, align 1, !tbaa !7
  %conv177 = zext i8 %155 to i32
  %cmp178 = icmp sgt i32 %conv177, 0
  br i1 %cmp178, label %if.then.180, label %if.end.184

if.then.180:                                      ; preds = %land.lhs.true.176
  %156 = load i32, i32* %pixel, align 4, !tbaa !5
  %add181 = add nsw i32 %156, 1
  %mul182 = mul nsw i32 %add181, 4
  %157 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length183 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %157, i32 0, i32 1
  store i32 %mul182, i32* %length183, align 4, !tbaa !8
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.180, %land.lhs.true.176, %if.end.171
  %158 = load i32, i32* %pixel, align 4, !tbaa !5
  %159 = load i32, i32* %max_pixel, align 4, !tbaa !5
  %cmp185 = icmp slt i32 %158, %159
  br i1 %cmp185, label %if.then.187, label %if.end.221

if.then.187:                                      ; preds = %if.end.184
  %160 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %str188 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %160, i32 0, i32 0
  %161 = load i8*, i8** %str188, align 8, !tbaa !10
  %162 = load i32, i32* %pixel, align 4, !tbaa !5
  %add189 = add nsw i32 %162, 1
  %mul190 = mul nsw i32 %add189, 4
  %idx.ext191 = sext i32 %mul190 to i64
  %add.ptr192 = getelementptr inbounds i8, i8* %161, i64 %idx.ext191
  %163 = load i32, i32* %colorant, align 4, !tbaa !5
  %idx.ext193 = sext i32 %163 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %add.ptr192, i64 %idx.ext193
  store i8* %add.ptr194, i8** %to, align 8, !tbaa !1
  %164 = load i8*, i8** %to, align 8, !tbaa !1
  %165 = load i8, i8* %164, align 1, !tbaa !7
  %conv195 = zext i8 %165 to i32
  %166 = load i32, i32* %remaining_error, align 4, !tbaa !5
  %add196 = add nsw i32 %conv195, %166
  store i32 %add196, i32* %new_value, align 4, !tbaa !5
  %167 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp197 = icmp slt i32 %167, 0
  br i1 %cmp197, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.187
  br label %cond.end.204

cond.false:                                       ; preds = %if.then.187
  %168 = load i32, i32* %new_value, align 4, !tbaa !5
  %cmp199 = icmp sgt i32 %168, 255
  br i1 %cmp199, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %cond.false
  br label %cond.end

cond.false.202:                                   ; preds = %cond.false
  %169 = load i32, i32* %new_value, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.202, %cond.true.201
  %cond203 = phi i32 [ 255, %cond.true.201 ], [ %169, %cond.false.202 ]
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.end, %cond.true
  %cond205 = phi i32 [ 0, %cond.true ], [ %cond203, %cond.end ]
  %conv206 = trunc i32 %cond205 to i8
  %170 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %conv206, i8* %170, align 1, !tbaa !7
  %171 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length207 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %171, i32 0, i32 1
  %172 = load i32, i32* %length207, align 4, !tbaa !8
  %173 = load i32, i32* %pixel, align 4, !tbaa !5
  %add208 = add nsw i32 %173, 2
  %mul209 = mul nsw i32 %add208, 4
  %cmp210 = icmp slt i32 %172, %mul209
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.220

land.lhs.true.212:                                ; preds = %cond.end.204
  %174 = load i8*, i8** %to, align 8, !tbaa !1
  %175 = load i8, i8* %174, align 1, !tbaa !7
  %conv213 = zext i8 %175 to i32
  %cmp214 = icmp sgt i32 %conv213, 0
  br i1 %cmp214, label %if.then.216, label %if.end.220

if.then.216:                                      ; preds = %land.lhs.true.212
  %176 = load i32, i32* %pixel, align 4, !tbaa !5
  %add217 = add nsw i32 %176, 2
  %mul218 = mul nsw i32 %add217, 4
  %177 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %next_line.addr, align 8, !tbaa !1
  %length219 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %177, i32 0, i32 1
  store i32 %mul218, i32* %length219, align 4, !tbaa !8
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.216, %land.lhs.true.212, %cond.end.204
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.184
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %for.body.47
  br label %for.inc.223

for.inc.223:                                      ; preds = %if.end.222
  %178 = load i32, i32* %colorant, align 4, !tbaa !5
  %dec = add nsw i32 %178, -1
  store i32 %dec, i32* %colorant, align 4, !tbaa !5
  br label %for.cond.45

for.end.224:                                      ; preds = %for.cond.45
  %179 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp225 = icmp eq i32 %179, 3
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.263

land.lhs.true.227:                                ; preds = %for.end.224
  %arrayidx228 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 0
  %180 = load i8, i8* %arrayidx228, align 1, !tbaa !7
  %conv229 = zext i8 %180 to i32
  %arrayidx230 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 1
  %181 = load i8, i8* %arrayidx230, align 1, !tbaa !7
  %conv231 = zext i8 %181 to i32
  %cmp232 = icmp eq i32 %conv229, %conv231
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.263

land.lhs.true.234:                                ; preds = %land.lhs.true.227
  %arrayidx235 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 1
  %182 = load i8, i8* %arrayidx235, align 1, !tbaa !7
  %conv236 = zext i8 %182 to i32
  %arrayidx237 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 2
  %183 = load i8, i8* %arrayidx237, align 1, !tbaa !7
  %conv238 = zext i8 %183 to i32
  %cmp239 = icmp eq i32 %conv236, %conv238
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.263

land.lhs.true.241:                                ; preds = %land.lhs.true.234
  %arrayidx242 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 0
  %184 = load i8, i8* %arrayidx242, align 1, !tbaa !7
  %conv243 = zext i8 %184 to i32
  %cmp244 = icmp sgt i32 %conv243, 0
  br i1 %cmp244, label %if.then.246, label %if.end.263

if.then.246:                                      ; preds = %land.lhs.true.241
  %185 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  %arrayidx247 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 0
  %186 = load i8, i8* %arrayidx247, align 1, !tbaa !7
  %conv248 = zext i8 %186 to i32
  %187 = load i32, i32* %black_levels.addr, align 4, !tbaa !5
  %sub249 = sub i32 %187, 1
  %mul250 = mul i32 %conv248, %sub249
  store i32 %mul250, i32* %value, align 4, !tbaa !5
  %188 = load i32, i32* %value, align 4, !tbaa !5
  %189 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !5
  %sub251 = sub i32 %189, 1
  %rem = urem i32 %188, %sub251
  %cmp252 = icmp eq i32 %rem, 0
  br i1 %cmp252, label %if.then.254, label %if.end.262

if.then.254:                                      ; preds = %if.then.246
  %190 = load i32, i32* %value, align 4, !tbaa !5
  %191 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !5
  %sub255 = sub i32 %191, 1
  %div256 = udiv i32 %190, %sub255
  %conv257 = trunc i32 %div256 to i8
  %arrayidx258 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 3
  store i8 %conv257, i8* %arrayidx258, align 1, !tbaa !7
  %arrayidx259 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 2
  store i8 0, i8* %arrayidx259, align 1, !tbaa !7
  %arrayidx260 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 1
  store i8 0, i8* %arrayidx260, align 1, !tbaa !7
  %arrayidx261 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 0
  store i8 0, i8* %arrayidx261, align 1, !tbaa !7
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.254, %if.then.246
  %192 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %land.lhs.true.241, %land.lhs.true.234, %land.lhs.true.227, %for.end.224
  store i32 0, i32* %plane, align 4, !tbaa !5
  %193 = load i32, i32* %last_colorant, align 4, !tbaa !5
  store i32 %193, i32* %colorant, align 4, !tbaa !5
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.286, %if.end.263
  %194 = load i32, i32* %colorant, align 4, !tbaa !5
  %cmp265 = icmp sge i32 %194, 0
  br i1 %cmp265, label %for.body.267, label %for.end.288

for.body.267:                                     ; preds = %for.cond.264
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.267
  %195 = load i32, i32* %plane, align 4, !tbaa !5
  %196 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom268 = sext i32 %196 to i64
  %arrayidx269 = getelementptr inbounds [4 x i32], [4 x i32]* %next_plane, i32 0, i64 %idxprom268
  %197 = load i32, i32* %arrayidx269, align 4, !tbaa !5
  %cmp270 = icmp slt i32 %195, %197
  br i1 %cmp270, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %198 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom272 = sext i32 %198 to i64
  %arrayidx273 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom272
  %199 = load i8*, i8** %arrayidx273, align 8, !tbaa !1
  %200 = load i8, i8* %199, align 1, !tbaa !7
  %conv274 = zext i8 %200 to i32
  %shl = shl i32 %conv274, 1
  %201 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom275 = sext i32 %201 to i64
  %arrayidx276 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 %idxprom275
  %202 = load i8, i8* %arrayidx276, align 1, !tbaa !7
  %conv277 = zext i8 %202 to i32
  %and = and i32 %conv277, 1
  %or = or i32 %shl, %and
  %conv278 = trunc i32 %or to i8
  %203 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom279 = sext i32 %203 to i64
  %arrayidx280 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom279
  %204 = load i8*, i8** %arrayidx280, align 8, !tbaa !1
  store i8 %conv278, i8* %204, align 1, !tbaa !7
  %205 = load i32, i32* %colorant, align 4, !tbaa !5
  %idxprom281 = sext i32 %205 to i64
  %arrayidx282 = getelementptr inbounds [4 x i8], [4 x i8]* %approx, i32 0, i64 %idxprom281
  %206 = load i8, i8* %arrayidx282, align 1, !tbaa !7
  %conv283 = zext i8 %206 to i32
  %shr = ashr i32 %conv283, 1
  %conv284 = trunc i32 %shr to i8
  store i8 %conv284, i8* %arrayidx282, align 1, !tbaa !7
  %207 = load i32, i32* %plane, align 4, !tbaa !5
  %inc285 = add nsw i32 %207, 1
  store i32 %inc285, i32* %plane, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.286

for.inc.286:                                      ; preds = %while.end
  %208 = load i32, i32* %colorant, align 4, !tbaa !5
  %dec287 = add nsw i32 %208, -1
  store i32 %dec287, i32* %colorant, align 4, !tbaa !5
  br label %for.cond.264

for.end.288:                                      ; preds = %for.cond.264
  %209 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %cmp289 = icmp eq i32 %209, 7
  br i1 %cmp289, label %if.then.291, label %if.end.301

if.then.291:                                      ; preds = %for.end.288
  %210 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %210) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.298, %if.then.291
  %211 = load i32, i32* %j, align 4, !tbaa !5
  %212 = load i32, i32* %planes, align 4, !tbaa !5
  %cmp293 = icmp slt i32 %211, %212
  br i1 %cmp293, label %for.body.295, label %for.end.300

for.body.295:                                     ; preds = %for.cond.292
  %213 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom296 = sext i32 %213 to i64
  %arrayidx297 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom296
  %214 = load i8*, i8** %arrayidx297, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %incdec.ptr, i8** %arrayidx297, align 8, !tbaa !1
  br label %for.inc.298

for.inc.298:                                      ; preds = %for.body.295
  %215 = load i32, i32* %j, align 4, !tbaa !5
  %inc299 = add nsw i32 %215, 1
  store i32 %inc299, i32* %j, align 4, !tbaa !5
  br label %for.cond.292

for.end.300:                                      ; preds = %for.cond.292
  %216 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  br label %if.end.301

if.end.301:                                       ; preds = %for.end.300, %for.end.288
  br label %for.inc.302

for.inc.302:                                      ; preds = %if.end.301
  %217 = load i32, i32* %pixel, align 4, !tbaa !5
  %inc303 = add nsw i32 %217, 1
  store i32 %inc303, i32* %pixel, align 4, !tbaa !5
  %218 = load i32, i32* %pixel_mod_8, align 4, !tbaa !5
  %inc304 = add nsw i32 %218, 1
  store i32 %inc304, i32* %pixel_mod_8, align 4, !tbaa !5
  br label %for.cond.31

for.end.305:                                      ; preds = %for.cond.31
  %219 = load i32, i32* %colour_model.addr, align 4, !tbaa !7
  %cmp306 = icmp eq i32 %219, 1
  %conv307 = zext i1 %cmp306 to i32
  %220 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !5
  %221 = load i32, i32* %planes, align 4, !tbaa !5
  %222 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i32 0
  %223 = load i32, i32* %pixels, align 4, !tbaa !5
  call void @eprn_finalize(i32 %conv307, i32 %220, i32 %221, %struct.eprn_OctetString* %222, i8** %arraydecay, i32 %223) #3
  %224 = bitcast [4 x i32]* %max_level to i8*
  call void @llvm.lifetime.end(i64 16, i8* %224) #1
  %225 = bitcast [4 x i32]* %divisor to i8*
  call void @llvm.lifetime.end(i64 16, i8* %225) #1
  %226 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast [32 x i8*]* %ptr to i8*
  call void @llvm.lifetime.end(i64 256, i8* %227) #1
  %228 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = bitcast [4 x i8]* %approx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast i32* %remaining_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32* %pixel_mod_8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast [4 x i32]* %next_plane to i8*
  call void @llvm.lifetime.end(i64 16, i8* %235) #1
  %236 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %correction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %non_black_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i32* %max_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %last_colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %black_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @eprn_finalize(i32, i32, i32, %struct.eprn_OctetString*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @eprn_bits_for_levels(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 8}
!9 = !{!"", !2, i64 0, !6, i64 8}
!10 = !{!9, !2, i64 0}
