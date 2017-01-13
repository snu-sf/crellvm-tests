; ModuleID = './MultiSource.Benchmarks.7zip/3.Bra.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @ARM_Convert(i8* %data, i64 %size, i32 %ip, i32 %encoding) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ip.addr = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %dest = alloca i32, align 4
  %src = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %ip, i32* %ip.addr, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %1, 4
  store i64 %sub, i64* %size.addr, align 8
  %2 = load i32, i32* %ip.addr, align 4
  %add = add i32 %2, 8
  store i32 %add, i32* %ip.addr, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ule i64 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %add2 = add i64 %5, 3
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %add2
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 235
  br i1 %cmp3, label %if.then.5, label %if.end.37

if.then.5:                                        ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %add6 = add i64 %8, 2
  %9 = load i8*, i8** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 %add6
  %10 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %shl = shl i32 %conv8, 16
  %11 = load i64, i64* %i, align 8
  %add9 = add i64 %11, 1
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %add9
  %13 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %shl12 = shl i32 %conv11, 8
  %or = or i32 %shl, %shl12
  %14 = load i64, i64* %i, align 8
  %add13 = add i64 %14, 0
  %15 = load i8*, i8** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 %add13
  %16 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %or16 = or i32 %or, %conv15
  store i32 %or16, i32* %src, align 4
  %17 = load i32, i32* %src, align 4
  %shl17 = shl i32 %17, 2
  store i32 %shl17, i32* %src, align 4
  %18 = load i32, i32* %encoding.addr, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.5
  %19 = load i32, i32* %ip.addr, align 4
  %20 = load i64, i64* %i, align 8
  %conv19 = trunc i64 %20 to i32
  %add20 = add i32 %19, %conv19
  %21 = load i32, i32* %src, align 4
  %add21 = add i32 %add20, %21
  store i32 %add21, i32* %dest, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.then.5
  %22 = load i32, i32* %src, align 4
  %23 = load i32, i32* %ip.addr, align 4
  %24 = load i64, i64* %i, align 8
  %conv22 = trunc i64 %24 to i32
  %add23 = add i32 %23, %conv22
  %sub24 = sub i32 %22, %add23
  store i32 %sub24, i32* %dest, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.18
  %25 = load i32, i32* %dest, align 4
  %shr = lshr i32 %25, 2
  store i32 %shr, i32* %dest, align 4
  %26 = load i32, i32* %dest, align 4
  %shr26 = lshr i32 %26, 16
  %conv27 = trunc i32 %shr26 to i8
  %27 = load i64, i64* %i, align 8
  %add28 = add i64 %27, 2
  %28 = load i8*, i8** %data.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %28, i64 %add28
  store i8 %conv27, i8* %arrayidx29, align 1
  %29 = load i32, i32* %dest, align 4
  %shr30 = lshr i32 %29, 8
  %conv31 = trunc i32 %shr30 to i8
  %30 = load i64, i64* %i, align 8
  %add32 = add i64 %30, 1
  %31 = load i8*, i8** %data.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %31, i64 %add32
  store i8 %conv31, i8* %arrayidx33, align 1
  %32 = load i32, i32* %dest, align 4
  %conv34 = trunc i32 %32 to i8
  %33 = load i64, i64* %i, align 8
  %add35 = add i64 %33, 0
  %34 = load i8*, i8** %data.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %34, i64 %add35
  store i8 %conv34, i8* %arrayidx36, align 1
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %35 = load i64, i64* %i, align 8
  %add38 = add i64 %35, 4
  store i64 %add38, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i64, i64* %i, align 8
  store i64 %36, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %37 = load i64, i64* %retval
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define i64 @ARMT_Convert(i8* %data, i64 %size, i32 %ip, i32 %encoding) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ip.addr = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %dest = alloca i32, align 4
  %src = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %ip, i32* %ip.addr, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %1, 4
  store i64 %sub, i64* %size.addr, align 8
  %2 = load i32, i32* %ip.addr, align 4
  %add = add i32 %2, 4
  store i32 %add, i32* %ip.addr, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ule i64 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %add2 = add i64 %5, 1
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %add2
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 248
  %cmp3 = icmp eq i32 %and, 240
  br i1 %cmp3, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %add5 = add i64 %8, 3
  %9 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %add5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %and8 = and i32 %conv7, 248
  %cmp9 = icmp eq i32 %and8, 248
  br i1 %cmp9, label %if.then.11, label %if.end.59

