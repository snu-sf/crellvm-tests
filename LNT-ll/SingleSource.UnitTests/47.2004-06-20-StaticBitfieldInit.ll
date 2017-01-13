; ModuleID = './SingleSource.UnitTests/47.2004-06-20-StaticBitfieldInit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GV = global { i8, i8, [2 x i8] } { i8 -95, i8 8, [2 x i8] undef }, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %bf.load = load i16, i16* bitcast ({ i8, i8, [2 x i8] }* @GV to i16*), align 4
  %bf.clear = and i16 %bf.load, 31
  %bf.cast = zext i16 %bf.clear to i32
  %bf.load1 = load i16, i16* bitcast ({ i8, i8, [2 x i8] }* @GV to i16*), align 4
  %bf.lshr = lshr i16 %bf.load1, 5
  %bf.clear2 = and i16 %bf.lshr, 63
  %bf.cast3 = zext i16 %bf.clear2 to i32
  %bf.load4 = load i16, i16* bitcast ({ i8, i8, [2 x i8] }* @GV to i16*), align 4
  %bf.lshr5 = lshr i16 %bf.load4, 11
  %bf.cast6 = zext i16 %bf.lshr5 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 %bf.cast, i32 %bf.cast3, i32 %bf.cast6)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
