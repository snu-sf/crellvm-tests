; ModuleID = './MultiSource.Benchmarks.MiBench/16.consumer-lame.reservoir.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }

@ResvSize = internal global i32 0, align 4
@ResvMax = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @ResvFrameBegin(%struct.lame_global_flags* %gfp, %struct.III_side_info_t* %l3_side, i32 %mean_bits, i32 %frameLength) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %mean_bits.addr = alloca i32, align 4
  %frameLength.addr = alloca i32, align 4
  %fullFrameBits = alloca i32, align 4
  %resvLimit = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store i32 %mean_bits, i32* %mean_bits.addr, align 4, !tbaa !5
  store i32 %frameLength, i32* %frameLength.addr, align 4, !tbaa !5
  %0 = bitcast i32* %fullFrameBits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %resvLimit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %frameNum = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2, i32 0, i32 39
  %3 = load i64, i64* %frameNum, align 8, !tbaa !7
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @ResvSize, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %4, i32 0, i32 43
  %5 = load i32, i32* %version, align 4, !tbaa !11
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 4088, i32* %resvLimit, align 4, !tbaa !5
  br label %if.end.3

if.else:                                          ; preds = %if.end
  store i32 2040, i32* %resvLimit, align 4, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %6 = load i32, i32* %mean_bits.addr, align 4, !tbaa !5
  %7 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %7, i32 0, i32 45
  %8 = load i32, i32* %mode_gr, align 4, !tbaa !12
  %mul = mul nsw i32 %6, %8
  %9 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %add = add nsw i32 %mul, %9
  store i32 %add, i32* %fullFrameBits, align 4, !tbaa !5
  %10 = load i32, i32* %frameLength.addr, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %10, 7680
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  store i32 0, i32* @ResvMax, align 4, !tbaa !5
  br label %if.end.7

