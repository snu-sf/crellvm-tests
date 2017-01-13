; ModuleID = './SingleSource.UnitTests/9.2005-05-11-Popcount-ffs-fls.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nlz10b.table = internal global [64 x i8] c" \14\13cc\12c\07\0A\11cc\0Ec\06cc\09c\10cc\01\1Ac\0Dcc\18\05ccc\15c\08\0Bc\0Fcccc\02\1B\00\19c\16c\0Ccc\03\1Cc\17c\04\1Dcc\1E\1F", align 16
@ntz8.table = internal global [64 x i8] c" \00\01\0C\02\06c\0D\03c\07cccc\0E\0A\04cc\08cc\19ccccc\15\1B\0F\1F\0B\05ccccc\09cc\18cc\14\1A\1Ecccc\17c\13\1Dc\16\12\1C\11\10c", align 16
@i = common global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"LLVM: n: %d, clz(n): %d, popcount(n): %d, ctz(n): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"REF : n: %d, clz(n): %d, popcount(n): %d, ctz(n): %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  ***  \0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"LLVM: n: %lld, clz(n): %d, popcount(n): %d, ctz(n): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"REF LO BITS : n: %lld, clz(n): %d, popcount(n): %d, ctz(n): %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"FFS: 0:%d, 1:%d, 2:%d, 7:%d, 1024:%d, 1234:%d i:%d, l:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"__builtin_ffs: 0:%d, 1:%d, 2:%d, 7:%d, 1024:%d, 1234:%d i:%d l:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @nlz10b(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %shr = lshr i32 %1, 1
  %or = or i32 %0, %shr
  store i32 %or, i32* %x.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %x.addr, align 4
  %shr1 = lshr i32 %3, 2
  %or2 = or i32 %2, %shr1
  store i32 %or2, i32* %x.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %x.addr, align 4
  %shr3 = lshr i32 %5, 4
  %or4 = or i32 %4, %shr3
  store i32 %or4, i32* %x.addr, align 4
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %x.addr, align 4
  %shr5 = lshr i32 %7, 8
  %or6 = or i32 %6, %shr5
  store i32 %or6, i32* %x.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %x.addr, align 4
  %shr7 = lshr i32 %9, 16
  %neg = xor i32 %shr7, -1
  %and = and i32 %8, %neg
  store i32 %and, i32* %x.addr, align 4
  %10 = load i32, i32* %x.addr, align 4
  %shl = shl i32 %10, 9
  %11 = load i32, i32* %x.addr, align 4
  %sub = sub i32 %shl, %11
  store i32 %sub, i32* %x.addr, align 4
  %12 = load i32, i32* %x.addr, align 4
  %shl8 = shl i32 %12, 11
  %13 = load i32, i32* %x.addr, align 4
  %sub9 = sub i32 %shl8, %13
  store i32 %sub9, i32* %x.addr, align 4
  %14 = load i32, i32* %x.addr, align 4
  %shl10 = shl i32 %14, 14
  %15 = load i32, i32* %x.addr, align 4
  %sub11 = sub i32 %shl10, %15
  store i32 %sub11, i32* %x.addr, align 4
  %16 = load i32, i32* %x.addr, align 4
  %shr12 = lshr i32 %16, 26
  %idxprom = zext i32 %shr12 to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* @nlz10b.table, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %17 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @nlzll(i64 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %shr = lshr i64 %0, 32
  %cmp = icmp eq i64 %shr, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %conv = trunc i64 %1 to i32
  %call = call i32 @nlz10b(i32 %conv)
  %add = add nsw i32 %call, 32
  store i32 %add, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %x.addr, align 8
  %shr1 = lshr i64 %2, 32
  %conv2 = trunc i64 %shr1 to i32
  %call3 = call i32 @nlz10b(i32 %conv2)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @pop(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %shr = lshr i32 %1, 1
  %and = and i32 %shr, 1431655765
  %sub = sub i32 %0, %and
  store i32 %sub, i32* %x.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %and1 = and i32 %2, 858993459
  %3 = load i32, i32* %x.addr, align 4
  %shr2 = lshr i32 %3, 2
  %and3 = and i32 %shr2, 858993459
  %add = add i32 %and1, %and3
  store i32 %add, i32* %x.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %x.addr, align 4
  %shr4 = lshr i32 %5, 4
  %add5 = add i32 %4, %shr4
  %and6 = and i32 %add5, 252645135
  store i32 %and6, i32* %x.addr, align 4
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %x.addr, align 4
  %shl = shl i32 %7, 8
  %add7 = add i32 %6, %shl
  store i32 %add7, i32* %x.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %x.addr, align 4
  %shl8 = shl i32 %9, 16
  %add9 = add i32 %8, %shl8
  store i32 %add9, i32* %x.addr, align 4
  %10 = load i32, i32* %x.addr, align 4
  %shr10 = lshr i32 %10, 24
  ret i32 %shr10
}

; Function Attrs: nounwind uwtable
define i32 @popll(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %conv = trunc i64 %0 to i32
  %call = call i32 @pop(i32 %conv)
  %1 = load i64, i64* %x.addr, align 8
  %shr = lshr i64 %1, 32
  %conv1 = trunc i64 %shr to i32
  %call2 = call i32 @pop(i32 %conv1)
  %add = add nsw i32 %call, %call2
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @ntz8(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %sub = sub i32 0, %1
  %and = and i32 %0, %sub
  %mul = mul i32 %and, 72416175
  store i32 %mul, i32* %x.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %shr = lshr i32 %2, 26
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* @ntz8.table, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %l = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 10, i32* @i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @i, align 4
  %cmp = icmp slt i32 %0, 139045193
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @i, align 4
  %2 = load i32, i32* @i, align 4
  %3 = call i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %4 = load i32, i32* @i, align 4
  %5 = call i32 @llvm.ctpop.i32(i32 %4)
  %6 = load i32, i32* @i, align 4
  %7 = call i32 @llvm.cttz.i32(i32 %6, i1 true)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %3, i32 %5, i32 %7)
  %8 = load i32, i32* @i, align 4
  %9 = load i32, i32* @i, align 4
  %call1 = call i32 @nlz10b(i32 %9)
  %10 = load i32, i32* @i, align 4
  %call2 = call i32 @pop(i32 %10)
  %11 = load i32, i32* @i, align 4
  %call3 = call i32 @ntz8(i32 %11)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0), i32 %8, i32 %call1, i32 %call2, i32 %call3)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  %12 = load i32, i32* @i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @i, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* @i, align 4
  %mul = mul nsw i32 %13, -3
  store i32 %mul, i32* @i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 -10000, i64* %l, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.18, %for.end
  %14 = load i64, i64* %l, align 8
  %cmp7 = icmp slt i64 %14, 1390451930000
  br i1 %cmp7, label %for.body.8, label %for.end.20

for.body.8:                                       ; preds = %for.cond.6
  %15 = load i64, i64* %l, align 8
  %16 = load i64, i64* %l, align 8
  %17 = call i64 @llvm.ctlz.i64(i64 %16, i1 true)
  %cast = trunc i64 %17 to i32
  %18 = load i64, i64* %l, align 8
  %19 = call i64 @llvm.ctpop.i64(i64 %18)
  %cast9 = trunc i64 %19 to i32
  %20 = load i64, i64* %l, align 8
  %conv = trunc i64 %20 to i32
  %21 = call i32 @llvm.cttz.i32(i32 %conv, i1 true)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i32 0, i32 0), i64 %15, i32 %cast, i32 %cast9, i32 %21)
  %22 = load i64, i64* %l, align 8
  %23 = load i64, i64* %l, align 8
  %call11 = call i32 @nlzll(i64 %23)
  %24 = load i64, i64* %l, align 8
  %call12 = call i32 @popll(i64 %24)
  %25 = load i64, i64* %l, align 8
  %conv13 = trunc i64 %25 to i32
  %call14 = call i32 @ntz8(i32 %conv13)
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0), i64 %22, i32 %call11, i32 %call12, i32 %call14)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  %26 = load i64, i64* %l, align 8
  %inc17 = add nsw i64 %26, 1
  store i64 %inc17, i64* %l, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.8
  %27 = load i64, i64* %l, align 8
  %mul19 = mul nsw i64 %27, -3
  store i64 %mul19, i64* %l, align 8
  br label %for.cond.6

