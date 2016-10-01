; ModuleID = './MultiSource.Benchmarks.Prolangs-C/140.unix-smail.resolve.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table = global [5 x [3 x i32]] [[3 x i32] zeroinitializer, [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 4, i32 1, i32 1], [3 x i32] [i32 3, i32 3, i32 1], [3 x i32] zeroinitializer], align 16
@routing = external global i32, align 4
@handle = external global i32, align 4
@debug = external global i32, align 4
@.str = private unnamed_addr constant [48 x i8] c"resolve: parse address '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"resolve: parse route '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@getcost = external global i32, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@exitstat = external global i32, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"resolve failed '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"resolve '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@hostname = external global [0 x i8], align 1
@hostdomain = external global [0 x i8], align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"route: '%s' is local\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".UUCP\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"smart-host\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"route '%s' failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"route:  '%s' (%s) = '%s' (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: nounwind uwtable
define i32 @resolve(i8* %address, i8* %domain, i8* %user, i32* %cost) #0 {
entry:
  %address.addr = alloca i8*, align 8
  %domain.addr = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  %cost.addr = alloca i32*, align 8
  %form = alloca i32, align 4
  %parts = alloca i32, align 4
  %partv = alloca [32 x i8*], align 16
  %temp = alloca [512 x i8], align 16
  %i = alloca i32, align 4
  %look_smart = alloca i32, align 4
  %junk = alloca [512 x i8], align 16
  store i8* %address, i8** %address.addr, align 8
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %user, i8** %user.addr, align 8
  store i32* %cost, i32** %cost.addr, align 8
  %0 = load i32, i32* @routing, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @handle, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([5 x [3 x i32]], [5 x [3 x i32]]* @table, i32 0, i64 3), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %2, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %address.addr, align 8
  %arraydecay = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i32 0
  %call = call i32 (i8*, i32, i8**, ...) bitcast (i32 (...)* @ssplit to i32 (i8*, i32, i8**, ...)*)(i8* %3, i32 33, i8** %arraydecay)
  store i32 %call, i32* %parts, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 1, i32* %parts, align 4
  %4 = load i8*, i8** %address.addr, align 8
  %arrayidx2 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 0
  store i8* %4, i8** %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %parts, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %cmp3 = icmp sge i32 %6, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [32 x i8*], [32 x i8*]* %partv, i32 0, i64 %idxprom5
  %8 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i8* @strcpy(i8* %arraydecay4, i8* %8) #3
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %9 = load i8*, i8** %domain.addr, align 8
  %10 = load i8*, i8** %user.addr, align 8
  %call9 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @parse to i32 (i8*, i8*, i8*, ...)*)(i8* %arraydecay8, i8* %9, i8* %10)
  store i32 %call9, i32* %form, align 4
  %11 = load i32, i32* @debug, align 4
  %cmp10 = icmp eq i32 %11, 2
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %for.body
  %arraydecay12 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %12 = load i8*, i8** %user.addr, align 8
  %13 = load i8*, i8** %domain.addr, align 8
  %14 = load i32, i32* %form, align 4
  %call13 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 %14)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i8* %arraydecay12, i8* %12, i8* %13, i8* %call13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %for.body
  %15 = load i32, i32* %i, align 4
  %cmp16 = icmp ne i32 %15, 0
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.20

land.lhs.true.17:                                 ; preds = %if.end.15
  %16 = load i32, i32* %form, align 4
  %cmp18 = icmp eq i32 %16, 1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.17
  br label %for.inc

if.end.20:                                        ; preds = %land.lhs.true.17, %if.end.15
  %17 = load i32, i32* @handle, align 4
  %idxprom21 = sext i32 %17 to i64
  %18 = load i32, i32* %form, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx23, i32 0, i64 %idxprom21
  %19 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %19, 4
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %20 = load i32, i32* @handle, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load i32, i32* %form, align 4
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx28, i32 0, i64 %idxprom26
  %22 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %22, 3
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.52

land.lhs.true.31:                                 ; preds = %lor.lhs.false
  %23 = load i32, i32* @routing, align 4
  %cmp32 = icmp ne i32 %23, 0
  br i1 %cmp32, label %if.then.33, label %if.else.52

if.then.33:                                       ; preds = %land.lhs.true.31, %if.end.20
  store i32 0, i32* %look_smart, align 4
  %24 = load i32, i32* @routing, align 4
  %cmp34 = icmp eq i32 %24, 2
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.38

