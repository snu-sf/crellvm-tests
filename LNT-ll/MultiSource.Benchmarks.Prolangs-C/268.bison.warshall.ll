; ModuleID = './MultiSource.Benchmarks.Prolangs-C/268.bison.warshall.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @TC(i32* %R, i32 %n) #0 {
entry:
  %R.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %rowsize = alloca i32, align 4
  %mask = alloca i32, align 4
  %rowj = alloca i32*, align 8
  %rp = alloca i32*, align 8
  %rend = alloca i32*, align 8
  %ccol = alloca i32*, align 8
  %relend = alloca i32*, align 8
  %cword = alloca i32*, align 8
  %rowi = alloca i32*, align 8
  store i32* %R, i32** %R.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, 31
  %div = sdiv i32 %add, 32
  %conv = sext i32 %div to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %rowsize, align 4
  %1 = load i32*, i32** %R.addr, align 8
  %2 = bitcast i32* %1 to i8*
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* %rowsize, align 4
  %mul2 = mul nsw i32 %3, %4
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to i32*
  store i32* %5, i32** %relend, align 8
  %6 = load i32*, i32** %R.addr, align 8
  store i32* %6, i32** %cword, align 8
  store i32 1, i32* %mask, align 4
  %7 = load i32*, i32** %R.addr, align 8
  store i32* %7, i32** %rowi, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %8 = load i32*, i32** %rowi, align 8
  %9 = load i32*, i32** %relend, align 8
  %cmp = icmp ult i32* %8, %9
  br i1 %cmp, label %while.body, label %while.end.27

while.body:                                       ; preds = %while.cond
  %10 = load i32*, i32** %cword, align 8
  store i32* %10, i32** %ccol, align 8
  %11 = load i32*, i32** %R.addr, align 8
  store i32* %11, i32** %rowj, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %if.end, %while.body
  %12 = load i32*, i32** %rowj, align 8
  %13 = load i32*, i32** %relend, align 8
  %cmp5 = icmp ult i32* %12, %13
  br i1 %cmp5, label %while.body.7, label %while.end.19

while.body.7:                                     ; preds = %while.cond.4
  %14 = load i32*, i32** %ccol, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %mask, align 4
  %and = and i32 %15, %16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.7
  %17 = load i32*, i32** %rowi, align 8
  store i32* %17, i32** %rp, align 8
  %18 = load i32*, i32** %rowj, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load i32, i32* %rowsize, align 4
  %idx.ext8 = sext i32 %20 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %19, i64 %idx.ext8
  %21 = bitcast i8* %add.ptr9 to i32*
  store i32* %21, i32** %rend, align 8
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.13, %if.then
  %22 = load i32*, i32** %rowj, align 8
  %23 = load i32*, i32** %rend, align 8
  %cmp11 = icmp ult i32* %22, %23
  br i1 %cmp11, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %while.cond.10
  %24 = load i32*, i32** %rp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %incdec.ptr, i32** %rp, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %rowj, align 8
  %incdec.ptr14 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %incdec.ptr14, i32** %rowj, align 8
  %27 = load i32, i32* %26, align 4
  %or = or i32 %27, %25
  store i32 %or, i32* %26, align 4
  br label %while.cond.10

while.end:                                        ; preds = %while.cond.10
  br label %if.end

if.else:                                          ; preds = %while.body.7
  %28 = load i32*, i32** %rowj, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = load i32, i32* %rowsize, align 4
  %idx.ext15 = sext i32 %30 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %29, i64 %idx.ext15
  %31 = bitcast i8* %add.ptr16 to i32*
  store i32* %31, i32** %rowj, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %32 = load i32*, i32** %ccol, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %rowsize, align 4
  %idx.ext17 = sext i32 %34 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %33, i64 %idx.ext17
  %35 = bitcast i8* %add.ptr18 to i32*
  store i32* %35, i32** %ccol, align 8
  br label %while.cond.4

while.end.19:                                     ; preds = %while.cond.4
  %36 = load i32, i32* %mask, align 4
  %shl = shl i32 %36, 1
  store i32 %shl, i32* %mask, align 4
  %37 = load i32, i32* %mask, align 4
  %cmp20 = icmp eq i32 %37, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %while.end.19
  store i32 1, i32* %mask, align 4
  %38 = load i32*, i32** %cword, align 8
  %incdec.ptr23 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %incdec.ptr23, i32** %cword, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %while.end.19
  %39 = load i32*, i32** %rowi, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load i32, i32* %rowsize, align 4
  %idx.ext25 = sext i32 %41 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %40, i64 %idx.ext25
  %42 = bitcast i8* %add.ptr26 to i32*
  store i32* %42, i32** %rowi, align 8
  br label %while.cond

while.end.27:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @RTC(i32* %R, i32 %n) #0 {
entry:
  %R.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %rowsize = alloca i32, align 4
  %mask = alloca i32, align 4
  %rp = alloca i32*, align 8
  %relend = alloca i32*, align 8
  store i32* %R, i32** %R.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32*, i32** %R.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  call void @TC(i32* %0, i32 %1)
  %2 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %2, 31
  %div = sdiv i32 %add, 32
  %conv = sext i32 %div to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %rowsize, align 4
  %3 = load i32*, i32** %R.addr, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %rowsize, align 4
  %mul2 = mul nsw i32 %5, %6
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %7 = bitcast i8* %add.ptr to i32*
  store i32* %7, i32** %relend, align 8
  store i32 1, i32* %mask, align 4
  %8 = load i32*, i32** %R.addr, align 8
  store i32* %8, i32** %rp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %9 = load i32*, i32** %rp, align 8
  %10 = load i32*, i32** %relend, align 8
  %cmp = icmp ult i32* %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %mask, align 4
  %12 = load i32*, i32** %rp, align 8
  %13 = load i32, i32* %12, align 4
  %or = or i32 %13, %11
  store i32 %or, i32* %12, align 4
  %14 = load i32, i32* %mask, align 4
  %shl = shl i32 %14, 1
  store i32 %shl, i32* %mask, align 4
  %15 = load i32, i32* %mask, align 4
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %mask, align 4
  %16 = load i32*, i32** %rp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr, i32** %rp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %17 = load i32*, i32** %rp, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* %rowsize, align 4
  %idx.ext6 = sext i32 %19 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %18, i64 %idx.ext6
  %20 = bitcast i8* %add.ptr7 to i32*
  store i32* %20, i32** %rp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
