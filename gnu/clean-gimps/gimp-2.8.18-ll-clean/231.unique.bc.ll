; ModuleID = './app/unique.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gimp_unique_open(i8** %filenames, i32 %as_new) #0 {
entry:
  %filenames.addr = alloca i8**, align 8
  %as_new.addr = alloca i32, align 4
  store i8** %filenames, i8*** %filenames.addr, align 8
  store i32 %as_new, i32* %as_new.addr, align 4
  %0 = load i8**, i8*** %filenames.addr, align 8
  %1 = load i32, i32* %as_new.addr, align 4
  %call = call i32 @gimp_unique_dbus_open(i8** %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unique_dbus_open(i8** %filenames, i32 %as_new) #0 {
entry:
  %filenames.addr = alloca i8**, align 8
  %as_new.addr = alloca i32, align 4
  store i8** %filenames, i8*** %filenames.addr, align 8
  store i32 %as_new, i32* %as_new.addr, align 4
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
