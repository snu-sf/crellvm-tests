; ModuleID = './lib/sig2str.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.numname = type { i32, [8 x i8] }

@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16
@.str = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @str2sig(i8* %signame, i32* %signum) #0 {
entry:
  %signame.addr = alloca i8*, align 8
  %signum.addr = alloca i32*, align 8
  store i8* %signame, i8** %signame.addr, align 8
  store i32* %signum, i32** %signum.addr, align 8
  %0 = load i8*, i8** %signame.addr, align 8
  %call = call i32 @str2signum(i8* %0)
  %1 = load i32*, i32** %signum.addr, align 8
  store i32 %call, i32* %1, align 4
  %2 = load i32*, i32** %signum.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %3, 0
  %cond = select i1 %cmp, i32 -1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @str2signum(i8* %signame) #0 {
entry:
  %retval = alloca i32, align 4
  %signame.addr = alloca i8*, align 8
  %endp = alloca i8*, align 8
  %n = alloca i64, align 8
  %i = alloca i32, align 4
  %endp16 = alloca i8*, align 8
  %rtmin = alloca i32, align 4
  %rtmax = alloca i32, align 4
  %n26 = alloca i64, align 8
  %n49 = alloca i64, align 8
  store i8* %signame, i8** %signame.addr, align 8
  %0 = load i8*, i8** %signame.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %sub = sub i32 %conv, 48
  %cmp = icmp ule i32 %sub, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %signame.addr, align 8
  %call = call i64 @strtol(i8* %2, i8** %endp, i32 10) #3
  store i64 %call, i64* %n, align 8
  %3 = load i8*, i8** %endp, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load i64, i64* %n, align 8
  %cmp2 = icmp sle i64 %5, 64
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load i64, i64* %n, align 8
  %conv5 = trunc i64 %6 to i32
  store i32 %conv5, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.68

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, i32* %i, align 4
  %conv6 = zext i32 %7 to i64
  %cmp7 = icmp ult i64 %conv6, 35
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.numname, %struct.numname* %arrayidx, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %name, i32 0, i32 0
  %9 = load i8*, i8** %signame.addr, align 8
  %call9 = call i32 @strcmp(i8* %arraydecay, i8* %9) #4
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i32 0, i64 %idxprom13
  %num = getelementptr inbounds %struct.numname, %struct.numname* %arrayidx14, i32 0, i32 0
  %11 = load i32, i32* %num, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call17 = call i32 @__libc_current_sigrtmin() #3
  store i32 %call17, i32* %rtmin, align 4
  %call18 = call i32 @__libc_current_sigrtmax() #3
  store i32 %call18, i32* %rtmax, align 4
  %13 = load i32, i32* %rtmin, align 4
  %cmp19 = icmp slt i32 0, %13
  br i1 %cmp19, label %land.lhs.true.21, label %if.else.41

land.lhs.true.21:                                 ; preds = %for.end
  %14 = load i8*, i8** %signame.addr, align 8
  %call22 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 5) #4
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.else.41

if.then.25:                                       ; preds = %land.lhs.true.21
  %15 = load i8*, i8** %signame.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 5
  %call27 = call i64 @strtol(i8* %add.ptr, i8** %endp16, i32 10) #3
  store i64 %call27, i64* %n26, align 8
  %16 = load i8*, i8** %endp16, align 8
  %17 = load i8, i8* %16, align 1
  %tobool28 = icmp ne i8 %17, 0
  br i1 %tobool28, label %if.end.40, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %if.then.25
  %18 = load i64, i64* %n26, align 8
  %cmp30 = icmp sle i64 0, %18
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.40

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %19 = load i64, i64* %n26, align 8
  %20 = load i32, i32* %rtmax, align 4
  %21 = load i32, i32* %rtmin, align 4
  %sub33 = sub nsw i32 %20, %21
  %conv34 = sext i32 %sub33 to i64
  %cmp35 = icmp sle i64 %19, %conv34
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %land.lhs.true.32
  %22 = load i32, i32* %rtmin, align 4
  %conv38 = sext i32 %22 to i64
  %23 = load i64, i64* %n26, align 8
  %add = add nsw i64 %conv38, %23
  %conv39 = trunc i64 %add to i32
  store i32 %conv39, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.32, %land.lhs.true.29, %if.then.25
  br label %if.end.67

if.else.41:                                       ; preds = %land.lhs.true.21, %for.end
  %24 = load i32, i32* %rtmax, align 4
  %cmp42 = icmp slt i32 0, %24
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.66

land.lhs.true.44:                                 ; preds = %if.else.41
  %25 = load i8*, i8** %signame.addr, align 8
  %call45 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64 5) #4
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.66

