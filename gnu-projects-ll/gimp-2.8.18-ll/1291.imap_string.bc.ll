; ModuleID = './plug-ins/imagemap/imap_string.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @g_strreplace(i8** %old_str, i8* %new_str) #0 {
entry:
  %old_str.addr = alloca i8**, align 8
  %new_str.addr = alloca i8*, align 8
  store i8** %old_str, i8*** %old_str.addr, align 8
  store i8* %new_str, i8** %new_str.addr, align 8
  %0 = load i8**, i8*** %old_str.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %new_str.addr, align 8
  %cmp = icmp ne i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %old_str.addr, align 8
  %4 = load i8*, i8** %3, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %new_str.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %5)
  %6 = load i8**, i8*** %old_str.addr, align 8
  store i8* %call, i8** %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8**, i8*** %old_str.addr, align 8
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
