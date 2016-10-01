; ModuleID = './MultiSource.Applications.ClamAV/9.libclamav_line.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"lineLink: linkcount too large (%s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @lineCreate(i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %ret = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  store i64 %call, i64* %size, align 8
  %1 = load i64, i64* %size, align 8
  %add = add i64 %1, 2
  %call1 = call i8* @cli_malloc(i64 %add)
  store i8* %call1, i8** %ret, align 8
  %2 = load i8*, i8** %ret, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %ret, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 1, i8* %arrayidx, align 1
  %4 = load i8*, i8** %ret, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx2, i8* %5, i64 %6, i32 1, i1 false)
  %7 = load i64, i64* %size, align 8
  %add3 = add i64 %7, 1
  %8 = load i8*, i8** %ret, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %add3
  store i8 0, i8* %arrayidx4, align 1
  %9 = load i8*, i8** %ret, align 8
  store i8* %9, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i8* @cli_malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i8* @lineLink(i8* %line) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8
  %call = call i8* @lineGetData(i8* %2)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8* %call)
  %3 = load i8*, i8** %line.addr, align 8
  %call2 = call i8* @lineGetData(i8* %3)
  %call3 = call i8* @lineCreate(i8* %call2)
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %line.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx4, align 1
  %inc = add i8 %5, 1
  store i8 %inc, i8* %arrayidx4, align 1
  %6 = load i8*, i8** %line.addr, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

declare void @cli_dbgmsg(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @lineGetData(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arrayidx, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define i8* @lineUnlink(i8* %line) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %dec = add i8 %1, -1
  store i8 %dec, i8* %arrayidx, align 1
  %conv = sext i8 %dec to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8
  call void @free(i8* %2) #3
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %line.addr, align 8
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
