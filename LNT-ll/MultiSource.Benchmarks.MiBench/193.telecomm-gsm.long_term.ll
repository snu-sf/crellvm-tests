; ModuleID = './MultiSource.Benchmarks.MiBench/193.telecomm-gsm.long_term.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@gsm_QLB = external global [4 x i16], align 2
@gsm_DLB = external global [4 x i16], align 2

; Function Attrs: nounwind uwtable
define void @Gsm_Long_Term_Predictor(%struct.gsm_state* %S, i16* %d, i16* %dp, i16* %e, i16* %dpp, i16* %Nc, i16* %bc) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %d.addr = alloca i16*, align 8
  %dp.addr = alloca i16*, align 8
  %e.addr = alloca i16*, align 8
  %dpp.addr = alloca i16*, align 8
  %Nc.addr = alloca i16*, align 8
  %bc.addr = alloca i16*, align 8
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %d, i16** %d.addr, align 8
  store i16* %dp, i16** %dp.addr, align 8
  store i16* %e, i16** %e.addr, align 8
  store i16* %dpp, i16** %dpp.addr, align 8
  store i16* %Nc, i16** %Nc.addr, align 8
  store i16* %bc, i16** %bc.addr, align 8
  %0 = load i16*, i16** %d.addr, align 8
  %1 = load i16*, i16** %dp.addr, align 8
  %2 = load i16*, i16** %bc.addr, align 8
  %3 = load i16*, i16** %Nc.addr, align 8
  call void @Calculation_of_the_LTP_parameters(i16* %0, i16* %1, i16* %2, i16* %3)
  %4 = load i16*, i16** %bc.addr, align 8
  %5 = load i16, i16* %4, align 2
  %6 = load i16*, i16** %Nc.addr, align 8
  %7 = load i16, i16* %6, align 2
  %8 = load i16*, i16** %dp.addr, align 8
  %9 = load i16*, i16** %d.addr, align 8
  %10 = load i16*, i16** %dpp.addr, align 8
  %11 = load i16*, i16** %e.addr, align 8
  call void @Long_term_analysis_filtering(i16 signext %5, i16 signext %7, i16* %8, i16* %9, i16* %10, i16* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Calculation_of_the_LTP_parameters(i16* %d, i16* %dp, i16* %bc_out, i16* %Nc_out) #0 {
entry:
  %d.addr = alloca i16*, align 8
  %dp.addr = alloca i16*, align 8
  %bc_out.addr = alloca i16*, align 8
  %Nc_out.addr = alloca i16*, align 8
  %k = alloca i32, align 4
  %lambda = alloca i32, align 4
  %Nc = alloca i16, align 2
  %bc = alloca i16, align 2
  %wt = alloca [40 x i16], align 16
  %L_max = alloca i64, align 8
  %L_power = alloca i64, align 8
  %R = alloca i16, align 2
  %S = alloca i16, align 2
  %dmax = alloca i16, align 2
  %scal = alloca i16, align 2
  %temp = alloca i16, align 2
  %L_result = alloca i64, align 8
  %L_temp = alloca i64, align 8
  store i16* %d, i16** %d.addr, align 8
  store i16* %dp, i16** %dp.addr, align 8
  store i16* %bc_out, i16** %bc_out.addr, align 8
  store i16* %Nc_out, i16** %Nc_out.addr, align 8
  store i16 0, i16* %dmax, align 2
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %0, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i16*, i16** %d.addr, align 8
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
  %9 = load i16, i16* %dmax, align 2
  %conv14 = sext i16 %9 to i32
  %cmp15 = icmp sgt i32 %conv13, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.10
  %10 = load i16, i16* %temp, align 2
  store i16 %10, i16* %dmax, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %temp, align 2
  %12 = load i16, i16* %dmax, align 2
  %conv17 = sext i16 %12 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.end
  store i16 0, i16* %scal, align 2
  br label %if.end.22

if.else:                                          ; preds = %for.end
  %13 = load i16, i16* %dmax, align 2
  %conv21 = sext i16 %13 to i64
  %shl = shl i64 %conv21, 16
  %call = call signext i16 @gsm_norm(i64 %shl)
  store i16 %call, i16* %temp, align 2
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  %14 = load i16, i16* %temp, align 2
  %conv23 = sext i16 %14 to i32
  %cmp24 = icmp sgt i32 %conv23, 6
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.22
  store i16 0, i16* %scal, align 2
  br label %if.end.31

if.else.27:                                       ; preds = %if.end.22
  %15 = load i16, i16* %temp, align 2
  %conv28 = sext i16 %15 to i32
  %sub29 = sub nsw i32 6, %conv28
  %conv30 = trunc i32 %sub29 to i16
  store i16 %conv30, i16* %scal, align 2
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.27, %if.then.26
  store i32 0, i32* %k, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.43, %if.end.31
  %16 = load i32, i32* %k, align 4
  %cmp33 = icmp sle i32 %16, 39
  br i1 %cmp33, label %for.body.35, label %for.end.45

for.body.35:                                      ; preds = %for.cond.32
  %17 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %17 to i64
  %18 = load i16*, i16** %d.addr, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %18, i64 %idxprom36
  %19 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %19 to i32
  %20 = load i16, i16* %scal, align 2
  %conv39 = sext i16 %20 to i32
  %shr = ashr i32 %conv38, %conv39
  %conv40 = trunc i32 %shr to i16
  %21 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %21 to i64
  %arrayidx42 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 %idxprom41
  store i16 %conv40, i16* %arrayidx42, align 2
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.35
  %22 = load i32, i32* %k, align 4
  %inc44 = add nsw i32 %22, 1
  store i32 %inc44, i32* %k, align 4
  br label %for.cond.32

for.end.45:                                       ; preds = %for.cond.32
  store i64 0, i64* %L_max, align 8
  store i16 40, i16* %Nc, align 2
  store i32 40, i32* %lambda, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.412, %for.end.45
  %23 = load i32, i32* %lambda, align 4
  %cmp47 = icmp sle i32 %23, 120
  br i1 %cmp47, label %for.body.49, label %for.end.414

for.body.49:                                      ; preds = %for.cond.46
  %arrayidx50 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 0
  %24 = load i16, i16* %arrayidx50, align 2
  %conv51 = sext i16 %24 to i32
  %25 = load i32, i32* %lambda, align 4
  %sub52 = sub nsw i32 0, %25
  %idxprom53 = sext i32 %sub52 to i64
  %26 = load i16*, i16** %dp.addr, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %26, i64 %idxprom53
  %27 = load i16, i16* %arrayidx54, align 2
  %conv55 = sext i16 %27 to i32
  %mul = mul nsw i32 %conv51, %conv55
  %conv56 = sext i32 %mul to i64
  store i64 %conv56, i64* %L_result, align 8
  %arrayidx57 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 1
  %28 = load i16, i16* %arrayidx57, align 2
  %conv58 = sext i16 %28 to i32
  %29 = load i32, i32* %lambda, align 4
  %sub59 = sub nsw i32 1, %29
  %idxprom60 = sext i32 %sub59 to i64
  %30 = load i16*, i16** %dp.addr, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %30, i64 %idxprom60
  %31 = load i16, i16* %arrayidx61, align 2
  %conv62 = sext i16 %31 to i32
  %mul63 = mul nsw i32 %conv58, %conv62
  %conv64 = sext i32 %mul63 to i64
  %32 = load i64, i64* %L_result, align 8
  %add = add nsw i64 %32, %conv64
  store i64 %add, i64* %L_result, align 8
  %arrayidx65 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 2
  %33 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %33 to i32
  %34 = load i32, i32* %lambda, align 4
  %sub67 = sub nsw i32 2, %34
  %idxprom68 = sext i32 %sub67 to i64
  %35 = load i16*, i16** %dp.addr, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %35, i64 %idxprom68
  %36 = load i16, i16* %arrayidx69, align 2
  %conv70 = sext i16 %36 to i32
  %mul71 = mul nsw i32 %conv66, %conv70
  %conv72 = sext i32 %mul71 to i64
  %37 = load i64, i64* %L_result, align 8
  %add73 = add nsw i64 %37, %conv72
  store i64 %add73, i64* %L_result, align 8
  %arrayidx74 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 3
  %38 = load i16, i16* %arrayidx74, align 2
  %conv75 = sext i16 %38 to i32
  %39 = load i32, i32* %lambda, align 4
  %sub76 = sub nsw i32 3, %39
  %idxprom77 = sext i32 %sub76 to i64
  %40 = load i16*, i16** %dp.addr, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %40, i64 %idxprom77
  %41 = load i16, i16* %arrayidx78, align 2
  %conv79 = sext i16 %41 to i32
  %mul80 = mul nsw i32 %conv75, %conv79
  %conv81 = sext i32 %mul80 to i64
  %42 = load i64, i64* %L_result, align 8
  %add82 = add nsw i64 %42, %conv81
  store i64 %add82, i64* %L_result, align 8
  %arrayidx83 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 4
  %43 = load i16, i16* %arrayidx83, align 2
  %conv84 = sext i16 %43 to i32
  %44 = load i32, i32* %lambda, align 4
  %sub85 = sub nsw i32 4, %44
  %idxprom86 = sext i32 %sub85 to i64
  %45 = load i16*, i16** %dp.addr, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %45, i64 %idxprom86
  %46 = load i16, i16* %arrayidx87, align 2
  %conv88 = sext i16 %46 to i32
  %mul89 = mul nsw i32 %conv84, %conv88
  %conv90 = sext i32 %mul89 to i64
  %47 = load i64, i64* %L_result, align 8
  %add91 = add nsw i64 %47, %conv90
  store i64 %add91, i64* %L_result, align 8
  %arrayidx92 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 5
  %48 = load i16, i16* %arrayidx92, align 2
  %conv93 = sext i16 %48 to i32
  %49 = load i32, i32* %lambda, align 4
  %sub94 = sub nsw i32 5, %49
  %idxprom95 = sext i32 %sub94 to i64
  %50 = load i16*, i16** %dp.addr, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %50, i64 %idxprom95
  %51 = load i16, i16* %arrayidx96, align 2
  %conv97 = sext i16 %51 to i32
  %mul98 = mul nsw i32 %conv93, %conv97
  %conv99 = sext i32 %mul98 to i64
  %52 = load i64, i64* %L_result, align 8
  %add100 = add nsw i64 %52, %conv99
  store i64 %add100, i64* %L_result, align 8
  %arrayidx101 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 6
  %53 = load i16, i16* %arrayidx101, align 2
  %conv102 = sext i16 %53 to i32
  %54 = load i32, i32* %lambda, align 4
  %sub103 = sub nsw i32 6, %54
  %idxprom104 = sext i32 %sub103 to i64
  %55 = load i16*, i16** %dp.addr, align 8
  %arrayidx105 = getelementptr inbounds i16, i16* %55, i64 %idxprom104
  %56 = load i16, i16* %arrayidx105, align 2
  %conv106 = sext i16 %56 to i32
  %mul107 = mul nsw i32 %conv102, %conv106
  %conv108 = sext i32 %mul107 to i64
  %57 = load i64, i64* %L_result, align 8
  %add109 = add nsw i64 %57, %conv108
  store i64 %add109, i64* %L_result, align 8
  %arrayidx110 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 7
  %58 = load i16, i16* %arrayidx110, align 2
  %conv111 = sext i16 %58 to i32
  %59 = load i32, i32* %lambda, align 4
  %sub112 = sub nsw i32 7, %59
  %idxprom113 = sext i32 %sub112 to i64
  %60 = load i16*, i16** %dp.addr, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %60, i64 %idxprom113
  %61 = load i16, i16* %arrayidx114, align 2
  %conv115 = sext i16 %61 to i32
  %mul116 = mul nsw i32 %conv111, %conv115
  %conv117 = sext i32 %mul116 to i64
  %62 = load i64, i64* %L_result, align 8
  %add118 = add nsw i64 %62, %conv117
  store i64 %add118, i64* %L_result, align 8
  %arrayidx119 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 8
  %63 = load i16, i16* %arrayidx119, align 2
  %conv120 = sext i16 %63 to i32
  %64 = load i32, i32* %lambda, align 4
  %sub121 = sub nsw i32 8, %64
  %idxprom122 = sext i32 %sub121 to i64
  %65 = load i16*, i16** %dp.addr, align 8
  %arrayidx123 = getelementptr inbounds i16, i16* %65, i64 %idxprom122
  %66 = load i16, i16* %arrayidx123, align 2
  %conv124 = sext i16 %66 to i32
  %mul125 = mul nsw i32 %conv120, %conv124
  %conv126 = sext i32 %mul125 to i64
  %67 = load i64, i64* %L_result, align 8
  %add127 = add nsw i64 %67, %conv126
  store i64 %add127, i64* %L_result, align 8
  %arrayidx128 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 9
  %68 = load i16, i16* %arrayidx128, align 2
  %conv129 = sext i16 %68 to i32
  %69 = load i32, i32* %lambda, align 4
  %sub130 = sub nsw i32 9, %69
  %idxprom131 = sext i32 %sub130 to i64
  %70 = load i16*, i16** %dp.addr, align 8
  %arrayidx132 = getelementptr inbounds i16, i16* %70, i64 %idxprom131
  %71 = load i16, i16* %arrayidx132, align 2
  %conv133 = sext i16 %71 to i32
  %mul134 = mul nsw i32 %conv129, %conv133
  %conv135 = sext i32 %mul134 to i64
  %72 = load i64, i64* %L_result, align 8
  %add136 = add nsw i64 %72, %conv135
  store i64 %add136, i64* %L_result, align 8
  %arrayidx137 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 10
  %73 = load i16, i16* %arrayidx137, align 2
  %conv138 = sext i16 %73 to i32
  %74 = load i32, i32* %lambda, align 4
  %sub139 = sub nsw i32 10, %74
  %idxprom140 = sext i32 %sub139 to i64
  %75 = load i16*, i16** %dp.addr, align 8
  %arrayidx141 = getelementptr inbounds i16, i16* %75, i64 %idxprom140
  %76 = load i16, i16* %arrayidx141, align 2
  %conv142 = sext i16 %76 to i32
  %mul143 = mul nsw i32 %conv138, %conv142
  %conv144 = sext i32 %mul143 to i64
  %77 = load i64, i64* %L_result, align 8
  %add145 = add nsw i64 %77, %conv144
  store i64 %add145, i64* %L_result, align 8
  %arrayidx146 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 11
  %78 = load i16, i16* %arrayidx146, align 2
  %conv147 = sext i16 %78 to i32
  %79 = load i32, i32* %lambda, align 4
  %sub148 = sub nsw i32 11, %79
  %idxprom149 = sext i32 %sub148 to i64
  %80 = load i16*, i16** %dp.addr, align 8
  %arrayidx150 = getelementptr inbounds i16, i16* %80, i64 %idxprom149
  %81 = load i16, i16* %arrayidx150, align 2
  %conv151 = sext i16 %81 to i32
  %mul152 = mul nsw i32 %conv147, %conv151
  %conv153 = sext i32 %mul152 to i64
  %82 = load i64, i64* %L_result, align 8
  %add154 = add nsw i64 %82, %conv153
  store i64 %add154, i64* %L_result, align 8
  %arrayidx155 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 12
  %83 = load i16, i16* %arrayidx155, align 2
  %conv156 = sext i16 %83 to i32
  %84 = load i32, i32* %lambda, align 4
  %sub157 = sub nsw i32 12, %84
  %idxprom158 = sext i32 %sub157 to i64
  %85 = load i16*, i16** %dp.addr, align 8
  %arrayidx159 = getelementptr inbounds i16, i16* %85, i64 %idxprom158
  %86 = load i16, i16* %arrayidx159, align 2
  %conv160 = sext i16 %86 to i32
  %mul161 = mul nsw i32 %conv156, %conv160
  %conv162 = sext i32 %mul161 to i64
  %87 = load i64, i64* %L_result, align 8
  %add163 = add nsw i64 %87, %conv162
  store i64 %add163, i64* %L_result, align 8
  %arrayidx164 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 13
  %88 = load i16, i16* %arrayidx164, align 2
  %conv165 = sext i16 %88 to i32
  %89 = load i32, i32* %lambda, align 4
  %sub166 = sub nsw i32 13, %89
  %idxprom167 = sext i32 %sub166 to i64
  %90 = load i16*, i16** %dp.addr, align 8
  %arrayidx168 = getelementptr inbounds i16, i16* %90, i64 %idxprom167
  %91 = load i16, i16* %arrayidx168, align 2
  %conv169 = sext i16 %91 to i32
  %mul170 = mul nsw i32 %conv165, %conv169
  %conv171 = sext i32 %mul170 to i64
  %92 = load i64, i64* %L_result, align 8
  %add172 = add nsw i64 %92, %conv171
  store i64 %add172, i64* %L_result, align 8
  %arrayidx173 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 14
  %93 = load i16, i16* %arrayidx173, align 2
  %conv174 = sext i16 %93 to i32
  %94 = load i32, i32* %lambda, align 4
  %sub175 = sub nsw i32 14, %94
  %idxprom176 = sext i32 %sub175 to i64
  %95 = load i16*, i16** %dp.addr, align 8
  %arrayidx177 = getelementptr inbounds i16, i16* %95, i64 %idxprom176
  %96 = load i16, i16* %arrayidx177, align 2
  %conv178 = sext i16 %96 to i32
  %mul179 = mul nsw i32 %conv174, %conv178
  %conv180 = sext i32 %mul179 to i64
  %97 = load i64, i64* %L_result, align 8
  %add181 = add nsw i64 %97, %conv180
  store i64 %add181, i64* %L_result, align 8
  %arrayidx182 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 15
  %98 = load i16, i16* %arrayidx182, align 2
  %conv183 = sext i16 %98 to i32
  %99 = load i32, i32* %lambda, align 4
  %sub184 = sub nsw i32 15, %99
  %idxprom185 = sext i32 %sub184 to i64
  %100 = load i16*, i16** %dp.addr, align 8
  %arrayidx186 = getelementptr inbounds i16, i16* %100, i64 %idxprom185
  %101 = load i16, i16* %arrayidx186, align 2
  %conv187 = sext i16 %101 to i32
  %mul188 = mul nsw i32 %conv183, %conv187
  %conv189 = sext i32 %mul188 to i64
  %102 = load i64, i64* %L_result, align 8
  %add190 = add nsw i64 %102, %conv189
  store i64 %add190, i64* %L_result, align 8
  %arrayidx191 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 16
  %103 = load i16, i16* %arrayidx191, align 2
  %conv192 = sext i16 %103 to i32
  %104 = load i32, i32* %lambda, align 4
  %sub193 = sub nsw i32 16, %104
  %idxprom194 = sext i32 %sub193 to i64
  %105 = load i16*, i16** %dp.addr, align 8
  %arrayidx195 = getelementptr inbounds i16, i16* %105, i64 %idxprom194
  %106 = load i16, i16* %arrayidx195, align 2
  %conv196 = sext i16 %106 to i32
  %mul197 = mul nsw i32 %conv192, %conv196
  %conv198 = sext i32 %mul197 to i64
  %107 = load i64, i64* %L_result, align 8
  %add199 = add nsw i64 %107, %conv198
  store i64 %add199, i64* %L_result, align 8
  %arrayidx200 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 17
  %108 = load i16, i16* %arrayidx200, align 2
  %conv201 = sext i16 %108 to i32
  %109 = load i32, i32* %lambda, align 4
  %sub202 = sub nsw i32 17, %109
  %idxprom203 = sext i32 %sub202 to i64
  %110 = load i16*, i16** %dp.addr, align 8
  %arrayidx204 = getelementptr inbounds i16, i16* %110, i64 %idxprom203
  %111 = load i16, i16* %arrayidx204, align 2
  %conv205 = sext i16 %111 to i32
  %mul206 = mul nsw i32 %conv201, %conv205
  %conv207 = sext i32 %mul206 to i64
  %112 = load i64, i64* %L_result, align 8
  %add208 = add nsw i64 %112, %conv207
  store i64 %add208, i64* %L_result, align 8
  %arrayidx209 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 18
  %113 = load i16, i16* %arrayidx209, align 2
  %conv210 = sext i16 %113 to i32
  %114 = load i32, i32* %lambda, align 4
  %sub211 = sub nsw i32 18, %114
  %idxprom212 = sext i32 %sub211 to i64
  %115 = load i16*, i16** %dp.addr, align 8
  %arrayidx213 = getelementptr inbounds i16, i16* %115, i64 %idxprom212
  %116 = load i16, i16* %arrayidx213, align 2
  %conv214 = sext i16 %116 to i32
  %mul215 = mul nsw i32 %conv210, %conv214
  %conv216 = sext i32 %mul215 to i64
  %117 = load i64, i64* %L_result, align 8
  %add217 = add nsw i64 %117, %conv216
  store i64 %add217, i64* %L_result, align 8
  %arrayidx218 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 19
  %118 = load i16, i16* %arrayidx218, align 2
  %conv219 = sext i16 %118 to i32
  %119 = load i32, i32* %lambda, align 4
  %sub220 = sub nsw i32 19, %119
  %idxprom221 = sext i32 %sub220 to i64
  %120 = load i16*, i16** %dp.addr, align 8
  %arrayidx222 = getelementptr inbounds i16, i16* %120, i64 %idxprom221
  %121 = load i16, i16* %arrayidx222, align 2
  %conv223 = sext i16 %121 to i32
  %mul224 = mul nsw i32 %conv219, %conv223
  %conv225 = sext i32 %mul224 to i64
  %122 = load i64, i64* %L_result, align 8
  %add226 = add nsw i64 %122, %conv225
  store i64 %add226, i64* %L_result, align 8
  %arrayidx227 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 20
  %123 = load i16, i16* %arrayidx227, align 2
  %conv228 = sext i16 %123 to i32
  %124 = load i32, i32* %lambda, align 4
  %sub229 = sub nsw i32 20, %124
  %idxprom230 = sext i32 %sub229 to i64
  %125 = load i16*, i16** %dp.addr, align 8
  %arrayidx231 = getelementptr inbounds i16, i16* %125, i64 %idxprom230
  %126 = load i16, i16* %arrayidx231, align 2
  %conv232 = sext i16 %126 to i32
  %mul233 = mul nsw i32 %conv228, %conv232
  %conv234 = sext i32 %mul233 to i64
  %127 = load i64, i64* %L_result, align 8
  %add235 = add nsw i64 %127, %conv234
  store i64 %add235, i64* %L_result, align 8
  %arrayidx236 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 21
  %128 = load i16, i16* %arrayidx236, align 2
  %conv237 = sext i16 %128 to i32
  %129 = load i32, i32* %lambda, align 4
  %sub238 = sub nsw i32 21, %129
  %idxprom239 = sext i32 %sub238 to i64
  %130 = load i16*, i16** %dp.addr, align 8
  %arrayidx240 = getelementptr inbounds i16, i16* %130, i64 %idxprom239
  %131 = load i16, i16* %arrayidx240, align 2
  %conv241 = sext i16 %131 to i32
  %mul242 = mul nsw i32 %conv237, %conv241
  %conv243 = sext i32 %mul242 to i64
  %132 = load i64, i64* %L_result, align 8
  %add244 = add nsw i64 %132, %conv243
  store i64 %add244, i64* %L_result, align 8
  %arrayidx245 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 22
  %133 = load i16, i16* %arrayidx245, align 2
  %conv246 = sext i16 %133 to i32
  %134 = load i32, i32* %lambda, align 4
  %sub247 = sub nsw i32 22, %134
  %idxprom248 = sext i32 %sub247 to i64
  %135 = load i16*, i16** %dp.addr, align 8
  %arrayidx249 = getelementptr inbounds i16, i16* %135, i64 %idxprom248
  %136 = load i16, i16* %arrayidx249, align 2
  %conv250 = sext i16 %136 to i32
  %mul251 = mul nsw i32 %conv246, %conv250
  %conv252 = sext i32 %mul251 to i64
  %137 = load i64, i64* %L_result, align 8
  %add253 = add nsw i64 %137, %conv252
  store i64 %add253, i64* %L_result, align 8
  %arrayidx254 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 23
  %138 = load i16, i16* %arrayidx254, align 2
  %conv255 = sext i16 %138 to i32
  %139 = load i32, i32* %lambda, align 4
  %sub256 = sub nsw i32 23, %139
  %idxprom257 = sext i32 %sub256 to i64
  %140 = load i16*, i16** %dp.addr, align 8
  %arrayidx258 = getelementptr inbounds i16, i16* %140, i64 %idxprom257
  %141 = load i16, i16* %arrayidx258, align 2
  %conv259 = sext i16 %141 to i32
  %mul260 = mul nsw i32 %conv255, %conv259
  %conv261 = sext i32 %mul260 to i64
  %142 = load i64, i64* %L_result, align 8
  %add262 = add nsw i64 %142, %conv261
  store i64 %add262, i64* %L_result, align 8
  %arrayidx263 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 24
  %143 = load i16, i16* %arrayidx263, align 2
  %conv264 = sext i16 %143 to i32
  %144 = load i32, i32* %lambda, align 4
  %sub265 = sub nsw i32 24, %144
  %idxprom266 = sext i32 %sub265 to i64
  %145 = load i16*, i16** %dp.addr, align 8
  %arrayidx267 = getelementptr inbounds i16, i16* %145, i64 %idxprom266
  %146 = load i16, i16* %arrayidx267, align 2
  %conv268 = sext i16 %146 to i32
  %mul269 = mul nsw i32 %conv264, %conv268
  %conv270 = sext i32 %mul269 to i64
  %147 = load i64, i64* %L_result, align 8
  %add271 = add nsw i64 %147, %conv270
  store i64 %add271, i64* %L_result, align 8
  %arrayidx272 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 25
  %148 = load i16, i16* %arrayidx272, align 2
  %conv273 = sext i16 %148 to i32
  %149 = load i32, i32* %lambda, align 4
  %sub274 = sub nsw i32 25, %149
  %idxprom275 = sext i32 %sub274 to i64
  %150 = load i16*, i16** %dp.addr, align 8
  %arrayidx276 = getelementptr inbounds i16, i16* %150, i64 %idxprom275
  %151 = load i16, i16* %arrayidx276, align 2
  %conv277 = sext i16 %151 to i32
  %mul278 = mul nsw i32 %conv273, %conv277
  %conv279 = sext i32 %mul278 to i64
  %152 = load i64, i64* %L_result, align 8
  %add280 = add nsw i64 %152, %conv279
  store i64 %add280, i64* %L_result, align 8
  %arrayidx281 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 26
  %153 = load i16, i16* %arrayidx281, align 2
  %conv282 = sext i16 %153 to i32
  %154 = load i32, i32* %lambda, align 4
  %sub283 = sub nsw i32 26, %154
  %idxprom284 = sext i32 %sub283 to i64
  %155 = load i16*, i16** %dp.addr, align 8
  %arrayidx285 = getelementptr inbounds i16, i16* %155, i64 %idxprom284
  %156 = load i16, i16* %arrayidx285, align 2
  %conv286 = sext i16 %156 to i32
  %mul287 = mul nsw i32 %conv282, %conv286
  %conv288 = sext i32 %mul287 to i64
  %157 = load i64, i64* %L_result, align 8
  %add289 = add nsw i64 %157, %conv288
  store i64 %add289, i64* %L_result, align 8
  %arrayidx290 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 27
  %158 = load i16, i16* %arrayidx290, align 2
  %conv291 = sext i16 %158 to i32
  %159 = load i32, i32* %lambda, align 4
  %sub292 = sub nsw i32 27, %159
  %idxprom293 = sext i32 %sub292 to i64
  %160 = load i16*, i16** %dp.addr, align 8
  %arrayidx294 = getelementptr inbounds i16, i16* %160, i64 %idxprom293
  %161 = load i16, i16* %arrayidx294, align 2
  %conv295 = sext i16 %161 to i32
  %mul296 = mul nsw i32 %conv291, %conv295
  %conv297 = sext i32 %mul296 to i64
  %162 = load i64, i64* %L_result, align 8
  %add298 = add nsw i64 %162, %conv297
  store i64 %add298, i64* %L_result, align 8
  %arrayidx299 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 28
  %163 = load i16, i16* %arrayidx299, align 2
  %conv300 = sext i16 %163 to i32
  %164 = load i32, i32* %lambda, align 4
  %sub301 = sub nsw i32 28, %164
  %idxprom302 = sext i32 %sub301 to i64
  %165 = load i16*, i16** %dp.addr, align 8
  %arrayidx303 = getelementptr inbounds i16, i16* %165, i64 %idxprom302
  %166 = load i16, i16* %arrayidx303, align 2
  %conv304 = sext i16 %166 to i32
  %mul305 = mul nsw i32 %conv300, %conv304
  %conv306 = sext i32 %mul305 to i64
  %167 = load i64, i64* %L_result, align 8
  %add307 = add nsw i64 %167, %conv306
  store i64 %add307, i64* %L_result, align 8
  %arrayidx308 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 29
  %168 = load i16, i16* %arrayidx308, align 2
  %conv309 = sext i16 %168 to i32
  %169 = load i32, i32* %lambda, align 4
  %sub310 = sub nsw i32 29, %169
  %idxprom311 = sext i32 %sub310 to i64
  %170 = load i16*, i16** %dp.addr, align 8
  %arrayidx312 = getelementptr inbounds i16, i16* %170, i64 %idxprom311
  %171 = load i16, i16* %arrayidx312, align 2
  %conv313 = sext i16 %171 to i32
  %mul314 = mul nsw i32 %conv309, %conv313
  %conv315 = sext i32 %mul314 to i64
  %172 = load i64, i64* %L_result, align 8
  %add316 = add nsw i64 %172, %conv315
  store i64 %add316, i64* %L_result, align 8
  %arrayidx317 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 30
  %173 = load i16, i16* %arrayidx317, align 2
  %conv318 = sext i16 %173 to i32
  %174 = load i32, i32* %lambda, align 4
  %sub319 = sub nsw i32 30, %174
  %idxprom320 = sext i32 %sub319 to i64
  %175 = load i16*, i16** %dp.addr, align 8
  %arrayidx321 = getelementptr inbounds i16, i16* %175, i64 %idxprom320
  %176 = load i16, i16* %arrayidx321, align 2
  %conv322 = sext i16 %176 to i32
  %mul323 = mul nsw i32 %conv318, %conv322
  %conv324 = sext i32 %mul323 to i64
  %177 = load i64, i64* %L_result, align 8
  %add325 = add nsw i64 %177, %conv324
  store i64 %add325, i64* %L_result, align 8
  %arrayidx326 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 31
  %178 = load i16, i16* %arrayidx326, align 2
  %conv327 = sext i16 %178 to i32
  %179 = load i32, i32* %lambda, align 4
  %sub328 = sub nsw i32 31, %179
  %idxprom329 = sext i32 %sub328 to i64
  %180 = load i16*, i16** %dp.addr, align 8
  %arrayidx330 = getelementptr inbounds i16, i16* %180, i64 %idxprom329
  %181 = load i16, i16* %arrayidx330, align 2
  %conv331 = sext i16 %181 to i32
  %mul332 = mul nsw i32 %conv327, %conv331
  %conv333 = sext i32 %mul332 to i64
  %182 = load i64, i64* %L_result, align 8
  %add334 = add nsw i64 %182, %conv333
  store i64 %add334, i64* %L_result, align 8
  %arrayidx335 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 32
  %183 = load i16, i16* %arrayidx335, align 2
  %conv336 = sext i16 %183 to i32
  %184 = load i32, i32* %lambda, align 4
  %sub337 = sub nsw i32 32, %184
  %idxprom338 = sext i32 %sub337 to i64
  %185 = load i16*, i16** %dp.addr, align 8
  %arrayidx339 = getelementptr inbounds i16, i16* %185, i64 %idxprom338
  %186 = load i16, i16* %arrayidx339, align 2
  %conv340 = sext i16 %186 to i32
  %mul341 = mul nsw i32 %conv336, %conv340
  %conv342 = sext i32 %mul341 to i64
  %187 = load i64, i64* %L_result, align 8
  %add343 = add nsw i64 %187, %conv342
  store i64 %add343, i64* %L_result, align 8
  %arrayidx344 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 33
  %188 = load i16, i16* %arrayidx344, align 2
  %conv345 = sext i16 %188 to i32
  %189 = load i32, i32* %lambda, align 4
  %sub346 = sub nsw i32 33, %189
  %idxprom347 = sext i32 %sub346 to i64
  %190 = load i16*, i16** %dp.addr, align 8
  %arrayidx348 = getelementptr inbounds i16, i16* %190, i64 %idxprom347
  %191 = load i16, i16* %arrayidx348, align 2
  %conv349 = sext i16 %191 to i32
  %mul350 = mul nsw i32 %conv345, %conv349
  %conv351 = sext i32 %mul350 to i64
  %192 = load i64, i64* %L_result, align 8
  %add352 = add nsw i64 %192, %conv351
  store i64 %add352, i64* %L_result, align 8
  %arrayidx353 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 34
  %193 = load i16, i16* %arrayidx353, align 2
  %conv354 = sext i16 %193 to i32
  %194 = load i32, i32* %lambda, align 4
  %sub355 = sub nsw i32 34, %194
  %idxprom356 = sext i32 %sub355 to i64
  %195 = load i16*, i16** %dp.addr, align 8
  %arrayidx357 = getelementptr inbounds i16, i16* %195, i64 %idxprom356
  %196 = load i16, i16* %arrayidx357, align 2
  %conv358 = sext i16 %196 to i32
  %mul359 = mul nsw i32 %conv354, %conv358
  %conv360 = sext i32 %mul359 to i64
  %197 = load i64, i64* %L_result, align 8
  %add361 = add nsw i64 %197, %conv360
  store i64 %add361, i64* %L_result, align 8
  %arrayidx362 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 35
  %198 = load i16, i16* %arrayidx362, align 2
  %conv363 = sext i16 %198 to i32
  %199 = load i32, i32* %lambda, align 4
  %sub364 = sub nsw i32 35, %199
  %idxprom365 = sext i32 %sub364 to i64
  %200 = load i16*, i16** %dp.addr, align 8
  %arrayidx366 = getelementptr inbounds i16, i16* %200, i64 %idxprom365
  %201 = load i16, i16* %arrayidx366, align 2
  %conv367 = sext i16 %201 to i32
  %mul368 = mul nsw i32 %conv363, %conv367
  %conv369 = sext i32 %mul368 to i64
  %202 = load i64, i64* %L_result, align 8
  %add370 = add nsw i64 %202, %conv369
  store i64 %add370, i64* %L_result, align 8
  %arrayidx371 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 36
  %203 = load i16, i16* %arrayidx371, align 2
  %conv372 = sext i16 %203 to i32
  %204 = load i32, i32* %lambda, align 4
  %sub373 = sub nsw i32 36, %204
  %idxprom374 = sext i32 %sub373 to i64
  %205 = load i16*, i16** %dp.addr, align 8
  %arrayidx375 = getelementptr inbounds i16, i16* %205, i64 %idxprom374
  %206 = load i16, i16* %arrayidx375, align 2
  %conv376 = sext i16 %206 to i32
  %mul377 = mul nsw i32 %conv372, %conv376
  %conv378 = sext i32 %mul377 to i64
  %207 = load i64, i64* %L_result, align 8
  %add379 = add nsw i64 %207, %conv378
  store i64 %add379, i64* %L_result, align 8
  %arrayidx380 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 37
  %208 = load i16, i16* %arrayidx380, align 2
  %conv381 = sext i16 %208 to i32
  %209 = load i32, i32* %lambda, align 4
  %sub382 = sub nsw i32 37, %209
  %idxprom383 = sext i32 %sub382 to i64
  %210 = load i16*, i16** %dp.addr, align 8
  %arrayidx384 = getelementptr inbounds i16, i16* %210, i64 %idxprom383
  %211 = load i16, i16* %arrayidx384, align 2
  %conv385 = sext i16 %211 to i32
  %mul386 = mul nsw i32 %conv381, %conv385
  %conv387 = sext i32 %mul386 to i64
  %212 = load i64, i64* %L_result, align 8
  %add388 = add nsw i64 %212, %conv387
  store i64 %add388, i64* %L_result, align 8
  %arrayidx389 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 38
  %213 = load i16, i16* %arrayidx389, align 2
  %conv390 = sext i16 %213 to i32
  %214 = load i32, i32* %lambda, align 4
  %sub391 = sub nsw i32 38, %214
  %idxprom392 = sext i32 %sub391 to i64
  %215 = load i16*, i16** %dp.addr, align 8
  %arrayidx393 = getelementptr inbounds i16, i16* %215, i64 %idxprom392
  %216 = load i16, i16* %arrayidx393, align 2
  %conv394 = sext i16 %216 to i32
  %mul395 = mul nsw i32 %conv390, %conv394
  %conv396 = sext i32 %mul395 to i64
  %217 = load i64, i64* %L_result, align 8
  %add397 = add nsw i64 %217, %conv396
  store i64 %add397, i64* %L_result, align 8
  %arrayidx398 = getelementptr inbounds [40 x i16], [40 x i16]* %wt, i32 0, i64 39
  %218 = load i16, i16* %arrayidx398, align 2
  %conv399 = sext i16 %218 to i32
  %219 = load i32, i32* %lambda, align 4
  %sub400 = sub nsw i32 39, %219
  %idxprom401 = sext i32 %sub400 to i64
  %220 = load i16*, i16** %dp.addr, align 8
  %arrayidx402 = getelementptr inbounds i16, i16* %220, i64 %idxprom401
  %221 = load i16, i16* %arrayidx402, align 2
  %conv403 = sext i16 %221 to i32
  %mul404 = mul nsw i32 %conv399, %conv403
  %conv405 = sext i32 %mul404 to i64
  %222 = load i64, i64* %L_result, align 8
  %add406 = add nsw i64 %222, %conv405
  store i64 %add406, i64* %L_result, align 8
  %223 = load i64, i64* %L_result, align 8
  %224 = load i64, i64* %L_max, align 8
  %cmp407 = icmp sgt i64 %223, %224
  br i1 %cmp407, label %if.then.409, label %if.end.411

if.then.409:                                      ; preds = %for.body.49
  %225 = load i32, i32* %lambda, align 4
  %conv410 = trunc i32 %225 to i16
  store i16 %conv410, i16* %Nc, align 2
  %226 = load i64, i64* %L_result, align 8
  store i64 %226, i64* %L_max, align 8
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.409, %for.body.49
  br label %for.inc.412

for.inc.412:                                      ; preds = %if.end.411
  %227 = load i32, i32* %lambda, align 4
  %inc413 = add nsw i32 %227, 1
  store i32 %inc413, i32* %lambda, align 4
  br label %for.cond.46

for.end.414:                                      ; preds = %for.cond.46
  %228 = load i16, i16* %Nc, align 2
  %229 = load i16*, i16** %Nc_out.addr, align 8
  store i16 %228, i16* %229, align 2
  %230 = load i64, i64* %L_max, align 8
  %shl415 = shl i64 %230, 1
  store i64 %shl415, i64* %L_max, align 8
  %231 = load i64, i64* %L_max, align 8
  %232 = load i16, i16* %scal, align 2
  %conv416 = sext i16 %232 to i32
  %sub417 = sub nsw i32 6, %conv416
  %sh_prom = zext i32 %sub417 to i64
  %shr418 = ashr i64 %231, %sh_prom
  store i64 %shr418, i64* %L_max, align 8
  store i64 0, i64* %L_power, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.432, %for.end.414
  %233 = load i32, i32* %k, align 4
  %cmp420 = icmp sle i32 %233, 39
  br i1 %cmp420, label %for.body.422, label %for.end.434

for.body.422:                                     ; preds = %for.cond.419
  %234 = load i32, i32* %k, align 4
  %235 = load i16, i16* %Nc, align 2
  %conv423 = sext i16 %235 to i32
  %sub424 = sub nsw i32 %234, %conv423
  %idxprom425 = sext i32 %sub424 to i64
  %236 = load i16*, i16** %dp.addr, align 8
  %arrayidx426 = getelementptr inbounds i16, i16* %236, i64 %idxprom425
  %237 = load i16, i16* %arrayidx426, align 2
  %conv427 = sext i16 %237 to i32
  %shr428 = ashr i32 %conv427, 3
  %conv429 = sext i32 %shr428 to i64
  store i64 %conv429, i64* %L_temp, align 8
  %238 = load i64, i64* %L_temp, align 8
  %239 = load i64, i64* %L_temp, align 8
  %mul430 = mul nsw i64 %238, %239
  %240 = load i64, i64* %L_power, align 8
  %add431 = add nsw i64 %240, %mul430
  store i64 %add431, i64* %L_power, align 8
  br label %for.inc.432

for.inc.432:                                      ; preds = %for.body.422
  %241 = load i32, i32* %k, align 4
  %inc433 = add nsw i32 %241, 1
  store i32 %inc433, i32* %k, align 4
  br label %for.cond.419

for.end.434:                                      ; preds = %for.cond.419
  %242 = load i64, i64* %L_power, align 8
  %shl435 = shl i64 %242, 1
  store i64 %shl435, i64* %L_power, align 8
  %243 = load i64, i64* %L_max, align 8
  %cmp436 = icmp sle i64 %243, 0
  br i1 %cmp436, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %for.end.434
  %244 = load i16*, i16** %bc_out.addr, align 8
  store i16 0, i16* %244, align 2
  br label %return

if.end.439:                                       ; preds = %for.end.434
  %245 = load i64, i64* %L_max, align 8
  %246 = load i64, i64* %L_power, align 8
  %cmp440 = icmp sge i64 %245, %246
  br i1 %cmp440, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %if.end.439
  %247 = load i16*, i16** %bc_out.addr, align 8
  store i16 3, i16* %247, align 2
  br label %return

if.end.443:                                       ; preds = %if.end.439
  %248 = load i64, i64* %L_power, align 8
  %call444 = call signext i16 @gsm_norm(i64 %248)
  store i16 %call444, i16* %temp, align 2
  %249 = load i64, i64* %L_max, align 8
  %250 = load i16, i16* %temp, align 2
  %conv445 = sext i16 %250 to i32
  %sh_prom446 = zext i32 %conv445 to i64
  %shl447 = shl i64 %249, %sh_prom446
  %shr448 = ashr i64 %shl447, 16
  %conv449 = trunc i64 %shr448 to i16
  store i16 %conv449, i16* %R, align 2
  %251 = load i64, i64* %L_power, align 8
  %252 = load i16, i16* %temp, align 2
  %conv450 = sext i16 %252 to i32
  %sh_prom451 = zext i32 %conv450 to i64
  %shl452 = shl i64 %251, %sh_prom451
  %shr453 = ashr i64 %shl452, 16
  %conv454 = trunc i64 %shr453 to i16
  store i16 %conv454, i16* %S, align 2
  store i16 0, i16* %bc, align 2
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.469, %if.end.443
  %253 = load i16, i16* %bc, align 2
  %conv456 = sext i16 %253 to i32
  %cmp457 = icmp sle i32 %conv456, 2
  br i1 %cmp457, label %for.body.459, label %for.end.471

for.body.459:                                     ; preds = %for.cond.455
  %254 = load i16, i16* %R, align 2
  %conv460 = sext i16 %254 to i32
  %255 = load i16, i16* %S, align 2
  %256 = load i16, i16* %bc, align 2
  %idxprom461 = sext i16 %256 to i64
  %arrayidx462 = getelementptr inbounds [4 x i16], [4 x i16]* @gsm_DLB, i32 0, i64 %idxprom461
  %257 = load i16, i16* %arrayidx462, align 2
  %call463 = call signext i16 @gsm_mult(i16 signext %255, i16 signext %257)
  %conv464 = sext i16 %call463 to i32
  %cmp465 = icmp sle i32 %conv460, %conv464
  br i1 %cmp465, label %if.then.467, label %if.end.468

if.then.467:                                      ; preds = %for.body.459
  br label %for.end.471

if.end.468:                                       ; preds = %for.body.459
  br label %for.inc.469

for.inc.469:                                      ; preds = %if.end.468
  %258 = load i16, i16* %bc, align 2
  %inc470 = add i16 %258, 1
  store i16 %inc470, i16* %bc, align 2
  br label %for.cond.455

for.end.471:                                      ; preds = %if.then.467, %for.cond.455
  %259 = load i16, i16* %bc, align 2
  %260 = load i16*, i16** %bc_out.addr, align 8
  store i16 %259, i16* %260, align 2
  br label %return

return:                                           ; preds = %for.end.471, %if.then.442, %if.then.438
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Long_term_analysis_filtering(i16 signext %bc, i16 signext %Nc, i16* %dp, i16* %d, i16* %dpp, i16* %e) #0 {
entry:
  %bc.addr = alloca i16, align 2
  %Nc.addr = alloca i16, align 2
  %dp.addr = alloca i16*, align 8
  %d.addr = alloca i16*, align 8
  %dpp.addr = alloca i16*, align 8
  %e.addr = alloca i16*, align 8
  %k = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store i16 %bc, i16* %bc.addr, align 2
  store i16 %Nc, i16* %Nc.addr, align 2
  store i16* %dp, i16** %dp.addr, align 8
  store i16* %d, i16** %d.addr, align 8
  store i16* %dpp, i16** %dpp.addr, align 8
  store i16* %e, i16** %e.addr, align 8
  %0 = load i16, i16* %bc.addr, align 2
  %conv = sext i16 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
    i32 2, label %sw.bb.66
    i32 3, label %sw.bb.107
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %1 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %1, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %3 = load i16, i16* %Nc.addr, align 2
  %conv2 = sext i16 %3 to i32
  %sub = sub nsw i32 %2, %conv2
  %idxprom = sext i32 %sub to i64
  %4 = load i16*, i16** %dp.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv3 = sext i16 %5 to i64
  %mul = mul nsw i64 3277, %conv3
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv4 = trunc i64 %shr to i16
  %6 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i16*, i16** %dpp.addr, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %7, i64 %idxprom5
  store i16 %conv4, i16* %arrayidx6, align 2
  %8 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i16*, i16** %d.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %9, i64 %idxprom7
  %10 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %10 to i64
  %11 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i16*, i16** %dpp.addr, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %12, i64 %idxprom10
  %13 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %13 to i64
  %sub13 = sub nsw i64 %conv9, %conv12
  store i64 %sub13, i64* %ltmp, align 8
  %cmp14 = icmp sge i64 %sub13, 32767
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.20

cond.false:                                       ; preds = %for.body
  %14 = load i64, i64* %ltmp, align 8
  %cmp16 = icmp sle i64 %14, -32768
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false
  br label %cond.end

cond.false.19:                                    ; preds = %cond.false
  %15 = load i64, i64* %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.19, %cond.true.18
  %cond = phi i64 [ -32768, %cond.true.18 ], [ %15, %cond.false.19 ]
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.end, %cond.true
  %cond21 = phi i64 [ 32767, %cond.true ], [ %cond, %cond.end ]
  %conv22 = trunc i64 %cond21 to i16
  %16 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %16 to i64
  %17 = load i16*, i16** %e.addr, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %17, i64 %idxprom23
  store i16 %conv22, i16* %arrayidx24, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.20
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.63, %sw.bb.25
  %19 = load i32, i32* %k, align 4
  %cmp27 = icmp sle i32 %19, 39
  br i1 %cmp27, label %for.body.29, label %for.end.65

for.body.29:                                      ; preds = %for.cond.26
  %20 = load i32, i32* %k, align 4
  %21 = load i16, i16* %Nc.addr, align 2
  %conv30 = sext i16 %21 to i32
  %sub31 = sub nsw i32 %20, %conv30
  %idxprom32 = sext i32 %sub31 to i64
  %22 = load i16*, i16** %dp.addr, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %22, i64 %idxprom32
  %23 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %23 to i64
  %mul35 = mul nsw i64 11469, %conv34
  %add36 = add nsw i64 %mul35, 16384
  %shr37 = ashr i64 %add36, 15
  %conv38 = trunc i64 %shr37 to i16
  %24 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %24 to i64
  %25 = load i16*, i16** %dpp.addr, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %25, i64 %idxprom39
  store i16 %conv38, i16* %arrayidx40, align 2
  %26 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %26 to i64
  %27 = load i16*, i16** %d.addr, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %27, i64 %idxprom41
  %28 = load i16, i16* %arrayidx42, align 2
  %conv43 = sext i16 %28 to i64
  %29 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %29 to i64
  %30 = load i16*, i16** %dpp.addr, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %30, i64 %idxprom44
  %31 = load i16, i16* %arrayidx45, align 2
  %conv46 = sext i16 %31 to i64
  %sub47 = sub nsw i64 %conv43, %conv46
  store i64 %sub47, i64* %ltmp, align 8
  %cmp48 = icmp sge i64 %sub47, 32767
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %for.body.29
  br label %cond.end.58

cond.false.51:                                    ; preds = %for.body.29
  %32 = load i64, i64* %ltmp, align 8
  %cmp52 = icmp sle i64 %32, -32768
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.false.51
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.false.51
  %33 = load i64, i64* %ltmp, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi i64 [ -32768, %cond.true.54 ], [ %33, %cond.false.55 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.true.50
  %cond59 = phi i64 [ 32767, %cond.true.50 ], [ %cond57, %cond.end.56 ]
  %conv60 = trunc i64 %cond59 to i16
  %34 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %34 to i64
  %35 = load i16*, i16** %e.addr, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %35, i64 %idxprom61
  store i16 %conv60, i16* %arrayidx62, align 2
  br label %for.inc.63

for.inc.63:                                       ; preds = %cond.end.58
  %36 = load i32, i32* %k, align 4
  %inc64 = add nsw i32 %36, 1
  store i32 %inc64, i32* %k, align 4
  br label %for.cond.26

for.end.65:                                       ; preds = %for.cond.26
  br label %sw.epilog

sw.bb.66:                                         ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.104, %sw.bb.66
  %37 = load i32, i32* %k, align 4
  %cmp68 = icmp sle i32 %37, 39
  br i1 %cmp68, label %for.body.70, label %for.end.106

for.body.70:                                      ; preds = %for.cond.67
  %38 = load i32, i32* %k, align 4
  %39 = load i16, i16* %Nc.addr, align 2
  %conv71 = sext i16 %39 to i32
  %sub72 = sub nsw i32 %38, %conv71
  %idxprom73 = sext i32 %sub72 to i64
  %40 = load i16*, i16** %dp.addr, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %40, i64 %idxprom73
  %41 = load i16, i16* %arrayidx74, align 2
  %conv75 = sext i16 %41 to i64
  %mul76 = mul nsw i64 21299, %conv75
  %add77 = add nsw i64 %mul76, 16384
  %shr78 = ashr i64 %add77, 15
  %conv79 = trunc i64 %shr78 to i16
  %42 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %42 to i64
  %43 = load i16*, i16** %dpp.addr, align 8
  %arrayidx81 = getelementptr inbounds i16, i16* %43, i64 %idxprom80
  store i16 %conv79, i16* %arrayidx81, align 2
  %44 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %44 to i64
  %45 = load i16*, i16** %d.addr, align 8
  %arrayidx83 = getelementptr inbounds i16, i16* %45, i64 %idxprom82
  %46 = load i16, i16* %arrayidx83, align 2
  %conv84 = sext i16 %46 to i64
  %47 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %47 to i64
  %48 = load i16*, i16** %dpp.addr, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %48, i64 %idxprom85
  %49 = load i16, i16* %arrayidx86, align 2
  %conv87 = sext i16 %49 to i64
  %sub88 = sub nsw i64 %conv84, %conv87
  store i64 %sub88, i64* %ltmp, align 8
  %cmp89 = icmp sge i64 %sub88, 32767
  br i1 %cmp89, label %cond.true.91, label %cond.false.92

cond.true.91:                                     ; preds = %for.body.70
  br label %cond.end.99

cond.false.92:                                    ; preds = %for.body.70
  %50 = load i64, i64* %ltmp, align 8
  %cmp93 = icmp sle i64 %50, -32768
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.false.92
  br label %cond.end.97

cond.false.96:                                    ; preds = %cond.false.92
  %51 = load i64, i64* %ltmp, align 8
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.95
  %cond98 = phi i64 [ -32768, %cond.true.95 ], [ %51, %cond.false.96 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.true.91
  %cond100 = phi i64 [ 32767, %cond.true.91 ], [ %cond98, %cond.end.97 ]
  %conv101 = trunc i64 %cond100 to i16
  %52 = load i32, i32* %k, align 4
  %idxprom102 = sext i32 %52 to i64
  %53 = load i16*, i16** %e.addr, align 8
  %arrayidx103 = getelementptr inbounds i16, i16* %53, i64 %idxprom102
  store i16 %conv101, i16* %arrayidx103, align 2
  br label %for.inc.104

for.inc.104:                                      ; preds = %cond.end.99
  %54 = load i32, i32* %k, align 4
  %inc105 = add nsw i32 %54, 1
  store i32 %inc105, i32* %k, align 4
  br label %for.cond.67

for.end.106:                                      ; preds = %for.cond.67
  br label %sw.epilog

sw.bb.107:                                        ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.145, %sw.bb.107
  %55 = load i32, i32* %k, align 4
  %cmp109 = icmp sle i32 %55, 39
  br i1 %cmp109, label %for.body.111, label %for.end.147

for.body.111:                                     ; preds = %for.cond.108
  %56 = load i32, i32* %k, align 4
  %57 = load i16, i16* %Nc.addr, align 2
  %conv112 = sext i16 %57 to i32
  %sub113 = sub nsw i32 %56, %conv112
  %idxprom114 = sext i32 %sub113 to i64
  %58 = load i16*, i16** %dp.addr, align 8
  %arrayidx115 = getelementptr inbounds i16, i16* %58, i64 %idxprom114
  %59 = load i16, i16* %arrayidx115, align 2
  %conv116 = sext i16 %59 to i64
  %mul117 = mul nsw i64 32767, %conv116
  %add118 = add nsw i64 %mul117, 16384
  %shr119 = ashr i64 %add118, 15
  %conv120 = trunc i64 %shr119 to i16
  %60 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %60 to i64
  %61 = load i16*, i16** %dpp.addr, align 8
  %arrayidx122 = getelementptr inbounds i16, i16* %61, i64 %idxprom121
  store i16 %conv120, i16* %arrayidx122, align 2
  %62 = load i32, i32* %k, align 4
  %idxprom123 = sext i32 %62 to i64
  %63 = load i16*, i16** %d.addr, align 8
  %arrayidx124 = getelementptr inbounds i16, i16* %63, i64 %idxprom123
  %64 = load i16, i16* %arrayidx124, align 2
  %conv125 = sext i16 %64 to i64
  %65 = load i32, i32* %k, align 4
  %idxprom126 = sext i32 %65 to i64
  %66 = load i16*, i16** %dpp.addr, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %66, i64 %idxprom126
  %67 = load i16, i16* %arrayidx127, align 2
  %conv128 = sext i16 %67 to i64
  %sub129 = sub nsw i64 %conv125, %conv128
  store i64 %sub129, i64* %ltmp, align 8
  %cmp130 = icmp sge i64 %sub129, 32767
  br i1 %cmp130, label %cond.true.132, label %cond.false.133

cond.true.132:                                    ; preds = %for.body.111
  br label %cond.end.140

cond.false.133:                                   ; preds = %for.body.111
  %68 = load i64, i64* %ltmp, align 8
  %cmp134 = icmp sle i64 %68, -32768
  br i1 %cmp134, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %cond.false.133
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.false.133
  %69 = load i64, i64* %ltmp, align 8
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi i64 [ -32768, %cond.true.136 ], [ %69, %cond.false.137 ]
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.138, %cond.true.132
  %cond141 = phi i64 [ 32767, %cond.true.132 ], [ %cond139, %cond.end.138 ]
  %conv142 = trunc i64 %cond141 to i16
  %70 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %70 to i64
  %71 = load i16*, i16** %e.addr, align 8
  %arrayidx144 = getelementptr inbounds i16, i16* %71, i64 %idxprom143
  store i16 %conv142, i16* %arrayidx144, align 2
  br label %for.inc.145

for.inc.145:                                      ; preds = %cond.end.140
  %72 = load i32, i32* %k, align 4
  %inc146 = add nsw i32 %72, 1
  store i32 %inc146, i32* %k, align 4
  br label %for.cond.108

for.end.147:                                      ; preds = %for.cond.108
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.147, %for.end.106, %for.end.65, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* %S, i16 signext %Ncr, i16 signext %bcr, i16* %erp, i16* %drp) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %Ncr.addr = alloca i16, align 2
  %bcr.addr = alloca i16, align 2
  %erp.addr = alloca i16*, align 8
  %drp.addr = alloca i16*, align 8
  %ltmp = alloca i64, align 8
  %k = alloca i32, align 4
  %brp = alloca i16, align 2
  %drpp = alloca i16, align 2
  %Nr = alloca i16, align 2
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16 %Ncr, i16* %Ncr.addr, align 2
  store i16 %bcr, i16* %bcr.addr, align 2
  store i16* %erp, i16** %erp.addr, align 8
  store i16* %drp, i16** %drp.addr, align 8
  %0 = load i16, i16* %Ncr.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 40
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, i16* %Ncr.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp sgt i32 %conv2, 120
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %nrp = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %2, i32 0, i32 7
  %3 = load i16, i16* %nrp, align 2
  %conv5 = sext i16 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load i16, i16* %Ncr.addr, align 2
  %conv6 = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i16
  store i16 %conv7, i16* %Nr, align 2
  %5 = load i16, i16* %Nr, align 2
  %6 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %nrp8 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %6, i32 0, i32 7
  store i16 %5, i16* %nrp8, align 2
  %7 = load i16, i16* %bcr.addr, align 2
  %idxprom = sext i16 %7 to i64
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* @gsm_QLB, i32 0, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  store i16 %8, i16* %brp, align 2
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load i32, i32* %k, align 4
  %cmp9 = icmp sle i32 %9, 39
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16, i16* %brp, align 2
  %conv11 = sext i16 %10 to i64
  %11 = load i32, i32* %k, align 4
  %12 = load i16, i16* %Nr, align 2
  %conv12 = sext i16 %12 to i32
  %sub = sub nsw i32 %11, %conv12
  %idxprom13 = sext i32 %sub to i64
  %13 = load i16*, i16** %drp.addr, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %13, i64 %idxprom13
  %14 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %14 to i64
  %mul = mul nsw i64 %conv11, %conv15
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %conv16 = trunc i64 %shr to i16
  store i16 %conv16, i16* %drpp, align 2
  %15 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i16*, i16** %erp.addr, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %16, i64 %idxprom17
  %17 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %17 to i64
  %18 = load i16, i16* %drpp, align 2
  %conv20 = sext i16 %18 to i64
  %add21 = add nsw i64 %conv19, %conv20
  store i64 %add21, i64* %ltmp, align 8
  %sub22 = sub nsw i64 %add21, -32768
  %cmp23 = icmp ugt i64 %sub22, 65535
  br i1 %cmp23, label %cond.true.25, label %cond.false.30

cond.true.25:                                     ; preds = %for.body
  %19 = load i64, i64* %ltmp, align 8
  %cmp26 = icmp sgt i64 %19, 0
  %cond28 = select i1 %cmp26, i32 32767, i32 -32768
  %conv29 = sext i32 %cond28 to i64
  br label %cond.end.31

cond.false.30:                                    ; preds = %for.body
  %20 = load i64, i64* %ltmp, align 8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.25
  %cond32 = phi i64 [ %conv29, %cond.true.25 ], [ %20, %cond.false.30 ]
  %conv33 = trunc i64 %cond32 to i16
  %21 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %21 to i64
  %22 = load i16*, i16** %drp.addr, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %22, i64 %idxprom34
  store i16 %conv33, i16* %arrayidx35, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end.31
  %23 = load i32, i32* %k, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.46, %for.end
  %24 = load i32, i32* %k, align 4
  %cmp37 = icmp sle i32 %24, 119
  br i1 %cmp37, label %for.body.39, label %for.end.48

for.body.39:                                      ; preds = %for.cond.36
  %25 = load i32, i32* %k, align 4
  %add40 = add nsw i32 -80, %25
  %idxprom41 = sext i32 %add40 to i64
  %26 = load i16*, i16** %drp.addr, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %26, i64 %idxprom41
  %27 = load i16, i16* %arrayidx42, align 2
  %28 = load i32, i32* %k, align 4
  %add43 = add nsw i32 -120, %28
  %idxprom44 = sext i32 %add43 to i64
  %29 = load i16*, i16** %drp.addr, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %29, i64 %idxprom44
  store i16 %27, i16* %arrayidx45, align 2
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.39
  %30 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %30, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond.36

for.end.48:                                       ; preds = %for.cond.36
  ret void
}

declare signext i16 @gsm_norm(i64) #1

declare signext i16 @gsm_mult(i16 signext, i16 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
