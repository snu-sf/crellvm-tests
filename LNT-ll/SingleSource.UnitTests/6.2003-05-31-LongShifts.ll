; ModuleID = './SingleSource.UnitTests/6.2003-05-31-LongShifts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"0x%llx op %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"  ashr: 0x%llx\0A  lshr: 0x%llx\0A  shl: 0x%llx\0A\00", align 1
@Vals = global [8 x %struct.anon] [%struct.anon { i64 123, i32 4 }, %struct.anon { i64 123, i32 34 }, %struct.anon { i64 -4, i32 4 }, %struct.anon { i64 -5, i32 34 }, %struct.anon { i64 -6000000000, i32 4 }, %struct.anon { i64 -6000000000, i32 34 }, %struct.anon { i64 6000000000, i32 4 }, %struct.anon { i64 6000000000, i32 34 }], align 16

; Function Attrs: nounwind uwtable
define void @Test(i64 %Val, i32 %Amt) #0 {
entry:
  %Val.addr = alloca i64, align 8
  %Amt.addr = alloca i32, align 4
  store i64 %Val, i64* %Val.addr, align 8
  store i32 %Amt, i32* %Amt.addr, align 4
  %0 = load i64, i64* %Val.addr, align 8
  %1 = load i32, i32* %Amt.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i64 %0, i32 %1)
  %2 = load i64, i64* %Val.addr, align 8
  %3 = load i32, i32* %Amt.addr, align 4
  %sh_prom = zext i32 %3 to i64
  %shr = ashr i64 %2, %sh_prom
  %4 = load i64, i64* %Val.addr, align 8
  %5 = load i32, i32* %Amt.addr, align 4
  %sh_prom1 = zext i32 %5 to i64
  %shr2 = lshr i64 %4, %sh_prom1
  %6 = load i64, i64* %Val.addr, align 8
  %7 = load i32, i32* %Amt.addr, align 4
  %sh_prom3 = zext i32 %7 to i64
  %shl = shl i64 %6, %sh_prom3
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i64 %shr, i64 %shr2, i64 %shl)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %argc.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %argc.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @Vals, i32 0, i64 %idxprom
  %A = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %3 = load volatile i64, i64* %A, align 8
  %4 = load i32, i32* %argc.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* @Vals, i32 0, i64 %idxprom2
  %V = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx3, i32 0, i32 1
  %5 = load volatile i32, i32* %V, align 4
  call void @Test(i64 %3, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %argc.addr, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %argc.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
