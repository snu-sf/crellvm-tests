; ModuleID = 'refbuf.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = internal global [16 x i16] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @PutPel_14(i16** %Pic, i32 %y, i32 %x, i16 zeroext %val) #0 {
entry:
  %Pic.addr = alloca i16**, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 16, %1
  %idxprom = sext i32 %add to i64
  %2 = load i32, i32* %y.addr, align 4
  %add1 = add nsw i32 16, %2
  %idxprom2 = sext i32 %add1 to i64
  %3 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %3, i64 %idxprom2
  %4 = load i16*, i16** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %4, i64 %idxprom
  store i16 %0, i16* %arrayidx3, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define void @PutPel_11(i16* %Pic, i32 %y, i32 %x, i16 zeroext %val, i32 %width) #0 {
entry:
  %Pic.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  %width.addr = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %3
  %idxprom = sext i32 %add to i64
  %4 = load i16*, i16** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  store i16 %0, i16* %arrayidx, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define i16* @FastLine16Y_11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %Pic.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %2
  %idxprom = sext i32 %add to i64
  %3 = load i16*, i16** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  ret i16* %arrayidx
}

; Function Attrs: nounwind uwtable
define i16* @UMVLine16Y_11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %retval = alloca i16*, align 8
  %Pic.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %maxx = alloca i32, align 4
  %Picy = alloca i16*, align 8
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %3, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  br label %cond.end.12

cond.false.4:                                     ; preds = %cond.end
  %4 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %4, 1
  %5 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %5
  br i1 %cmp6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.false.4
  %6 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %6, 1
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.false.4
  %7 = load i32, i32* %y.addr, align 4
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.7
  %cond11 = phi i32 [ %sub8, %cond.true.7 ], [ %7, %cond.false.9 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end.10, %cond.true.3
  %cond13 = phi i32 [ 0, %cond.true.3 ], [ %cond11, %cond.end.10 ]
  %8 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %8
  %idxprom = sext i32 %mul to i64
  %9 = load i16*, i16** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  store i16* %arrayidx, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.12
  %11 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %11, 16
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.then
  br label %cond.end.19

cond.false.17:                                    ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4
  %add18 = add nsw i32 %12, 16
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i32 [ 0, %cond.true.16 ], [ %add18, %cond.false.17 ]
  store i32 %cond20, i32* %maxx, align 4
  %13 = load i32, i32* %x.addr, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.19
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %14, %15
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i16*, i16** %Picy, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx22, align 2
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %x.addr, align 4
  %sub23 = sub nsw i32 %18, %19
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i32 0, i64 %idxprom24
  store i16 %17, i16* %arrayidx25, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %x.addr, align 4
  %add26 = add nsw i32 %21, 16
  store i32 %add26, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.35, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %maxx, align 4
  %cmp28 = icmp slt i32 %22, %23
  br i1 %cmp28, label %for.body.29, label %for.end.37

for.body.29:                                      ; preds = %for.cond.27
  %24 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load i16*, i16** %Picy, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %25, i64 %idxprom30
  %26 = load i16, i16* %arrayidx31, align 2
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %x.addr, align 4
  %sub32 = sub nsw i32 %27, %28
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i32 0, i64 %idxprom33
  store i16 %26, i16* %arrayidx34, align 2
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.29
  %29 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.27

for.end.37:                                       ; preds = %for.cond.27
  br label %if.end.73

if.else:                                          ; preds = %cond.end.12
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* %width.addr, align 4
  %sub38 = sub nsw i32 %31, 16
  %cmp39 = icmp sgt i32 %30, %sub38
  br i1 %cmp39, label %if.then.40, label %if.else.70

if.then.40:                                       ; preds = %if.else
  %32 = load i32, i32* %width.addr, align 4
  store i32 %32, i32* %maxx, align 4
  %33 = load i32, i32* %x.addr, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.49, %if.then.40
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %maxx, align 4
  %cmp42 = icmp slt i32 %34, %35
  br i1 %cmp42, label %for.body.43, label %for.end.51

for.body.43:                                      ; preds = %for.cond.41
  %36 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %36 to i64
  %37 = load i16*, i16** %Picy, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %37, i64 %idxprom44
  %38 = load i16, i16* %arrayidx45, align 2
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %x.addr, align 4
  %sub46 = sub nsw i32 %39, %40
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i32 0, i64 %idxprom47
  store i16 %38, i16* %arrayidx48, align 2
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.43
  %41 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.41

for.end.51:                                       ; preds = %for.cond.41
  %42 = load i32, i32* %x.addr, align 4
  %add52 = add nsw i32 %42, 16
  store i32 %add52, i32* %maxx, align 4
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %x.addr, align 4
  %cmp53 = icmp sgt i32 %43, %44
  br i1 %cmp53, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %for.end.51
  %45 = load i32, i32* %width.addr, align 4
  br label %cond.end.56

cond.false.55:                                    ; preds = %for.end.51
  %46 = load i32, i32* %x.addr, align 4
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi i32 [ %45, %cond.true.54 ], [ %46, %cond.false.55 ]
  store i32 %cond57, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.67, %cond.end.56
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %maxx, align 4
  %cmp59 = icmp slt i32 %47, %48
  br i1 %cmp59, label %for.body.60, label %for.end.69

for.body.60:                                      ; preds = %for.cond.58
  %49 = load i32, i32* %width.addr, align 4
  %sub61 = sub nsw i32 %49, 1
  %idxprom62 = sext i32 %sub61 to i64
  %50 = load i16*, i16** %Picy, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %50, i64 %idxprom62
  %51 = load i16, i16* %arrayidx63, align 2
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %x.addr, align 4
  %sub64 = sub nsw i32 %52, %53
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i32 0, i64 %idxprom65
  store i16 %51, i16* %arrayidx66, align 2
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.60
  %54 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %54, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.58

for.end.69:                                       ; preds = %for.cond.58
  br label %if.end

if.else.70:                                       ; preds = %if.else
  %55 = load i32, i32* %x.addr, align 4
  %idxprom71 = sext i32 %55 to i64
  %56 = load i16*, i16** %Picy, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %56, i64 %idxprom71
  store i16* %arrayidx72, i16** %retval
  br label %return

if.end:                                           ; preds = %for.end.69
  br label %if.end.73

if.end.73:                                        ; preds = %if.end, %for.end.37
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i32 0, i32 0), i16** %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.else.70
  %57 = load i16*, i16** %retval
  ret i16* %57
}

