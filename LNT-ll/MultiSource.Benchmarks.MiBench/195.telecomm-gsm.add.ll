; ModuleID = './MultiSource.Benchmarks.MiBench/195.telecomm-gsm.add.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bitoff = internal global [256 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define signext i16 @gsm_add(i16 signext %a, i16 signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %sum = alloca i64, align 8
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %0 to i64
  %1 = load i16, i16* %b.addr, align 2
  %conv1 = sext i16 %1 to i64
  %add = add nsw i64 %conv, %conv1
  store i64 %add, i64* %sum, align 8
  %2 = load i64, i64* %sum, align 8
  %cmp = icmp slt i64 %2, -32768
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %sum, align 8
  %cmp3 = icmp sgt i64 %3, 32767
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %4 = load i64, i64* %sum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi i64 [ 32767, %cond.true.5 ], [ %4, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i64 [ -32768, %cond.true ], [ %cond, %cond.end ]
  %conv9 = trunc i64 %cond8 to i16
  ret i16 %conv9
}

; Function Attrs: nounwind uwtable
define signext i16 @gsm_sub(i16 signext %a, i16 signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %diff = alloca i64, align 8
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %0 to i64
  %1 = load i16, i16* %b.addr, align 2
  %conv1 = sext i16 %1 to i64
  %sub = sub nsw i64 %conv, %conv1
  store i64 %sub, i64* %diff, align 8
  %2 = load i64, i64* %diff, align 8
  %cmp = icmp slt i64 %2, -32768
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %diff, align 8
  %cmp3 = icmp sgt i64 %3, 32767
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %4 = load i64, i64* %diff, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi i64 [ 32767, %cond.true.5 ], [ %4, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i64 [ -32768, %cond.true ], [ %cond, %cond.end ]
  %conv9 = trunc i64 %cond8 to i16
  ret i16 %conv9
}

; Function Attrs: nounwind uwtable
define signext i16 @gsm_mult(i16 signext %a, i16 signext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, -32768
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, i16* %b.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, -32768
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i16 32767, i16* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load i16, i16* %a.addr, align 2
  %conv5 = sext i16 %2 to i64
  %3 = load i16, i16* %b.addr, align 2
  %conv6 = sext i16 %3 to i64
  %mul = mul nsw i64 %conv5, %conv6
  %shr = ashr i64 %mul, 15
  %conv7 = trunc i64 %shr to i16
  store i16 %conv7, i16* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

; Function Attrs: nounwind uwtable
define signext i16 @gsm_mult_r(i16 signext %a, i16 signext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %prod = alloca i64, align 8
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %b.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, -32768
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, i16* %a.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, -32768
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i16 32767, i16* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load i16, i16* %a.addr, align 2
  %conv5 = sext i16 %2 to i64
  %3 = load i16, i16* %b.addr, align 2
  %conv6 = sext i16 %3 to i64
  %mul = mul nsw i64 %conv5, %conv6
  %add = add nsw i64 %mul, 16384
  store i64 %add, i64* %prod, align 8
  %4 = load i64, i64* %prod, align 8
  %shr = ashr i64 %4, 15
  store i64 %shr, i64* %prod, align 8
  %5 = load i64, i64* %prod, align 8
  %and = and i64 %5, 65535
  %conv7 = trunc i64 %and to i16
  store i16 %conv7, i16* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i16, i16* %retval
  ret i16 %6
}

; Function Attrs: nounwind uwtable
define signext i16 @gsm_abs(i16 signext %a) #0 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false.7

cond.true:                                        ; preds = %entry
  %1 = load i16, i16* %a.addr, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, -32768
  br i1 %cmp3, label %cond.true.5, label %cond.false

cond.true.5:                                      ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %2 = load i16, i16* %a.addr, align 2
  %conv6 = sext i16 %2 to i32
  %sub = sub nsw i32 0, %conv6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.5
  %cond = phi i32 [ 32767, %cond.true.5 ], [ %sub, %cond.false ]
  br label %cond.end.9

cond.false.7:                                     ; preds = %entry
  %3 = load i16, i16* %a.addr, align 2
  %conv8 = sext i16 %3 to i32
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.end
  %cond10 = phi i32 [ %cond, %cond.end ], [ %conv8, %cond.false.7 ]
  %conv11 = trunc i32 %cond10 to i16
  ret i16 %conv11
}

; Function Attrs: nounwind uwtable
define i64 @gsm_L_mult(i16 signext %a, i16 signext %b) #0 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  store i16 %b, i16* %b.addr, align 2
  %0 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %0 to i64
  %1 = load i16, i16* %b.addr, align 2
  %conv1 = sext i16 %1 to i64
  %mul = mul nsw i64 %conv, %conv1
  %shl = shl i64 %mul, 1
  ret i64 %shl
}

