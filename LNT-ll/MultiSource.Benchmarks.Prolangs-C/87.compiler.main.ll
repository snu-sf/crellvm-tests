; ModuleID = './MultiSource.Benchmarks.Prolangs-C/87.compiler.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32, i32, i32, i32, i32 }

@lookahead = common global i32 0, align 4
@tokenval = common global i32 0, align 4
@ftokenval = common global float 0.000000e+00, align 4
@FloatFlag = common global i32 0, align 4
@ErrorFlag = common global i32 0, align 4
@DecCount = common global i32 0, align 4
@offset = common global i32 0, align 4
@lineno = common global i32 0, align 4
@LabelCounter = common global i32 0, align 4
@NumberC = common global i32 0, align 4
@lexbuf = common global [128 x i8] zeroinitializer, align 16
@LocalIndex = common global i32 0, align 4
@GlobalIndex = common global i32 0, align 4
@NextLookahead = common global i32 0, align 4
@NextTokenval = common global i32 0, align 4
@NextFtokenval = common global float 0.000000e+00, align 4
@PreviousLookahead = common global i32 0, align 4
@PreviousTokenval = common global i32 0, align 4
@PreviousFtokenval = common global float 0.000000e+00, align 4
@Scope = common global i32 0, align 4
@ReturnLabel = common global i32 0, align 4
@CallReturnAddr = common global i32 0, align 4
@FuncNameIndex = common global i32 0, align 4
@ArrayParsed = common global i32 0, align 4
@GlobalTable = common global [100 x %struct.entry] zeroinitializer, align 16
@LocalTable = common global [100 x %struct.entry] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  call void @init()
  call void @parse()
  ret i32 0
}

declare void @init() #1

declare void @parse() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