if.then.11:                                       ; preds = %land.lhs.true
  %11 = load i64, i64* %i, align 8
  %add12 = add i64 %11, 1
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 %add12
  %13 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  %and15 = and i32 %conv14, 7
  %shl = shl i32 %and15, 19
  %14 = load i64, i64* %i, align 8
  %add16 = add i64 %14, 0
  %15 = load i8*, i8** %data.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %add16
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %16 to i32
  %shl19 = shl i32 %conv18, 11
  %or = or i32 %shl, %shl19
  %17 = load i64, i64* %i, align 8
  %add20 = add i64 %17, 3
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %add20
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %and23 = and i32 %conv22, 7
  %shl24 = shl i32 %and23, 8
  %or25 = or i32 %or, %shl24
  %20 = load i64, i64* %i, align 8
  %add26 = add i64 %20, 2
  %21 = load i8*, i8** %data.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %21, i64 %add26
  %22 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %22 to i32
  %or29 = or i32 %or25, %conv28
  store i32 %or29, i32* %src, align 4
  %23 = load i32, i32* %src, align 4
  %shl30 = shl i32 %23, 1
  store i32 %shl30, i32* %src, align 4
  %24 = load i32, i32* %encoding.addr, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then.11
  %25 = load i32, i32* %ip.addr, align 4
  %26 = load i64, i64* %i, align 8
  %conv32 = trunc i64 %26 to i32
  %add33 = add i32 %25, %conv32
  %27 = load i32, i32* %src, align 4
  %add34 = add i32 %add33, %27
  store i32 %add34, i32* %dest, align 4
  br label %if.end.38

if.else:                                          ; preds = %if.then.11
  %28 = load i32, i32* %src, align 4
  %29 = load i32, i32* %ip.addr, align 4
  %30 = load i64, i64* %i, align 8
  %conv35 = trunc i64 %30 to i32
  %add36 = add i32 %29, %conv35
  %sub37 = sub i32 %28, %add36
  store i32 %sub37, i32* %dest, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.31
  %31 = load i32, i32* %dest, align 4
  %shr = lshr i32 %31, 1
  store i32 %shr, i32* %dest, align 4
  %32 = load i32, i32* %dest, align 4
  %shr39 = lshr i32 %32, 19
  %and40 = and i32 %shr39, 7
  %or41 = or i32 240, %and40
  %conv42 = trunc i32 %or41 to i8
  %33 = load i64, i64* %i, align 8
  %add43 = add i64 %33, 1
  %34 = load i8*, i8** %data.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %34, i64 %add43
  store i8 %conv42, i8* %arrayidx44, align 1
  %35 = load i32, i32* %dest, align 4
  %shr45 = lshr i32 %35, 11
  %conv46 = trunc i32 %shr45 to i8
  %36 = load i64, i64* %i, align 8
  %add47 = add i64 %36, 0
  %37 = load i8*, i8** %data.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %37, i64 %add47
  store i8 %conv46, i8* %arrayidx48, align 1
  %38 = load i32, i32* %dest, align 4
  %shr49 = lshr i32 %38, 8
  %and50 = and i32 %shr49, 7
  %or51 = or i32 248, %and50
  %conv52 = trunc i32 %or51 to i8
  %39 = load i64, i64* %i, align 8
  %add53 = add i64 %39, 3
  %40 = load i8*, i8** %data.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %40, i64 %add53
  store i8 %conv52, i8* %arrayidx54, align 1
  %41 = load i32, i32* %dest, align 4
  %conv55 = trunc i32 %41 to i8
  %42 = load i64, i64* %i, align 8
  %add56 = add i64 %42, 2
  %43 = load i8*, i8** %data.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %43, i64 %add56
  store i8 %conv55, i8* %arrayidx57, align 1
  %44 = load i64, i64* %i, align 8
  %add58 = add i64 %44, 2
  store i64 %add58, i64* %i, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.38, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %45 = load i64, i64* %i, align 8
  %add60 = add i64 %45, 2
  store i64 %add60, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i64, i64* %i, align 8
  store i64 %46, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %47 = load i64, i64* %retval
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define i64 @PPC_Convert(i8* %data, i64 %size, i32 %ip, i32 %encoding) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ip.addr = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %src = alloca i32, align 4
  %dest = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %ip, i32* %ip.addr, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %1, 4
  store i64 %sub, i64* %size.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ule i64 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %shr = ashr i32 %conv, 2
  %cmp2 = icmp eq i32 %shr, 18
  br i1 %cmp2, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %add = add i64 %7, 3
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %add
  %9 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %9 to i32
  %and = and i32 %conv5, 3
  %cmp6 = icmp eq i32 %and, 1
  br i1 %cmp6, label %if.then.8, label %if.end.59

