; ModuleID = './gsflip.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@image_flip3_procs = internal constant [13 x i32 (i8*, i8**, i32, i32)*] [i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip3x1, i32 (i8*, i8**, i32, i32)* @flip3x2, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip3x4, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip3x8, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip3x12], align 16
@image_flip4_procs = internal constant [13 x i32 (i8*, i8**, i32, i32)*] [i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip4x1, i32 (i8*, i8**, i32, i32)* @flip4x2, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip4x4, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip4x8, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip_fail, i32 (i8*, i8**, i32, i32)* @flip4x12], align 16
@image_flipN_procs = internal constant [13 x i32 (i8*, i8**, i32, i32, i32, i32)*] [i32 (i8*, i8**, i32, i32, i32, i32)* @flipN_fail, i32 (i8*, i8**, i32, i32, i32, i32)* @flipNx1to8, i32 (i8*, i8**, i32, i32, i32, i32)* @flipNx1to8, i32 (i8*, i8**, i32, i32, i32, i32)* @flipN_fail, i32 (i8*, i8**, i32, i32, i32, i32)* @flipNx1to8, i32 (i8*, i8**, i32, i32, i32, i32)* @flipN_fail, i32 (i8*, i8**, i32, i32, i32, i32)* @flipN_fail, i32 (i8*, i8**, i32, i32, i32, i32)* @flipN_fail, i32 (i8*, i8**, i32, i32, i32, i32)* @flipNx1to8, i32 (i8*, i8**, i32, i32, i32, i32)* @flipN_fail, i32 (i8*, i8**, i32, i32, i32, i32)* @flipN_fail, i32 (i8*, i8**, i32, i32, i32, i32)* @flipN_fail, i32 (i8*, i8**, i32, i32, i32, i32)* @flipNx12], align 16
@flip3x1.tab3x1 = internal constant [256 x i32] [i32 0, i32 4, i32 32, i32 36, i32 256, i32 260, i32 288, i32 292, i32 2048, i32 2052, i32 2080, i32 2084, i32 2304, i32 2308, i32 2336, i32 2340, i32 16384, i32 16388, i32 16416, i32 16420, i32 16640, i32 16644, i32 16672, i32 16676, i32 18432, i32 18436, i32 18464, i32 18468, i32 18688, i32 18692, i32 18720, i32 18724, i32 131072, i32 131076, i32 131104, i32 131108, i32 131328, i32 131332, i32 131360, i32 131364, i32 133120, i32 133124, i32 133152, i32 133156, i32 133376, i32 133380, i32 133408, i32 133412, i32 147456, i32 147460, i32 147488, i32 147492, i32 147712, i32 147716, i32 147744, i32 147748, i32 149504, i32 149508, i32 149536, i32 149540, i32 149760, i32 149764, i32 149792, i32 149796, i32 1048576, i32 1048580, i32 1048608, i32 1048612, i32 1048832, i32 1048836, i32 1048864, i32 1048868, i32 1050624, i32 1050628, i32 1050656, i32 1050660, i32 1050880, i32 1050884, i32 1050912, i32 1050916, i32 1064960, i32 1064964, i32 1064992, i32 1064996, i32 1065216, i32 1065220, i32 1065248, i32 1065252, i32 1067008, i32 1067012, i32 1067040, i32 1067044, i32 1067264, i32 1067268, i32 1067296, i32 1067300, i32 1179648, i32 1179652, i32 1179680, i32 1179684, i32 1179904, i32 1179908, i32 1179936, i32 1179940, i32 1181696, i32 1181700, i32 1181728, i32 1181732, i32 1181952, i32 1181956, i32 1181984, i32 1181988, i32 1196032, i32 1196036, i32 1196064, i32 1196068, i32 1196288, i32 1196292, i32 1196320, i32 1196324, i32 1198080, i32 1198084, i32 1198112, i32 1198116, i32 1198336, i32 1198340, i32 1198368, i32 1198372, i32 8388608, i32 8388612, i32 8388640, i32 8388644, i32 8388864, i32 8388868, i32 8388896, i32 8388900, i32 8390656, i32 8390660, i32 8390688, i32 8390692, i32 8390912, i32 8390916, i32 8390944, i32 8390948, i32 8404992, i32 8404996, i32 8405024, i32 8405028, i32 8405248, i32 8405252, i32 8405280, i32 8405284, i32 8407040, i32 8407044, i32 8407072, i32 8407076, i32 8407296, i32 8407300, i32 8407328, i32 8407332, i32 8519680, i32 8519684, i32 8519712, i32 8519716, i32 8519936, i32 8519940, i32 8519968, i32 8519972, i32 8521728, i32 8521732, i32 8521760, i32 8521764, i32 8521984, i32 8521988, i32 8522016, i32 8522020, i32 8536064, i32 8536068, i32 8536096, i32 8536100, i32 8536320, i32 8536324, i32 8536352, i32 8536356, i32 8538112, i32 8538116, i32 8538144, i32 8538148, i32 8538368, i32 8538372, i32 8538400, i32 8538404, i32 9437184, i32 9437188, i32 9437216, i32 9437220, i32 9437440, i32 9437444, i32 9437472, i32 9437476, i32 9439232, i32 9439236, i32 9439264, i32 9439268, i32 9439488, i32 9439492, i32 9439520, i32 9439524, i32 9453568, i32 9453572, i32 9453600, i32 9453604, i32 9453824, i32 9453828, i32 9453856, i32 9453860, i32 9455616, i32 9455620, i32 9455648, i32 9455652, i32 9455872, i32 9455876, i32 9455904, i32 9455908, i32 9568256, i32 9568260, i32 9568288, i32 9568292, i32 9568512, i32 9568516, i32 9568544, i32 9568548, i32 9570304, i32 9570308, i32 9570336, i32 9570340, i32 9570560, i32 9570564, i32 9570592, i32 9570596, i32 9584640, i32 9584644, i32 9584672, i32 9584676, i32 9584896, i32 9584900, i32 9584928, i32 9584932, i32 9586688, i32 9586692, i32 9586720, i32 9586724, i32 9586944, i32 9586948, i32 9586976, i32 9586980], align 16
@flip3x2.tab3x2 = internal constant [256 x i32] [i32 0, i32 16, i32 32, i32 48, i32 1024, i32 1040, i32 1056, i32 1072, i32 2048, i32 2064, i32 2080, i32 2096, i32 3072, i32 3088, i32 3104, i32 3120, i32 65536, i32 65552, i32 65568, i32 65584, i32 66560, i32 66576, i32 66592, i32 66608, i32 67584, i32 67600, i32 67616, i32 67632, i32 68608, i32 68624, i32 68640, i32 68656, i32 131072, i32 131088, i32 131104, i32 131120, i32 132096, i32 132112, i32 132128, i32 132144, i32 133120, i32 133136, i32 133152, i32 133168, i32 134144, i32 134160, i32 134176, i32 134192, i32 196608, i32 196624, i32 196640, i32 196656, i32 197632, i32 197648, i32 197664, i32 197680, i32 198656, i32 198672, i32 198688, i32 198704, i32 199680, i32 199696, i32 199712, i32 199728, i32 4194304, i32 4194320, i32 4194336, i32 4194352, i32 4195328, i32 4195344, i32 4195360, i32 4195376, i32 4196352, i32 4196368, i32 4196384, i32 4196400, i32 4197376, i32 4197392, i32 4197408, i32 4197424, i32 4259840, i32 4259856, i32 4259872, i32 4259888, i32 4260864, i32 4260880, i32 4260896, i32 4260912, i32 4261888, i32 4261904, i32 4261920, i32 4261936, i32 4262912, i32 4262928, i32 4262944, i32 4262960, i32 4325376, i32 4325392, i32 4325408, i32 4325424, i32 4326400, i32 4326416, i32 4326432, i32 4326448, i32 4327424, i32 4327440, i32 4327456, i32 4327472, i32 4328448, i32 4328464, i32 4328480, i32 4328496, i32 4390912, i32 4390928, i32 4390944, i32 4390960, i32 4391936, i32 4391952, i32 4391968, i32 4391984, i32 4392960, i32 4392976, i32 4392992, i32 4393008, i32 4393984, i32 4394000, i32 4394016, i32 4394032, i32 8388608, i32 8388624, i32 8388640, i32 8388656, i32 8389632, i32 8389648, i32 8389664, i32 8389680, i32 8390656, i32 8390672, i32 8390688, i32 8390704, i32 8391680, i32 8391696, i32 8391712, i32 8391728, i32 8454144, i32 8454160, i32 8454176, i32 8454192, i32 8455168, i32 8455184, i32 8455200, i32 8455216, i32 8456192, i32 8456208, i32 8456224, i32 8456240, i32 8457216, i32 8457232, i32 8457248, i32 8457264, i32 8519680, i32 8519696, i32 8519712, i32 8519728, i32 8520704, i32 8520720, i32 8520736, i32 8520752, i32 8521728, i32 8521744, i32 8521760, i32 8521776, i32 8522752, i32 8522768, i32 8522784, i32 8522800, i32 8585216, i32 8585232, i32 8585248, i32 8585264, i32 8586240, i32 8586256, i32 8586272, i32 8586288, i32 8587264, i32 8587280, i32 8587296, i32 8587312, i32 8588288, i32 8588304, i32 8588320, i32 8588336, i32 12582912, i32 12582928, i32 12582944, i32 12582960, i32 12583936, i32 12583952, i32 12583968, i32 12583984, i32 12584960, i32 12584976, i32 12584992, i32 12585008, i32 12585984, i32 12586000, i32 12586016, i32 12586032, i32 12648448, i32 12648464, i32 12648480, i32 12648496, i32 12649472, i32 12649488, i32 12649504, i32 12649520, i32 12650496, i32 12650512, i32 12650528, i32 12650544, i32 12651520, i32 12651536, i32 12651552, i32 12651568, i32 12713984, i32 12714000, i32 12714016, i32 12714032, i32 12715008, i32 12715024, i32 12715040, i32 12715056, i32 12716032, i32 12716048, i32 12716064, i32 12716080, i32 12717056, i32 12717072, i32 12717088, i32 12717104, i32 12779520, i32 12779536, i32 12779552, i32 12779568, i32 12780544, i32 12780560, i32 12780576, i32 12780592, i32 12781568, i32 12781584, i32 12781600, i32 12781616, i32 12782592, i32 12782608, i32 12782624, i32 12782640], align 16

