; ModuleID = './SingleSource.UnitTests.Vector/9.SSE.sse.shift.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IV = type { <2 x i64> }

@.str = private unnamed_addr constant [21 x i8] c"%08x %08x %08x %08x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %allones = alloca <2 x i64>, align 16
  %zeroones = alloca <2 x i64>, align 16
  %onezeros = alloca <2 x i64>, align 16
  store i32 0, i32* %retval
  %call = call <2 x i64> @_mm_set1_epi32(i32 0)
  store <2 x i64> %call, <2 x i64>* %allones, align 16
  %0 = load <2 x i64>, <2 x i64>* %allones, align 16
  %1 = load <2 x i64>, <2 x i64>* %allones, align 16
  %call1 = call <2 x i64> @_mm_cmpeq_epi32(<2 x i64> %0, <2 x i64> %1)
  store <2 x i64> %call1, <2 x i64>* %allones, align 16
  %2 = load <2 x i64>, <2 x i64>* %allones, align 16
  %call2 = call <2 x i64> @_mm_srli_epi16(<2 x i64> %2, i32 8)
  store <2 x i64> %call2, <2 x i64>* %zeroones, align 16
  %3 = bitcast <2 x i64>* %zeroones to %union.IV*
  call void @printIV(%union.IV* %3)
  %4 = load <2 x i64>, <2 x i64>* %allones, align 16
  %call3 = call <2 x i64> @_mm_slli_epi16(<2 x i64> %4, i32 8)
  store <2 x i64> %call3, <2 x i64>* %onezeros, align 16
  %5 = bitcast <2 x i64>* %onezeros to %union.IV*
  call void @printIV(%union.IV* %5)
  ret i32 0
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_set1_epi32(i32 %__i) #1 {
entry:
  %__i.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %__i, i32* %__i.addr, align 4
  %0 = load i32, i32* %__i.addr, align 4
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %1 = load i32, i32* %__i.addr, align 4
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, i32* %__i.addr, align 4
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, i32* %__i.addr, align 4
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %3, i32 3
  store <4 x i32> %vecinit3, <4 x i32>* %.compoundliteral
  %4 = load <4 x i32>, <4 x i32>* %.compoundliteral
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_cmpeq_epi32(<2 x i64> %__a, <2 x i64> %__b) #1 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16
  store <2 x i64> %__b, <2 x i64>* %__b.addr, align 16
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, <2 x i64>* %__b.addr, align 16
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %cmp = icmp eq <4 x i32> %1, %3
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %4 = bitcast <4 x i32> %sext to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_srli_epi16(<2 x i64> %__a, i32 %__count) #1 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16
  store i32 %__count, i32* %__count.addr, align 4
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, i32* %__count.addr, align 4
  %3 = call <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nounwind uwtable
define internal void @printIV(%union.IV* %F) #0 {
entry:
  %F.addr = alloca %union.IV*, align 8
  store %union.IV* %F, %union.IV** %F.addr, align 8
  %0 = load %union.IV*, %union.IV** %F.addr, align 8
  %A = bitcast %union.IV* %0 to [4 x i32]*
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %A, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %union.IV*, %union.IV** %F.addr, align 8
  %A1 = bitcast %union.IV* %2 to [4 x i32]*
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %A1, i32 0, i64 1
  %3 = load i32, i32* %arrayidx2, align 4
  %4 = load %union.IV*, %union.IV** %F.addr, align 8
  %A3 = bitcast %union.IV* %4 to [4 x i32]*
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %A3, i32 0, i64 2
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load %union.IV*, %union.IV** %F.addr, align 8
  %A5 = bitcast %union.IV* %6 to [4 x i32]*
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %A5, i32 0, i64 3
  %7 = load i32, i32* %arrayidx6, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %3, i32 %5, i32 %7)
  ret void
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_slli_epi16(<2 x i64> %__a, i32 %__count) #1 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16
  store i32 %__count, i32* %__count.addr, align 4
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, i32* %__count.addr, align 4
  %3 = call <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nounwind readnone
declare <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16>, i32) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readnone
declare <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16>, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
