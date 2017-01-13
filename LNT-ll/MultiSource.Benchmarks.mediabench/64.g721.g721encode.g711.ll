; ModuleID = './MultiSource.Benchmarks.mediabench/64.g721.g721encode.g711.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_u2a = global [128 x i8] c"\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1B\1D\1F!\22#$%&'()*+,.0123456789:;<=>@ABCDEFGHIJKLMNOQRSTUVWXYZ[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80", align 16
@_a2u = global [128 x i8] c"\01\03\05\07\09\0B\0D\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$%&'()*+,-./001123456789:;<=>?@@ABCDEFGHIJKLMNOOPQRSTUVWXYZ[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F", align 16
@seg_end = internal global [8 x i16] [i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383, i16 32767], align 16

; Function Attrs: nounwind uwtable
define zeroext i8 @linear2alaw(i32 %pcm_val) #0 {
entry:
  %retval = alloca i8, align 1
  %pcm_val.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %seg = alloca i32, align 4
  %aval = alloca i8, align 1
  store i32 %pcm_val, i32* %pcm_val.addr, align 4
  %0 = load i32, i32* %pcm_val.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 213, i32* %mask, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 85, i32* %mask, align 4
  %1 = load i32, i32* %pcm_val.addr, align 4
  %sub = sub nsw i32 0, %1
  %sub1 = sub nsw i32 %sub, 8
  store i32 %sub1, i32* %pcm_val.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %pcm_val.addr, align 4
  %call = call i32 @search(i32 %2, i16* getelementptr inbounds ([8 x i16], [8 x i16]* @seg_end, i32 0, i32 0), i32 8)
  store i32 %call, i32* %seg, align 4
  %3 = load i32, i32* %seg, align 4
  %cmp2 = icmp sge i32 %3, 8
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %mask, align 4
  %xor = xor i32 127, %4
  %conv = trunc i32 %xor to i8
  store i8 %conv, i8* %retval
  br label %return

if.else.4:                                        ; preds = %if.end
  %5 = load i32, i32* %seg, align 4
  %shl = shl i32 %5, 4
  %conv5 = trunc i32 %shl to i8
  store i8 %conv5, i8* %aval, align 1
  %6 = load i32, i32* %seg, align 4
  %cmp6 = icmp slt i32 %6, 2
  br i1 %cmp6, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else.4
  %7 = load i32, i32* %pcm_val.addr, align 4
  %shr = ashr i32 %7, 4
  %and = and i32 %shr, 15
  %8 = load i8, i8* %aval, align 1
  %conv9 = zext i8 %8 to i32
  %or = or i32 %conv9, %and
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %aval, align 1
  br label %if.end.17

if.else.11:                                       ; preds = %if.else.4
  %9 = load i32, i32* %pcm_val.addr, align 4
  %10 = load i32, i32* %seg, align 4
  %add = add nsw i32 %10, 3
  %shr12 = ashr i32 %9, %add
  %and13 = and i32 %shr12, 15
  %11 = load i8, i8* %aval, align 1
  %conv14 = zext i8 %11 to i32
  %or15 = or i32 %conv14, %and13
  %conv16 = trunc i32 %or15 to i8
  store i8 %conv16, i8* %aval, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.11, %if.then.8
  %12 = load i8, i8* %aval, align 1
  %conv18 = zext i8 %12 to i32
  %13 = load i32, i32* %mask, align 4
  %xor19 = xor i32 %conv18, %13
  %conv20 = trunc i32 %xor19 to i8
  store i8 %conv20, i8* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.3
  %14 = load i8, i8* %retval
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @search(i32 %val, i16* %table, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %table.addr = alloca i16*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  store i16* %table, i16** %table.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %val.addr, align 4
  %3 = load i16*, i16** %table.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %table.addr, align 8
  %4 = load i16, i16* %3, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp sle i32 %2, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %size.addr, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @alaw2linear(i8 zeroext %a_val) #0 {
entry:
  %a_val.addr = alloca i8, align 1
  %t = alloca i32, align 4
  %seg = alloca i32, align 4
  store i8 %a_val, i8* %a_val.addr, align 1
  %0 = load i8, i8* %a_val.addr, align 1
  %conv = zext i8 %0 to i32
  %xor = xor i32 %conv, 85
  %conv1 = trunc i32 %xor to i8
  store i8 %conv1, i8* %a_val.addr, align 1
  %1 = load i8, i8* %a_val.addr, align 1
  %conv2 = zext i8 %1 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %and, 4
  store i32 %shl, i32* %t, align 4
  %2 = load i8, i8* %a_val.addr, align 1
  %conv3 = zext i8 %2 to i32
  %and4 = and i32 %conv3, 112
  %shr = lshr i32 %and4, 4
  store i32 %shr, i32* %seg, align 4
  %3 = load i32, i32* %seg, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %t, align 4
  %add = add nsw i32 %4, 8
  store i32 %add, i32* %t, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %5 = load i32, i32* %t, align 4
  %add6 = add nsw i32 %5, 264
  store i32 %add6, i32* %t, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load i32, i32* %t, align 4
  %add7 = add nsw i32 %6, 264
  store i32 %add7, i32* %t, align 4
  %7 = load i32, i32* %seg, align 4
  %sub = sub nsw i32 %7, 1
  %8 = load i32, i32* %t, align 4
  %shl8 = shl i32 %8, %sub
  store i32 %shl8, i32* %t, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb
  %9 = load i8, i8* %a_val.addr, align 1
  %conv9 = zext i8 %9 to i32
  %and10 = and i32 %conv9, 128
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %10 = load i32, i32* %t, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %11 = load i32, i32* %t, align 4
  %sub11 = sub nsw i32 0, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %sub11, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define zeroext i8 @linear2ulaw(i32 %pcm_val) #0 {
entry:
  %retval = alloca i8, align 1
  %pcm_val.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %seg = alloca i32, align 4
  %uval = alloca i8, align 1
  store i32 %pcm_val, i32* %pcm_val.addr, align 4
  %0 = load i32, i32* %pcm_val.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %pcm_val.addr, align 4
  %sub = sub nsw i32 132, %1
  store i32 %sub, i32* %pcm_val.addr, align 4
  store i32 127, i32* %mask, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %pcm_val.addr, align 4
  %add = add nsw i32 %2, 132
  store i32 %add, i32* %pcm_val.addr, align 4
  store i32 255, i32* %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %pcm_val.addr, align 4
  %call = call i32 @search(i32 %3, i16* getelementptr inbounds ([8 x i16], [8 x i16]* @seg_end, i32 0, i32 0), i32 8)
  store i32 %call, i32* %seg, align 4
  %4 = load i32, i32* %seg, align 4
  %cmp1 = icmp sge i32 %4, 8
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %mask, align 4
  %xor = xor i32 127, %5
  %conv = trunc i32 %xor to i8
  store i8 %conv, i8* %retval
  br label %return

if.else.3:                                        ; preds = %if.end
  %6 = load i32, i32* %seg, align 4
  %shl = shl i32 %6, 4
  %7 = load i32, i32* %pcm_val.addr, align 4
  %8 = load i32, i32* %seg, align 4
  %add4 = add nsw i32 %8, 3
  %shr = ashr i32 %7, %add4
  %and = and i32 %shr, 15
  %or = or i32 %shl, %and
  %conv5 = trunc i32 %or to i8
  store i8 %conv5, i8* %uval, align 1
  %9 = load i8, i8* %uval, align 1
  %conv6 = zext i8 %9 to i32
  %10 = load i32, i32* %mask, align 4
  %xor7 = xor i32 %conv6, %10
  %conv8 = trunc i32 %xor7 to i8
  store i8 %conv8, i8* %retval
  br label %return

return:                                           ; preds = %if.else.3, %if.then.2
  %11 = load i8, i8* %retval
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define i32 @ulaw2linear(i8 zeroext %u_val) #0 {
entry:
  %u_val.addr = alloca i8, align 1
  %t = alloca i32, align 4
  store i8 %u_val, i8* %u_val.addr, align 1
  %0 = load i8, i8* %u_val.addr, align 1
  %conv = zext i8 %0 to i32
  %neg = xor i32 %conv, -1
  %conv1 = trunc i32 %neg to i8
  store i8 %conv1, i8* %u_val.addr, align 1
  %1 = load i8, i8* %u_val.addr, align 1
  %conv2 = zext i8 %1 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %and, 3
  %add = add nsw i32 %shl, 132
  store i32 %add, i32* %t, align 4
  %2 = load i8, i8* %u_val.addr, align 1
  %conv3 = zext i8 %2 to i32
  %and4 = and i32 %conv3, 112
  %shr = lshr i32 %and4, 4
  %3 = load i32, i32* %t, align 4
  %shl5 = shl i32 %3, %shr
  store i32 %shl5, i32* %t, align 4
  %4 = load i8, i8* %u_val.addr, align 1
  %conv6 = zext i8 %4 to i32
  %and7 = and i32 %conv6, 128
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %t, align 4
  %sub = sub nsw i32 132, %5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %t, align 4
  %sub8 = sub nsw i32 %6, 132
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub8, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define zeroext i8 @alaw2ulaw(i8 zeroext %aval) #0 {
entry:
  %aval.addr = alloca i8, align 1
  store i8 %aval, i8* %aval.addr, align 1
  %0 = load i8, i8* %aval.addr, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %aval.addr, align 1
  %1 = load i8, i8* %aval.addr, align 1
  %conv2 = zext i8 %1 to i32
  %and3 = and i32 %conv2, 128
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, i8* %aval.addr, align 1
  %conv4 = zext i8 %2 to i32
  %xor = xor i32 %conv4, 213
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @_a2u, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %3 to i32
  %xor6 = xor i32 255, %conv5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i8, i8* %aval.addr, align 1
  %conv7 = zext i8 %4 to i32
  %xor8 = xor i32 %conv7, 85
  %idxprom9 = sext i32 %xor8 to i64
  %arrayidx10 = getelementptr inbounds [128 x i8], [128 x i8]* @_a2u, i32 0, i64 %idxprom9
  %5 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %5 to i32
  %xor12 = xor i32 127, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor6, %cond.true ], [ %xor12, %cond.false ]
  %conv13 = trunc i32 %cond to i8
  ret i8 %conv13
}