if.then.8:                                        ; preds = %land.lhs.true
  %10 = load i64, i64* %i, align 8
  %add9 = add i64 %10, 0
  %11 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %add9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %and12 = and i32 %conv11, 3
  %shl = shl i32 %and12, 24
  %13 = load i64, i64* %i, align 8
  %add13 = add i64 %13, 1
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %add13
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  %shl16 = shl i32 %conv15, 16
  %or = or i32 %shl, %shl16
  %16 = load i64, i64* %i, align 8
  %add17 = add i64 %16, 2
  %17 = load i8*, i8** %data.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 %add17
  %18 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or, %shl20
  %19 = load i64, i64* %i, align 8
  %add22 = add i64 %19, 3
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %20, i64 %add22
  %21 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %21 to i32
  %and25 = and i32 %conv24, -4
  %or26 = or i32 %or21, %and25
  store i32 %or26, i32* %src, align 4
  %22 = load i32, i32* %encoding.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.8
  %23 = load i32, i32* %ip.addr, align 4
  %24 = load i64, i64* %i, align 8
  %conv28 = trunc i64 %24 to i32
  %add29 = add i32 %23, %conv28
  %25 = load i32, i32* %src, align 4
  %add30 = add i32 %add29, %25
  store i32 %add30, i32* %dest, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.then.8
  %26 = load i32, i32* %src, align 4
  %27 = load i32, i32* %ip.addr, align 4
  %28 = load i64, i64* %i, align 8
  %conv31 = trunc i64 %28 to i32
  %add32 = add i32 %27, %conv31
  %sub33 = sub i32 %26, %add32
  store i32 %sub33, i32* %dest, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.27
  %29 = load i32, i32* %dest, align 4
  %shr35 = lshr i32 %29, 24
  %and36 = and i32 %shr35, 3
  %or37 = or i32 72, %and36
  %conv38 = trunc i32 %or37 to i8
  %30 = load i64, i64* %i, align 8
  %add39 = add i64 %30, 0
  %31 = load i8*, i8** %data.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %31, i64 %add39
  store i8 %conv38, i8* %arrayidx40, align 1
  %32 = load i32, i32* %dest, align 4
  %shr41 = lshr i32 %32, 16
  %conv42 = trunc i32 %shr41 to i8
  %33 = load i64, i64* %i, align 8
  %add43 = add i64 %33, 1
  %34 = load i8*, i8** %data.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %34, i64 %add43
  store i8 %conv42, i8* %arrayidx44, align 1
  %35 = load i32, i32* %dest, align 4
  %shr45 = lshr i32 %35, 8
  %conv46 = trunc i32 %shr45 to i8
  %36 = load i64, i64* %i, align 8
  %add47 = add i64 %36, 2
  %37 = load i8*, i8** %data.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %37, i64 %add47
  store i8 %conv46, i8* %arrayidx48, align 1
  %38 = load i64, i64* %i, align 8
  %add49 = add i64 %38, 3
  %39 = load i8*, i8** %data.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %39, i64 %add49
  %40 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %40 to i32
  %and52 = and i32 %conv51, 3
  %conv53 = trunc i32 %and52 to i8
  store i8 %conv53, i8* %arrayidx50, align 1
  %41 = load i32, i32* %dest, align 4
  %42 = load i64, i64* %i, align 8
  %add54 = add i64 %42, 3
  %43 = load i8*, i8** %data.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %43, i64 %add54
  %44 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %44 to i32
  %or57 = or i32 %conv56, %41
  %conv58 = trunc i32 %or57 to i8
  store i8 %conv58, i8* %arrayidx55, align 1
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.34, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %45 = load i64, i64* %i, align 8
  %add60 = add i64 %45, 4
  store i64 %add60, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i64, i64* %i, align 8
  store i64 %46, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %47 = load i64, i64* %retval
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define i64 @SPARC_Convert(i8* %data, i64 %size, i32 %ip, i32 %encoding) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ip.addr = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %src = alloca i32, align 4
  %dest = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %ip, i32* %ip.addr, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %1, 4
  store i64 %sub, i64* %size.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %conv = zext i32 %2 to i64
  %3 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ule i64 %conv, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 64
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %add = add i32 %7, 1
  %idxprom6 = zext i32 %add to i64
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %and = and i32 %conv8, 192
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %10 to i64
  %11 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %11, i64 %idxprom11
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 127
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.79

land.lhs.true.16:                                 ; preds = %lor.lhs.false
  %13 = load i32, i32* %i, align 4
  %add17 = add i32 %13, 1
  %idxprom18 = zext i32 %add17 to i64
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 %idxprom18
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %and21 = and i32 %conv20, 192
  %cmp22 = icmp eq i32 %and21, 192
  br i1 %cmp22, label %if.then.24, label %if.end.79

