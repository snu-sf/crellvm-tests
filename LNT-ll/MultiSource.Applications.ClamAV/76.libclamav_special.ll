; ModuleID = './MultiSource.Applications.ClamAV/76.libclamav_special.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"in cli_check_mydoom_log()\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Mydoom: key: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Mydoom: check: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Worm.Mydoom.M.log\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"in cli_check_jpeg_exploit()\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"in cli_check_riff_exploit()\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RIFX\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ACON\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Photoshop 3.0\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Found Photoshop segment\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"read bim failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"missed 8bim: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ID: 0x%.4x\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"found thumbnail\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Exploit found in thumbnail\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"riff_read_chunk: recursion level exceeded\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"PROP\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"FORM\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"CAT \00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"riff_read_chunk: read list type failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_check_mydoom_log(i32 %desc, i8** %virname) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %virname.addr = alloca i8**, align 8
  %record = alloca [8 x i32], align 16
  %check = alloca i32, align 4
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store i8** %virname, i8*** %virname.addr, align 8
  store i32 1, i32* %retval1, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %desc.addr, align 4
  %2 = bitcast [8 x i32]* %record to i8*
  %call = call i32 @cli_readn(i32 %1, i8* %2, i32 32)
  %cmp2 = icmp ne i32 %call, 32
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end.24

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %record, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %call3 = call i32 @ntohl(i32 %3) #5
  %neg = xor i32 %call3, -1
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %record, i32 0, i64 0
  store i32 %neg, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %record, i32 0, i64 0
  %4 = load i32, i32* %arrayidx5, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %4)
  store i32 0, i32* %check, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %5, 8
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %record, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx9, align 4
  %call10 = call i32 @ntohl(i32 %7) #5
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %record, i32 0, i64 0
  %8 = load i32, i32* %arrayidx11, align 4
  %xor = xor i32 %call10, %8
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %record, i32 0, i64 %idxprom12
  store i32 %xor, i32* %arrayidx13, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %record, i32 0, i64 %idxprom14
  %11 = load i32, i32* %arrayidx15, align 4
  %12 = load i32, i32* %check, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %check, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %14 = load i32, i32* %check, align 4
  %neg16 = xor i32 %14, -1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %neg16)
  %15 = load i32, i32* %check, align 4
  %neg17 = xor i32 %15, -1
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %record, i32 0, i64 0
  %16 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp ne i32 %neg17, %16
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %for.end
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %17 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond

for.end.24:                                       ; preds = %if.then, %for.cond
  %18 = load i32, i32* %j, align 4
  %cmp25 = icmp slt i32 %18, 2
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %for.end.24
  store i32 0, i32* %retval1, align 4
  br label %if.end.32

if.else:                                          ; preds = %for.end.24
  %19 = load i32, i32* %retval1, align 4
  %cmp27 = icmp eq i32 %19, 1
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.else
  %20 = load i8**, i8*** %virname.addr, align 8
  %tobool = icmp ne i8** %20, null
  br i1 %tobool, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.28
  %21 = load i8**, i8*** %virname.addr, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8** %21, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.28
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.26
  %22 = load i32, i32* %retval1, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.20
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @cli_dbgmsg(i8*, ...) #1

