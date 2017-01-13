; ModuleID = './MultiSource.Benchmarks.mediabench/68.gsm.toast.preprocess.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind uwtable
define void @Gsm_Preprocess(%struct.gsm_state* %S, i16* %s, i16* %so) #0 {
entry:
  %S.addr = alloca %struct.gsm_state*, align 8
  %s.addr = alloca i16*, align 8
  %so.addr = alloca i16*, align 8
  %z1 = alloca i16, align 2
  %L_z2 = alloca i64, align 8
  %mp = alloca i16, align 2
  %s1 = alloca i16, align 2
  %L_s2 = alloca i64, align 8
  %L_temp = alloca i64, align 8
  %msp = alloca i16, align 2
  %lsp = alloca i16, align 2
  %SO = alloca i16, align 2
  %ltmp = alloca i64, align 8
  %utmp = alloca i64, align 8
  %k = alloca i32, align 4
  store %struct.gsm_state* %S, %struct.gsm_state** %S.addr, align 8
  store i16* %s, i16** %s.addr, align 8
  store i16* %so, i16** %so.addr, align 8
  %0 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %z11 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i32 0, i32 1
  %1 = load i16, i16* %z11, align 2
  store i16 %1, i16* %z1, align 2
  %2 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %L_z22 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %2, i32 0, i32 2
  %3 = load i64, i64* %L_z22, align 8
  store i64 %3, i64* %L_z2, align 8
  %4 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %mp3 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %4, i32 0, i32 3
  %5 = load i32, i32* %mp3, align 4
  %conv = trunc i32 %5 to i16
  store i16 %conv, i16* %mp, align 2
  store i32 160, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.90, %entry
  %6 = load i32, i32* %k, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %k, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i16*, i16** %s.addr, align 8
  %8 = load i16, i16* %7, align 2
  %conv4 = sext i16 %8 to i32
  %shr = ashr i32 %conv4, 3
  %shl = shl i32 %shr, 2
  %conv5 = trunc i32 %shl to i16
  store i16 %conv5, i16* %SO, align 2
  %9 = load i16*, i16** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %s.addr, align 8
  %10 = load i16, i16* %SO, align 2
  %conv6 = sext i16 %10 to i32
  %11 = load i16, i16* %z1, align 2
  %conv7 = sext i16 %11 to i32
  %sub = sub nsw i32 %conv6, %conv7
  %conv8 = trunc i32 %sub to i16
  store i16 %conv8, i16* %s1, align 2
  %12 = load i16, i16* %SO, align 2
  store i16 %12, i16* %z1, align 2
  %13 = load i16, i16* %s1, align 2
  %conv9 = sext i16 %13 to i64
  store i64 %conv9, i64* %L_s2, align 8
  %14 = load i64, i64* %L_s2, align 8
  %shl10 = shl i64 %14, 15
  store i64 %shl10, i64* %L_s2, align 8
  %15 = load i64, i64* %L_z2, align 8
  %shr11 = ashr i64 %15, 15
  %conv12 = trunc i64 %shr11 to i16
  store i16 %conv12, i16* %msp, align 2
  %16 = load i64, i64* %L_z2, align 8
  %17 = load i16, i16* %msp, align 2
  %conv13 = sext i16 %17 to i64
  %shl14 = shl i64 %conv13, 15
  %sub15 = sub nsw i64 %16, %shl14
  %conv16 = trunc i64 %sub15 to i16
  store i16 %conv16, i16* %lsp, align 2
  %18 = load i16, i16* %lsp, align 2
  %conv17 = sext i16 %18 to i64
  %mul = mul nsw i64 %conv17, 32735
  %add = add nsw i64 %mul, 16384
  %shr18 = ashr i64 %add, 15
  %19 = load i64, i64* %L_s2, align 8
  %add19 = add nsw i64 %19, %shr18
  store i64 %add19, i64* %L_s2, align 8
  %20 = load i16, i16* %msp, align 2
  %conv20 = sext i16 %20 to i64
  %mul21 = mul nsw i64 %conv20, 32735
  store i64 %mul21, i64* %L_temp, align 8
  %21 = load i64, i64* %L_temp, align 8
  %cmp = icmp slt i64 %21, 0
  br i1 %cmp, label %cond.true, label %cond.false.40

cond.true:                                        ; preds = %while.body
  %22 = load i64, i64* %L_s2, align 8
  %cmp23 = icmp sge i64 %22, 0
  br i1 %cmp23, label %cond.true.25, label %cond.false

cond.true.25:                                     ; preds = %cond.true
  %23 = load i64, i64* %L_temp, align 8
  %24 = load i64, i64* %L_s2, align 8
  %add26 = add nsw i64 %23, %24
  br label %cond.end.38

cond.false:                                       ; preds = %cond.true
  %25 = load i64, i64* %L_temp, align 8
  %add27 = add nsw i64 %25, 1
  %sub28 = sub nsw i64 0, %add27
  %26 = load i64, i64* %L_s2, align 8
  %add29 = add nsw i64 %26, 1
  %sub30 = sub nsw i64 0, %add29
  %add31 = add i64 %sub28, %sub30
  store i64 %add31, i64* %utmp, align 8
  %cmp32 = icmp uge i64 %add31, 2147483647
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.false
  br label %cond.end