if.then.48:                                       ; preds = %land.lhs.true.44
  %26 = load i8*, i8** %signame.addr, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %26, i64 5
  %call51 = call i64 @strtol(i8* %add.ptr50, i8** %endp16, i32 10) #3
  store i64 %call51, i64* %n49, align 8
  %27 = load i8*, i8** %endp16, align 8
  %28 = load i8, i8* %27, align 1
  %tobool52 = icmp ne i8 %28, 0
  br i1 %tobool52, label %if.end.65, label %land.lhs.true.53

land.lhs.true.53:                                 ; preds = %if.then.48
  %29 = load i32, i32* %rtmin, align 4
  %30 = load i32, i32* %rtmax, align 4
  %sub54 = sub nsw i32 %29, %30
  %conv55 = sext i32 %sub54 to i64
  %31 = load i64, i64* %n49, align 8
  %cmp56 = icmp sle i64 %conv55, %31
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.65

land.lhs.true.58:                                 ; preds = %land.lhs.true.53
  %32 = load i64, i64* %n49, align 8
  %cmp59 = icmp sle i64 %32, 0
  br i1 %cmp59, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %land.lhs.true.58
  %33 = load i32, i32* %rtmax, align 4
  %conv62 = sext i32 %33 to i64
  %34 = load i64, i64* %n49, align 8
  %add63 = add nsw i64 %conv62, %34
  %conv64 = trunc i64 %add63 to i32
  store i32 %conv64, i32* %retval
  br label %return

if.end.65:                                        ; preds = %land.lhs.true.58, %land.lhs.true.53, %if.then.48
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %land.lhs.true.44, %if.else.41
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.40
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then.61, %if.then.37, %if.then.12, %if.then.4
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @sig2str(i32 %signum, i8* %signame) #0 {
entry:
  %retval = alloca i32, align 4
  %signum.addr = alloca i32, align 4
  %signame.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %rtmin = alloca i32, align 4
  %rtmax = alloca i32, align 4
  %base = alloca i32, align 4
  %delta = alloca i32, align 4
  store i32 %signum, i32* %signum.addr, align 4
  store i8* %signame, i8** %signame.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 35
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i32 0, i64 %idxprom
  %num = getelementptr inbounds %struct.numname, %struct.numname* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %num, align 4
  %3 = load i32, i32* %signum.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %signame.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i32 0, i64 %idxprom4
  %name = getelementptr inbounds %struct.numname, %struct.numname* %arrayidx5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %name, i32 0, i32 0
  %call = call i8* @strcpy(i8* %4, i8* %arraydecay) #3
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call6 = call i32 @__libc_current_sigrtmin() #3
  store i32 %call6, i32* %rtmin, align 4
  %call7 = call i32 @__libc_current_sigrtmax() #3
  store i32 %call7, i32* %rtmax, align 4
  %7 = load i32, i32* %rtmin, align 4
  %8 = load i32, i32* %signum.addr, align 4
  %cmp8 = icmp sle i32 %7, %8
  br i1 %cmp8, label %land.lhs.true, label %if.then.12

land.lhs.true:                                    ; preds = %for.end
  %9 = load i32, i32* %signum.addr, align 4
  %10 = load i32, i32* %rtmax, align 4
  %cmp10 = icmp sle i32 %9, %10
  br i1 %cmp10, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true, %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* %signum.addr, align 4
  %12 = load i32, i32* %rtmin, align 4
  %13 = load i32, i32* %rtmax, align 4
  %14 = load i32, i32* %rtmin, align 4
  %sub = sub nsw i32 %13, %14
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %12, %div
  %cmp14 = icmp sle i32 %11, %add
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.13
  %15 = load i8*, i8** %signame.addr, align 8
  %call17 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #3
  %16 = load i32, i32* %rtmin, align 4
  store i32 %16, i32* %base, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end.13
  %17 = load i8*, i8** %signame.addr, align 8
  %call18 = call i8* @strcpy(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #3
  %18 = load i32, i32* %rtmax, align 4
  store i32 %18, i32* %base, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.16
  %19 = load i32, i32* %signum.addr, align 4
  %20 = load i32, i32* %base, align 4
  %sub20 = sub nsw i32 %19, %20
  store i32 %sub20, i32* %delta, align 4
  %21 = load i32, i32* %delta, align 4
  %cmp21 = icmp ne i32 %21, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.19
  %22 = load i8*, i8** %signame.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 5
  %23 = load i32, i32* %delta, align 4
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %23) #3
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.12, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() #1

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
