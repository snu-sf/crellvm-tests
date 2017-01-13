; ModuleID = './lib/stream.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stream = type { i8, %struct._IO_FILE* }

@.str = private unnamed_addr constant [13 x i8] c"perl_command\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stream.c\00", align 1
@__PRETTY_FUNCTION__.stream_perl_open_backup = private unnamed_addr constant [86 x i8] c"struct stream *stream_perl_open_backup(const char *, enum backup_type, const char **)\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"perl-open (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\09 >|\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define %struct.stream* @stream_ropen(i8* %command, i1 zeroext %is_file) #0 {
entry:
  %command.addr = alloca i8*, align 8
  %is_file.addr = alloca i8, align 1
  store i8* %command, i8** %command.addr, align 8
  %frombool = zext i1 %is_file to i8
  store i8 %frombool, i8* %is_file.addr, align 1
  %0 = load i8*, i8** %command.addr, align 8
  %1 = load i8, i8* %is_file.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call %struct.stream* @_stream_ropen(i8* %0, i1 zeroext %tobool)
  ret %struct.stream* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.stream* @_stream_ropen(i8* %command, i1 zeroext %is_file) #1 {
entry:
  %command.addr = alloca i8*, align 8
  %is_file.addr = alloca i8, align 1
  %res = alloca %struct.stream*, align 8
  store i8* %command, i8** %command.addr, align 8
  %frombool = zext i1 %is_file to i8
  store i8 %frombool, i8* %is_file.addr, align 1
  %call = call i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.stream*
  store %struct.stream* %0, %struct.stream** %res, align 8
  %1 = load i8, i8* %is_file.addr, align 1
  %tobool = trunc i8 %1 to i1
  %2 = load %struct.stream*, %struct.stream** %res, align 8
  %is_file1 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 0
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, i8* %is_file1, align 1
  %3 = load %struct.stream*, %struct.stream** %res, align 8
  %is_file3 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0
  %4 = load i8, i8* %is_file3, align 1
  %tobool4 = trunc i8 %4 to i1
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %command.addr, align 8
  %call5 = call %struct._IO_FILE* @xrpopen(i8* %5)
  %6 = load %struct.stream*, %struct.stream** %res, align 8
  %fp = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 1
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %fp, align 8
  br label %if.end.13

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %command.addr, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.else.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %8 = load i8*, i8** %command.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.else.11, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false
  %10 = load i8*, i8** %command.addr, align 8
  %call9 = call %struct._IO_FILE* @xrfopen(i8* %10)
  %11 = load %struct.stream*, %struct.stream** %res, align 8
  %fp10 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fp10, align 8
  br label %if.end

if.else.11:                                       ; preds = %lor.lhs.false, %if.else
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %13 = load %struct.stream*, %struct.stream** %res, align 8
  %fp12 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 1
  store %struct._IO_FILE* %12, %struct._IO_FILE** %fp12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %14 = load %struct.stream*, %struct.stream** %res, align 8
  ret %struct.stream* %14
}

; Function Attrs: nounwind uwtable
define %struct.stream* @stream_wopen(i8* %command, i1 zeroext %is_file) #0 {
entry:
  %command.addr = alloca i8*, align 8
  %is_file.addr = alloca i8, align 1
  store i8* %command, i8** %command.addr, align 8
  %frombool = zext i1 %is_file to i8
  store i8 %frombool, i8* %is_file.addr, align 1
  %0 = load i8*, i8** %command.addr, align 8
  %1 = load i8, i8* %is_file.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call %struct.stream* @_stream_wopen(i8* %0, i1 zeroext %tobool, i32 0)
  ret %struct.stream* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.stream* @_stream_wopen(i8* %command, i1 zeroext %is_file, i32 %backup_type) #1 {
