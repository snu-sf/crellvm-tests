; ModuleID = 'pbla.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind uwtable
define %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %delta.addr = alloca i64*, align 8
  %xchange.addr = alloca i64*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node**, align 8
  %iminus = alloca %struct.node*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else.19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  br label %if.end.17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.then.9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end.43

if.else.19:                                       ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 4
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else.28, label %if.then.22

if.then.22:                                       ; preds = %if.else.19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.22
  br label %if.end.41

if.else.28:                                       ; preds = %if.else.19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.else.28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.then.32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.then.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.else.28
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.41, %if.end.17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  ret %struct.node* %58
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
