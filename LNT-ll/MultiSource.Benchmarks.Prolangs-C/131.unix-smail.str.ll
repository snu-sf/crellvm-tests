; ModuleID = './MultiSource.Benchmarks.Prolangs-C/131.unix-smail.str.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @strncmpic(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %u = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %u, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %u, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %idxprom = sext i32 %conv3 to i64
  %call = call i16** @__ctype_b_loc() #2
  %8 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %9 to i32
  %and = and i32 %conv4, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %10 = load i8*, i8** %u, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv5, 65
  %add = add nsw i32 %sub, 97
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %12 = load i8*, i8** %u, align 8
  %13 = load i8, i8* %12, align 1
  %conv6 = sext i8 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv6, %cond.false ]
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv7 = sext i8 %15 to i32
  %idxprom8 = sext i32 %conv7 to i64
  %call9 = call i16** @__ctype_b_loc() #2
  %16 = load i16*, i16** %call9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %16, i64 %idxprom8
  %17 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %17 to i32
  %and12 = and i32 %conv11, 256
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.18

cond.true.14:                                     ; preds = %cond.end
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv15 = sext i8 %19 to i32
  %sub16 = sub nsw i32 %conv15, 65
  %add17 = add nsw i32 %sub16, 97
  br label %cond.end.20

cond.false.18:                                    ; preds = %cond.end
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %conv19 = sext i8 %21 to i32
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.14
  %cond21 = phi i32 [ %add17, %cond.true.14 ], [ %conv19, %cond.false.18 ]
  %cmp22 = icmp eq i32 %cond, %cond21
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.20
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %23 = load i8*, i8** %u, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr24, i8** %u, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.20
  br label %while.end

if.end:                                           ; preds = %if.then
  %24 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.else, %land.end
  %25 = load i32, i32* %n.addr, align 4
  %cmp25 = icmp sgt i32 %25, 0
  br i1 %cmp25, label %if.then.27, label %if.else.59

if.then.27:                                       ; preds = %while.end
  %26 = load i8*, i8** %u, align 8
  %27 = load i8, i8* %26, align 1
  %conv28 = sext i8 %27 to i32
  %idxprom29 = sext i32 %conv28 to i64
  %call30 = call i16** @__ctype_b_loc() #2
  %28 = load i16*, i16** %call30, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %28, i64 %idxprom29
  %29 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %29 to i32
  %and33 = and i32 %conv32, 256
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.39

cond.true.35:                                     ; preds = %if.then.27
  %30 = load i8*, i8** %u, align 8
  %31 = load i8, i8* %30, align 1
  %conv36 = sext i8 %31 to i32
  %sub37 = sub nsw i32 %conv36, 65
  %add38 = add nsw i32 %sub37, 97
  br label %cond.end.41

cond.false.39:                                    ; preds = %if.then.27
  %32 = load i8*, i8** %u, align 8
  %33 = load i8, i8* %32, align 1
  %conv40 = sext i8 %33 to i32
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.35
  %cond42 = phi i32 [ %add38, %cond.true.35 ], [ %conv40, %cond.false.39 ]
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv43 = sext i8 %35 to i32
  %idxprom44 = sext i32 %conv43 to i64
  %call45 = call i16** @__ctype_b_loc() #2
  %36 = load i16*, i16** %call45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %36, i64 %idxprom44
  %37 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %37 to i32
  %and48 = and i32 %conv47, 256
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.54

cond.true.50:                                     ; preds = %cond.end.41
  %38 = load i8*, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %conv51 = sext i8 %39 to i32
  %sub52 = sub nsw i32 %conv51, 65
  %add53 = add nsw i32 %sub52, 97
  br label %cond.end.56

cond.false.54:                                    ; preds = %cond.end.41
  %40 = load i8*, i8** %p, align 8
  %41 = load i8, i8* %40, align 1
  %conv55 = sext i8 %41 to i32
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.50
  %cond57 = phi i32 [ %add53, %cond.true.50 ], [ %conv55, %cond.false.54 ]
  %sub58 = sub nsw i32 %cond42, %cond57
  store i32 %sub58, i32* %retval
  br label %return

if.else.59:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.59, %cond.end.56
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
define i32 @strcmpic(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %u = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %u, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %u, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #2
  %6 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %7 to i32
  %and = and i32 %conv3, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %8 = load i8*, i8** %u, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv4, 65
  %add = add nsw i32 %sub, 97
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %10 = load i8*, i8** %u, align 8
  %11 = load i8, i8* %10, align 1
  %conv5 = sext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv5, %cond.false ]
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv6 = sext i8 %13 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %call8 = call i16** @__ctype_b_loc() #2
  %14 = load i16*, i16** %call8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %14, i64 %idxprom7
  %15 = load i16, i16* %arrayidx9, align 2
  %conv10 = zext i16 %15 to i32
  %and11 = and i32 %conv10, 256
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %cond.true.13, label %cond.false.17

cond.true.13:                                     ; preds = %cond.end
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv14 = sext i8 %17 to i32
  %sub15 = sub nsw i32 %conv14, 65
  %add16 = add nsw i32 %sub15, 97
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.end
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv18 = sext i8 %19 to i32
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.13
  %cond20 = phi i32 [ %add16, %cond.true.13 ], [ %conv18, %cond.false.17 ]
  %cmp21 = icmp eq i32 %cond, %cond20
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.19
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %21 = load i8*, i8** %u, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr23, i8** %u, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.19
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %22 = load i8*, i8** %u, align 8
  %23 = load i8, i8* %22, align 1
  %conv24 = sext i8 %23 to i32
  %idxprom25 = sext i32 %conv24 to i64
  %call26 = call i16** @__ctype_b_loc() #2
  %24 = load i16*, i16** %call26, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %24, i64 %idxprom25
  %25 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %25 to i32
  %and29 = and i32 %conv28, 256
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.35

cond.true.31:                                     ; preds = %while.end
  %26 = load i8*, i8** %u, align 8
  %27 = load i8, i8* %26, align 1
  %conv32 = sext i8 %27 to i32
  %sub33 = sub nsw i32 %conv32, 65
  %add34 = add nsw i32 %sub33, 97
  br label %cond.end.37

cond.false.35:                                    ; preds = %while.end
  %28 = load i8*, i8** %u, align 8
  %29 = load i8, i8* %28, align 1
  %conv36 = sext i8 %29 to i32
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.31
  %cond38 = phi i32 [ %add34, %cond.true.31 ], [ %conv36, %cond.false.35 ]
  %30 = load i8*, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %conv39 = sext i8 %31 to i32
  %idxprom40 = sext i32 %conv39 to i64
  %call41 = call i16** @__ctype_b_loc() #2
  %32 = load i16*, i16** %call41, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %32, i64 %idxprom40
  %33 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %33 to i32
  %and44 = and i32 %conv43, 256
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %cond.true.46, label %cond.false.50

cond.true.46:                                     ; preds = %cond.end.37
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv47 = sext i8 %35 to i32
  %sub48 = sub nsw i32 %conv47, 65
  %add49 = add nsw i32 %sub48, 97
  br label %cond.end.52

cond.false.50:                                    ; preds = %cond.end.37
  %36 = load i8*, i8** %p, align 8
  %37 = load i8, i8* %36, align 1
  %conv51 = sext i8 %37 to i32
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.50, %cond.true.46
  %cond53 = phi i32 [ %add49, %cond.true.46 ], [ %conv51, %cond.false.50 ]
  %sub54 = sub nsw i32 %cond38, %cond53
  ret i32 %sub54
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
