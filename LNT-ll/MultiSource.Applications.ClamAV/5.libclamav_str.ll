; ModuleID = './MultiSource.Applications.ClamAV/5.libclamav_str.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"cli_hex2si(): Malformed hexstring: %s (length: %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"cli_hex2str(): Malformed hexstring: %s (length: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"cli_hex2num(): Malformed hexstring: %s (length: %d)\0A\00", align 1
@cli_str2hex.HEX = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@.str.3 = private unnamed_addr constant [30 x i8] c"cli_utf16toascii: length < 2\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cli_strrcpy: NULL argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"hex2int() translation problem (%d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i16* @cli_hex2ui(i8* %hex) #0 {
entry:
  %retval = alloca i16*, align 8
  %hex.addr = alloca i8*, align 8
  %str = alloca i16*, align 8
  %ptr = alloca i16*, align 8
  %val = alloca i16, align 2
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %hex, i8** %hex.addr, align 8
  %0 = load i8*, i8** %hex.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %rem = urem i32 %1, 2
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %hex.addr, align 8
  %3 = load i32, i32* %len, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0), i8* %2, i32 %3)
  store i16* null, i16** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %len, align 4
  %div = udiv i32 %4, 2
  %add = add i32 %div, 1
  %conv2 = zext i32 %add to i64
  %call3 = call i8* @cli_calloc(i64 %conv2, i64 2)
  %5 = bitcast i8* %call3 to i16*
  store i16* %5, i16** %str, align 8
  %6 = load i16*, i16** %str, align 8
  %tobool = icmp ne i16* %6, null
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i16* null, i16** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load i16*, i16** %str, align 8
  store i16* %7, i16** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len, align 4
  %cmp6 = icmp ult i32 %8, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %val, align 2
  %10 = load i32, i32* %i, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i8*, i8** %hex.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 63
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %add11 = add i32 %13, 1
  %idxprom12 = zext i32 %add11 to i64
  %14 = load i8*, i8** %hex.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom12
  %15 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 63
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true
  %16 = load i16, i16* %val, align 2
  %conv18 = zext i16 %16 to i32
  %or = or i32 %conv18, 256
  %conv19 = trunc i32 %or to i16
  store i16 %conv19, i16* %val, align 2
  br label %if.end.99

if.else:                                          ; preds = %land.lhs.true, %for.body
  %17 = load i32, i32* %i, align 4
  %add20 = add i32 %17, 1
  %idxprom21 = zext i32 %add20 to i64
  %18 = load i8*, i8** %hex.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %18, i64 %idxprom21
  %19 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %19 to i32
  %cmp24 = icmp eq i32 %conv23, 63
  br i1 %cmp24, label %if.then.26, label %if.else.40

if.then.26:                                       ; preds = %if.else
  %20 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %20 to i64
  %21 = load i8*, i8** %hex.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 %idxprom27
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %22 to i32
  %call30 = call i32 @cli_hex2int(i32 %conv29)
  store i32 %call30, i32* %c, align 4
  %cmp31 = icmp sge i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.then.26
  %23 = load i32, i32* %c, align 4
  %shl = shl i32 %23, 4
  %conv34 = trunc i32 %shl to i16
  store i16 %conv34, i16* %val, align 2
  br label %if.end.36

if.else.35:                                       ; preds = %if.then.26
  %24 = load i16*, i16** %str, align 8
  %25 = bitcast i16* %24 to i8*
  call void @free(i8* %25) #4
  store i16* null, i16** %retval
  br label %return

if.end.36:                                        ; preds = %if.then.33
  %26 = load i16, i16* %val, align 2
  %conv37 = zext i16 %26 to i32
  %or38 = or i32 %conv37, 768
  %conv39 = trunc i32 %or38 to i16
  store i16 %conv39, i16* %val, align 2
  br label %if.end.98

if.else.40:                                       ; preds = %if.else
  %27 = load i32, i32* %i, align 4
  %idxprom41 = zext i32 %27 to i64
  %28 = load i8*, i8** %hex.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %28, i64 %idxprom41
  %29 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %29 to i32
  %cmp44 = icmp eq i32 %conv43, 63
  br i1 %cmp44, label %if.then.46, label %if.else.61

