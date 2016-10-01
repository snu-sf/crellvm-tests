; ModuleID = './SingleSource.UnitTests/65.2003-09-18-BitFieldTest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @i2(%struct.rtx_def* %d) #0 {
entry:
  %d.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %d, %struct.rtx_def** %d.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %d.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i8*
  %bf.load = load i8, i8* %1, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %D = alloca %struct.rtx_def, align 4
  store i32 0, i32* %retval
  %0 = bitcast %struct.rtx_def* %D to i8*
  %bf.load = load i8, i8* %0, align 4
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %0, align 4
  call void @i2(%struct.rtx_def* %D)
  %1 = bitcast %struct.rtx_def* %D to i8*
  %bf.load1 = load i8, i8* %1, align 4
  %bf.clear2 = and i8 %bf.load1, 1
  %bf.cast = zext i8 %bf.clear2 to i32
  %2 = bitcast %struct.rtx_def* %D to i8*
  %bf.load3 = load i8, i8* %2, align 4
  %bf.lshr = lshr i8 %bf.load3, 1
  %bf.clear4 = and i8 %bf.lshr, 1
  %bf.cast5 = zext i8 %bf.clear4 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %bf.cast, i32 %bf.cast5)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
