; ModuleID = './src/lastfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@my_edata = global [30 x i8] c"End of Emacs initialized data\00", align 16
@_my_endbss = internal global [1 x i8] zeroinitializer, align 1
@my_endbss_static = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @_my_endbss, i32 0, i32 0), align 8
@my_endbss = common global [1 x i8] zeroinitializer, align 1

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
