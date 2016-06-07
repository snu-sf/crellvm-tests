; ModuleID = 'stack.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intstack_s = type { i32, %struct.intstack_s* }

@.str = private unnamed_addr constant [40 x i8] c"Memory allocation failure at %s line %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stack.c\00", align 1

; Function Attrs: nounwind uwtable
define %struct.intstack_s* @InitIntStack() #0 {
entry:
  %stack = alloca %struct.intstack_s*, align 8
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.intstack_s*
  store %struct.intstack_s* %0, %struct.intstack_s** %stack, align 8
  %cmp = icmp eq %struct.intstack_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 42)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.intstack_s*, %struct.intstack_s** %stack, align 8
  %nxt = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %1, i32 0, i32 1
  store %struct.intstack_s* null, %struct.intstack_s** %nxt, align 8
  %2 = load %struct.intstack_s*, %struct.intstack_s** %stack, align 8
  ret %struct.intstack_s* %2
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @Die(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @PushIntStack(%struct.intstack_s* %stack, i32 %data) #0 {
entry:
  %stack.addr = alloca %struct.intstack_s*, align 8
  %data.addr = alloca i32, align 4
  %new = alloca %struct.intstack_s*, align 8
  store %struct.intstack_s* %stack, %struct.intstack_s** %stack.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.intstack_s*
  store %struct.intstack_s* %0, %struct.intstack_s** %new, align 8
  %cmp = icmp eq %struct.intstack_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 52)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %data.addr, align 4
  %2 = load %struct.intstack_s*, %struct.intstack_s** %new, align 8
  %data1 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %2, i32 0, i32 0
  store i32 %1, i32* %data1, align 4
  %3 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %nxt = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %3, i32 0, i32 1
  %4 = load %struct.intstack_s*, %struct.intstack_s** %nxt, align 8
  %5 = load %struct.intstack_s*, %struct.intstack_s** %new, align 8
  %nxt2 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %5, i32 0, i32 1
  store %struct.intstack_s* %4, %struct.intstack_s** %nxt2, align 8
  %6 = load %struct.intstack_s*, %struct.intstack_s** %new, align 8
  %7 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %nxt3 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %7, i32 0, i32 1
  store %struct.intstack_s* %6, %struct.intstack_s** %nxt3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PopIntStack(%struct.intstack_s* %stack, i32* %ret_data) #0 {
entry:
  %retval = alloca i32, align 4
  %stack.addr = alloca %struct.intstack_s*, align 8
  %ret_data.addr = alloca i32*, align 8
  %old = alloca %struct.intstack_s*, align 8
  store %struct.intstack_s* %stack, %struct.intstack_s** %stack.addr, align 8
  store i32* %ret_data, i32** %ret_data.addr, align 8
  %0 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %nxt = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %0, i32 0, i32 1
  %1 = load %struct.intstack_s*, %struct.intstack_s** %nxt, align 8
  %cmp = icmp eq %struct.intstack_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %nxt1 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %2, i32 0, i32 1
  %3 = load %struct.intstack_s*, %struct.intstack_s** %nxt1, align 8
  store %struct.intstack_s* %3, %struct.intstack_s** %old, align 8
  %4 = load %struct.intstack_s*, %struct.intstack_s** %old, align 8
  %nxt2 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %4, i32 0, i32 1
  %5 = load %struct.intstack_s*, %struct.intstack_s** %nxt2, align 8
  %6 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %nxt3 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %6, i32 0, i32 1
  store %struct.intstack_s* %5, %struct.intstack_s** %nxt3, align 8
  %7 = load %struct.intstack_s*, %struct.intstack_s** %old, align 8
  %data = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %7, i32 0, i32 0
  %8 = load i32, i32* %data, align 4
  %9 = load i32*, i32** %ret_data.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.intstack_s*, %struct.intstack_s** %old, align 8
  %11 = bitcast %struct.intstack_s* %10 to i8*
  call void @free(i8* %11) #3
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @ReverseIntStack(%struct.intstack_s* %stack) #0 {
entry:
  %stack.addr = alloca %struct.intstack_s*, align 8
  %old = alloca %struct.intstack_s*, align 8
  %new = alloca %struct.intstack_s*, align 8
  store %struct.intstack_s* %stack, %struct.intstack_s** %stack.addr, align 8
  %0 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %nxt = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %0, i32 0, i32 1
  %1 = load %struct.intstack_s*, %struct.intstack_s** %nxt, align 8
  store %struct.intstack_s* %1, %struct.intstack_s** %old, align 8
  %2 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %nxt1 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %2, i32 0, i32 1
  store %struct.intstack_s* null, %struct.intstack_s** %nxt1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.intstack_s*, %struct.intstack_s** %old, align 8
  %cmp = icmp ne %struct.intstack_s* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.intstack_s*, %struct.intstack_s** %old, align 8
  store %struct.intstack_s* %4, %struct.intstack_s** %new, align 8
  %5 = load %struct.intstack_s*, %struct.intstack_s** %old, align 8
  %nxt2 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %5, i32 0, i32 1
  %6 = load %struct.intstack_s*, %struct.intstack_s** %nxt2, align 8
  store %struct.intstack_s* %6, %struct.intstack_s** %old, align 8
  %7 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %nxt3 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %7, i32 0, i32 1
  %8 = load %struct.intstack_s*, %struct.intstack_s** %nxt3, align 8
  %9 = load %struct.intstack_s*, %struct.intstack_s** %new, align 8
  %nxt4 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %9, i32 0, i32 1
  store %struct.intstack_s* %8, %struct.intstack_s** %nxt4, align 8
  %10 = load %struct.intstack_s*, %struct.intstack_s** %new, align 8
  %11 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %nxt5 = getelementptr inbounds %struct.intstack_s, %struct.intstack_s* %11, i32 0, i32 1
  store %struct.intstack_s* %10, %struct.intstack_s** %nxt5, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FreeIntStack(%struct.intstack_s* %stack) #0 {
entry:
  %stack.addr = alloca %struct.intstack_s*, align 8
  %data = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.intstack_s* %stack, %struct.intstack_s** %stack.addr, align 8
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %call = call i32 @PopIntStack(%struct.intstack_s* %0, i32* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load %struct.intstack_s*, %struct.intstack_s** %stack.addr, align 8
  %3 = bitcast %struct.intstack_s* %2 to i8*
  call void @free(i8* %3) #3
  %4 = load i32, i32* %count, align 4
  ret i32 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
