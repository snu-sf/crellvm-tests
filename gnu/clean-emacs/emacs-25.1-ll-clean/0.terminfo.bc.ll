; ModuleID = './src/terminfo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UP = common global i8* null, align 8
@BC = common global i8* null, align 8
@PC = common global i8 0, align 1

; Function Attrs: nounwind uwtable
define i8* @tparam(i8* %string, i8* %outstring, i32 %len, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %outstring.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %arg3.addr = alloca i32, align 4
  %arg4.addr = alloca i32, align 4
  %temp = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  store i8* %outstring, i8** %outstring.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %arg1, i32* %arg1.addr, align 4
  store i32 %arg2, i32* %arg2.addr, align 4
  store i32 %arg3, i32* %arg3.addr, align 4
  store i32 %arg4, i32* %arg4.addr, align 4
  %0 = load i8*, i8** %outstring.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @emacs_abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load i32, i32* %arg1.addr, align 4
  %4 = load i32, i32* %arg2.addr, align 4
  %5 = load i32, i32* %arg3.addr, align 4
  %6 = load i32, i32* %arg4.addr, align 4
  %call = call i8* (i8*, ...) @tparm(i8* %2, i32 %3, i32 %4, i32 %5, i32 %6)
  store i8* %call, i8** %temp, align 8
  %7 = load i8*, i8** %temp, align 8
  %call2 = call noalias i8* @xstrdup(i8* %7)
  ret i8* %call2
}

; Function Attrs: noreturn
declare void @emacs_abort() #1

declare i8* @tparm(i8*, ...) #2

declare noalias i8* @xstrdup(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