if.else.6:                                        ; preds = %if.end.3
  %11 = load i32, i32* %frameLength.addr, align 4, !tbaa !5
  %sub = sub nsw i32 7680, %11
  store i32 %sub, i32* @ResvMax, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %if.then.5
  %12 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %12, i32 0, i32 17
  %13 = load i32, i32* %disable_reservoir, align 4, !tbaa !13
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.7
  store i32 0, i32* @ResvMax, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.7
  %14 = load i32, i32* @ResvMax, align 4, !tbaa !5
  %15 = load i32, i32* %resvLimit, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %14, %15
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %16 = load i32, i32* %resvLimit, align 4, !tbaa !5
  store i32 %16, i32* @ResvMax, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %17 = load i32, i32* %fullFrameBits, align 4, !tbaa !5
  %18 = bitcast i32* %resvLimit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %fullFrameBits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret i32 %17
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @ResvMaxBits(i32 %mean_bits, i32* %targ_bits, i32* %extra_bits, i32 %gr) #0 {
entry:
  %mean_bits.addr = alloca i32, align 4
  %targ_bits.addr = alloca i32*, align 8
  %extra_bits.addr = alloca i32*, align 8
  %gr.addr = alloca i32, align 4
  %add_bits = alloca i32, align 4
  store i32 %mean_bits, i32* %mean_bits.addr, align 4, !tbaa !5
  store i32* %targ_bits, i32** %targ_bits.addr, align 8, !tbaa !1
  store i32* %extra_bits, i32** %extra_bits.addr, align 8, !tbaa !1
  store i32 %gr, i32* %gr.addr, align 4, !tbaa !5
  %0 = bitcast i32* %add_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %mean_bits.addr, align 4, !tbaa !5
  %2 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  store i32 %1, i32* %2, align 4, !tbaa !5
  %3 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %4 = load i32, i32* @ResvMax, align 4, !tbaa !5
  %mul = mul nsw i32 %4, 9
  %div = sdiv i32 %mul, 10
  %cmp = icmp sgt i32 %3, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %6 = load i32, i32* @ResvMax, align 4, !tbaa !5
  %mul1 = mul nsw i32 %6, 9
  %div2 = sdiv i32 %mul1, 10
  %sub = sub nsw i32 %5, %div2
  store i32 %sub, i32* %add_bits, align 4, !tbaa !5
  %7 = load i32, i32* %add_bits, align 4, !tbaa !5
  %8 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %add = add nsw i32 %9, %7
  store i32 %add, i32* %8, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %add_bits, align 4, !tbaa !5
  %10 = load i32, i32* %mean_bits.addr, align 4, !tbaa !5
  %conv = sitofp i32 %10 to double
  %div3 = fdiv double %conv, 1.520000e+01
  %conv4 = fptosi double %div3 to i32
  %11 = load i32*, i32** %targ_bits.addr, align 8, !tbaa !1
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %sub5 = sub nsw i32 %12, %conv4
  store i32 %sub5, i32* %11, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %14 = load i32, i32* @ResvMax, align 4, !tbaa !5
  %mul6 = mul nsw i32 %14, 6
  %div7 = sdiv i32 %mul6, 10
  %cmp8 = icmp slt i32 %13, %div7
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i32, i32* @ResvSize, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %16 = load i32, i32* @ResvMax, align 4, !tbaa !5
  %mul10 = mul nsw i32 %16, 6
  %div11 = sdiv i32 %mul10, 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %div11, %cond.false ]
  %17 = load i32*, i32** %extra_bits.addr, align 8, !tbaa !1
  store i32 %cond, i32* %17, align 4, !tbaa !5
  %18 = load i32, i32* %add_bits, align 4, !tbaa !5
  %19 = load i32*, i32** %extra_bits.addr, align 8, !tbaa !1
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %sub12 = sub nsw i32 %20, %18
  store i32 %sub12, i32* %19, align 4, !tbaa !5
  %21 = load i32*, i32** %extra_bits.addr, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %22, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.end
  %23 = load i32*, i32** %extra_bits.addr, align 8, !tbaa !1
  store i32 0, i32* %23, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %cond.end
  %24 = bitcast i32* %add_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResvAdjust(%struct.lame_global_flags* %gfp, %struct.gr_info* %gi, %struct.III_side_info_t* %l3_side, i32 %mean_bits) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %gi.addr = alloca %struct.gr_info*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %mean_bits.addr = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store %struct.gr_info* %gi, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store i32 %mean_bits, i32* %mean_bits.addr, align 4, !tbaa !5
  %0 = load i32, i32* %mean_bits.addr, align 4, !tbaa !5
  %1 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1, i32 0, i32 46
  %2 = load i32, i32* %stereo, align 4, !tbaa !14
  %div = sdiv i32 %0, %2
  %3 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !1
  %part2_3_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %3, i32 0, i32 0
  %4 = load i32, i32* %part2_3_length, align 4, !tbaa !15
  %sub = sub i32 %div, %4
  %5 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %add = add i32 %5, %sub
  store i32 %add, i32* @ResvSize, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResvFrameEnd(%struct.lame_global_flags* %gfp, %struct.III_side_info_t* %l3_side, i32 %mean_bits) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %mean_bits.addr = alloca i32, align 4
  %stuffingBits = alloca i32, align 4
  %over_bits = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  store i32 %mean_bits, i32* %mean_bits.addr, align 4, !tbaa !5
  %0 = bitcast i32* %stuffingBits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %over_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %2, i32 0, i32 46
  %3 = load i32, i32* %stereo, align 4, !tbaa !14
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %mean_bits.addr, align 4, !tbaa !5
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %add = add nsw i32 %5, 1
  store i32 %add, i32* @ResvSize, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %7 = load i32, i32* @ResvMax, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %7
  store i32 %sub, i32* %over_bits, align 4, !tbaa !5
  %8 = load i32, i32* %over_bits, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %over_bits, align 4, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load i32, i32* %over_bits, align 4, !tbaa !5
  %10 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %sub4 = sub nsw i32 %10, %9
  store i32 %sub4, i32* @ResvSize, align 4, !tbaa !5
  %11 = load i32, i32* %over_bits, align 4, !tbaa !5
  store i32 %11, i32* %stuffingBits, align 4, !tbaa !5
  %12 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %rem = srem i32 %12, 8
  store i32 %rem, i32* %over_bits, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %rem, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.3
  %13 = load i32, i32* %over_bits, align 4, !tbaa !5
  %14 = load i32, i32* %stuffingBits, align 4, !tbaa !5
  %add7 = add nsw i32 %14, %13
  store i32 %add7, i32* %stuffingBits, align 4, !tbaa !5
  %15 = load i32, i32* %over_bits, align 4, !tbaa !5
  %16 = load i32, i32* @ResvSize, align 4, !tbaa !5
  %sub8 = sub nsw i32 %16, %15
  store i32 %sub8, i32* @ResvSize, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.3
  %17 = load i32, i32* %stuffingBits, align 4, !tbaa !5
  %18 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !1
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %18, i32 0, i32 2
  store i32 %17, i32* %resvDrain, align 4, !tbaa !17
  %19 = bitcast i32* %over_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %stuffingBits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !9, i64 168}
!8 = !{!"", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !3, i64 120, !6, i64 124, !2, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !10, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !9, i64 168, !9, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !10, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!9 = !{!"long", !3, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!8, !6, i64 192}
!12 = !{!8, !6, i64 200}
!13 = !{!8, !6, i64 72}
!14 = !{!8, !6, i64 204}
!15 = !{!16, !6, i64 0}
!16 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !3, i64 32, !3, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !2, i64 96, !3, i64 104}
!17 = !{!18, !6, i64 8}
!18 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 48}