declare i32 @cli_readn(i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #2

; Function Attrs: nounwind uwtable
define i32 @cli_check_jpeg_exploit(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buffer = alloca [4 x i8], align 1
  %offset = alloca i64, align 8
  %retval1 = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  %0 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  %call = call i32 @cli_readn(i32 %0, i8* %arraydecay, i32 2)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp2 = icmp ne i32 %conv, 255
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 1
  %2 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %2 to i32
  %cmp6 = icmp ne i32 %conv5, 216
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %if.end.93, %if.then.24, %if.end.9
  %3 = load i32, i32* %fd.addr, align 4
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  %call11 = call i32 @cli_readn(i32 %3, i8* %arraydecay10, i32 4)
  store i32 %call11, i32* %retval1, align 4
  %cmp12 = icmp ne i32 %call11, 4
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.cond
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 0
  %4 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %4 to i32
  %cmp18 = icmp eq i32 %conv17, 255
  br i1 %cmp18, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.15
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 1
  %5 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %5 to i32
  %cmp22 = icmp eq i32 %conv21, 255
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.lhs.true
  %6 = load i32, i32* %fd.addr, align 4
  %call25 = call i64 @lseek(i32 %6, i64 -3, i32 1) #6
  br label %for.cond

if.end.26:                                        ; preds = %land.lhs.true, %if.end.15
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 0
  %7 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %7 to i32
  %cmp29 = icmp eq i32 %conv28, 255
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.54

land.lhs.true.31:                                 ; preds = %if.end.26
  %arrayidx32 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 1
  %8 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %8 to i32
  %cmp34 = icmp eq i32 %conv33, 254
  br i1 %cmp34, label %if.then.36, label %if.end.54

if.then.36:                                       ; preds = %land.lhs.true.31
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 2
  %9 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %9 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.53

if.then.41:                                       ; preds = %if.then.36
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 3
  %10 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %10 to i32
  %cmp44 = icmp eq i32 %conv43, 0
  br i1 %cmp44, label %if.then.51, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.then.41
  %arrayidx47 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 3
  %11 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %11 to i32
  %cmp49 = icmp eq i32 %conv48, 1
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %lor.lhs.false.46, %if.then.41
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %lor.lhs.false.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.36
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.31, %if.end.26
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 0
  %12 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %12 to i32
  %cmp57 = icmp ne i32 %conv56, 255
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.54
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.54
  %arrayidx61 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 1
  %13 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %13 to i32
  %cmp63 = icmp eq i32 %conv62, 218
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.60
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.60
  %arrayidx67 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 2
  %14 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %14 to i32
  %shl = shl i32 %conv68, 8
  %arrayidx69 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 3
  %15 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %15 to i32
  %add = add i32 %shl, %conv70
  %conv71 = zext i32 %add to i64
  store i64 %conv71, i64* %offset, align 8
  %16 = load i64, i64* %offset, align 8
  %cmp72 = icmp slt i64 %16, 2
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.66
  store i32 1, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.66
  %17 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 %17, 2
  store i64 %sub, i64* %offset, align 8
  %18 = load i32, i32* %fd.addr, align 4
  %call76 = call i64 @lseek(i32 %18, i64 0, i32 1) #6
  %19 = load i64, i64* %offset, align 8
  %add77 = add nsw i64 %19, %call76
  store i64 %add77, i64* %offset, align 8
  %arrayidx78 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 1
  %20 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %20 to i32
  %cmp80 = icmp eq i32 %conv79, 237
  br i1 %cmp80, label %if.then.82, label %if.end.88

if.then.82:                                       ; preds = %if.end.75
  %21 = load i32, i32* %fd.addr, align 4
  %call83 = call i32 @jpeg_check_photoshop(i32 %21)
  store i32 %call83, i32* %retval1, align 4
  %cmp84 = icmp ne i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.82
  %22 = load i32, i32* %retval1, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.82
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.75
  %23 = load i32, i32* %fd.addr, align 4
  %24 = load i64, i64* %offset, align 8
  %call89 = call i64 @lseek(i32 %23, i64 %24, i32 0) #6
  %25 = load i64, i64* %offset, align 8
  %cmp90 = icmp ne i64 %call89, %25
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.88
  store i32 -1, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.88
  br label %for.cond

return:                                           ; preds = %if.then.92, %if.then.86, %if.then.74, %if.then.65, %if.then.59, %if.then.51, %if.then.14, %if.then.8, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @jpeg_check_photoshop(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %buffer = alloca [14 x i8], align 1
  %old = alloca i64, align 8
  %new = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %buffer, i32 0, i32 0
  %call = call i32 @cli_readn(i32 %0, i8* %arraydecay, i32 14)
  %cmp = icmp ne i32 %call, 14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [14 x i8], [14 x i8]* %buffer, i32 0, i32 0
  %call3 = call i32 @memcmp(i8* %arraydecay2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i64 14) #7
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.6
  %1 = load i32, i32* %fd.addr, align 4
  %call7 = call i64 @lseek(i32 %1, i64 0, i32 1) #6
  store i64 %call7, i64* %old, align 8
  %2 = load i32, i32* %fd.addr, align 4
  %call8 = call i32 @jpeg_check_photoshop_8bim(i32 %2)
  store i32 %call8, i32* %retval1, align 4
  %3 = load i32, i32* %fd.addr, align 4
  %call9 = call i64 @lseek(i32 %3, i64 0, i32 1) #6
  store i64 %call9, i64* %new, align 8
  %4 = load i64, i64* %new, align 8
  %5 = load i64, i64* %old, align 8
  %cmp10 = icmp sle i64 %4, %5
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.body
  br label %do.end

if.end.12:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %6 = load i32, i32* %retval1, align 4
  %cmp13 = icmp eq i32 %6, 0
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.11
  %7 = load i32, i32* %retval1, align 4
  %cmp14 = icmp eq i32 %7, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %retval1, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %8 = load i32, i32* %retval1, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.5, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @cli_check_riff_exploit(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %chunk_id = alloca i32, align 4
  %chunk_size = alloca i32, align 4
  %form_type = alloca i32, align 4
  %length = alloca i32, align 4
  %big_endian = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %offset = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  store i32 4, i32* %length, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = bitcast i32* %chunk_id to i8*
  %2 = load i32, i32* %length, align 4
  %call = call i32 @cli_readn(i32 %0, i8* %1, i32 %2)
  %3 = load i32, i32* %length, align 4
  %cmp = icmp ne i32 %call, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %fd.addr, align 4
  %5 = bitcast i32* %chunk_size to i8*
  %6 = load i32, i32* %length, align 4
  %call2 = call i32 @cli_readn(i32 %4, i8* %5, i32 %6)
  %7 = load i32, i32* %length, align 4
  %cmp3 = icmp ne i32 %call2, %7
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load i32, i32* %fd.addr, align 4
  %9 = bitcast i32* %form_type to i8*
  %10 = load i32, i32* %length, align 4
  %call6 = call i32 @cli_readn(i32 %8, i8* %9, i32 %10)
  %11 = load i32, i32* %length, align 4
  %cmp7 = icmp ne i32 %call6, %11
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %12 = bitcast i32* %chunk_id to i8*
  %call10 = call i32 @memcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4) #7
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  store i32 0, i32* %big_endian, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.end.9
  %13 = bitcast i32* %chunk_id to i8*
  %call13 = call i32 @memcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  store i32 1, i32* %big_endian, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.12
  %14 = bitcast i32* %form_type to i8*
  %call19 = call i32 @memcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #7
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %15 = load i32, i32* %chunk_size, align 4
  %16 = load i32, i32* %big_endian, align 4
  %call23 = call i32 @riff_endian_convert_32(i32 %15, i32 %16)
  store i32 %call23, i32* %chunk_size, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.22
  %17 = load i32, i32* %fd.addr, align 4
  %18 = load i32, i32* %big_endian, align 4
  %call24 = call i32 @riff_read_chunk(i32 %17, i32 %18, i32 1)
  store i32 %call24, i32* %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %19 = load i32, i32* %retval1, align 4
  %cmp25 = icmp eq i32 %19, 1
  br i1 %cmp25, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %fd.addr, align 4
  %call26 = call i64 @lseek(i32 %20, i64 0, i32 1) #6
  store i64 %call26, i64* %offset, align 8
  %21 = load i64, i64* %offset, align 8
  %22 = load i32, i32* %chunk_size, align 4
  %conv = zext i32 %22 to i64
  %cmp27 = icmp slt i64 %21, %conv
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end
  store i32 2, i32* %retval1, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %do.end
  %23 = load i32, i32* %retval1, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.21, %if.else.16, %if.then.8, %if.then.4, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @riff_endian_convert_32(i32 %value, i32 %big_endian) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %big_endian.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 %big_endian, i32* %big_endian.addr, align 4
  %0 = load i32, i32* %big_endian.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %value.addr, align 4
  %shr = lshr i32 %1, 24
  %2 = load i32, i32* %value.addr, align 4
  %and = and i32 %2, 16711680
  %shr1 = lshr i32 %and, 8
  %or = or i32 %shr, %shr1
  %3 = load i32, i32* %value.addr, align 4
  %and2 = and i32 %3, 65280
  %shl = shl i32 %and2, 8
  %or3 = or i32 %or, %shl
  %4 = load i32, i32* %value.addr, align 4
  %shl4 = shl i32 %4, 24
  %or5 = or i32 %or3, %shl4
  store i32 %or5, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %value.addr, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @riff_read_chunk(i32 %fd, i32 %big_endian, i32 %rec_level) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %big_endian.addr = alloca i32, align 4
  %rec_level.addr = alloca i32, align 4
  %chunk_id = alloca i32, align 4
  %chunk_size = alloca i32, align 4
  %length = alloca i32, align 4
  %list_type = alloca i32, align 4
  %offset = alloca i64, align 8
  %cur_offset = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %big_endian, i32* %big_endian.addr, align 4
  store i32 %rec_level, i32* %rec_level.addr, align 4
  %0 = load i32, i32* %rec_level.addr, align 4
  %cmp = icmp sgt i32 %0, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 4, i32* %length, align 4
  %1 = load i32, i32* %fd.addr, align 4
  %2 = bitcast i32* %chunk_id to i8*
  %3 = load i32, i32* %length, align 4
  %call = call i32 @cli_readn(i32 %1, i8* %2, i32 %3)
  %4 = load i32, i32* %length, align 4
  %cmp1 = icmp ne i32 %call, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %6 = bitcast i32* %chunk_size to i8*
  %7 = load i32, i32* %length, align 4
  %call4 = call i32 @cli_readn(i32 %5, i8* %6, i32 %7)
  %8 = load i32, i32* %length, align 4
  %cmp5 = icmp ne i32 %call4, %8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %9 = load i32, i32* %chunk_size, align 4
  %10 = load i32, i32* %big_endian.addr, align 4
  %call8 = call i32 @riff_endian_convert_32(i32 %9, i32 %10)
  store i32 %call8, i32* %chunk_size, align 4
  %11 = bitcast i32* %chunk_id to i8*
  %call9 = call i32 @memcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.7
  %12 = bitcast i32* %chunk_id to i8*
  %call12 = call i32 @memcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  %13 = bitcast i32* %chunk_id to i8*
  %call17 = call i32 @memcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i64 4) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %14 = bitcast i32* %chunk_id to i8*
  %call19 = call i32 @memcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i64 4) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.27, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %15 = bitcast i32* %chunk_id to i8*
  %call22 = call i32 @memcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i64 4) #7
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %16 = bitcast i32* %chunk_id to i8*
  %call25 = call i32 @memcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i64 4) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.21, %lor.lhs.false, %if.end.16
  %17 = load i32, i32* %fd.addr, align 4
  %18 = bitcast i32* %list_type to i8*
  %call28 = call i32 @cli_readn(i32 %17, i8* %18, i32 4)
  %conv = sext i32 %call28 to i64
  %cmp29 = icmp ne i64 %conv, 4
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.27
  %19 = load i32, i32* %fd.addr, align 4
  %20 = load i32, i32* %big_endian.addr, align 4
  %21 = load i32, i32* %rec_level.addr, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %rec_level.addr, align 4
  %call33 = call i32 @riff_read_chunk(i32 %19, i32 %20, i32 %inc)
  store i32 %call33, i32* %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.24
  %22 = load i32, i32* %fd.addr, align 4
  %call35 = call i64 @lseek(i32 %22, i64 0, i32 1) #6
  store i64 %call35, i64* %cur_offset, align 8
  %23 = load i64, i64* %cur_offset, align 8
  %24 = load i32, i32* %chunk_size, align 4
  %conv36 = zext i32 %24 to i64
  %add = add nsw i64 %23, %conv36
  store i64 %add, i64* %offset, align 8
  %25 = load i64, i64* %offset, align 8
  %and = and i64 %25, 1
  %cmp37 = icmp eq i64 %and, 1
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.34
  %26 = load i64, i64* %offset, align 8
  %inc40 = add nsw i64 %26, 1
  store i64 %inc40, i64* %offset, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.34
  %27 = load i64, i64* %offset, align 8
  %28 = load i64, i64* %cur_offset, align 8
  %cmp42 = icmp slt i64 %27, %28
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.41
  %29 = load i32, i32* %fd.addr, align 4
  %30 = load i64, i64* %offset, align 8
  %call46 = call i64 @lseek(i32 %29, i64 %30, i32 0) #6
  %31 = load i64, i64* %offset, align 8
  %cmp47 = icmp ne i64 %call46, %31
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  store i32 2, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.45
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.49, %if.then.44, %if.end.32, %if.then.31, %if.then.14, %if.then.11, %if.then.6, %if.then.2, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @jpeg_check_photoshop_8bim(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %bim = alloca [5 x i8], align 1
  %id = alloca i16, align 2
  %ntmp = alloca i16, align 2
  %nlength = alloca i8, align 1
  %size = alloca i32, align 4
  %offset = alloca i64, align 8
  %retval1 = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %bim, i32 0, i32 0
  %call = call i32 @cli_readn(i32 %0, i8* %arraydecay, i32 4)
  %cmp = icmp ne i32 %call, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [5 x i8], [5 x i8]* %bim, i32 0, i32 0
  %call3 = call i32 @memcmp(i8* %arraydecay2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i64 4) #7
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %bim, i32 0, i64 4
  store i8 0, i8* %arrayidx, align 1
  %arraydecay6 = getelementptr inbounds [5 x i8], [5 x i8]* %bim, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay6)
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %1 = load i32, i32* %fd.addr, align 4
  %2 = bitcast i16* %id to i8*
  %call8 = call i32 @cli_readn(i32 %1, i8* %2, i32 2)
  %cmp9 = icmp ne i32 %call8, 2
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %3 = load i16, i16* %id, align 2
  %conv = zext i16 %3 to i32
  %shr = ashr i32 %conv, 8
  %4 = load i16, i16* %id, align 2
  %conv12 = zext i16 %4 to i32
  %and = and i32 %conv12, 255
  %shl = shl i32 %and, 8
  %or = or i32 %shr, %shl
  %conv13 = trunc i32 %or to i16
  store i16 %conv13, i16* %id, align 2
  %5 = load i16, i16* %id, align 2
  %conv14 = zext i16 %5 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %conv14)
  %6 = load i32, i32* %fd.addr, align 4
  %call15 = call i32 @cli_readn(i32 %6, i8* %nlength, i32 1)
  %cmp16 = icmp ne i32 %call15, 1
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.11
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.11
  %7 = load i8, i8* %nlength, align 1
  %conv20 = zext i8 %7 to i32
  %8 = load i8, i8* %nlength, align 1
  %conv21 = zext i8 %8 to i16
  %conv22 = zext i16 %conv21 to i32
  %add = add nsw i32 %conv22, 1
  %and23 = and i32 %add, 1
  %add24 = add nsw i32 %conv20, %and23
  %conv25 = trunc i32 %add24 to i16
  store i16 %conv25, i16* %ntmp, align 2
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load i16, i16* %ntmp, align 2
  %conv26 = zext i16 %10 to i64
  %call27 = call i64 @lseek(i32 %9, i64 %conv26, i32 1) #6
  %11 = load i32, i32* %fd.addr, align 4
  %12 = bitcast i32* %size to i8*
  %call28 = call i32 @cli_readn(i32 %11, i8* %12, i32 4)
  %cmp29 = icmp ne i32 %call28, 4
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.19
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.19
  %13 = load i32, i32* %size, align 4
  %shr33 = lshr i32 %13, 24
  %14 = load i32, i32* %size, align 4
  %and34 = and i32 %14, 16711680
  %shr35 = lshr i32 %and34, 8
  %or36 = or i32 %shr33, %shr35
  %15 = load i32, i32* %size, align 4
  %and37 = and i32 %15, 65280
  %shl38 = shl i32 %and37, 8
  %or39 = or i32 %or36, %shl38
  %16 = load i32, i32* %size, align 4
  %shl40 = shl i32 %16, 24
  %or41 = or i32 %or39, %shl40
  store i32 %or41, i32* %size, align 4
  %17 = load i32, i32* %size, align 4
  %cmp42 = icmp eq i32 %17, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.32
  store i32 -1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.32
  %18 = load i32, i32* %size, align 4
  %and46 = and i32 %18, 1
  %cmp47 = icmp eq i32 %and46, 1
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  %19 = load i32, i32* %size, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %size, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.45
  %20 = load i16, i16* %id, align 2
  %conv51 = zext i16 %20 to i32
  %cmp52 = icmp ne i32 %conv51, 1033
  br i1 %cmp52, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.50
  %21 = load i16, i16* %id, align 2
  %conv54 = zext i16 %21 to i32
  %cmp55 = icmp ne i32 %conv54, 1036
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %land.lhs.true
  %22 = load i32, i32* %fd.addr, align 4
  %23 = load i32, i32* %size, align 4
  %conv58 = zext i32 %23 to i64
  %call59 = call i64 @lseek(i32 %22, i64 %conv58, i32 1) #6
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %land.lhs.true, %if.end.50
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0))
  %24 = load i32, i32* %fd.addr, align 4
  %call61 = call i64 @lseek(i32 %24, i64 0, i32 1) #6
  store i64 %call61, i64* %offset, align 8
  %25 = load i32, i32* %fd.addr, align 4
  %call62 = call i64 @lseek(i32 %25, i64 28, i32 1) #6
  %26 = load i32, i32* %fd.addr, align 4
  %call63 = call i32 @cli_check_jpeg_exploit(i32 %26)
  store i32 %call63, i32* %retval1, align 4
  %27 = load i32, i32* %retval1, align 4
  %cmp64 = icmp eq i32 %27, 1
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.60
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.60
  %28 = load i32, i32* %fd.addr, align 4
  %29 = load i64, i64* %offset, align 8
  %30 = load i32, i32* %size, align 4
  %conv68 = zext i32 %30 to i64
  %add69 = add nsw i64 %29, %conv68
  %call70 = call i64 @lseek(i32 %28, i64 %add69, i32 0) #6
  %31 = load i32, i32* %retval1, align 4
  store i32 %31, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.57, %if.then.44, %if.then.31, %if.then.18, %if.then.10, %if.then.5, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
