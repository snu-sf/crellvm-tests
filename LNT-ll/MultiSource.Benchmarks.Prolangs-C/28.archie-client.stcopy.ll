; ModuleID = './MultiSource.Benchmarks.Prolangs-C/28.archie-client.stcopy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@string_count = global i32 0, align 4
@string_max = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i8* @stcopy(i8* %st) #0 {
entry:
  %retval = alloca i8*, align 8
  %st.addr = alloca i8*, align 8
  store i8* %st, i8** %st.addr, align 8
  %0 = load i8*, i8** %st.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @string_max, align 4
  %2 = load i32, i32* @string_count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @string_count, align 4
  %cmp = icmp slt i32 %1, %inc
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load i32, i32* @string_count, align 4
  store i32 %3, i32* @string_max, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %4 = load i8*, i8** %st.addr, align 8
  %call = call i64 @strlen(i8* %4)
  %add = add i64 %call, 1
  %call3 = call noalias i8* @malloc(i64 %add) #3
  %5 = load i8*, i8** %st.addr, align 8
  %call4 = call i8* @strcpy(i8* %call3, i8* %5)
  store i8* %call4, i8** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @stcopyr(i8* %s, i8* %r) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %r.addr = alloca i8*, align 8
  %sl = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %r, i8** %r.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %r.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %r.addr, align 8
  call void @free(i8* %2) #3
  %3 = load i32, i32* @string_count, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @string_count, align 4
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %s.addr, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %5 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %5)
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %sl, align 4
  %6 = load i8*, i8** %r.addr, align 8
  %tobool5 = icmp ne i8* %6, null
  br i1 %tobool5, label %if.then.6, label %if.else.15

if.then.6:                                        ; preds = %if.end.4
  %7 = load i8*, i8** %r.addr, align 8
  %call7 = call i64 @strlen(i8* %7)
  %add8 = add i64 %call7, 1
  %8 = load i32, i32* %sl, align 4
  %conv9 = sext i32 %8 to i64
  %cmp = icmp ult i64 %add8, %conv9
  br i1 %cmp, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.6
  %9 = load i8*, i8** %r.addr, align 8
  call void @free(i8* %9) #3
  %10 = load i32, i32* %sl, align 4
  %conv12 = sext i32 %10 to i64
  %call13 = call noalias i8* @malloc(i64 %conv12) #3
  store i8* %call13, i8** %r.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.6
  br label %if.end.22

if.else.15:                                       ; preds = %if.end.4
  %11 = load i32, i32* %sl, align 4
  %conv16 = sext i32 %11 to i64
  %call17 = call noalias i8* @malloc(i64 %conv16) #3
  store i8* %call17, i8** %r.addr, align 8
  %12 = load i32, i32* @string_count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @string_count, align 4
  %13 = load i32, i32* @string_max, align 4
  %14 = load i32, i32* @string_count, align 4
  %cmp18 = icmp slt i32 %13, %14
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else.15
  %15 = load i32, i32* @string_count, align 4
  store i32 %15, i32* @string_max, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.else.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.14
  %16 = load i8*, i8** %r.addr, align 8
  %17 = load i8*, i8** %s.addr, align 8
  %call23 = call i8* @strcpy(i8* %16, i8* %17)
  store i8* %call23, i8** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.3, %if.then
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @stfree(i8* %st) #0 {
entry:
  %st.addr = alloca i8*, align 8
  store i8* %st, i8** %st.addr, align 8
  %0 = load i8*, i8** %st.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %st.addr, align 8
  call void @free(i8* %1) #3
  %2 = load i32, i32* @string_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @string_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
