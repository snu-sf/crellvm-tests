; ModuleID = './MultiSource.Benchmarks.MiBench/173.automotive-bitcount.bstr_i.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"01\00", align 1

; Function Attrs: nounwind uwtable
define i32 @bstr_i(i8* %cptr) #0 {
entry:
  %cptr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %cptr, i8** %cptr.addr, align 8
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %cptr.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i8*, i8** %cptr.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8*, i8** %cptr.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %call = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %conv2) #2
  %tobool3 = icmp ne i8* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %cptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %cptr.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv4, 48
  store i32 %sub, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %shl = shl i32 %8, 1
  store i32 %shl, i32* %j, align 4
  %9 = load i32, i32* %i, align 4
  %and = and i32 %9, 1
  %10 = load i32, i32* %j, align 4
  %or = or i32 %10, %and
  store i32 %or, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %j, align 4
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
