; ModuleID = './SingleSource.UnitTests/52.AtomicOps.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"test = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @foo(i32* %mem, i32 %val, i32 %c) #0 {
entry:
  %mem.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %oldval = alloca i32, align 4
  store i32* %mem, i32** %mem.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32*, i32** %mem.addr, align 8
  %1 = load i32, i32* %val.addr, align 4
  %2 = atomicrmw add i32* %0, i32 %1 seq_cst
  store i32 %2, i32* %oldval, align 4
  %3 = load i32, i32* %oldval, align 4
  %4 = load i32, i32* %c.addr, align 4
  %add = add nsw i32 %3, %4
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %test = alloca i64, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval
  store i64 0, i64* %test, align 8
  %call = call i32 @foo(i32* @x, i32 1, i32 2)
  store i32 %call, i32* %y, align 4
  %0 = load i32, i32* %y, align 4
  %1 = load volatile i32, i32* @x, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %1)
  %2 = cmpxchg i32* @x, i32 1, i32 2 seq_cst seq_cst
  %3 = extractvalue { i32, i1 } %2, 0
  store i32 %3, i32* %y, align 4
  %4 = load i32, i32* %y, align 4
  %5 = load volatile i32, i32* @x, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %4, i32 %5)
  %6 = atomicrmw xchg i32* @x, i32 1 seq_cst
  store i32 %6, i32* %y, align 4
  %7 = load i32, i32* %y, align 4
  %8 = load volatile i32, i32* @x, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %7, i32 %8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = atomicrmw add i64* %test, i64 1 seq_cst
  %11 = add i64 %10, 1
  %12 = load i64, i64* %test, align 8
  %conv = trunc i64 %12 to i32
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %14 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %14, 5
  br i1 %cmp6, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.5
  %15 = atomicrmw sub i64* %test, i64 1 seq_cst
  %16 = load i64, i64* %test, align 8
  %conv9 = trunc i64 %16 to i32
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %conv9)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %17 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
