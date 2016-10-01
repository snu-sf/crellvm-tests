; ModuleID = './MultiSource.Benchmarks.Prolangs-C/55.gnugo.genmove.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@umove = external global i32, align 4
@rd = external global i32, align 4
@lib = external global i32, align 4
@mymove = external global i32, align 4
@p = external global [19 x [19 x i8]], align 16
@pass = external global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"I pass.\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"my move: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%1d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @genmove(i32* %i, i32* %j) #0 {
entry:
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %ti = alloca i32, align 4
  %tj = alloca i32, align 4
  %tval = alloca i32, align 4
  %a = alloca i8, align 1
  %ii = alloca i32, align 4
  %val = alloca i32, align 4
  %try1 = alloca i32, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32 0, i32* %try1, align 4
  %0 = load i32*, i32** %i.addr, align 8
  store i32 -1, i32* %0, align 4
  %1 = load i32*, i32** %j.addr, align 8
  store i32 -1, i32* %1, align 4
  store i32 -1, i32* %val, align 4
  %2 = load i32, i32* @umove, align 4
  call void @eval(i32 %2)
  %call = call i32 @findwinner(i32* %ti, i32* %tj, i32* %tval)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %tval, align 4
  %4 = load i32, i32* %val, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %5 = load i32, i32* %tval, align 4
  store i32 %5, i32* %val, align 4
  %6 = load i32, i32* %ti, align 4
  %7 = load i32*, i32** %i.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %tj, align 4
  %9 = load i32*, i32** %j.addr, align 8
  store i32 %8, i32* %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %call3 = call i32 @findsaver(i32* %ti, i32* %tj, i32* %tval)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end.2
  %10 = load i32, i32* %tval, align 4
  %11 = load i32, i32* %val, align 4
  %cmp6 = icmp sgt i32 %10, %11
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %12 = load i32, i32* %tval, align 4
  store i32 %12, i32* %val, align 4
  %13 = load i32, i32* %ti, align 4
  %14 = load i32*, i32** %i.addr, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %tj, align 4
  %16 = load i32*, i32** %j.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end.2
  %call10 = call i32 @findpatn(i32* %ti, i32* %tj, i32* %tval)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.9
  %17 = load i32, i32* %tval, align 4
  %18 = load i32, i32* %val, align 4
  %cmp13 = icmp sgt i32 %17, %18
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  %19 = load i32, i32* %tval, align 4
  store i32 %19, i32* %val, align 4
  %20 = load i32, i32* %ti, align 4
  %21 = load i32*, i32** %i.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %tj, align 4
  %23 = load i32*, i32** %j.addr, align 8
  store i32 %22, i32* %23, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.9
  %24 = load i32, i32* %val, align 4
  %cmp17 = icmp slt i32 %24, 0
  br i1 %cmp17, label %if.then.18, label %if.end.60

if.then.18:                                       ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.18
  call void @random_nasko(i32* @rd)
  %25 = load i32, i32* @rd, align 4
  %rem = srem i32 %25, 19
  %26 = load i32*, i32** %i.addr, align 8
  store i32 %rem, i32* %26, align 4
  %27 = load i32*, i32** %i.addr, align 8
  %28 = load i32, i32* %27, align 4
  %cmp19 = icmp slt i32 %28, 2
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %29 = load i32*, i32** %i.addr, align 8
  %30 = load i32, i32* %29, align 4
  %cmp20 = icmp sgt i32 %30, 16
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %31 = load i32*, i32** %i.addr, align 8
  %32 = load i32, i32* %31, align 4
  %cmp22 = icmp sgt i32 %32, 5
  br i1 %cmp22, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %lor.lhs.false.21
  %33 = load i32*, i32** %i.addr, align 8
  %34 = load i32, i32* %33, align 4
  %cmp23 = icmp slt i32 %34, 13
  br i1 %cmp23, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %land.lhs.true, %lor.lhs.false, %do.body
  call void @random_nasko(i32* @rd)
  %35 = load i32, i32* @rd, align 4
  %rem25 = srem i32 %35, 19
  %36 = load i32*, i32** %i.addr, align 8
  store i32 %rem25, i32* %36, align 4
  %37 = load i32*, i32** %i.addr, align 8
  %38 = load i32, i32* %37, align 4
  %cmp26 = icmp slt i32 %38, 2
  br i1 %cmp26, label %if.then.29, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.then.24
  %39 = load i32*, i32** %i.addr, align 8
  %40 = load i32, i32* %39, align 4
  %cmp28 = icmp sgt i32 %40, 16
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %lor.lhs.false.27, %if.then.24
  call void @random_nasko(i32* @rd)
  %41 = load i32, i32* @rd, align 4
  %rem30 = srem i32 %41, 19
  %42 = load i32*, i32** %i.addr, align 8
  store i32 %rem30, i32* %42, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %lor.lhs.false.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true, %lor.lhs.false.21
  call void @random_nasko(i32* @rd)
  %43 = load i32, i32* @rd, align 4
  %rem33 = srem i32 %43, 19
  %44 = load i32*, i32** %j.addr, align 8
  store i32 %rem33, i32* %44, align 4
  %45 = load i32*, i32** %j.addr, align 8
  %46 = load i32, i32* %45, align 4
  %cmp34 = icmp slt i32 %46, 2
  br i1 %cmp34, label %if.then.41, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.32
  %47 = load i32*, i32** %j.addr, align 8
  %48 = load i32, i32* %47, align 4
  %cmp36 = icmp sgt i32 %48, 16
  br i1 %cmp36, label %if.then.41, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.35
  %49 = load i32*, i32** %j.addr, align 8
  %50 = load i32, i32* %49, align 4
  %cmp38 = icmp sgt i32 %50, 5
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.49