; Function Attrs: nounwind uwtable
define i64 @gsm_L_add(i64 %a, i64 %b) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %A = alloca i64, align 8
  %A15 = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else.10

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %b.addr, align 8
  %cmp1 = icmp sge i64 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i64, i64* %a.addr, align 8
  %3 = load i64, i64* %b.addr, align 8
  %add = add nsw i64 %2, %3
  store i64 %add, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i64, i64* %a.addr, align 8
  %add3 = add nsw i64 %4, 1
  %sub = sub nsw i64 0, %add3
  %5 = load i64, i64* %b.addr, align 8
  %add4 = add nsw i64 %5, 1
  %sub5 = sub nsw i64 0, %add4
  %add6 = add i64 %sub, %sub5
  store i64 %add6, i64* %A, align 8
  %6 = load i64, i64* %A, align 8
  %cmp7 = icmp uge i64 %6, 2147483647
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %7 = load i64, i64* %A, align 8
  %sub8 = sub nsw i64 0, %7
  %sub9 = sub nsw i64 %sub8, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -2147483648, %cond.true ], [ %sub9, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.else.10:                                       ; preds = %entry
  %8 = load i64, i64* %b.addr, align 8
  %cmp11 = icmp sle i64 %8, 0
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.10
  %9 = load i64, i64* %a.addr, align 8
  %10 = load i64, i64* %b.addr, align 8
  %add13 = add nsw i64 %9, %10
  store i64 %add13, i64* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.10
  %11 = load i64, i64* %a.addr, align 8
  %12 = load i64, i64* %b.addr, align 8
  %add16 = add i64 %11, %12
  store i64 %add16, i64* %A15, align 8
  %13 = load i64, i64* %A15, align 8
  %cmp17 = icmp ugt i64 %13, 2147483647
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.else.14
  br label %cond.end.20

cond.false.19:                                    ; preds = %if.else.14
  %14 = load i64, i64* %A15, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i64 [ 2147483647, %cond.true.18 ], [ %14, %cond.false.19 ]
  store i64 %cond21, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.20, %if.then.12, %cond.end, %if.then.2
  %15 = load i64, i64* %retval
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @gsm_L_sub(i64 %a, i64 %b) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %A = alloca i64, align 8
  %A12 = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %b.addr, align 8
  %cmp1 = icmp sge i64 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i64, i64* %a.addr, align 8
  %3 = load i64, i64* %b.addr, align 8
  %sub = sub nsw i64 %2, %3
  store i64 %sub, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i64, i64* %a.addr, align 8
  %5 = load i64, i64* %b.addr, align 8
  %add = add nsw i64 %5, 1
  %sub3 = sub nsw i64 0, %add
  %add4 = add i64 %4, %sub3
  store i64 %add4, i64* %A, align 8
  %6 = load i64, i64* %A, align 8
  %cmp5 = icmp uge i64 %6, 2147483647
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %7 = load i64, i64* %A, align 8
  %add6 = add i64 %7, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 2147483647, %cond.true ], [ %add6, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.else.7:                                        ; preds = %entry
  %8 = load i64, i64* %b.addr, align 8
  %cmp8 = icmp sle i64 %8, 0
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %9 = load i64, i64* %a.addr, align 8
  %10 = load i64, i64* %b.addr, align 8
  %sub10 = sub nsw i64 %9, %10
  store i64 %sub10, i64* %retval
  br label %return

if.else.11:                                       ; preds = %if.else.7
  %11 = load i64, i64* %a.addr, align 8
  %add13 = add nsw i64 %11, 1
  %sub14 = sub nsw i64 0, %add13
  %12 = load i64, i64* %b.addr, align 8
  %add15 = add i64 %sub14, %12
  store i64 %add15, i64* %A12, align 8
  %13 = load i64, i64* %A12, align 8
  %cmp16 = icmp uge i64 %13, 2147483647
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %if.else.11
  br label %cond.end.21

cond.false.18:                                    ; preds = %if.else.11
  %14 = load i64, i64* %A12, align 8
  %sub19 = sub nsw i64 0, %14
  %sub20 = sub nsw i64 %sub19, 1
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.18, %cond.true.17
  %cond22 = phi i64 [ -2147483648, %cond.true.17 ], [ %sub20, %cond.false.18 ]
  store i64 %cond22, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.21, %if.then.9, %cond.end, %if.then.2
  %15 = load i64, i64* %retval
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define signext i16 @gsm_norm(i64 %a) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8
  %cmp1 = icmp sle i64 %1, -1073741824
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load i64, i64* %a.addr, align 8
  %neg = xor i64 %2, -1
  store i64 %neg, i64* %a.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %3 = load i64, i64* %a.addr, align 8
  %and = and i64 %3, 4294901760
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false.13

cond.true:                                        ; preds = %if.end.3
  %4 = load i64, i64* %a.addr, align 8
  %and4 = and i64 %4, 4278190080
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false

cond.true.6:                                      ; preds = %cond.true
  %5 = load i64, i64* %a.addr, align 8
  %shr = ashr i64 %5, 24
  %and7 = and i64 255, %shr
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i64 %and7
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %add = add nsw i32 -1, %conv
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %7 = load i64, i64* %a.addr, align 8
  %shr8 = ashr i64 %7, 16
  %and9 = and i64 255, %shr8
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i64 %and9
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %8 to i32
  %add12 = add nsw i32 7, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.6
  %cond = phi i32 [ %add, %cond.true.6 ], [ %add12, %cond.false ]
  br label %cond.end.29

cond.false.13:                                    ; preds = %if.end.3
  %9 = load i64, i64* %a.addr, align 8
  %and14 = and i64 %9, 65280
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.22

cond.true.16:                                     ; preds = %cond.false.13
  %10 = load i64, i64* %a.addr, align 8
  %shr17 = ashr i64 %10, 8
  %and18 = and i64 255, %shr17
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i64 %and18
  %11 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %11 to i32
  %add21 = add nsw i32 15, %conv20
  br label %cond.end.27

cond.false.22:                                    ; preds = %cond.false.13
  %12 = load i64, i64* %a.addr, align 8
  %and23 = and i64 255, %12
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* @bitoff, i32 0, i64 %and23
  %13 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %13 to i32
  %add26 = add nsw i32 23, %conv25
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.22, %cond.true.16
  %cond28 = phi i32 [ %add21, %cond.true.16 ], [ %add26, %cond.false.22 ]
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.end.27, %cond.end
  %cond30 = phi i32 [ %cond, %cond.end ], [ %cond28, %cond.end.27 ]
  %conv31 = trunc i32 %cond30 to i16
  store i16 %conv31, i16* %retval
  br label %return

return:                                           ; preds = %cond.end.29, %if.then.2
  %14 = load i16, i16* %retval
  ret i16 %14
}

