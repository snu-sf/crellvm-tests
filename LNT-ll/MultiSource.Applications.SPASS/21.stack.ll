; ModuleID = './MultiSource.Applications.SPASS/21.stack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_STACK = common global [10000 x i8*] zeroinitializer, align 16
@stack_POINTER = common global i32 0, align 4

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
