; ModuleID = './MultiSource.Benchmarks.7zip/20.7zCrc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_CrcUpdate = internal global i32 (i32, i8*, i64, i32*)* null, align 8
@g_CrcTable = common global [2048 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @CrcUpdate(i32 %v, i8* %data, i64 %size) #0 {
entry:
  %v.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i32 %v, i32* %v.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i32 (i32, i8*, i64, i32*)*, i32 (i32, i8*, i64, i32*)** @g_CrcUpdate, align 8
  %1 = load i32, i32* %v.addr, align 4
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %call = call i32 %0(i32 %1, i8* %2, i64 %3, i32* getelementptr inbounds ([2048 x i32], [2048 x i32]* @g_CrcTable, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @CrcCalc(i8* %data, i64 %size) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i32 (i32, i8*, i64, i32*)*, i32 (i32, i8*, i64, i32*)** @g_CrcUpdate, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %call = call i32 %0(i32 -1, i8* %1, i64 %2, i32* getelementptr inbounds ([2048 x i32], [2048 x i32]* @g_CrcTable, i32 0, i32 0))
  %xor = xor i32 %call, -1
  ret i32 %xor
}

; Function Attrs: nounwind uwtable
define void @CrcGenerateTable() #0 {
entry:
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  %r11 = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  store i32 %1, i32* %r, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp ult i32 %2, 8
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %r, align 4
  %shr = lshr i32 %3, 1
  %4 = load i32, i32* %r, align 4
  %and = and i32 %4, 1
  %sub = sub i32 %and, 1
  %neg = xor i32 %sub, -1
  %and4 = and i32 -306674912, %neg
  %xor = xor i32 %shr, %and4
  store i32 %xor, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %5 = load i32, i32* %j, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %6 = load i32, i32* %r, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i32 0, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc6 = add i32 %8, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.22, %for.end.7
  %9 = load i32, i32* %i, align 4
  %cmp9 = icmp ult i32 %9, 2048
  br i1 %cmp9, label %for.body.10, label %for.end.24

for.body.10:                                      ; preds = %for.cond.8
  %10 = load i32, i32* %i, align 4
  %sub12 = sub i32 %10, 256
  %idxprom13 = zext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i32 0, i64 %idxprom13
  %11 = load i32, i32* %arrayidx14, align 4
  store i32 %11, i32* %r11, align 4
  %12 = load i32, i32* %r11, align 4
  %and15 = and i32 %12, 255
  %idxprom16 = zext i32 %and15 to i64
  %arrayidx17 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i32 0, i64 %idxprom16
  %13 = load i32, i32* %arrayidx17, align 4
  %14 = load i32, i32* %r11, align 4
  %shr18 = lshr i32 %14, 8
  %xor19 = xor i32 %13, %shr18
  %15 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i32 0, i64 %idxprom20
  store i32 %xor19, i32* %arrayidx21, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.10
  %16 = load i32, i32* %i, align 4
  %inc23 = add i32 %16, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.8

for.end.24:                                       ; preds = %for.cond.8
  store i32 (i32, i8*, i64, i32*)* @CrcUpdateT4, i32 (i32, i8*, i64, i32*)** @g_CrcUpdate, align 8
  ret void
}

declare i32 @CrcUpdateT4(i32, i8*, i64, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
