; ModuleID = './MultiSource.Benchmarks.Prolangs-C/125.unix-tbl.ti.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ncol = external global i32, align 4
@dboxflg = external global i32, align 4
@nlin = external global i32, align 4
@fullbot = external global [0 x i32], align 4
@instead = external global [0 x i8*], align 8

; Function Attrs: nounwind uwtable
define i32 @interv(i32 %i, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %ku = alloca i32, align 4
  %kl = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load i32, i32* @ncol, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end.12

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* @dboxflg, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* %i.addr, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  %5 = load i32, i32* %i.addr, align 4
  %6 = load i32, i32* @nlin, align 4
  %cmp5 = icmp sge i32 %5, %6
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  store i32 3, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then
  %7 = load i32, i32* %c.addr, align 4
  %8 = load i32, i32* @ncol, align 4
  %cmp9 = icmp sge i32 %7, %8
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %lor.lhs.false
  %9 = load i32, i32* %i.addr, align 4
  %cmp13 = icmp sgt i32 %9, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %10 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %10, 1
  %11 = load i32, i32* %c.addr, align 4
  %call = call i32 @lefdata(i32 %sub, i32 %11)
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %ku, align 4
  %12 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %12, 1
  %13 = load i32, i32* @nlin, align 4
  %cmp14 = icmp sge i32 %add, %13
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %cond.end
  store i32 0, i32* %kl, align 4
  br label %if.end.24

if.else:                                          ; preds = %cond.end
  %14 = load i32, i32* %i.addr, align 4
  %call16 = call i32 @allh(i32 %14)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %if.else
  %15 = load i32, i32* %i.addr, align 4
  %add19 = add nsw i32 %15, 1
  br label %cond.end.21

cond.false.20:                                    ; preds = %if.else
  %16 = load i32, i32* %i.addr, align 4
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i32 [ %add19, %cond.true.18 ], [ %16, %cond.false.20 ]
  %17 = load i32, i32* %c.addr, align 4
  %call23 = call i32 @lefdata(i32 %cond22, i32 %17)
  store i32 %call23, i32* %kl, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %cond.end.21, %if.then.15
  %18 = load i32, i32* %ku, align 4
  %cmp25 = icmp eq i32 %18, 2
  br i1 %cmp25, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.24
  %19 = load i32, i32* %kl, align 4
  %cmp26 = icmp eq i32 %19, 2
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  store i32 3, i32* %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true, %if.end.24
  %20 = load i32, i32* %ku, align 4
  %cmp29 = icmp eq i32 %20, 2
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.28
  %21 = load i32, i32* %kl, align 4
  %cmp32 = icmp eq i32 %21, 2
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  store i32 2, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.31
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.33, %if.then.30, %if.then.27, %if.then.10, %if.end.7, %if.then.6, %if.then.4
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @lefdata(i32, i32) #1

declare i32 @allh(i32) #1

; Function Attrs: nounwind uwtable
define i32 @interh(i32 %i, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %kl = alloca i32, align 4
  %kr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 61
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @dboxflg, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %i.addr, align 4
  %5 = load i32, i32* @nlin, align 4
  %sub = sub nsw i32 %5, 1
  %cmp3 = icmp sge i32 %4, %sub
  br i1 %cmp3, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false.2, %land.lhs.true, %entry
  %6 = load i32, i32* %c.addr, align 4
  %7 = load i32, i32* @ncol, align 4
  %cmp4 = icmp eq i32 %6, %7
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load i32, i32* %c.addr, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  store i32 3, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false.2, %lor.lhs.false
  %9 = load i32, i32* %i.addr, align 4
  %10 = load i32, i32* @nlin, align 4
  %cmp10 = icmp sge i32 %9, %10
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  %11 = load i32, i32* %c.addr, align 4
  %cmp13 = icmp sgt i32 %11, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %12 = load i32, i32* %i.addr, align 4
  %13 = load i32, i32* %c.addr, align 4
  %sub14 = sub nsw i32 %13, 1
  %call = call i32 @thish(i32 %12, i32 %sub14)
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %kl, align 4
  %14 = load i32, i32* %kl, align 4
  %cmp15 = icmp sle i32 %14, 1
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.31

land.lhs.true.16:                                 ; preds = %cond.end
  %15 = load i32, i32* %i.addr, align 4
  %cmp17 = icmp sgt i32 %15, 0
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.31

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %16 = load i32, i32* %i.addr, align 4
  %call19 = call i32 @up1(i32 %16)
  %call20 = call i32 @allh(i32 %call19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %land.lhs.true.18
  %17 = load i32, i32* %c.addr, align 4
  %cmp23 = icmp sgt i32 %17, 0
  br i1 %cmp23, label %cond.true.24, label %cond.false.28

cond.true.24:                                     ; preds = %if.then.22
  %18 = load i32, i32* %i.addr, align 4
  %call25 = call i32 @up1(i32 %18)
  %19 = load i32, i32* %c.addr, align 4
  %sub26 = sub nsw i32 %19, 1
  %call27 = call i32 @thish(i32 %call25, i32 %sub26)
  br label %cond.end.29

cond.false.28:                                    ; preds = %if.then.22
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.24
  %cond30 = phi i32 [ %call27, %cond.true.24 ], [ 0, %cond.false.28 ]
  store i32 %cond30, i32* %kl, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %cond.end.29, %land.lhs.true.18, %land.lhs.true.16, %cond.end
  %20 = load i32, i32* %i.addr, align 4
  %21 = load i32, i32* %c.addr, align 4
  %call32 = call i32 @thish(i32 %20, i32 %21)
  store i32 %call32, i32* %kr, align 4
  %22 = load i32, i32* %kr, align 4
  %cmp33 = icmp sle i32 %22, 1
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.48

land.lhs.true.34:                                 ; preds = %if.end.31
  %23 = load i32, i32* %i.addr, align 4
  %cmp35 = icmp sgt i32 %23, 0
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.48

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %24 = load i32, i32* %i.addr, align 4
  %call37 = call i32 @up1(i32 %24)
  %call38 = call i32 @allh(i32 %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %land.lhs.true.36
  %25 = load i32, i32* %c.addr, align 4
  %cmp41 = icmp sgt i32 %25, 0
  br i1 %cmp41, label %cond.true.42, label %cond.false.45

cond.true.42:                                     ; preds = %if.then.40
  %26 = load i32, i32* %i.addr, align 4
  %call43 = call i32 @up1(i32 %26)
  %27 = load i32, i32* %c.addr, align 4
  %call44 = call i32 @thish(i32 %call43, i32 %27)
  br label %cond.end.46

cond.false.45:                                    ; preds = %if.then.40
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.42
  %cond47 = phi i32 [ %call44, %cond.true.42 ], [ 0, %cond.false.45 ]
  store i32 %cond47, i32* %kr, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.46, %land.lhs.true.36, %land.lhs.true.34, %if.end.31
  %28 = load i32, i32* %kl, align 4
  %cmp49 = icmp eq i32 %28, 61
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.53

land.lhs.true.50:                                 ; preds = %if.end.48
  %29 = load i32, i32* %kr, align 4
  %cmp51 = icmp eq i32 %29, 61
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true.50
  store i32 3, i32* %retval
  br label %return

if.end.53:                                        ; preds = %land.lhs.true.50, %if.end.48
  %30 = load i32, i32* %kl, align 4
  %cmp54 = icmp eq i32 %30, 61
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  store i32 1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.53
  %31 = load i32, i32* %kr, align 4
  %cmp57 = icmp eq i32 %31, 61
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  store i32 2, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.56
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.58, %if.then.55, %if.then.52, %if.then.11, %if.end.8, %if.then.7, %if.then.5
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @thish(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @up1(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %i.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %i.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %i.addr, align 4
  %dec1 = add nsw i32 %5, -1
  store i32 %dec1, i32* %i.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i32, i32* %i.addr, align 4
  ret i32 %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
