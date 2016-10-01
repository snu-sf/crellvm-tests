; ModuleID = './MultiSource.Benchmarks.MiBench/178.automotive-bitcount.bitcnt_4.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: nounwind uwtable
define i32 @ntbl_bitcnt(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %cnt = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 15
  %conv = trunc i64 %and to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %1 to i32
  store i32 %conv1, i32* %cnt, align 4
  %2 = load i64, i64* %x.addr, align 8
  %shr = ashr i64 %2, 4
  store i64 %shr, i64* %x.addr, align 8
  %cmp = icmp ne i64 0, %shr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %x.addr, align 8
  %call = call i32 @ntbl_bitcnt(i64 %3)
  %4 = load i32, i32* %cnt, align 4
  %add = add nsw i32 %4, %call
  store i32 %add, i32* %cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %cnt, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @btbl_bitcnt(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %cnt = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8
  %0 = bitcast i64* %x.addr to i8*
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %2 to i32
  store i32 %conv2, i32* %cnt, align 4
  %3 = load i64, i64* %x.addr, align 8
  %shr = ashr i64 %3, 8
  store i64 %shr, i64* %x.addr, align 8
  %cmp = icmp ne i64 0, %shr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %x.addr, align 8
  %call = call i32 @btbl_bitcnt(i64 %4)
  %5 = load i32, i32* %cnt, align 4
  %add = add nsw i32 %5, %call
  store i32 %add, i32* %cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %cnt, align 4
  ret i32 %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
