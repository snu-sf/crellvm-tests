; ModuleID = './MultiSource.Applications.ALAC/13.decode.EndianPortable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }
%union.anon.0 = type { float }
%union.anon.1 = type { double }
%union.anon.2 = type { double }

; Function Attrs: nounwind uwtable
define zeroext i16 @Swap16NtoB(i16 zeroext %inUInt16) #0 {
entry:
  %inUInt16.addr = alloca i16, align 2
  store i16 %inUInt16, i16* %inUInt16.addr, align 2
  %0 = load i16, i16* %inUInt16.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 %conv, 8
  %1 = load i16, i16* %inUInt16.addr, align 2
  %conv1 = zext i16 %1 to i32
  %shr = ashr i32 %conv1, 8
  %and = and i32 %shr, 255
  %or = or i32 %shl, %and
  %conv2 = trunc i32 %or to i16
  ret i16 %conv2
}

; Function Attrs: nounwind uwtable
define zeroext i16 @Swap16BtoN(i16 zeroext %inUInt16) #0 {
entry:
  %inUInt16.addr = alloca i16, align 2
  store i16 %inUInt16, i16* %inUInt16.addr, align 2
  %0 = load i16, i16* %inUInt16.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 %conv, 8
  %1 = load i16, i16* %inUInt16.addr, align 2
  %conv1 = zext i16 %1 to i32
  %shr = ashr i32 %conv1, 8
  %and = and i32 %shr, 255
  %or = or i32 %shl, %and
  %conv2 = trunc i32 %or to i16
  ret i16 %conv2
}

; Function Attrs: nounwind uwtable
define i32 @Swap32NtoB(i32 %inUInt32) #0 {
entry:
  %inUInt32.addr = alloca i32, align 4
  store i32 %inUInt32, i32* %inUInt32.addr, align 4
  %0 = load i32, i32* %inUInt32.addr, align 4
  %shl = shl i32 %0, 24
  %1 = load i32, i32* %inUInt32.addr, align 4
  %shl1 = shl i32 %1, 8
  %and = and i32 %shl1, 16711680
  %or = or i32 %shl, %and
  %2 = load i32, i32* %inUInt32.addr, align 4
  %shr = lshr i32 %2, 8
  %and2 = and i32 %shr, 65280
  %or3 = or i32 %or, %and2
  %3 = load i32, i32* %inUInt32.addr, align 4
  %shr4 = lshr i32 %3, 24
  %and5 = and i32 %shr4, 255
  %or6 = or i32 %or3, %and5
  ret i32 %or6
}

; Function Attrs: nounwind uwtable
define i32 @Swap32BtoN(i32 %inUInt32) #0 {
entry:
  %inUInt32.addr = alloca i32, align 4
  store i32 %inUInt32, i32* %inUInt32.addr, align 4
  %0 = load i32, i32* %inUInt32.addr, align 4
  %shl = shl i32 %0, 24
  %1 = load i32, i32* %inUInt32.addr, align 4
  %shl1 = shl i32 %1, 8
  %and = and i32 %shl1, 16711680
  %or = or i32 %shl, %and
  %2 = load i32, i32* %inUInt32.addr, align 4
  %shr = lshr i32 %2, 8
  %and2 = and i32 %shr, 65280
  %or3 = or i32 %or, %and2
  %3 = load i32, i32* %inUInt32.addr, align 4
  %shr4 = lshr i32 %3, 24
  %and5 = and i32 %shr4, 255
  %or6 = or i32 %or3, %and5
  ret i32 %or6
}

; Function Attrs: nounwind uwtable
define i64 @Swap64BtoN(i64 %inUInt64) #0 {
entry:
  %inUInt64.addr = alloca i64, align 8
  store i64 %inUInt64, i64* %inUInt64.addr, align 8
  %0 = load i64, i64* %inUInt64.addr, align 8
  %shl = shl i64 %0, 56
  %1 = load i64, i64* %inUInt64.addr, align 8
  %shl1 = shl i64 %1, 40
  %and = and i64 %shl1, 71776119061217280
  %or = or i64 %shl, %and
  %2 = load i64, i64* %inUInt64.addr, align 8
  %shl2 = shl i64 %2, 24
  %and3 = and i64 %shl2, 280375465082880
  %or4 = or i64 %or, %and3
  %3 = load i64, i64* %inUInt64.addr, align 8
  %shl5 = shl i64 %3, 8
  %and6 = and i64 %shl5, 1095216660480
  %or7 = or i64 %or4, %and6
  %4 = load i64, i64* %inUInt64.addr, align 8
  %shr = ashr i64 %4, 8
  %and8 = and i64 %shr, 4278190080
  %or9 = or i64 %or7, %and8
  %5 = load i64, i64* %inUInt64.addr, align 8
  %shr10 = ashr i64 %5, 24
  %and11 = and i64 %shr10, 16711680
  %or12 = or i64 %or9, %and11
  %6 = load i64, i64* %inUInt64.addr, align 8
  %shr13 = ashr i64 %6, 40
  %and14 = and i64 %shr13, 65280
  %or15 = or i64 %or12, %and14
  %7 = load i64, i64* %inUInt64.addr, align 8
  %shr16 = ashr i64 %7, 56
  %and17 = and i64 %shr16, 255
  %or18 = or i64 %or15, %and17
  ret i64 %or18
}

