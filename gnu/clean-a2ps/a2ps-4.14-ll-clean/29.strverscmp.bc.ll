; ModuleID = './lib/strverscmp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strverscmp.next_state = internal constant [16 x i32] [i32 0, i32 4, i32 12, i32 0, i32 0, i32 4, i32 4, i32 4, i32 0, i32 8, i32 8, i32 8, i32 0, i32 8, i32 12, i32 12], align 16
@strverscmp.result_type = internal constant [60 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 3, i32 2, i32 1, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 2, i32 -1, i32 2, i32 2, i32 2, i32 -1, i32 2, i32 2, i32 2], align 16

; Function Attrs: nounwind uwtable
define i32 @strverscmp(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %state = alloca i32, align 4
  %diff = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %p1, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %p2, align 8
  %2 = load i8*, i8** %p1, align 8
  %3 = load i8*, i8** %p2, align 8
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %c1, align 1
  %6 = load i8*, i8** %p2, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr1, i8** %p2, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %c2, align 1
  %8 = load i8, i8* %c1, align 1
  %conv = zext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 48
  %conv3 = zext i1 %cmp2 to i32
  %9 = load i8, i8* %c1, align 1
  %conv4 = zext i8 %9 to i32
  %idxprom = sext i32 %conv4 to i64
  %call = call i16** @__ctype_b_loc() #2
  %10 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv5 = zext i16 %11 to i32
  %and = and i32 %conv5, 2048
  %cmp6 = icmp ne i32 %and, 0
  %conv7 = zext i1 %cmp6 to i32
  %add = add nsw i32 %conv3, %conv7
  %or = or i32 0, %add
  store i32 %or, i32* %state, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %12 = load i8, i8* %c1, align 1
  %conv8 = zext i8 %12 to i32
  %13 = load i8, i8* %c2, align 1
  %conv9 = zext i8 %13 to i32
  %sub = sub nsw i32 %conv8, %conv9
  store i32 %sub, i32* %diff, align 4
  %cmp10 = icmp eq i32 %sub, 0
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load i8, i8* %c1, align 1
  %conv12 = zext i8 %14 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i32, i32* %state, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* @strverscmp.next_state, i32 0, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  store i32 %17, i32* %state, align 4
  %18 = load i8*, i8** %p1, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr17, i8** %p1, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %c1, align 1
  %20 = load i8*, i8** %p2, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr18, i8** %p2, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %c2, align 1
  %22 = load i8, i8* %c1, align 1
  %conv19 = zext i8 %22 to i32
  %cmp20 = icmp eq i32 %conv19, 48
  %conv21 = zext i1 %cmp20 to i32
  %23 = load i8, i8* %c1, align 1
  %conv22 = zext i8 %23 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %call24 = call i16** @__ctype_b_loc() #2
  %24 = load i16*, i16** %call24, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %24, i64 %idxprom23
  %25 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %25 to i32
  %and27 = and i32 %conv26, 2048
  %cmp28 = icmp ne i32 %and27, 0
  %conv29 = zext i1 %cmp28 to i32
  %add30 = add nsw i32 %conv21, %conv29
  %26 = load i32, i32* %state, align 4
  %or31 = or i32 %26, %add30
  store i32 %or31, i32* %state, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load i32, i32* %state, align 4
  %shl = shl i32 %27, 2
  %28 = load i8, i8* %c2, align 1
  %conv32 = zext i8 %28 to i32
  %cmp33 = icmp eq i32 %conv32, 48
  %conv34 = zext i1 %cmp33 to i32
  %29 = load i8, i8* %c2, align 1
  %conv35 = zext i8 %29 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %call37 = call i16** @__ctype_b_loc() #2
  %30 = load i16*, i16** %call37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %30, i64 %idxprom36
  %31 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %31 to i32
  %and40 = and i32 %conv39, 2048
  %cmp41 = icmp ne i32 %and40, 0
  %conv42 = zext i1 %cmp41 to i32
  %add43 = add nsw i32 %conv34, %conv42
  %or44 = or i32 %shl, %add43
  %idxprom45 = sext i32 %or44 to i64
  %arrayidx46 = getelementptr inbounds [60 x i32], [60 x i32]* @strverscmp.result_type, i32 0, i64 %idxprom45
  %32 = load i32, i32* %arrayidx46, align 4
  store i32 %32, i32* %state, align 4
  %33 = load i32, i32* %state, align 4
  switch i32 %33, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %while.end
  %34 = load i32, i32* %diff, align 4
  store i32 %34, i32* %retval
  br label %return

sw.bb.47:                                         ; preds = %while.end
  br label %while.cond.48

while.cond.48:                                    ; preds = %if.end.66, %sw.bb.47
  %35 = load i8*, i8** %p1, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr49, i8** %p1, align 8
  %36 = load i8, i8* %35, align 1
  %conv50 = zext i8 %36 to i32
  %idxprom51 = sext i32 %conv50 to i64
  %call52 = call i16** @__ctype_b_loc() #2
  %37 = load i16*, i16** %call52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %37, i64 %idxprom51
  %38 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %38 to i32
  %and55 = and i32 %conv54, 2048
  %tobool = icmp ne i32 %and55, 0
  br i1 %tobool, label %while.body.56, label %while.end.67

while.body.56:                                    ; preds = %while.cond.48
  %39 = load i8*, i8** %p2, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr57, i8** %p2, align 8
  %40 = load i8, i8* %39, align 1
  %conv58 = zext i8 %40 to i32
  %idxprom59 = sext i32 %conv58 to i64
  %call60 = call i16** @__ctype_b_loc() #2
  %41 = load i16*, i16** %call60, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %41, i64 %idxprom59
  %42 = load i16, i16* %arrayidx61, align 2
  %conv62 = zext i16 %42 to i32
  %and63 = and i32 %conv62, 2048
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %while.body.56
  store i32 1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %while.body.56
  br label %while.cond.48

while.end.67:                                     ; preds = %while.cond.48
  %43 = load i8*, i8** %p2, align 8
  %44 = load i8, i8* %43, align 1
  %conv68 = zext i8 %44 to i32
  %idxprom69 = sext i32 %conv68 to i64
  %call70 = call i16** @__ctype_b_loc() #2
  %45 = load i16*, i16** %call70, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %45, i64 %idxprom69
  %46 = load i16, i16* %arrayidx71, align 2
  %conv72 = zext i16 %46 to i32
  %and73 = and i32 %conv72, 2048
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end.67
  br label %cond.end

cond.false:                                       ; preds = %while.end.67
  %47 = load i32, i32* %diff, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %47, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

sw.default:                                       ; preds = %while.end
  %48 = load i32, i32* %state, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %cond.end, %if.then.65, %sw.bb, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
