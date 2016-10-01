; ModuleID = './MultiSource.Applications.spiff/10.visual.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"visual mode is not available on this machine\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @V_visual(i32 %d) #0 {
entry:
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0))
  %0 = load i32, i32* %d.addr, align 4
  %sub = sub nsw i32 0, %0
  ret i32 %sub
}

declare void @Z_fatal(...) #1

; Function Attrs: nounwind uwtable
define void @V_cleanup() #0 {
entry:
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