; Function Attrs: nounwind uwtable
define i64 @Swap64NtoB(i64 %inUInt64) #0 {
entry:
  %inUInt64.addr = alloca i64, align 8
  store i64 %inUInt64, i64* %inUInt64.addr, align 8
  %0 = load i64, i64* %inUInt64.addr, align 8
  %shl = shl i64 %0, 56
  %1 = load i64, i64* %inUInt64.addr, align 8
  %shl1 = shl i64 %1, 40
  %and = and i64 %shl1, 71776119061217280
  %or = or i64 %shl, %and
  %2 = load i64, i64* %inUInt64.addr, align 8
  %shl2 = shl i64 %2, 24
  %and3 = and i64 %shl2, 280375465082880
  %or4 = or i64 %or, %and3
  %3 = load i64, i64* %inUInt64.addr, align 8
  %shl5 = shl i64 %3, 8
  %and6 = and i64 %shl5, 1095216660480
  %or7 = or i64 %or4, %and6
  %4 = load i64, i64* %inUInt64.addr, align 8
  %shr = ashr i64 %4, 8
  %and8 = and i64 %shr, 4278190080
  %or9 = or i64 %or7, %and8
  %5 = load i64, i64* %inUInt64.addr, align 8
  %shr10 = ashr i64 %5, 24
  %and11 = and i64 %shr10, 16711680
  %or12 = or i64 %or9, %and11
  %6 = load i64, i64* %inUInt64.addr, align 8
  %shr13 = ashr i64 %6, 40
  %and14 = and i64 %shr13, 65280
  %or15 = or i64 %or12, %and14
  %7 = load i64, i64* %inUInt64.addr, align 8
  %shr16 = ashr i64 %7, 56
  %and17 = and i64 %shr16, 255
  %or18 = or i64 %or15, %and17
  ret i64 %or18
}

; Function Attrs: nounwind uwtable
define float @SwapFloat32BtoN(float %in) #0 {
entry:
  %in.addr = alloca float, align 4
  %x = alloca %union.anon, align 4
  store float %in, float* %in.addr, align 4
  %0 = load float, float* %in.addr, align 4
  %f = bitcast %union.anon* %x to float*
  store float %0, float* %f, align 4
  %i = bitcast %union.anon* %x to i32*
  %1 = load i32, i32* %i, align 4
  %shl = shl i32 %1, 24
  %i1 = bitcast %union.anon* %x to i32*
  %2 = load i32, i32* %i1, align 4
  %shl2 = shl i32 %2, 8
  %and = and i32 %shl2, 16711680
  %or = or i32 %shl, %and
  %i3 = bitcast %union.anon* %x to i32*
  %3 = load i32, i32* %i3, align 4
  %shr = ashr i32 %3, 8
  %and4 = and i32 %shr, 65280
  %or5 = or i32 %or, %and4
  %i6 = bitcast %union.anon* %x to i32*
  %4 = load i32, i32* %i6, align 4
  %shr7 = ashr i32 %4, 24
  %and8 = and i32 %shr7, 255
  %or9 = or i32 %or5, %and8
  %i10 = bitcast %union.anon* %x to i32*
  store i32 %or9, i32* %i10, align 4
  %f11 = bitcast %union.anon* %x to float*
  %5 = load float, float* %f11, align 4
  ret float %5
}