land.lhs.true.39:                                 ; preds = %lor.lhs.false.37
  %51 = load i32*, i32** %j.addr, align 8
  %52 = load i32, i32* %51, align 4
  %cmp40 = icmp slt i32 %52, 13
  br i1 %cmp40, label %if.then.41, label %if.end.49

if.then.41:                                       ; preds = %land.lhs.true.39, %lor.lhs.false.35, %if.end.32
  call void @random_nasko(i32* @rd)
  %53 = load i32, i32* @rd, align 4
  %rem42 = srem i32 %53, 19
  %54 = load i32*, i32** %j.addr, align 8
  store i32 %rem42, i32* %54, align 4
  %55 = load i32*, i32** %j.addr, align 8
  %56 = load i32, i32* %55, align 4
  %cmp43 = icmp slt i32 %56, 2
  br i1 %cmp43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.then.41
  %57 = load i32*, i32** %j.addr, align 8
  %58 = load i32, i32* %57, align 4
  %cmp45 = icmp sgt i32 %58, 16
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %lor.lhs.false.44, %if.then.41
  call void @random_nasko(i32* @rd)
  %59 = load i32, i32* @rd, align 4
  %rem47 = srem i32 %59, 19
  %60 = load i32*, i32** %j.addr, align 8
  store i32 %rem47, i32* %60, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %lor.lhs.false.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true.39, %lor.lhs.false.37
  store i32 0, i32* @lib, align 4
  %61 = load i32*, i32** %i.addr, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %j.addr, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %62, i32 %64, i32 %65)
  br label %do.cond

do.cond:                                          ; preds = %if.end.49
  %66 = load i32, i32* %try1, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %try1, align 4
  %cmp50 = icmp slt i32 %inc, 400
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %67 = load i32*, i32** %j.addr, align 8
  %68 = load i32, i32* %67, align 4
  %idxprom = sext i32 %68 to i64
  %69 = load i32*, i32** %i.addr, align 8
  %70 = load i32, i32* %69, align 4
  %idxprom51 = sext i32 %70 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom51
  %arrayidx52 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %71 = load i8, i8* %arrayidx52, align 1
  %conv = zext i8 %71 to i32
  %cmp53 = icmp ne i32 %conv, 0
  br i1 %cmp53, label %lor.end, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.rhs
  %72 = load i32, i32* @lib, align 4
  %cmp56 = icmp slt i32 %72, 2
  br i1 %cmp56, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.55
  %73 = load i32*, i32** %i.addr, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %j.addr, align 8
  %76 = load i32, i32* %75, align 4
  %call58 = call i32 @fioe(i32 %74, i32 %76)
  %tobool59 = icmp ne i32 %call58, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.55, %land.rhs
  %77 = phi i1 [ true, %lor.lhs.false.55 ], [ true, %land.rhs ], [ %tobool59, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %do.cond
  %78 = phi i1 [ false, %do.cond ], [ %77, %lor.end ]
  br i1 %78, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.60

if.end.60:                                        ; preds = %do.end, %if.end.16
  %79 = load i32, i32* %try1, align 4
  %cmp61 = icmp sge i32 %79, 400
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %if.end.60
  %80 = load i32, i32* @pass, align 4
  %inc64 = add nsw i32 %80, 1
  store i32 %inc64, i32* @pass, align 4
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %81 = load i32*, i32** %i.addr, align 8
  store i32 -1, i32* %81, align 4
  br label %if.end.84

if.else:                                          ; preds = %if.end.60
  store i32 0, i32* @pass, align 4
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  %82 = load i32*, i32** %j.addr, align 8
  %83 = load i32, i32* %82, align 4
  %cmp67 = icmp slt i32 %83, 8
  br i1 %cmp67, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %if.else
  %84 = load i32*, i32** %j.addr, align 8
  %85 = load i32, i32* %84, align 4
  %add = add nsw i32 %85, 65
  %conv70 = trunc i32 %add to i8
  store i8 %conv70, i8* %a, align 1
  br label %if.end.74

if.else.71:                                       ; preds = %if.else
  %86 = load i32*, i32** %j.addr, align 8
  %87 = load i32, i32* %86, align 4
  %add72 = add nsw i32 %87, 66
  %conv73 = trunc i32 %add72 to i8
  store i8 %conv73, i8* %a, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.69
  %88 = load i8, i8* %a, align 1
  %conv75 = sext i8 %88 to i32
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %conv75)
  %89 = load i32*, i32** %i.addr, align 8
  %90 = load i32, i32* %89, align 4
  %sub = sub nsw i32 19, %90
  store i32 %sub, i32* %ii, align 4
  %91 = load i32, i32* %ii, align 4
  %cmp77 = icmp slt i32 %91, 10
  br i1 %cmp77, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %if.end.74
  %92 = load i32, i32* %ii, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %92)
  br label %if.end.83

if.else.81:                                       ; preds = %if.end.74
  %93 = load i32, i32* %ii, align 4
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %93)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.79
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.63
  ret void
}

declare void @eval(i32) #1

declare i32 @findwinner(i32*, i32*, i32*) #1

declare i32 @findsaver(i32*, i32*, i32*) #1

declare i32 @findpatn(i32*, i32*, i32*) #1

declare void @random_nasko(i32*) #1

declare void @countlib(i32, i32, i32) #1

declare i32 @fioe(i32, i32) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
