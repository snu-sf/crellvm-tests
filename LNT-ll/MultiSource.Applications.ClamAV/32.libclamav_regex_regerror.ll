; ModuleID = './MultiSource.Applications.ClamAV/32.libclamav_regex_regerror.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerr = type { i32, i8*, i8* }
%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type opaque

@rerrs = internal global [17 x %struct.rerr] [%struct.rerr { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0) }, %struct.rerr { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0) }, %struct.rerr { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0) }, %struct.rerr { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.rerr { i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0) }, %struct.rerr { i32 6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0) }, %struct.rerr { i32 7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0) }, %struct.rerr { i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0) }, %struct.rerr { i32 9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0) }, %struct.rerr { i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0) }, %struct.rerr { i32 11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0) }, %struct.rerr { i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0) }, %struct.rerr { i32 13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0) }, %struct.rerr { i32 14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0) }, %struct.rerr { i32 15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0) }, %struct.rerr { i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0) }, %struct.rerr { i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"REG_0x%x\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"REG_NOMATCH\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cli_regexec() failed to match\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"REG_BADPAT\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid regular expression\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"REG_ECOLLATE\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"invalid collating element\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"REG_ECTYPE\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"invalid character class\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"REG_EESCAPE\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"trailing backslash (\5C)\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"REG_ESUBREG\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"invalid backreference number\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"REG_EBRACK\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"brackets ([ ]) not balanced\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"REG_EPAREN\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"parentheses not balanced\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"REG_EBRACE\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"braces not balanced\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"REG_BADBR\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"invalid repetition count(s)\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"REG_ERANGE\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"invalid character range\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"REG_ESPACE\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"REG_BADRPT\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"repetition-operator operand invalid\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"REG_EMPTY\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"empty (sub)expression\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"REG_ASSERT\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"\22can't happen\22 -- you found a bug\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"REG_INVARG\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"invalid argument to regex routine\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"*** unknown regexp error code ***\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define i64 @cli_regerror(i32 %errcode, %struct.regex_t* %preg, i8* %errbuf, i64 %errbuf_size) #0 {
entry:
  %errcode.addr = alloca i32, align 4
  %preg.addr = alloca %struct.regex_t*, align 8
  %errbuf.addr = alloca i8*, align 8
  %errbuf_size.addr = alloca i64, align 8
  %r = alloca %struct.rerr*, align 8
  %len = alloca i64, align 8
  %target = alloca i32, align 4
  %s = alloca i8*, align 8
  %convbuf = alloca [50 x i8], align 16
  store i32 %errcode, i32* %errcode.addr, align 4
  store %struct.regex_t* %preg, %struct.regex_t** %preg.addr, align 8
  store i8* %errbuf, i8** %errbuf.addr, align 8
  store i64 %errbuf_size, i64* %errbuf_size.addr, align 8
  %0 = load i32, i32* %errcode.addr, align 4
  %and = and i32 %0, -257
  store i32 %and, i32* %target, align 4
  %1 = load i32, i32* %errcode.addr, align 4
  %cmp = icmp eq i32 %1, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %convbuf, i32 0, i32 0
  %call = call i8* @regatoi(%struct.regex_t* %2, i8* %arraydecay, i32 50)
  store i8* %call, i8** %s, align 8
  br label %if.end.19

if.else:                                          ; preds = %entry
  store %struct.rerr* getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i32 0, i32 0), %struct.rerr** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load %struct.rerr*, %struct.rerr** %r, align 8
  %code = getelementptr inbounds %struct.rerr, %struct.rerr* %3, i32 0, i32 0
  %4 = load i32, i32* %code, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rerr*, %struct.rerr** %r, align 8
  %code2 = getelementptr inbounds %struct.rerr, %struct.rerr* %5, i32 0, i32 0
  %6 = load i32, i32* %code2, align 4
  %7 = load i32, i32* %target, align 4
  %cmp3 = icmp eq i32 %6, %7
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.rerr*, %struct.rerr** %r, align 8
  %incdec.ptr = getelementptr inbounds %struct.rerr, %struct.rerr* %8, i32 1
  store %struct.rerr* %incdec.ptr, %struct.rerr** %r, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %for.cond
  %9 = load i32, i32* %errcode.addr, align 4
  %and5 = and i32 %9, 256
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then.6, label %if.else.17

