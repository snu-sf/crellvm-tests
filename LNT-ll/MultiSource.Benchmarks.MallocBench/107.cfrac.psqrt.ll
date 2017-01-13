; ModuleID = './MultiSource.Benchmarks.MallocBench/107.cfrac.psqrt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pzero = external global i16*, align 8
@.str = private unnamed_addr constant [6 x i8] c"psqrt\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"negative argument\00", align 1

; Function Attrs: nounwind uwtable
define i16* @psqrt(i16* %y) #0 {
entry:
  %y.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %x = alloca i16*, align 8
  %lastx = alloca i16*, align 8
  store i16* %y, i16** %y.addr, align 8
  store i16* null, i16** %x, align 8
  store i16* null, i16** %lastx, align 8
  %0 = load i16*, i16** %y.addr, align 8
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i16*, i16** %y.addr, align 8
  %2 = load i16, i16* %1, align 2
  %inc = add i16 %2, 1
  store i16 %inc, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %4 = load i16*, i16** %y.addr, align 8
  %call = call i32 @pcmpz(i16* %4)
  store i32 %call, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %6 = load i16*, i16** @pzero, align 8
  %call3 = call i16* @psetq(i16** %lastx, i16* %6)
  br label %if.end.19

if.else:                                          ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  %call7 = call i16* @errorp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %call8 = call i16* @psetq(i16** %x, i16* %call7)
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %8 = load i16*, i16** %y.addr, align 8
  %call10 = call i16* @psetq(i16** %x, i16* %8)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.9
  %9 = load i16*, i16** %x, align 8
  %call11 = call i16* @psetq(i16** %lastx, i16* %9)
  %10 = load i16*, i16** %x, align 8
  %11 = load i16*, i16** %y.addr, align 8
  %12 = load i16*, i16** %x, align 8
  %call12 = call i16* @pdivmod(i16* %11, i16* %12, i16** inttoptr (i64 -1 to i16**), i16** null)
  %call13 = call i16* @padd(i16* %10, i16* %call12)
  %call14 = call i16* @phalf(i16* %call13)
  %call15 = call i16* @psetq(i16** %x, i16* %call14)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i16*, i16** %x, align 8
  %14 = load i16*, i16** %lastx, align 8
  %call16 = call i32 @pcmp(i16* %13, i16* %14)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.6
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %15 = load i16*, i16** %x, align 8
  %cmp20 = icmp ne i16* %15, null
  br i1 %cmp20, label %land.lhs.true, label %land.end.28

land.lhs.true:                                    ; preds = %if.end.19
  %16 = load i16*, i16** %x, align 8
  %17 = load i16, i16* %16, align 2
  %dec = add i16 %17, -1
  store i16 %dec, i16* %16, align 2
  %conv22 = zext i16 %dec to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %land.rhs.25, label %land.end.28

land.rhs.25:                                      ; preds = %land.lhs.true
  %18 = load i16*, i16** %x, align 8
  %call26 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %18)
  %tobool27 = icmp ne i32 %call26, 0
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.25, %land.lhs.true, %if.end.19
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.19 ], [ %tobool27, %land.rhs.25 ]
  %land.ext29 = zext i1 %19 to i32
  %20 = load i16*, i16** %y.addr, align 8
  %cmp30 = icmp ne i16* %20, null
  br i1 %cmp30, label %land.lhs.true.32, label %land.end.40

land.lhs.true.32:                                 ; preds = %land.end.28
  %21 = load i16*, i16** %y.addr, align 8
  %22 = load i16, i16* %21, align 2
  %dec33 = add i16 %22, -1
  store i16 %dec33, i16* %21, align 2
  %conv34 = zext i16 %dec33 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %land.rhs.37, label %land.end.40

land.rhs.37:                                      ; preds = %land.lhs.true.32
  %23 = load i16*, i16** %y.addr, align 8
  %call38 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* %23)
  %tobool39 = icmp ne i32 %call38, 0
  br label %land.end.40

land.end.40:                                      ; preds = %land.rhs.37, %land.lhs.true.32, %land.end.28
  %24 = phi i1 [ false, %land.lhs.true.32 ], [ false, %land.end.28 ], [ %tobool39, %land.rhs.37 ]
  %land.ext41 = zext i1 %24 to i32
  %25 = load i16*, i16** %lastx, align 8
  %call42 = call i16* @presult(i16* %25)
  ret i16* %call42
}

declare i32 @pcmpz(i16*) #1

declare i16* @psetq(i16**, i16*) #1

declare i16* @errorp(i32, i8*, i8*) #1

declare i16* @phalf(i16*) #1

declare i16* @padd(i16*, i16*) #1

declare i16* @pdivmod(i16*, i16*, i16**, i16**) #1

declare i32 @pcmp(i16*, i16*) #1

declare i32 @pfree(...) #1

declare i16* @presult(i16*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