land.lhs.true.35:                                 ; preds = %if.then.33
  %25 = load i32, i32* %i, align 4
  %cmp36 = icmp eq i32 %25, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.35
  store i32 1, i32* %look_smart, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %land.lhs.true.35, %if.then.33
  %26 = load i8*, i8** %domain.addr, align 8
  %27 = load i8*, i8** %user.addr, align 8
  %28 = load i32, i32* %look_smart, align 4
  %arraydecay39 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %29 = load i32*, i32** %cost.addr, align 8
  %call40 = call i32 @route(i8* %26, i8* %27, i32 %28, i8* %arraydecay39, i32* %29)
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  br label %for.inc

if.end.43:                                        ; preds = %if.end.38
  %arraydecay44 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %30 = load i8*, i8** %domain.addr, align 8
  %31 = load i8*, i8** %user.addr, align 8
  %call45 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @parse to i32 (i8*, i8*, i8*, ...)*)(i8* %arraydecay44, i8* %30, i8* %31)
  store i32 %call45, i32* %form, align 4
  %32 = load i32, i32* @debug, align 4
  %cmp46 = icmp eq i32 %32, 2
  br i1 %cmp46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.end.43
  %arraydecay48 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %33 = load i8*, i8** %user.addr, align 8
  %34 = load i8*, i8** %domain.addr, align 8
  %35 = load i32, i32* %form, align 4
  %call49 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 %35)
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay48, i8* %33, i8* %34, i8* %call49)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.end.43
  br label %if.end.66

if.else.52:                                       ; preds = %land.lhs.true.31, %lor.lhs.false
  %36 = load i32, i32* @getcost, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %land.lhs.true.53, label %if.end.65

land.lhs.true.53:                                 ; preds = %if.else.52
  %37 = load i32, i32* @handle, align 4
  %idxprom54 = sext i32 %37 to i64
  %38 = load i32, i32* %form, align 4
  %idxprom55 = sext i32 %38 to i64
  %arrayidx56 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i32 0, i64 %idxprom55
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx56, i32 0, i64 %idxprom54
  %39 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp eq i32 %39, 3
  br i1 %cmp58, label %if.then.59, label %if.end.65

if.then.59:                                       ; preds = %land.lhs.true.53
  %40 = load i8*, i8** %domain.addr, align 8
  %41 = load i8*, i8** %user.addr, align 8
  %arraydecay60 = getelementptr inbounds [512 x i8], [512 x i8]* %junk, i32 0, i32 0
  %42 = load i32*, i32** %cost.addr, align 8
  %call61 = call i32 @route(i8* %40, i8* %41, i32 0, i8* %arraydecay60, i32* %42)
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.59
  br label %for.inc

if.end.64:                                        ; preds = %if.then.59
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true.53, %if.else.52
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.51
  br label %for.end

for.inc:                                          ; preds = %if.then.63, %if.then.42, %if.then.19
  %43 = load i32, i32* %i, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.66, %for.cond
  %44 = load i32, i32* @handle, align 4
  %idxprom67 = sext i32 %44 to i64
  %45 = load i32, i32* %form, align 4
  %idxprom68 = sext i32 %45 to i64
  %arrayidx69 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i32 0, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx69, i32 0, i64 %idxprom67
  %46 = load i32, i32* %arrayidx70, align 4
  %cmp71 = icmp eq i32 %46, 1
  br i1 %cmp71, label %land.lhs.true.72, label %if.end.80

land.lhs.true.72:                                 ; preds = %for.end
  %47 = load i32, i32* %form, align 4
  %cmp73 = icmp ne i32 %47, 1
  br i1 %cmp73, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %land.lhs.true.72
  %48 = load i8*, i8** %domain.addr, align 8
  %49 = load i8*, i8** %user.addr, align 8
  %50 = load i32, i32* %form, align 4
  %arraydecay75 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %call76 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* %48, i8* %49, i32 %50, i8* %arraydecay75)
  %51 = load i8*, i8** %user.addr, align 8
  %arraydecay77 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %call78 = call i8* @strcpy(i8* %51, i8* %arraydecay77) #3
  %52 = load i8*, i8** %domain.addr, align 8
  %call79 = call i8* @strcpy(i8* %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #3
  store i32 1, i32* %form, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.74, %land.lhs.true.72, %for.end
  %53 = load i32, i32* %form, align 4
  %cmp81 = icmp eq i32 %53, 0
  br i1 %cmp81, label %if.then.88, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %if.end.80
  %54 = load i32, i32* @handle, align 4
  %idxprom83 = sext i32 %54 to i64
  %55 = load i32, i32* %form, align 4
  %idxprom84 = sext i32 %55 to i64
  %arrayidx85 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i32 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx85, i32 0, i64 %idxprom83
  %56 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp eq i32 %56, 4
  br i1 %cmp87, label %if.then.88, label %if.else.94

if.then.88:                                       ; preds = %lor.lhs.false.82, %if.end.80
  store i32 68, i32* @exitstat, align 4
  %57 = load i32, i32* @debug, align 4
  %cmp89 = icmp ne i32 %57, 0
  br i1 %cmp89, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %if.then.88
  %58 = load i8*, i8** %address.addr, align 8
  %59 = load i8*, i8** %user.addr, align 8
  %60 = load i8*, i8** %domain.addr, align 8
  %61 = load i32, i32* %form, align 4
  %call91 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 %61)
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* %58, i8* %59, i8* %60, i8* %call91)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %if.then.88
  store i32 0, i32* %form, align 4
  br label %if.end.100

