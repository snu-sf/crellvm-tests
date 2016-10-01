; ModuleID = './MultiSource.Benchmarks.Prolangs-C/47.gnugo.findcolr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external global [19 x [19 x i8]], align 16

; Function Attrs: nounwind uwtable
define i32 @findcolor(i32 %i, i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %color1 = alloca i32, align 4
  %color2 = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %color1, align 4
  %0 = load i32, i32* %i.addr, align 4
  store i32 %0, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %1 = load i32, i32* %k, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i32, i32* %j.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %5 = load i32, i32* %k, align 4
  %cmp4 = icmp sgt i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %6 = phi i1 [ false, %do.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %7 = load i32, i32* %j.addr, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx8, i32 0, i64 %idxprom6
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  store i32 %conv10, i32* %color1, align 4
  store i32 0, i32* %color2, align 4
  %10 = load i32, i32* %i.addr, align 4
  store i32 %10, i32* %k, align 4
  br label %do.body.11

do.body.11:                                       ; preds = %land.end.23, %do.end
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.body.11
  %12 = load i32, i32* %j.addr, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx15, i32 0, i64 %idxprom13
  %14 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %land.rhs.20, label %land.end.23

land.rhs.20:                                      ; preds = %do.cond.12
  %15 = load i32, i32* %k, align 4
  %cmp21 = icmp slt i32 %15, 18
  br label %land.end.23

land.end.23:                                      ; preds = %land.rhs.20, %do.cond.12
  %16 = phi i1 [ false, %do.cond.12 ], [ %cmp21, %land.rhs.20 ]
  br i1 %16, label %do.body.11, label %do.end.24

do.end.24:                                        ; preds = %land.end.23
  %17 = load i32, i32* %j.addr, align 4
  %idxprom25 = sext i32 %17 to i64
  %18 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx27, i32 0, i64 %idxprom25
  %19 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %19 to i32
  store i32 %conv29, i32* %color2, align 4
  %20 = load i32, i32* %color1, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.else.35

if.then:                                          ; preds = %do.end.24
  %21 = load i32, i32* %color1, align 4
  %22 = load i32, i32* %color2, align 4
  %cmp30 = icmp eq i32 %21, %22
  br i1 %cmp30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %23 = load i32, i32* %color2, align 4
  %cmp32 = icmp eq i32 %23, 0
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %lor.lhs.false, %if.then
  %24 = load i32, i32* %color1, align 4
  store i32 %24, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

if.else.35:                                       ; preds = %do.end.24
  %25 = load i32, i32* %color2, align 4
  %tobool36 = icmp ne i32 %25, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.35
  %26 = load i32, i32* %color2, align 4
  store i32 %26, i32* %retval
  br label %return

if.else.38:                                       ; preds = %if.else.35
  store i32 0, i32* %color1, align 4
  %27 = load i32, i32* %j.addr, align 4
  store i32 %27, i32* %k, align 4
  br label %do.body.39

do.body.39:                                       ; preds = %land.end.52, %if.else.38
  %28 = load i32, i32* %k, align 4
  %dec40 = add nsw i32 %28, -1
  store i32 %dec40, i32* %k, align 4
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.39
  %29 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %29 to i64
  %30 = load i32, i32* %i.addr, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx44, i32 0, i64 %idxprom42
  %31 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %31 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %land.rhs.49, label %land.end.52

land.rhs.49:                                      ; preds = %do.cond.41
  %32 = load i32, i32* %k, align 4
  %cmp50 = icmp sgt i32 %32, 0
  br label %land.end.52

land.end.52:                                      ; preds = %land.rhs.49, %do.cond.41
  %33 = phi i1 [ false, %do.cond.41 ], [ %cmp50, %land.rhs.49 ]
  br i1 %33, label %do.body.39, label %do.end.53

do.end.53:                                        ; preds = %land.end.52
  %34 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %34 to i64
  %35 = load i32, i32* %i.addr, align 4
  %idxprom55 = sext i32 %35 to i64
  %arrayidx56 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom55
  %arrayidx57 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx56, i32 0, i64 %idxprom54
  %36 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %36 to i32
  store i32 %conv58, i32* %color1, align 4
  store i32 0, i32* %color2, align 4
  %37 = load i32, i32* %j.addr, align 4
  store i32 %37, i32* %k, align 4
  br label %do.body.59

do.body.59:                                       ; preds = %land.end.72, %do.end.53
  %38 = load i32, i32* %k, align 4
  %inc60 = add nsw i32 %38, 1
  store i32 %inc60, i32* %k, align 4
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.59
  %39 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %39 to i64
  %40 = load i32, i32* %i.addr, align 4
  %idxprom63 = sext i32 %40 to i64
  %arrayidx64 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx64, i32 0, i64 %idxprom62
  %41 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %41 to i32
  %cmp67 = icmp eq i32 %conv66, 0
  br i1 %cmp67, label %land.rhs.69, label %land.end.72

land.rhs.69:                                      ; preds = %do.cond.61
  %42 = load i32, i32* %k, align 4
  %cmp70 = icmp slt i32 %42, 18
  br label %land.end.72

land.end.72:                                      ; preds = %land.rhs.69, %do.cond.61
  %43 = phi i1 [ false, %do.cond.61 ], [ %cmp70, %land.rhs.69 ]
  br i1 %43, label %do.body.59, label %do.end.73

do.end.73:                                        ; preds = %land.end.72
  %44 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %44 to i64
  %45 = load i32, i32* %i.addr, align 4
  %idxprom75 = sext i32 %45 to i64
  %arrayidx76 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx76, i32 0, i64 %idxprom74
  %46 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %46 to i32
  store i32 %conv78, i32* %color2, align 4
  %47 = load i32, i32* %color1, align 4
  %tobool79 = icmp ne i32 %47, 0
  br i1 %tobool79, label %if.then.80, label %if.else.88

if.then.80:                                       ; preds = %do.end.73
  %48 = load i32, i32* %color1, align 4
  %49 = load i32, i32* %color2, align 4
  %cmp81 = icmp eq i32 %48, %49
  br i1 %cmp81, label %if.then.86, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.then.80
  %50 = load i32, i32* %color2, align 4
  %cmp84 = icmp eq i32 %50, 0
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %lor.lhs.false.83, %if.then.80
  %51 = load i32, i32* %color1, align 4
  store i32 %51, i32* %retval
  br label %return

if.else.87:                                       ; preds = %lor.lhs.false.83
  store i32 0, i32* %retval
  br label %return

if.else.88:                                       ; preds = %do.end.73
  %52 = load i32, i32* %color2, align 4
  %tobool89 = icmp ne i32 %52, 0
  br i1 %tobool89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %if.else.88
  %53 = load i32, i32* %color2, align 4
  store i32 %53, i32* %retval
  br label %return

if.else.91:                                       ; preds = %if.else.88
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.91, %if.then.90, %if.else.87, %if.then.86, %if.then.37, %if.else, %if.then.34
  %54 = load i32, i32* %retval
  ret i32 %54
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
