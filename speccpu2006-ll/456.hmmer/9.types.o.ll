; ModuleID = 'types.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@squid_errno = external global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0X\00", align 1

; Function Attrs: nounwind uwtable
define i32 @IsInt(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %hex = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %hex, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6, i32* @squid_errno, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #3
  %3 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and = and i32 %conv1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 43
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %lor.lhs.false, %while.end
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr9, i8** %s.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %lor.lhs.false
  %11 = load i8*, i8** %s.addr, align 8
  %call11 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2) #4
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false.18

land.lhs.true:                                    ; preds = %if.end.10
  %12 = load i8*, i8** %s.addr, align 8
  %call14 = call i64 @strlen(i8* %12) #4
  %conv15 = trunc i64 %call14 to i32
  %cmp16 = icmp sgt i32 %conv15, 2
  br i1 %cmp16, label %if.then.27, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %land.lhs.true, %if.end.10
  %13 = load i8*, i8** %s.addr, align 8
  %call19 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 2) #4
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %lor.lhs.false.18
  %14 = load i8*, i8** %s.addr, align 8
  %call23 = call i64 @strlen(i8* %14) #4
  %conv24 = trunc i64 %call23 to i32
  %cmp25 = icmp sgt i32 %conv24, 2
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true.22, %land.lhs.true
  %15 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr, i8** %s.addr, align 8
  store i32 1, i32* %hex, align 4
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true.22, %lor.lhs.false.18
  %16 = load i8*, i8** %s.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv28 = sext i8 %17 to i32
  %cmp29 = icmp eq i32 %conv28, 48
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.38

land.lhs.true.31:                                 ; preds = %if.else
  %18 = load i8*, i8** %s.addr, align 8
  %call32 = call i64 @strlen(i8* %18) #4
  %conv33 = trunc i64 %call32 to i32
  %cmp34 = icmp sgt i32 %conv33, 1
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %land.lhs.true.31
  %19 = load i8*, i8** %s.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr37, i8** %s.addr, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %land.lhs.true.31, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %20 = load i32, i32* %hex, align 4
  %tobool40 = icmp ne i32 %20, 0
  br i1 %tobool40, label %if.else.58, label %if.then.41

if.then.41:                                       ; preds = %if.end.39
  br label %while.cond.42

while.cond.42:                                    ; preds = %if.end.55, %if.then.41
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv43 = sext i8 %22 to i32
  %cmp44 = icmp ne i32 %conv43, 0
  br i1 %cmp44, label %while.body.46, label %while.end.57

while.body.46:                                    ; preds = %while.cond.42
  %23 = load i8*, i8** %s.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv47 = sext i8 %24 to i32
  %idxprom48 = sext i32 %conv47 to i64
  %call49 = call i16** @__ctype_b_loc() #3
  %25 = load i16*, i16** %call49, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %25, i64 %idxprom48
  %26 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %26 to i32
  %and52 = and i32 %conv51, 2048
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %while.body.46
  store i32 0, i32* %retval
  br label %return

if.end.55:                                        ; preds = %while.body.46
  %27 = load i8*, i8** %s.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr56, i8** %s.addr, align 8
  br label %while.cond.42

while.end.57:                                     ; preds = %while.cond.42
  br label %if.end.75

if.else.58:                                       ; preds = %if.end.39
  br label %while.cond.59

while.cond.59:                                    ; preds = %if.end.72, %if.else.58
  %28 = load i8*, i8** %s.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv60 = sext i8 %29 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %while.body.63, label %while.end.74

while.body.63:                                    ; preds = %while.cond.59
  %30 = load i8*, i8** %s.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv64 = sext i8 %31 to i32
  %idxprom65 = sext i32 %conv64 to i64
  %call66 = call i16** @__ctype_b_loc() #3
  %32 = load i16*, i16** %call66, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %32, i64 %idxprom65
  %33 = load i16, i16* %arrayidx67, align 2
  %conv68 = zext i16 %33 to i32
  %and69 = and i32 %conv68, 4096
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %while.body.63
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %while.body.63
  %34 = load i8*, i8** %s.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr73, i8** %s.addr, align 8
  br label %while.cond.59