if.then.24:                                       ; preds = %land.lhs.true.16, %land.lhs.true
  %16 = load i32, i32* %i, align 4
  %add25 = add i32 %16, 0
  %idxprom26 = zext i32 %add25 to i64
  %17 = load i8*, i8** %data.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %17, i64 %idxprom26
  %18 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %18 to i32
  %shl = shl i32 %conv28, 24
  %19 = load i32, i32* %i, align 4
  %add29 = add i32 %19, 1
  %idxprom30 = zext i32 %add29 to i64
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %20, i64 %idxprom30
  %21 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %21 to i32
  %shl33 = shl i32 %conv32, 16
  %or = or i32 %shl, %shl33
  %22 = load i32, i32* %i, align 4
  %add34 = add i32 %22, 2
  %idxprom35 = zext i32 %add34 to i64
  %23 = load i8*, i8** %data.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %23, i64 %idxprom35
  %24 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %24 to i32
  %shl38 = shl i32 %conv37, 8
  %or39 = or i32 %or, %shl38
  %25 = load i32, i32* %i, align 4
  %add40 = add i32 %25, 3
  %idxprom41 = zext i32 %add40 to i64
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %26, i64 %idxprom41
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %or44 = or i32 %or39, %conv43
  store i32 %or44, i32* %src, align 4
  %28 = load i32, i32* %src, align 4
  %shl45 = shl i32 %28, 2
  store i32 %shl45, i32* %src, align 4
  %29 = load i32, i32* %encoding.addr, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.24
  %30 = load i32, i32* %ip.addr, align 4
  %31 = load i32, i32* %i, align 4
  %add47 = add i32 %30, %31
  %32 = load i32, i32* %src, align 4
  %add48 = add i32 %add47, %32
  store i32 %add48, i32* %dest, align 4
  br label %if.end.51

if.else:                                          ; preds = %if.then.24
  %33 = load i32, i32* %src, align 4
  %34 = load i32, i32* %ip.addr, align 4
  %35 = load i32, i32* %i, align 4
  %add49 = add i32 %34, %35
  %sub50 = sub i32 %33, %add49
  store i32 %sub50, i32* %dest, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.46
  %36 = load i32, i32* %dest, align 4
  %shr = lshr i32 %36, 2
  store i32 %shr, i32* %dest, align 4
  %37 = load i32, i32* %dest, align 4
  %shr52 = lshr i32 %37, 22
  %and53 = and i32 %shr52, 1
  %sub54 = sub i32 0, %and53
  %shl55 = shl i32 %sub54, 22
  %and56 = and i32 %shl55, 1073741823
  %38 = load i32, i32* %dest, align 4
  %and57 = and i32 %38, 4194303
  %or58 = or i32 %and56, %and57
  %or59 = or i32 %or58, 1073741824
  store i32 %or59, i32* %dest, align 4
  %39 = load i32, i32* %dest, align 4
  %shr60 = lshr i32 %39, 24
  %conv61 = trunc i32 %shr60 to i8
  %40 = load i32, i32* %i, align 4
  %add62 = add i32 %40, 0
  %idxprom63 = zext i32 %add62 to i64
  %41 = load i8*, i8** %data.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %41, i64 %idxprom63
  store i8 %conv61, i8* %arrayidx64, align 1
  %42 = load i32, i32* %dest, align 4
  %shr65 = lshr i32 %42, 16
  %conv66 = trunc i32 %shr65 to i8
  %43 = load i32, i32* %i, align 4
  %add67 = add i32 %43, 1
  %idxprom68 = zext i32 %add67 to i64
  %44 = load i8*, i8** %data.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %44, i64 %idxprom68
  store i8 %conv66, i8* %arrayidx69, align 1
  %45 = load i32, i32* %dest, align 4
  %shr70 = lshr i32 %45, 8
  %conv71 = trunc i32 %shr70 to i8
  %46 = load i32, i32* %i, align 4
  %add72 = add i32 %46, 2
  %idxprom73 = zext i32 %add72 to i64
  %47 = load i8*, i8** %data.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %47, i64 %idxprom73
  store i8 %conv71, i8* %arrayidx74, align 1
  %48 = load i32, i32* %dest, align 4
  %conv75 = trunc i32 %48 to i8
  %49 = load i32, i32* %i, align 4
  %add76 = add i32 %49, 3
  %idxprom77 = zext i32 %add76 to i64
  %50 = load i8*, i8** %data.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %50, i64 %idxprom77
  store i8 %conv75, i8* %arrayidx78, align 1
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.51, %land.lhs.true.16, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %51 = load i32, i32* %i, align 4
  %add80 = add i32 %51, 4
  store i32 %add80, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %i, align 4
  %conv81 = zext i32 %52 to i64
  store i64 %conv81, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %53 = load i64, i64* %retval
  ret i64 %53
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
