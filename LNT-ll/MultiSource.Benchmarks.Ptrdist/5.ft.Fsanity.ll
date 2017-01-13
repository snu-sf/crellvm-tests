; ModuleID = './MultiSource.Benchmarks.Ptrdist/5.ft.Fsanity.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Heap = type { %struct._Vertices*, %struct._Heap*, %struct._Heap*, %struct._Heap*, %struct._Heap*, i32, i16 }
%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }

@.str = private unnamed_addr constant [6 x i8] c" nil \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[%u] \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: nounwind uwtable
define i32 @SanityCheck1(%struct._Heap* %h, %struct._Vertices* %i) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct._Heap*, align 8
  %i.addr = alloca %struct._Vertices*, align 8
  %h1 = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  store %struct._Vertices* %i, %struct._Vertices** %i.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp = icmp eq %struct._Heap* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  store %struct._Heap* %1, %struct._Heap** %h1, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %item = getelementptr inbounds %struct._Heap, %struct._Heap* %2, i32 0, i32 0
  %3 = load %struct._Vertices*, %struct._Vertices** %item, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %i.addr, align 8
  %call = call i32 @LessThan(%struct._Vertices* %3, %struct._Vertices* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %do.body
  %5 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %5, i32 0, i32 2
  %6 = load %struct._Heap*, %struct._Heap** %child, align 8
  %7 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %item3 = getelementptr inbounds %struct._Heap, %struct._Heap* %7, i32 0, i32 0
  %8 = load %struct._Vertices*, %struct._Vertices** %item3, align 8
  %call4 = call i32 @SanityCheck1(%struct._Heap* %6, %struct._Vertices* %8)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.2
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %9 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 3
  %10 = load %struct._Heap*, %struct._Heap** %forward, align 8
  store %struct._Heap* %10, %struct._Heap** %h1, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  %11 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %12 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp8 = icmp ne %struct._Heap* %11, %12
  br i1 %cmp8, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.6, %if.then.1, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @LessThan(%struct._Vertices*, %struct._Vertices*) #1

; Function Attrs: nounwind uwtable
define i32 @SanityCheck2(%struct._Heap* %h) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct._Heap*, align 8
  %sum = alloca i32, align 4
  %h1 = alloca %struct._Heap*, align 8
  %h2 = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp = icmp eq %struct._Heap* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  store %struct._Heap* %1, %struct._Heap** %h1, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.17, %if.end
  %2 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %2, i32 0, i32 2
  %3 = load %struct._Heap*, %struct._Heap** %child, align 8
  %cmp1 = icmp ne %struct._Heap* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %do.body
  store i32 0, i32* %sum, align 4
  %4 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %child3 = getelementptr inbounds %struct._Heap, %struct._Heap* %4, i32 0, i32 2
  %5 = load %struct._Heap*, %struct._Heap** %child3, align 8
  store %struct._Heap* %5, %struct._Heap** %h2, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %if.then.2
  %6 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %rank = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i32 0, i32 5
  %7 = load i32, i32* %rank, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %sum, align 4
  %add5 = add nsw i32 %8, %add
  store i32 %add5, i32* %sum, align 4
  %9 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 3
  %10 = load %struct._Heap*, %struct._Heap** %forward, align 8
  store %struct._Heap* %10, %struct._Heap** %h2, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  %11 = load %struct._Heap*, %struct._Heap** %h2, align 8
  %12 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %child6 = getelementptr inbounds %struct._Heap, %struct._Heap* %12, i32 0, i32 2
  %13 = load %struct._Heap*, %struct._Heap** %child6, align 8
  %cmp7 = icmp ne %struct._Heap* %11, %13
  br i1 %cmp7, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %sum, align 4
  %15 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %rank8 = getelementptr inbounds %struct._Heap, %struct._Heap* %15, i32 0, i32 5
  %16 = load i32, i32* %rank8, align 4
  %cmp9 = icmp ne i32 %14, %16
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %do.end
  %17 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %child12 = getelementptr inbounds %struct._Heap, %struct._Heap* %17, i32 0, i32 2
  %18 = load %struct._Heap*, %struct._Heap** %child12, align 8
  %call = call i32 @SanityCheck2(%struct._Heap* %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body
  %19 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %forward16 = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i32 0, i32 3
  %20 = load %struct._Heap*, %struct._Heap** %forward16, align 8
  store %struct._Heap* %20, %struct._Heap** %h1, align 8
  br label %do.cond.17

do.cond.17:                                       ; preds = %if.end.15
  %21 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %22 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp18 = icmp ne %struct._Heap* %21, %22
  br i1 %cmp18, label %do.body, label %do.end.19

do.end.19:                                        ; preds = %do.cond.17
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.then.13, %if.then.10, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @SanityCheck3(%struct._Heap* %h, i32 %rank) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct._Heap*, align 8
  %rank.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %h1 = alloca %struct._Heap*, align 8
  %h2 = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  store i32 %rank, i32* %rank.addr, align 4
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp = icmp eq %struct._Heap* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %rank.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %sum, align 4
  %2 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  store %struct._Heap* %2, %struct._Heap** %h1, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %rank2 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i32 0, i32 5
  %4 = load i32, i32* %rank2, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %sum, align 4
  %add3 = add nsw i32 %5, %add
  store i32 %add3, i32* %sum, align 4
  %6 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i32 0, i32 2
  %7 = load %struct._Heap*, %struct._Heap** %child, align 8
  %8 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %rank4 = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 5
  %9 = load i32, i32* %rank4, align 4
  %call = call i32 @SanityCheck3(%struct._Heap* %7, i32 %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %do.body
  %10 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %10, i32 0, i32 3
  %11 = load %struct._Heap*, %struct._Heap** %forward, align 8
  store %struct._Heap* %11, %struct._Heap** %h1, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  %12 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %13 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp7 = icmp ne %struct._Heap* %12, %13
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %sum, align 4
  %15 = load i32, i32* %rank.addr, align 4
  %cmp8 = icmp eq i32 %14, %15
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.9, %if.then.5, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @PrettyPrint(%struct._Heap* %h) #0 {
entry:
  %h.addr = alloca %struct._Heap*, align 8
  %h1 = alloca %struct._Heap*, align 8
  store %struct._Heap* %h, %struct._Heap** %h.addr, align 8
  %0 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp = icmp eq %struct._Heap* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  store %struct._Heap* %1, %struct._Heap** %h1, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %rank = getelementptr inbounds %struct._Heap, %struct._Heap* %2, i32 0, i32 5
  %3 = load i32, i32* %rank, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 %3)
  %4 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %child = getelementptr inbounds %struct._Heap, %struct._Heap* %4, i32 0, i32 2
  %5 = load %struct._Heap*, %struct._Heap** %child, align 8
  call void @PrettyPrint(%struct._Heap* %5)
  %6 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %forward = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i32 0, i32 3
  %7 = load %struct._Heap*, %struct._Heap** %forward, align 8
  store %struct._Heap* %7, %struct._Heap** %h1, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = load %struct._Heap*, %struct._Heap** %h1, align 8
  %9 = load %struct._Heap*, %struct._Heap** %h.addr, align 8
  %cmp3 = icmp ne %struct._Heap* %8, %9
  br i1 %cmp3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
