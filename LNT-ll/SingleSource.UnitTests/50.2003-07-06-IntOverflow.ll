; ModuleID = './SingleSource.UnitTests/50.2003-07-06-IntOverflow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"compare after overflow is TRUE\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"compare after overflow is FALSE\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"divide after overflow = %d (0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"divide negative value by power-of-2 = %d (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"subtract after overflow = %d (0x%x)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @compareOvf(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  %add = add nsw i32 %mul, %mul1
  store i32 %add, i32* %sum, align 4
  %4 = load i32, i32* %sum, align 4
  %cmp = icmp slt i32 %4, 4194304
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @divideOvf(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %rem = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  %add = add nsw i32 %mul, %mul1
  store i32 %add, i32* %sum, align 4
  %4 = load i32, i32* %sum, align 4
  %div = sdiv i32 -2147483648, %4
  store i32 %div, i32* %rem, align 4
  %5 = load i32, i32* %rem, align 4
  %6 = load i32, i32* %rem, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @divideNeg(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %rem = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  %sub = sub nsw i32 %mul, %mul1
  store i32 %sub, i32* %sum, align 4
  %4 = load i32, i32* %sum, align 4
  %div = sdiv i32 %4, 262144
  store i32 %div, i32* %rem, align 4
  %5 = load i32, i32* %rem, align 4
  %6 = load i32, i32* %rem, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i32 %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @subtractOvf(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %rem = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  %add = add nsw i32 %mul, %mul1
  store i32 %add, i32* %sum, align 4
  %4 = load i32, i32* %sum, align 4
  %sub = sub i32 -2147483648, %4
  store i32 %sub, i32* %rem, align 4
  %5 = load i32, i32* %rem, align 4
  %6 = load i32, i32* %rem, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i32 %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %b21 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 2097152, i32* %b21, align 4
  %0 = load i32, i32* %b21, align 4
  %1 = load i32, i32* %b21, align 4
  call void @compareOvf(i32 %0, i32 %1)
  %2 = load i32, i32* %b21, align 4
  %add = add nsw i32 %2, 1
  %3 = load i32, i32* %b21, align 4
  %add1 = add nsw i32 %3, 2
  call void @divideOvf(i32 %add, i32 %add1)
  %4 = load i32, i32* %b21, align 4
  %add2 = add nsw i32 %4, 1
  %5 = load i32, i32* %b21, align 4
  %add3 = add nsw i32 %5, 2
  call void @divideNeg(i32 %add2, i32 %add3)
  %6 = load i32, i32* %b21, align 4
  %add4 = add nsw i32 %6, 1
  %7 = load i32, i32* %b21, align 4
  %add5 = add nsw i32 %7, 2
  call void @subtractOvf(i32 %add4, i32 %add5)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