if.then.46:                                       ; preds = %if.else.40
  %30 = load i32, i32* %i, align 4
  %add47 = add i32 %30, 1
  %idxprom48 = zext i32 %add47 to i64
  %31 = load i8*, i8** %hex.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %31, i64 %idxprom48
  %32 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %32 to i32
  %call51 = call i32 @cli_hex2int(i32 %conv50)
  store i32 %call51, i32* %c, align 4
  %cmp52 = icmp sge i32 %call51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %if.then.46
  %33 = load i32, i32* %c, align 4
  %conv55 = trunc i32 %33 to i16
  store i16 %conv55, i16* %val, align 2
  br label %if.end.57

if.else.56:                                       ; preds = %if.then.46
  %34 = load i16*, i16** %str, align 8
  %35 = bitcast i16* %34 to i8*
  call void @free(i8* %35) #4
  store i16* null, i16** %retval
  br label %return

if.end.57:                                        ; preds = %if.then.54
  %36 = load i16, i16* %val, align 2
  %conv58 = zext i16 %36 to i32
  %or59 = or i32 %conv58, 1024
  %conv60 = trunc i32 %or59 to i16
  store i16 %conv60, i16* %val, align 2
  br label %if.end.97

if.else.61:                                       ; preds = %if.else.40
  %37 = load i32, i32* %i, align 4
  %idxprom62 = zext i32 %37 to i64
  %38 = load i8*, i8** %hex.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %38, i64 %idxprom62
  %39 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %39 to i32
  %cmp65 = icmp eq i32 %conv64, 40
  br i1 %cmp65, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %if.else.61
  %40 = load i16, i16* %val, align 2
  %conv68 = zext i16 %40 to i32
  %or69 = or i32 %conv68, 512
  %conv70 = trunc i32 %or69 to i16
  store i16 %conv70, i16* %val, align 2
  br label %if.end.96

if.else.71:                                       ; preds = %if.else.61
  %41 = load i32, i32* %i, align 4
  %idxprom72 = zext i32 %41 to i64
  %42 = load i8*, i8** %hex.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %42, i64 %idxprom72
  %43 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %43 to i32
  %call75 = call i32 @cli_hex2int(i32 %conv74)
  store i32 %call75, i32* %c, align 4
  %cmp76 = icmp sge i32 %call75, 0
  br i1 %cmp76, label %if.then.78, label %if.else.94

if.then.78:                                       ; preds = %if.else.71
  %44 = load i32, i32* %c, align 4
  %conv79 = trunc i32 %44 to i16
  store i16 %conv79, i16* %val, align 2
  %45 = load i32, i32* %i, align 4
  %add80 = add i32 %45, 1
  %idxprom81 = zext i32 %add80 to i64
  %46 = load i8*, i8** %hex.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %46, i64 %idxprom81
  %47 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %47 to i32
  %call84 = call i32 @cli_hex2int(i32 %conv83)
  store i32 %call84, i32* %c, align 4
  %cmp85 = icmp sge i32 %call84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.92

if.then.87:                                       ; preds = %if.then.78
  %48 = load i16, i16* %val, align 2
  %conv88 = zext i16 %48 to i32
  %shl89 = shl i32 %conv88, 4
  %49 = load i32, i32* %c, align 4
  %add90 = add nsw i32 %shl89, %49
  %conv91 = trunc i32 %add90 to i16
  store i16 %conv91, i16* %val, align 2
  br label %if.end.93

if.else.92:                                       ; preds = %if.then.78
  %50 = load i16*, i16** %str, align 8
  %51 = bitcast i16* %50 to i8*
  call void @free(i8* %51) #4
  store i16* null, i16** %retval
  br label %return

if.end.93:                                        ; preds = %if.then.87
  br label %if.end.95

if.else.94:                                       ; preds = %if.else.71
  %52 = load i16*, i16** %str, align 8
  %53 = bitcast i16* %52 to i8*
  call void @free(i8* %53) #4
  store i16* null, i16** %retval
  br label %return

if.end.95:                                        ; preds = %if.end.93
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.67
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.57
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.36
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.17
  %54 = load i16, i16* %val, align 2
  %55 = load i16*, i16** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %55, i32 1
  store i16* %incdec.ptr, i16** %ptr, align 8
  store i16 %54, i16* %55, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %56 = load i32, i32* %i, align 4
  %add100 = add i32 %56, 2
  store i32 %add100, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load i16*, i16** %str, align 8
  store i16* %57, i16** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.94, %if.else.92, %if.else.56, %if.else.35, %if.then.4, %if.then
  %58 = load i16*, i16** %retval
  ret i16* %58
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare void @cli_errmsg(i8*, ...) #2

