; ModuleID = './lib/path-concat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @path_concat(i8* %dir, i8* %base, i8** %base_in_result) #0 {
entry:
  %retval = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %base_in_result.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  %p_concat = alloca i8*, align 8
  %base_len = alloca i64, align 8
  %dir_len = alloca i64, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8** %base_in_result, i8*** %base_in_result.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %base.addr, align 8
  %call = call noalias i8* @strdup(i8* %1) #4
  store i8* %call, i8** %p_concat, align 8
  %2 = load i8**, i8*** %base_in_result.addr, align 8
  %tobool1 = icmp ne i8** %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load i8*, i8** %p_concat, align 8
  %4 = load i8**, i8*** %base_in_result.addr, align 8
  store i8* %3, i8** %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %5 = load i8*, i8** %p_concat, align 8
  store i8* %5, i8** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %6 = load i8*, i8** %base.addr, align 8
  %call4 = call i64 @strlen(i8* %6) #6
  store i64 %call4, i64* %base_len, align 8
  %7 = load i8*, i8** %dir.addr, align 8
  %call5 = call i64 @strlen(i8* %7) #6
  store i64 %call5, i64* %dir_len, align 8
  %8 = load i64, i64* %dir_len, align 8
  %9 = load i64, i64* %base_len, align 8
  %add = add i64 %8, %9
  %add6 = add i64 %add, 2
  %call7 = call i8* @malloc(i64 %add6)
  store i8* %call7, i8** %p_concat, align 8
  %10 = load i8*, i8** %p_concat, align 8
  %tobool8 = icmp ne i8* %10, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.3
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %11 = load i8*, i8** %p_concat, align 8
  %12 = load i8*, i8** %dir.addr, align 8
  %13 = load i64, i64* %dir_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 %13, i32 1, i1 false)
  %14 = load i64, i64* %dir_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %14
  store i8* %add.ptr, i8** %p, align 8
  %15 = load i8*, i8** %p, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %15, i64 -1
  %16 = load i8, i8* %add.ptr11, align 1
  %conv = sext i8 %16 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.10
  %17 = load i8*, i8** %base.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv13 = sext i8 %18 to i32
  %cmp14 = icmp eq i32 %conv13, 47
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %if.end.10
  %20 = load i8*, i8** %p, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %20, i64 -1
  %21 = load i8, i8* %add.ptr17, align 1
  %conv18 = sext i8 %21 to i32
  %cmp19 = icmp eq i32 %conv18, 47
  br i1 %cmp19, label %if.end.27, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %if.else
  %22 = load i8*, i8** %base.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv22 = sext i8 %23 to i32
  %cmp23 = icmp eq i32 %conv22, 47
  br i1 %cmp23, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.21
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8
  store i8 47, i8* %24, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true.21, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.16
  %25 = load i8**, i8*** %base_in_result.addr, align 8
  %tobool29 = icmp ne i8** %25, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %26 = load i8*, i8** %p, align 8
  %27 = load i8**, i8*** %base_in_result.addr, align 8
  store i8* %26, i8** %27, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  %28 = load i8*, i8** %p, align 8
  %29 = load i8*, i8** %base.addr, align 8
  %30 = load i64, i64* %base_len, align 8
  %add32 = add i64 %30, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 %add32, i32 1, i1 false)
  %31 = load i8*, i8** %p_concat, align 8
  store i8* %31, i8** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.9, %if.end
  %32 = load i8*, i8** %retval
  ret i8* %32
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i8* @xpath_concat(i8* %dir, i8* %base, i8** %base_in_result) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %base_in_result.addr = alloca i8**, align 8
  %res = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8** %base_in_result, i8*** %base_in_result.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %1 = load i8*, i8** %base.addr, align 8
  %2 = load i8**, i8*** %base_in_result.addr, align 8
  %call = call i8* @path_concat(i8* %0, i8* %1, i8** %2)
  store i8* %call, i8** %res, align 8
  %3 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %res, align 8
  ret i8* %4

if.end:                                           ; preds = %entry
  call void @xalloc_die() #7
  unreachable
}

; Function Attrs: noreturn
declare void @xalloc_die() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