for.end.20:                                       ; preds = %for.cond.6
  %call21 = call i32 @ffs(i32 0) #2
  %call22 = call i32 @ffs(i32 1) #2
  %call23 = call i32 @ffs(i32 2) #2
  %call24 = call i32 @ffs(i32 7) #2
  %call25 = call i32 @ffs(i32 1024) #2
  %call26 = call i32 @ffs(i32 1234) #2
  %28 = load i32, i32* @i, align 4
  %call27 = call i32 @ffs(i32 %28) #2
  %29 = load i64, i64* %l, align 8
  %call28 = call i32 (i64, ...) bitcast (i32 (...)* @ffsl to i32 (i64, ...)*)(i64 %29)
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0), i32 %call21, i32 %call22, i32 %call23, i32 %call24, i32 %call25, i32 %call26, i32 %call27, i32 %call28)
  %30 = load i32, i32* @i, align 4
  %31 = call i32 @llvm.cttz.i32(i32 %30, i1 true)
  %32 = add i32 %31, 1
  %iszero = icmp eq i32 %30, 0
  %ffs = select i1 %iszero, i32 0, i32 %32
  %33 = load i64, i64* %l, align 8
  %34 = call i64 @llvm.cttz.i64(i64 %33, i1 true)
  %35 = add i64 %34, 1
  %iszero30 = icmp eq i64 %33, 0
  %ffs31 = select i1 %iszero30, i64 0, i64 %35
  %cast32 = trunc i64 %ffs31 to i32
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 1, i32 2, i32 1, i32 11, i32 2, i32 %ffs, i32 %cast32)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ctlz.i32(i32, i1) #2

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nounwind readnone
declare i32 @llvm.cttz.i32(i32, i1) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nounwind readnone
declare i32 @ffs(i32) #3

declare i32 @ffsl(...) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
