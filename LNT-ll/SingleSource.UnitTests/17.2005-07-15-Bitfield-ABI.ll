; ModuleID = './SingleSource.UnitTests/17.2005-07-15-Bitfield-ABI.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32 }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @test(%struct.X* %P, i32 %A) #0 {
entry:
  %P.addr = alloca %struct.X*, align 8
  %A.addr = alloca i32, align 4
  store %struct.X* %P, %struct.X** %P.addr, align 8
  store i32 %A, i32* %A.addr, align 4
  %0 = load i32, i32* %A.addr, align 4
  %1 = load %struct.X*, %struct.X** %P.addr, align 8
  %2 = bitcast %struct.X* %1 to i32*
  %bf.load = load i32, i32* %2, align 4
  %bf.value = and i32 %0, 15
  %bf.shl = shl i32 %bf.value, 6
  %bf.clear = and i32 %bf.load, -961
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %2, align 4
  %bf.result.shl = shl i32 %bf.value, 28
  %bf.result.ashr = ashr i32 %bf.result.shl, 28
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %U = alloca %union.anon, align 4
  store i32 0, i32* %retval
  %Y = bitcast %union.anon* %U to i32*
  store i32 -1, i32* %Y, align 4
  %Z = bitcast %union.anon* %U to %struct.X*
  call void @test(%struct.X* %Z, i32 0)
  %Y1 = bitcast %union.anon* %U to i32*
  %0 = load i32, i32* %Y1, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %0)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