entry:
  %command.addr = alloca i8*, align 8
  %is_file.addr = alloca i8, align 1
  %backup_type.addr = alloca i32, align 4
  %res = alloca %struct.stream*, align 8
  store i8* %command, i8** %command.addr, align 8
  %frombool = zext i1 %is_file to i8
  store i8 %frombool, i8* %is_file.addr, align 1
  store i32 %backup_type, i32* %backup_type.addr, align 4
  %call = call i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.stream*
  store %struct.stream* %0, %struct.stream** %res, align 8
  %1 = load i8, i8* %is_file.addr, align 1
  %tobool = trunc i8 %1 to i1
  %2 = load %struct.stream*, %struct.stream** %res, align 8
  %is_file1 = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 0
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, i8* %is_file1, align 1
  %3 = load %struct.stream*, %struct.stream** %res, align 8
  %is_file3 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0
  %4 = load i8, i8* %is_file3, align 1
  %tobool4 = trunc i8 %4 to i1
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %command.addr, align 8
  %call5 = call %struct._IO_FILE* @xwpopen(i8* %5)
  %6 = load %struct.stream*, %struct.stream** %res, align 8
  %fp = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 1
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %fp, align 8
  br label %if.end.13

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %command.addr, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.else.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %8 = load i8*, i8** %command.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.else.11, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false
  %10 = load i8*, i8** %command.addr, align 8
  %11 = load i32, i32* %backup_type.addr, align 4
  %call9 = call %struct._IO_FILE* @fopen_backup(i8* %10, i32 %11)
  %12 = load %struct.stream*, %struct.stream** %res, align 8
  %fp10 = getelementptr inbounds %struct.stream, %struct.stream* %12, i32 0, i32 1
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fp10, align 8
  br label %if.end

if.else.11:                                       ; preds = %lor.lhs.false, %if.else
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = load %struct.stream*, %struct.stream** %res, align 8
  %fp12 = getelementptr inbounds %struct.stream, %struct.stream* %14, i32 0, i32 1
  store %struct._IO_FILE* %13, %struct._IO_FILE** %fp12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %15 = load %struct.stream*, %struct.stream** %res, align 8
  ret %struct.stream* %15
}

; Function Attrs: nounwind uwtable
define %struct.stream* @stream_wopen_backup(i8* %command, i1 zeroext %is_file, i32 %backup_type) #0 {
entry:
  %command.addr = alloca i8*, align 8
  %is_file.addr = alloca i8, align 1
  %backup_type.addr = alloca i32, align 4
  store i8* %command, i8** %command.addr, align 8
  %frombool = zext i1 %is_file to i8
  store i8 %frombool, i8* %is_file.addr, align 1
  store i32 %backup_type, i32* %backup_type.addr, align 4
  %0 = load i8*, i8** %command.addr, align 8
  %1 = load i8, i8* %is_file.addr, align 1
  %tobool = trunc i8 %1 to i1
  %2 = load i32, i32* %backup_type.addr, align 4
  %call = call %struct.stream* @_stream_wopen(i8* %0, i1 zeroext %tobool, i32 %2)
  ret %struct.stream* %call
}

; Function Attrs: nounwind uwtable
define %struct.stream* @stream_perl_open_backup(i8* %perl_command, i32 %backup, i8** %name) #0 {
entry:
  %retval = alloca %struct.stream*, align 8
  %perl_command.addr = alloca i8*, align 8
  %backup.addr = alloca i32, align 4
  %name.addr = alloca i8**, align 8
  %cp = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %perl_command, i8** %perl_command.addr, align 8
  store i32 %backup, i32* %backup.addr, align 4
  store i8** %name, i8*** %name.addr, align 8
  %0 = load i8*, i8** %perl_command.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 127, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__PRETTY_FUNCTION__.stream_perl_open_backup, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  br label %do.body

