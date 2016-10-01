; ModuleID = './MultiSource.Benchmarks.McCat/31.01-qbsort.readlist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LinkList = type { i32, %struct.LinkList* }
%struct.List = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ReadList(%struct.LinkList** %ll, %struct.List** %l) #0 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca %struct.LinkList**, align 8
  %l.addr = alloca %struct.List**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %c = alloca i8, align 1
  %NewElement = alloca %struct.LinkList*, align 8
  %NewList = alloca %struct.List*, align 8
  %p = alloca %struct.LinkList*, align 8
  store %struct.LinkList** %ll, %struct.LinkList*** %ll.addr, align 8
  store %struct.List** %l, %struct.List*** %l.addr, align 8
  store i8 45, i8* %c, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 91
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %c)
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 7, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 44, i8* %c, align 1
  %1 = load %struct.LinkList**, %struct.LinkList*** %ll.addr, align 8
  store %struct.LinkList* null, %struct.LinkList** %1, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.end
  %2 = load i8, i8* %c, align 1
  %conv5 = sext i8 %2 to i32
  %cmp6 = icmp ne i32 %conv5, 93
  br i1 %cmp6, label %for.body.8, label %for.end.34

for.body.8:                                       ; preds = %for.cond.4
  %3 = load i8, i8* %c, align 1
  %conv9 = sext i8 %3 to i32
  %cmp10 = icmp ne i32 %conv9, 44
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.8
  store i32 42, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body.8
  %call14 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %x)
  %cmp15 = icmp eq i32 %call14, -1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  store i32 7, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  %call19 = call noalias i8* @malloc(i64 16) #3
  %4 = bitcast i8* %call19 to %struct.LinkList*
  store %struct.LinkList* %4, %struct.LinkList** %NewElement, align 8
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.LinkList*, %struct.LinkList** %NewElement, align 8
  %key = getelementptr inbounds %struct.LinkList, %struct.LinkList* %6, i32 0, i32 0
  store i32 %5, i32* %key, align 4
  %7 = load %struct.LinkList**, %struct.LinkList*** %ll.addr, align 8
  %8 = load %struct.LinkList*, %struct.LinkList** %7, align 8
  %9 = load %struct.LinkList*, %struct.LinkList** %NewElement, align 8
  %next = getelementptr inbounds %struct.LinkList, %struct.LinkList* %9, i32 0, i32 1
  store %struct.LinkList* %8, %struct.LinkList** %next, align 8
  %10 = load %struct.LinkList*, %struct.LinkList** %NewElement, align 8
  %11 = load %struct.LinkList**, %struct.LinkList*** %ll.addr, align 8
  store %struct.LinkList* %10, %struct.LinkList** %11, align 8
  store i8 32, i8* %c, align 1
  br label %for.cond.20

for.cond.20:                                      ; preds = %if.end.32, %if.end.18
  %12 = load i8, i8* %c, align 1
  %conv21 = sext i8 %12 to i32
  %cmp22 = icmp eq i32 %conv21, 32
  br i1 %cmp22, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond.20
  %13 = load i8, i8* %c, align 1
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp eq i32 %conv24, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond.20
  %14 = phi i1 [ true, %for.cond.20 ], [ %cmp25, %lor.rhs ]
  br i1 %14, label %for.body.27, label %for.end.33

for.body.27:                                      ; preds = %lor.end
  %call28 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %c)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body.27
  store i32 7, i32* %retval
  br label %return

if.end.32:                                        ; preds = %for.body.27
  br label %for.cond.20

for.end.33:                                       ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.end.33
  %15 = load i32, i32* %n, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.4

for.end.34:                                       ; preds = %for.cond.4
  %call35 = call noalias i8* @malloc(i64 16) #3
  %16 = bitcast i8* %call35 to %struct.List*
  store %struct.List* %16, %struct.List** %NewList, align 8
  %17 = load i32, i32* %n, align 4
  %18 = load %struct.List*, %struct.List** %NewList, align 8
  %n36 = getelementptr inbounds %struct.List, %struct.List* %18, i32 0, i32 0
  store i32 %17, i32* %n36, align 4
  %19 = load i32, i32* %n, align 4
  %conv37 = sext i32 %19 to i64
  %mul = mul i64 4, %conv37
  %call38 = call noalias i8* @malloc(i64 %mul) #3
  %20 = bitcast i8* %call38 to i32*
  %21 = load %struct.List*, %struct.List** %NewList, align 8
  %l39 = getelementptr inbounds %struct.List, %struct.List* %21, i32 0, i32 1
  store i32* %20, i32** %l39, align 8
  %22 = load %struct.LinkList**, %struct.LinkList*** %ll.addr, align 8
  %23 = load %struct.LinkList*, %struct.LinkList** %22, align 8
  store %struct.LinkList* %23, %struct.LinkList** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.46, %for.end.34
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n, align 4
  %cmp41 = icmp slt i32 %24, %25
  br i1 %cmp41, label %for.body.43, label %for.end.49

for.body.43:                                      ; preds = %for.cond.40
  %26 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %key44 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %26, i32 0, i32 0
  %27 = load i32, i32* %key44, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.List*, %struct.List** %NewList, align 8
  %l45 = getelementptr inbounds %struct.List, %struct.List* %29, i32 0, i32 1
  %30 = load i32*, i32** %l45, align 8
  %arrayidx = getelementptr inbounds i32, i32* %30, i64 %idxprom
  store i32 %27, i32* %arrayidx, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.43
  %31 = load %struct.LinkList*, %struct.LinkList** %p, align 8
  %next47 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %31, i32 0, i32 1
  %32 = load %struct.LinkList*, %struct.LinkList** %next47, align 8
  store %struct.LinkList* %32, %struct.LinkList** %p, align 8
  %33 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %33, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  %34 = load %struct.List*, %struct.List** %NewList, align 8
  %35 = load %struct.List**, %struct.List*** %l.addr, align 8
  store %struct.List* %34, %struct.List** %35, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.49, %if.then.31, %if.then.17, %if.then.12, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