while.end.74:                                     ; preds = %while.cond.59
  br label %if.end.75

if.end.75:                                        ; preds = %while.end.74, %while.end.57
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then.71, %if.then.54, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @IsReal(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %gotdecimal = alloca i32, align 4
  %gotexp = alloca i32, align 4
  %gotreal = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %gotdecimal, align 4
  store i32 0, i32* %gotexp, align 4
  store i32 0, i32* %gotreal, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #3
  %3 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and = and i32 %conv1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 43
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %lor.lhs.false, %while.end
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr9, i8** %s.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %lor.lhs.false
  br label %while.cond.11

while.cond.11:                                    ; preds = %if.end.62, %if.end.10
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  br i1 %cmp13, label %while.body.15, label %while.end.64

while.body.15:                                    ; preds = %while.cond.11
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv16 = sext i8 %14 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %call18 = call i16** @__ctype_b_loc() #3
  %15 = load i16*, i16** %call18, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %15, i64 %idxprom17
  %16 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %16 to i32
  %and21 = and i32 %conv20, 2048
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %while.body.15
  %17 = load i32, i32* %gotreal, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %gotreal, align 4
  br label %if.end.62

if.else:                                          ; preds = %while.body.15
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv24 = sext i8 %19 to i32
  %cmp25 = icmp eq i32 %conv24, 46
  br i1 %cmp25, label %if.then.27, label %if.else.36

if.then.27:                                       ; preds = %if.else
  %20 = load i32, i32* %gotdecimal, align 4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.27
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.27
  %21 = load i32, i32* %gotexp, align 4
  %tobool31 = icmp ne i32 %21, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.end.30
  store i32 0, i32* %retval
  br label %return

if.else.33:                                       ; preds = %if.end.30
  %22 = load i32, i32* %gotdecimal, align 4
  %inc34 = add nsw i32 %22, 1
  store i32 %inc34, i32* %gotdecimal, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33
  br label %if.end.61

if.else.36:                                       ; preds = %if.else
  %23 = load i8*, i8** %s.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv37 = sext i8 %24 to i32
  %cmp38 = icmp eq i32 %conv37, 101
  br i1 %cmp38, label %if.then.44, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.else.36
  %25 = load i8*, i8** %s.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv41 = sext i8 %26 to i32
  %cmp42 = icmp eq i32 %conv41, 69
  br i1 %cmp42, label %if.then.44, label %if.else.50

if.then.44:                                       ; preds = %lor.lhs.false.40, %if.else.36
  %27 = load i32, i32* %gotexp, align 4
  %tobool45 = icmp ne i32 %27, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.then.44
  store i32 0, i32* %retval
  br label %return

if.else.47:                                       ; preds = %if.then.44
  %28 = load i32, i32* %gotexp, align 4
  %inc48 = add nsw i32 %28, 1
  store i32 %inc48, i32* %gotexp, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47
  br label %if.end.60

if.else.50:                                       ; preds = %lor.lhs.false.40
  %29 = load i8*, i8** %s.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv51 = sext i8 %30 to i32
  %idxprom52 = sext i32 %conv51 to i64
  %call53 = call i16** @__ctype_b_loc() #3
  %31 = load i16*, i16** %call53, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %31, i64 %idxprom52
  %32 = load i16, i16* %arrayidx54, align 2
  %conv55 = zext i16 %32 to i32
  %and56 = and i32 %conv55, 8192
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else.50
  br label %while.end.64

if.end.59:                                        ; preds = %if.else.50
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.49
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.35
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.23
  %33 = load i8*, i8** %s.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr63, i8** %s.addr, align 8
  br label %while.cond.11

while.end.64:                                     ; preds = %if.then.58, %while.cond.11
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.73, %while.end.64
  %34 = load i8*, i8** %s.addr, align 8
  %35 = load i8, i8* %34, align 1
  %conv66 = sext i8 %35 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %call68 = call i16** @__ctype_b_loc() #3
  %36 = load i16*, i16** %call68, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %36, i64 %idxprom67
  %37 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %37 to i32
  %and71 = and i32 %conv70, 8192
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %while.body.73, label %while.end.75

while.body.73:                                    ; preds = %while.cond.65
  %38 = load i8*, i8** %s.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr74, i8** %s.addr, align 8
  br label %while.cond.65

while.end.75:                                     ; preds = %while.cond.65
  %39 = load i8*, i8** %s.addr, align 8
  %40 = load i8, i8* %39, align 1
  %conv76 = sext i8 %40 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %land.lhs.true, label %if.else.81

land.lhs.true:                                    ; preds = %while.end.75
  %41 = load i32, i32* %gotreal, align 4
  %tobool79 = icmp ne i32 %41, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else.81:                                       ; preds = %land.lhs.true, %while.end.75
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.81, %if.then.80, %if.then.46, %if.then.32, %if.then.29, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define void @Byteswap(i8* %swap, i32 %nbytes) #0 {
entry:
  %swap.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %byte = alloca i8, align 1
  store i8* %swap, i8** %swap.addr, align 8
  store i32 %nbytes, i32* %nbytes.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %nbytes.addr, align 4
  %div = sdiv i32 %1, 2
  %cmp = icmp slt i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %nbytes.addr, align 4
  %3 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %2, %3
  %sub1 = sub nsw i32 %sub, 1
  %idxprom = sext i32 %sub1 to i64
  %4 = load i8*, i8** %swap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  store i8 %5, i8* %byte, align 1
  %6 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i8*, i8** %swap.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %9 = load i32, i32* %nbytes.addr, align 4
  %10 = load i32, i32* %x, align 4
  %sub4 = sub nsw i32 %9, %10
  %sub5 = sub nsw i32 %sub4, 1
  %idxprom6 = sext i32 %sub5 to i64
  %11 = load i8*, i8** %swap.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom6
  store i8 %8, i8* %arrayidx7, align 1
  %12 = load i8, i8* %byte, align 1
  %13 = load i32, i32* %x, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i8*, i8** %swap.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 %idxprom8
  store i8 %12, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %x, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i16 @sre_ntoh16(i16 zeroext %netshort) #0 {
entry:
  %netshort.addr = alloca i16, align 2
  store i16 %netshort, i16* %netshort.addr, align 2
  %0 = load i16, i16* %netshort.addr, align 2
  ret i16 %0
}

