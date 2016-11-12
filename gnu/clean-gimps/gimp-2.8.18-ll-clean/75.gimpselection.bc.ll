; ModuleID = './libgimp/gimpselection.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gimp_selection_float(i32 %image_ID, i32 %drawable_ID, i32 %offx, i32 %offy) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %offx.addr = alloca i32, align 4
  %offy.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %offx, i32* %offx.addr, align 4
  store i32 %offy, i32* %offy.addr, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %1 = load i32, i32* %offx.addr, align 4
  %2 = load i32, i32* %offy.addr, align 4
  %call = call i32 @_gimp_selection_float(i32 %0, i32 %1, i32 %2)
  ret i32 %call
}

declare hidden i32 @_gimp_selection_float(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_selection_clear(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_selection_none(i32 %0)
  ret i32 %call
}

declare i32 @gimp_selection_none(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
