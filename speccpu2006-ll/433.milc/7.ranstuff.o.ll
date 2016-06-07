; ModuleID = 'ranstuff.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

; Function Attrs: nounwind uwtable
define void @initialize_prn(%struct.double_prn* %prn_pt, i32 %seed, i32 %index) #0 {
entry:
  %prn_pt.addr = alloca %struct.double_prn*, align 8
  %seed.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  store %struct.double_prn* %prn_pt, %struct.double_prn** %prn_pt.addr, align 8
  store i32 %seed, i32* %seed.addr, align 4
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %mul = mul nsw i32 8, %0
  %add = add nsw i32 69607, %mul
  %1 = load i32, i32* %seed.addr, align 4
  %mul1 = mul nsw i32 %add, %1
  %add2 = add nsw i32 %mul1, 12345
  store i32 %add2, i32* %seed.addr, align 4
  %2 = load i32, i32* %seed.addr, align 4
  %shr = ashr i32 %2, 8
  %and = and i32 %shr, 16777215
  %conv = sext i32 %and to i64
  %3 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r0 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %3, i32 0, i32 0
  store i64 %conv, i64* %r0, align 8
  %4 = load i32, i32* %index.addr, align 4
  %mul3 = mul nsw i32 8, %4
  %add4 = add nsw i32 69607, %mul3
  %5 = load i32, i32* %seed.addr, align 4
  %mul5 = mul nsw i32 %add4, %5
  %add6 = add nsw i32 %mul5, 12345
  store i32 %add6, i32* %seed.addr, align 4
  %6 = load i32, i32* %seed.addr, align 4
  %shr7 = ashr i32 %6, 8
  %and8 = and i32 %shr7, 16777215
  %conv9 = sext i32 %and8 to i64
  %7 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r1 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %7, i32 0, i32 1
  store i64 %conv9, i64* %r1, align 8
  %8 = load i32, i32* %index.addr, align 4
  %mul10 = mul nsw i32 8, %8
  %add11 = add nsw i32 69607, %mul10
  %9 = load i32, i32* %seed.addr, align 4
  %mul12 = mul nsw i32 %add11, %9
  %add13 = add nsw i32 %mul12, 12345
  store i32 %add13, i32* %seed.addr, align 4
  %10 = load i32, i32* %seed.addr, align 4
  %shr14 = ashr i32 %10, 8
  %and15 = and i32 %shr14, 16777215
  %conv16 = sext i32 %and15 to i64
  %11 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r2 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %11, i32 0, i32 2
  store i64 %conv16, i64* %r2, align 8
  %12 = load i32, i32* %index.addr, align 4
  %mul17 = mul nsw i32 8, %12
  %add18 = add nsw i32 69607, %mul17
  %13 = load i32, i32* %seed.addr, align 4
  %mul19 = mul nsw i32 %add18, %13
  %add20 = add nsw i32 %mul19, 12345
  store i32 %add20, i32* %seed.addr, align 4
  %14 = load i32, i32* %seed.addr, align 4
  %shr21 = ashr i32 %14, 8
  %and22 = and i32 %shr21, 16777215
  %conv23 = sext i32 %and22 to i64
  %15 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r3 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %15, i32 0, i32 3
  store i64 %conv23, i64* %r3, align 8
  %16 = load i32, i32* %index.addr, align 4
  %mul24 = mul nsw i32 8, %16
  %add25 = add nsw i32 69607, %mul24
  %17 = load i32, i32* %seed.addr, align 4
  %mul26 = mul nsw i32 %add25, %17
  %add27 = add nsw i32 %mul26, 12345
  store i32 %add27, i32* %seed.addr, align 4
  %18 = load i32, i32* %seed.addr, align 4
  %shr28 = ashr i32 %18, 8
  %and29 = and i32 %shr28, 16777215
  %conv30 = sext i32 %and29 to i64
  %19 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r4 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %19, i32 0, i32 4
  store i64 %conv30, i64* %r4, align 8
  %20 = load i32, i32* %index.addr, align 4
  %mul31 = mul nsw i32 8, %20
  %add32 = add nsw i32 69607, %mul31
  %21 = load i32, i32* %seed.addr, align 4
  %mul33 = mul nsw i32 %add32, %21
  %add34 = add nsw i32 %mul33, 12345
  store i32 %add34, i32* %seed.addr, align 4
  %22 = load i32, i32* %seed.addr, align 4
  %shr35 = ashr i32 %22, 8
  %and36 = and i32 %shr35, 16777215
  %conv37 = sext i32 %and36 to i64
  %23 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r5 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %23, i32 0, i32 5
  store i64 %conv37, i64* %r5, align 8
  %24 = load i32, i32* %index.addr, align 4
  %mul38 = mul nsw i32 8, %24
  %add39 = add nsw i32 69607, %mul38
  %25 = load i32, i32* %seed.addr, align 4
  %mul40 = mul nsw i32 %add39, %25
  %add41 = add nsw i32 %mul40, 12345
  store i32 %add41, i32* %seed.addr, align 4
  %26 = load i32, i32* %seed.addr, align 4
  %shr42 = ashr i32 %26, 8
  %and43 = and i32 %shr42, 16777215
  %conv44 = sext i32 %and43 to i64
  %27 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r6 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %27, i32 0, i32 6
  store i64 %conv44, i64* %r6, align 8
  %28 = load i32, i32* %index.addr, align 4
  %mul45 = mul nsw i32 8, %28
  %add46 = add nsw i32 69607, %mul45
  %29 = load i32, i32* %seed.addr, align 4
  %mul47 = mul nsw i32 %add46, %29
  %add48 = add nsw i32 %mul47, 12345
  store i32 %add48, i32* %seed.addr, align 4
  %30 = load i32, i32* %seed.addr, align 4
  %conv49 = sext i32 %30 to i64
  %31 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %ic_state = getelementptr inbounds %struct.double_prn, %struct.double_prn* %31, i32 0, i32 9
  store i64 %conv49, i64* %ic_state, align 8
  %32 = load i32, i32* %index.addr, align 4
  %mul50 = mul nsw i32 8, %32
  %add51 = add nsw i32 100005, %mul50
  %conv52 = sext i32 %add51 to i64
  %33 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %multiplier = getelementptr inbounds %struct.double_prn, %struct.double_prn* %33, i32 0, i32 7
  store i64 %conv52, i64* %multiplier, align 8
  %34 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %addend = getelementptr inbounds %struct.double_prn, %struct.double_prn* %34, i32 0, i32 8
  store i64 12345, i64* %addend, align 8
  %35 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %scale = getelementptr inbounds %struct.double_prn, %struct.double_prn* %35, i32 0, i32 10
  store double 0x3E70000000000000, double* %scale, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define double @myrand(%struct.double_prn* %prn_pt) #0 {
