; ModuleID = './MultiSource.Benchmarks.Olden/28.treeadd.node.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, %struct.tree*, %struct.tree* }

@.str = private unnamed_addr constant [42 x i8] c"Treeadd with %d levels on %d processors \0A\00", align 1
@NumNodes = external global i32, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"About to enter TreeAlloc\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"About to enter TreeAdd\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Received result of %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %root = alloca %struct.tree*, align 8
  %level = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @dealwithargs(i32 %0, i8** %1)
  store i32 %call, i32* %level, align 4
  %2 = load i32, i32* %level, align 4
  %3 = load i32, i32* @NumNodes, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 %2, i32 %3)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  %4 = load i32, i32* %level, align 4
  %5 = load i32, i32* @NumNodes, align 4
  %call3 = call %struct.tree* @TreeAlloc(i32 %4, i32 0, i32 %5)
  store %struct.tree* %call3, %struct.tree** %root, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.tree*, %struct.tree** %root, align 8
  %call5 = call i32 @TreeAdd(%struct.tree* %7)
  store i32 %call5, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %result, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 %9)
  call void @exit(i32 0) #3
  unreachable

return:                                           ; No predecessors!
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @dealwithargs(i32, i8**) #1

declare i32 @printf(i8*, ...) #1

declare %struct.tree* @TreeAlloc(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @TreeAdd(%struct.tree* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.tree*, align 8
  %leftval = alloca i32, align 4
  %rightval = alloca i32, align 4
  %tleft = alloca %struct.tree*, align 8
  %tright = alloca %struct.tree*, align 8
  %value = alloca i32, align 4
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %cmp = icmp eq %struct.tree* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %left = getelementptr inbounds %struct.tree, %struct.tree* %1, i32 0, i32 1
  %2 = load %struct.tree*, %struct.tree** %left, align 8
  store %struct.tree* %2, %struct.tree** %tleft, align 8
  %3 = load %struct.tree*, %struct.tree** %tleft, align 8
  %call = call i32 @TreeAdd(%struct.tree* %3)
  store i32 %call, i32* %leftval, align 4
  %4 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %right = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 2
  %5 = load %struct.tree*, %struct.tree** %right, align 8
  store %struct.tree* %5, %struct.tree** %tright, align 8
  %6 = load %struct.tree*, %struct.tree** %tright, align 8
  %call1 = call i32 @TreeAdd(%struct.tree* %6)
  store i32 %call1, i32* %rightval, align 4
  %7 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %val = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 0
  %8 = load i32, i32* %val, align 4
  store i32 %8, i32* %value, align 4
  %9 = load i32, i32* %leftval, align 4
  %10 = load i32, i32* %rightval, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32, i32* %value, align 4
  %add2 = add nsw i32 %add, %11
  store i32 %add2, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