if.then.6:                                        ; preds = %for.end
  %10 = load %struct.rerr*, %struct.rerr** %r, align 8
  %code7 = getelementptr inbounds %struct.rerr, %struct.rerr* %10, i32 0, i32 0
  %11 = load i32, i32* %code7, align 4
  %cmp8 = icmp ne i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.then.6
  %arraydecay10 = getelementptr inbounds [50 x i8], [50 x i8]* %convbuf, i32 0, i32 0
  %12 = load %struct.rerr*, %struct.rerr** %r, align 8
  %name = getelementptr inbounds %struct.rerr, %struct.rerr* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %call11 = call i64 @cli_strlcpy(i8* %arraydecay10, i8* %13, i64 50)
  br label %if.end.15

if.else.12:                                       ; preds = %if.then.6
  %arraydecay13 = getelementptr inbounds [50 x i8], [50 x i8]* %convbuf, i32 0, i32 0
  %14 = load i32, i32* %target, align 4
  %call14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay13, i64 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 %14) #4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %if.then.9
  %arraydecay16 = getelementptr inbounds [50 x i8], [50 x i8]* %convbuf, i32 0, i32 0
  store i8* %arraydecay16, i8** %s, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %for.end
  %15 = load %struct.rerr*, %struct.rerr** %r, align 8
  %explain = getelementptr inbounds %struct.rerr, %struct.rerr* %15, i32 0, i32 2
  %16 = load i8*, i8** %explain, align 8
  store i8* %16, i8** %s, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  %17 = load i8*, i8** %s, align 8
  %call20 = call i64 @strlen(i8* %17) #5
  %add = add i64 %call20, 1
  store i64 %add, i64* %len, align 8
  %18 = load i64, i64* %errbuf_size.addr, align 8
  %cmp21 = icmp ugt i64 %18, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %19 = load i8*, i8** %errbuf.addr, align 8
  %20 = load i8*, i8** %s, align 8
  %21 = load i64, i64* %errbuf_size.addr, align 8
  %call23 = call i64 @cli_strlcpy(i8* %19, i8* %20, i64 %21)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  %22 = load i64, i64* %len, align 8
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define internal i8* @regatoi(%struct.regex_t* %preg, i8* %localbuf, i32 %localbufsize) #0 {
entry:
  %retval = alloca i8*, align 8
  %preg.addr = alloca %struct.regex_t*, align 8
  %localbuf.addr = alloca i8*, align 8
  %localbufsize.addr = alloca i32, align 4
  %r = alloca %struct.rerr*, align 8
  store %struct.regex_t* %preg, %struct.regex_t** %preg.addr, align 8
  store i8* %localbuf, i8** %localbuf.addr, align 8
  store i32 %localbufsize, i32* %localbufsize.addr, align 4
  store %struct.rerr* getelementptr inbounds ([17 x %struct.rerr], [17 x %struct.rerr]* @rerrs, i32 0, i32 0), %struct.rerr** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rerr*, %struct.rerr** %r, align 8
  %code = getelementptr inbounds %struct.rerr, %struct.rerr* %0, i32 0, i32 0
  %1 = load i32, i32* %code, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rerr*, %struct.rerr** %r, align 8
  %name = getelementptr inbounds %struct.rerr, %struct.rerr* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_endp = getelementptr inbounds %struct.regex_t, %struct.regex_t* %4, i32 0, i32 2
  %5 = load i8*, i8** %re_endp, align 8
  %call = call i32 @strcmp(i8* %3, i8* %5) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.rerr*, %struct.rerr** %r, align 8
  %incdec.ptr = getelementptr inbounds %struct.rerr, %struct.rerr* %6, i32 1
  store %struct.rerr* %incdec.ptr, %struct.rerr** %r, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load %struct.rerr*, %struct.rerr** %r, align 8
  %code2 = getelementptr inbounds %struct.rerr, %struct.rerr* %7, i32 0, i32 0
  %8 = load i32, i32* %code2, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8** %retval
  br label %return

if.end.5:                                         ; preds = %for.end
  %9 = load i8*, i8** %localbuf.addr, align 8
  %10 = load i32, i32* %localbufsize.addr, align 4
  %conv = sext i32 %10 to i64
  %11 = load %struct.rerr*, %struct.rerr** %r, align 8
  %code6 = getelementptr inbounds %struct.rerr, %struct.rerr* %11, i32 0, i32 0
  %12 = load i32, i32* %code6, align 4
  %call7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %9, i64 %conv, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i32 %12) #4
  %13 = load i8*, i8** %localbuf.addr, align 8
  store i8* %13, i8** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  %14 = load i8*, i8** %retval
  ret i8* %14
}

declare i64 @cli_strlcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
