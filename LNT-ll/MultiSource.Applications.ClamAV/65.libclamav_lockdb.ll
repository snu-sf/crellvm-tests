; ModuleID = './MultiSource.Applications.ClamAV/65.libclamav_lockdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cli_readlockdb(i8* %dbdirpath, i32 %wait) #0 {
entry:
  %dbdirpath.addr = alloca i8*, align 8
  %wait.addr = alloca i32, align 4
  store i8* %dbdirpath, i8** %dbdirpath.addr, align 8
  store i32 %wait, i32* %wait.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cli_writelockdb(i8* %dbdirpath, i32 %wait) #0 {
entry:
  %dbdirpath.addr = alloca i8*, align 8
  %wait.addr = alloca i32, align 4
  store i8* %dbdirpath, i8** %dbdirpath.addr, align 8
  store i32 %wait, i32* %wait.addr, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cli_unlockdb(i8* %dbdirpath) #0 {
entry:
  %dbdirpath.addr = alloca i8*, align 8
  store i8* %dbdirpath, i8** %dbdirpath.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cli_freelocks() #0 {
entry:
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
