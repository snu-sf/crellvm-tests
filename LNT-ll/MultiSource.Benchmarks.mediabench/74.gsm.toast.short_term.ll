; ModuleID = './MultiSource.Benchmarks.mediabench/74.gsm.toast.short_term.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind uwtable
define void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state* %S, i16* %LARc, i16* %s) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %LARc.addr = alloca i16*, align 8
  %s.addr = alloca i16*, align 8
  %LARpp_j = alloca i16*, align 8
  %LARpp_j_1 = alloca i16*, align 8
  %LARp = alloca [8 x i16], align 16
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %LARc, i16** %LARc.addr, align 8
  store i16* %s, i16** %s.addr, align 8
  %0 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %j = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i32 0, i32 6
  %1 = load i16, i16* %j, align 2
  %idxprom = sext i16 %1 to i64
  %2 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %LARpp = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %2, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x [8 x i16]], [2 x [8 x i16]]* %LARpp, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %LARpp_j, align 8
  %3 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %j1 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %3, i32 0, i32 6
  %4 = load i16, i16* %j1, align 2
  %conv = sext i16 %4 to i32
  %xor = xor i32 %conv, 1
  %conv2 = trunc i32 %xor to i16
  store i16 %conv2, i16* %j1, align 2
  %idxprom3 = sext i16 %conv2 to i64
  %5 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %LARpp4 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %5, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [2 x [8 x i16]], [2 x [8 x i16]]* %LARpp4, i32 0, i64 %idxprom3
  %arraydecay6 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx5, i32 0, i32 0
  store i16* %arraydecay6, i16** %LARpp_j_1, align 8
  %6 = load i16*, i16** %LARc.addr, align 8
  %7 = load i16*, i16** %LARpp_j, align 8
  call void @Decoding_of_the_coded_Log_Area_Ratios(i16* %6, i16* %7)
  %8 = load i16*, i16** %LARpp_j_1, align 8
  %9 = load i16*, i16** %LARpp_j, align 8
  %arraydecay7 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @Coefficients_0_12(i16* %8, i16* %9, i16* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @LARp_to_rp(i16* %arraydecay8)
  %10 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay9 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  %11 = load i16*, i16** %s.addr, align 8
  call void @Short_term_analysis_filtering(%struct.gsm_state* %10, i16* %arraydecay9, i32 13, i16* %11)
  %12 = load i16*, i16** %LARpp_j_1, align 8
  %13 = load i16*, i16** %LARpp_j, align 8
  %arraydecay10 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @Coefficients_13_26(i16* %12, i16* %13, i16* %arraydecay10)
  %arraydecay11 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @LARp_to_rp(i16* %arraydecay11)
  %14 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay12 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  %15 = load i16*, i16** %s.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %15, i64 13
  call void @Short_term_analysis_filtering(%struct.gsm_state* %14, i16* %arraydecay12, i32 14, i16* %add.ptr)
  %16 = load i16*, i16** %LARpp_j_1, align 8
  %17 = load i16*, i16** %LARpp_j, align 8
  %arraydecay13 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @Coefficients_27_39(i16* %16, i16* %17, i16* %arraydecay13)
  %arraydecay14 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @LARp_to_rp(i16* %arraydecay14)
  %18 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay15 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  %19 = load i16*, i16** %s.addr, align 8
  %add.ptr16 = getelementptr inbounds i16, i16* %19, i64 27
  call void @Short_term_analysis_filtering(%struct.gsm_state* %18, i16* %arraydecay15, i32 13, i16* %add.ptr16)
  %20 = load i16*, i16** %LARpp_j, align 8
  %arraydecay17 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @Coefficients_40_159(i16* %20, i16* %arraydecay17)
  %arraydecay18 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @LARp_to_rp(i16* %arraydecay18)
  %21 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay19 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  %22 = load i16*, i16** %s.addr, align 8
  %add.ptr20 = getelementptr inbounds i16, i16* %22, i64 40
  call void @Short_term_analysis_filtering(%struct.gsm_state* %21, i16* %arraydecay19, i32 120, i16* %add.ptr20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Decoding_of_the_coded_Log_Area_Ratios(i16* %LARc, i16* %LARpp) #0 {
entry:
  %LARc.addr = alloca i16*, align 8
  %LARpp.addr = alloca i16*, align 8
  %temp1 = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store i16* %LARc, i16** %LARc.addr, align 8
  store i16* %LARpp, i16** %LARpp.addr, align 8
  %0 = load i16*, i16** %LARc.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %0, i32 1
  store i16* %incdec.ptr, i16** %LARc.addr, align 8
  %1 = load i16, i16* %0, align 2
  %conv = sext i16 %1 to i64
  %add = add nsw i64 %conv, -32
  store i64 %add, i64* %ltmp, align 8
  %sub = sub nsw i64 %add, -32768
  %cmp = icmp ugt i64 %sub, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %ltmp, align 8
  %cmp2 = icmp sgt i64 %2, 0
  %cond = select i1 %cmp2, i32 32767, i32 -32768
  %conv4 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i64 [ %conv4, %cond.true ], [ %3, %cond.false ]
  %shl = shl i64 %cond5, 10
  %conv6 = trunc i64 %shl to i16
  store i16 %conv6, i16* %temp1, align 2
  %4 = load i16, i16* %temp1, align 2
  %conv7 = sext i16 %4 to i64
  %sub8 = sub nsw i64 %conv7, 0
  store i64 %sub8, i64* %ltmp, align 8
  %cmp9 = icmp sge i64 %sub8, 32767
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  br label %cond.end.19

cond.false.12:                                    ; preds = %cond.end
  %5 = load i64, i64* %ltmp, align 8
  %cmp13 = icmp sle i64 %5, -32768
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.12
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.false.12
  %6 = load i64, i64* %ltmp, align 8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i64 [ -32768, %cond.true.15 ], [ %6, %cond.false.16 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.true.11
  %cond20 = phi i64 [ 32767, %cond.true.11 ], [ %cond18, %cond.end.17 ]
  %conv21 = trunc i64 %cond20 to i16
  store i16 %conv21, i16* %temp1, align 2
  %7 = load i16, i16* %temp1, align 2
  %conv22 = sext i16 %7 to i64
  %mul = mul nsw i64 13107, %conv22
  %add23 = add nsw i64 %mul, 16384
  %shr = ashr i64 %add23, 15
  %conv24 = trunc i64 %shr to i16
  store i16 %conv24, i16* %temp1, align 2
  %8 = load i16, i16* %temp1, align 2
  %conv25 = sext i16 %8 to i64
  %9 = load i16, i16* %temp1, align 2
  %conv26 = sext i16 %9 to i64
  %add27 = add nsw i64 %conv25, %conv26
  store i64 %add27, i64* %ltmp, align 8
  %sub28 = sub nsw i64 %add27, -32768
  %cmp29 = icmp ugt i64 %sub28, 65535
  br i1 %cmp29, label %cond.true.31, label %cond.false.36

cond.true.31:                                     ; preds = %cond.end.19
  %10 = load i64, i64* %ltmp, align 8
  %cmp32 = icmp sgt i64 %10, 0
  %cond34 = select i1 %cmp32, i32 32767, i32 -32768
  %conv35 = sext i32 %cond34 to i64
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end.19
  %11 = load i64, i64* %ltmp, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.31
  %cond38 = phi i64 [ %conv35, %cond.true.31 ], [ %11, %cond.false.36 ]
  %conv39 = trunc i64 %cond38 to i16
  %12 = load i16*, i16** %LARpp.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i16, i16* %12, i32 1
  store i16* %incdec.ptr40, i16** %LARpp.addr, align 8
  store i16 %conv39, i16* %12, align 2
  %13 = load i16*, i16** %LARc.addr, align 8
  %incdec.ptr41 = getelementptr inbounds i16, i16* %13, i32 1
  store i16* %incdec.ptr41, i16** %LARc.addr, align 8
  %14 = load i16, i16* %13, align 2
  %conv42 = sext i16 %14 to i64
  %add43 = add nsw i64 %conv42, -32
  store i64 %add43, i64* %ltmp, align 8
  %sub44 = sub nsw i64 %add43, -32768
  %cmp45 = icmp ugt i64 %sub44, 65535
  br i1 %cmp45, label %cond.true.47, label %cond.false.52

cond.true.47:                                     ; preds = %cond.end.37
  %15 = load i64, i64* %ltmp, align 8
  %cmp48 = icmp sgt i64 %15, 0
  %cond50 = select i1 %cmp48, i32 32767, i32 -32768
  %conv51 = sext i32 %cond50 to i64
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.37
  %16 = load i64, i64* %ltmp, align 8
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.47
  %cond54 = phi i64 [ %conv51, %cond.true.47 ], [ %16, %cond.false.52 ]
  %shl55 = shl i64 %cond54, 10
  %conv56 = trunc i64 %shl55 to i16
  store i16 %conv56, i16* %temp1, align 2
  %17 = load i16, i16* %temp1, align 2
  %conv57 = sext i16 %17 to i64
  %sub58 = sub nsw i64 %conv57, 0
  store i64 %sub58, i64* %ltmp, align 8
  %cmp59 = icmp sge i64 %sub58, 32767
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.53
  br label %cond.end.69

cond.false.62:                                    ; preds = %cond.end.53
  %18 = load i64, i64* %ltmp, align 8
  %cmp63 = icmp sle i64 %18, -32768
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.false.62
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.false.62
  %19 = load i64, i64* %ltmp, align 8
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i64 [ -32768, %cond.true.65 ], [ %19, %cond.false.66 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.61
  %cond70 = phi i64 [ 32767, %cond.true.61 ], [ %cond68, %cond.end.67 ]
  %conv71 = trunc i64 %cond70 to i16
  store i16 %conv71, i16* %temp1, align 2
  %20 = load i16, i16* %temp1, align 2
  %conv72 = sext i16 %20 to i64
  %mul73 = mul nsw i64 13107, %conv72
  %add74 = add nsw i64 %mul73, 16384
  %shr75 = ashr i64 %add74, 15
  %conv76 = trunc i64 %shr75 to i16
  store i16 %conv76, i16* %temp1, align 2
  %21 = load i16, i16* %temp1, align 2
  %conv77 = sext i16 %21 to i64
  %22 = load i16, i16* %temp1, align 2
  %conv78 = sext i16 %22 to i64
  %add79 = add nsw i64 %conv77, %conv78
  store i64 %add79, i64* %ltmp, align 8
  %sub80 = sub nsw i64 %add79, -32768
  %cmp81 = icmp ugt i64 %sub80, 65535
  br i1 %cmp81, label %cond.true.83, label %cond.false.88

cond.true.83:                                     ; preds = %cond.end.69
  %23 = load i64, i64* %ltmp, align 8
  %cmp84 = icmp sgt i64 %23, 0
  %cond86 = select i1 %cmp84, i32 32767, i32 -32768
  %conv87 = sext i32 %cond86 to i64
  br label %cond.end.89

cond.false.88:                                    ; preds = %cond.end.69
  %24 = load i64, i64* %ltmp, align 8
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.83
  %cond90 = phi i64 [ %conv87, %cond.true.83 ], [ %24, %cond.false.88 ]
  %conv91 = trunc i64 %cond90 to i16
  %25 = load i16*, i16** %LARpp.addr, align 8
  %incdec.ptr92 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr92, i16** %LARpp.addr, align 8
  store i16 %conv91, i16* %25, align 2
  %26 = load i16*, i16** %LARc.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %incdec.ptr93, i16** %LARc.addr, align 8
  %27 = load i16, i16* %26, align 2
  %conv94 = sext i16 %27 to i64
  %add95 = add nsw i64 %conv94, -16
  store i64 %add95, i64* %ltmp, align 8
  %sub96 = sub nsw i64 %add95, -32768
  %cmp97 = icmp ugt i64 %sub96, 65535
  br i1 %cmp97, label %cond.true.99, label %cond.false.104

cond.true.99:                                     ; preds = %cond.end.89
  %28 = load i64, i64* %ltmp, align 8
  %cmp100 = icmp sgt i64 %28, 0
  %cond102 = select i1 %cmp100, i32 32767, i32 -32768
  %conv103 = sext i32 %cond102 to i64
  br label %cond.end.105

cond.false.104:                                   ; preds = %cond.end.89
  %29 = load i64, i64* %ltmp, align 8
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.false.104, %cond.true.99
  %cond106 = phi i64 [ %conv103, %cond.true.99 ], [ %29, %cond.false.104 ]
  %shl107 = shl i64 %cond106, 10
  %conv108 = trunc i64 %shl107 to i16
  store i16 %conv108, i16* %temp1, align 2
  %30 = load i16, i16* %temp1, align 2
  %conv109 = sext i16 %30 to i64
  %sub110 = sub nsw i64 %conv109, 4096
  store i64 %sub110, i64* %ltmp, align 8
  %cmp111 = icmp sge i64 %sub110, 32767
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %cond.end.105
  br label %cond.end.121

cond.false.114:                                   ; preds = %cond.end.105
  %31 = load i64, i64* %ltmp, align 8
  %cmp115 = icmp sle i64 %31, -32768
  br i1 %cmp115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.false.114
  br label %cond.end.119

cond.false.118:                                   ; preds = %cond.false.114
  %32 = load i64, i64* %ltmp, align 8
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi i64 [ -32768, %cond.true.117 ], [ %32, %cond.false.118 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.true.113
  %cond122 = phi i64 [ 32767, %cond.true.113 ], [ %cond120, %cond.end.119 ]
  %conv123 = trunc i64 %cond122 to i16
  store i16 %conv123, i16* %temp1, align 2
  %33 = load i16, i16* %temp1, align 2
  %conv124 = sext i16 %33 to i64
  %mul125 = mul nsw i64 13107, %conv124
  %add126 = add nsw i64 %mul125, 16384
  %shr127 = ashr i64 %add126, 15
  %conv128 = trunc i64 %shr127 to i16
  store i16 %conv128, i16* %temp1, align 2
  %34 = load i16, i16* %temp1, align 2
  %conv129 = sext i16 %34 to i64
  %35 = load i16, i16* %temp1, align 2
  %conv130 = sext i16 %35 to i64
  %add131 = add nsw i64 %conv129, %conv130
  store i64 %add131, i64* %ltmp, align 8
  %sub132 = sub nsw i64 %add131, -32768
  %cmp133 = icmp ugt i64 %sub132, 65535
  br i1 %cmp133, label %cond.true.135, label %cond.false.140

cond.true.135:                                    ; preds = %cond.end.121
  %36 = load i64, i64* %ltmp, align 8
  %cmp136 = icmp sgt i64 %36, 0
  %cond138 = select i1 %cmp136, i32 32767, i32 -32768
  %conv139 = sext i32 %cond138 to i64
  br label %cond.end.141

cond.false.140:                                   ; preds = %cond.end.121
  %37 = load i64, i64* %ltmp, align 8
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.140, %cond.true.135
  %cond142 = phi i64 [ %conv139, %cond.true.135 ], [ %37, %cond.false.140 ]
  %conv143 = trunc i64 %cond142 to i16
  %38 = load i16*, i16** %LARpp.addr, align 8
  %incdec.ptr144 = getelementptr inbounds i16, i16* %38, i32 1
  store i16* %incdec.ptr144, i16** %LARpp.addr, align 8
  store i16 %conv143, i16* %38, align 2
  %39 = load i16*, i16** %LARc.addr, align 8
  %incdec.ptr145 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %incdec.ptr145, i16** %LARc.addr, align 8
  %40 = load i16, i16* %39, align 2
  %conv146 = sext i16 %40 to i64
  %add147 = add nsw i64 %conv146, -16
  store i64 %add147, i64* %ltmp, align 8
  %sub148 = sub nsw i64 %add147, -32768
  %cmp149 = icmp ugt i64 %sub148, 65535
  br i1 %cmp149, label %cond.true.151, label %cond.false.156

cond.true.151:                                    ; preds = %cond.end.141
  %41 = load i64, i64* %ltmp, align 8
  %cmp152 = icmp sgt i64 %41, 0
  %cond154 = select i1 %cmp152, i32 32767, i32 -32768
  %conv155 = sext i32 %cond154 to i64
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.141
  %42 = load i64, i64* %ltmp, align 8
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.151
  %cond158 = phi i64 [ %conv155, %cond.true.151 ], [ %42, %cond.false.156 ]
  %shl159 = shl i64 %cond158, 10
  %conv160 = trunc i64 %shl159 to i16
  store i16 %conv160, i16* %temp1, align 2
  %43 = load i16, i16* %temp1, align 2
  %conv161 = sext i16 %43 to i64
  %sub162 = sub nsw i64 %conv161, -5120
  store i64 %sub162, i64* %ltmp, align 8
  %cmp163 = icmp sge i64 %sub162, 32767
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %cond.end.157
  br label %cond.end.173

cond.false.166:                                   ; preds = %cond.end.157
  %44 = load i64, i64* %ltmp, align 8
  %cmp167 = icmp sle i64 %44, -32768
  br i1 %cmp167, label %cond.true.169, label %cond.false.170

cond.true.169:                                    ; preds = %cond.false.166
  br label %cond.end.171

cond.false.170:                                   ; preds = %cond.false.166
  %45 = load i64, i64* %ltmp, align 8
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.170, %cond.true.169
  %cond172 = phi i64 [ -32768, %cond.true.169 ], [ %45, %cond.false.170 ]
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.end.171, %cond.true.165
  %cond174 = phi i64 [ 32767, %cond.true.165 ], [ %cond172, %cond.end.171 ]
  %conv175 = trunc i64 %cond174 to i16
  store i16 %conv175, i16* %temp1, align 2
  %46 = load i16, i16* %temp1, align 2
  %conv176 = sext i16 %46 to i64
  %mul177 = mul nsw i64 13107, %conv176
  %add178 = add nsw i64 %mul177, 16384
  %shr179 = ashr i64 %add178, 15
  %conv180 = trunc i64 %shr179 to i16
  store i16 %conv180, i16* %temp1, align 2
  %47 = load i16, i16* %temp1, align 2
  %conv181 = sext i16 %47 to i64
  %48 = load i16, i16* %temp1, align 2
  %conv182 = sext i16 %48 to i64
  %add183 = add nsw i64 %conv181, %conv182
  store i64 %add183, i64* %ltmp, align 8
  %sub184 = sub nsw i64 %add183, -32768
  %cmp185 = icmp ugt i64 %sub184, 65535
  br i1 %cmp185, label %cond.true.187, label %cond.false.192

cond.true.187:                                    ; preds = %cond.end.173
  %49 = load i64, i64* %ltmp, align 8
  %cmp188 = icmp sgt i64 %49, 0
  %cond190 = select i1 %cmp188, i32 32767, i32 -32768
  %conv191 = sext i32 %cond190 to i64
  br label %cond.end.193

cond.false.192:                                   ; preds = %cond.end.173
  %50 = load i64, i64* %ltmp, align 8
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.192, %cond.true.187
  %cond194 = phi i64 [ %conv191, %cond.true.187 ], [ %50, %cond.false.192 ]
  %conv195 = trunc i64 %cond194 to i16
  %51 = load i16*, i16** %LARpp.addr, align 8
  %incdec.ptr196 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr196, i16** %LARpp.addr, align 8
  store i16 %conv195, i16* %51, align 2
  %52 = load i16*, i16** %LARc.addr, align 8
  %incdec.ptr197 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %incdec.ptr197, i16** %LARc.addr, align 8
  %53 = load i16, i16* %52, align 2
  %conv198 = sext i16 %53 to i64
  %add199 = add nsw i64 %conv198, -8
  store i64 %add199, i64* %ltmp, align 8
  %sub200 = sub nsw i64 %add199, -32768
  %cmp201 = icmp ugt i64 %sub200, 65535
  br i1 %cmp201, label %cond.true.203, label %cond.false.208

cond.true.203:                                    ; preds = %cond.end.193
  %54 = load i64, i64* %ltmp, align 8
  %cmp204 = icmp sgt i64 %54, 0
  %cond206 = select i1 %cmp204, i32 32767, i32 -32768
  %conv207 = sext i32 %cond206 to i64
  br label %cond.end.209

cond.false.208:                                   ; preds = %cond.end.193
  %55 = load i64, i64* %ltmp, align 8
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.203
  %cond210 = phi i64 [ %conv207, %cond.true.203 ], [ %55, %cond.false.208 ]
  %shl211 = shl i64 %cond210, 10
  %conv212 = trunc i64 %shl211 to i16
  store i16 %conv212, i16* %temp1, align 2
  %56 = load i16, i16* %temp1, align 2
  %conv213 = sext i16 %56 to i64
  %sub214 = sub nsw i64 %conv213, 188
  store i64 %sub214, i64* %ltmp, align 8
  %cmp215 = icmp sge i64 %sub214, 32767
  br i1 %cmp215, label %cond.true.217, label %cond.false.218

cond.true.217:                                    ; preds = %cond.end.209
  br label %cond.end.225

cond.false.218:                                   ; preds = %cond.end.209
  %57 = load i64, i64* %ltmp, align 8
  %cmp219 = icmp sle i64 %57, -32768
  br i1 %cmp219, label %cond.true.221, label %cond.false.222

cond.true.221:                                    ; preds = %cond.false.218
  br label %cond.end.223

cond.false.222:                                   ; preds = %cond.false.218
  %58 = load i64, i64* %ltmp, align 8
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.222, %cond.true.221
  %cond224 = phi i64 [ -32768, %cond.true.221 ], [ %58, %cond.false.222 ]
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.end.223, %cond.true.217
  %cond226 = phi i64 [ 32767, %cond.true.217 ], [ %cond224, %cond.end.223 ]
  %conv227 = trunc i64 %cond226 to i16
  store i16 %conv227, i16* %temp1, align 2
  %59 = load i16, i16* %temp1, align 2
  %conv228 = sext i16 %59 to i64
  %mul229 = mul nsw i64 19223, %conv228
  %add230 = add nsw i64 %mul229, 16384
  %shr231 = ashr i64 %add230, 15
  %conv232 = trunc i64 %shr231 to i16
  store i16 %conv232, i16* %temp1, align 2
  %60 = load i16, i16* %temp1, align 2
  %conv233 = sext i16 %60 to i64
  %61 = load i16, i16* %temp1, align 2
  %conv234 = sext i16 %61 to i64
  %add235 = add nsw i64 %conv233, %conv234
  store i64 %add235, i64* %ltmp, align 8
  %sub236 = sub nsw i64 %add235, -32768
  %cmp237 = icmp ugt i64 %sub236, 65535
  br i1 %cmp237, label %cond.true.239, label %cond.false.244

cond.true.239:                                    ; preds = %cond.end.225
  %62 = load i64, i64* %ltmp, align 8
  %cmp240 = icmp sgt i64 %62, 0
  %cond242 = select i1 %cmp240, i32 32767, i32 -32768
  %conv243 = sext i32 %cond242 to i64
  br label %cond.end.245

cond.false.244:                                   ; preds = %cond.end.225
  %63 = load i64, i64* %ltmp, align 8
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.244, %cond.true.239
  %cond246 = phi i64 [ %conv243, %cond.true.239 ], [ %63, %cond.false.244 ]
  %conv247 = trunc i64 %cond246 to i16
  %64 = load i16*, i16** %LARpp.addr, align 8
  %incdec.ptr248 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %incdec.ptr248, i16** %LARpp.addr, align 8
  store i16 %conv247, i16* %64, align 2
  %65 = load i16*, i16** %LARc.addr, align 8
  %incdec.ptr249 = getelementptr inbounds i16, i16* %65, i32 1
  store i16* %incdec.ptr249, i16** %LARc.addr, align 8
  %66 = load i16, i16* %65, align 2
  %conv250 = sext i16 %66 to i64
  %add251 = add nsw i64 %conv250, -8
  store i64 %add251, i64* %ltmp, align 8
  %sub252 = sub nsw i64 %add251, -32768
  %cmp253 = icmp ugt i64 %sub252, 65535
  br i1 %cmp253, label %cond.true.255, label %cond.false.260

cond.true.255:                                    ; preds = %cond.end.245
  %67 = load i64, i64* %ltmp, align 8
  %cmp256 = icmp sgt i64 %67, 0
  %cond258 = select i1 %cmp256, i32 32767, i32 -32768
  %conv259 = sext i32 %cond258 to i64
  br label %cond.end.261

cond.false.260:                                   ; preds = %cond.end.245
  %68 = load i64, i64* %ltmp, align 8
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.260, %cond.true.255
  %cond262 = phi i64 [ %conv259, %cond.true.255 ], [ %68, %cond.false.260 ]
  %shl263 = shl i64 %cond262, 10
  %conv264 = trunc i64 %shl263 to i16
  store i16 %conv264, i16* %temp1, align 2
  %69 = load i16, i16* %temp1, align 2
  %conv265 = sext i16 %69 to i64
  %sub266 = sub nsw i64 %conv265, -3584
  store i64 %sub266, i64* %ltmp, align 8
  %cmp267 = icmp sge i64 %sub266, 32767
  br i1 %cmp267, label %cond.true.269, label %cond.false.270

cond.true.269:                                    ; preds = %cond.end.261
  br label %cond.end.277

cond.false.270:                                   ; preds = %cond.end.261
  %70 = load i64, i64* %ltmp, align 8
  %cmp271 = icmp sle i64 %70, -32768
  br i1 %cmp271, label %cond.true.273, label %cond.false.274

cond.true.273:                                    ; preds = %cond.false.270
  br label %cond.end.275

cond.false.274:                                   ; preds = %cond.false.270
  %71 = load i64, i64* %ltmp, align 8
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.274, %cond.true.273
  %cond276 = phi i64 [ -32768, %cond.true.273 ], [ %71, %cond.false.274 ]
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.end.275, %cond.true.269
  %cond278 = phi i64 [ 32767, %cond.true.269 ], [ %cond276, %cond.end.275 ]
  %conv279 = trunc i64 %cond278 to i16
  store i16 %conv279, i16* %temp1, align 2
  %72 = load i16, i16* %temp1, align 2
  %conv280 = sext i16 %72 to i64
  %mul281 = mul nsw i64 17476, %conv280
  %add282 = add nsw i64 %mul281, 16384
  %shr283 = ashr i64 %add282, 15
  %conv284 = trunc i64 %shr283 to i16
  store i16 %conv284, i16* %temp1, align 2
  %73 = load i16, i16* %temp1, align 2
  %conv285 = sext i16 %73 to i64
  %74 = load i16, i16* %temp1, align 2
  %conv286 = sext i16 %74 to i64
  %add287 = add nsw i64 %conv285, %conv286
  store i64 %add287, i64* %ltmp, align 8
  %sub288 = sub nsw i64 %add287, -32768
  %cmp289 = icmp ugt i64 %sub288, 65535
  br i1 %cmp289, label %cond.true.291, label %cond.false.296

cond.true.291:                                    ; preds = %cond.end.277
  %75 = load i64, i64* %ltmp, align 8
  %cmp292 = icmp sgt i64 %75, 0
  %cond294 = select i1 %cmp292, i32 32767, i32 -32768
  %conv295 = sext i32 %cond294 to i64
  br label %cond.end.297

cond.false.296:                                   ; preds = %cond.end.277
  %76 = load i64, i64* %ltmp, align 8
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.false.296, %cond.true.291
  %cond298 = phi i64 [ %conv295, %cond.true.291 ], [ %76, %cond.false.296 ]
  %conv299 = trunc i64 %cond298 to i16
  %77 = load i16*, i16** %LARpp.addr, align 8
  %incdec.ptr300 = getelementptr inbounds i16, i16* %77, i32 1
  store i16* %incdec.ptr300, i16** %LARpp.addr, align 8
  store i16 %conv299, i16* %77, align 2
  %78 = load i16*, i16** %LARc.addr, align 8
  %incdec.ptr301 = getelementptr inbounds i16, i16* %78, i32 1
  store i16* %incdec.ptr301, i16** %LARc.addr, align 8
  %79 = load i16, i16* %78, align 2
  %conv302 = sext i16 %79 to i64
  %add303 = add nsw i64 %conv302, -4
  store i64 %add303, i64* %ltmp, align 8
  %sub304 = sub nsw i64 %add303, -32768
  %cmp305 = icmp ugt i64 %sub304, 65535
  br i1 %cmp305, label %cond.true.307, label %cond.false.312

cond.true.307:                                    ; preds = %cond.end.297
  %80 = load i64, i64* %ltmp, align 8
  %cmp308 = icmp sgt i64 %80, 0
  %cond310 = select i1 %cmp308, i32 32767, i32 -32768
  %conv311 = sext i32 %cond310 to i64
  br label %cond.end.313

cond.false.312:                                   ; preds = %cond.end.297
  %81 = load i64, i64* %ltmp, align 8
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.312, %cond.true.307
  %cond314 = phi i64 [ %conv311, %cond.true.307 ], [ %81, %cond.false.312 ]
  %shl315 = shl i64 %cond314, 10
  %conv316 = trunc i64 %shl315 to i16
  store i16 %conv316, i16* %temp1, align 2
  %82 = load i16, i16* %temp1, align 2
  %conv317 = sext i16 %82 to i64
  %sub318 = sub nsw i64 %conv317, -682
  store i64 %sub318, i64* %ltmp, align 8
  %cmp319 = icmp sge i64 %sub318, 32767
  br i1 %cmp319, label %cond.true.321, label %cond.false.322

cond.true.321:                                    ; preds = %cond.end.313
  br label %cond.end.329

cond.false.322:                                   ; preds = %cond.end.313
  %83 = load i64, i64* %ltmp, align 8
  %cmp323 = icmp sle i64 %83, -32768
  br i1 %cmp323, label %cond.true.325, label %cond.false.326

cond.true.325:                                    ; preds = %cond.false.322
  br label %cond.end.327

cond.false.326:                                   ; preds = %cond.false.322
  %84 = load i64, i64* %ltmp, align 8
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.false.326, %cond.true.325
  %cond328 = phi i64 [ -32768, %cond.true.325 ], [ %84, %cond.false.326 ]
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.end.327, %cond.true.321
  %cond330 = phi i64 [ 32767, %cond.true.321 ], [ %cond328, %cond.end.327 ]
  %conv331 = trunc i64 %cond330 to i16
  store i16 %conv331, i16* %temp1, align 2
  %85 = load i16, i16* %temp1, align 2
  %conv332 = sext i16 %85 to i64
  %mul333 = mul nsw i64 31454, %conv332
  %add334 = add nsw i64 %mul333, 16384
  %shr335 = ashr i64 %add334, 15
  %conv336 = trunc i64 %shr335 to i16
  store i16 %conv336, i16* %temp1, align 2
  %86 = load i16, i16* %temp1, align 2
  %conv337 = sext i16 %86 to i64
  %87 = load i16, i16* %temp1, align 2
  %conv338 = sext i16 %87 to i64
  %add339 = add nsw i64 %conv337, %conv338
  store i64 %add339, i64* %ltmp, align 8
  %sub340 = sub nsw i64 %add339, -32768
  %cmp341 = icmp ugt i64 %sub340, 65535
  br i1 %cmp341, label %cond.true.343, label %cond.false.348

cond.true.343:                                    ; preds = %cond.end.329
  %88 = load i64, i64* %ltmp, align 8
  %cmp344 = icmp sgt i64 %88, 0
  %cond346 = select i1 %cmp344, i32 32767, i32 -32768
  %conv347 = sext i32 %cond346 to i64
  br label %cond.end.349

cond.false.348:                                   ; preds = %cond.end.329
  %89 = load i64, i64* %ltmp, align 8
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.false.348, %cond.true.343
  %cond350 = phi i64 [ %conv347, %cond.true.343 ], [ %89, %cond.false.348 ]
  %conv351 = trunc i64 %cond350 to i16
  %90 = load i16*, i16** %LARpp.addr, align 8
  %incdec.ptr352 = getelementptr inbounds i16, i16* %90, i32 1
  store i16* %incdec.ptr352, i16** %LARpp.addr, align 8
  store i16 %conv351, i16* %90, align 2
  %91 = load i16*, i16** %LARc.addr, align 8
  %incdec.ptr353 = getelementptr inbounds i16, i16* %91, i32 1
  store i16* %incdec.ptr353, i16** %LARc.addr, align 8
  %92 = load i16, i16* %91, align 2
  %conv354 = sext i16 %92 to i64
  %add355 = add nsw i64 %conv354, -4
  store i64 %add355, i64* %ltmp, align 8
  %sub356 = sub nsw i64 %add355, -32768
  %cmp357 = icmp ugt i64 %sub356, 65535
  br i1 %cmp357, label %cond.true.359, label %cond.false.364

cond.true.359:                                    ; preds = %cond.end.349
  %93 = load i64, i64* %ltmp, align 8
  %cmp360 = icmp sgt i64 %93, 0
  %cond362 = select i1 %cmp360, i32 32767, i32 -32768
  %conv363 = sext i32 %cond362 to i64
  br label %cond.end.365

cond.false.364:                                   ; preds = %cond.end.349
  %94 = load i64, i64* %ltmp, align 8
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.364, %cond.true.359
  %cond366 = phi i64 [ %conv363, %cond.true.359 ], [ %94, %cond.false.364 ]
  %shl367 = shl i64 %cond366, 10
  %conv368 = trunc i64 %shl367 to i16
  store i16 %conv368, i16* %temp1, align 2
  %95 = load i16, i16* %temp1, align 2
  %conv369 = sext i16 %95 to i64
  %sub370 = sub nsw i64 %conv369, -2288
  store i64 %sub370, i64* %ltmp, align 8
  %cmp371 = icmp sge i64 %sub370, 32767
  br i1 %cmp371, label %cond.true.373, label %cond.false.374

cond.true.373:                                    ; preds = %cond.end.365
  br label %cond.end.381

cond.false.374:                                   ; preds = %cond.end.365
  %96 = load i64, i64* %ltmp, align 8
  %cmp375 = icmp sle i64 %96, -32768
  br i1 %cmp375, label %cond.true.377, label %cond.false.378

cond.true.377:                                    ; preds = %cond.false.374
  br label %cond.end.379

cond.false.378:                                   ; preds = %cond.false.374
  %97 = load i64, i64* %ltmp, align 8
  br label %cond.end.379

cond.end.379:                                     ; preds = %cond.false.378, %cond.true.377
  %cond380 = phi i64 [ -32768, %cond.true.377 ], [ %97, %cond.false.378 ]
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.end.379, %cond.true.373
  %cond382 = phi i64 [ 32767, %cond.true.373 ], [ %cond380, %cond.end.379 ]
  %conv383 = trunc i64 %cond382 to i16
  store i16 %conv383, i16* %temp1, align 2
  %98 = load i16, i16* %temp1, align 2
  %conv384 = sext i16 %98 to i64
  %mul385 = mul nsw i64 29708, %conv384
  %add386 = add nsw i64 %mul385, 16384
  %shr387 = ashr i64 %add386, 15
  %conv388 = trunc i64 %shr387 to i16
  store i16 %conv388, i16* %temp1, align 2
  %99 = load i16, i16* %temp1, align 2
  %conv389 = sext i16 %99 to i64
  %100 = load i16, i16* %temp1, align 2
  %conv390 = sext i16 %100 to i64
  %add391 = add nsw i64 %conv389, %conv390
  store i64 %add391, i64* %ltmp, align 8
  %sub392 = sub nsw i64 %add391, -32768
  %cmp393 = icmp ugt i64 %sub392, 65535
  br i1 %cmp393, label %cond.true.395, label %cond.false.400

cond.true.395:                                    ; preds = %cond.end.381
  %101 = load i64, i64* %ltmp, align 8
  %cmp396 = icmp sgt i64 %101, 0
  %cond398 = select i1 %cmp396, i32 32767, i32 -32768
  %conv399 = sext i32 %cond398 to i64
  br label %cond.end.401

cond.false.400:                                   ; preds = %cond.end.381
  %102 = load i64, i64* %ltmp, align 8
  br label %cond.end.401

cond.end.401:                                     ; preds = %cond.false.400, %cond.true.395
  %cond402 = phi i64 [ %conv399, %cond.true.395 ], [ %102, %cond.false.400 ]
  %conv403 = trunc i64 %cond402 to i16
  %103 = load i16*, i16** %LARpp.addr, align 8
  %incdec.ptr404 = getelementptr inbounds i16, i16* %103, i32 1
  store i16* %incdec.ptr404, i16** %LARpp.addr, align 8
  store i16 %conv403, i16* %103, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Coefficients_0_12(i16* %LARpp_j_1, i16* %LARpp_j, i16* %LARp) #0 {
entry:
  %LARpp_j_1.addr = alloca i16*, align 8
  %LARpp_j.addr = alloca i16*, align 8
  %LARp.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store i16* %LARpp_j_1, i16** %LARpp_j_1.addr, align 8
  store i16* %LARpp_j, i16** %LARpp_j.addr, align 8
  store i16* %LARp, i16** %LARp.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %LARpp_j_1.addr, align 8
  %2 = load i16, i16* %1, align 2
  %conv = sext i16 %2 to i32
  %shr = ashr i32 %conv, 2
  %conv1 = sext i32 %shr to i64
  %3 = load i16*, i16** %LARpp_j.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv2 = sext i16 %4 to i32
  %shr3 = ashr i32 %conv2, 2
  %conv4 = sext i32 %shr3 to i64
  %add = add nsw i64 %conv1, %conv4
  store i64 %add, i64* %ltmp, align 8
  %sub = sub nsw i64 %add, -32768
  %cmp5 = icmp ugt i64 %sub, 65535
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i64, i64* %ltmp, align 8
  %cmp7 = icmp sgt i64 %5, 0
  %cond = select i1 %cmp7, i32 32767, i32 -32768
  %conv9 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i64, i64* %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %conv9, %cond.true ], [ %6, %cond.false ]
  %conv11 = trunc i64 %cond10 to i16
  %7 = load i16*, i16** %LARp.addr, align 8
  store i16 %conv11, i16* %7, align 2
  %8 = load i16*, i16** %LARp.addr, align 8
  %9 = load i16, i16* %8, align 2
  %conv12 = sext i16 %9 to i64
  %10 = load i16*, i16** %LARpp_j_1.addr, align 8
  %11 = load i16, i16* %10, align 2
  %conv13 = sext i16 %11 to i32
  %shr14 = ashr i32 %conv13, 1
  %conv15 = sext i32 %shr14 to i64
  %add16 = add nsw i64 %conv12, %conv15
  store i64 %add16, i64* %ltmp, align 8
  %sub17 = sub nsw i64 %add16, -32768
  %cmp18 = icmp ugt i64 %sub17, 65535
  br i1 %cmp18, label %cond.true.20, label %cond.false.25

cond.true.20:                                     ; preds = %cond.end
  %12 = load i64, i64* %ltmp, align 8
  %cmp21 = icmp sgt i64 %12, 0
  %cond23 = select i1 %cmp21, i32 32767, i32 -32768
  %conv24 = sext i32 %cond23 to i64
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end
  %13 = load i64, i64* %ltmp, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.20
  %cond27 = phi i64 [ %conv24, %cond.true.20 ], [ %13, %cond.false.25 ]
  %conv28 = trunc i64 %cond27 to i16
  %14 = load i16*, i16** %LARp.addr, align 8
  store i16 %conv28, i16* %14, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.26
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i16*, i16** %LARp.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr, i16** %LARp.addr, align 8
  %17 = load i16*, i16** %LARpp_j_1.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr29, i16** %LARpp_j_1.addr, align 8
  %18 = load i16*, i16** %LARpp_j.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr30, i16** %LARpp_j.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LARp_to_rp(i16* %LARp) #0 {
entry:
  %LARp.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %temp = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store i16* %LARp, i16** %LARp.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %LARp.addr, align 8
  %2 = load i16, i16* %1, align 2
  %conv = sext i16 %2 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i16*, i16** %LARp.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv3 = sext i16 %4 to i32
  %cmp4 = icmp eq i32 %conv3, -32768
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load i16*, i16** %LARp.addr, align 8
  %6 = load i16, i16* %5, align 2
  %conv6 = sext i16 %6 to i32
  %sub = sub nsw i32 0, %conv6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32767, %cond.true ], [ %sub, %cond.false ]
  %conv7 = trunc i32 %cond to i16
  store i16 %conv7, i16* %temp, align 2
  %7 = load i16, i16* %temp, align 2
  %conv8 = sext i16 %7 to i32
  %cmp9 = icmp slt i32 %conv8, 11059
  br i1 %cmp9, label %cond.true.11, label %cond.false.14

cond.true.11:                                     ; preds = %cond.end
  %8 = load i16, i16* %temp, align 2
  %conv12 = sext i16 %8 to i32
  %shl = shl i32 %conv12, 1
  %conv13 = sext i32 %shl to i64
  br label %cond.end.38

cond.false.14:                                    ; preds = %cond.end
  %9 = load i16, i16* %temp, align 2
  %conv15 = sext i16 %9 to i32
  %cmp16 = icmp slt i32 %conv15, 20070
  br i1 %cmp16, label %cond.true.18, label %cond.false.21

cond.true.18:                                     ; preds = %cond.false.14
  %10 = load i16, i16* %temp, align 2
  %conv19 = sext i16 %10 to i32
  %add = add nsw i32 %conv19, 11059
  %conv20 = sext i32 %add to i64
  br label %cond.end.36

cond.false.21:                                    ; preds = %cond.false.14
  %11 = load i16, i16* %temp, align 2
  %conv22 = sext i16 %11 to i32
  %shr = ashr i32 %conv22, 2
  %conv23 = sext i32 %shr to i64
  %add24 = add nsw i64 %conv23, 26112
  store i64 %add24, i64* %ltmp, align 8
  %sub25 = sub nsw i64 %add24, -32768
  %cmp26 = icmp ugt i64 %sub25, 65535
  br i1 %cmp26, label %cond.true.28, label %cond.false.33

cond.true.28:                                     ; preds = %cond.false.21
  %12 = load i64, i64* %ltmp, align 8
  %cmp29 = icmp sgt i64 %12, 0
  %cond31 = select i1 %cmp29, i32 32767, i32 -32768
  %conv32 = sext i32 %cond31 to i64
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.false.21
  %13 = load i64, i64* %ltmp, align 8
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.28
  %cond35 = phi i64 [ %conv32, %cond.true.28 ], [ %13, %cond.false.33 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end.34, %cond.true.18
  %cond37 = phi i64 [ %conv20, %cond.true.18 ], [ %cond35, %cond.end.34 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.11
  %cond39 = phi i64 [ %conv13, %cond.true.11 ], [ %cond37, %cond.end.36 ]
  %sub40 = sub nsw i64 0, %cond39
  %conv41 = trunc i64 %sub40 to i16
  %14 = load i16*, i16** %LARp.addr, align 8
  store i16 %conv41, i16* %14, align 2
  br label %if.end

if.else:                                          ; preds = %for.body
  %15 = load i16*, i16** %LARp.addr, align 8
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %temp, align 2
  %17 = load i16, i16* %temp, align 2
  %conv42 = sext i16 %17 to i32
  %cmp43 = icmp slt i32 %conv42, 11059
  br i1 %cmp43, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %if.else
  %18 = load i16, i16* %temp, align 2
  %conv46 = sext i16 %18 to i32
  %shl47 = shl i32 %conv46, 1
  %conv48 = sext i32 %shl47 to i64
  br label %cond.end.75

cond.false.49:                                    ; preds = %if.else
  %19 = load i16, i16* %temp, align 2
  %conv50 = sext i16 %19 to i32
  %cmp51 = icmp slt i32 %conv50, 20070
  br i1 %cmp51, label %cond.true.53, label %cond.false.57

cond.true.53:                                     ; preds = %cond.false.49
  %20 = load i16, i16* %temp, align 2
  %conv54 = sext i16 %20 to i32
  %add55 = add nsw i32 %conv54, 11059
  %conv56 = sext i32 %add55 to i64
  br label %cond.end.73

cond.false.57:                                    ; preds = %cond.false.49
  %21 = load i16, i16* %temp, align 2
  %conv58 = sext i16 %21 to i32
  %shr59 = ashr i32 %conv58, 2
  %conv60 = sext i32 %shr59 to i64
  %add61 = add nsw i64 %conv60, 26112
  store i64 %add61, i64* %ltmp, align 8
  %sub62 = sub nsw i64 %add61, -32768
  %cmp63 = icmp ugt i64 %sub62, 65535
  br i1 %cmp63, label %cond.true.65, label %cond.false.70

cond.true.65:                                     ; preds = %cond.false.57
  %22 = load i64, i64* %ltmp, align 8
  %cmp66 = icmp sgt i64 %22, 0
  %cond68 = select i1 %cmp66, i32 32767, i32 -32768
  %conv69 = sext i32 %cond68 to i64
  br label %cond.end.71

cond.false.70:                                    ; preds = %cond.false.57
  %23 = load i64, i64* %ltmp, align 8
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.65
  %cond72 = phi i64 [ %conv69, %cond.true.65 ], [ %23, %cond.false.70 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.53
  %cond74 = phi i64 [ %conv56, %cond.true.53 ], [ %cond72, %cond.end.71 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.true.45
  %cond76 = phi i64 [ %conv48, %cond.true.45 ], [ %cond74, %cond.end.73 ]
  %conv77 = trunc i64 %cond76 to i16
  %24 = load i16*, i16** %LARp.addr, align 8
  store i16 %conv77, i16* %24, align 2
  br label %if.end

if.end:                                           ; preds = %cond.end.75, %cond.end.38
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  %26 = load i16*, i16** %LARp.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %incdec.ptr, i16** %LARp.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Short_term_analysis_filtering(%struct.gsm_state* %S, i16* %rp, i32 %k_n, i16* %s) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %rp.addr = alloca i16*, align 8
  %k_n.addr = alloca i32, align 4
  %s.addr = alloca i16*, align 8
  %u = alloca i16*, align 8
  %i = alloca i32, align 4
  %di = alloca i16, align 2
  %zzz = alloca i16, align 2
  %ui = alloca i16, align 2
  %sav = alloca i16, align 2
  %rpi = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %rp, i16** %rp.addr, align 8
  store i32 %k_n, i32* %k_n.addr, align 4
  store i16* %s, i16** %s.addr, align 8
  %0 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %u1 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i16], [8 x i16]* %u1, i32 0, i32 0
  store i16* %arraydecay, i16** %u, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %entry
  %1 = load i32, i32* %k_n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %k_n.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %s.addr, align 8
  %3 = load i16, i16* %2, align 2
  store i16 %3, i16* %sav, align 2
  store i16 %3, i16* %di, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 8
  br i1 %cmp, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i16*, i16** %u, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  store i16 %7, i16* %ui, align 2
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i16*, i16** %rp.addr, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %9, i64 %idxprom4
  %10 = load i16, i16* %arrayidx5, align 2
  store i16 %10, i16* %rpi, align 2
  %11 = load i16, i16* %sav, align 2
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i16*, i16** %u, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %13, i64 %idxprom6
  store i16 %11, i16* %arrayidx7, align 2
  %14 = load i16, i16* %rpi, align 2
  %conv = sext i16 %14 to i64
  %15 = load i16, i16* %di, align 2
  %conv8 = sext i16 %15 to i64
  %mul = mul nsw i64 %conv, %conv8
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv9 = trunc i64 %shr to i16
  store i16 %conv9, i16* %zzz, align 2
  %16 = load i16, i16* %ui, align 2
  %conv10 = sext i16 %16 to i64
  %17 = load i16, i16* %zzz, align 2
  %conv11 = sext i16 %17 to i64
  %add12 = add nsw i64 %conv10, %conv11
  store i64 %add12, i64* %ltmp, align 8
  %sub = sub nsw i64 %add12, -32768
  %cmp13 = icmp ugt i64 %sub, 65535
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %18 = load i64, i64* %ltmp, align 8
  %cmp15 = icmp sgt i64 %18, 0
  %cond = select i1 %cmp15, i32 32767, i32 -32768
  %conv17 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %19 = load i64, i64* %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i64 [ %conv17, %cond.true ], [ %19, %cond.false ]
  %conv19 = trunc i64 %cond18 to i16
  store i16 %conv19, i16* %sav, align 2
  %20 = load i16, i16* %rpi, align 2
  %conv20 = sext i16 %20 to i64
  %21 = load i16, i16* %ui, align 2
  %conv21 = sext i16 %21 to i64
  %mul22 = mul nsw i64 %conv20, %conv21
  %add23 = add nsw i64 %mul22, 16384
  %shr24 = ashr i64 %add23, 15
  %conv25 = trunc i64 %shr24 to i16
  store i16 %conv25, i16* %zzz, align 2
  %22 = load i16, i16* %di, align 2
  %conv26 = sext i16 %22 to i64
  %23 = load i16, i16* %zzz, align 2
  %conv27 = sext i16 %23 to i64
  %add28 = add nsw i64 %conv26, %conv27
  store i64 %add28, i64* %ltmp, align 8
  %sub29 = sub nsw i64 %add28, -32768
  %cmp30 = icmp ugt i64 %sub29, 65535
  br i1 %cmp30, label %cond.true.32, label %cond.false.37

cond.true.32:                                     ; preds = %cond.end
  %24 = load i64, i64* %ltmp, align 8
  %cmp33 = icmp sgt i64 %24, 0
  %cond35 = select i1 %cmp33, i32 32767, i32 -32768
  %conv36 = sext i32 %cond35 to i64
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.end
  %25 = load i64, i64* %ltmp, align 8
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.32
  %cond39 = phi i64 [ %conv36, %cond.true.32 ], [ %25, %cond.false.37 ]
  %conv40 = trunc i64 %cond39 to i16
  store i16 %conv40, i16* %di, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.38
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %27 = load i16, i16* %di, align 2
  %28 = load i16*, i16** %s.addr, align 8
  store i16 %27, i16* %28, align 2
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %29 = load i16*, i16** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %incdec.ptr, i16** %s.addr, align 8
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Coefficients_13_26(i16* %LARpp_j_1, i16* %LARpp_j, i16* %LARp) #0 {
entry:
  %LARpp_j_1.addr = alloca i16*, align 8
  %LARpp_j.addr = alloca i16*, align 8
  %LARp.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store i16* %LARpp_j_1, i16** %LARpp_j_1.addr, align 8
  store i16* %LARpp_j, i16** %LARpp_j.addr, align 8
  store i16* %LARp, i16** %LARp.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %LARpp_j_1.addr, align 8
  %2 = load i16, i16* %1, align 2
  %conv = sext i16 %2 to i32
  %shr = ashr i32 %conv, 1
  %conv1 = sext i32 %shr to i64
  %3 = load i16*, i16** %LARpp_j.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv2 = sext i16 %4 to i32
  %shr3 = ashr i32 %conv2, 1
  %conv4 = sext i32 %shr3 to i64
  %add = add nsw i64 %conv1, %conv4
  store i64 %add, i64* %ltmp, align 8
  %sub = sub nsw i64 %add, -32768
  %cmp5 = icmp ugt i64 %sub, 65535
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i64, i64* %ltmp, align 8
  %cmp7 = icmp sgt i64 %5, 0
  %cond = select i1 %cmp7, i32 32767, i32 -32768
  %conv9 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i64, i64* %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %conv9, %cond.true ], [ %6, %cond.false ]
  %conv11 = trunc i64 %cond10 to i16
  %7 = load i16*, i16** %LARp.addr, align 8
  store i16 %conv11, i16* %7, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  %9 = load i16*, i16** %LARpp_j_1.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %LARpp_j_1.addr, align 8
  %10 = load i16*, i16** %LARpp_j.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %incdec.ptr12, i16** %LARpp_j.addr, align 8
  %11 = load i16*, i16** %LARp.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr13, i16** %LARp.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Coefficients_27_39(i16* %LARpp_j_1, i16* %LARpp_j, i16* %LARp) #0 {
entry:
  %LARpp_j_1.addr = alloca i16*, align 8
  %LARpp_j.addr = alloca i16*, align 8
  %LARp.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store i16* %LARpp_j_1, i16** %LARpp_j_1.addr, align 8
  store i16* %LARpp_j, i16** %LARpp_j.addr, align 8
  store i16* %LARp, i16** %LARp.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %LARpp_j_1.addr, align 8
  %2 = load i16, i16* %1, align 2
  %conv = sext i16 %2 to i32
  %shr = ashr i32 %conv, 2
  %conv1 = sext i32 %shr to i64
  %3 = load i16*, i16** %LARpp_j.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv2 = sext i16 %4 to i32
  %shr3 = ashr i32 %conv2, 2
  %conv4 = sext i32 %shr3 to i64
  %add = add nsw i64 %conv1, %conv4
  store i64 %add, i64* %ltmp, align 8
  %sub = sub nsw i64 %add, -32768
  %cmp5 = icmp ugt i64 %sub, 65535
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i64, i64* %ltmp, align 8
  %cmp7 = icmp sgt i64 %5, 0
  %cond = select i1 %cmp7, i32 32767, i32 -32768
  %conv9 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i64, i64* %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %conv9, %cond.true ], [ %6, %cond.false ]
  %conv11 = trunc i64 %cond10 to i16
  %7 = load i16*, i16** %LARp.addr, align 8
  store i16 %conv11, i16* %7, align 2
  %8 = load i16*, i16** %LARp.addr, align 8
  %9 = load i16, i16* %8, align 2
  %conv12 = sext i16 %9 to i64
  %10 = load i16*, i16** %LARpp_j.addr, align 8
  %11 = load i16, i16* %10, align 2
  %conv13 = sext i16 %11 to i32
  %shr14 = ashr i32 %conv13, 1
  %conv15 = sext i32 %shr14 to i64
  %add16 = add nsw i64 %conv12, %conv15
  store i64 %add16, i64* %ltmp, align 8
  %sub17 = sub nsw i64 %add16, -32768
  %cmp18 = icmp ugt i64 %sub17, 65535
  br i1 %cmp18, label %cond.true.20, label %cond.false.25

cond.true.20:                                     ; preds = %cond.end
  %12 = load i64, i64* %ltmp, align 8
  %cmp21 = icmp sgt i64 %12, 0
  %cond23 = select i1 %cmp21, i32 32767, i32 -32768
  %conv24 = sext i32 %cond23 to i64
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.end
  %13 = load i64, i64* %ltmp, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.20
  %cond27 = phi i64 [ %conv24, %cond.true.20 ], [ %13, %cond.false.25 ]
  %conv28 = trunc i64 %cond27 to i16
  %14 = load i16*, i16** %LARp.addr, align 8
  store i16 %conv28, i16* %14, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.26
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i16*, i16** %LARpp_j_1.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr, i16** %LARpp_j_1.addr, align 8
  %17 = load i16*, i16** %LARpp_j.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr29, i16** %LARpp_j.addr, align 8
  %18 = load i16*, i16** %LARp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i16, i16* %18, i32 1
  store i16* %incdec.ptr30, i16** %LARp.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Coefficients_40_159(i16* %LARpp_j, i16* %LARp) #0 {
entry:
  %LARpp_j.addr = alloca i16*, align 8
  %LARp.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16* %LARpp_j, i16** %LARpp_j.addr, align 8
  store i16* %LARp, i16** %LARp.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %LARpp_j.addr, align 8
  %2 = load i16, i16* %1, align 2
  %3 = load i16*, i16** %LARp.addr, align 8
  store i16 %2, i16* %3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  %5 = load i16*, i16** %LARp.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr, i16** %LARp.addr, align 8
  %6 = load i16*, i16** %LARpp_j.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i16, i16* %6, i32 1
  store i16* %incdec.ptr1, i16** %LARpp_j.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state* %S, i16* %LARcr, i16* %wt, i16* %s) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %LARcr.addr = alloca i16*, align 8
  %wt.addr = alloca i16*, align 8
  %s.addr = alloca i16*, align 8
  %LARpp_j = alloca i16*, align 8
  %LARpp_j_1 = alloca i16*, align 8
  %LARp = alloca [8 x i16], align 16
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %LARcr, i16** %LARcr.addr, align 8
  store i16* %wt, i16** %wt.addr, align 8
  store i16* %s, i16** %s.addr, align 8
  %0 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %j = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i32 0, i32 6
  %1 = load i16, i16* %j, align 2
  %idxprom = sext i16 %1 to i64
  %2 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %LARpp = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %2, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x [8 x i16]], [2 x [8 x i16]]* %LARpp, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %LARpp_j, align 8
  %3 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %j1 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %3, i32 0, i32 6
  %4 = load i16, i16* %j1, align 2
  %conv = sext i16 %4 to i32
  %xor = xor i32 %conv, 1
  %conv2 = trunc i32 %xor to i16
  store i16 %conv2, i16* %j1, align 2
  %idxprom3 = sext i16 %conv2 to i64
  %5 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %LARpp4 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %5, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [2 x [8 x i16]], [2 x [8 x i16]]* %LARpp4, i32 0, i64 %idxprom3
  %arraydecay6 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx5, i32 0, i32 0
  store i16* %arraydecay6, i16** %LARpp_j_1, align 8
  %6 = load i16*, i16** %LARcr.addr, align 8
  %7 = load i16*, i16** %LARpp_j, align 8
  call void @Decoding_of_the_coded_Log_Area_Ratios(i16* %6, i16* %7)
  %8 = load i16*, i16** %LARpp_j_1, align 8
  %9 = load i16*, i16** %LARpp_j, align 8
  %arraydecay7 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @Coefficients_0_12(i16* %8, i16* %9, i16* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @LARp_to_rp(i16* %arraydecay8)
  %10 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay9 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  %11 = load i16*, i16** %wt.addr, align 8
  %12 = load i16*, i16** %s.addr, align 8
  call void @Short_term_synthesis_filtering(%struct.gsm_state* %10, i16* %arraydecay9, i32 13, i16* %11, i16* %12)
  %13 = load i16*, i16** %LARpp_j_1, align 8
  %14 = load i16*, i16** %LARpp_j, align 8
  %arraydecay10 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @Coefficients_13_26(i16* %13, i16* %14, i16* %arraydecay10)
  %arraydecay11 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @LARp_to_rp(i16* %arraydecay11)
  %15 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay12 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  %16 = load i16*, i16** %wt.addr, align 8
  %add.ptr = getelementptr inbounds i16, i16* %16, i64 13
  %17 = load i16*, i16** %s.addr, align 8
  %add.ptr13 = getelementptr inbounds i16, i16* %17, i64 13
  call void @Short_term_synthesis_filtering(%struct.gsm_state* %15, i16* %arraydecay12, i32 14, i16* %add.ptr, i16* %add.ptr13)
  %18 = load i16*, i16** %LARpp_j_1, align 8
  %19 = load i16*, i16** %LARpp_j, align 8
  %arraydecay14 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @Coefficients_27_39(i16* %18, i16* %19, i16* %arraydecay14)
  %arraydecay15 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @LARp_to_rp(i16* %arraydecay15)
  %20 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay16 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  %21 = load i16*, i16** %wt.addr, align 8
  %add.ptr17 = getelementptr inbounds i16, i16* %21, i64 27
  %22 = load i16*, i16** %s.addr, align 8
  %add.ptr18 = getelementptr inbounds i16, i16* %22, i64 27
  call void @Short_term_synthesis_filtering(%struct.gsm_state* %20, i16* %arraydecay16, i32 13, i16* %add.ptr17, i16* %add.ptr18)
  %23 = load i16*, i16** %LARpp_j, align 8
  %arraydecay19 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @Coefficients_40_159(i16* %23, i16* %arraydecay19)
  %arraydecay20 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  call void @LARp_to_rp(i16* %arraydecay20)
  %24 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %arraydecay21 = getelementptr inbounds [8 x i16], [8 x i16]* %LARp, i32 0, i32 0
  %25 = load i16*, i16** %wt.addr, align 8
  %add.ptr22 = getelementptr inbounds i16, i16* %25, i64 40
  %26 = load i16*, i16** %s.addr, align 8
  %add.ptr23 = getelementptr inbounds i16, i16* %26, i64 40
  call void @Short_term_synthesis_filtering(%struct.gsm_state* %24, i16* %arraydecay21, i32 120, i16* %add.ptr22, i16* %add.ptr23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Short_term_synthesis_filtering(%struct.gsm_state* %S, i16* %rrp, i32 %k, i16* %wt, i16* %sr) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %rrp.addr = alloca i16*, align 8
  %k.addr = alloca i32, align 4
  %wt.addr = alloca i16*, align 8
  %sr.addr = alloca i16*, align 8
  %v = alloca i16*, align 8
  %i = alloca i32, align 4
  %sri = alloca i16, align 2
  %tmp1 = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %rrp, i16** %rrp.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i16* %wt, i16** %wt.addr, align 8
  store i16* %sr, i16** %sr.addr, align 8
  %0 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %v1 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i32 0, i32 8
  %arraydecay = getelementptr inbounds [9 x i16], [9 x i16]* %v1, i32 0, i32 0
  store i16* %arraydecay, i16** %v, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %1 = load i32, i32* %k.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %k.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i16*, i16** %wt.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr, i16** %wt.addr, align 8
  %3 = load i16, i16* %2, align 2
  store i16 %3, i16* %sri, align 2
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end.60, %while.body
  %4 = load i32, i32* %i, align 4
  %dec2 = add nsw i32 %4, -1
  store i32 %dec2, i32* %i, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i16*, i16** %rrp.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  store i16 %7, i16* %tmp1, align 2
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i16*, i16** %v, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %9, i64 %idxprom4
  %10 = load i16, i16* %arrayidx5, align 2
  store i16 %10, i16* %tmp2, align 2
  %11 = load i16, i16* %tmp1, align 2
  %conv = sext i16 %11 to i32
  %cmp = icmp eq i32 %conv, -32768
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %12 = load i16, i16* %tmp2, align 2
  %conv7 = sext i16 %12 to i32
  %cmp8 = icmp eq i32 %conv7, -32768
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %13 = load i16, i16* %tmp1, align 2
  %conv10 = sext i16 %13 to i64
  %14 = load i16, i16* %tmp2, align 2
  %conv11 = sext i16 %14 to i64
  %mul = mul nsw i64 %conv10, %conv11
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %and = and i64 65535, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 32767, %cond.true ], [ %and, %cond.false ]
  %conv12 = trunc i64 %cond to i16
  store i16 %conv12, i16* %tmp2, align 2
  %15 = load i16, i16* %sri, align 2
  %conv13 = sext i16 %15 to i64
  %16 = load i16, i16* %tmp2, align 2
  %conv14 = sext i16 %16 to i64
  %sub = sub nsw i64 %conv13, %conv14
  store i64 %sub, i64* %ltmp, align 8
  %cmp15 = icmp sge i64 %sub, 32767
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end
  br label %cond.end.25

cond.false.18:                                    ; preds = %cond.end
  %17 = load i64, i64* %ltmp, align 8
  %cmp19 = icmp sle i64 %17, -32768
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.18
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.false.18
  %18 = load i64, i64* %ltmp, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i64 [ -32768, %cond.true.21 ], [ %18, %cond.false.22 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true.17
  %cond26 = phi i64 [ 32767, %cond.true.17 ], [ %cond24, %cond.end.23 ]
  %conv27 = trunc i64 %cond26 to i16
  store i16 %conv27, i16* %sri, align 2
  %19 = load i16, i16* %tmp1, align 2
  %conv28 = sext i16 %19 to i32
  %cmp29 = icmp eq i32 %conv28, -32768
  br i1 %cmp29, label %land.lhs.true.31, label %cond.false.36

land.lhs.true.31:                                 ; preds = %cond.end.25
  %20 = load i16, i16* %sri, align 2
  %conv32 = sext i16 %20 to i32
  %cmp33 = icmp eq i32 %conv32, -32768
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %land.lhs.true.31
  br label %cond.end.43

cond.false.36:                                    ; preds = %land.lhs.true.31, %cond.end.25
  %21 = load i16, i16* %tmp1, align 2
  %conv37 = sext i16 %21 to i64
  %22 = load i16, i16* %sri, align 2
  %conv38 = sext i16 %22 to i64
  %mul39 = mul nsw i64 %conv37, %conv38
  %add40 = add nsw i64 %mul39, 16384
  %shr41 = ashr i64 %add40, 15
  %and42 = and i64 65535, %shr41
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.36, %cond.true.35
  %cond44 = phi i64 [ 32767, %cond.true.35 ], [ %and42, %cond.false.36 ]
  %conv45 = trunc i64 %cond44 to i16
  store i16 %conv45, i16* %tmp1, align 2
  %23 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %23 to i64
  %24 = load i16*, i16** %v, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %24, i64 %idxprom46
  %25 = load i16, i16* %arrayidx47, align 2
  %conv48 = sext i16 %25 to i64
  %26 = load i16, i16* %tmp1, align 2
  %conv49 = sext i16 %26 to i64
  %add50 = add nsw i64 %conv48, %conv49
  store i64 %add50, i64* %ltmp, align 8
  %sub51 = sub nsw i64 %add50, -32768
  %cmp52 = icmp ugt i64 %sub51, 65535
  br i1 %cmp52, label %cond.true.54, label %cond.false.59

cond.true.54:                                     ; preds = %cond.end.43
  %27 = load i64, i64* %ltmp, align 8
  %cmp55 = icmp sgt i64 %27, 0
  %cond57 = select i1 %cmp55, i32 32767, i32 -32768
  %conv58 = sext i32 %cond57 to i64
  br label %cond.end.60

cond.false.59:                                    ; preds = %cond.end.43
  %28 = load i64, i64* %ltmp, align 8
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.54
  %cond61 = phi i64 [ %conv58, %cond.true.54 ], [ %28, %cond.false.59 ]
  %conv62 = trunc i64 %cond61 to i16
  %29 = load i32, i32* %i, align 4
  %add63 = add nsw i32 %29, 1
  %idxprom64 = sext i32 %add63 to i64
  %30 = load i16*, i16** %v, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %30, i64 %idxprom64
  store i16 %conv62, i16* %arrayidx65, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i16, i16* %sri, align 2
  %32 = load i16*, i16** %v, align 8
  %arrayidx66 = getelementptr inbounds i16, i16* %32, i64 0
  store i16 %31, i16* %arrayidx66, align 2
  %33 = load i16*, i16** %sr.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i16, i16* %33, i32 1
  store i16* %incdec.ptr67, i16** %sr.addr, align 8
  store i16 %31, i16* %33, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
