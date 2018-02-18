; ModuleID = './getversion.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_GetVersion.version = internal global [250 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"%.80s (%.80s) %.80s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"3.4.1\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Py_GetVersion() #0 {
entry:
  %call = call i8* @Py_GetBuildInfo()
  %call1 = call i8* @Py_GetCompiler()
  %call2 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([250 x i8], [250 x i8]* @Py_GetVersion.version, i32 0, i32 0), i64 250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %call, i8* %call1)
  ret i8* getelementptr inbounds ([250 x i8], [250 x i8]* @Py_GetVersion.version, i32 0, i32 0)
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare i8* @Py_GetBuildInfo() #1

declare i8* @Py_GetCompiler() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
