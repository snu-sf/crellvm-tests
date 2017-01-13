; ModuleID = './MultiSource.Benchmarks.MallocBench/128.cfrac.pgcd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i16* @pgcd(i16* %u, i16* %v) #0 {
entry:
  %u.addr = alloca i16*, align 8
  %v.addr = alloca i16*, align 8
  %u3 = alloca i16*, align 8
  %v3 = alloca i16*, align 8
  %q = alloca i16*, align 8
  %r = alloca i16*, align 8
  store i16* %u, i16** %u.addr, align 8
  store i16* %v, i16** %v.addr, align 8
  %0 = load i16*, i16** %u.addr, align 8
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i16*, i16** %u.addr, align 8
  %2 = load i16, i16* %1, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %4 = load i16*, i16** %u.addr, align 8
  %call = call i16* @pabs(i16* %4)
  %call1 = call i16* @pnew(i16* %call)
  store i16* %call1, i16** %u3, align 8
  %5 = load i16*, i16** %v.addr, align 8
  %cmp2 = icmp ne i16* %5, null
  br i1 %cmp2, label %land.rhs.4, label %land.end.8

land.rhs.4:                                       ; preds = %land.end
  %6 = load i16*, i16** %v.addr, align 8
  %7 = load i16, i16* %6, align 2
  %inc5 = add i16 %7, 1
  store i16 %inc5, i16* %6, align 2
  %conv6 = zext i16 %7 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br label %land.end.8

land.end.8:                                       ; preds = %land.rhs.4, %land.end
  %8 = phi i1 [ false, %land.end ], [ %tobool7, %land.rhs.4 ]
  %land.ext9 = zext i1 %8 to i32
  %9 = load i16*, i16** %v.addr, align 8
  %call10 = call i16* @pabs(i16* %9)
  %call11 = call i16* @pnew(i16* %call10)
  store i16* %call11, i16** %v3, align 8
  store i16* null, i16** %q, align 8
  store i16* null, i16** %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %land.end.8
  %10 = load i16*, i16** %v3, align 8
  %call12 = call i32 @pcmpz(i16* %10)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i16*, i16** %u3, align 8
  %12 = load i16*, i16** %v3, align 8
  %call15 = call i16* @pdivmod(i16* %11, i16* %12, i16** %q, i16** %r)
  %13 = load i16*, i16** %v3, align 8
  %call16 = call i16* @psetq(i16** %u3, i16* %13)
  %14 = load i16*, i16** %r, align 8
  %call17 = call i16* @psetq(i16** %v3, i16* %14)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i16*, i16** %v3, align 8
  %cmp18 = icmp ne i16* %15, null
  br i1 %cmp18, label %land.lhs.true, label %land.end.26

land.lhs.true:                                    ; preds = %while.end
  %16 = load i16*, i16** %v3, align 8
  %17 = load i16, i16* %16, align 2
  %dec = add i16 %17, -1
  store i16 %dec, i16* %16, align 2
  %conv20 = zext i16 %dec to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %land.rhs.23, label %land.end.26

land.rhs.23:                                      ; preds = %land.lhs.true
  %18 = load i16*, i16** %v3, align 8
  %call24 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %18)
  %tobool25 = icmp ne i32 %call24, 0
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.23, %land.lhs.true, %while.end
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %while.end ], [ %tobool25, %land.rhs.23 ]
  %land.ext27 = zext i1 %19 to i32
  %20 = load i16*, i16** %q, align 8
  %cmp28 = icmp ne i16* %20, null
  br i1 %cmp28, label %land.lhs.true.30, label %land.end.38

land.lhs.true.30:                                 ; preds = %land.end.26
  %21 = load i16*, i16** %q, align 8
  %22 = load i16, i16* %21, align 2
  %dec31 = add i16 %22, -1
  store i16 %dec31, i16* %21, align 2
  %conv32 = zext i16 %dec31 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %land.rhs.35, label %land.end.38

land.rhs.35:                                      ; preds = %land.lhs.true.30
  %23 = load i16*, i16** %q, align 8
  %call36 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %23)
  %tobool37 = icmp ne i32 %call36, 0
  br label %land.end.38