; Function Attrs: nounwind uwtable
define i32 @image_flip_planes(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes, i32 %num_planes, i32 %bits_per_sample) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %num_planes.addr = alloca i32, align 4
  %bits_per_sample.addr = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !5
  store i32 %bits_per_sample, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %0 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %1, 12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  switch i32 %2, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [13 x i32 (i8*, i8**, i32, i32)*], [13 x i32 (i8*, i8**, i32, i32)*]* @image_flip3_procs, i32 0, i64 %idxprom
  %4 = load i32 (i8*, i8**, i32, i32)*, i32 (i8*, i8**, i32, i32)** %arrayidx, align 8, !tbaa !1
  %5 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %6 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %7 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %8 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %call = call i32 %4(i8* %5, i8** %6, i32 %7, i32 %8) #2
  store i32 %call, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %9 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [13 x i32 (i8*, i8**, i32, i32)*], [13 x i32 (i8*, i8**, i32, i32)*]* @image_flip4_procs, i32 0, i64 %idxprom3
  %10 = load i32 (i8*, i8**, i32, i32)*, i32 (i8*, i8**, i32, i32)** %arrayidx4, align 8, !tbaa !1
  %11 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %12 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %14 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %call5 = call i32 %10(i8* %11, i8** %12, i32 %13, i32 %14) #2
  store i32 %call5, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %15 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %sw.default
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %sw.default
  %16 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds [13 x i32 (i8*, i8**, i32, i32, i32, i32)*], [13 x i32 (i8*, i8**, i32, i32, i32, i32)*]* @image_flipN_procs, i32 0, i64 %idxprom9
  %17 = load i32 (i8*, i8**, i32, i32, i32, i32)*, i32 (i8*, i8**, i32, i32, i32, i32)** %arrayidx10, align 8, !tbaa !1
  %18 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %19 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %20 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %21 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %22 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %23 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %call11 = call i32 %17(i8* %18, i8** %19, i32 %20, i32 %21, i32 %22, i32 %23) #2
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %sw.bb.2, %sw.bb, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @flip_fail(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @flip3x1(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %in1 = alloca i8*, align 8
  %in2 = alloca i8*, align 8
  %in3 = alloca i8*, align 8
  %n = alloca i32, align 4
  %b24 = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %in1, align 8, !tbaa !1
  %6 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %in2, align 8, !tbaa !1
  %10 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %in3, align 8, !tbaa !1
  %14 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %15, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %b24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i8*, i8** %in1, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !7
  %idxprom = zext i8 %19 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @flip3x1.tab3x1, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  %21 = load i8*, i8** %in2, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %idxprom8 = zext i8 %22 to i64
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* @flip3x1.tab3x1, i32 0, i64 %idxprom8
  %23 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %shr = lshr i32 %23, 1
  %or = or i32 %20, %shr
  %24 = load i8*, i8** %in3, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !7
  %idxprom10 = zext i8 %25 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @flip3x1.tab3x1, i32 0, i64 %idxprom10
  %26 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %shr12 = lshr i32 %26, 2
  %or13 = or i32 %or, %shr12
  store i32 %or13, i32* %b24, align 4, !tbaa !5
  %27 = load i32, i32* %b24, align 4, !tbaa !5
  %shr14 = lshr i32 %27, 16
  %conv = trunc i32 %shr14 to i8
  %28 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %conv, i8* %arrayidx15, align 1, !tbaa !7
  %29 = load i32, i32* %b24, align 4, !tbaa !5
  %shr16 = lshr i32 %29, 8
  %conv17 = trunc i32 %shr16 to i8
  %30 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %conv17, i8* %arrayidx18, align 1, !tbaa !7
  %31 = load i32, i32* %b24, align 4, !tbaa !5
  %conv19 = trunc i32 %31 to i8
  %32 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !7
  %33 = bitcast i32* %b24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %34, i64 3
  store i8* %add.ptr21, i8** %out, align 8, !tbaa !1
  %35 = load i8*, i8** %in1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %in1, align 8, !tbaa !1
  %36 = load i8*, i8** %in2, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr22, i8** %in2, align 8, !tbaa !1
  %37 = load i8*, i8** %in3, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr23, i8** %in3, align 8, !tbaa !1
  %38 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flip3x2(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %in1 = alloca i8*, align 8
  %in2 = alloca i8*, align 8
  %in3 = alloca i8*, align 8
  %n = alloca i32, align 4
  %b24 = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %in1, align 8, !tbaa !1
  %6 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %in2, align 8, !tbaa !1
  %10 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %in3, align 8, !tbaa !1
  %14 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %15, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %b24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i8*, i8** %in1, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !7
  %idxprom = zext i8 %19 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @flip3x2.tab3x2, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  %21 = load i8*, i8** %in2, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %idxprom8 = zext i8 %22 to i64
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* @flip3x2.tab3x2, i32 0, i64 %idxprom8
  %23 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %shr = lshr i32 %23, 2
  %or = or i32 %20, %shr
  %24 = load i8*, i8** %in3, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !7
  %idxprom10 = zext i8 %25 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @flip3x2.tab3x2, i32 0, i64 %idxprom10
  %26 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %shr12 = lshr i32 %26, 4
  %or13 = or i32 %or, %shr12
  store i32 %or13, i32* %b24, align 4, !tbaa !5
  %27 = load i32, i32* %b24, align 4, !tbaa !5
  %shr14 = lshr i32 %27, 16
  %conv = trunc i32 %shr14 to i8
  %28 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 %conv, i8* %arrayidx15, align 1, !tbaa !7
  %29 = load i32, i32* %b24, align 4, !tbaa !5
  %shr16 = lshr i32 %29, 8
  %conv17 = trunc i32 %shr16 to i8
  %30 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %conv17, i8* %arrayidx18, align 1, !tbaa !7
  %31 = load i32, i32* %b24, align 4, !tbaa !5
  %conv19 = trunc i32 %31 to i8
  %32 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !7
  %33 = bitcast i32* %b24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %34, i64 3
  store i8* %add.ptr21, i8** %out, align 8, !tbaa !1
  %35 = load i8*, i8** %in1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %in1, align 8, !tbaa !1
  %36 = load i8*, i8** %in2, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr22, i8** %in2, align 8, !tbaa !1
  %37 = load i8*, i8** %in3, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr23, i8** %in3, align 8, !tbaa !1
  %38 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flip3x4(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %in1 = alloca i8*, align 8
  %in2 = alloca i8*, align 8
  %in3 = alloca i8*, align 8
  %n = alloca i32, align 4
  %b1 = alloca i8, align 1
  %b2 = alloca i8, align 1
  %b3 = alloca i8, align 1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %in1, align 8, !tbaa !1
  %6 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %in2, align 8, !tbaa !1
  %10 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %in3, align 8, !tbaa !1
  %14 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %15, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %b1) #1
  %17 = load i8*, i8** %in1, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !7
  store i8 %18, i8* %b1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b2) #1
  %19 = load i8*, i8** %in2, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !7
  store i8 %20, i8* %b2, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b3) #1
  %21 = load i8*, i8** %in3, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  store i8 %22, i8* %b3, align 1, !tbaa !7
  %23 = load i8, i8* %b1, align 1, !tbaa !7
  %conv = zext i8 %23 to i32
  %and = and i32 %conv, 240
  %24 = load i8, i8* %b2, align 1, !tbaa !7
  %conv7 = zext i8 %24 to i32
  %shr = ashr i32 %conv7, 4
  %or = or i32 %and, %shr
  %conv8 = trunc i32 %or to i8
  %25 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %conv8, i8* %arrayidx9, align 1, !tbaa !7
  %26 = load i8, i8* %b3, align 1, !tbaa !7
  %conv10 = zext i8 %26 to i32
  %and11 = and i32 %conv10, 240
  %27 = load i8, i8* %b1, align 1, !tbaa !7
  %conv12 = zext i8 %27 to i32
  %and13 = and i32 %conv12, 15
  %or14 = or i32 %and11, %and13
  %conv15 = trunc i32 %or14 to i8
  %28 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !7
  %29 = load i8, i8* %b2, align 1, !tbaa !7
  %conv17 = zext i8 %29 to i32
  %shl = shl i32 %conv17, 4
  %conv18 = trunc i32 %shl to i8
  %conv19 = zext i8 %conv18 to i32
  %30 = load i8, i8* %b3, align 1, !tbaa !7
  %conv20 = zext i8 %30 to i32
  %and21 = and i32 %conv20, 15
  %or22 = or i32 %conv19, %and21
  %conv23 = trunc i32 %or22 to i8
  %31 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %31, i64 2
  store i8 %conv23, i8* %arrayidx24, align 1, !tbaa !7
  call void @llvm.lifetime.end(i64 1, i8* %b3) #1
  call void @llvm.lifetime.end(i64 1, i8* %b2) #1
  call void @llvm.lifetime.end(i64 1, i8* %b1) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds i8, i8* %32, i64 3
  store i8* %add.ptr25, i8** %out, align 8, !tbaa !1
  %33 = load i8*, i8** %in1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %in1, align 8, !tbaa !1
  %34 = load i8*, i8** %in2, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr26, i8** %in2, align 8, !tbaa !1
  %35 = load i8*, i8** %in3, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr27, i8** %in3, align 8, !tbaa !1
  %36 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flip3x8(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %in1 = alloca i8*, align 8
  %in2 = alloca i8*, align 8
  %in3 = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %in1, align 8, !tbaa !1
  %6 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %in2, align 8, !tbaa !1
  %10 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %in3, align 8, !tbaa !1
  %14 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %15, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %in1, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !7
  %19 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %18, i8* %arrayidx7, align 1, !tbaa !7
  %20 = load i8*, i8** %in2, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %22 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %arrayidx8, align 1, !tbaa !7
  %23 = load i8*, i8** %in3, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !7
  %25 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 %24, i8* %arrayidx9, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i8, i8* %26, i64 3
  store i8* %add.ptr10, i8** %out, align 8, !tbaa !1
  %27 = load i8*, i8** %in1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %in1, align 8, !tbaa !1
  %28 = load i8*, i8** %in2, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr11, i8** %in2, align 8, !tbaa !1
  %29 = load i8*, i8** %in3, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr12, i8** %in3, align 8, !tbaa !1
  %30 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flip3x12(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %pa = alloca i8*, align 8
  %pb = alloca i8*, align 8
  %pc = alloca i8*, align 8
  %n = alloca i32, align 4
  %a1 = alloca i8, align 1
  %b0 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %b2 = alloca i8, align 1
  %c1 = alloca i8, align 1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %pa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %pa, align 8, !tbaa !1
  %6 = bitcast i8** %pb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %pb, align 8, !tbaa !1
  %10 = bitcast i8** %pc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %pc, align 8, !tbaa !1
  %14 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %15, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %a1) #1
  %17 = load i8*, i8** %pa, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  store i8 %18, i8* %a1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b0) #1
  %19 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  store i8 %20, i8* %b0, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b1) #1
  %21 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx9, align 1, !tbaa !7
  store i8 %22, i8* %b1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b2) #1
  %23 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %23, i64 2
  %24 = load i8, i8* %arrayidx10, align 1, !tbaa !7
  store i8 %24, i8* %b2, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %c1) #1
  %25 = load i8*, i8** %pc, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  store i8 %26, i8* %c1, align 1, !tbaa !7
  %27 = load i8*, i8** %pa, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %29 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %arrayidx13, align 1, !tbaa !7
  %30 = load i8, i8* %a1, align 1, !tbaa !7
  %conv = zext i8 %30 to i32
  %and = and i32 %conv, 240
  %31 = load i8, i8* %b0, align 1, !tbaa !7
  %conv14 = zext i8 %31 to i32
  %shr = ashr i32 %conv14, 4
  %or = or i32 %and, %shr
  %conv15 = trunc i32 %or to i8
  %32 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !7
  %33 = load i8, i8* %b0, align 1, !tbaa !7
  %conv17 = zext i8 %33 to i32
  %shl = shl i32 %conv17, 4
  %34 = load i8, i8* %b1, align 1, !tbaa !7
  %conv18 = zext i8 %34 to i32
  %shr19 = ashr i32 %conv18, 4
  %or20 = or i32 %shl, %shr19
  %conv21 = trunc i32 %or20 to i8
  %35 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 %conv21, i8* %arrayidx22, align 1, !tbaa !7
  %36 = load i8*, i8** %pc, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %38 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 %37, i8* %arrayidx24, align 1, !tbaa !7
  %39 = load i8, i8* %c1, align 1, !tbaa !7
  %conv25 = zext i8 %39 to i32
  %and26 = and i32 %conv25, 240
  %40 = load i8, i8* %a1, align 1, !tbaa !7
  %conv27 = zext i8 %40 to i32
  %and28 = and i32 %conv27, 15
  %or29 = or i32 %and26, %and28
  %conv30 = trunc i32 %or29 to i8
  %41 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %41, i64 4
  store i8 %conv30, i8* %arrayidx31, align 1, !tbaa !7
  %42 = load i8*, i8** %pa, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %42, i64 2
  %43 = load i8, i8* %arrayidx32, align 1, !tbaa !7
  %44 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %44, i64 5
  store i8 %43, i8* %arrayidx33, align 1, !tbaa !7
  %45 = load i8, i8* %b1, align 1, !tbaa !7
  %conv34 = zext i8 %45 to i32
  %shl35 = shl i32 %conv34, 4
  %46 = load i8, i8* %b2, align 1, !tbaa !7
  %conv36 = zext i8 %46 to i32
  %shr37 = ashr i32 %conv36, 4
  %or38 = or i32 %shl35, %shr37
  %conv39 = trunc i32 %or38 to i8
  %47 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %47, i64 6
  store i8 %conv39, i8* %arrayidx40, align 1, !tbaa !7
  %48 = load i8, i8* %b2, align 1, !tbaa !7
  %conv41 = zext i8 %48 to i32
  %shl42 = shl i32 %conv41, 4
  %49 = load i8, i8* %c1, align 1, !tbaa !7
  %conv43 = zext i8 %49 to i32
  %and44 = and i32 %conv43, 15
  %or45 = or i32 %shl42, %and44
  %conv46 = trunc i32 %or45 to i8
  %50 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %50, i64 7
  store i8 %conv46, i8* %arrayidx47, align 1, !tbaa !7
  %51 = load i8*, i8** %pc, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx48, align 1, !tbaa !7
  %53 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %53, i64 8
  store i8 %52, i8* %arrayidx49, align 1, !tbaa !7
  call void @llvm.lifetime.end(i64 1, i8* %c1) #1
  call void @llvm.lifetime.end(i64 1, i8* %b2) #1
  call void @llvm.lifetime.end(i64 1, i8* %b1) #1
  call void @llvm.lifetime.end(i64 1, i8* %b0) #1
  call void @llvm.lifetime.end(i64 1, i8* %a1) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr50 = getelementptr inbounds i8, i8* %54, i64 9
  store i8* %add.ptr50, i8** %out, align 8, !tbaa !1
  %55 = load i8*, i8** %pa, align 8, !tbaa !1
  %add.ptr51 = getelementptr inbounds i8, i8* %55, i64 3
  store i8* %add.ptr51, i8** %pa, align 8, !tbaa !1
  %56 = load i8*, i8** %pb, align 8, !tbaa !1
  %add.ptr52 = getelementptr inbounds i8, i8* %56, i64 3
  store i8* %add.ptr52, i8** %pb, align 8, !tbaa !1
  %57 = load i8*, i8** %pc, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds i8, i8* %57, i64 3
  store i8* %add.ptr53, i8** %pc, align 8, !tbaa !1
  %58 = load i32, i32* %n, align 4, !tbaa !5
  %sub = sub nsw i32 %58, 3
  store i32 %sub, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i8** %pc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i8** %pb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i8** %pa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @flip4x1(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %in1 = alloca i8*, align 8
  %in2 = alloca i8*, align 8
  %in3 = alloca i8*, align 8
  %in4 = alloca i8*, align 8
  %n = alloca i32, align 4
  %b1 = alloca i8, align 1
  %b2 = alloca i8, align 1
  %b3 = alloca i8, align 1
  %b4 = alloca i8, align 1
  %temp = alloca i8, align 1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %in1, align 8, !tbaa !1
  %6 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %in2, align 8, !tbaa !1
  %10 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %in3, align 8, !tbaa !1
  %14 = bitcast i8** %in4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %15, i64 3
  %16 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  %17 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext8 = sext i32 %17 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 %idx.ext8
  store i8* %add.ptr9, i8** %in4, align 8, !tbaa !1
  %18 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %19, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %b1) #1
  %21 = load i8*, i8** %in1, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  store i8 %22, i8* %b1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b2) #1
  %23 = load i8*, i8** %in2, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !7
  store i8 %24, i8* %b2, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b3) #1
  %25 = load i8*, i8** %in3, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !7
  store i8 %26, i8* %b3, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b4) #1
  %27 = load i8*, i8** %in4, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !7
  store i8 %28, i8* %b4, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %temp) #1
  %29 = load i8, i8* %b2, align 1, !tbaa !7
  %conv = zext i8 %29 to i32
  %shr = ashr i32 %conv, 1
  %30 = load i8, i8* %b1, align 1, !tbaa !7
  %conv10 = zext i8 %30 to i32
  %xor = xor i32 %shr, %conv10
  %and = and i32 %xor, 85
  %conv11 = trunc i32 %and to i8
  store i8 %conv11, i8* %temp, align 1, !tbaa !7
  %conv12 = zext i8 %conv11 to i32
  %31 = load i8, i8* %b1, align 1, !tbaa !7
  %conv13 = zext i8 %31 to i32
  %xor14 = xor i32 %conv13, %conv12
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %b1, align 1, !tbaa !7
  %32 = load i8, i8* %temp, align 1, !tbaa !7
  %conv16 = zext i8 %32 to i32
  %shl = shl i32 %conv16, 1
  %33 = load i8, i8* %b2, align 1, !tbaa !7
  %conv17 = zext i8 %33 to i32
  %xor18 = xor i32 %conv17, %shl
  %conv19 = trunc i32 %xor18 to i8
  store i8 %conv19, i8* %b2, align 1, !tbaa !7
  %34 = load i8, i8* %b4, align 1, !tbaa !7
  %conv20 = zext i8 %34 to i32
  %shr21 = ashr i32 %conv20, 1
  %35 = load i8, i8* %b3, align 1, !tbaa !7
  %conv22 = zext i8 %35 to i32
  %xor23 = xor i32 %shr21, %conv22
  %and24 = and i32 %xor23, 85
  %conv25 = trunc i32 %and24 to i8
  store i8 %conv25, i8* %temp, align 1, !tbaa !7
  %conv26 = zext i8 %conv25 to i32
  %36 = load i8, i8* %b3, align 1, !tbaa !7
  %conv27 = zext i8 %36 to i32
  %xor28 = xor i32 %conv27, %conv26
  %conv29 = trunc i32 %xor28 to i8
  store i8 %conv29, i8* %b3, align 1, !tbaa !7
  %37 = load i8, i8* %temp, align 1, !tbaa !7
  %conv30 = zext i8 %37 to i32
  %shl31 = shl i32 %conv30, 1
  %38 = load i8, i8* %b4, align 1, !tbaa !7
  %conv32 = zext i8 %38 to i32
  %xor33 = xor i32 %conv32, %shl31
  %conv34 = trunc i32 %xor33 to i8
  store i8 %conv34, i8* %b4, align 1, !tbaa !7
  %39 = load i8, i8* %b3, align 1, !tbaa !7
  %conv35 = zext i8 %39 to i32
  %shr36 = ashr i32 %conv35, 2
  %40 = load i8, i8* %b1, align 1, !tbaa !7
  %conv37 = zext i8 %40 to i32
  %xor38 = xor i32 %shr36, %conv37
  %and39 = and i32 %xor38, 51
  %conv40 = trunc i32 %and39 to i8
  store i8 %conv40, i8* %temp, align 1, !tbaa !7
  %conv41 = zext i8 %conv40 to i32
  %41 = load i8, i8* %b1, align 1, !tbaa !7
  %conv42 = zext i8 %41 to i32
  %xor43 = xor i32 %conv42, %conv41
  %conv44 = trunc i32 %xor43 to i8
  store i8 %conv44, i8* %b1, align 1, !tbaa !7
  %42 = load i8, i8* %temp, align 1, !tbaa !7
  %conv45 = zext i8 %42 to i32
  %shl46 = shl i32 %conv45, 2
  %43 = load i8, i8* %b3, align 1, !tbaa !7
  %conv47 = zext i8 %43 to i32
  %xor48 = xor i32 %conv47, %shl46
  %conv49 = trunc i32 %xor48 to i8
  store i8 %conv49, i8* %b3, align 1, !tbaa !7
  %44 = load i8, i8* %b4, align 1, !tbaa !7
  %conv50 = zext i8 %44 to i32
  %shr51 = ashr i32 %conv50, 2
  %45 = load i8, i8* %b2, align 1, !tbaa !7
  %conv52 = zext i8 %45 to i32
  %xor53 = xor i32 %shr51, %conv52
  %and54 = and i32 %xor53, 51
  %conv55 = trunc i32 %and54 to i8
  store i8 %conv55, i8* %temp, align 1, !tbaa !7
  %conv56 = zext i8 %conv55 to i32
  %46 = load i8, i8* %b2, align 1, !tbaa !7
  %conv57 = zext i8 %46 to i32
  %xor58 = xor i32 %conv57, %conv56
  %conv59 = trunc i32 %xor58 to i8
  store i8 %conv59, i8* %b2, align 1, !tbaa !7
  %47 = load i8, i8* %temp, align 1, !tbaa !7
  %conv60 = zext i8 %47 to i32
  %shl61 = shl i32 %conv60, 2
  %48 = load i8, i8* %b4, align 1, !tbaa !7
  %conv62 = zext i8 %48 to i32
  %xor63 = xor i32 %conv62, %shl61
  %conv64 = trunc i32 %xor63 to i8
  store i8 %conv64, i8* %b4, align 1, !tbaa !7
  %49 = load i8, i8* %b1, align 1, !tbaa !7
  %conv65 = zext i8 %49 to i32
  %and66 = and i32 %conv65, 240
  %50 = load i8, i8* %b2, align 1, !tbaa !7
  %conv67 = zext i8 %50 to i32
  %shr68 = ashr i32 %conv67, 4
  %or = or i32 %and66, %shr68
  %conv69 = trunc i32 %or to i8
  %51 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %conv69, i8* %arrayidx70, align 1, !tbaa !7
  %52 = load i8, i8* %b3, align 1, !tbaa !7
  %conv71 = zext i8 %52 to i32
  %and72 = and i32 %conv71, 240
  %53 = load i8, i8* %b4, align 1, !tbaa !7
  %conv73 = zext i8 %53 to i32
  %shr74 = ashr i32 %conv73, 4
  %or75 = or i32 %and72, %shr74
  %conv76 = trunc i32 %or75 to i8
  %54 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 %conv76, i8* %arrayidx77, align 1, !tbaa !7
  %55 = load i8, i8* %b1, align 1, !tbaa !7
  %conv78 = zext i8 %55 to i32
  %shl79 = shl i32 %conv78, 4
  %56 = load i8, i8* %b2, align 1, !tbaa !7
  %conv80 = zext i8 %56 to i32
  %and81 = and i32 %conv80, 15
  %or82 = or i32 %shl79, %and81
  %conv83 = trunc i32 %or82 to i8
  %57 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %57, i64 2
  store i8 %conv83, i8* %arrayidx84, align 1, !tbaa !7
  %58 = load i8, i8* %b3, align 1, !tbaa !7
  %conv85 = zext i8 %58 to i32
  %shl86 = shl i32 %conv85, 4
  %59 = load i8, i8* %b4, align 1, !tbaa !7
  %conv87 = zext i8 %59 to i32
  %and88 = and i32 %conv87, 15
  %or89 = or i32 %shl86, %and88
  %conv90 = trunc i32 %or89 to i8
  %60 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i8, i8* %60, i64 3
  store i8 %conv90, i8* %arrayidx91, align 1, !tbaa !7
  call void @llvm.lifetime.end(i64 1, i8* %temp) #1
  call void @llvm.lifetime.end(i64 1, i8* %b4) #1
  call void @llvm.lifetime.end(i64 1, i8* %b3) #1
  call void @llvm.lifetime.end(i64 1, i8* %b2) #1
  call void @llvm.lifetime.end(i64 1, i8* %b1) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds i8, i8* %61, i64 4
  store i8* %add.ptr92, i8** %out, align 8, !tbaa !1
  %62 = load i8*, i8** %in1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr, i8** %in1, align 8, !tbaa !1
  %63 = load i8*, i8** %in2, align 8, !tbaa !1
  %incdec.ptr93 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr93, i8** %in2, align 8, !tbaa !1
  %64 = load i8*, i8** %in3, align 8, !tbaa !1
  %incdec.ptr94 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr94, i8** %in3, align 8, !tbaa !1
  %65 = load i8*, i8** %in4, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr95, i8** %in4, align 8, !tbaa !1
  %66 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i8** %in4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flip4x2(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %in1 = alloca i8*, align 8
  %in2 = alloca i8*, align 8
  %in3 = alloca i8*, align 8
  %in4 = alloca i8*, align 8
  %n = alloca i32, align 4
  %b1 = alloca i8, align 1
  %b2 = alloca i8, align 1
  %b3 = alloca i8, align 1
  %b4 = alloca i8, align 1
  %temp = alloca i8, align 1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %in1, align 8, !tbaa !1
  %6 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %in2, align 8, !tbaa !1
  %10 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %in3, align 8, !tbaa !1
  %14 = bitcast i8** %in4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %15, i64 3
  %16 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  %17 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext8 = sext i32 %17 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 %idx.ext8
  store i8* %add.ptr9, i8** %in4, align 8, !tbaa !1
  %18 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %19, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %b1) #1
  %21 = load i8*, i8** %in1, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  store i8 %22, i8* %b1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b2) #1
  %23 = load i8*, i8** %in2, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !7
  store i8 %24, i8* %b2, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b3) #1
  %25 = load i8*, i8** %in3, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !7
  store i8 %26, i8* %b3, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b4) #1
  %27 = load i8*, i8** %in4, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !7
  store i8 %28, i8* %b4, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %temp) #1
  %29 = load i8, i8* %b3, align 1, !tbaa !7
  %conv = zext i8 %29 to i32
  %shr = ashr i32 %conv, 4
  %30 = load i8, i8* %b1, align 1, !tbaa !7
  %conv10 = zext i8 %30 to i32
  %xor = xor i32 %shr, %conv10
  %and = and i32 %xor, 15
  %conv11 = trunc i32 %and to i8
  store i8 %conv11, i8* %temp, align 1, !tbaa !7
  %conv12 = zext i8 %conv11 to i32
  %31 = load i8, i8* %b1, align 1, !tbaa !7
  %conv13 = zext i8 %31 to i32
  %xor14 = xor i32 %conv13, %conv12
  %conv15 = trunc i32 %xor14 to i8
  store i8 %conv15, i8* %b1, align 1, !tbaa !7
  %32 = load i8, i8* %temp, align 1, !tbaa !7
  %conv16 = zext i8 %32 to i32
  %shl = shl i32 %conv16, 4
  %33 = load i8, i8* %b3, align 1, !tbaa !7
  %conv17 = zext i8 %33 to i32
  %xor18 = xor i32 %conv17, %shl
  %conv19 = trunc i32 %xor18 to i8
  store i8 %conv19, i8* %b3, align 1, !tbaa !7
  %34 = load i8, i8* %b4, align 1, !tbaa !7
  %conv20 = zext i8 %34 to i32
  %shr21 = ashr i32 %conv20, 4
  %35 = load i8, i8* %b2, align 1, !tbaa !7
  %conv22 = zext i8 %35 to i32
  %xor23 = xor i32 %shr21, %conv22
  %and24 = and i32 %xor23, 15
  %conv25 = trunc i32 %and24 to i8
  store i8 %conv25, i8* %temp, align 1, !tbaa !7
  %conv26 = zext i8 %conv25 to i32
  %36 = load i8, i8* %b2, align 1, !tbaa !7
  %conv27 = zext i8 %36 to i32
  %xor28 = xor i32 %conv27, %conv26
  %conv29 = trunc i32 %xor28 to i8
  store i8 %conv29, i8* %b2, align 1, !tbaa !7
  %37 = load i8, i8* %temp, align 1, !tbaa !7
  %conv30 = zext i8 %37 to i32
  %shl31 = shl i32 %conv30, 4
  %38 = load i8, i8* %b4, align 1, !tbaa !7
  %conv32 = zext i8 %38 to i32
  %xor33 = xor i32 %conv32, %shl31
  %conv34 = trunc i32 %xor33 to i8
  store i8 %conv34, i8* %b4, align 1, !tbaa !7
  %39 = load i8, i8* %b2, align 1, !tbaa !7
  %conv35 = zext i8 %39 to i32
  %shr36 = ashr i32 %conv35, 2
  %40 = load i8, i8* %b1, align 1, !tbaa !7
  %conv37 = zext i8 %40 to i32
  %xor38 = xor i32 %shr36, %conv37
  %and39 = and i32 %xor38, 51
  %conv40 = trunc i32 %and39 to i8
  store i8 %conv40, i8* %temp, align 1, !tbaa !7
  %conv41 = zext i8 %conv40 to i32
  %41 = load i8, i8* %b1, align 1, !tbaa !7
  %conv42 = zext i8 %41 to i32
  %xor43 = xor i32 %conv42, %conv41
  %conv44 = trunc i32 %xor43 to i8
  store i8 %conv44, i8* %b1, align 1, !tbaa !7
  %42 = load i8, i8* %temp, align 1, !tbaa !7
  %conv45 = zext i8 %42 to i32
  %shl46 = shl i32 %conv45, 2
  %43 = load i8, i8* %b2, align 1, !tbaa !7
  %conv47 = zext i8 %43 to i32
  %xor48 = xor i32 %conv47, %shl46
  %conv49 = trunc i32 %xor48 to i8
  store i8 %conv49, i8* %b2, align 1, !tbaa !7
  %44 = load i8, i8* %b4, align 1, !tbaa !7
  %conv50 = zext i8 %44 to i32
  %shr51 = ashr i32 %conv50, 2
  %45 = load i8, i8* %b3, align 1, !tbaa !7
  %conv52 = zext i8 %45 to i32
  %xor53 = xor i32 %shr51, %conv52
  %and54 = and i32 %xor53, 51
  %conv55 = trunc i32 %and54 to i8
  store i8 %conv55, i8* %temp, align 1, !tbaa !7
  %conv56 = zext i8 %conv55 to i32
  %46 = load i8, i8* %b3, align 1, !tbaa !7
  %conv57 = zext i8 %46 to i32
  %xor58 = xor i32 %conv57, %conv56
  %conv59 = trunc i32 %xor58 to i8
  store i8 %conv59, i8* %b3, align 1, !tbaa !7
  %47 = load i8, i8* %temp, align 1, !tbaa !7
  %conv60 = zext i8 %47 to i32
  %shl61 = shl i32 %conv60, 2
  %48 = load i8, i8* %b4, align 1, !tbaa !7
  %conv62 = zext i8 %48 to i32
  %xor63 = xor i32 %conv62, %shl61
  %conv64 = trunc i32 %xor63 to i8
  store i8 %conv64, i8* %b4, align 1, !tbaa !7
  %49 = load i8, i8* %b1, align 1, !tbaa !7
  %50 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 %49, i8* %arrayidx65, align 1, !tbaa !7
  %51 = load i8, i8* %b2, align 1, !tbaa !7
  %52 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %51, i8* %arrayidx66, align 1, !tbaa !7
  %53 = load i8, i8* %b3, align 1, !tbaa !7
  %54 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %54, i64 2
  store i8 %53, i8* %arrayidx67, align 1, !tbaa !7
  %55 = load i8, i8* %b4, align 1, !tbaa !7
  %56 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %56, i64 3
  store i8 %55, i8* %arrayidx68, align 1, !tbaa !7
  call void @llvm.lifetime.end(i64 1, i8* %temp) #1
  call void @llvm.lifetime.end(i64 1, i8* %b4) #1
  call void @llvm.lifetime.end(i64 1, i8* %b3) #1
  call void @llvm.lifetime.end(i64 1, i8* %b2) #1
  call void @llvm.lifetime.end(i64 1, i8* %b1) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %add.ptr69, i8** %out, align 8, !tbaa !1
  %58 = load i8*, i8** %in1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr, i8** %in1, align 8, !tbaa !1
  %59 = load i8*, i8** %in2, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr70, i8** %in2, align 8, !tbaa !1
  %60 = load i8*, i8** %in3, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr71, i8** %in3, align 8, !tbaa !1
  %61 = load i8*, i8** %in4, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr72, i8** %in4, align 8, !tbaa !1
  %62 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add nsw i32 %62, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i8** %in4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flip4x4(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %in1 = alloca i8*, align 8
  %in2 = alloca i8*, align 8
  %in3 = alloca i8*, align 8
  %in4 = alloca i8*, align 8
  %n = alloca i32, align 4
  %b1 = alloca i8, align 1
  %b2 = alloca i8, align 1
  %b3 = alloca i8, align 1
  %b4 = alloca i8, align 1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %in1, align 8, !tbaa !1
  %6 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %in2, align 8, !tbaa !1
  %10 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %in3, align 8, !tbaa !1
  %14 = bitcast i8** %in4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %15, i64 3
  %16 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  %17 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext8 = sext i32 %17 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 %idx.ext8
  store i8* %add.ptr9, i8** %in4, align 8, !tbaa !1
  %18 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %19, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %b1) #1
  %21 = load i8*, i8** %in1, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  store i8 %22, i8* %b1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b2) #1
  %23 = load i8*, i8** %in2, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !7
  store i8 %24, i8* %b2, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b3) #1
  %25 = load i8*, i8** %in3, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !7
  store i8 %26, i8* %b3, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b4) #1
  %27 = load i8*, i8** %in4, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !7
  store i8 %28, i8* %b4, align 1, !tbaa !7
  %29 = load i8, i8* %b1, align 1, !tbaa !7
  %conv = zext i8 %29 to i32
  %and = and i32 %conv, 240
  %30 = load i8, i8* %b2, align 1, !tbaa !7
  %conv10 = zext i8 %30 to i32
  %shr = ashr i32 %conv10, 4
  %or = or i32 %and, %shr
  %conv11 = trunc i32 %or to i8
  %31 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %conv11, i8* %arrayidx12, align 1, !tbaa !7
  %32 = load i8, i8* %b3, align 1, !tbaa !7
  %conv13 = zext i8 %32 to i32
  %and14 = and i32 %conv13, 240
  %33 = load i8, i8* %b4, align 1, !tbaa !7
  %conv15 = zext i8 %33 to i32
  %shr16 = ashr i32 %conv15, 4
  %or17 = or i32 %and14, %shr16
  %conv18 = trunc i32 %or17 to i8
  %34 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !7
  %35 = load i8, i8* %b1, align 1, !tbaa !7
  %conv20 = zext i8 %35 to i32
  %shl = shl i32 %conv20, 4
  %36 = load i8, i8* %b2, align 1, !tbaa !7
  %conv21 = zext i8 %36 to i32
  %and22 = and i32 %conv21, 15
  %or23 = or i32 %shl, %and22
  %conv24 = trunc i32 %or23 to i8
  %37 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !7
  %38 = load i8, i8* %b3, align 1, !tbaa !7
  %conv26 = zext i8 %38 to i32
  %shl27 = shl i32 %conv26, 4
  %39 = load i8, i8* %b4, align 1, !tbaa !7
  %conv28 = zext i8 %39 to i32
  %and29 = and i32 %conv28, 15
  %or30 = or i32 %shl27, %and29
  %conv31 = trunc i32 %or30 to i8
  %40 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %40, i64 3
  store i8 %conv31, i8* %arrayidx32, align 1, !tbaa !7
  call void @llvm.lifetime.end(i64 1, i8* %b4) #1
  call void @llvm.lifetime.end(i64 1, i8* %b3) #1
  call void @llvm.lifetime.end(i64 1, i8* %b2) #1
  call void @llvm.lifetime.end(i64 1, i8* %b1) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr33 = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %add.ptr33, i8** %out, align 8, !tbaa !1
  %42 = load i8*, i8** %in1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %in1, align 8, !tbaa !1
  %43 = load i8*, i8** %in2, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr34, i8** %in2, align 8, !tbaa !1
  %44 = load i8*, i8** %in3, align 8, !tbaa !1
  %incdec.ptr35 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr35, i8** %in3, align 8, !tbaa !1
  %45 = load i8*, i8** %in4, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr36, i8** %in4, align 8, !tbaa !1
  %46 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i8** %in4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flip4x8(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %in1 = alloca i8*, align 8
  %in2 = alloca i8*, align 8
  %in3 = alloca i8*, align 8
  %in4 = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %in1, align 8, !tbaa !1
  %6 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %in2, align 8, !tbaa !1
  %10 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %in3, align 8, !tbaa !1
  %14 = bitcast i8** %in4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %15, i64 3
  %16 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  %17 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext8 = sext i32 %17 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 %idx.ext8
  store i8* %add.ptr9, i8** %in4, align 8, !tbaa !1
  %18 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %19, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %in1, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %23 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %22, i8* %arrayidx10, align 1, !tbaa !7
  %24 = load i8*, i8** %in2, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !7
  %26 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %arrayidx11, align 1, !tbaa !7
  %27 = load i8*, i8** %in3, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !7
  %29 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %28, i8* %arrayidx12, align 1, !tbaa !7
  %30 = load i8*, i8** %in4, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %32 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %32, i64 3
  store i8 %31, i8* %arrayidx13, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %33, i64 4
  store i8* %add.ptr14, i8** %out, align 8, !tbaa !1
  %34 = load i8*, i8** %in1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %in1, align 8, !tbaa !1
  %35 = load i8*, i8** %in2, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr15, i8** %in2, align 8, !tbaa !1
  %36 = load i8*, i8** %in3, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr16, i8** %in3, align 8, !tbaa !1
  %37 = load i8*, i8** %in4, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr17, i8** %in4, align 8, !tbaa !1
  %38 = load i32, i32* %n, align 4, !tbaa !5
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i8** %in4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %in3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i8** %in2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i8** %in1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flip4x12(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %out = alloca i8*, align 8
  %pa = alloca i8*, align 8
  %pb = alloca i8*, align 8
  %pc = alloca i8*, align 8
  %pd = alloca i8*, align 8
  %n = alloca i32, align 4
  %a1 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %c1 = alloca i8, align 1
  %d1 = alloca i8, align 1
  %v0 = alloca i8, align 1
  %v2 = alloca i8, align 1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %out, align 8, !tbaa !1
  %2 = bitcast i8** %pa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %pa, align 8, !tbaa !1
  %6 = bitcast i8** %pb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %pb, align 8, !tbaa !1
  %10 = bitcast i8** %pc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %13 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext5 = sext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %idx.ext5
  store i8* %add.ptr6, i8** %pc, align 8, !tbaa !1
  %14 = bitcast i8** %pd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %15, i64 3
  %16 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  %17 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext8 = sext i32 %17 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 %idx.ext8
  store i8* %add.ptr9, i8** %pd, align 8, !tbaa !1
  %18 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %19, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %a1) #1
  %21 = load i8*, i8** %pa, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx10, align 1, !tbaa !7
  store i8 %22, i8* %a1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %b1) #1
  %23 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  store i8 %24, i8* %b1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %c1) #1
  %25 = load i8*, i8** %pc, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  store i8 %26, i8* %c1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %d1) #1
  %27 = load i8*, i8** %pd, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  store i8 %28, i8* %d1, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %v0) #1
  %29 = load i8*, i8** %pa, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %31 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %30, i8* %arrayidx15, align 1, !tbaa !7
  %32 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  store i8 %33, i8* %v0, align 1, !tbaa !7
  %34 = load i8, i8* %a1, align 1, !tbaa !7
  %conv = zext i8 %34 to i32
  %and = and i32 %conv, 240
  %35 = load i8, i8* %v0, align 1, !tbaa !7
  %conv17 = zext i8 %35 to i32
  %shr = ashr i32 %conv17, 4
  %or = or i32 %and, %shr
  %conv18 = trunc i32 %or to i8
  %36 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !7
  %37 = load i8, i8* %v0, align 1, !tbaa !7
  %conv20 = zext i8 %37 to i32
  %shl = shl i32 %conv20, 4
  %38 = load i8, i8* %b1, align 1, !tbaa !7
  %conv21 = zext i8 %38 to i32
  %shr22 = ashr i32 %conv21, 4
  %or23 = or i32 %shl, %shr22
  %conv24 = trunc i32 %or23 to i8
  %39 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !7
  %40 = load i8*, i8** %pc, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %42 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %42, i64 3
  store i8 %41, i8* %arrayidx27, align 1, !tbaa !7
  %43 = load i8*, i8** %pd, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  store i8 %44, i8* %v0, align 1, !tbaa !7
  %45 = load i8, i8* %c1, align 1, !tbaa !7
  %conv29 = zext i8 %45 to i32
  %and30 = and i32 %conv29, 240
  %46 = load i8, i8* %v0, align 1, !tbaa !7
  %conv31 = zext i8 %46 to i32
  %shr32 = ashr i32 %conv31, 4
  %or33 = or i32 %and30, %shr32
  %conv34 = trunc i32 %or33 to i8
  %47 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %47, i64 4
  store i8 %conv34, i8* %arrayidx35, align 1, !tbaa !7
  %48 = load i8, i8* %v0, align 1, !tbaa !7
  %conv36 = zext i8 %48 to i32
  %shl37 = shl i32 %conv36, 4
  %49 = load i8, i8* %d1, align 1, !tbaa !7
  %conv38 = zext i8 %49 to i32
  %shr39 = ashr i32 %conv38, 4
  %or40 = or i32 %shl37, %shr39
  %conv41 = trunc i32 %or40 to i8
  %50 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %50, i64 5
  store i8 %conv41, i8* %arrayidx42, align 1, !tbaa !7
  call void @llvm.lifetime.end(i64 1, i8* %v0) #1
  call void @llvm.lifetime.start(i64 1, i8* %v2) #1
  %51 = load i8*, i8** %pa, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx43, align 1, !tbaa !7
  store i8 %52, i8* %v2, align 1, !tbaa !7
  %53 = load i8, i8* %a1, align 1, !tbaa !7
  %conv44 = zext i8 %53 to i32
  %shl45 = shl i32 %conv44, 4
  %54 = load i8, i8* %v2, align 1, !tbaa !7
  %conv46 = zext i8 %54 to i32
  %shr47 = ashr i32 %conv46, 4
  %or48 = or i32 %shl45, %shr47
  %conv49 = trunc i32 %or48 to i8
  %55 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %55, i64 6
  store i8 %conv49, i8* %arrayidx50, align 1, !tbaa !7
  %56 = load i8, i8* %v2, align 1, !tbaa !7
  %conv51 = zext i8 %56 to i32
  %shl52 = shl i32 %conv51, 4
  %57 = load i8, i8* %b1, align 1, !tbaa !7
  %conv53 = zext i8 %57 to i32
  %and54 = and i32 %conv53, 15
  %or55 = or i32 %shl52, %and54
  %conv56 = trunc i32 %or55 to i8
  %58 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %58, i64 7
  store i8 %conv56, i8* %arrayidx57, align 1, !tbaa !7
  %59 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx58, align 1, !tbaa !7
  %61 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %61, i64 8
  store i8 %60, i8* %arrayidx59, align 1, !tbaa !7
  %62 = load i8*, i8** %pc, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx60, align 1, !tbaa !7
  store i8 %63, i8* %v2, align 1, !tbaa !7
  %64 = load i8, i8* %c1, align 1, !tbaa !7
  %conv61 = zext i8 %64 to i32
  %shl62 = shl i32 %conv61, 4
  %65 = load i8, i8* %v2, align 1, !tbaa !7
  %conv63 = zext i8 %65 to i32
  %shr64 = ashr i32 %conv63, 4
  %or65 = or i32 %shl62, %shr64
  %conv66 = trunc i32 %or65 to i8
  %66 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %66, i64 9
  store i8 %conv66, i8* %arrayidx67, align 1, !tbaa !7
  %67 = load i8, i8* %v2, align 1, !tbaa !7
  %conv68 = zext i8 %67 to i32
  %shl69 = shl i32 %conv68, 4
  %68 = load i8, i8* %d1, align 1, !tbaa !7
  %conv70 = zext i8 %68 to i32
  %and71 = and i32 %conv70, 15
  %or72 = or i32 %shl69, %and71
  %conv73 = trunc i32 %or72 to i8
  %69 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %69, i64 10
  store i8 %conv73, i8* %arrayidx74, align 1, !tbaa !7
  %70 = load i8*, i8** %pd, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %70, i64 2
  %71 = load i8, i8* %arrayidx75, align 1, !tbaa !7
  %72 = load i8*, i8** %out, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %72, i64 11
  store i8 %71, i8* %arrayidx76, align 1, !tbaa !7
  call void @llvm.lifetime.end(i64 1, i8* %v2) #1
  call void @llvm.lifetime.end(i64 1, i8* %d1) #1
  call void @llvm.lifetime.end(i64 1, i8* %c1) #1
  call void @llvm.lifetime.end(i64 1, i8* %b1) #1
  call void @llvm.lifetime.end(i64 1, i8* %a1) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %73 = load i8*, i8** %out, align 8, !tbaa !1
  %add.ptr77 = getelementptr inbounds i8, i8* %73, i64 12
  store i8* %add.ptr77, i8** %out, align 8, !tbaa !1
  %74 = load i8*, i8** %pa, align 8, !tbaa !1
  %add.ptr78 = getelementptr inbounds i8, i8* %74, i64 3
  store i8* %add.ptr78, i8** %pa, align 8, !tbaa !1
  %75 = load i8*, i8** %pb, align 8, !tbaa !1
  %add.ptr79 = getelementptr inbounds i8, i8* %75, i64 3
  store i8* %add.ptr79, i8** %pb, align 8, !tbaa !1
  %76 = load i8*, i8** %pc, align 8, !tbaa !1
  %add.ptr80 = getelementptr inbounds i8, i8* %76, i64 3
  store i8* %add.ptr80, i8** %pc, align 8, !tbaa !1
  %77 = load i8*, i8** %pd, align 8, !tbaa !1
  %add.ptr81 = getelementptr inbounds i8, i8* %77, i64 3
  store i8* %add.ptr81, i8** %pd, align 8, !tbaa !1
  %78 = load i32, i32* %n, align 4, !tbaa !5
  %sub = sub nsw i32 %78, 3
  store i32 %sub, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i8** %pd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i8** %pc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i8** %pb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i8** %pa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @flipN_fail(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes, i32 %num_planes, i32 %bits_per_sample) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %num_planes.addr = alloca i32, align 4
  %bits_per_sample.addr = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !5
  store i32 %bits_per_sample, i32* %bits_per_sample.addr, align 4, !tbaa !5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @flipNx1to8(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes, i32 %num_planes, i32 %bits_per_sample) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %num_planes.addr = alloca i32, align 4
  %bits_per_sample.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %bi = alloca i32, align 4
  %pi = alloca i32, align 4
  %dptr = alloca i8*, align 8
  %dbit = alloca i32, align 4
  %dbbyte = alloca i8, align 1
  %sptr = alloca i8*, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !5
  store i32 %bits_per_sample, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %shl = shl i32 1, %1
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !5
  %2 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %5, i8** %dptr, align 8, !tbaa !1
  %6 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %dbit, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %dbbyte) #1
  %7 = load i32, i32* %dbit, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i8*, i8** %dptr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !7
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr = ashr i32 65280, %10
  %and = and i32 %conv, %shr
  %conv1 = trunc i32 %and to i8
  %conv2 = zext i8 %conv1 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ 0, %cond.false ]
  %conv3 = trunc i32 %cond to i8
  store i8 %conv3, i8* %dbbyte, align 1, !tbaa !7
  store i32 0, i32* %bi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %cond.end
  %11 = load i32, i32* %bi, align 4, !tbaa !5
  %12 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %12, 8
  %cmp = icmp slt i32 %11, %mul
  br i1 %cmp, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %pi, align 4, !tbaa !5
  %14 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %15 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %19 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %20 = load i32, i32* %bi, align 4, !tbaa !5
  %shr9 = ashr i32 %20, 3
  %idx.ext10 = sext i32 %shr9 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext10
  store i8* %add.ptr11, i8** %sptr, align 8, !tbaa !1
  %21 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i8*, i8** %sptr, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %conv12 = zext i8 %23 to i32
  %24 = load i32, i32* %bi, align 4, !tbaa !5
  %and13 = and i32 %24, 7
  %sub14 = sub nsw i32 8, %and13
  %25 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %sub14, %25
  %shr16 = ashr i32 %conv12, %sub15
  %26 = load i32, i32* %mask, align 4, !tbaa !5
  %and17 = and i32 %shr16, %26
  store i32 %and17, i32* %value, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body.8
  %27 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %shr18 = ashr i32 %27, 2
  switch i32 %shr18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.32
    i32 2, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %do.body
  %28 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %29 = load i32, i32* %dbit, align 4, !tbaa !5
  %add = add nsw i32 %29, %28
  store i32 %add, i32* %dbit, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %add, 8
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %30 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv21 = zext i8 %30 to i32
  %31 = load i32, i32* %value, align 4, !tbaa !5
  %conv22 = trunc i32 %31 to i8
  %conv23 = zext i8 %conv22 to i32
  %or = or i32 %conv21, %conv23
  %conv24 = trunc i32 %or to i8
  %32 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %dptr, align 8, !tbaa !1
  store i8 %conv24, i8* %32, align 1, !tbaa !7
  store i8 0, i8* %dbbyte, align 1, !tbaa !7
  store i32 0, i32* %dbit, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %33 = load i32, i32* %value, align 4, !tbaa !5
  %34 = load i32, i32* %dbit, align 4, !tbaa !5
  %sub25 = sub nsw i32 8, %34
  %shl26 = shl i32 %33, %sub25
  %conv27 = trunc i32 %shl26 to i8
  %conv28 = zext i8 %conv27 to i32
  %35 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv29 = zext i8 %35 to i32
  %or30 = or i32 %conv29, %conv28
  %conv31 = trunc i32 %or30 to i8
  store i8 %conv31, i8* %dbbyte, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.32:                                         ; preds = %do.body
  %36 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor = xor i32 %36, 4
  store i32 %xor, i32* %dbit, align 4, !tbaa !5
  %tobool33 = icmp ne i32 %xor, 0
  br i1 %tobool33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %sw.bb.32
  %37 = load i32, i32* %value, align 4, !tbaa !5
  %shl35 = shl i32 %37, 4
  %conv36 = trunc i32 %shl35 to i8
  store i8 %conv36, i8* %dbbyte, align 1, !tbaa !7
  br label %if.end.44