if.else.94:                                       ; preds = %lor.lhs.false.82
  %62 = load i32, i32* @debug, align 4
  %cmp95 = icmp ne i32 %62, 0
  br i1 %cmp95, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %if.else.94
  %63 = load i8*, i8** %address.addr, align 8
  %64 = load i8*, i8** %user.addr, align 8
  %65 = load i8*, i8** %domain.addr, align 8
  %66 = load i32, i32* %form, align 4
  %call97 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 %66)
  %call98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* %63, i8* %64, i8* %65, i8* %call97)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %if.else.94
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.93
  %67 = load i32, i32* %form, align 4
  ret i32 %67
}

declare i32 @ssplit(...) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @parse(...) #1

declare i32 @printf(i8*, ...) #1

declare i8* @sform(...) #1

declare i32 @build(...) #1

; Function Attrs: nounwind uwtable
define i32 @route(i8* %domain, i8* %user, i32 %look_smart, i8* %result, i32* %cost) #0 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %user.addr = alloca i8*, align 8
  %look_smart.addr = alloca i32, align 4
  %result.addr = alloca i8*, align 8
  %cost.addr = alloca i32*, align 8
  %uucpdom = alloca i32, align 4
  %domains = alloca i32, align 4
  %step = alloca i32, align 4
  %domainv = alloca [16 x i8*], align 16
  %temp = alloca [512 x i8], align 16
  %path = alloca [512 x i8], align 16
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %user, i8** %user.addr, align 8
  store i32 %look_smart, i32* %look_smart.addr, align 4
  store i8* %result, i8** %result.addr, align 8
  store i32* %cost, i32** %cost.addr, align 8
  store i32 0, i32* %uucpdom, align 4
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i64 0
  store i8 46, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 1
  %0 = load i8*, i8** %domain.addr, align 8
  %call = call i8* @strcpy(i8* %add.ptr, i8* %0) #3
  %arraydecay1 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %add.ptr2 = getelementptr inbounds i8, i8* %arraydecay1, i64 1
  %arraydecay3 = getelementptr inbounds [16 x i8*], [16 x i8*]* %domainv, i32 0, i32 0
  %call4 = call i32 (i8*, i32, i8**, ...) bitcast (i32 (...)* @ssplit to i32 (i8*, i32, i8**, ...)*)(i8* %add.ptr2, i32 46, i8** %arraydecay3)
  store i32 %call4, i32* %domains, align 4
  %1 = load i8*, i8** %domain.addr, align 8
  %call5 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %1, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i32 0, i32 0))
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %domain.addr, align 8
  %call6 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %2, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i32 0, i32 0))
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.end.13

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %step, align 4
  %3 = load i32*, i32** %cost.addr, align 8
  store i32 0, i32* %3, align 4
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %path, i32 0, i32 0
  %call9 = call i8* @strcpy(i8* %arraydecay8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #3
  %4 = load i32, i32* @debug, align 4
  %cmp10 = icmp eq i32 %4, 2
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %5 = load i8*, i8** %domain.addr, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  br label %route_complete

if.end.13:                                        ; preds = %lor.lhs.false
  %6 = load i32, i32* %domains, align 4
  %cmp14 = icmp sgt i32 %6, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.13
  %7 = load i32, i32* %domains, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds [16 x i8*], [16 x i8*]* %domainv, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 (i8*, ...) bitcast (i32 (...)* @isuucp to i32 (i8*, ...)*)(i8* %8)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %domains, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %domains, align 4
  %10 = load i32, i32* %domains, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [16 x i8*], [16 x i8*]* %domainv, i32 0, i64 %idxprom18
  %11 = load i8*, i8** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %11, i64 -1
  store i8 0, i8* %arrayidx20, align 1
  store i32 1, i32* %uucpdom, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %land.lhs.true, %if.end.13
  store i32 0, i32* %step, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %12 = load i32, i32* %step, align 4
  %13 = load i32, i32* %domains, align 4
  %cmp22 = icmp slt i32 %12, %13
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %step, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [16 x i8*], [16 x i8*]* %domainv, i32 0, i64 %idxprom23
  %15 = load i8*, i8** %arrayidx24, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %15, i64 -1
  %arraydecay26 = getelementptr inbounds [512 x i8], [512 x i8]* %path, i32 0, i32 0
  %16 = load i32*, i32** %cost.addr, align 8
  %call27 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* %add.ptr25, i8* %arraydecay26, i32* %16)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.35, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %for.body
  %17 = load i32, i32* %step, align 4
  %idxprom30 = sext i32 %17 to i64
  %arrayidx31 = getelementptr inbounds [16 x i8*], [16 x i8*]* %domainv, i32 0, i64 %idxprom30
  %18 = load i8*, i8** %arrayidx31, align 8
  %arraydecay32 = getelementptr inbounds [512 x i8], [512 x i8]* %path, i32 0, i32 0
  %19 = load i32*, i32** %cost.addr, align 8
  %call33 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* %18, i8* %arraydecay32, i32* %19)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false.29, %for.body
  br label %for.end