; Function Attrs: nounwind uwtable
define float @SwapFloat32NtoB(float %in) #0 {
entry:
  %in.addr = alloca float, align 4
  %x = alloca %union.anon.0, align 4
  store float %in, float* %in.addr, align 4
  %0 = load float, float* %in.addr, align 4
  %f = bitcast %union.anon.0* %x to float*
  store float %0, float* %f, align 4
  %i = bitcast %union.anon.0* %x to i32*
  %1 = load i32, i32* %i, align 4
  %shl = shl i32 %1, 24
  %i1 = bitcast %union.anon.0* %x to i32*
  %2 = load i32, i32* %i1, align 4
  %shl2 = shl i32 %2, 8
  %and = and i32 %shl2, 16711680
  %or = or i32 %shl, %and
  %i3 = bitcast %union.anon.0* %x to i32*
  %3 = load i32, i32* %i3, align 4
  %shr = ashr i32 %3, 8
  %and4 = and i32 %shr, 65280
  %or5 = or i32 %or, %and4
  %i6 = bitcast %union.anon.0* %x to i32*
  %4 = load i32, i32* %i6, align 4
  %shr7 = ashr i32 %4, 24
  %and8 = and i32 %shr7, 255
  %or9 = or i32 %or5, %and8
  %i10 = bitcast %union.anon.0* %x to i32*
  store i32 %or9, i32* %i10, align 4
  %f11 = bitcast %union.anon.0* %x to float*
  %5 = load float, float* %f11, align 4
  ret float %5
}

; Function Attrs: nounwind uwtable
define double @SwapFloat64BtoN(double %in) #0 {
entry:
  %in.addr = alloca double, align 8
  %x = alloca %union.anon.1, align 8
  store double %in, double* %in.addr, align 8
  %0 = load double, double* %in.addr, align 8
  %f = bitcast %union.anon.1* %x to double*
  store double %0, double* %f, align 8
  %i = bitcast %union.anon.1* %x to i64*
  %1 = load i64, i64* %i, align 8
  %shl = shl i64 %1, 56
  %i1 = bitcast %union.anon.1* %x to i64*
  %2 = load i64, i64* %i1, align 8
  %shl2 = shl i64 %2, 40
  %and = and i64 %shl2, 71776119061217280
  %or = or i64 %shl, %and
  %i3 = bitcast %union.anon.1* %x to i64*
  %3 = load i64, i64* %i3, align 8
  %shl4 = shl i64 %3, 24
  %and5 = and i64 %shl4, 280375465082880
  %or6 = or i64 %or, %and5
  %i7 = bitcast %union.anon.1* %x to i64*
  %4 = load i64, i64* %i7, align 8
  %shl8 = shl i64 %4, 8
  %and9 = and i64 %shl8, 1095216660480
  %or10 = or i64 %or6, %and9
  %i11 = bitcast %union.anon.1* %x to i64*
  %5 = load i64, i64* %i11, align 8
  %shr = ashr i64 %5, 8
  %and12 = and i64 %shr, 4278190080
  %or13 = or i64 %or10, %and12
  %i14 = bitcast %union.anon.1* %x to i64*
  %6 = load i64, i64* %i14, align 8
  %shr15 = ashr i64 %6, 24
  %and16 = and i64 %shr15, 16711680
  %or17 = or i64 %or13, %and16
  %i18 = bitcast %union.anon.1* %x to i64*
  %7 = load i64, i64* %i18, align 8
  %shr19 = ashr i64 %7, 40
  %and20 = and i64 %shr19, 65280
  %or21 = or i64 %or17, %and20
  %i22 = bitcast %union.anon.1* %x to i64*
  %8 = load i64, i64* %i22, align 8
  %shr23 = ashr i64 %8, 56
  %and24 = and i64 %shr23, 255
  %or25 = or i64 %or21, %and24
  %i26 = bitcast %union.anon.1* %x to i64*
  store i64 %or25, i64* %i26, align 8
  %f27 = bitcast %union.anon.1* %x to double*
  %9 = load double, double* %f27, align 8
  ret double %9
}