; Function Attrs: nounwind uwtable
define i16* @FastLineX(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %dummy.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  store i32 %dummy, i32* %dummy.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  %3 = load i32, i32* %x.addr, align 4
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext1
  ret i16* %add.ptr2
}

; Function Attrs: nounwind uwtable
define i16* @UMVLineX(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %retval = alloca i16*, align 8
  %size.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %maxx = alloca i32, align 4
  %Picy = alloca i16*, align 8
  store i32 %size, i32* %size.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  br label %cond.end.12

cond.false.4:                                     ; preds = %cond.end
  %5 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %6
  br i1 %cmp6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.false.4
  %7 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.false.4
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.7
  %cond11 = phi i32 [ %sub8, %cond.true.7 ], [ %8, %cond.false.9 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end.10, %cond.true.3
  %cond13 = phi i32 [ 0, %cond.true.3 ], [ %cond11, %cond.end.10 ]
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  store i16* %add.ptr, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.12
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %11, %12
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.then
  br label %cond.end.19

cond.false.17:                                    ; preds = %if.then
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %size.addr, align 4
  %add18 = add nsw i32 %13, %14
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i32 [ 0, %cond.true.16 ], [ %add18, %cond.false.17 ]
  store i32 %cond20, i32* %maxx, align 4
  %15 = load i32, i32* %x.addr, align 4
  store i32 %15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.19
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %16, %17
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i16*, i16** %Picy, align 8
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx, align 2
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %x.addr, align 4
  %sub22 = sub nsw i32 %20, %21
  %idxprom = sext i32 %sub22 to i64
  %arrayidx23 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i32 0, i64 %idxprom
  store i16 %19, i16* %arrayidx23, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %size.addr, align 4
  %add24 = add nsw i32 %23, %24
  store i32 %add24, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.33, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %maxx, align 4
  %cmp26 = icmp slt i32 %25, %26
  br i1 %cmp26, label %for.body.27, label %for.end.35

for.body.27:                                      ; preds = %for.cond.25
  %27 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load i16*, i16** %Picy, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %28, i64 %idxprom28
  %29 = load i16, i16* %arrayidx29, align 2
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %x.addr, align 4
  %sub30 = sub nsw i32 %30, %31
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i32 0, i64 %idxprom31
  store i16 %29, i16* %arrayidx32, align 2
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.27
  %32 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  br label %if.end.71

if.else:                                          ; preds = %cond.end.12
  %33 = load i32, i32* %x.addr, align 4
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %size.addr, align 4
  %sub36 = sub nsw i32 %34, %35
  %cmp37 = icmp sgt i32 %33, %sub36
  br i1 %cmp37, label %if.then.38, label %if.else.68

if.then.38:                                       ; preds = %if.else
  %36 = load i32, i32* %width.addr, align 4
  store i32 %36, i32* %maxx, align 4
  %37 = load i32, i32* %x.addr, align 4
  store i32 %37, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.47, %if.then.38
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %maxx, align 4
  %cmp40 = icmp slt i32 %38, %39
  br i1 %cmp40, label %for.body.41, label %for.end.49

for.body.41:                                      ; preds = %for.cond.39
  %40 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %40 to i64
  %41 = load i16*, i16** %Picy, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %41, i64 %idxprom42
  %42 = load i16, i16* %arrayidx43, align 2
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %x.addr, align 4
  %sub44 = sub nsw i32 %43, %44
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i32 0, i64 %idxprom45
  store i16 %42, i16* %arrayidx46, align 2
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.41
  %45 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.39

for.end.49:                                       ; preds = %for.cond.39
  %46 = load i32, i32* %x.addr, align 4
  %47 = load i32, i32* %size.addr, align 4
  %add50 = add nsw i32 %46, %47
  store i32 %add50, i32* %maxx, align 4
  %48 = load i32, i32* %width.addr, align 4
  %49 = load i32, i32* %x.addr, align 4
  %cmp51 = icmp sgt i32 %48, %49
  br i1 %cmp51, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %for.end.49
  %50 = load i32, i32* %width.addr, align 4
  br label %cond.end.54

cond.false.53:                                    ; preds = %for.end.49
  %51 = load i32, i32* %x.addr, align 4
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.52
  %cond55 = phi i32 [ %50, %cond.true.52 ], [ %51, %cond.false.53 ]
  store i32 %cond55, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.65, %cond.end.54
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %maxx, align 4
  %cmp57 = icmp slt i32 %52, %53
  br i1 %cmp57, label %for.body.58, label %for.end.67

for.body.58:                                      ; preds = %for.cond.56
  %54 = load i32, i32* %width.addr, align 4
  %sub59 = sub nsw i32 %54, 1
  %idxprom60 = sext i32 %sub59 to i64
  %55 = load i16*, i16** %Picy, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %55, i64 %idxprom60
  %56 = load i16, i16* %arrayidx61, align 2
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %x.addr, align 4
  %sub62 = sub nsw i32 %57, %58
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i32 0, i64 %idxprom63
  store i16 %56, i16* %arrayidx64, align 2
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.58
  %59 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %59, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.56

for.end.67:                                       ; preds = %for.cond.56
  br label %if.end

if.else.68:                                       ; preds = %if.else
  %60 = load i16*, i16** %Picy, align 8
  %61 = load i32, i32* %x.addr, align 4
  %idx.ext69 = sext i32 %61 to i64
  %add.ptr70 = getelementptr inbounds i16, i16* %60, i64 %idx.ext69
  store i16* %add.ptr70, i16** %retval
  br label %return

if.end:                                           ; preds = %for.end.67
  br label %if.end.71

if.end.71:                                        ; preds = %if.end, %for.end.35
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i32 0, i32 0), i16** %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.else.68
  %62 = load i16*, i16** %retval
  ret i16* %62
}