if.end.36:                                        ; preds = %lor.lhs.false.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %20 = load i32, i32* %step, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %step, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.35, %for.cond
  %21 = load i32, i32* %step, align 4
  %22 = load i32, i32* %domains, align 4
  %cmp37 = icmp eq i32 %21, %22
  br i1 %cmp37, label %if.then.38, label %if.end.57

if.then.38:                                       ; preds = %for.end
  %23 = load i32, i32* %uucpdom, align 4
  %cmp39 = icmp eq i32 %23, 0
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.then.38
  %arraydecay41 = getelementptr inbounds [512 x i8], [512 x i8]* %path, i32 0, i32 0
  %24 = load i32*, i32** %cost.addr, align 8
  %call42 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay41, i32* %24)
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %lor.lhs.false.40, %if.then.38
  %25 = load i32, i32* %look_smart.addr, align 4
  %cmp45 = icmp eq i32 %25, 0
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.then.44
  %arraydecay47 = getelementptr inbounds [512 x i8], [512 x i8]* %path, i32 0, i32 0
  %26 = load i32*, i32** %cost.addr, align 8
  %call48 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay47, i32* %26)
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.end.55

if.then.50:                                       ; preds = %lor.lhs.false.46, %if.then.44
  %27 = load i32, i32* @debug, align 4
  %cmp51 = icmp eq i32 %27, 2
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.then.50
  %28 = load i8*, i8** %domain.addr, align 8
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* %28)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.50
  store i32 68, i32* %retval
  br label %return

if.end.55:                                        ; preds = %lor.lhs.false.46
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %lor.lhs.false.40
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.end
  br label %route_complete

route_complete:                                   ; preds = %if.end.57, %if.end
  %29 = load i32, i32* @debug, align 4
  %cmp58 = icmp eq i32 %29, 2
  br i1 %cmp58, label %if.then.59, label %if.end.67

if.then.59:                                       ; preds = %route_complete
  %30 = load i8*, i8** %domain.addr, align 8
  %31 = load i32, i32* %step, align 4
  %idxprom60 = sext i32 %31 to i64
  %arrayidx61 = getelementptr inbounds [16 x i8*], [16 x i8*]* %domainv, i32 0, i64 %idxprom60
  %32 = load i8*, i8** %arrayidx61, align 8
  %tobool62 = icmp ne i8* %32, null
  br i1 %tobool62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.59
  %33 = load i32, i32* %step, align 4
  %idxprom63 = sext i32 %33 to i64
  %arrayidx64 = getelementptr inbounds [16 x i8*], [16 x i8*]* %domainv, i32 0, i64 %idxprom63
  %34 = load i8*, i8** %arrayidx64, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.59
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %34, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.false ]
  %arraydecay65 = getelementptr inbounds [512 x i8], [512 x i8]* %path, i32 0, i32 0
  %35 = load i32*, i32** %cost.addr, align 8
  %36 = load i32, i32* %35, align 4
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* %30, i8* %cond, i8* %arraydecay65, i32 %36)
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end, %route_complete
  %37 = load i8*, i8** %domain.addr, align 8
  %38 = load i8*, i8** %user.addr, align 8
  %39 = load i32, i32* %step, align 4
  %cmp68 = icmp eq i32 %39, 0
  %cond69 = select i1 %cmp68, i32 1, i32 3
  %arraydecay70 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %call71 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* %37, i8* %38, i32 %cond69, i8* %arraydecay70)
  %40 = load i8*, i8** %result.addr, align 8
  %arraydecay72 = getelementptr inbounds [512 x i8], [512 x i8]* %path, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [512 x i8], [512 x i8]* %temp, i32 0, i32 0
  %call74 = call i32 (i8*, i8*, ...) @sprintf(i8* %40, i8* %arraydecay72, i8* %arraydecay73) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.end.54
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @strcmpic(...) #1

declare i32 @isuucp(...) #1

declare i32 @getpath(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