; Function Attrs: nounwind uwtable
define i32 @sre_ntoh32(i32 %netlong) #0 {
entry:
  %netlong.addr = alloca i32, align 4
  store i32 %netlong, i32* %netlong.addr, align 4
  %0 = load i32, i32* %netlong.addr, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define zeroext i16 @sre_hton16(i16 zeroext %hostshort) #0 {
entry:
  %hostshort.addr = alloca i16, align 2
  store i16 %hostshort, i16* %hostshort.addr, align 2
  %0 = load i16, i16* %hostshort.addr, align 2
  ret i16 %0
}

; Function Attrs: nounwind uwtable
define i32 @sre_hton32(i32 %hostlong) #0 {
entry:
  %hostlong.addr = alloca i32, align 4
  store i32 %hostlong, i32* %hostlong.addr, align 4
  %0 = load i32, i32* %hostlong.addr, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i64 @sre_ntoh64(i64 %net_int64) #0 {
entry:
  %net_int64.addr = alloca i64, align 8
  store i64 %net_int64, i64* %net_int64.addr, align 8
  %0 = load i64, i64* %net_int64.addr, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define i64 @sre_hton64(i64 %host_int64) #0 {
entry:
  %host_int64.addr = alloca i64, align 8
  store i64 %host_int64, i64* %host_int64.addr, align 8
  %0 = load i64, i64* %host_int64.addr, align 8
  ret i64 %0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