land.end.38:                                      ; preds = %land.rhs.35, %land.lhs.true.30, %land.end.26
  %24 = phi i1 [ false, %land.lhs.true.30 ], [ false, %land.end.26 ], [ %tobool37, %land.rhs.35 ]
  %land.ext39 = zext i1 %24 to i32
  %25 = load i16*, i16** %r, align 8
  %cmp40 = icmp ne i16* %25, null
  br i1 %cmp40, label %land.lhs.true.42, label %land.end.50

land.lhs.true.42:                                 ; preds = %land.end.38
  %26 = load i16*, i16** %r, align 8
  %27 = load i16, i16* %26, align 2
  %dec43 = add i16 %27, -1
  store i16 %dec43, i16* %26, align 2
  %conv44 = zext i16 %dec43 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %land.rhs.47, label %land.end.50

land.rhs.47:                                      ; preds = %land.lhs.true.42
  %28 = load i16*, i16** %r, align 8
  %call48 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %28)
  %tobool49 = icmp ne i32 %call48, 0
  br label %land.end.50

land.end.50:                                      ; preds = %land.rhs.47, %land.lhs.true.42, %land.end.38
  %29 = phi i1 [ false, %land.lhs.true.42 ], [ false, %land.end.38 ], [ %tobool49, %land.rhs.47 ]
  %land.ext51 = zext i1 %29 to i32
  %30 = load i16*, i16** %u.addr, align 8
  %cmp52 = icmp ne i16* %30, null
  br i1 %cmp52, label %land.lhs.true.54, label %land.end.62

land.lhs.true.54:                                 ; preds = %land.end.50
  %31 = load i16*, i16** %u.addr, align 8
  %32 = load i16, i16* %31, align 2
  %dec55 = add i16 %32, -1
  store i16 %dec55, i16* %31, align 2
  %conv56 = zext i16 %dec55 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %land.rhs.59, label %land.end.62

land.rhs.59:                                      ; preds = %land.lhs.true.54
  %33 = load i16*, i16** %u.addr, align 8
  %call60 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %33)
  %tobool61 = icmp ne i32 %call60, 0
  br label %land.end.62

land.end.62:                                      ; preds = %land.rhs.59, %land.lhs.true.54, %land.end.50
  %34 = phi i1 [ false, %land.lhs.true.54 ], [ false, %land.end.50 ], [ %tobool61, %land.rhs.59 ]
  %land.ext63 = zext i1 %34 to i32
  %35 = load i16*, i16** %v.addr, align 8
  %cmp64 = icmp ne i16* %35, null
  br i1 %cmp64, label %land.lhs.true.66, label %land.end.74

land.lhs.true.66:                                 ; preds = %land.end.62
  %36 = load i16*, i16** %v.addr, align 8
  %37 = load i16, i16* %36, align 2
  %dec67 = add i16 %37, -1
  store i16 %dec67, i16* %36, align 2
  %conv68 = zext i16 %dec67 to i32
  %cmp69 = icmp eq i32 %conv68, 0
  br i1 %cmp69, label %land.rhs.71, label %land.end.74

land.rhs.71:                                      ; preds = %land.lhs.true.66
  %38 = load i16*, i16** %v.addr, align 8
  %call72 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %38)
  %tobool73 = icmp ne i32 %call72, 0
  br label %land.end.74

land.end.74:                                      ; preds = %land.rhs.71, %land.lhs.true.66, %land.end.62
  %39 = phi i1 [ false, %land.lhs.true.66 ], [ false, %land.end.62 ], [ %tobool73, %land.rhs.71 ]
  %land.ext75 = zext i1 %39 to i32
  %40 = load i16*, i16** %u3, align 8
  %call76 = call i16* @presult(i16* %40)
  ret i16* %call76
}

declare i16* @pnew(i16*) #1

declare i16* @pabs(i16*) #1

declare i32 @pcmpz(i16*) #1

declare i16* @pdivmod(i16*, i16*, i16**, i16**) #1

declare i16* @psetq(i16**, i16*) #1

declare i32 @pfree(...) #1

declare i16* @presult(i16*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
