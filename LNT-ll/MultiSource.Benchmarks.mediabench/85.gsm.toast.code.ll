; ModuleID = './MultiSource.Benchmarks.mediabench/85.gsm.toast.code.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@Gsm_Coder.e = internal global [50 x i16] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @Gsm_Coder(%struct.gsm_state* %S, i16* %s, i16* %LARc, i16* %Nc, i16* %bc, i16* %Mc, i16* %xmaxc, i16* %xMc) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %s.addr = alloca i16*, align 8
  %LARc.addr = alloca i16*, align 8
  %Nc.addr = alloca i16*, align 8
  %bc.addr = alloca i16*, align 8
  %Mc.addr = alloca i16*, align 8
  %xmaxc.addr = alloca i16*, align 8
  %xMc.addr = alloca i16*, align 8
  %k = alloca i32, align 4
  %dp = alloca i16*, align 8
  %dpp = alloca i16*, align 8
  %so = alloca [160 x i16], align 16
  %i = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %s, i16** %s.addr, align 8
  store i16* %LARc, i16** %LARc.addr, align 8
  store i16* %Nc, i16** %Nc.addr, align 8
  store i16* %bc, i16** %bc.addr, align 8
  store i16* %Mc, i16** %Mc.addr, align 8
  store i16* %xmaxc, i16** %xmaxc.addr, align 8
  store i16* %xMc, i16** %xMc.addr, align 8
  %0 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %dp0 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [280 x i16], [280 x i16]* %dp0, i32 0, i32 0
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 120
  store i16* %add.ptr, i16** %dp, align 8
  %1 = load i16*, i16** %dp, align 8
  store i16* %1, i16** %dpp, align 8
  %2 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %3 = load i16*, i16** %s.addr, align 8
  %arraydecay1 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  call void @Gsm_Preprocess(%struct.gsm_state* %2, i16* %3, i16* %arraydecay1)
  %4 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay2 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  %5 = load i16*, i16** %LARc.addr, align 8
  call void @Gsm_LPC_Analysis(%struct.gsm_state* %4, i16* %arraydecay2, i16* %5)
  %6 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %7 = load i16*, i16** %LARc.addr, align 8
  %arraydecay3 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  call void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state* %6, i16* %7, i16* %arraydecay3)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %8 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %8, 3
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %9 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay4 = getelementptr inbounds [160 x i16], [160 x i16]* %so, i32 0, i32 0
  %10 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %10, 40
  %idx.ext = sext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds i16, i16* %arraydecay4, i64 %idx.ext
  %11 = load i16*, i16** %dp, align 8
  %12 = load i16*, i16** %dpp, align 8
  %13 = load i16*, i16** %Nc.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %13, i32 1
  store i16* %incdec.ptr, i16** %Nc.addr, align 8
  %14 = load i16*, i16** %bc.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %incdec.ptr6, i16** %bc.addr, align 8
  call void @Gsm_Long_Term_Predictor(%struct.gsm_state* %9, i16* %add.ptr5, i16* %11, i16* getelementptr inbounds ([50 x i16], [50 x i16]* @Gsm_Coder.e, i32 0, i64 5), i16* %12, i16* %13, i16* %14)
  %15 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %16 = load i16*, i16** %xmaxc.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr7, i16** %xmaxc.addr, align 8
  %17 = load i16*, i16** %Mc.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr8, i16** %Mc.addr, align 8
  %18 = load i16*, i16** %xMc.addr, align 8
  call void @Gsm_RPE_Encoding(%struct.gsm_state* %15, i16* getelementptr inbounds ([50 x i16], [50 x i16]* @Gsm_Coder.e, i32 0, i64 5), i16* %16, i16* %17, i16* %18)
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %19 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %19, 39
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %20 = load i32, i32* %i, align 4
  %add = add nsw i32 5, %20
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [50 x i16], [50 x i16]* @Gsm_Coder.e, i32 0, i64 %idxprom
  %21 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load i16*, i16** %dpp, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %23, i64 %idxprom12
  %24 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %24 to i64
  %add15 = add nsw i64 %conv, %conv14
  store i64 %add15, i64* %ltmp, align 8
  %sub = sub nsw i64 %add15, -32768
  %cmp16 = icmp ugt i64 %sub, 65535
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.11
  %25 = load i64, i64* %ltmp, align 8
  %cmp18 = icmp sgt i64 %25, 0
  %cond = select i1 %cmp18, i32 32767, i32 -32768
  %conv20 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body.11
  %26 = load i64, i64* %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond21 = phi i64 [ %conv20, %cond.true ], [ %26, %cond.false ]
  %conv22 = trunc i64 %cond21 to i16
  %27 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load i16*, i16** %dp, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %28, i64 %idxprom23
  store i16 %conv22, i16* %arrayidx24, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %30 = load i16*, i16** %dp, align 8
  %add.ptr25 = getelementptr inbounds i16, i16* %30, i64 40
  store i16* %add.ptr25, i16** %dp, align 8
  %31 = load i16*, i16** %dpp, align 8
  %add.ptr26 = getelementptr inbounds i16, i16* %31, i64 40
  store i16* %add.ptr26, i16** %dpp, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %32 = load i32, i32* %k, align 4
  %inc28 = add nsw i32 %32, 1
  store i32 %inc28, i32* %k, align 4
  %33 = load i16*, i16** %xMc.addr, align 8
  %add.ptr29 = getelementptr inbounds i16, i16* %33, i64 13
  store i16* %add.ptr29, i16** %xMc.addr, align 8
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  %34 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %dp031 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %34, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [280 x i16], [280 x i16]* %dp031, i32 0, i32 0
  %35 = bitcast i16* %arraydecay32 to i8*
  %36 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %dp033 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %36, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [280 x i16], [280 x i16]* %dp033, i32 0, i32 0
  %add.ptr35 = getelementptr inbounds i16, i16* %arraydecay34, i64 160
  %37 = bitcast i16* %add.ptr35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %37, i64 240, i32 1, i1 false)
  ret void
}

declare void @Gsm_Preprocess(%struct.gsm_state*, i16*, i16*) #1

declare void @Gsm_LPC_Analysis(%struct.gsm_state*, i16*, i16*) #1

declare void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state*, i16*, i16*) #1

declare void @Gsm_Long_Term_Predictor(%struct.gsm_state*, i16*, i16*, i16*, i16*, i16*, i16*) #1

declare void @Gsm_RPE_Encoding(%struct.gsm_state*, i16*, i16*, i16*, i16*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