; Function Attrs: nounwind uwtable
define i64 @gsm_L_asl(i64 %a, i32 %n) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sle i32 %1, -32
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %2 = load i64, i64* %a.addr, align 8
  %cmp3 = icmp slt i64 %2, 0
  %conv = zext i1 %cmp3 to i32
  %sub = sub nsw i32 0, %conv
  %conv4 = sext i32 %sub to i64
  store i64 %conv4, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %3, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %4 = load i64, i64* %a.addr, align 8
  %5 = load i32, i32* %n.addr, align 4
  %sub9 = sub nsw i32 0, %5
  %call = call i64 @gsm_L_asr(i64 %4, i32 %sub9)
  store i64 %call, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %6 = load i64, i64* %a.addr, align 8
  %7 = load i32, i32* %n.addr, align 4
  %sh_prom = zext i32 %7 to i64
  %shl = shl i64 %6, %sh_prom
  store i64 %shl, i64* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then.2, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i64 @gsm_L_asr(i64 %a, i32 %n) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8
  %cmp1 = icmp slt i64 %1, 0
  %conv = zext i1 %cmp1 to i32
  %sub = sub nsw i32 0, %conv
  %conv2 = sext i32 %sub to i64
  store i64 %conv2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp sle i32 %2, -32
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i64 0, i64* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %3, 0
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %4 = load i64, i64* %a.addr, align 8
  %5 = load i32, i32* %n.addr, align 4
  %sub10 = sub nsw i32 0, %5
  %sh_prom = zext i32 %sub10 to i64
  %shl = shl i64 %4, %sh_prom
  store i64 %shl, i64* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %6 = load i64, i64* %a.addr, align 8
  %7 = load i32, i32* %n.addr, align 4
  %sh_prom12 = zext i32 %7 to i64
  %shr = ashr i64 %6, %sh_prom12
  store i64 %shr, i64* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9, %if.then.5, %if.then
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define signext i16 @gsm_asl(i16 signext %a, i32 %n) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %n.addr = alloca i32, align 4
  store i16 %a, i16* %a.addr, align 2
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sle i32 %1, -16
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %2 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %2 to i32
  %cmp3 = icmp slt i32 %conv, 0
  %conv4 = zext i1 %cmp3 to i32
  %sub = sub nsw i32 0, %conv4
  %conv5 = trunc i32 %sub to i16
  store i16 %conv5, i16* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %3, 0
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %4 = load i16, i16* %a.addr, align 2
  %5 = load i32, i32* %n.addr, align 4
  %sub10 = sub nsw i32 0, %5
  %call = call signext i16 @gsm_asr(i16 signext %4, i32 %sub10)
  store i16 %call, i16* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %6 = load i16, i16* %a.addr, align 2
  %conv12 = sext i16 %6 to i32
  %7 = load i32, i32* %n.addr, align 4
  %shl = shl i32 %conv12, %7
  %conv13 = trunc i32 %shl to i16
  store i16 %conv13, i16* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9, %if.then.2, %if.then
  %8 = load i16, i16* %retval
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define signext i16 @gsm_asr(i16 signext %a, i32 %n) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %n.addr = alloca i32, align 4
  store i16 %a, i16* %a.addr, align 2
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %a.addr, align 2
  %conv = sext i16 %1 to i32
  %cmp1 = icmp slt i32 %conv, 0
  %conv2 = zext i1 %cmp1 to i32
  %sub = sub nsw i32 0, %conv2
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp sle i32 %2, -16
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i16 0, i16* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %cmp8 = icmp slt i32 %3, 0
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.7
  %4 = load i16, i16* %a.addr, align 2
  %conv11 = sext i16 %4 to i32
  %5 = load i32, i32* %n.addr, align 4
  %sub12 = sub nsw i32 0, %5
  %shl = shl i32 %conv11, %sub12
  %conv13 = trunc i32 %shl to i16
  store i16 %conv13, i16* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  %6 = load i16, i16* %a.addr, align 2
  %conv15 = sext i16 %6 to i32
  %7 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %conv15, %7
  %conv16 = trunc i32 %shr to i16
  store i16 %conv16, i16* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %if.then.6, %if.then
  %8 = load i16, i16* %retval
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define signext i16 @gsm_div(i16 signext %num, i16 signext %denum) #0 {
entry:
  %retval = alloca i16, align 2
  %num.addr = alloca i16, align 2
  %denum.addr = alloca i16, align 2
  %L_num = alloca i64, align 8
  %L_denum = alloca i64, align 8
  %div = alloca i16, align 2
  %k = alloca i32, align 4
  store i16 %num, i16* %num.addr, align 2
  store i16 %denum, i16* %denum.addr, align 2
  %0 = load i16, i16* %num.addr, align 2
  %conv = sext i16 %0 to i64
  store i64 %conv, i64* %L_num, align 8
  %1 = load i16, i16* %denum.addr, align 2
  %conv1 = sext i16 %1 to i64
  store i64 %conv1, i64* %L_denum, align 8
  store i16 0, i16* %div, align 2
  store i32 15, i32* %k, align 4
  %2 = load i16, i16* %num.addr, align 2
  %conv2 = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %3 = load i32, i32* %k, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %k, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i16, i16* %div, align 2
  %conv4 = sext i16 %4 to i32
  %shl = shl i32 %conv4, 1
  %conv5 = trunc i32 %shl to i16
  store i16 %conv5, i16* %div, align 2
  %5 = load i64, i64* %L_num, align 8
  %shl6 = shl i64 %5, 1
  store i64 %shl6, i64* %L_num, align 8
  %6 = load i64, i64* %L_num, align 8
  %7 = load i64, i64* %L_denum, align 8
  %cmp7 = icmp sge i64 %6, %7
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  %8 = load i64, i64* %L_denum, align 8
  %9 = load i64, i64* %L_num, align 8
  %sub = sub nsw i64 %9, %8
  store i64 %sub, i64* %L_num, align 8
  %10 = load i16, i16* %div, align 2
  %inc = add i16 %10, 1
  store i16 %inc, i16* %div, align 2
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i16, i16* %div, align 2
  store i16 %11, i16* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i16, i16* %retval
  ret i16 %12
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
