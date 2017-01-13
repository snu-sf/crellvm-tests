; ModuleID = './MultiSource.Benchmarks.MiBench/188.telecomm-gsm.decode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind uwtable
define void @Gsm_Decoder(%struct.gsm_state* %S, i16* %LARcr, i16* %Ncr, i16* %bcr, i16* %Mcr, i16* %xmaxcr, i16* %xMcr, i16* %s) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %LARcr.addr = alloca i16*, align 8
  %Ncr.addr = alloca i16*, align 8
  %bcr.addr = alloca i16*, align 8
  %Mcr.addr = alloca i16*, align 8
  %xmaxcr.addr = alloca i16*, align 8
  %xMcr.addr = alloca i16*, align 8
  %s.addr = alloca i16*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %erp = alloca [40 x i16], align 16
  %wt = alloca [160 x i16], align 16
  %drp = alloca i16*, align 8
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %LARcr, i16** %LARcr.addr, align 8
  store i16* %Ncr, i16** %Ncr.addr, align 8
  store i16* %bcr, i16** %bcr.addr, align 8
  store i16* %Mcr, i16** %Mcr.addr, align 8
  store i16* %xmaxcr, i16** %xmaxcr.addr, align 8
  store i16* %xMcr, i16** %xMcr.addr, align 8
  store i16* %s, i16** %s.addr, align 8
  %0 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %dp0 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [280 x i16], [280 x i16]* %dp0, i32 0, i32 0
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 120
  store i16* %add.ptr, i16** %drp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %1 = load i32, i32* %j, align 4
  %cmp = icmp sle i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %2 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %3 = load i16*, i16** %xmaxcr.addr, align 8
  %4 = load i16, i16* %3, align 2
  %5 = load i16*, i16** %Mcr.addr, align 8
  %6 = load i16, i16* %5, align 2
  %7 = load i16*, i16** %xMcr.addr, align 8
  %arraydecay1 = getelementptr inbounds [40 x i16], [40 x i16]* %erp, i32 0, i32 0
  call void @Gsm_RPE_Decoding(%struct.gsm_state* %2, i16 signext %4, i16 signext %6, i16* %7, i16* %arraydecay1)
  %8 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %9 = load i16*, i16** %Ncr.addr, align 8
  %10 = load i16, i16* %9, align 2
  %11 = load i16*, i16** %bcr.addr, align 8
  %12 = load i16, i16* %11, align 2
  %arraydecay2 = getelementptr inbounds [40 x i16], [40 x i16]* %erp, i32 0, i32 0
  %13 = load i16*, i16** %drp, align 8
  call void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* %8, i16 signext %10, i16 signext %12, i16* %arraydecay2, i16* %13)
  store i32 0, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %k, align 4
  %cmp4 = icmp sle i32 %14, 39
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %15 = load i32, i32* %k, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i16*, i16** %drp, align 8
  %arrayidx = getelementptr inbounds i16, i16* %16, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2
  %18 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %18, 40
  %19 = load i32, i32* %k, align 4
  %add = add nsw i32 %mul, %19
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [160 x i16], [160 x i16]* %wt, i32 0, i64 %idxprom6
  store i16 %17, i16* %arrayidx7, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, i32* %j, align 4
  %22 = load i16*, i16** %xmaxcr.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %incdec.ptr, i16** %xmaxcr.addr, align 8
  %23 = load i16*, i16** %bcr.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr10, i16** %bcr.addr, align 8
  %24 = load i16*, i16** %Ncr.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i16, i16* %24, i32 1
  store i16* %incdec.ptr11, i16** %Ncr.addr, align 8
  %25 = load i16*, i16** %Mcr.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr12, i16** %Mcr.addr, align 8
  %26 = load i16*, i16** %xMcr.addr, align 8
  %add.ptr13 = getelementptr inbounds i16, i16* %26, i64 13
  store i16* %add.ptr13, i16** %xMcr.addr, align 8
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %27 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %28 = load i16*, i16** %LARcr.addr, align 8
  %arraydecay15 = getelementptr inbounds [160 x i16], [160 x i16]* %wt, i32 0, i32 0
  %29 = load i16*, i16** %s.addr, align 8
  call void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state* %27, i16* %28, i16* %arraydecay15, i16* %29)
  %30 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %31 = load i16*, i16** %s.addr, align 8
  call void @Postprocessing(%struct.gsm_state* %30, i16* %31)
  ret void
}

declare void @Gsm_RPE_Decoding(%struct.gsm_state*, i16 signext, i16 signext, i16*, i16*) #1

declare void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state*, i16 signext, i16 signext, i16*, i16*) #1

declare void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state*, i16*, i16*, i16*) #1

; Function Attrs: nounwind uwtable
define internal void @Postprocessing(%struct.gsm_state* %S, i16* %s) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %s.addr = alloca i16*, align 8
  %k = alloca i32, align 4
  %msr = alloca i16, align 2
  %ltmp = alloca i64, align 8
  %tmp = alloca i16, align 2
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %s, i16** %s.addr, align 8
  %0 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %msr1 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i32 0, i32 9
  %1 = load i16, i16* %msr1, align 2
  store i16 %1, i16* %msr, align 2
  store i32 160, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %k, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %k, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* %msr, align 2
  %conv = sext i16 %3 to i64
  %mul = mul nsw i64 %conv, 28180
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv2 = trunc i64 %shr to i16
  store i16 %conv2, i16* %tmp, align 2
  %4 = load i16*, i16** %s.addr, align 8
  %5 = load i16, i16* %4, align 2
  %conv3 = sext i16 %5 to i64
  %6 = load i16, i16* %tmp, align 2
  %conv4 = sext i16 %6 to i64
  %add5 = add nsw i64 %conv3, %conv4
  store i64 %add5, i64* %ltmp, align 8
  %sub = sub nsw i64 %add5, -32768
  %cmp = icmp ugt i64 %sub, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i64, i64* %ltmp, align 8
  %cmp7 = icmp sgt i64 %7, 0
  %cond = select i1 %cmp7, i32 32767, i32 -32768
  %conv9 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %8 = load i64, i64* %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %conv9, %cond.true ], [ %8, %cond.false ]
  %conv11 = trunc i64 %cond10 to i16
  store i16 %conv11, i16* %msr, align 2
  %9 = load i16, i16* %msr, align 2
  %conv12 = sext i16 %9 to i64
  %10 = load i16, i16* %msr, align 2
  %conv13 = sext i16 %10 to i64
  %add14 = add nsw i64 %conv12, %conv13
  store i64 %add14, i64* %ltmp, align 8
  %sub15 = sub nsw i64 %add14, -32768
  %cmp16 = icmp ugt i64 %sub15, 65535
  br i1 %cmp16, label %cond.true.18, label %cond.false.23

cond.true.18:                                     ; preds = %cond.end
  %11 = load i64, i64* %ltmp, align 8
  %cmp19 = icmp sgt i64 %11, 0
  %cond21 = select i1 %cmp19, i32 32767, i32 -32768
  %conv22 = sext i32 %cond21 to i64
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.end
  %12 = load i64, i64* %ltmp, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.18
  %cond25 = phi i64 [ %conv22, %cond.true.18 ], [ %12, %cond.false.23 ]
  %and = and i64 %cond25, 65528
  %conv26 = trunc i64 %and to i16
  %13 = load i16*, i16** %s.addr, align 8
  store i16 %conv26, i16* %13, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.24
  %14 = load i16*, i16** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %incdec.ptr, i16** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i16, i16* %msr, align 2
  %16 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %msr27 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %16, i32 0, i32 9
  store i16 %15, i16* %msr27, align 2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
