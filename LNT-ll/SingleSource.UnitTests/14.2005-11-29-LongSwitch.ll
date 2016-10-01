; ModuleID = './SingleSource.UnitTests/14.2005-11-29-LongSwitch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"foo = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @foo(i64 %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, i64* %v.addr, align 8
  %0 = load i64, i64* %v.addr, align 8
  switch i64 %0, label %sw.epilog [
    i64 0, label %sw.bb
    i64 -1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @foo(i64 4294967295)
  store i32 %call, i32* %r, align 4
  %0 = load i32, i32* %r, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %0)
  %1 = load i32, i32* %r, align 4
  ret i32 %1
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