; Function Attrs: nounwind uwtable
define double @SwapFloat64NtoB(double %in) #0 {
entry:
  %in.addr = alloca double, align 8
  %x = alloca %union.anon.2, align 8
  store double %in, double* %in.addr, align 8
  %0 = load double, double* %in.addr, align 8
  %f = bitcast %union.anon.2* %x to double*
  store double %0, double* %f, align 8
  %i = bitcast %union.anon.2* %x to i64*
  %1 = load i64, i64* %i, align 8
  %shl = shl i64 %1, 56
  %i1 = bitcast %union.anon.2* %x to i64*
  %2 = load i64, i64* %i1, align 8
  %shl2 = shl i64 %2, 40
  %and = and i64 %shl2, 71776119061217280
  %or = or i64 %shl, %and
  %i3 = bitcast %union.anon.2* %x to i64*
  %3 = load i64, i64* %i3, align 8
  %shl4 = shl i64 %3, 24
  %and5 = and i64 %shl4, 280375465082880
  %or6 = or i64 %or, %and5
  %i7 = bitcast %union.anon.2* %x to i64*
  %4 = load i64, i64* %i7, align 8
  %shl8 = shl i64 %4, 8
  %and9 = and i64 %shl8, 1095216660480
  %or10 = or i64 %or6, %and9
  %i11 = bitcast %union.anon.2* %x to i64*
  %5 = load i64, i64* %i11, align 8
  %shr = ashr i64 %5, 8
  %and12 = and i64 %shr, 4278190080
  %or13 = or i64 %or10, %and12
  %i14 = bitcast %union.anon.2* %x to i64*
  %6 = load i64, i64* %i14, align 8
  %shr15 = ashr i64 %6, 24
  %and16 = and i64 %shr15, 16711680
  %or17 = or i64 %or13, %and16
  %i18 = bitcast %union.anon.2* %x to i64*
  %7 = load i64, i64* %i18, align 8
  %shr19 = ashr i64 %7, 40
  %and20 = and i64 %shr19, 65280
  %or21 = or i64 %or17, %and20
  %i22 = bitcast %union.anon.2* %x to i64*
  %8 = load i64, i64* %i22, align 8
  %shr23 = ashr i64 %8, 56
  %and24 = and i64 %shr23, 255
  %or25 = or i64 %or21, %and24
  %i26 = bitcast %union.anon.2* %x to i64*
  store i64 %or25, i64* %i26, align 8
  %f27 = bitcast %union.anon.2* %x to double*
  %9 = load double, double* %f27, align 8
  ret double %9
}

; Function Attrs: nounwind uwtable
define void @Swap16(i16* %inUInt16) #0 {
entry:
  %inUInt16.addr = alloca i16*, align 8
  store i16* %inUInt16, i16** %inUInt16.addr, align 8
  %0 = load i16*, i16** %inUInt16.addr, align 8
  %1 = load i16, i16* %0, align 2
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, 8
  %2 = load i16*, i16** %inUInt16.addr, align 8
  %3 = load i16, i16* %2, align 2
  %conv1 = zext i16 %3 to i32
  %shr = ashr i32 %conv1, 8
  %and = and i32 %shr, 255
  %or = or i32 %shl, %and
  %conv2 = trunc i32 %or to i16
  %4 = load i16*, i16** %inUInt16.addr, align 8
  store i16 %conv2, i16* %4, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define void @Swap24(i8* %inUInt24) #0 {
entry:
  %inUInt24.addr = alloca i8*, align 8
  %tempVal = alloca i8, align 1
  store i8* %inUInt24, i8** %inUInt24.addr, align 8
  %0 = load i8*, i8** %inUInt24.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %tempVal, align 1
  %2 = load i8*, i8** %inUInt24.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 2
  %3 = load i8, i8* %arrayidx1, align 1
  %4 = load i8*, i8** %inUInt24.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 %3, i8* %arrayidx2, align 1
  %5 = load i8, i8* %tempVal, align 1
  %6 = load i8*, i8** %inUInt24.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 2
  store i8 %5, i8* %arrayidx3, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @Swap32(i32* %inUInt32) #0 {
entry:
  %inUInt32.addr = alloca i32*, align 8
  store i32* %inUInt32, i32** %inUInt32.addr, align 8
  %0 = load i32*, i32** %inUInt32.addr, align 8
  %1 = load i32, i32* %0, align 4
  %shl = shl i32 %1, 24
  %2 = load i32*, i32** %inUInt32.addr, align 8
  %3 = load i32, i32* %2, align 4
  %shl1 = shl i32 %3, 8
  %and = and i32 %shl1, 16711680
  %or = or i32 %shl, %and
  %4 = load i32*, i32** %inUInt32.addr, align 8
  %5 = load i32, i32* %4, align 4
  %shr = lshr i32 %5, 8
  %and2 = and i32 %shr, 65280
  %or3 = or i32 %or, %and2
  %6 = load i32*, i32** %inUInt32.addr, align 8
  %7 = load i32, i32* %6, align 4
  %shr4 = lshr i32 %7, 24
  %and5 = and i32 %shr4, 255
  %or6 = or i32 %or3, %and5
  %8 = load i32*, i32** %inUInt32.addr, align 8
  store i32 %or6, i32* %8, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
