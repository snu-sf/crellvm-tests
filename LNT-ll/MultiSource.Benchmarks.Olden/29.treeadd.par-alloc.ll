; ModuleID = './MultiSource.Benchmarks.Olden/29.treeadd.par-alloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, %struct.tree*, %struct.tree* }

; Function Attrs: nounwind uwtable
define %struct.tree* @TreeAlloc(i32 %level, i32 %lo, i32 %proc) #0 {
entry:
  %retval = alloca %struct.tree*, align 8
  %level.addr = alloca i32, align 4
  %lo.addr = alloca i32, align 4
  %proc.addr = alloca i32, align 4
  %new = alloca %struct.tree*, align 8
  %right = alloca %struct.tree*, align 8
  %left = alloca %struct.tree*, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %proc, i32* %proc.addr, align 4
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.tree* null, %struct.tree** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call = call i8* @malloc(i32 24)
  %1 = bitcast i8* %call to %struct.tree*
  store %struct.tree* %1, %struct.tree** %new, align 8
  %2 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i32, i32* %lo.addr, align 4
  %4 = load i32, i32* %proc.addr, align 4
  %div = sdiv i32 %4, 2
  %add = add nsw i32 %3, %div
  %5 = load i32, i32* %proc.addr, align 4
  %div1 = sdiv i32 %5, 2
  %call2 = call %struct.tree* @TreeAlloc(i32 %sub, i32 %add, i32 %div1)
  store %struct.tree* %call2, %struct.tree** %left, align 8
  %6 = load i32, i32* %level.addr, align 4
  %sub3 = sub nsw i32 %6, 1
  %7 = load i32, i32* %lo.addr, align 4
  %8 = load i32, i32* %proc.addr, align 4
  %div4 = sdiv i32 %8, 2
  %call5 = call %struct.tree* @TreeAlloc(i32 %sub3, i32 %7, i32 %div4)
  store %struct.tree* %call5, %struct.tree** %right, align 8
  %9 = load %struct.tree*, %struct.tree** %new, align 8
  %val = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 0
  store i32 1, i32* %val, align 4
  %10 = load %struct.tree*, %struct.tree** %left, align 8
  %11 = load %struct.tree*, %struct.tree** %new, align 8
  %left6 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 1
  store %struct.tree* %10, %struct.tree** %left6, align 8
  %12 = load %struct.tree*, %struct.tree** %right, align 8
  %13 = load %struct.tree*, %struct.tree** %new, align 8
  %right7 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 2
  store %struct.tree* %12, %struct.tree** %right7, align 8
  %14 = load %struct.tree*, %struct.tree** %new, align 8
  store %struct.tree* %14, %struct.tree** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %15 = load %struct.tree*, %struct.tree** %retval
  ret %struct.tree* %15
}

declare i8* @malloc(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
