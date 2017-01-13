; ModuleID = './MultiSource.Benchmarks.Prolangs-C/126.unix-tbl.tm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exstore = external global i8*, align 8
@exlim = external global i8*, align 8
@delim1 = external global i32, align 4
@delim2 = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @maknew(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %dpoint = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %ba = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %p, align 8
  store i8* null, i8** %ba, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %3, 92
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %add.ptr, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 38
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %str.addr, align 8
  store i8* %6, i8** %ba, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %p, align 8
  store i8* %8, i8** %str.addr, align 8
  %9 = load i8*, i8** %ba, align 8
  %cmp5 = icmp eq i8* %9, null
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.end
  store i32 0, i32* %dpoint, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.30, %if.then.7
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i8, i8* %10, align 1
  %tobool9 = icmp ne i8 %11, 0
  br i1 %tobool9, label %for.body.10, label %for.end.32

for.body.10:                                      ; preds = %for.cond.8
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 46
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.29

land.lhs.true.14:                                 ; preds = %for.body.10
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i8*, i8** %p, align 8
  %call = call i32 @ineqn(i8* %14, i8* %15)
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.end.29, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %16 = load i8*, i8** %str.addr, align 8
  %17 = load i8*, i8** %p, align 8
  %cmp17 = icmp ugt i8* %16, %17
  br i1 %cmp17, label %land.lhs.true.19, label %lor.lhs.false

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %18 = load i8*, i8** %str.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %18, i64 -1
  %19 = load i8, i8* %add.ptr20, align 1
  %conv21 = sext i8 %19 to i32
  %call22 = call i32 @digit(i32 %conv21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.19, %land.lhs.true.16
  %20 = load i8*, i8** %str.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %add.ptr24, align 1
  %conv25 = sext i8 %21 to i32
  %call26 = call i32 @digit(i32 %conv25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %land.lhs.true.19
  %22 = load i8*, i8** %str.addr, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %dpoint, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %lor.lhs.false, %land.lhs.true.14, %for.body.10
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %24 = load i8*, i8** %str.addr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr31, i8** %str.addr, align 8
  br label %for.cond.8

for.end.32:                                       ; preds = %for.cond.8
  %25 = load i32, i32* %dpoint, align 4
  %cmp33 = icmp eq i32 %25, 0
  br i1 %cmp33, label %if.then.35, label %if.end.52

if.then.35:                                       ; preds = %for.end.32
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.49, %if.then.35
  %26 = load i8*, i8** %str.addr, align 8
  %27 = load i8*, i8** %p, align 8
  %cmp37 = icmp ugt i8* %26, %27
  br i1 %cmp37, label %for.body.39, label %for.end.51

for.body.39:                                      ; preds = %for.cond.36
  %28 = load i8*, i8** %str.addr, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %28, i64 -1
  %29 = load i8, i8* %add.ptr40, align 1
  %conv41 = sext i8 %29 to i32
  %call42 = call i32 @digit(i32 %conv41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.48

land.lhs.true.44:                                 ; preds = %for.body.39
  %30 = load i8*, i8** %str.addr, align 8
  %31 = load i8*, i8** %p, align 8
  %call45 = call i32 @ineqn(i8* %30, i8* %31)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.44
  br label %for.end.51

if.end.48:                                        ; preds = %land.lhs.true.44, %for.body.39
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %32 = load i8*, i8** %str.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr50, i8** %str.addr, align 8
  br label %for.cond.36

for.end.51:                                       ; preds = %if.then.47, %for.cond.36
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %for.end.32
  %33 = load i32, i32* %dpoint, align 4
  %tobool53 = icmp ne i32 %33, 0
  br i1 %tobool53, label %if.end.58, label %land.lhs.true.54

land.lhs.true.54:                                 ; preds = %if.end.52
  %34 = load i8*, i8** %p, align 8
  %35 = load i8*, i8** %str.addr, align 8
  %cmp55 = icmp eq i8* %34, %35
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.54
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %land.lhs.true.54, %if.end.52
  %36 = load i32, i32* %dpoint, align 4
  %tobool59 = icmp ne i32 %36, 0
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.58
  %37 = load i32, i32* %dpoint, align 4
  %conv61 = sext i32 %37 to i64
  %38 = inttoptr i64 %conv61 to i8*
  store i8* %38, i8** %str.addr, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.58
  br label %if.end.63

if.else:                                          ; preds = %for.end
  %39 = load i8*, i8** %ba, align 8
  store i8* %39, i8** %str.addr, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.end.62
  %40 = load i8*, i8** %str.addr, align 8
  store i8* %40, i8** %p, align 8
  %41 = load i8*, i8** @exstore, align 8
  %cmp64 = icmp eq i8* %41, null
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.63
  %42 = load i8*, i8** @exstore, align 8
  %43 = load i8*, i8** @exlim, align 8
  %cmp67 = icmp ugt i8* %42, %43
  br i1 %cmp67, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %lor.lhs.false.66, %if.end.63
  %call70 = call i8* (...) @chspace()
  store i8* %call70, i8** @exstore, align 8
  %44 = load i8*, i8** @exstore, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %44, i64 2000
  store i8* %add.ptr71, i8** @exlim, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %lor.lhs.false.66
  %45 = load i8*, i8** @exstore, align 8
  store i8* %45, i8** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.72
  %46 = load i8*, i8** %str.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr73, i8** %str.addr, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** @exstore, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr74, i8** @exstore, align 8
  store i8 %47, i8* %48, align 1
  %tobool75 = icmp ne i8 %47, 0
  br i1 %tobool75, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load i8*, i8** %p, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %q, align 8
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.57
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @ineqn(i8* %s, i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %ineq = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 0, i32* %ineq, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %c, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %ineq, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %6 = load i32, i32* %ineq, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %c, align 4
  %8 = load i32, i32* @delim1, align 4
  %cmp4 = icmp eq i32 %7, %8
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %ineq, align 4
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %ineq, align 4
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %if.else
  %10 = load i32, i32* %c, align 4
  %11 = load i32, i32* @delim2, align 4
  %cmp10 = icmp eq i32 %10, %11
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.9
  store i32 0, i32* %ineq, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true.9, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @digit(i32) #1

declare i8* @chspace(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
