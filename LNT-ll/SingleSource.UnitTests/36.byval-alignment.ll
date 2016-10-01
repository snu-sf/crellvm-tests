; ModuleID = './SingleSource.UnitTests/36.byval-alignment.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s0 = type { x86_fp80, x86_fp80 }

@g0 = common global %struct.s0 zeroinitializer, align 16
@main.a = private unnamed_addr constant %struct.s0 { x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK40008000000000000000 }, align 16
@.str = private unnamed_addr constant [24 x i8] c"g0.x: %.4f, g0.y: %.4f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @f0(i32 %i, %struct.s0* byval align 16 %y) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = bitcast %struct.s0* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.s0* @g0 to i8*), i8* %0, i64 32, i32 16, i1 false)
  %1 = load i32, i32* %i.addr, align 4
  %conv = sitofp i32 %1 to x86_fp80
  %2 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 0), align 16
  %add = fadd x86_fp80 %2, %conv
  store x86_fp80 %add, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 0), align 16
  %3 = load i32, i32* %i.addr, align 4
  %conv1 = sitofp i32 %3 to x86_fp80
  %4 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 1), align 16
  %add2 = fadd x86_fp80 %4, %conv1
  store x86_fp80 %add2, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 1), align 16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.s0, align 16
  store i32 0, i32* %retval
  %0 = bitcast %struct.s0* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.s0* @main.a to i8*), i64 32, i32 16, i1 false)
  call void @f0(i32 1, %struct.s0* byval align 16 %a)
  %1 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 0), align 16
  %conv = fptrunc x86_fp80 %1 to double
  %2 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.s0, %struct.s0* @g0, i32 0, i32 1), align 16
  %conv1 = fptrunc x86_fp80 %2 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), double %conv, double %conv1)
  ret i32 0
}

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