cond.false.35:                                    ; preds = %cond.false
  %27 = load i64, i64* %utmp, align 8
  %sub36 = sub nsw i64 0, %27
  %sub37 = sub nsw i64 %sub36, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false.35, %cond.true.34
  %cond = phi i64 [ -2147483648, %cond.true.34 ], [ %sub37, %cond.false.35 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end, %cond.true.25
  %cond39 = phi i64 [ %add26, %cond.true.25 ], [ %cond, %cond.end ]
  br label %cond.end.55

cond.false.40:                                    ; preds = %while.body
  %28 = load i64, i64* %L_s2, align 8
  %cmp41 = icmp sle i64 %28, 0
  br i1 %cmp41, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.false.40
  %29 = load i64, i64* %L_temp, align 8
  %30 = load i64, i64* %L_s2, align 8
  %add44 = add nsw i64 %29, %30
  br label %cond.end.53

cond.false.45:                                    ; preds = %cond.false.40
  %31 = load i64, i64* %L_temp, align 8
  %32 = load i64, i64* %L_s2, align 8
  %add46 = add i64 %31, %32
  store i64 %add46, i64* %utmp, align 8
  %cmp47 = icmp uge i64 %add46, 2147483647
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.false.45
  br label %cond.end.51

cond.false.50:                                    ; preds = %cond.false.45
  %33 = load i64, i64* %utmp, align 8
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.49
  %cond52 = phi i64 [ 2147483647, %cond.true.49 ], [ %33, %cond.false.50 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.43
  %cond54 = phi i64 [ %add44, %cond.true.43 ], [ %cond52, %cond.end.51 ]
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.end.53, %cond.end.38
  %cond56 = phi i64 [ %cond39, %cond.end.38 ], [ %cond54, %cond.end.53 ]
  store i64 %cond56, i64* %L_z2, align 8
  %34 = load i64, i64* %L_z2, align 8
  %cmp57 = icmp slt i64 %34, 0
  br i1 %cmp57, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %cond.end.55
  %35 = load i64, i64* %L_z2, align 8
  %add60 = add nsw i64 %35, 16384
  br label %cond.end.69

cond.false.61:                                    ; preds = %cond.end.55
  %36 = load i64, i64* %L_z2, align 8
  %add62 = add i64 %36, 16384
  store i64 %add62, i64* %utmp, align 8
  %cmp63 = icmp uge i64 %add62, 2147483647
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.false.61
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.false.61
  %37 = load i64, i64* %utmp, align 8
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i64 [ 2147483647, %cond.true.65 ], [ %37, %cond.false.66 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.59
  %cond70 = phi i64 [ %add60, %cond.true.59 ], [ %cond68, %cond.end.67 ]
  store i64 %cond70, i64* %L_temp, align 8
  %38 = load i16, i16* %mp, align 2
  %conv71 = sext i16 %38 to i64
  %mul72 = mul nsw i64 %conv71, -28180
  %add73 = add nsw i64 %mul72, 16384
  %shr74 = ashr i64 %add73, 15
  %conv75 = trunc i64 %shr74 to i16
  store i16 %conv75, i16* %msp, align 2
  %39 = load i64, i64* %L_temp, align 8
  %shr76 = ashr i64 %39, 15
  %conv77 = trunc i64 %shr76 to i16
  store i16 %conv77, i16* %mp, align 2
  %40 = load i16, i16* %mp, align 2
  %conv78 = sext i16 %40 to i64
  %41 = load i16, i16* %msp, align 2
  %conv79 = sext i16 %41 to i64
  %add80 = add nsw i64 %conv78, %conv79
  store i64 %add80, i64* %ltmp, align 8
  %sub81 = sub nsw i64 %add80, -32768
  %cmp82 = icmp ugt i64 %sub81, 65535
  br i1 %cmp82, label %cond.true.84, label %cond.false.89

cond.true.84:                                     ; preds = %cond.end.69
  %42 = load i64, i64* %ltmp, align 8
  %cmp85 = icmp sgt i64 %42, 0
  %cond87 = select i1 %cmp85, i32 32767, i32 -32768
  %conv88 = sext i32 %cond87 to i64
  br label %cond.end.90

cond.false.89:                                    ; preds = %cond.end.69
  %43 = load i64, i64* %ltmp, align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.84
  %cond91 = phi i64 [ %conv88, %cond.true.84 ], [ %43, %cond.false.89 ]
  %conv92 = trunc i64 %cond91 to i16
  %44 = load i16*, i16** %so.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i16, i16* %44, i32 1
  store i16* %incdec.ptr93, i16** %so.addr, align 8
  store i16 %conv92, i16* %44, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i16, i16* %z1, align 2
  %46 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %z194 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %46, i32 0, i32 1
  store i16 %45, i16* %z194, align 2
  %47 = load i64, i64* %L_z2, align 8
  %48 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %L_z295 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %48, i32 0, i32 2
  store i64 %47, i64* %L_z295, align 8
  %49 = load i16, i16* %mp, align 2
  %conv96 = sext i16 %49 to i32
  %50 = load %struct.gsm_state*, %struct.gsm_state** %S.addr, align 8
  %mp97 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %50, i32 0, i32 3
  store i32 %conv96, i32* %mp97, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
