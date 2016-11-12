; ModuleID = './libgimp/gimppalette.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_get_foreground(%struct._GimpRGB* %foreground) #0 {
entry:
  %foreground.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %foreground, %struct._GimpRGB** %foreground.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %foreground.addr, align 8
  %call = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %0)
  ret i32 %call
}

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_get_background(%struct._GimpRGB* %background) #0 {
entry:
  %background.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %background, %struct._GimpRGB** %background.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %background.addr, align 8
  %call = call i32 @gimp_context_get_background(%struct._GimpRGB* %0)
  ret i32 %call
}

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_set_foreground(%struct._GimpRGB* %foreground) #0 {
entry:
  %foreground.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %foreground, %struct._GimpRGB** %foreground.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %foreground.addr, align 8
  %call = call i32 @gimp_context_set_foreground(%struct._GimpRGB* %0)
  ret i32 %call
}

declare i32 @gimp_context_set_foreground(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_set_background(%struct._GimpRGB* %background) #0 {
entry:
  %background.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %background, %struct._GimpRGB** %background.addr, align 8
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %background.addr, align 8
  %call = call i32 @gimp_context_set_background(%struct._GimpRGB* %0)
  ret i32 %call
}

declare i32 @gimp_context_set_background(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_set_default_colors() #0 {
entry:
  %call = call i32 @gimp_context_set_default_colors()
  ret i32 %call
}

declare i32 @gimp_context_set_default_colors() #1

; Function Attrs: nounwind uwtable
define i32 @gimp_palette_swap_colors() #0 {
entry:
  %call = call i32 @gimp_context_swap_colors()
  ret i32 %call
}

declare i32 @gimp_context_swap_colors() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