entry:
  %prn_pt.addr = alloca %struct.double_prn*, align 8
  %t = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.double_prn* %prn_pt, %struct.double_prn** %prn_pt.addr, align 8
  %0 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r5 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %0, i32 0, i32 5
  %1 = load i64, i64* %r5, align 8
  %shr = lshr i64 %1, 7
  %2 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r6 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %2, i32 0, i32 6
  %3 = load i64, i64* %r6, align 8
  %shl = shl i64 %3, 17
  %or = or i64 %shr, %shl
  %4 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r4 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %4, i32 0, i32 4
  %5 = load i64, i64* %r4, align 8
  %shr1 = lshr i64 %5, 1
  %6 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r52 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %6, i32 0, i32 5
  %7 = load i64, i64* %r52, align 8
  %shl3 = shl i64 %7, 23
  %or4 = or i64 %shr1, %shl3
  %xor = xor i64 %or, %or4
  %and = and i64 %xor, 16777215
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %t, align 4
  %8 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r55 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %8, i32 0, i32 5
  %9 = load i64, i64* %r55, align 8
  %10 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r66 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %10, i32 0, i32 6
  store i64 %9, i64* %r66, align 8
  %11 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r47 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %11, i32 0, i32 4
  %12 = load i64, i64* %r47, align 8
  %13 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r58 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %13, i32 0, i32 5
  store i64 %12, i64* %r58, align 8
  %14 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r3 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %14, i32 0, i32 3
  %15 = load i64, i64* %r3, align 8
  %16 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r49 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %16, i32 0, i32 4
  store i64 %15, i64* %r49, align 8
  %17 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r2 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %17, i32 0, i32 2
  %18 = load i64, i64* %r2, align 8
  %19 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r310 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %19, i32 0, i32 3
  store i64 %18, i64* %r310, align 8
  %20 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r1 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %20, i32 0, i32 1
  %21 = load i64, i64* %r1, align 8
  %22 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r211 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %22, i32 0, i32 2
  store i64 %21, i64* %r211, align 8
  %23 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r0 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %23, i32 0, i32 0
  %24 = load i64, i64* %r0, align 8
  %25 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r112 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %25, i32 0, i32 1
  store i64 %24, i64* %r112, align 8
  %26 = load i32, i32* %t, align 4
  %conv13 = sext i32 %26 to i64
  %27 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %r014 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %27, i32 0, i32 0
  store i64 %conv13, i64* %r014, align 8
  %28 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %ic_state = getelementptr inbounds %struct.double_prn, %struct.double_prn* %28, i32 0, i32 9
  %29 = load i64, i64* %ic_state, align 8
  %30 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %multiplier = getelementptr inbounds %struct.double_prn, %struct.double_prn* %30, i32 0, i32 7
  %31 = load i64, i64* %multiplier, align 8
  %mul = mul i64 %29, %31
  %32 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %addend = getelementptr inbounds %struct.double_prn, %struct.double_prn* %32, i32 0, i32 8
  %33 = load i64, i64* %addend, align 8
  %add = add i64 %mul, %33
  %conv15 = trunc i64 %add to i32
  store i32 %conv15, i32* %s, align 4
  %34 = load i32, i32* %s, align 4
  %conv16 = sext i32 %34 to i64
  %35 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %ic_state17 = getelementptr inbounds %struct.double_prn, %struct.double_prn* %35, i32 0, i32 9
  store i64 %conv16, i64* %ic_state17, align 8
  %36 = load %struct.double_prn*, %struct.double_prn** %prn_pt.addr, align 8
  %scale = getelementptr inbounds %struct.double_prn, %struct.double_prn* %36, i32 0, i32 10
  %37 = load double, double* %scale, align 8
  %38 = load i32, i32* %t, align 4
  %39 = load i32, i32* %s, align 4
  %shr18 = ashr i32 %39, 8
  %and19 = and i32 %shr18, 16777215
  %xor20 = xor i32 %38, %and19
  %conv21 = sitofp i32 %xor20 to double
  %mul22 = fmul double %37, %conv21
  ret double %mul22
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