declare i8* @cli_calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @cli_hex2int(i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %and = and i32 %0, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %1 to i64
  %call = call i16** @__ctype_b_loc() #7
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and1 = and i32 %conv, 2048
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %c.addr, align 4
  %sub = sub nsw i32 %4, 48
  store i32 %sub, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* %c.addr, align 4
  %call4 = call i32 @tolower(i32 %5) #4
  store i32 %call4, i32* %l, align 4
  %6 = load i32, i32* %l, align 4
  %cmp5 = icmp sge i32 %6, 97
  br i1 %cmp5, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.3
  %7 = load i32, i32* %l, align 4
  %cmp7 = icmp sle i32 %7, 102
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %l, align 4
  %add = add nsw i32 %8, 10
  %sub10 = sub nsw i32 %add, 97
  store i32 %sub10, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end.3
  %9 = load i32, i32* %l, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i32 %9)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.9, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @cli_hex2str(i8* %hex) #0 {
entry:
  %retval = alloca i8*, align 8
  %hex.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %val = alloca i8, align 1
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %hex, i8** %hex.addr, align 8
  %0 = load i8*, i8** %hex.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %rem = srem i32 %1, 2
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %hex.addr, align 8
  %3 = load i32, i32* %len, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0), i8* %2, i32 %3)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %len, align 4
  %div = sdiv i32 %4, 2
  %add = add nsw i32 %div, 1
  %conv2 = sext i32 %add to i64
  %call3 = call i8* @cli_calloc(i64 %conv2, i64 1)
  store i8* %call3, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i8*, i8** %str, align 8
  store i8* %6, i8** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %len, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %hex.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %11 to i32
  %call9 = call i32 @cli_hex2int(i32 %conv8)
  %conv10 = trunc i32 %call9 to i8
  store i8 %conv10, i8* %c, align 1
  %conv11 = sext i8 %conv10 to i32
  %cmp12 = icmp sge i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.else.30

if.then.14:                                       ; preds = %for.body
  %12 = load i8, i8* %c, align 1
  store i8 %12, i8* %val, align 1
  %13 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %13, 1
  %idxprom16 = sext i32 %add15 to i64
  %14 = load i8*, i8** %hex.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %15 to i32
  %call19 = call i32 @cli_hex2int(i32 %conv18)
  %conv20 = trunc i32 %call19 to i8
  store i8 %conv20, i8* %c, align 1
  %conv21 = sext i8 %conv20 to i32
  %cmp22 = icmp sge i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.14
  %16 = load i8, i8* %val, align 1
  %conv25 = sext i8 %16 to i32
  %shl = shl i32 %conv25, 4
  %17 = load i8, i8* %c, align 1
  %conv26 = sext i8 %17 to i32
  %add27 = add nsw i32 %shl, %conv26
  %conv28 = trunc i32 %add27 to i8
  store i8 %conv28, i8* %val, align 1
  br label %if.end.29

if.else:                                          ; preds = %if.then.14
  %18 = load i8*, i8** %str, align 8
  call void @free(i8* %18) #4
  store i8* null, i8** %retval
  br label %return

if.end.29:                                        ; preds = %if.then.24
  br label %if.end.31

if.else.30:                                       ; preds = %for.body
  %19 = load i8*, i8** %str, align 8
  call void @free(i8* %19) #4
  store i8* null, i8** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.29
  %20 = load i8, i8* %val, align 1
  %21 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %20, i8* %21, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %22 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %22, 2
  store i32 %add32, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8*, i8** %str, align 8
  store i8* %23, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.30, %if.else, %if.then.4, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define i32 @cli_hex2num(i8* %hex) #0 {
