; ModuleID = './src/versions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%d.%d%c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid version number `%s'\00", align 1

; Function Attrs: nounwind uwtable
define void @version_set_to_null(i32* %version) #0 {
entry:
  %version.addr = alloca i32*, align 8
  %n = alloca i64, align 8
  store i32* %version, i32** %version.addr, align 8
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n, align 8
  %cmp = icmp ult i64 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %n, align 8
  %2 = load i32*, i32** %version.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %1
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %n, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @version_null_p(i32* %version) #0 {
entry:
  %retval = alloca i1, align 1
  %version.addr = alloca i32*, align 8
  %n = alloca i64, align 8
  store i32* %version, i32** %version.addr, align 8
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n, align 8
  %cmp = icmp ult i64 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %n, align 8
  %2 = load i32*, i32** %version.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %1
  %3 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, i64* %n, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i1, i1* %retval
  ret i1 %5
}

; Function Attrs: nounwind uwtable
define i32 @version_cmp(i32* %v1, i32* %v2) #0 {
entry:
  %retval = alloca i32, align 4
  %v1.addr = alloca i32*, align 8
  %v2.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  store i32* %v1, i32** %v1.addr, align 8
  store i32* %v2, i32** %v2.addr, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %n, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %v1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %n, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %v2.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp slt i32 %3, %6
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* %n, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %v1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %n, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %v2.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %9, %12
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %13 = load i32, i32* %n, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @version_cpy(i32* %d, i32* %s) #0 {
entry:
  %d.addr = alloca i32*, align 8
  %s.addr = alloca i32*, align 8
  store i32* %d, i32** %d.addr, align 8
  store i32* %s, i32** %s.addr, align 8
  %0 = load i32*, i32** %d.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = load i32*, i32** %s.addr, align 8
  %3 = bitcast i32* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 12, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @version_self_print(i32* %version, %struct._IO_FILE* %stream) #0 {
entry:
  %version.addr = alloca i32*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i32* %version, i32** %version.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i32*, i32** %version.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2
  %1 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i32*, i32** %version.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32*, i32** %version.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32*, i32** %version.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 2
  %8 = load i32, i32* %arrayidx3, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %4, i32 %6, i32 %8)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %10 = load i32*, i32** %version.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx4, align 4
  %12 = load i32*, i32** %version.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx5, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %11, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @version_length(i32* %version) #0 {
entry:
  %retval = alloca i32, align 4
  %version.addr = alloca i32*, align 8
  store i32* %version, i32** %version.addr, align 8
  %0 = load i32*, i32** %version.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2
  %1 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %version.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %cmp = icmp slt i32 %3, 10
  %cond = select i1 %cmp, i32 1, i32 2
  %add = add nsw i32 2, %cond
  %4 = load i32*, i32** %version.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp slt i32 %5, 10
  %cond4 = select i1 %cmp3, i32 1, i32 2
  %add5 = add nsw i32 %add, %cond4
  %add6 = add nsw i32 %add5, 1
  store i32 %add6, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32*, i32** %version.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp slt i32 %7, 10
  %cond9 = select i1 %cmp8, i32 1, i32 2
  %add10 = add nsw i32 1, %cond9
  %8 = load i32*, i32** %version.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp slt i32 %9, 10
  %cond13 = select i1 %cmp12, i32 1, i32 2
  %add14 = add nsw i32 %add10, %cond13
  store i32 %add14, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @version_add(i32* %v1, i32* %v2) #0 {
entry:
  %v1.addr = alloca i32*, align 8
  %v2.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  store i32* %v1, i32** %v1.addr, align 8
  store i32* %v2, i32** %v2.addr, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %n, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %v2.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %n, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %v1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %6, %3
  store i32 %add, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @string_to_version(i8* %version_string, i32* %version) #0 {
entry:
  %version_string.addr = alloca i8*, align 8
  %version.addr = alloca i32*, align 8
  %d = alloca i8, align 1
  store i8* %version_string, i8** %version_string.addr, align 8
  store i32* %version, i32** %version.addr, align 8
  %0 = load i8*, i8** %version_string.addr, align 8
  %1 = load i32*, i32** %version.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32*, i32** %version.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 1
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32* %arrayidx, i32* %arrayidx1, i8* %d) #1
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32*, i32** %version.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 2
  store i32 0, i32* %arrayidx2, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load i8, i8* %d, align 1
  %conv = sext i8 %4 to i32
  %sub = sub nsw i32 %conv, 97
  %add = add nsw i32 %sub, 1
  %5 = load i32*, i32** %version.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 2
  store i32 %add, i32* %arrayidx4, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #1
  %6 = load i8*, i8** %version_string.addr, align 8
  %call6 = call i8* @quotearg(i8* %6)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call5, i8* %call6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare void @error(i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @quotearg(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
