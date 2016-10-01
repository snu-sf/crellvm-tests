; ModuleID = './MultiSource.Benchmarks.MiBench/187.telecomm-gsm.rpe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@gsm_NRFAC = external global [8 x i16], align 16
@gsm_FAC = external global [8 x i16], align 16

; Function Attrs: nounwind uwtable
define void @Gsm_RPE_Encoding(%struct.gsm_state* %S, i16* %e, i16* %xmaxc, i16* %Mc, i16* %xMc) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %e.addr = alloca i16*, align 8
  %xmaxc.addr = alloca i16*, align 8
  %Mc.addr = alloca i16*, align 8
  %xMc.addr = alloca i16*, align 8
  %x = alloca [40 x i16], align 16
  %xM = alloca [13 x i16], align 16
  %xMp = alloca [13 x i16], align 16
  %mant = alloca i16, align 2
  %exp = alloca i16, align 2
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %e, i16** %e.addr, align 8
  store i16* %xmaxc, i16** %xmaxc.addr, align 8
  store i16* %Mc, i16** %Mc.addr, align 8
  store i16* %xMc, i16** %xMc.addr, align 8
  %0 = load i16*, i16** %e.addr, align 8
  %arraydecay = getelementptr inbounds [40 x i16], [40 x i16]* %x, i32 0, i32 0
  call void @Weighting_filter(i16* %0, i16* %arraydecay)
  %arraydecay1 = getelementptr inbounds [40 x i16], [40 x i16]* %x, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [13 x i16], [13 x i16]* %xM, i32 0, i32 0
  %1 = load i16*, i16** %Mc.addr, align 8
  call void @RPE_grid_selection(i16* %arraydecay1, i16* %arraydecay2, i16* %1)
  %arraydecay3 = getelementptr inbounds [13 x i16], [13 x i16]* %xM, i32 0, i32 0
  %2 = load i16*, i16** %xMc.addr, align 8
  %3 = load i16*, i16** %xmaxc.addr, align 8
  call void @APCM_quantization(i16* %arraydecay3, i16* %2, i16* %mant, i16* %exp, i16* %3)
  %4 = load i16*, i16** %xMc.addr, align 8
  %5 = load i16, i16* %mant, align 2
  %6 = load i16, i16* %exp, align 2
  %arraydecay4 = getelementptr inbounds [13 x i16], [13 x i16]* %xMp, i32 0, i32 0
  call void @APCM_inverse_quantization(i16* %4, i16 signext %5, i16 signext %6, i16* %arraydecay4)
  %7 = load i16*, i16** %Mc.addr, align 8
  %8 = load i16, i16* %7, align 2
  %arraydecay5 = getelementptr inbounds [13 x i16], [13 x i16]* %xMp, i32 0, i32 0
  %9 = load i16*, i16** %e.addr, align 8
  call void @RPE_grid_positioning(i16 signext %8, i16* %arraydecay5, i16* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Weighting_filter(i16* %e, i16* %x) #0 {
entry:
  %e.addr = alloca i16*, align 8
  %x.addr = alloca i16*, align 8
  %L_result = alloca i64, align 8
  %k = alloca i32, align 4
  store i16* %e, i16** %e.addr, align 8
  store i16* %x, i16** %x.addr, align 8
  %0 = load i16*, i16** %e.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 -5
  store i16* %add.ptr, i16** %e.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %1, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 4096, i64* %L_result, align 8
  %2 = load i32, i32* %k, align 4
  %add = add nsw i32 %2, 0
  %idxprom = sext i32 %add to i64
  %3 = load i16*, i16** %e.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i64
  %mul = mul nsw i64 %conv, -134
  %5 = load i64, i64* %L_result, align 8
  %add1 = add nsw i64 %5, %mul
  store i64 %add1, i64* %L_result, align 8
  %6 = load i32, i32* %k, align 4
  %add2 = add nsw i32 %6, 1
  %idxprom3 = sext i32 %add2 to i64
  %7 = load i16*, i16** %e.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %7, i64 %idxprom3
  %8 = load i16, i16* %arrayidx4, align 2
  %conv5 = sext i16 %8 to i64
  %mul6 = mul nsw i64 %conv5, -374
  %9 = load i64, i64* %L_result, align 8
  %add7 = add nsw i64 %9, %mul6
  store i64 %add7, i64* %L_result, align 8
  %10 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %10, 3
  %idxprom9 = sext i32 %add8 to i64
  %11 = load i16*, i16** %e.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %11, i64 %idxprom9
  %12 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %12 to i64
  %mul12 = mul nsw i64 %conv11, 2054
  %13 = load i64, i64* %L_result, align 8
  %add13 = add nsw i64 %13, %mul12
  store i64 %add13, i64* %L_result, align 8
  %14 = load i32, i32* %k, align 4
  %add14 = add nsw i32 %14, 4
  %idxprom15 = sext i32 %add14 to i64
  %15 = load i16*, i16** %e.addr, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %15, i64 %idxprom15
  %16 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %16 to i64
  %mul18 = mul nsw i64 %conv17, 5741
  %17 = load i64, i64* %L_result, align 8
  %add19 = add nsw i64 %17, %mul18
  store i64 %add19, i64* %L_result, align 8
  %18 = load i32, i32* %k, align 4
  %add20 = add nsw i32 %18, 5
  %idxprom21 = sext i32 %add20 to i64
  %19 = load i16*, i16** %e.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %19, i64 %idxprom21
  %20 = load i16, i16* %arrayidx22, align 2
  %conv23 = sext i16 %20 to i64
  %mul24 = mul nsw i64 %conv23, 8192
  %21 = load i64, i64* %L_result, align 8
  %add25 = add nsw i64 %21, %mul24
  store i64 %add25, i64* %L_result, align 8
  %22 = load i32, i32* %k, align 4
  %add26 = add nsw i32 %22, 6
  %idxprom27 = sext i32 %add26 to i64
  %23 = load i16*, i16** %e.addr, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %23, i64 %idxprom27
  %24 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %24 to i64
  %mul30 = mul nsw i64 %conv29, 5741
  %25 = load i64, i64* %L_result, align 8
  %add31 = add nsw i64 %25, %mul30
  store i64 %add31, i64* %L_result, align 8
  %26 = load i32, i32* %k, align 4
  %add32 = add nsw i32 %26, 7
  %idxprom33 = sext i32 %add32 to i64
  %27 = load i16*, i16** %e.addr, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %27, i64 %idxprom33
  %28 = load i16, i16* %arrayidx34, align 2
  %conv35 = sext i16 %28 to i64
  %mul36 = mul nsw i64 %conv35, 2054
  %29 = load i64, i64* %L_result, align 8
  %add37 = add nsw i64 %29, %mul36
  store i64 %add37, i64* %L_result, align 8
  %30 = load i32, i32* %k, align 4
  %add38 = add nsw i32 %30, 9
  %idxprom39 = sext i32 %add38 to i64
  %31 = load i16*, i16** %e.addr, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %31, i64 %idxprom39
  %32 = load i16, i16* %arrayidx40, align 2
  %conv41 = sext i16 %32 to i64
  %mul42 = mul nsw i64 %conv41, -374
  %33 = load i64, i64* %L_result, align 8
  %add43 = add nsw i64 %33, %mul42
  store i64 %add43, i64* %L_result, align 8
  %34 = load i32, i32* %k, align 4
  %add44 = add nsw i32 %34, 10
  %idxprom45 = sext i32 %add44 to i64
  %35 = load i16*, i16** %e.addr, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %35, i64 %idxprom45
  %36 = load i16, i16* %arrayidx46, align 2
  %conv47 = sext i16 %36 to i64
  %mul48 = mul nsw i64 %conv47, -134
  %37 = load i64, i64* %L_result, align 8
  %add49 = add nsw i64 %37, %mul48
  store i64 %add49, i64* %L_result, align 8
  %38 = load i64, i64* %L_result, align 8
  %shr = ashr i64 %38, 13
  store i64 %shr, i64* %L_result, align 8
  %39 = load i64, i64* %L_result, align 8
  %cmp50 = icmp slt i64 %39, -32768
  br i1 %cmp50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.56

cond.false:                                       ; preds = %for.body
  %40 = load i64, i64* %L_result, align 8
  %cmp52 = icmp sgt i64 %40, 32767
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.false
  br label %cond.end

cond.false.55:                                    ; preds = %cond.false
  %41 = load i64, i64* %L_result, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.55, %cond.true.54
  %cond = phi i64 [ 32767, %cond.true.54 ], [ %41, %cond.false.55 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end, %cond.true
  %cond57 = phi i64 [ -32768, %cond.true ], [ %cond, %cond.end ]
  %conv58 = trunc i64 %cond57 to i16
  %42 = load i32, i32* %k, align 4
  %idxprom59 = sext i32 %42 to i64
  %43 = load i16*, i16** %x.addr, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %43, i64 %idxprom59
  store i16 %conv58, i16* %arrayidx60, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.56
  %44 = load i32, i32* %k, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RPE_grid_selection(i16* %x, i16* %xM, i16* %Mc_out) #0 {
entry:
  %x.addr = alloca i16*, align 8
  %xM.addr = alloca i16*, align 8
  %Mc_out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %L_result = alloca i64, align 8
  %L_temp = alloca i64, align 8
  %EM = alloca i64, align 8
  %Mc = alloca i16, align 2
  %L_common_0_3 = alloca i64, align 8
  store i16* %x, i16** %x.addr, align 8
  store i16* %xM, i16** %xM.addr, align 8
  store i16* %Mc_out, i16** %Mc_out.addr, align 8
  store i64 0, i64* %EM, align 8
  store i16 0, i16* %Mc, align 2
  store i64 0, i64* %L_result, align 8
  %0 = load i16*, i16** %x.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 3
  %1 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %shr = ashr i32 %conv, 2
  %conv1 = sext i32 %shr to i64
  store i64 %conv1, i64* %L_temp, align 8
  %2 = load i64, i64* %L_temp, align 8
  %3 = load i64, i64* %L_temp, align 8
  %mul = mul nsw i64 %2, %3
  %4 = load i64, i64* %L_result, align 8
  %add = add nsw i64 %4, %mul
  store i64 %add, i64* %L_result, align 8
  %5 = load i16*, i16** %x.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 6
  %6 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %6 to i32
  %shr4 = ashr i32 %conv3, 2
  %conv5 = sext i32 %shr4 to i64
  store i64 %conv5, i64* %L_temp, align 8
  %7 = load i64, i64* %L_temp, align 8
  %8 = load i64, i64* %L_temp, align 8
  %mul6 = mul nsw i64 %7, %8
  %9 = load i64, i64* %L_result, align 8
  %add7 = add nsw i64 %9, %mul6
  store i64 %add7, i64* %L_result, align 8
  %10 = load i16*, i16** %x.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %10, i64 9
  %11 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %11 to i32
  %shr10 = ashr i32 %conv9, 2
  %conv11 = sext i32 %shr10 to i64
  store i64 %conv11, i64* %L_temp, align 8
  %12 = load i64, i64* %L_temp, align 8
  %13 = load i64, i64* %L_temp, align 8
  %mul12 = mul nsw i64 %12, %13
  %14 = load i64, i64* %L_result, align 8
  %add13 = add nsw i64 %14, %mul12
  store i64 %add13, i64* %L_result, align 8
  %15 = load i16*, i16** %x.addr, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %15, i64 12
  %16 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %16 to i32
  %shr16 = ashr i32 %conv15, 2
  %conv17 = sext i32 %shr16 to i64
  store i64 %conv17, i64* %L_temp, align 8
  %17 = load i64, i64* %L_temp, align 8
  %18 = load i64, i64* %L_temp, align 8
  %mul18 = mul nsw i64 %17, %18
  %19 = load i64, i64* %L_result, align 8
  %add19 = add nsw i64 %19, %mul18
  store i64 %add19, i64* %L_result, align 8
  %20 = load i16*, i16** %x.addr, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %20, i64 15
  %21 = load i16, i16* %arrayidx20, align 2
  %conv21 = sext i16 %21 to i32
  %shr22 = ashr i32 %conv21, 2
  %conv23 = sext i32 %shr22 to i64
  store i64 %conv23, i64* %L_temp, align 8
  %22 = load i64, i64* %L_temp, align 8
  %23 = load i64, i64* %L_temp, align 8
  %mul24 = mul nsw i64 %22, %23
  %24 = load i64, i64* %L_result, align 8
  %add25 = add nsw i64 %24, %mul24
  store i64 %add25, i64* %L_result, align 8
  %25 = load i16*, i16** %x.addr, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %25, i64 18
  %26 = load i16, i16* %arrayidx26, align 2
  %conv27 = sext i16 %26 to i32
  %shr28 = ashr i32 %conv27, 2
  %conv29 = sext i32 %shr28 to i64
  store i64 %conv29, i64* %L_temp, align 8
  %27 = load i64, i64* %L_temp, align 8
  %28 = load i64, i64* %L_temp, align 8
  %mul30 = mul nsw i64 %27, %28
  %29 = load i64, i64* %L_result, align 8
  %add31 = add nsw i64 %29, %mul30
  store i64 %add31, i64* %L_result, align 8
  %30 = load i16*, i16** %x.addr, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %30, i64 21
  %31 = load i16, i16* %arrayidx32, align 2
  %conv33 = sext i16 %31 to i32
  %shr34 = ashr i32 %conv33, 2
  %conv35 = sext i32 %shr34 to i64
  store i64 %conv35, i64* %L_temp, align 8
  %32 = load i64, i64* %L_temp, align 8
  %33 = load i64, i64* %L_temp, align 8
  %mul36 = mul nsw i64 %32, %33
  %34 = load i64, i64* %L_result, align 8
  %add37 = add nsw i64 %34, %mul36
  store i64 %add37, i64* %L_result, align 8
  %35 = load i16*, i16** %x.addr, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %35, i64 24
  %36 = load i16, i16* %arrayidx38, align 2
  %conv39 = sext i16 %36 to i32
  %shr40 = ashr i32 %conv39, 2
  %conv41 = sext i32 %shr40 to i64
  store i64 %conv41, i64* %L_temp, align 8
  %37 = load i64, i64* %L_temp, align 8
  %38 = load i64, i64* %L_temp, align 8
  %mul42 = mul nsw i64 %37, %38
  %39 = load i64, i64* %L_result, align 8
  %add43 = add nsw i64 %39, %mul42
  store i64 %add43, i64* %L_result, align 8
  %40 = load i16*, i16** %x.addr, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %40, i64 27
  %41 = load i16, i16* %arrayidx44, align 2
  %conv45 = sext i16 %41 to i32
  %shr46 = ashr i32 %conv45, 2
  %conv47 = sext i32 %shr46 to i64
  store i64 %conv47, i64* %L_temp, align 8
  %42 = load i64, i64* %L_temp, align 8
  %43 = load i64, i64* %L_temp, align 8
  %mul48 = mul nsw i64 %42, %43
  %44 = load i64, i64* %L_result, align 8
  %add49 = add nsw i64 %44, %mul48
  store i64 %add49, i64* %L_result, align 8
  %45 = load i16*, i16** %x.addr, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %45, i64 30
  %46 = load i16, i16* %arrayidx50, align 2
  %conv51 = sext i16 %46 to i32
  %shr52 = ashr i32 %conv51, 2
  %conv53 = sext i32 %shr52 to i64
  store i64 %conv53, i64* %L_temp, align 8
  %47 = load i64, i64* %L_temp, align 8
  %48 = load i64, i64* %L_temp, align 8
  %mul54 = mul nsw i64 %47, %48
  %49 = load i64, i64* %L_result, align 8
  %add55 = add nsw i64 %49, %mul54
  store i64 %add55, i64* %L_result, align 8
  %50 = load i16*, i16** %x.addr, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %50, i64 33
  %51 = load i16, i16* %arrayidx56, align 2
  %conv57 = sext i16 %51 to i32
  %shr58 = ashr i32 %conv57, 2
  %conv59 = sext i32 %shr58 to i64
  store i64 %conv59, i64* %L_temp, align 8
  %52 = load i64, i64* %L_temp, align 8
  %53 = load i64, i64* %L_temp, align 8
  %mul60 = mul nsw i64 %52, %53
  %54 = load i64, i64* %L_result, align 8
  %add61 = add nsw i64 %54, %mul60
  store i64 %add61, i64* %L_result, align 8
  %55 = load i16*, i16** %x.addr, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %55, i64 36
  %56 = load i16, i16* %arrayidx62, align 2
  %conv63 = sext i16 %56 to i32
  %shr64 = ashr i32 %conv63, 2
  %conv65 = sext i32 %shr64 to i64
  store i64 %conv65, i64* %L_temp, align 8
  %57 = load i64, i64* %L_temp, align 8
  %58 = load i64, i64* %L_temp, align 8
  %mul66 = mul nsw i64 %57, %58
  %59 = load i64, i64* %L_result, align 8
  %add67 = add nsw i64 %59, %mul66
  store i64 %add67, i64* %L_result, align 8
  %60 = load i64, i64* %L_result, align 8
  store i64 %60, i64* %L_common_0_3, align 8
  %61 = load i16*, i16** %x.addr, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %61, i64 0
  %62 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %62 to i32
  %shr70 = ashr i32 %conv69, 2
  %conv71 = sext i32 %shr70 to i64
  store i64 %conv71, i64* %L_temp, align 8
  %63 = load i64, i64* %L_temp, align 8
  %64 = load i64, i64* %L_temp, align 8
  %mul72 = mul nsw i64 %63, %64
  %65 = load i64, i64* %L_result, align 8
  %add73 = add nsw i64 %65, %mul72
  store i64 %add73, i64* %L_result, align 8
  %66 = load i64, i64* %L_result, align 8
  %shl = shl i64 %66, 1
  store i64 %shl, i64* %L_result, align 8
  %67 = load i64, i64* %L_result, align 8
  store i64 %67, i64* %EM, align 8
  store i64 0, i64* %L_result, align 8
  %68 = load i16*, i16** %x.addr, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %68, i64 1
  %69 = load i16, i16* %arrayidx74, align 2
  %conv75 = sext i16 %69 to i32
  %shr76 = ashr i32 %conv75, 2
  %conv77 = sext i32 %shr76 to i64
  store i64 %conv77, i64* %L_temp, align 8
  %70 = load i64, i64* %L_temp, align 8
  %71 = load i64, i64* %L_temp, align 8
  %mul78 = mul nsw i64 %70, %71
  %72 = load i64, i64* %L_result, align 8
  %add79 = add nsw i64 %72, %mul78
  store i64 %add79, i64* %L_result, align 8
  %73 = load i16*, i16** %x.addr, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %73, i64 4
  %74 = load i16, i16* %arrayidx80, align 2
  %conv81 = sext i16 %74 to i32
  %shr82 = ashr i32 %conv81, 2
  %conv83 = sext i32 %shr82 to i64
  store i64 %conv83, i64* %L_temp, align 8
  %75 = load i64, i64* %L_temp, align 8
  %76 = load i64, i64* %L_temp, align 8
  %mul84 = mul nsw i64 %75, %76
  %77 = load i64, i64* %L_result, align 8
  %add85 = add nsw i64 %77, %mul84
  store i64 %add85, i64* %L_result, align 8
  %78 = load i16*, i16** %x.addr, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %78, i64 7
  %79 = load i16, i16* %arrayidx86, align 2
  %conv87 = sext i16 %79 to i32
  %shr88 = ashr i32 %conv87, 2
  %conv89 = sext i32 %shr88 to i64
  store i64 %conv89, i64* %L_temp, align 8
  %80 = load i64, i64* %L_temp, align 8
  %81 = load i64, i64* %L_temp, align 8
  %mul90 = mul nsw i64 %80, %81
  %82 = load i64, i64* %L_result, align 8
  %add91 = add nsw i64 %82, %mul90
  store i64 %add91, i64* %L_result, align 8
  %83 = load i16*, i16** %x.addr, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %83, i64 10
  %84 = load i16, i16* %arrayidx92, align 2
  %conv93 = sext i16 %84 to i32
  %shr94 = ashr i32 %conv93, 2
  %conv95 = sext i32 %shr94 to i64
  store i64 %conv95, i64* %L_temp, align 8
  %85 = load i64, i64* %L_temp, align 8
  %86 = load i64, i64* %L_temp, align 8
  %mul96 = mul nsw i64 %85, %86
  %87 = load i64, i64* %L_result, align 8
  %add97 = add nsw i64 %87, %mul96
  store i64 %add97, i64* %L_result, align 8
  %88 = load i16*, i16** %x.addr, align 8
  %arrayidx98 = getelementptr inbounds i16, i16* %88, i64 13
  %89 = load i16, i16* %arrayidx98, align 2
  %conv99 = sext i16 %89 to i32
  %shr100 = ashr i32 %conv99, 2
  %conv101 = sext i32 %shr100 to i64
  store i64 %conv101, i64* %L_temp, align 8
  %90 = load i64, i64* %L_temp, align 8
  %91 = load i64, i64* %L_temp, align 8
  %mul102 = mul nsw i64 %90, %91
  %92 = load i64, i64* %L_result, align 8
  %add103 = add nsw i64 %92, %mul102
  store i64 %add103, i64* %L_result, align 8
  %93 = load i16*, i16** %x.addr, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %93, i64 16
  %94 = load i16, i16* %arrayidx104, align 2
  %conv105 = sext i16 %94 to i32
  %shr106 = ashr i32 %conv105, 2
  %conv107 = sext i32 %shr106 to i64
  store i64 %conv107, i64* %L_temp, align 8
  %95 = load i64, i64* %L_temp, align 8
  %96 = load i64, i64* %L_temp, align 8
  %mul108 = mul nsw i64 %95, %96
  %97 = load i64, i64* %L_result, align 8
  %add109 = add nsw i64 %97, %mul108
  store i64 %add109, i64* %L_result, align 8
  %98 = load i16*, i16** %x.addr, align 8
  %arrayidx110 = getelementptr inbounds i16, i16* %98, i64 19
  %99 = load i16, i16* %arrayidx110, align 2
  %conv111 = sext i16 %99 to i32
  %shr112 = ashr i32 %conv111, 2
  %conv113 = sext i32 %shr112 to i64
  store i64 %conv113, i64* %L_temp, align 8
  %100 = load i64, i64* %L_temp, align 8
  %101 = load i64, i64* %L_temp, align 8
  %mul114 = mul nsw i64 %100, %101
  %102 = load i64, i64* %L_result, align 8
  %add115 = add nsw i64 %102, %mul114
  store i64 %add115, i64* %L_result, align 8
  %103 = load i16*, i16** %x.addr, align 8
  %arrayidx116 = getelementptr inbounds i16, i16* %103, i64 22
  %104 = load i16, i16* %arrayidx116, align 2
  %conv117 = sext i16 %104 to i32
  %shr118 = ashr i32 %conv117, 2
  %conv119 = sext i32 %shr118 to i64
  store i64 %conv119, i64* %L_temp, align 8
  %105 = load i64, i64* %L_temp, align 8
  %106 = load i64, i64* %L_temp, align 8
  %mul120 = mul nsw i64 %105, %106
  %107 = load i64, i64* %L_result, align 8
  %add121 = add nsw i64 %107, %mul120
  store i64 %add121, i64* %L_result, align 8
  %108 = load i16*, i16** %x.addr, align 8
  %arrayidx122 = getelementptr inbounds i16, i16* %108, i64 25
  %109 = load i16, i16* %arrayidx122, align 2
  %conv123 = sext i16 %109 to i32
  %shr124 = ashr i32 %conv123, 2
  %conv125 = sext i32 %shr124 to i64
  store i64 %conv125, i64* %L_temp, align 8
  %110 = load i64, i64* %L_temp, align 8
  %111 = load i64, i64* %L_temp, align 8
  %mul126 = mul nsw i64 %110, %111
  %112 = load i64, i64* %L_result, align 8
  %add127 = add nsw i64 %112, %mul126
  store i64 %add127, i64* %L_result, align 8
  %113 = load i16*, i16** %x.addr, align 8
  %arrayidx128 = getelementptr inbounds i16, i16* %113, i64 28
  %114 = load i16, i16* %arrayidx128, align 2
  %conv129 = sext i16 %114 to i32
  %shr130 = ashr i32 %conv129, 2
  %conv131 = sext i32 %shr130 to i64
  store i64 %conv131, i64* %L_temp, align 8
  %115 = load i64, i64* %L_temp, align 8
  %116 = load i64, i64* %L_temp, align 8
  %mul132 = mul nsw i64 %115, %116
  %117 = load i64, i64* %L_result, align 8
  %add133 = add nsw i64 %117, %mul132
  store i64 %add133, i64* %L_result, align 8
  %118 = load i16*, i16** %x.addr, align 8
  %arrayidx134 = getelementptr inbounds i16, i16* %118, i64 31
  %119 = load i16, i16* %arrayidx134, align 2
  %conv135 = sext i16 %119 to i32
  %shr136 = ashr i32 %conv135, 2
  %conv137 = sext i32 %shr136 to i64
  store i64 %conv137, i64* %L_temp, align 8
  %120 = load i64, i64* %L_temp, align 8
  %121 = load i64, i64* %L_temp, align 8
  %mul138 = mul nsw i64 %120, %121
  %122 = load i64, i64* %L_result, align 8
  %add139 = add nsw i64 %122, %mul138
  store i64 %add139, i64* %L_result, align 8
  %123 = load i16*, i16** %x.addr, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %123, i64 34
  %124 = load i16, i16* %arrayidx140, align 2
  %conv141 = sext i16 %124 to i32
  %shr142 = ashr i32 %conv141, 2
  %conv143 = sext i32 %shr142 to i64
  store i64 %conv143, i64* %L_temp, align 8
  %125 = load i64, i64* %L_temp, align 8
  %126 = load i64, i64* %L_temp, align 8
  %mul144 = mul nsw i64 %125, %126
  %127 = load i64, i64* %L_result, align 8
  %add145 = add nsw i64 %127, %mul144
  store i64 %add145, i64* %L_result, align 8
  %128 = load i16*, i16** %x.addr, align 8
  %arrayidx146 = getelementptr inbounds i16, i16* %128, i64 37
  %129 = load i16, i16* %arrayidx146, align 2
  %conv147 = sext i16 %129 to i32
  %shr148 = ashr i32 %conv147, 2
  %conv149 = sext i32 %shr148 to i64
  store i64 %conv149, i64* %L_temp, align 8
  %130 = load i64, i64* %L_temp, align 8
  %131 = load i64, i64* %L_temp, align 8
  %mul150 = mul nsw i64 %130, %131
  %132 = load i64, i64* %L_result, align 8
  %add151 = add nsw i64 %132, %mul150
  store i64 %add151, i64* %L_result, align 8
  %133 = load i64, i64* %L_result, align 8
  %shl152 = shl i64 %133, 1
  store i64 %shl152, i64* %L_result, align 8
  %134 = load i64, i64* %L_result, align 8
  %135 = load i64, i64* %EM, align 8
  %cmp = icmp sgt i64 %134, %135
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 1, i16* %Mc, align 2
  %136 = load i64, i64* %L_result, align 8
  store i64 %136, i64* %EM, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %L_result, align 8
  %137 = load i16*, i16** %x.addr, align 8
  %arrayidx154 = getelementptr inbounds i16, i16* %137, i64 2
  %138 = load i16, i16* %arrayidx154, align 2
  %conv155 = sext i16 %138 to i32
  %shr156 = ashr i32 %conv155, 2
  %conv157 = sext i32 %shr156 to i64
  store i64 %conv157, i64* %L_temp, align 8
  %139 = load i64, i64* %L_temp, align 8
  %140 = load i64, i64* %L_temp, align 8
  %mul158 = mul nsw i64 %139, %140
  %141 = load i64, i64* %L_result, align 8
  %add159 = add nsw i64 %141, %mul158
  store i64 %add159, i64* %L_result, align 8
  %142 = load i16*, i16** %x.addr, align 8
  %arrayidx160 = getelementptr inbounds i16, i16* %142, i64 5
  %143 = load i16, i16* %arrayidx160, align 2
  %conv161 = sext i16 %143 to i32
  %shr162 = ashr i32 %conv161, 2
  %conv163 = sext i32 %shr162 to i64
  store i64 %conv163, i64* %L_temp, align 8
  %144 = load i64, i64* %L_temp, align 8
  %145 = load i64, i64* %L_temp, align 8
  %mul164 = mul nsw i64 %144, %145
  %146 = load i64, i64* %L_result, align 8
  %add165 = add nsw i64 %146, %mul164
  store i64 %add165, i64* %L_result, align 8
  %147 = load i16*, i16** %x.addr, align 8
  %arrayidx166 = getelementptr inbounds i16, i16* %147, i64 8
  %148 = load i16, i16* %arrayidx166, align 2
  %conv167 = sext i16 %148 to i32
  %shr168 = ashr i32 %conv167, 2
  %conv169 = sext i32 %shr168 to i64
  store i64 %conv169, i64* %L_temp, align 8
  %149 = load i64, i64* %L_temp, align 8
  %150 = load i64, i64* %L_temp, align 8
  %mul170 = mul nsw i64 %149, %150
  %151 = load i64, i64* %L_result, align 8
  %add171 = add nsw i64 %151, %mul170
  store i64 %add171, i64* %L_result, align 8
  %152 = load i16*, i16** %x.addr, align 8
  %arrayidx172 = getelementptr inbounds i16, i16* %152, i64 11
  %153 = load i16, i16* %arrayidx172, align 2
  %conv173 = sext i16 %153 to i32
  %shr174 = ashr i32 %conv173, 2
  %conv175 = sext i32 %shr174 to i64
  store i64 %conv175, i64* %L_temp, align 8
  %154 = load i64, i64* %L_temp, align 8
  %155 = load i64, i64* %L_temp, align 8
  %mul176 = mul nsw i64 %154, %155
  %156 = load i64, i64* %L_result, align 8
  %add177 = add nsw i64 %156, %mul176
  store i64 %add177, i64* %L_result, align 8
  %157 = load i16*, i16** %x.addr, align 8
  %arrayidx178 = getelementptr inbounds i16, i16* %157, i64 14
  %158 = load i16, i16* %arrayidx178, align 2
  %conv179 = sext i16 %158 to i32
  %shr180 = ashr i32 %conv179, 2
  %conv181 = sext i32 %shr180 to i64
  store i64 %conv181, i64* %L_temp, align 8
  %159 = load i64, i64* %L_temp, align 8
  %160 = load i64, i64* %L_temp, align 8
  %mul182 = mul nsw i64 %159, %160
  %161 = load i64, i64* %L_result, align 8
  %add183 = add nsw i64 %161, %mul182
  store i64 %add183, i64* %L_result, align 8
  %162 = load i16*, i16** %x.addr, align 8
  %arrayidx184 = getelementptr inbounds i16, i16* %162, i64 17
  %163 = load i16, i16* %arrayidx184, align 2
  %conv185 = sext i16 %163 to i32
  %shr186 = ashr i32 %conv185, 2
  %conv187 = sext i32 %shr186 to i64
  store i64 %conv187, i64* %L_temp, align 8
  %164 = load i64, i64* %L_temp, align 8
  %165 = load i64, i64* %L_temp, align 8
  %mul188 = mul nsw i64 %164, %165
  %166 = load i64, i64* %L_result, align 8
  %add189 = add nsw i64 %166, %mul188
  store i64 %add189, i64* %L_result, align 8
  %167 = load i16*, i16** %x.addr, align 8
  %arrayidx190 = getelementptr inbounds i16, i16* %167, i64 20
  %168 = load i16, i16* %arrayidx190, align 2
  %conv191 = sext i16 %168 to i32
  %shr192 = ashr i32 %conv191, 2
  %conv193 = sext i32 %shr192 to i64
  store i64 %conv193, i64* %L_temp, align 8
  %169 = load i64, i64* %L_temp, align 8
  %170 = load i64, i64* %L_temp, align 8
  %mul194 = mul nsw i64 %169, %170
  %171 = load i64, i64* %L_result, align 8
  %add195 = add nsw i64 %171, %mul194
  store i64 %add195, i64* %L_result, align 8
  %172 = load i16*, i16** %x.addr, align 8
  %arrayidx196 = getelementptr inbounds i16, i16* %172, i64 23
  %173 = load i16, i16* %arrayidx196, align 2
  %conv197 = sext i16 %173 to i32
  %shr198 = ashr i32 %conv197, 2
  %conv199 = sext i32 %shr198 to i64
  store i64 %conv199, i64* %L_temp, align 8
  %174 = load i64, i64* %L_temp, align 8
  %175 = load i64, i64* %L_temp, align 8
  %mul200 = mul nsw i64 %174, %175
  %176 = load i64, i64* %L_result, align 8
  %add201 = add nsw i64 %176, %mul200
  store i64 %add201, i64* %L_result, align 8
  %177 = load i16*, i16** %x.addr, align 8
  %arrayidx202 = getelementptr inbounds i16, i16* %177, i64 26
  %178 = load i16, i16* %arrayidx202, align 2
  %conv203 = sext i16 %178 to i32
  %shr204 = ashr i32 %conv203, 2
  %conv205 = sext i32 %shr204 to i64
  store i64 %conv205, i64* %L_temp, align 8
  %179 = load i64, i64* %L_temp, align 8
  %180 = load i64, i64* %L_temp, align 8
  %mul206 = mul nsw i64 %179, %180
  %181 = load i64, i64* %L_result, align 8
  %add207 = add nsw i64 %181, %mul206
  store i64 %add207, i64* %L_result, align 8
  %182 = load i16*, i16** %x.addr, align 8
  %arrayidx208 = getelementptr inbounds i16, i16* %182, i64 29
  %183 = load i16, i16* %arrayidx208, align 2
  %conv209 = sext i16 %183 to i32
  %shr210 = ashr i32 %conv209, 2
  %conv211 = sext i32 %shr210 to i64
  store i64 %conv211, i64* %L_temp, align 8
  %184 = load i64, i64* %L_temp, align 8
  %185 = load i64, i64* %L_temp, align 8
  %mul212 = mul nsw i64 %184, %185
  %186 = load i64, i64* %L_result, align 8
  %add213 = add nsw i64 %186, %mul212
  store i64 %add213, i64* %L_result, align 8
  %187 = load i16*, i16** %x.addr, align 8
  %arrayidx214 = getelementptr inbounds i16, i16* %187, i64 32
  %188 = load i16, i16* %arrayidx214, align 2
  %conv215 = sext i16 %188 to i32
  %shr216 = ashr i32 %conv215, 2
  %conv217 = sext i32 %shr216 to i64
  store i64 %conv217, i64* %L_temp, align 8
  %189 = load i64, i64* %L_temp, align 8
  %190 = load i64, i64* %L_temp, align 8
  %mul218 = mul nsw i64 %189, %190
  %191 = load i64, i64* %L_result, align 8
  %add219 = add nsw i64 %191, %mul218
  store i64 %add219, i64* %L_result, align 8
  %192 = load i16*, i16** %x.addr, align 8
  %arrayidx220 = getelementptr inbounds i16, i16* %192, i64 35
  %193 = load i16, i16* %arrayidx220, align 2
  %conv221 = sext i16 %193 to i32
  %shr222 = ashr i32 %conv221, 2
  %conv223 = sext i32 %shr222 to i64
  store i64 %conv223, i64* %L_temp, align 8
  %194 = load i64, i64* %L_temp, align 8
  %195 = load i64, i64* %L_temp, align 8
  %mul224 = mul nsw i64 %194, %195
  %196 = load i64, i64* %L_result, align 8
  %add225 = add nsw i64 %196, %mul224
  store i64 %add225, i64* %L_result, align 8
  %197 = load i16*, i16** %x.addr, align 8
  %arrayidx226 = getelementptr inbounds i16, i16* %197, i64 38
  %198 = load i16, i16* %arrayidx226, align 2
  %conv227 = sext i16 %198 to i32
  %shr228 = ashr i32 %conv227, 2
  %conv229 = sext i32 %shr228 to i64
  store i64 %conv229, i64* %L_temp, align 8
  %199 = load i64, i64* %L_temp, align 8
  %200 = load i64, i64* %L_temp, align 8
  %mul230 = mul nsw i64 %199, %200
  %201 = load i64, i64* %L_result, align 8
  %add231 = add nsw i64 %201, %mul230
  store i64 %add231, i64* %L_result, align 8
  %202 = load i64, i64* %L_result, align 8
  %shl232 = shl i64 %202, 1
  store i64 %shl232, i64* %L_result, align 8
  %203 = load i64, i64* %L_result, align 8
  %204 = load i64, i64* %EM, align 8
  %cmp233 = icmp sgt i64 %203, %204
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %if.end
  store i16 2, i16* %Mc, align 2
  %205 = load i64, i64* %L_result, align 8
  store i64 %205, i64* %EM, align 8
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.235, %if.end
  %206 = load i64, i64* %L_common_0_3, align 8
  store i64 %206, i64* %L_result, align 8
  %207 = load i16*, i16** %x.addr, align 8
  %arrayidx237 = getelementptr inbounds i16, i16* %207, i64 39
  %208 = load i16, i16* %arrayidx237, align 2
  %conv238 = sext i16 %208 to i32
  %shr239 = ashr i32 %conv238, 2
  %conv240 = sext i32 %shr239 to i64
  store i64 %conv240, i64* %L_temp, align 8
  %209 = load i64, i64* %L_temp, align 8
  %210 = load i64, i64* %L_temp, align 8
  %mul241 = mul nsw i64 %209, %210
  %211 = load i64, i64* %L_result, align 8
  %add242 = add nsw i64 %211, %mul241
  store i64 %add242, i64* %L_result, align 8
  %212 = load i64, i64* %L_result, align 8
  %shl243 = shl i64 %212, 1
  store i64 %shl243, i64* %L_result, align 8
  %213 = load i64, i64* %L_result, align 8
  %214 = load i64, i64* %EM, align 8
  %cmp244 = icmp sgt i64 %213, %214
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.end.236
  store i16 3, i16* %Mc, align 2
  %215 = load i64, i64* %L_result, align 8
  store i64 %215, i64* %EM, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.246, %if.end.236
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.247
  %216 = load i32, i32* %i, align 4
  %cmp248 = icmp sle i32 %216, 12
  br i1 %cmp248, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %217 = load i16, i16* %Mc, align 2
  %conv250 = sext i16 %217 to i32
  %218 = load i32, i32* %i, align 4
  %mul251 = mul nsw i32 3, %218
  %add252 = add nsw i32 %conv250, %mul251
  %idxprom = sext i32 %add252 to i64
  %219 = load i16*, i16** %x.addr, align 8
  %arrayidx253 = getelementptr inbounds i16, i16* %219, i64 %idxprom
  %220 = load i16, i16* %arrayidx253, align 2
  %221 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %221 to i64
  %222 = load i16*, i16** %xM.addr, align 8
  %arrayidx255 = getelementptr inbounds i16, i16* %222, i64 %idxprom254
  store i16 %220, i16* %arrayidx255, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %223 = load i32, i32* %i, align 4
  %inc = add nsw i32 %223, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %224 = load i16, i16* %Mc, align 2
  %225 = load i16*, i16** %Mc_out.addr, align 8
  store i16 %224, i16* %225, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @APCM_quantization(i16* %xM, i16* %xMc, i16* %mant_out, i16* %exp_out, i16* %xmaxc_out) #0 {
entry:
  %xM.addr = alloca i16*, align 8
  %xMc.addr = alloca i16*, align 8
  %mant_out.addr = alloca i16*, align 8
  %exp_out.addr = alloca i16*, align 8
  %xmaxc_out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %itest = alloca i32, align 4
  %xmax = alloca i16, align 2
  %xmaxc = alloca i16, align 2
  %temp = alloca i16, align 2
  %temp1 = alloca i16, align 2
  %temp2 = alloca i16, align 2
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  store i16* %xM, i16** %xM.addr, align 8
  store i16* %xMc, i16** %xMc.addr, align 8
  store i16* %mant_out, i16** %mant_out.addr, align 8
  store i16* %exp_out, i16** %exp_out.addr, align 8
  store i16* %xmaxc_out, i16** %xmaxc_out.addr, align 8
  store i16 0, i16* %xmax, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i16*, i16** %xM.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  store i16 %3, i16* %temp, align 2
  %4 = load i16, i16* %temp, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %cond.true, label %cond.false.8

cond.true:                                        ; preds = %for.body
  %5 = load i16, i16* %temp, align 2
  %conv3 = sext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, -32768
  br i1 %cmp4, label %cond.true.6, label %cond.false

cond.true.6:                                      ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %6 = load i16, i16* %temp, align 2
  %conv7 = sext i16 %6 to i32
  %sub = sub nsw i32 0, %conv7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.6
  %cond = phi i32 [ 32767, %cond.true.6 ], [ %sub, %cond.false ]
  br label %cond.end.10

cond.false.8:                                     ; preds = %for.body
  %7 = load i16, i16* %temp, align 2
  %conv9 = sext i16 %7 to i32
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.end
  %cond11 = phi i32 [ %cond, %cond.end ], [ %conv9, %cond.false.8 ]
  %conv12 = trunc i32 %cond11 to i16
  store i16 %conv12, i16* %temp, align 2
  %8 = load i16, i16* %temp, align 2
  %conv13 = sext i16 %8 to i32
  %9 = load i16, i16* %xmax, align 2
  %conv14 = sext i16 %9 to i32
  %cmp15 = icmp sgt i32 %conv13, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.10
  %10 = load i16, i16* %temp, align 2
  store i16 %10, i16* %xmax, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %exp, align 2
  %12 = load i16, i16* %xmax, align 2
  %conv17 = sext i16 %12 to i32
  %shr = ashr i32 %conv17, 9
  %conv18 = trunc i32 %shr to i16
  store i16 %conv18, i16* %temp, align 2
  store i32 0, i32* %itest, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.34, %for.end
  %13 = load i32, i32* %i, align 4
  %cmp20 = icmp sle i32 %13, 5
  br i1 %cmp20, label %for.body.22, label %for.end.36

for.body.22:                                      ; preds = %for.cond.19
  %14 = load i16, i16* %temp, align 2
  %conv23 = sext i16 %14 to i32
  %cmp24 = icmp sle i32 %conv23, 0
  %conv25 = zext i1 %cmp24 to i32
  %15 = load i32, i32* %itest, align 4
  %or = or i32 %15, %conv25
  store i32 %or, i32* %itest, align 4
  %16 = load i16, i16* %temp, align 2
  %conv26 = sext i16 %16 to i32
  %shr27 = ashr i32 %conv26, 1
  %conv28 = trunc i32 %shr27 to i16
  store i16 %conv28, i16* %temp, align 2
  %17 = load i32, i32* %itest, align 4
  %cmp29 = icmp eq i32 %17, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %for.body.22
  %18 = load i16, i16* %exp, align 2
  %inc32 = add i16 %18, 1
  store i16 %inc32, i16* %exp, align 2
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %for.body.22
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %19 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %19, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.19

for.end.36:                                       ; preds = %for.cond.19
  %20 = load i16, i16* %exp, align 2
  %conv37 = sext i16 %20 to i32
  %add = add nsw i32 %conv37, 5
  %conv38 = trunc i32 %add to i16
  store i16 %conv38, i16* %temp, align 2
  %21 = load i16, i16* %xmax, align 2
  %conv39 = sext i16 %21 to i32
  %22 = load i16, i16* %temp, align 2
  %conv40 = sext i16 %22 to i32
  %shr41 = ashr i32 %conv39, %conv40
  %conv42 = trunc i32 %shr41 to i16
  %23 = load i16, i16* %exp, align 2
  %conv43 = sext i16 %23 to i32
  %shl = shl i32 %conv43, 3
  %conv44 = trunc i32 %shl to i16
  %call = call signext i16 @gsm_add(i16 signext %conv42, i16 signext %conv44)
  store i16 %call, i16* %xmaxc, align 2
  %24 = load i16, i16* %xmaxc, align 2
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 signext %24, i16* %exp, i16* %mant)
  %25 = load i16, i16* %exp, align 2
  %conv45 = sext i16 %25 to i32
  %sub46 = sub nsw i32 6, %conv45
  %conv47 = trunc i32 %sub46 to i16
  store i16 %conv47, i16* %temp1, align 2
  %26 = load i16, i16* %mant, align 2
  %idxprom48 = sext i16 %26 to i64
  %arrayidx49 = getelementptr inbounds [8 x i16], [8 x i16]* @gsm_NRFAC, i32 0, i64 %idxprom48
  %27 = load i16, i16* %arrayidx49, align 2
  store i16 %27, i16* %temp2, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.72, %for.end.36
  %28 = load i32, i32* %i, align 4
  %cmp51 = icmp sle i32 %28, 12
  br i1 %cmp51, label %for.body.53, label %for.end.74

for.body.53:                                      ; preds = %for.cond.50
  %29 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %29 to i64
  %30 = load i16*, i16** %xM.addr, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %30, i64 %idxprom54
  %31 = load i16, i16* %arrayidx55, align 2
  %conv56 = sext i16 %31 to i32
  %32 = load i16, i16* %temp1, align 2
  %conv57 = sext i16 %32 to i32
  %shl58 = shl i32 %conv56, %conv57
  %conv59 = trunc i32 %shl58 to i16
  store i16 %conv59, i16* %temp, align 2
  %33 = load i16, i16* %temp, align 2
  %conv60 = sext i16 %33 to i64
  %34 = load i16, i16* %temp2, align 2
  %conv61 = sext i16 %34 to i64
  %mul = mul nsw i64 %conv60, %conv61
  %shr62 = ashr i64 %mul, 15
  %conv63 = trunc i64 %shr62 to i16
  store i16 %conv63, i16* %temp, align 2
  %35 = load i16, i16* %temp, align 2
  %conv64 = sext i16 %35 to i32
  %shr65 = ashr i32 %conv64, 12
  %conv66 = trunc i32 %shr65 to i16
  store i16 %conv66, i16* %temp, align 2
  %36 = load i16, i16* %temp, align 2
  %conv67 = sext i16 %36 to i32
  %add68 = add nsw i32 %conv67, 4
  %conv69 = trunc i32 %add68 to i16
  %37 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %37 to i64
  %38 = load i16*, i16** %xMc.addr, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %38, i64 %idxprom70
  store i16 %conv69, i16* %arrayidx71, align 2
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.53
  %39 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %39, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.50

for.end.74:                                       ; preds = %for.cond.50
  %40 = load i16, i16* %mant, align 2
  %41 = load i16*, i16** %mant_out.addr, align 8
  store i16 %40, i16* %41, align 2
  %42 = load i16, i16* %exp, align 2
  %43 = load i16*, i16** %exp_out.addr, align 8
  store i16 %42, i16* %43, align 2
  %44 = load i16, i16* %xmaxc, align 2
  %45 = load i16*, i16** %xmaxc_out.addr, align 8
  store i16 %44, i16* %45, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @APCM_inverse_quantization(i16* %xMc, i16 signext %mant, i16 signext %exp, i16* %xMp) #0 {
entry:
  %xMc.addr = alloca i16*, align 8
  %mant.addr = alloca i16, align 2
  %exp.addr = alloca i16, align 2
  %xMp.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %temp = alloca i16, align 2
  %temp1 = alloca i16, align 2
  %temp2 = alloca i16, align 2
  %temp3 = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store i16* %xMc, i16** %xMc.addr, align 8
  store i16 %mant, i16* %mant.addr, align 2
  store i16 %exp, i16* %exp.addr, align 2
  store i16* %xMp, i16** %xMp.addr, align 8
  %0 = load i16, i16* %mant.addr, align 2
  %idxprom = sext i16 %0 to i64
  %arrayidx = getelementptr inbounds [8 x i16], [8 x i16]* @gsm_FAC, i32 0, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  store i16 %1, i16* %temp1, align 2
  %2 = load i16, i16* %exp.addr, align 2
  %call = call signext i16 @gsm_sub(i16 signext 6, i16 signext %2)
  store i16 %call, i16* %temp2, align 2
  %3 = load i16, i16* %temp2, align 2
  %call1 = call signext i16 @gsm_sub(i16 signext %3, i16 signext 1)
  %conv = sext i16 %call1 to i32
  %call2 = call signext i16 @gsm_asl(i16 signext 1, i32 %conv)
  store i16 %call2, i16* %temp3, align 2
  store i32 13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*, i16** %xMc.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr, i16** %xMc.addr, align 8
  %6 = load i16, i16* %5, align 2
  %conv3 = sext i16 %6 to i32
  %shl = shl i32 %conv3, 1
  %sub = sub nsw i32 %shl, 7
  %conv4 = trunc i32 %sub to i16
  store i16 %conv4, i16* %temp, align 2
  %7 = load i16, i16* %temp, align 2
  %conv5 = sext i16 %7 to i32
  %shl6 = shl i32 %conv5, 12
  %conv7 = trunc i32 %shl6 to i16
  store i16 %conv7, i16* %temp, align 2
  %8 = load i16, i16* %temp1, align 2
  %conv8 = sext i16 %8 to i64
  %9 = load i16, i16* %temp, align 2
  %conv9 = sext i16 %9 to i64
  %mul = mul nsw i64 %conv8, %conv9
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv10 = trunc i64 %shr to i16
  store i16 %conv10, i16* %temp, align 2
  %10 = load i16, i16* %temp, align 2
  %conv11 = sext i16 %10 to i64
  %11 = load i16, i16* %temp3, align 2
  %conv12 = sext i16 %11 to i64
  %add13 = add nsw i64 %conv11, %conv12
  store i64 %add13, i64* %ltmp, align 8
  %sub14 = sub nsw i64 %add13, -32768
  %cmp = icmp ugt i64 %sub14, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load i64, i64* %ltmp, align 8
  %cmp16 = icmp sgt i64 %12, 0
  %cond = select i1 %cmp16, i32 32767, i32 -32768
  %conv18 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %13 = load i64, i64* %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i64 [ %conv18, %cond.true ], [ %13, %cond.false ]
  %conv20 = trunc i64 %cond19 to i16
  store i16 %conv20, i16* %temp, align 2
  %14 = load i16, i16* %temp, align 2
  %15 = load i16, i16* %temp2, align 2
  %conv21 = sext i16 %15 to i32
  %call22 = call signext i16 @gsm_asr(i16 signext %14, i32 %conv21)
  %16 = load i16*, i16** %xMp.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr23, i16** %xMp.addr, align 8
  store i16 %call22, i16* %16, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RPE_grid_positioning(i16 signext %Mc, i16* %xMp, i16* %ep) #0 {
entry:
  %Mc.addr = alloca i16, align 2
  %xMp.addr = alloca i16*, align 8
  %ep.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16 %Mc, i16* %Mc.addr, align 2
  store i16* %xMp, i16** %xMp.addr, align 8
  store i16* %ep, i16** %ep.addr, align 8
  store i32 13, i32* %i, align 4
  %0 = load i16, i16* %Mc.addr, align 2
  %conv = sext i16 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1
    i32 1, label %sw.bb.3
    i32 0, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i16*, i16** %ep.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %1, i32 1
  store i16* %incdec.ptr, i16** %ep.addr, align 8
  store i16 0, i16* %1, align 2
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.1
  %2 = load i16*, i16** %ep.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr2, i16** %ep.addr, align 8
  store i16 0, i16* %2, align 2
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %entry, %do.body
  %3 = load i16*, i16** %ep.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr4, i16** %ep.addr, align 8
  store i16 0, i16* %3, align 2
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %sw.bb.3
  %4 = load i16*, i16** %xMp.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr6, i16** %xMp.addr, align 8
  %5 = load i16, i16* %4, align 2
  %6 = load i16*, i16** %ep.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i16, i16* %6, i32 1
  store i16* %incdec.ptr7, i16** %ep.addr, align 8
  store i16 %5, i16* %6, align 2
  br label %do.cond

do.cond:                                          ; preds = %sw.bb.5
  %7 = load i32, i32* %i, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %8 = load i16, i16* %Mc.addr, align 2
  %inc = add i16 %8, 1
  store i16 %inc, i16* %Mc.addr, align 2
  %conv8 = sext i16 %inc to i32
  %cmp = icmp slt i32 %conv8, 4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i16*, i16** %ep.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr10, i16** %ep.addr, align 8
  store i16 0, i16* %9, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gsm_RPE_Decoding(%struct.gsm_state* %S, i16 signext %xmaxcr, i16 signext %Mcr, i16* %xMcr, i16* %erp) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %xmaxcr.addr = alloca i16, align 2
  %Mcr.addr = alloca i16, align 2
  %xMcr.addr = alloca i16*, align 8
  %erp.addr = alloca i16*, align 8
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  %xMp = alloca [13 x i16], align 16
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16 %xmaxcr, i16* %xmaxcr.addr, align 2
  store i16 %Mcr, i16* %Mcr.addr, align 2
  store i16* %xMcr, i16** %xMcr.addr, align 8
  store i16* %erp, i16** %erp.addr, align 8
  %0 = load i16, i16* %xmaxcr.addr, align 2
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 signext %0, i16* %exp, i16* %mant)
  %1 = load i16*, i16** %xMcr.addr, align 8
  %2 = load i16, i16* %mant, align 2
  %3 = load i16, i16* %exp, align 2
  %arraydecay = getelementptr inbounds [13 x i16], [13 x i16]* %xMp, i32 0, i32 0
  call void @APCM_inverse_quantization(i16* %1, i16 signext %2, i16 signext %3, i16* %arraydecay)
  %4 = load i16, i16* %Mcr.addr, align 2
  %arraydecay1 = getelementptr inbounds [13 x i16], [13 x i16]* %xMp, i32 0, i32 0
  %5 = load i16*, i16** %erp.addr, align 8
  call void @RPE_grid_positioning(i16 signext %4, i16* %arraydecay1, i16* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @APCM_quantization_xmaxc_to_exp_mant(i16 signext %xmaxc, i16* %exp_out, i16* %mant_out) #0 {
entry:
  %xmaxc.addr = alloca i16, align 2
  %exp_out.addr = alloca i16*, align 8
  %mant_out.addr = alloca i16*, align 8
  %exp = alloca i16, align 2
  %mant = alloca i16, align 2
  store i16 %xmaxc, i16* %xmaxc.addr, align 2
  store i16* %exp_out, i16** %exp_out.addr, align 8
  store i16* %mant_out, i16** %mant_out.addr, align 8
  store i16 0, i16* %exp, align 2
  %0 = load i16, i16* %xmaxc.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %xmaxc.addr, align 2
  %conv2 = sext i16 %1 to i32
  %shr = ashr i32 %conv2, 3
  %sub = sub nsw i32 %shr, 1
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, i16* %exp, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i16, i16* %xmaxc.addr, align 2
  %conv4 = sext i16 %2 to i32
  %3 = load i16, i16* %exp, align 2
  %conv5 = sext i16 %3 to i32
  %shl = shl i32 %conv5, 3
  %sub6 = sub nsw i32 %conv4, %shl
  %conv7 = trunc i32 %sub6 to i16
  store i16 %conv7, i16* %mant, align 2
  %4 = load i16, i16* %mant, align 2
  %conv8 = sext i16 %4 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  store i16 -4, i16* %exp, align 2
  store i16 7, i16* %mant, align 2
  br label %if.end.21

if.else:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %5 = load i16, i16* %mant, align 2
  %conv12 = sext i16 %5 to i32
  %cmp13 = icmp sle i32 %conv12, 7
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i16, i16* %mant, align 2
  %conv15 = sext i16 %6 to i32
  %shl16 = shl i32 %conv15, 1
  %or = or i32 %shl16, 1
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, i16* %mant, align 2
  %7 = load i16, i16* %exp, align 2
  %dec = add i16 %7, -1
  store i16 %dec, i16* %exp, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i16, i16* %mant, align 2
  %conv18 = sext i16 %8 to i32
  %sub19 = sub nsw i32 %conv18, 8
  %conv20 = trunc i32 %sub19 to i16
  store i16 %conv20, i16* %mant, align 2
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %if.then.11
  %9 = load i16, i16* %exp, align 2
  %10 = load i16*, i16** %exp_out.addr, align 8
  store i16 %9, i16* %10, align 2
  %11 = load i16, i16* %mant, align 2
  %12 = load i16*, i16** %mant_out.addr, align 8
  store i16 %11, i16* %12, align 2
  ret void
}

declare signext i16 @gsm_add(i16 signext, i16 signext) #1

declare signext i16 @gsm_sub(i16 signext, i16 signext) #1

declare signext i16 @gsm_asl(i16 signext, i32) #1

declare signext i16 @gsm_asr(i16 signext, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
