; ModuleID = './MultiSource.Benchmarks.Prolangs-C/48.gnugo.findpatn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@findpatn.cnd = internal global i32 0, align 4
@findpatn.mtype = internal global i32 0, align 4
@opn = external global [9 x i32], align 16
@p = external global [19 x [19 x i8]], align 16
@mymove = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @findpatn(i32* %i, i32* %j, i32* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %val.addr = alloca i32*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %ti = alloca i32, align 4
  %tj = alloca i32, align 4
  %tval = alloca i32, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  %0 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 4), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 4), align 4
  %1 = load i32*, i32** %i.addr, align 8
  %2 = load i32*, i32** %j.addr, align 8
  %3 = load i32, i32* @findpatn.mtype, align 4
  %call = call i32 @opening(i32* %1, i32* %2, i32* @findpatn.cnd, i32 %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 4), align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load i32*, i32** %j.addr, align 8
  %5 = load i32, i32* %4, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %i.addr, align 8
  %7 = load i32, i32* %6, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %9 = load i32*, i32** %val.addr, align 8
  store i32 80, i32* %9, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 4), align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %10 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 0), align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.8
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 0), align 4
  %call11 = call i32 @openregion(i32 0, i32 0, i32 5, i32 5)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.then.10
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 0, i32* @findpatn.mtype, align 4
  %11 = load i32*, i32** %i.addr, align 8
  %12 = load i32*, i32** %j.addr, align 8
  %13 = load i32, i32* @findpatn.mtype, align 4
  %call14 = call i32 @opening(i32* %11, i32* %12, i32* @findpatn.cnd, i32 %13)
  %14 = load i32*, i32** %i.addr, align 8
  %15 = load i32*, i32** %j.addr, align 8
  %16 = load i32, i32* @findpatn.mtype, align 4
  %call15 = call i32 @opening(i32* %14, i32* %15, i32* @findpatn.cnd, i32 %16)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 4), align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.13
  %17 = load i32*, i32** %val.addr, align 8
  store i32 80, i32* %17, align 4
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.10
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.8
  %18 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 1), align 4
  %tobool21 = icmp ne i32 %18, 0
  br i1 %tobool21, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %if.end.20
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 1), align 4
  %call23 = call i32 @openregion(i32 13, i32 0, i32 18, i32 5)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.then.22
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 1, i32* @findpatn.mtype, align 4
  %19 = load i32*, i32** %i.addr, align 8
  %20 = load i32*, i32** %j.addr, align 8
  %21 = load i32, i32* @findpatn.mtype, align 4
  %call26 = call i32 @opening(i32* %19, i32* %20, i32* @findpatn.cnd, i32 %21)
  %22 = load i32*, i32** %i.addr, align 8
  %23 = load i32*, i32** %j.addr, align 8
  %24 = load i32, i32* @findpatn.mtype, align 4
  %call27 = call i32 @opening(i32* %22, i32* %23, i32* @findpatn.cnd, i32 %24)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 4), align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.25
  %25 = load i32*, i32** %val.addr, align 8
  store i32 80, i32* %25, align 4
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.22
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.20
  %26 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 2), align 4
  %tobool33 = icmp ne i32 %26, 0
  br i1 %tobool33, label %if.then.34, label %if.end.44

if.then.34:                                       ; preds = %if.end.32
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 2), align 4
  %call35 = call i32 @openregion(i32 0, i32 13, i32 5, i32 18)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.then.34
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 2, i32* @findpatn.mtype, align 4
  %27 = load i32*, i32** %i.addr, align 8
  %28 = load i32*, i32** %j.addr, align 8
  %29 = load i32, i32* @findpatn.mtype, align 4
  %call38 = call i32 @opening(i32* %27, i32* %28, i32* @findpatn.cnd, i32 %29)
  %30 = load i32*, i32** %i.addr, align 8
  %31 = load i32*, i32** %j.addr, align 8
  %32 = load i32, i32* @findpatn.mtype, align 4
  %call39 = call i32 @opening(i32* %30, i32* %31, i32* @findpatn.cnd, i32 %32)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.37
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 4), align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.then.37
  %33 = load i32*, i32** %val.addr, align 8
  store i32 80, i32* %33, align 4
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.34
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.32
  %34 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 3), align 4
  %tobool45 = icmp ne i32 %34, 0
  br i1 %tobool45, label %if.then.46, label %if.end.56

