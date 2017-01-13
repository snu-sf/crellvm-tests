; ModuleID = './MultiSource.Applications.ClamAV/7.clamscan_others.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%union.__WAIT_STATUS = type { %union.wait* }
%union.wait = type { i32 }
%union.anon = type { i32 }
%union.anon.1 = type { i32 }
%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type opaque
%struct.regmatch_t = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"!fileinfo(): Unknown option.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"ERROR: setgid(%d) failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ERROR: setuid(%d) failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"!%s: Could not parse regular expression %s.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @fileinfo(i8* %filename, i16 signext %i) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %i.addr = alloca i16, align 2
  %infostruct = alloca %struct.stat, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i16 %i, i16* %i.addr, align 2
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %infostruct) #4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, i16* %i.addr, align 2
  %conv = sext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %infostruct, i32 0, i32 8
  %2 = load i64, i64* %st_size, align 8
  %conv1 = trunc i64 %2 to i32
  store i32 %conv1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %infostruct, i32 0, i32 3
  %3 = load i32, i32* %st_mode, align 4
  store i32 %3, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %infostruct, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %4 = load i64, i64* %tv_sec, align 8
  %conv4 = trunc i64 %4 to i32
  store i32 %conv4, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %if.end
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %infostruct, i32 0, i32 4
  %5 = load i32, i32* %st_uid, align 4
  store i32 %5, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %if.end
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %infostruct, i32 0, i32 5
  %6 = load i32, i32* %st_gid, align 4
  store i32 %6, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %call7 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

return:                                           ; preds = %sw.bb.6, %sw.bb.5, %sw.bb.3, %sw.bb.2, %sw.bb, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

declare i32 @logg(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @checkaccess(i8* %path, i8* %username, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %username.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %user = alloca %struct.passwd*, align 8
  %ret = alloca i32, align 4
  %status = alloca i32, align 4
  %agg.tmp = alloca %union.__WAIT_STATUS, align 8
  %.compoundliteral = alloca %union.anon, align 4
  %.compoundliteral22 = alloca %union.anon.1, align 4
  store i8* %path, i8** %path.addr, align 8
  store i8* %username, i8** %username.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 0, i32* %ret, align 4
  %call = call i32 @geteuid() #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else.29, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %username.addr, align 8
  %call1 = call %struct.passwd* @getpwnam(i8* %0)
  store %struct.passwd* %call1, %struct.passwd** %user, align 8
  %cmp = icmp eq %struct.passwd* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call3 = call i32 @fork() #4
  switch i32 %call3, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  %1 = load %struct.passwd*, %struct.passwd** %user, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %1, i32 0, i32 3
  %2 = load i32, i32* %pw_gid, align 4
  %call5 = call i32 @setgid(i32 %2) #4
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %sw.bb.4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.passwd*, %struct.passwd** %user, align 8
  %pw_gid8 = getelementptr inbounds %struct.passwd, %struct.passwd* %4, i32 0, i32 3
  %5 = load i32, i32* %pw_gid8, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 %5)
  call void @exit(i32 0) #5
  unreachable

if.end.10:                                        ; preds = %sw.bb.4
  %6 = load %struct.passwd*, %struct.passwd** %user, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %6, i32 0, i32 2
  %7 = load i32, i32* %pw_uid, align 4
  %call11 = call i32 @setuid(i32 %7) #4
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load %struct.passwd*, %struct.passwd** %user, align 8
  %pw_uid14 = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 2
  %10 = load i32, i32* %pw_uid14, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 %10)
  call void @exit(i32 0) #5
  unreachable

if.end.16:                                        ; preds = %if.end.10
  %11 = load i8*, i8** %path.addr, align 8
  %12 = load i32, i32* %mode.addr, align 4
  %call17 = call i32 @access(i8* %11, i32 %12) #4
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  call void @exit(i32 0) #5
  unreachable

if.else:                                          ; preds = %if.end.16
  call void @exit(i32 1) #5
  unreachable

sw.default:                                       ; preds = %if.end
  %__iptr = bitcast %union.__WAIT_STATUS* %agg.tmp to i32**
  store i32* %status, i32** %__iptr, align 8
  %coerce.dive = getelementptr %union.__WAIT_STATUS, %union.__WAIT_STATUS* %agg.tmp, i32 0, i32 0
  %13 = load %union.wait*, %union.wait** %coerce.dive, align 8
  %call20 = call i32 @wait(%union.wait* %13)
  %__in = bitcast %union.anon* %.compoundliteral to i32*
  %14 = load i32, i32* %status, align 4
  store i32 %14, i32* %__in, align 4
  %__i = bitcast %union.anon* %.compoundliteral to i32*
  %15 = load i32, i32* %__i, align 4
  %and = and i32 %15, 127
  %cmp21 = icmp eq i32 %and, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %sw.default
  %__in23 = bitcast %union.anon.1* %.compoundliteral22 to i32*
  %16 = load i32, i32* %status, align 4
  store i32 %16, i32* %__in23, align 4
  %__i24 = bitcast %union.anon.1* %.compoundliteral22 to i32*
  %17 = load i32, i32* %__i24, align 4
  %and25 = and i32 %17, 65280
  %shr = ashr i32 %and25, 8
  %cmp26 = icmp eq i32 %shr, 1
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  store i32 1, i32* %ret, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.28
  br label %if.end.34

if.else.29:                                       ; preds = %entry
  %18 = load i8*, i8** %path.addr, align 8
  %19 = load i32, i32* %mode.addr, align 4
  %call30 = call i32 @access(i8* %18, i32 %19) #4
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.else.29
  store i32 1, i32* %ret, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %sw.epilog
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %sw.bb, %if.then.2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare i32 @geteuid() #1

declare %struct.passwd* @getpwnam(i8*) #2

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: nounwind
declare i32 @setgid(i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @setuid(i32) #1

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #1

declare i32 @wait(%union.wait*) #2

; Function Attrs: nounwind uwtable
define i32 @match_regex(i8* %filename, i8* %pattern) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %reg = alloca %struct.regex_t, align 8
  %match = alloca i32, align 4
  %flags = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 1, i32* %flags, align 4
  %0 = load i8*, i8** %pattern.addr, align 8
  %1 = load i32, i32* %flags, align 4
  %call = call i32 @cli_regcomp(%struct.regex_t* %reg, i8* %0, i32 %1)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i8*, i8** %pattern.addr, align 8
  %call1 = call i32 (i8*, ...) @logg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i8* %2, i8* %3)
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 @cli_regexec(%struct.regex_t* %reg, i8* %4, i64 0, %struct.regmatch_t* null, i32 0)
  %cmp3 = icmp eq i32 %call2, 1
  %cond = select i1 %cmp3, i32 0, i32 1
  store i32 %cond, i32* %match, align 4
  call void @cli_regfree(%struct.regex_t* %reg)
  %5 = load i32, i32* %match, align 4
  store i32 %5, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @cli_regcomp(%struct.regex_t*, i8*, i32) #2

declare i32 @cli_regexec(%struct.regex_t*, i8*, i64, %struct.regmatch_t*, i32) #2

declare void @cli_regfree(%struct.regex_t*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