if.else.37:                                       ; preds = %sw.bb.32
  %38 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv38 = zext i8 %38 to i32
  %39 = load i32, i32* %value, align 4, !tbaa !5
  %conv39 = trunc i32 %39 to i8
  %conv40 = zext i8 %conv39 to i32
  %or41 = or i32 %conv38, %conv40
  %conv42 = trunc i32 %or41 to i8
  %40 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr43, i8** %dptr, align 8, !tbaa !1
  store i8 %conv42, i8* %40, align 1, !tbaa !7
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.37, %if.then.34
  br label %sw.epilog

sw.bb.45:                                         ; preds = %do.body
  %41 = load i32, i32* %value, align 4, !tbaa !5
  %conv46 = trunc i32 %41 to i8
  %42 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr47 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr47, i8** %dptr, align 8, !tbaa !1
  store i8 %conv46, i8* %42, align 1, !tbaa !7
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.45, %if.end.44, %if.end
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.default
  %43 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %45 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end
  %46 = load i32, i32* %bits_per_sample.addr, align 4, !tbaa !5
  %47 = load i32, i32* %bi, align 4, !tbaa !5
  %add50 = add nsw i32 %47, %46
  store i32 %add50, i32* %bi, align 4, !tbaa !5
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  %48 = load i32, i32* %dbit, align 4, !tbaa !5
  %cmp52 = icmp ne i32 %48, 0
  br i1 %cmp52, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %for.end.51
  %49 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv55 = zext i8 %49 to i32
  %50 = load i8*, i8** %dptr, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !7
  %conv56 = zext i8 %51 to i32
  %52 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr57 = ashr i32 255, %52
  %and58 = and i32 %conv56, %shr57
  %or59 = or i32 %conv55, %and58
  %conv60 = trunc i32 %or59 to i8
  %53 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv60, i8* %53, align 1, !tbaa !7
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.54, %for.end.51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.end.61, %cleanup
  call void @llvm.lifetime.end(i64 1, i8* %dbbyte) #1
  %54 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal i32 @flipNx12(i8* %buffer, i8** %planes, i32 %offset, i32 %nbytes, i32 %num_planes, i32 %ignore_bits_per_sample) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %planes.addr = alloca i8**, align 8
  %offset.addr = alloca i32, align 4
  %nbytes.addr = alloca i32, align 4
  %num_planes.addr = alloca i32, align 4
  %ignore_bits_per_sample.addr = alloca i32, align 4
  %bi = alloca i32, align 4
  %pi = alloca i32, align 4
  %dptr = alloca i8*, align 8
  %dbit = alloca i32, align 4
  %dbbyte = alloca i8, align 1
  %sptr = alloca i8*, align 8
  %value = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8** %planes, i8*** %planes.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !5
  store i32 %ignore_bits_per_sample, i32* %ignore_bits_per_sample.addr, align 4, !tbaa !5
  %0 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %3, i8** %dptr, align 8, !tbaa !1
  %4 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %dbit, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %dbbyte) #1
  %5 = load i32, i32* %dbit, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i8*, i8** %dptr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !7
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr = ashr i32 65280, %8
  %and = and i32 %conv, %shr
  %conv1 = trunc i32 %and to i8
  %conv2 = zext i8 %conv1 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ 0, %cond.false ]
  %conv3 = trunc i32 %cond to i8
  store i8 %conv3, i8* %dbbyte, align 1, !tbaa !7
  store i32 0, i32* %bi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %cond.end
  %9 = load i32, i32* %bi, align 4, !tbaa !5
  %10 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %10, 8
  %cmp = icmp slt i32 %9, %mul
  br i1 %cmp, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %pi, align 4, !tbaa !5
  %12 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %13 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load i8**, i8*** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %17 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %18 = load i32, i32* %bi, align 4, !tbaa !5
  %shr9 = ashr i32 %18, 3
  %idx.ext10 = sext i32 %shr9 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext10
  store i8* %add.ptr11, i8** %sptr, align 8, !tbaa !1
  %19 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %bi, align 4, !tbaa !5
  %and12 = and i32 %20, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.19

