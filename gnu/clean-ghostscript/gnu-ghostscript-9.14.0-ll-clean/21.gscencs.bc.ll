; ModuleID = './gscencs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_const_string_s = type { i8*, i32 }

@gs_c_min_std_encoding_glyph = constant i64 2147418112, align 8
@gs_c_known_encoding_count = external constant i32, align 4
@gs_c_known_encoding_lengths = external constant [0 x i16], align 2
@gs_c_known_encodings = external constant [0 x i16*], align 8
@gs_c_known_encodings_reverse = external constant [0 x i16*], align 8
@gs_c_known_encoding_reverse_lengths = external constant [0 x i16], align 2
@gs_c_known_encoding_offsets = external constant [0 x i16], align 2
@gs_c_known_encoding_chars = external constant [0 x i8], align 1
@gs_c_known_encoding_total_chars = external constant i32, align 4
@gs_c_known_encoding_max_length = external constant i32, align 4

; Function Attrs: nounwind uwtable
define i64 @gs_c_known_encode(i64 %ch, i32 %ei) #0 {
entry:
  %retval = alloca i64, align 8
  %ch.addr = alloca i64, align 8
  %ei.addr = alloca i32, align 4
  store i64 %ch, i64* %ch.addr, align 8, !tbaa !1
  store i32 %ei, i32* %ei.addr, align 4, !tbaa !5
  %0 = load i32, i32* %ei.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %ei.addr, align 4, !tbaa !5
  %2 = load i32, i32* @gs_c_known_encoding_count, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load i64, i64* %ch.addr, align 8, !tbaa !1
  %4 = load i32, i32* %ei.addr, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i16], [0 x i16]* @gs_c_known_encoding_lengths, i32 0, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !7
  %conv = zext i16 %5 to i64
  %cmp3 = icmp uge i64 %3, %conv
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i64 2147483647, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %6 = load i64, i64* %ch.addr, align 8, !tbaa !1
  %7 = load i32, i32* %ei.addr, align 4, !tbaa !5
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [0 x i16*], [0 x i16*]* @gs_c_known_encodings, i32 0, i64 %idxprom5
  %8 = load i16*, i16** %arrayidx6, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds i16, i16* %8, i64 %6
  %9 = load i16, i16* %arrayidx7, align 2, !tbaa !7
  %conv8 = zext i16 %9 to i64
  %add = add i64 2147418112, %conv8
  store i64 %add, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define i64 @gs_c_decode(i64 %glyph, i32 %ei) #0 {
entry:
  %retval = alloca i64, align 8
  %glyph.addr = alloca i64, align 8
  %ei.addr = alloca i32, align 4
  %encoding = alloca i16*, align 8
  %reverse = alloca i16*, align 8
  %first_index = alloca i32, align 4
  %last_index = alloca i32, align 4
  %test_index = alloca i32, align 4
  %test_glyph = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !1
  store i32 %ei, i32* %ei.addr, align 4, !tbaa !5
  %0 = bitcast i16** %encoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %ei.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i16*], [0 x i16*]* @gs_c_known_encodings, i32 0, i64 %idxprom
  %2 = load i16*, i16** %arrayidx, align 8, !tbaa !9
  store i16* %2, i16** %encoding, align 8, !tbaa !9
  %3 = bitcast i16** %reverse to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %ei.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [0 x i16*], [0 x i16*]* @gs_c_known_encodings_reverse, i32 0, i64 %idxprom1
  %5 = load i16*, i16** %arrayidx2, align 8, !tbaa !9
  store i16* %5, i16** %reverse, align 8, !tbaa !9
  %6 = bitcast i32* %first_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %first_index, align 4, !tbaa !5
  %7 = bitcast i32* %last_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %ei.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [0 x i16], [0 x i16]* @gs_c_known_encoding_reverse_lengths, i32 0, i64 %idxprom3
  %9 = load i16, i16* %arrayidx4, align 2, !tbaa !7
  %conv = zext i16 %9 to i32
  store i32 %conv, i32* %last_index, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %10 = load i32, i32* %first_index, align 4, !tbaa !5
  %11 = load i32, i32* %last_index, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = bitcast i32* %test_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %first_index, align 4, !tbaa !5
  %14 = load i32, i32* %last_index, align 4, !tbaa !5
  %add = add nsw i32 %13, %14
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %test_index, align 4, !tbaa !5
  %15 = bitcast i64* %test_glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i32, i32* %test_index, align 4, !tbaa !5
  %idxprom6 = sext i32 %16 to i64
  %17 = load i16*, i16** %reverse, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds i16, i16* %17, i64 %idxprom6
  %18 = load i16, i16* %arrayidx7, align 2, !tbaa !7
  %idxprom8 = zext i16 %18 to i64
  %19 = load i16*, i16** %encoding, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds i16, i16* %19, i64 %idxprom8
  %20 = load i16, i16* %arrayidx9, align 2, !tbaa !7
  %conv10 = zext i16 %20 to i64
  %add11 = add i64 2147418112, %conv10
  store i64 %add11, i64* %test_glyph, align 8, !tbaa !1
  %21 = load i64, i64* %glyph.addr, align 8, !tbaa !1
  %22 = load i64, i64* %test_glyph, align 8, !tbaa !1
  %cmp12 = icmp ult i64 %21, %22
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %23 = load i32, i32* %test_index, align 4, !tbaa !5
  store i32 %23, i32* %last_index, align 4, !tbaa !5
  br label %if.end.22