; Function Attrs: nounwind uwtable
define zeroext i8 @ulaw2alaw(i8 zeroext %uval) #0 {
entry:
  %uval.addr = alloca i8, align 1
  store i8 %uval, i8* %uval.addr, align 1
  %0 = load i8, i8* %uval.addr, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %uval.addr, align 1
  %1 = load i8, i8* %uval.addr, align 1
  %conv2 = zext i8 %1 to i32
  %and3 = and i32 %conv2, 128
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, i8* %uval.addr, align 1
  %conv4 = zext i8 %2 to i32
  %xor = xor i32 255, %conv4
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @_u2a, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv5, 1
  %xor6 = xor i32 213, %sub
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i8, i8* %uval.addr, align 1
  %conv7 = zext i8 %4 to i32
  %xor8 = xor i32 127, %conv7
  %idxprom9 = sext i32 %xor8 to i64
  %arrayidx10 = getelementptr inbounds [128 x i8], [128 x i8]* @_u2a, i32 0, i64 %idxprom9
  %5 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %5 to i32
  %sub12 = sub nsw i32 %conv11, 1
  %xor13 = xor i32 85, %sub12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor6, %cond.true ], [ %xor13, %cond.false ]
  %conv14 = trunc i32 %cond to i8
  ret i8 %conv14
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