cond.true.14:                                     ; preds = %for.body.8
  %21 = load i8*, i8** %sptr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %conv15 = zext i8 %22 to i32
  %and16 = and i32 %conv15, 15
  %shl = shl i32 %and16, 8
  %23 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv18 = zext i8 %24 to i32
  %or = or i32 %shl, %conv18
  br label %cond.end.26

cond.false.19:                                    ; preds = %for.body.8
  %25 = load i8*, i8** %sptr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !7
  %conv20 = zext i8 %26 to i32
  %shl21 = shl i32 %conv20, 4
  %27 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx22, align 1, !tbaa !7
  %conv23 = zext i8 %28 to i32
  %shr24 = ashr i32 %conv23, 4
  %or25 = or i32 %shl21, %shr24
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.19, %cond.true.14
  %cond27 = phi i32 [ %or, %cond.true.14 ], [ %or25, %cond.false.19 ]
  store i32 %cond27, i32* %value, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %cond.end.26
  %29 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor = xor i32 %29, 4
  store i32 %xor, i32* %dbit, align 4, !tbaa !5
  %tobool28 = icmp ne i32 %xor, 0
  br i1 %tobool28, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %30 = load i32, i32* %value, align 4, !tbaa !5
  %shr29 = lshr i32 %30, 4
  %conv30 = trunc i32 %shr29 to i8
  %31 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %dptr, align 8, !tbaa !1
  store i8 %conv30, i8* %31, align 1, !tbaa !7
  %32 = load i32, i32* %value, align 4, !tbaa !5
  %shl31 = shl i32 %32, 4
  %conv32 = trunc i32 %shl31 to i8
  store i8 %conv32, i8* %dbbyte, align 1, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %do.body
  %33 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv33 = zext i8 %33 to i32
  %34 = load i32, i32* %value, align 4, !tbaa !5
  %shr34 = lshr i32 %34, 8
  %conv35 = trunc i32 %shr34 to i8
  %conv36 = zext i8 %conv35 to i32
  %or37 = or i32 %conv33, %conv36
  %conv38 = trunc i32 %or37 to i8
  %35 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv38, i8* %35, align 1, !tbaa !7
  %36 = load i32, i32* %value, align 4, !tbaa !5
  %conv39 = trunc i32 %36 to i8
  %37 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 %conv39, i8* %arrayidx40, align 1, !tbaa !7
  %38 = load i8*, i8** %dptr, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i8, i8* %38, i64 2
  store i8* %add.ptr41, i8** %dptr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %39 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %41 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end
  %42 = load i32, i32* %bi, align 4, !tbaa !5
  %add = add nsw i32 %42, 12
  store i32 %add, i32* %bi, align 4, !tbaa !5
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %43 = load i32, i32* %dbit, align 4, !tbaa !5
  %cmp44 = icmp ne i32 %43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.53

if.then.46:                                       ; preds = %for.end.43
  %44 = load i8, i8* %dbbyte, align 1, !tbaa !7
  %conv47 = zext i8 %44 to i32
  %45 = load i8*, i8** %dptr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !7
  %conv48 = zext i8 %46 to i32
  %47 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr49 = ashr i32 255, %47
  %and50 = and i32 %conv48, %shr49
  %or51 = or i32 %conv47, %and50
  %conv52 = trunc i32 %or51 to i8
  %48 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv52, i8* %48, align 1, !tbaa !7
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.46, %for.end.43
  call void @llvm.lifetime.end(i64 1, i8* %dbbyte) #1
  %49 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