entry:
  %retval = alloca i32, align 4
  %hex.addr = alloca i8*, align 8
  %hexval = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %hex, i8** %hex.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %hex.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %rem = srem i32 %1, 2
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %hex.addr, align 8
  %3 = load i32, i32* %len, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i8* %2, i32 %3)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %len, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %hex.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %8 to i32
  %call5 = call i32 @cli_hex2int(i32 %conv4)
  store i32 %call5, i32* %hexval, align 4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  %9 = load i32, i32* %ret, align 4
  %shl = shl i32 %9, 4
  %10 = load i32, i32* %hexval, align 4
  %or = or i32 %shl, %10
  store i32 %or, i32* %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i8* @cli_str2hex(i8* %string, i32 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hexstr = alloca i8*, align 8
  %HEX = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = bitcast [16 x i8]* %HEX to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cli_str2hex.HEX, i32 0, i32 0), i64 16, i32 16, i1 false)
  %1 = load i32, i32* %len.addr, align 4
  %mul = mul i32 2, %1
  %add = add i32 %mul, 1
  %conv = zext i32 %add to i64
  %call = call i8* @cli_calloc(i64 %conv, i64 1)
  store i8* %call, i8** %hexstr, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %len.addr, align 4
  %cmp2 = icmp ult i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i8*, i8** %string.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %6 to i32
  %shr = ashr i32 %conv4, 4
  %and = and i32 %shr, 15
  %idxprom5 = sext i32 %and to i64
  %arrayidx6 = getelementptr inbounds [16 x i8], [16 x i8]* %HEX, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %8 = load i32, i32* %j, align 4
  %idxprom7 = zext i32 %8 to i64
  %9 = load i8*, i8** %hexstr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 %idxprom7
  store i8 %7, i8* %arrayidx8, align 1
  %10 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %10 to i64
  %11 = load i8*, i8** %string.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %12 to i32
  %and12 = and i32 %conv11, 15
  %idxprom13 = sext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [16 x i8], [16 x i8]* %HEX, i32 0, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %14 = load i32, i32* %j, align 4
  %add15 = add i32 %14, 1
  %idxprom16 = zext i32 %add15 to i64
  %15 = load i8*, i8** %hexstr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %idxprom16
  store i8 %13, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  %add18 = add i32 %17, 2
  store i32 %add18, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %hexstr, align 8
  store i8* %18, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load i8*, i8** %retval
  ret i8* %19
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i8* @cli_utf16toascii(i8* %str, i32 %length) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %decoded = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %length.addr, align 4
  %rem = urem i32 %1, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load i32, i32* %length.addr, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %length.addr, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %3 = load i32, i32* %length.addr, align 4
  %div = udiv i32 %3, 2
  %add = add i32 %div, 1
  %conv = zext i32 %add to i64
  %call = call i8* @cli_calloc(i64 %conv, i64 1)
  store i8* %call, i8** %decoded, align 8
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %length.addr, align 4
  %cmp6 = icmp ult i32 %4, %5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %add8 = add i32 %6, 1
  %idxprom = zext i32 %add8 to i64
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %8 to i32
  %shl = shl i32 %conv9, 4
  %conv10 = trunc i32 %shl to i8
  %9 = load i32, i32* %j, align 4
  %idxprom11 = zext i32 %9 to i64
  %10 = load i8*, i8** %decoded, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1
  %11 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %11 to i64
  %12 = load i8*, i8** %str.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %13 to i32
  %14 = load i32, i32* %j, align 4
  %idxprom16 = zext i32 %14 to i64
  %15 = load i8*, i8** %decoded, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %idxprom16
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %add19 = add nsw i32 %conv18, %conv15
  %conv20 = trunc i32 %add19 to i8
  store i8 %conv20, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %add21 = add i32 %17, 2
  store i32 %add21, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %decoded, align 8
  store i8* %19, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare void @cli_warnmsg(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @cli_strbcasestr(i8* %haystack, i8* %needle) #0 {
entry:
  %retval = alloca i32, align 4
  %haystack.addr = alloca i8*, align 8
  %needle.addr = alloca i8*, align 8
  %pt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %haystack, i8** %haystack.addr, align 8
  store i8* %needle, i8** %needle.addr, align 8
  %0 = load i8*, i8** %haystack.addr, align 8
  store i8* %0, i8** %pt, align 8
  %1 = load i8*, i8** %haystack.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %i, align 4
  %2 = load i8*, i8** %needle.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load i8*, i8** %pt, align 8
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %pt, align 8
  %8 = load i8*, i8** %pt, align 8
  %9 = load i8*, i8** %needle.addr, align 8
  %call4 = call i32 @strcasecmp(i8* %8, i8* %9) #6
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @cli_chomp(i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  %2 = load i32, i32* %l, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %l, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %4 = load i32, i32* %l, align 4
  %cmp5 = icmp sge i32 %4, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %l, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %string.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 10
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load i32, i32* %l, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load i8*, i8** %string.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 %idxprom10
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %11 = phi i1 [ true, %land.rhs ], [ %cmp13, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %11, %lor.end ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %l, align 4
  %dec15 = add nsw i32 %13, -1
  store i32 %dec15, i32* %l, align 4
  %idxprom16 = sext i32 %13 to i64
  %14 = load i8*, i8** %string.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 %idxprom16
  store i8 0, i8* %arrayidx17, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %l, align 4
  %add = add nsw i32 %15, 1
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i8* @cli_strtok(i8* %line, i32 %fieldno, i8* %delim) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %fieldno.addr = alloca i32, align 4
  %delim.addr = alloca i8*, align 8
  %counter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i32 %fieldno, i32* %fieldno.addr, align 4
  store i8* %delim, i8** %delim.addr, align 8
  store i32 0, i32* %counter, align 4
  store i8* null, i8** %buffer, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %counter, align 4
  %4 = load i32, i32* %fieldno.addr, align 4
  %cmp = icmp ne i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i8*, i8** %delim.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8*, i8** %line.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  %call = call i8* @strchr(i8* %6, i32 %conv4) #6
  %tobool5 = icmp ne i8* %call, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom6 = sext i32 %add to i64
  %12 = load i8*, i8** %line.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.rhs.10, label %land.end.17

land.rhs.10:                                      ; preds = %while.cond
  %14 = load i8*, i8** %delim.addr, align 8
  %15 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %15, 1
  %idxprom12 = sext i32 %add11 to i64
  %16 = load i8*, i8** %line.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %call15 = call i8* @strchr(i8* %14, i32 %conv14) #6
  %tobool16 = icmp ne i8* %call15, null
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.10, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool16, %land.rhs.10 ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.17
  %19 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.17
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i8*, i8** %line.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %22, i64 %idxprom20
  %23 = load i8, i8* %arrayidx21, align 1
  %tobool22 = icmp ne i8 %23, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end.24:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  store i32 %24, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.37, %if.end.24
  %25 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load i8*, i8** %line.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %26, i64 %idxprom26
  %27 = load i8, i8* %arrayidx27, align 1
  %tobool28 = icmp ne i8 %27, 0
  br i1 %tobool28, label %for.body.29, label %for.end.39

for.body.29:                                      ; preds = %for.cond.25
  %28 = load i8*, i8** %delim.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load i8*, i8** %line.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 %idxprom30
  %31 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %31 to i32
  %call33 = call i8* @strchr(i8* %28, i32 %conv32) #6
  %tobool34 = icmp ne i8* %call33, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body.29
  br label %for.end.39

if.end.36:                                        ; preds = %for.body.29
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %32 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %32, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.25

for.end.39:                                       ; preds = %if.then.35, %for.cond.25
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %j, align 4
  %cmp40 = icmp eq i32 %33, %34
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.end.39
  store i8* null, i8** %retval
  br label %return

if.end.43:                                        ; preds = %for.end.39
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %35, %36
  %add44 = add nsw i32 %sub, 1
  %conv45 = sext i32 %add44 to i64
  %call46 = call i8* @cli_malloc(i64 %conv45)
  store i8* %call46, i8** %buffer, align 8
  %37 = load i8*, i8** %buffer, align 8
  %tobool47 = icmp ne i8* %37, null
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.43
  store i8* null, i8** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.43
  %38 = load i8*, i8** %buffer, align 8
  %39 = load i8*, i8** %line.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %i, align 4
  %sub50 = sub nsw i32 %41, %42
  %conv51 = sext i32 %sub50 to i64
  %call52 = call i8* @strncpy(i8* %38, i8* %add.ptr, i64 %conv51) #4
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %i, align 4
  %sub53 = sub nsw i32 %43, %44
  %idxprom54 = sext i32 %sub53 to i64
  %45 = load i8*, i8** %buffer, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %45, i64 %idxprom54
  store i8 0, i8* %arrayidx55, align 1
  %46 = load i8*, i8** %buffer, align 8
  store i8* %46, i8** %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.48, %if.then.42, %if.then.23
  %47 = load i8*, i8** %retval
  ret i8* %47
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

declare i8* @cli_malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i8* @cli_strtokbuf(i8* %input, i32 %fieldno, i8* %delim, i8* %output) #0 {
entry:
  %retval = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %fieldno.addr = alloca i32, align 4
  %delim.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %counter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store i32 %fieldno, i32* %fieldno.addr, align 4
  store i8* %delim, i8** %delim.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %counter, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %counter, align 4
  %4 = load i32, i32* %fieldno.addr, align 4
  %cmp = icmp ne i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i8*, i8** %delim.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8*, i8** %input.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  %call = call i8* @strchr(i8* %6, i32 %conv4) #6
  %tobool5 = icmp ne i8* %call, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom6 = sext i32 %add to i64
  %12 = load i8*, i8** %input.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.rhs.10, label %land.end.17

land.rhs.10:                                      ; preds = %while.cond
  %14 = load i8*, i8** %delim.addr, align 8
  %15 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %15, 1
  %idxprom12 = sext i32 %add11 to i64
  %16 = load i8*, i8** %input.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %call15 = call i8* @strchr(i8* %14, i32 %conv14) #6
  %tobool16 = icmp ne i8* %call15, null
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.10, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool16, %land.rhs.10 ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.17
  %19 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.17
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i8*, i8** %input.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %22, i64 %idxprom20
  %23 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %23 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end.26:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  store i32 %24, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.39, %if.end.26
  %25 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %25 to i64
  %26 = load i8*, i8** %input.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %26, i64 %idxprom28
  %27 = load i8, i8* %arrayidx29, align 1
  %tobool30 = icmp ne i8 %27, 0
  br i1 %tobool30, label %for.body.31, label %for.end.41

for.body.31:                                      ; preds = %for.cond.27
  %28 = load i8*, i8** %delim.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load i8*, i8** %input.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %30, i64 %idxprom32
  %31 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %31 to i32
  %call35 = call i8* @strchr(i8* %28, i32 %conv34) #6
  %tobool36 = icmp ne i8* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.31
  br label %for.end.41

if.end.38:                                        ; preds = %for.body.31
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %32 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.27

for.end.41:                                       ; preds = %if.then.37, %for.cond.27
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %j, align 4
  %cmp42 = icmp eq i32 %33, %34
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.end.41
  store i8* null, i8** %retval
  br label %return

if.end.45:                                        ; preds = %for.end.41
  %35 = load i8*, i8** %output.addr, align 8
  %36 = load i8*, i8** %input.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %37 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %38, %39
  %conv46 = sext i32 %sub to i64
  %call47 = call i8* @strncpy(i8* %35, i8* %add.ptr, i64 %conv46) #4
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %i, align 4
  %sub48 = sub nsw i32 %40, %41
  %idxprom49 = sext i32 %sub48 to i64
  %42 = load i8*, i8** %output.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %42, i64 %idxprom49
  store i8 0, i8* %arrayidx50, align 1
  %43 = load i8*, i8** %output.addr, align 8
  store i8* %43, i8** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.44, %if.then.25
  %44 = load i8*, i8** %retval
  ret i8* %44
}

; Function Attrs: nounwind uwtable
define i8* @cli_memstr(i8* %haystack, i32 %hs, i8* %needle, i32 %ns) #0 {
entry:
  %retval = alloca i8*, align 8
  %haystack.addr = alloca i8*, align 8
  %hs.addr = alloca i32, align 4
  %needle.addr = alloca i8*, align 8
  %ns.addr = alloca i32, align 4
  %pt = alloca i8*, align 8
  %hay = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %haystack, i8** %haystack.addr, align 8
  store i32 %hs, i32* %hs.addr, align 4
  store i8* %needle, i8** %needle.addr, align 8
  store i32 %ns, i32* %ns.addr, align 4
  %0 = load i32, i32* %hs.addr, align 4
  %1 = load i32, i32* %ns.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %haystack.addr, align 8
  %3 = load i8*, i8** %needle.addr, align 8
  %cmp1 = icmp eq i8* %2, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %haystack.addr, align 8
  store i8* %4, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i8*, i8** %haystack.addr, align 8
  %6 = load i8*, i8** %needle.addr, align 8
  %7 = load i32, i32* %ns.addr, align 4
  %conv = sext i32 %7 to i64
  %call = call i32 @memcmp(i8* %5, i8* %6, i64 %conv) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  %8 = load i8*, i8** %haystack.addr, align 8
  store i8* %8, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %9 = load i8*, i8** %haystack.addr, align 8
  store i8* %9, i8** %hay, align 8
  store i8* %9, i8** %pt, align 8
  %10 = load i32, i32* %hs.addr, align 4
  store i32 %10, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end.5
  %11 = load i8*, i8** %hay, align 8
  %12 = load i8*, i8** %needle.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %13 to i32
  %14 = load i32, i32* %n, align 4
  %conv7 = sext i32 %14 to i64
  %call8 = call i8* @memchr(i8* %11, i32 %conv6, i64 %conv7) #6
  store i8* %call8, i8** %pt, align 8
  %cmp9 = icmp ne i8* %call8, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %pt, align 8
  %16 = load i8*, i8** %hay, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv11 = trunc i64 %sub.ptr.sub to i32
  %17 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %17, %conv11
  store i32 %sub, i32* %n, align 4
  %18 = load i32, i32* %n, align 4
  %19 = load i32, i32* %ns.addr, align 4
  %cmp12 = icmp slt i32 %18, %19
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.body
  br label %while.end

if.end.15:                                        ; preds = %while.body
  %20 = load i8*, i8** %pt, align 8
  %21 = load i8*, i8** %needle.addr, align 8
  %22 = load i32, i32* %ns.addr, align 4
  %conv16 = sext i32 %22 to i64
  %call17 = call i32 @memcmp(i8* %20, i8* %21, i64 %conv16) #6
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.15
  %23 = load i8*, i8** %pt, align 8
  store i8* %23, i8** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %24 = load i8*, i8** %hay, align 8
  %25 = load i8*, i8** %pt, align 8
  %cmp21 = icmp eq i8* %24, %25
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  %26 = load i32, i32* %n, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %n, align 4
  %27 = load i8*, i8** %hay, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %hay, align 8
  br label %if.end.24

if.else:                                          ; preds = %if.end.20
  %28 = load i8*, i8** %pt, align 8
  store i8* %28, i8** %hay, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  br label %while.cond

while.end:                                        ; preds = %if.then.14, %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.19, %if.then.4, %if.then.2, %if.then
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define i8* @cli_strrcpy(i8* %dest, i8* %source) #0 {
entry:
  %retval = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %source.addr = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %source.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i8*, i8** %source.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %source.addr, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr2, i8** %dest.addr, align 8
  store i8 %3, i8* %4, align 1
  %tobool3 = icmp ne i8 %3, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %5, i32 -1
  store i8* %incdec.ptr4, i8** %dest.addr, align 8
  store i8* %incdec.ptr4, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define void @cli_strtokenize(i8* %buffer, i8 signext %delim, i64 %token_count, i8** %tokens) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %delim.addr = alloca i8, align 1
  %token_count.addr = alloca i64, align 8
  %tokens.addr = alloca i8**, align 8
  %tokens_found = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i8 %delim, i8* %delim.addr, align 1
  store i64 %token_count, i64* %token_count.addr, align 8
  store i8** %tokens, i8*** %tokens.addr, align 8
  store i64 0, i64* %tokens_found, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load i64, i64* %tokens_found, align 8
  %1 = load i64, i64* %token_count.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i64, i64* %tokens_found, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %tokens_found, align 8
  %4 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %3
  store i8* %2, i8** %arrayidx, align 8
  %5 = load i8*, i8** %buffer.addr, align 8
  %6 = load i8, i8* %delim.addr, align 1
  %conv = sext i8 %6 to i32
  %call = call i8* @strchr(i8* %5, i32 %conv) #6
  store i8* %call, i8** %buffer.addr, align 8
  %7 = load i8*, i8** %buffer.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  store i8 0, i8* %8, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %9 = load i64, i64* %tokens_found, align 8
  %10 = load i64, i64* %token_count.addr, align 8
  %cmp1 = icmp ult i64 %9, %10
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i64, i64* %tokens_found, align 8
  %inc3 = add i64 %11, 1
  store i64 %inc3, i64* %tokens_found, align 8
  %12 = load i8**, i8*** %tokens.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %12, i64 %11
  store i8* null, i8** %arrayidx4, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.cond

for.end:                                          ; preds = %while.end, %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