if.else:                                          ; preds = %while.body
  %24 = load i64, i64* %glyph.addr, align 8, !tbaa !1
  %25 = load i64, i64* %test_glyph, align 8, !tbaa !1
  %cmp14 = icmp ugt i64 %24, %25
  br i1 %cmp14, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else
  %26 = load i32, i32* %test_index, align 4, !tbaa !5
  %add17 = add nsw i32 %26, 1
  store i32 %add17, i32* %first_index, align 4, !tbaa !5
  br label %if.end

if.else.18:                                       ; preds = %if.else
  %27 = load i32, i32* %test_index, align 4, !tbaa !5
  %idxprom19 = sext i32 %27 to i64
  %28 = load i16*, i16** %reverse, align 8, !tbaa !9
  %arrayidx20 = getelementptr inbounds i16, i16* %28, i64 %idxprom19
  %29 = load i16, i16* %arrayidx20, align 2, !tbaa !7
  %conv21 = zext i16 %29 to i64
  store i64 %conv21, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.else.18
  %30 = bitcast i64* %test_glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %test_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %while.end, %cleanup
  %32 = bitcast i32* %last_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %first_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i16** %reverse to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i16** %encoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i64, i64* %retval
  ret i64 %36
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_c_glyph_name(i64 %glyph, %struct.gs_const_string_s* %pstr) #0 {
entry:
  %glyph.addr = alloca i64, align 8
  %pstr.addr = alloca %struct.gs_const_string_s*, align 8
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %off = alloca i32, align 4
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pstr, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !9
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64, i64* %glyph.addr, align 8, !tbaa !1
  %sub = sub i64 %1, 2147418112
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %n, align 4, !tbaa !5
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %n, align 4, !tbaa !5
  %and = and i32 %3, 31
  store i32 %and, i32* %len, align 4, !tbaa !5
  %4 = bitcast i32* %off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %n, align 4, !tbaa !5
  %shr = lshr i32 %5, 5
  store i32 %shr, i32* %off, align 4, !tbaa !5
  %6 = load i32, i32* %len, align 4, !tbaa !5
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [0 x i16], [0 x i16]* @gs_c_known_encoding_offsets, i32 0, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !7
  %conv1 = zext i16 %7 to i32
  %8 = load i32, i32* %off, align 4, !tbaa !5
  %add = add i32 %conv1, %8
  %idxprom2 = zext i32 %add to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gs_c_known_encoding_chars, i32 0, i64 %idxprom2
  %9 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %9, i32 0, i32 0
  store i8* %arrayidx3, i8** %data, align 8, !tbaa !11
  %10 = load i32, i32* %len, align 4, !tbaa !5
  %11 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pstr.addr, align 8, !tbaa !9
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %11, i32 0, i32 1
  store i32 %10, i32* %size, align 4, !tbaa !13
  %12 = bitcast i32* %off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_is_c_glyph_name(i8* %str, i32 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8, !tbaa !9
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %str.addr, align 8, !tbaa !9
  %cmp = icmp uge i8* %0, getelementptr inbounds ([0 x i8], [0 x i8]* @gs_c_known_encoding_chars, i32 0, i32 0)
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !9
  %2 = load i32, i32* @gs_c_known_encoding_total_chars, align 4, !tbaa !5
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gs_c_known_encoding_chars, i32 0, i32 0), i64 %idx.ext
  %cmp1 = icmp ult i8* %1, %add.ptr
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i64 @gs_c_name_glyph(i8* %str, i32 %len) #0 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %base = alloca i32, align 4
  %bot = alloca i8*, align 8
  %count = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %probe = alloca i8*, align 8
  %m = alloca i32, align 4
  %cmp10 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %str, i8** %str.addr, align 8, !tbaa !9
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4, !tbaa !5
  %2 = load i32, i32* @gs_c_known_encoding_max_length, align 4, !tbaa !5
  %cmp1 = icmp ugt i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 2147483647, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = bitcast i32* %base to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %len.addr, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i16], [0 x i16]* @gs_c_known_encoding_offsets, i32 0, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !7
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %base, align 4, !tbaa !5
  %6 = bitcast i8** %bot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %base, align 4, !tbaa !5
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [0 x i8], [0 x i8]* @gs_c_known_encoding_chars, i32 0, i64 %idxprom2
  store i8* %arrayidx3, i8** %bot, align 8, !tbaa !9
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %len.addr, align 4, !tbaa !5
  %add = add i32 %9, 1
  %idxprom4 = zext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [0 x i16], [0 x i16]* @gs_c_known_encoding_offsets, i32 0, i64 %idxprom4
  %10 = load i16, i16* %arrayidx5, align 2, !tbaa !7
  %conv6 = zext i16 %10 to i32
  %11 = load i32, i32* %base, align 4, !tbaa !5
  %sub = sub i32 %conv6, %11
  %12 = load i32, i32* %len.addr, align 4, !tbaa !5
  %div = udiv i32 %sub, %12
  store i32 %div, i32* %count, align 4, !tbaa !5
  %13 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %a, align 4, !tbaa !5
  %14 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %count, align 4, !tbaa !5
  store i32 %15, i32* %b, align 4, !tbaa !5
  %16 = bitcast i8** %probe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %17 = load i32, i32* %a, align 4, !tbaa !5
  %18 = load i32, i32* %b, align 4, !tbaa !5
  %cmp7 = icmp ult i32 %17, %18
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %a, align 4, !tbaa !5
  %21 = load i32, i32* %b, align 4, !tbaa !5
  %add9 = add i32 %20, %21
  %shr = lshr i32 %add9, 1
  store i32 %shr, i32* %m, align 4, !tbaa !5
  %22 = bitcast i32* %cmp10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i8*, i8** %bot, align 8, !tbaa !9
  %24 = load i32, i32* %m, align 4, !tbaa !5
  %25 = load i32, i32* %len.addr, align 4, !tbaa !5
  %mul = mul i32 %24, %25
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %probe, align 8, !tbaa !9
  %26 = load i8*, i8** %str.addr, align 8, !tbaa !9
  %27 = load i8*, i8** %probe, align 8, !tbaa !9
  %28 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv11 = zext i32 %28 to i64
  %call = call i32 @memcmp(i8* %26, i8* %27, i64 %conv11) #3
  store i32 %call, i32* %cmp10, align 4, !tbaa !5
  %29 = load i32, i32* %cmp10, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %29, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %while.body
  %30 = load i8*, i8** %probe, align 8, !tbaa !9
  %31 = load i8*, i8** %bot, align 8, !tbaa !9
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 5
  %32 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv15 = zext i32 %32 to i64
  %add16 = add nsw i64 %shl, %conv15
  %add17 = add i64 2147418112, %add16
  store i64 %add17, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %while.body
  %33 = load i32, i32* %cmp10, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %33, 0
  br i1 %cmp18, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else
  %34 = load i32, i32* %m, align 4, !tbaa !5
  %add21 = add i32 %34, 1
  store i32 %add21, i32* %a, align 4, !tbaa !5
  br label %if.end.23

if.else.22:                                       ; preds = %if.else
  %35 = load i32, i32* %m, align 4, !tbaa !5
  store i32 %35, i32* %b, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.14
  %36 = bitcast i32* %cmp10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %while.end, %cleanup
  %38 = bitcast i8** %probe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i8** %bot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %base to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %cleanup.dest.32 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.32, label %unreachable [
    i32 0, label %cleanup.cont.33
    i32 1, label %return
  ]

cleanup.cont.33:                                  ; preds = %cleanup.26
  store i64 2147483647, i64* %retval
  br label %return

return:                                           ; preds = %cleanup.cont.33, %cleanup.26, %if.then
  %44 = load i64, i64* %retval
  ret i64 %44

unreachable:                                      ; preds = %cleanup.26
  unreachable
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !3, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"gs_const_string_s", !10, i64 0, !6, i64 8}
!13 = !{!12, !6, i64 8}
