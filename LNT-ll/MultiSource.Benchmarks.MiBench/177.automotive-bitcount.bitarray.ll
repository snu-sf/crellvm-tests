; ModuleID = './MultiSource.Benchmarks.MiBench/177.automotive-bitcount.bitarray.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @alloc_bit_array(i64 %bits) #0 {
entry:
  %bits.addr = alloca i64, align 8
  %set = alloca i8*, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %add = add i64 %0, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %call = call noalias i8* @calloc(i64 %div, i64 1) #2
  store i8* %call, i8** %set, align 8
  %1 = load i8*, i8** %set, align 8
  ret i8* %1
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @getbit(i8* %set, i32 %number) #0 {
entry:
  %set.addr = alloca i8*, align 8
  %number.addr = alloca i32, align 4
  store i8* %set, i8** %set.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load i32, i32* %number.addr, align 4
  %div = sdiv i32 %0, 8
  %1 = load i8*, i8** %set.addr, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %set.addr, align 8
  %2 = load i8*, i8** %set.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, i32* %number.addr, align 4
  %rem = srem i32 %4, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv, %shl
  %cmp = icmp ne i32 %and, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define void @setbit(i8* %set, i32 %number, i32 %value) #0 {
entry:
  %set.addr = alloca i8*, align 8
  %number.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i8* %set, i8** %set.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %number.addr, align 4
  %div = sdiv i32 %0, 8
  %1 = load i8*, i8** %set.addr, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %set.addr, align 8
  %2 = load i32, i32* %value.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %number.addr, align 4
  %rem = srem i32 %3, 8
  %shl = shl i32 1, %rem
  %4 = load i8*, i8** %set.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %or = or i32 %conv, %shl
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, i8* %4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %number.addr, align 4
  %rem2 = srem i32 %6, 8
  %shl3 = shl i32 1, %rem2
  %neg = xor i32 %shl3, -1
  %7 = load i8*, i8** %set.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %and = and i32 %conv4, %neg
  %conv5 = trunc i32 %and to i8
  store i8 %conv5, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @flipbit(i8* %set, i32 %number) #0 {
entry:
  %set.addr = alloca i8*, align 8
  %number.addr = alloca i32, align 4
  store i8* %set, i8** %set.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load i32, i32* %number.addr, align 4
  %div = sdiv i32 %0, 8
  %1 = load i8*, i8** %set.addr, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %set.addr, align 8
  %2 = load i32, i32* %number.addr, align 4
  %rem = srem i32 %2, 8
  %shl = shl i32 1, %rem
  %3 = load i8*, i8** %set.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %xor = xor i32 %conv, %shl
  %conv1 = trunc i32 %xor to i8
  store i8 %conv1, i8* %3, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