do.body:                                          ; preds = %cond.end
  %2 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 64, %2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %perl_command.addr, align 8
  %call = call i8* @quotearg(i8* %4)
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i8*, i8** %perl_command.addr, align 8
  %6 = load i8*, i8** %perl_command.addr, align 8
  %call3 = call i64 @strspn(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #7
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %call3
  %7 = load i8**, i8*** %name.addr, align 8
  store i8* %add.ptr, i8** %7, align 8
  %8 = load i8*, i8** %perl_command.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  switch i32 %conv, label %sw.default [
    i32 124, label %sw.bb
    i32 62, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %do.end
  %10 = load i8**, i8*** %name.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %call4 = call %struct.stream* @_stream_wopen(i8* %11, i1 zeroext false, i32 0)
  store %struct.stream* %call4, %struct.stream** %retval
  br label %return

sw.bb.5:                                          ; preds = %do.end
  %12 = load i8**, i8*** %name.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %backup.addr, align 4
  %call6 = call %struct.stream* @_stream_wopen(i8* %13, i1 zeroext true, i32 %14)
  store %struct.stream* %call6, %struct.stream** %retval
  br label %return

sw.default:                                       ; preds = %do.end
  %15 = load i8*, i8** %perl_command.addr, align 8
  %call7 = call i64 @strlen(i8* %15) #7
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %len, align 4
  %16 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom = sext i32 %sub to i64
  %17 = load i8*, i8** %perl_command.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %18 to i32
  switch i32 %conv9, label %sw.default.16 [
    i32 124, label %sw.bb.10
  ]

sw.bb.10:                                         ; preds = %sw.default
  %19 = load i32, i32* %len, align 4
  %conv11 = sext i32 %19 to i64
  %mul = mul i64 1, %conv11
  %20 = alloca i8, i64 %mul
  store i8* %20, i8** %cp, align 8
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8**, i8*** %name.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %len, align 4
  %sub12 = sub nsw i32 %24, 1
  %conv13 = sext i32 %sub12 to i64
  %call14 = call i8* @strncpy(i8* %21, i8* %23, i64 %conv13) #8
  %25 = load i8*, i8** %cp, align 8
  %call15 = call %struct.stream* @_stream_ropen(i8* %25, i1 zeroext false)
  store %struct.stream* %call15, %struct.stream** %retval
  br label %return

sw.default.16:                                    ; preds = %sw.default
  %26 = load i8**, i8*** %name.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %call17 = call %struct.stream* @_stream_ropen(i8* %27, i1 zeroext true)
  store %struct.stream* %call17, %struct.stream** %retval
  br label %return

return:                                           ; preds = %sw.default.16, %sw.bb.10, %sw.bb.5, %sw.bb
  %28 = load %struct.stream*, %struct.stream** %retval
  ret %struct.stream* %28
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i8* @quotearg(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define void @stream_close(%struct.stream* %stream) #0 {
entry:
  %stream.addr = alloca %struct.stream*, align 8
  store %struct.stream* %stream, %struct.stream** %stream.addr, align 8
  %0 = load %struct.stream*, %struct.stream** %stream.addr, align 8
  %is_file = getelementptr inbounds %struct.stream, %struct.stream* %0, i32 0, i32 0
  %1 = load i8, i8* %is_file, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.stream*, %struct.stream** %stream.addr, align 8
  %fp = getelementptr inbounds %struct.stream, %struct.stream* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.stream*, %struct.stream** %stream.addr, align 8
  %fp1 = getelementptr inbounds %struct.stream, %struct.stream* %4, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i32 @pclose(%struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.stream*, %struct.stream** %stream.addr, align 8
  %7 = bitcast %struct.stream* %6 to i8*
  call void @free(i8* %7) #8
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @pclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @free(i8*) #5

declare i8* @xmalloc(i64) #3

declare %struct._IO_FILE* @xrpopen(i8*) #3

declare %struct._IO_FILE* @xrfopen(i8*) #3

declare %struct._IO_FILE* @xwpopen(i8*) #3

declare %struct._IO_FILE* @fopen_backup(i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