; Function Attrs: nounwind uwtable
define zeroext i16 @UMVPelY_14(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %retval = alloca i16, align 2
  %Pic.addr = alloca i16**, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %width4 = alloca i32, align 4
  %height4 = alloca i32, align 4
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %0, 8
  %sub = sub nsw i32 %add, 1
  %shl = shl i32 %sub, 2
  store i32 %shl, i32* %width4, align 4
  %1 = load i32, i32* %height.addr, align 4
  %add1 = add nsw i32 %1, 8
  %sub2 = sub nsw i32 %add1, 1
  %shl3 = shl i32 %sub2, 2
  store i32 %shl3, i32* %height4, align 4
  %2 = load i32, i32* %x.addr, align 4
  %add4 = add nsw i32 %2, 16
  store i32 %add4, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %add5 = add nsw i32 %3, 16
  store i32 %add5, i32* %y.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %6 = load i32, i32* %x.addr, align 4
  %and = and i32 %6, 3
  %idxprom = sext i32 %and to i64
  %7 = load i32, i32* %y.addr, align 4
  %and8 = and i32 %7, 3
  %idxprom9 = sext i32 %and8 to i64
  %8 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %8, i64 %idxprom9
  %9 = load i16*, i16** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx10, align 2
  store i16 %10, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %height4, align 4
  %cmp11 = icmp sgt i32 %11, %12
  br i1 %cmp11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end
  %13 = load i32, i32* %x.addr, align 4
  %and13 = and i32 %13, 3
  %idxprom14 = sext i32 %and13 to i64
  %14 = load i32, i32* %height4, align 4
  %15 = load i32, i32* %y.addr, align 4
  %and15 = and i32 %15, 3
  %add16 = add nsw i32 %14, %and15
  %idxprom17 = sext i32 %add16 to i64
  %16 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx18 = getelementptr inbounds i16*, i16** %16, i64 %idxprom17
  %17 = load i16*, i16** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %17, i64 %idxprom14
  %18 = load i16, i16* %arrayidx19, align 2
  store i16 %18, i16* %retval
  br label %return

if.end.20:                                        ; preds = %if.end
  %19 = load i32, i32* %x.addr, align 4
  %and21 = and i32 %19, 3
  %idxprom22 = sext i32 %and21 to i64
  %20 = load i32, i32* %y.addr, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx24 = getelementptr inbounds i16*, i16** %21, i64 %idxprom23
  %22 = load i16*, i16** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %22, i64 %idxprom22
  %23 = load i16, i16* %arrayidx25, align 2
  store i16 %23, i16* %retval
  br label %return

if.end.26:                                        ; preds = %entry
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %width4, align 4
  %cmp27 = icmp sgt i32 %24, %25
  br i1 %cmp27, label %if.then.28, label %if.end.56

if.then.28:                                       ; preds = %if.end.26
  %26 = load i32, i32* %y.addr, align 4
  %cmp29 = icmp slt i32 %26, 0
  br i1 %cmp29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.then.28
  %27 = load i32, i32* %width4, align 4
  %28 = load i32, i32* %x.addr, align 4
  %and31 = and i32 %28, 3
  %add32 = add nsw i32 %27, %and31
  %idxprom33 = sext i32 %add32 to i64
  %29 = load i32, i32* %y.addr, align 4
  %and34 = and i32 %29, 3
  %idxprom35 = sext i32 %and34 to i64
  %30 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx36 = getelementptr inbounds i16*, i16** %30, i64 %idxprom35
  %31 = load i16*, i16** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %31, i64 %idxprom33
  %32 = load i16, i16* %arrayidx37, align 2
  store i16 %32, i16* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.28
  %33 = load i32, i32* %y.addr, align 4
  %34 = load i32, i32* %height4, align 4
  %cmp39 = icmp sgt i32 %33, %34
  br i1 %cmp39, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %if.end.38
  %35 = load i32, i32* %width4, align 4
  %36 = load i32, i32* %x.addr, align 4
  %and41 = and i32 %36, 3
  %add42 = add nsw i32 %35, %and41
  %idxprom43 = sext i32 %add42 to i64
  %37 = load i32, i32* %height4, align 4
  %38 = load i32, i32* %y.addr, align 4
  %and44 = and i32 %38, 3
  %add45 = add nsw i32 %37, %and44
  %idxprom46 = sext i32 %add45 to i64
  %39 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx47 = getelementptr inbounds i16*, i16** %39, i64 %idxprom46
  %40 = load i16*, i16** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %40, i64 %idxprom43
  %41 = load i16, i16* %arrayidx48, align 2
  store i16 %41, i16* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.38
  %42 = load i32, i32* %width4, align 4
  %43 = load i32, i32* %x.addr, align 4
  %and50 = and i32 %43, 3
  %add51 = add nsw i32 %42, %and50
  %idxprom52 = sext i32 %add51 to i64
  %44 = load i32, i32* %y.addr, align 4
  %idxprom53 = sext i32 %44 to i64
  %45 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx54 = getelementptr inbounds i16*, i16** %45, i64 %idxprom53
  %46 = load i16*, i16** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %46, i64 %idxprom52
  %47 = load i16, i16* %arrayidx55, align 2
  store i16 %47, i16* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.26
  %48 = load i32, i32* %y.addr, align 4
  %cmp57 = icmp slt i32 %48, 0
  br i1 %cmp57, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.end.56
  %49 = load i32, i32* %x.addr, align 4
  %idxprom59 = sext i32 %49 to i64
  %50 = load i32, i32* %y.addr, align 4
  %and60 = and i32 %50, 3
  %idxprom61 = sext i32 %and60 to i64
  %51 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx62 = getelementptr inbounds i16*, i16** %51, i64 %idxprom61
  %52 = load i16*, i16** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %52, i64 %idxprom59
  %53 = load i16, i16* %arrayidx63, align 2
  store i16 %53, i16* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.56
  %54 = load i32, i32* %y.addr, align 4
  %55 = load i32, i32* %height4, align 4
  %cmp65 = icmp sgt i32 %54, %55
  br i1 %cmp65, label %if.then.66, label %if.end.73

if.then.66:                                       ; preds = %if.end.64
  %56 = load i32, i32* %x.addr, align 4
  %idxprom67 = sext i32 %56 to i64
  %57 = load i32, i32* %height4, align 4
  %58 = load i32, i32* %y.addr, align 4
  %and68 = and i32 %58, 3
  %add69 = add nsw i32 %57, %and68
  %idxprom70 = sext i32 %add69 to i64
  %59 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx71 = getelementptr inbounds i16*, i16** %59, i64 %idxprom70
  %60 = load i16*, i16** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %60, i64 %idxprom67
  %61 = load i16, i16* %arrayidx72, align 2
  store i16 %61, i16* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.64
  %62 = load i32, i32* %x.addr, align 4
  %idxprom74 = sext i32 %62 to i64
  %63 = load i32, i32* %y.addr, align 4
  %idxprom75 = sext i32 %63 to i64
  %64 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx76 = getelementptr inbounds i16*, i16** %64, i64 %idxprom75
  %65 = load i16*, i16** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %65, i64 %idxprom74
  %66 = load i16, i16* %arrayidx77, align 2
  store i16 %66, i16* %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.then.66, %if.then.58, %if.end.49, %if.then.40, %if.then.30, %if.end.20, %if.then.12, %if.then.7
  %67 = load i16, i16* %retval
  ret i16 %67
}

; Function Attrs: nounwind uwtable
define zeroext i16 @FastPelY_14(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %Pic.addr = alloca i16**, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 16, %0
  %idxprom = sext i32 %add to i64
  %1 = load i32, i32* %y.addr, align 4
  %add1 = add nsw i32 16, %1
  %idxprom2 = sext i32 %add1 to i64
  %2 = load i16**, i16*** %Pic.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %2, i64 %idxprom2
  %3 = load i16*, i16** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx3, align 2
  ret i16 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
