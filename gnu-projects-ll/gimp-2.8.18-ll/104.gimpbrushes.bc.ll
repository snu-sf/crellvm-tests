; ModuleID = './libgimp/gimpbrushes.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @gimp_brushes_get_opacity() #0 {
entry:
  %call = call double @gimp_context_get_opacity()
  ret double %call
}

declare double @gimp_context_get_opacity() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_brushes_set_opacity(double %opacity) #0 {
entry:
  %opacity.addr = alloca double, align 8
  store double %opacity, double* %opacity.addr, align 8
  %0 = load double, double* %opacity.addr, align 8
  %call = call i32 @gimp_context_set_opacity(double %0)
  ret i32 %call
}

declare i32 @gimp_context_set_opacity(double) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_brushes_get_paint_mode() #0 {
entry:
  %call = call i32 @gimp_context_get_paint_mode()
  ret i32 %call
}

declare i32 @gimp_context_get_paint_mode() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_brushes_set_paint_mode(i32 %paint_mode) #0 {
entry:
  %paint_mode.addr = alloca i32, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  %0 = load i32, i32* %paint_mode.addr, align 4
  %call = call i32 @gimp_context_set_paint_mode(i32 %0)
  ret i32 %call
}

declare i32 @gimp_context_set_paint_mode(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_brushes_set_brush(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @gimp_context_set_brush(i8* %0)
  ret i32 %call
}

declare i32 @gimp_context_set_brush(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