if.then.46:                                       ; preds = %if.end.44
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 3), align 4
  %call47 = call i32 @openregion(i32 13, i32 13, i32 18, i32 18)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.then.46
  store i32 0, i32* @findpatn.cnd, align 4
  store i32 3, i32* @findpatn.mtype, align 4
  %35 = load i32*, i32** %i.addr, align 8
  %36 = load i32*, i32** %j.addr, align 8
  %37 = load i32, i32* @findpatn.mtype, align 4
  %call50 = call i32 @opening(i32* %35, i32* %36, i32* @findpatn.cnd, i32 %37)
  %38 = load i32*, i32** %i.addr, align 8
  %39 = load i32*, i32** %j.addr, align 8
  %40 = load i32, i32* @findpatn.mtype, align 4
  %call51 = call i32 @opening(i32* %38, i32* %39, i32* @findpatn.cnd, i32 %40)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.49
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 4), align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.49
  %41 = load i32*, i32** %val.addr, align 8
  store i32 80, i32* %41, align 4
  store i32 1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.then.46
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.44
  %42 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 5), align 4
  %tobool57 = icmp ne i32 %42, 0
  br i1 %tobool57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.end.56
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 5), align 4
  %call59 = call i32 @openregion(i32 0, i32 6, i32 4, i32 11)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.58
  %43 = load i32*, i32** %i.addr, align 8
  store i32 3, i32* %43, align 4
  %44 = load i32*, i32** %j.addr, align 8
  store i32 9, i32* %44, align 4
  %45 = load i32*, i32** %val.addr, align 8
  store i32 80, i32* %45, align 4
  store i32 1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.58
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.56
  %46 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 6), align 4
  %tobool64 = icmp ne i32 %46, 0
  br i1 %tobool64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.end.63
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 6), align 4
  %call66 = call i32 @openregion(i32 18, i32 6, i32 14, i32 11)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.65
  %47 = load i32*, i32** %i.addr, align 8
  store i32 15, i32* %47, align 4
  %48 = load i32*, i32** %j.addr, align 8
  store i32 9, i32* %48, align 4
  %49 = load i32*, i32** %val.addr, align 8
  store i32 80, i32* %49, align 4
  store i32 1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.then.65
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.63
  %50 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 7), align 4
  %tobool71 = icmp ne i32 %50, 0
  br i1 %tobool71, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %if.end.70
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 7), align 4
  %call73 = call i32 @openregion(i32 6, i32 0, i32 11, i32 4)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.72
  %51 = load i32*, i32** %i.addr, align 8
  store i32 9, i32* %51, align 4
  %52 = load i32*, i32** %j.addr, align 8
  store i32 3, i32* %52, align 4
  %53 = load i32*, i32** %val.addr, align 8
  store i32 80, i32* %53, align 4
  store i32 1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.then.72
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.70
  %54 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 8), align 4
  %tobool78 = icmp ne i32 %54, 0
  br i1 %tobool78, label %if.then.79, label %if.end.84

if.then.79:                                       ; preds = %if.end.77
  store i32 0, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @opn, i32 0, i64 8), align 4
  %call80 = call i32 @openregion(i32 6, i32 18, i32 11, i32 14)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.then.79
  %55 = load i32*, i32** %i.addr, align 8
  store i32 9, i32* %55, align 4
  %56 = load i32*, i32** %j.addr, align 8
  store i32 15, i32* %56, align 4
  %57 = load i32*, i32** %val.addr, align 8
  store i32 80, i32* %57, align 4
  store i32 1, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.then.79
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.77
  %58 = load i32*, i32** %i.addr, align 8
  store i32 -1, i32* %58, align 4
  %59 = load i32*, i32** %j.addr, align 8
  store i32 -1, i32* %59, align 4
  %60 = load i32*, i32** %val.addr, align 8
  store i32 -1, i32* %60, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.105, %if.end.84
  %61 = load i32, i32* %m, align 4
  %cmp85 = icmp slt i32 %61, 19
  br i1 %cmp85, label %for.body, label %for.end.107

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc, %for.body
  %62 = load i32, i32* %n, align 4
  %cmp88 = icmp slt i32 %62, 19
  br i1 %cmp88, label %for.body.90, label %for.end

for.body.90:                                      ; preds = %for.cond.87
  %63 = load i32, i32* %n, align 4
  %idxprom91 = sext i32 %63 to i64
  %64 = load i32, i32* %m, align 4
  %idxprom92 = sext i32 %64 to i64
  %arrayidx93 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom92
  %arrayidx94 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx93, i32 0, i64 %idxprom91
  %65 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %65 to i32
  %66 = load i32, i32* @mymove, align 4
  %cmp96 = icmp eq i32 %conv95, %66
  br i1 %cmp96, label %land.lhs.true, label %if.end.104

land.lhs.true:                                    ; preds = %for.body.90
  %67 = load i32, i32* %m, align 4
  %68 = load i32, i32* %n, align 4
  %call98 = call i32 @matchpat(i32 %67, i32 %68, i32* %ti, i32* %tj, i32* %tval)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.104

land.lhs.true.100:                                ; preds = %land.lhs.true
  %69 = load i32, i32* %tval, align 4
  %70 = load i32*, i32** %val.addr, align 8
  %71 = load i32, i32* %70, align 4
  %cmp101 = icmp sgt i32 %69, %71
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %land.lhs.true.100
  %72 = load i32, i32* %tval, align 4
  %73 = load i32*, i32** %val.addr, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %ti, align 4
  %75 = load i32*, i32** %i.addr, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %tj, align 4
  %77 = load i32*, i32** %j.addr, align 8
  store i32 %76, i32* %77, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %land.lhs.true.100, %land.lhs.true, %for.body.90
  br label %for.inc

for.inc:                                          ; preds = %if.end.104
  %78 = load i32, i32* %n, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.87

for.end:                                          ; preds = %for.cond.87
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end
  %79 = load i32, i32* %m, align 4
  %inc106 = add nsw i32 %79, 1
  store i32 %inc106, i32* %m, align 4
  br label %for.cond

for.end.107:                                      ; preds = %for.cond
  %80 = load i32*, i32** %val.addr, align 8
  %81 = load i32, i32* %80, align 4
  %cmp108 = icmp sgt i32 %81, 0
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %for.end.107
  store i32 1, i32* %retval
  br label %return

if.else.111:                                      ; preds = %for.end.107
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.111, %if.then.110, %if.then.82, %if.then.75, %if.then.68, %if.then.61, %if.end.54, %if.end.42, %if.end.30, %if.end.18, %if.then.6
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare i32 @opening(i32*, i32*, i32*, i32) #1

declare i32 @openregion(i32, i32, i32, i32) #1

declare i32 @matchpat(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
