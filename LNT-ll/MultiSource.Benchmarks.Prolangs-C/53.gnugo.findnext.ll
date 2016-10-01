; ModuleID = './MultiSource.Benchmarks.Prolangs-C/53.gnugo.findnext.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma = external global [19 x [19 x i8]], align 16
@p = external global [19 x [19 x i8]], align 16
@lib = external global i32, align 4
@mymove = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @findnextmove(i32 %m, i32 %n, i32* %i, i32* %j, i32* %val, i32 %minlib) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %val.addr = alloca i32*, align 8
  %minlib.addr = alloca i32, align 4
  %ti = alloca i32, align 4
  %tj = alloca i32, align 4
  %tval = alloca i32, align 4
  %found = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  store i32 %minlib, i32* %minlib.addr, align 4
  store i32 0, i32* %found, align 4
  %0 = load i32*, i32** %i.addr, align 8
  store i32 -1, i32* %0, align 4
  %1 = load i32*, i32** %j.addr, align 8
  store i32 -1, i32* %1, align 4
  %2 = load i32*, i32** %val.addr, align 8
  store i32 -1, i32* %2, align 4
  %3 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %m.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 1, i8* %arrayidx2, align 1
  %5 = load i32, i32* %m.addr, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %n.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx5, i32 0, i64 %idxprom3
  %8 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %9 = load i32, i32* %m.addr, align 4
  %sub10 = sub nsw i32 %9, 1
  store i32 %sub10, i32* %ti, align 4
  %10 = load i32, i32* %n.addr, align 4
  store i32 %10, i32* %tj, align 4
  store i32 0, i32* @lib, align 4
  %11 = load i32, i32* %ti, align 4
  %12 = load i32, i32* %tj, align 4
  %13 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %11, i32 %12, i32 %13)
  %14 = load i32, i32* @lib, align 4
  %15 = load i32, i32* %minlib.addr, align 4
  %call = call i32 @fval(i32 %14, i32 %15)
  store i32 %call, i32* %tval, align 4
  store i32 1, i32* %found, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.then
  %16 = load i32, i32* %n.addr, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load i32, i32* %m.addr, align 4
  %sub12 = sub nsw i32 %17, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx14, i32 0, i64 %idxprom11
  %18 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %18 to i32
  %19 = load i32, i32* @mymove, align 4
  %cmp17 = icmp eq i32 %conv16, %19
  br i1 %cmp17, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.else
  %20 = load i32, i32* %n.addr, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load i32, i32* %m.addr, align 4
  %sub20 = sub nsw i32 %21, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx22, i32 0, i64 %idxprom19
  %22 = load i8, i8* %arrayidx23, align 1
  %tobool = icmp ne i8 %22, 0
  br i1 %tobool, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %m.addr, align 4
  %sub25 = sub nsw i32 %23, 1
  %24 = load i32, i32* %n.addr, align 4
  %25 = load i32, i32* %minlib.addr, align 4
  %call26 = call i32 @findnextmove(i32 %sub25, i32 %24, i32* %ti, i32* %tj, i32* %tval, i32 %25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then.24
  store i32 1, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %land.lhs.true, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.9
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %entry
  %26 = load i32, i32* %found, align 4
  %tobool32 = icmp ne i32 %26, 0
  br i1 %tobool32, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %if.end.31
  store i32 0, i32* %found, align 4
  %27 = load i32, i32* %tval, align 4
  %28 = load i32*, i32** %val.addr, align 8
  %29 = load i32, i32* %28, align 4
  %cmp34 = icmp sgt i32 %27, %29
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  %30 = load i32, i32* %tval, align 4
  %31 = load i32*, i32** %val.addr, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %ti, align 4
  %33 = load i32*, i32** %i.addr, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %tj, align 4
  %35 = load i32*, i32** %j.addr, align 8
  store i32 %34, i32* %35, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.33
  %36 = load i32, i32* %minlib.addr, align 4
  %cmp38 = icmp eq i32 %36, 1
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.31
  %37 = load i32, i32* %m.addr, align 4
  %cmp43 = icmp ne i32 %37, 18
  br i1 %cmp43, label %if.then.45, label %if.end.80

if.then.45:                                       ; preds = %if.end.42
  %38 = load i32, i32* %n.addr, align 4
  %idxprom46 = sext i32 %38 to i64
  %39 = load i32, i32* %m.addr, align 4
  %add = add nsw i32 %39, 1
  %idxprom47 = sext i32 %add to i64
  %arrayidx48 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom47
  %arrayidx49 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx48, i32 0, i64 %idxprom46
  %40 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %40 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %if.then.45
  %41 = load i32, i32* %m.addr, align 4
  %add54 = add nsw i32 %41, 1
  store i32 %add54, i32* %ti, align 4
  %42 = load i32, i32* %n.addr, align 4
  store i32 %42, i32* %tj, align 4
  store i32 0, i32* @lib, align 4
  %43 = load i32, i32* %ti, align 4
  %44 = load i32, i32* %tj, align 4
  %45 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %43, i32 %44, i32 %45)
  %46 = load i32, i32* @lib, align 4
  %47 = load i32, i32* %minlib.addr, align 4
  %call55 = call i32 @fval(i32 %46, i32 %47)
  store i32 %call55, i32* %tval, align 4
  store i32 1, i32* %found, align 4
  br label %if.end.79

if.else.56:                                       ; preds = %if.then.45
  %48 = load i32, i32* %n.addr, align 4
  %idxprom57 = sext i32 %48 to i64
  %49 = load i32, i32* %m.addr, align 4
  %add58 = add nsw i32 %49, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx60, i32 0, i64 %idxprom57
  %50 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %50 to i32
  %51 = load i32, i32* @mymove, align 4
  %cmp63 = icmp eq i32 %conv62, %51
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.78

land.lhs.true.65:                                 ; preds = %if.else.56
  %52 = load i32, i32* %n.addr, align 4
  %idxprom66 = sext i32 %52 to i64
  %53 = load i32, i32* %m.addr, align 4
  %add67 = add nsw i32 %53, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx69, i32 0, i64 %idxprom66
  %54 = load i8, i8* %arrayidx70, align 1
  %tobool71 = icmp ne i8 %54, 0
  br i1 %tobool71, label %if.end.78, label %if.then.72

if.then.72:                                       ; preds = %land.lhs.true.65
  %55 = load i32, i32* %m.addr, align 4
  %add73 = add nsw i32 %55, 1
  %56 = load i32, i32* %n.addr, align 4
  %57 = load i32, i32* %minlib.addr, align 4
  %call74 = call i32 @findnextmove(i32 %add73, i32 %56, i32* %ti, i32* %tj, i32* %tval, i32 %57)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.72
  store i32 1, i32* %found, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %land.lhs.true.65, %if.else.56
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.53
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.42
  %58 = load i32, i32* %found, align 4
  %tobool81 = icmp ne i32 %58, 0
  br i1 %tobool81, label %if.then.82, label %if.end.91

if.then.82:                                       ; preds = %if.end.80
  store i32 0, i32* %found, align 4
  %59 = load i32, i32* %tval, align 4
  %60 = load i32*, i32** %val.addr, align 8
  %61 = load i32, i32* %60, align 4
  %cmp83 = icmp sgt i32 %59, %61
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.82
  %62 = load i32, i32* %tval, align 4
  %63 = load i32*, i32** %val.addr, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %ti, align 4
  %65 = load i32*, i32** %i.addr, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %tj, align 4
  %67 = load i32*, i32** %j.addr, align 8
  store i32 %66, i32* %67, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.then.82
  %68 = load i32, i32* %minlib.addr, align 4
  %cmp87 = icmp eq i32 %68, 1
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  store i32 1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.end.86
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.80
  %69 = load i32, i32* %n.addr, align 4
  %cmp92 = icmp ne i32 %69, 0
  br i1 %cmp92, label %if.then.94, label %if.end.130

if.then.94:                                       ; preds = %if.end.91
  %70 = load i32, i32* %n.addr, align 4
  %sub95 = sub nsw i32 %70, 1
  %idxprom96 = sext i32 %sub95 to i64
  %71 = load i32, i32* %m.addr, align 4
  %idxprom97 = sext i32 %71 to i64
  %arrayidx98 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx98, i32 0, i64 %idxprom96
  %72 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %72 to i32
  %cmp101 = icmp eq i32 %conv100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.106

if.then.103:                                      ; preds = %if.then.94
  %73 = load i32, i32* %m.addr, align 4
  store i32 %73, i32* %ti, align 4
  %74 = load i32, i32* %n.addr, align 4
  %sub104 = sub nsw i32 %74, 1
  store i32 %sub104, i32* %tj, align 4
  store i32 0, i32* @lib, align 4
  %75 = load i32, i32* %ti, align 4
  %76 = load i32, i32* %tj, align 4
  %77 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %75, i32 %76, i32 %77)
  %78 = load i32, i32* @lib, align 4
  %79 = load i32, i32* %minlib.addr, align 4
  %call105 = call i32 @fval(i32 %78, i32 %79)
  store i32 %call105, i32* %tval, align 4
  store i32 1, i32* %found, align 4
  br label %if.end.129

if.else.106:                                      ; preds = %if.then.94
  %80 = load i32, i32* %n.addr, align 4
  %sub107 = sub nsw i32 %80, 1
  %idxprom108 = sext i32 %sub107 to i64
  %81 = load i32, i32* %m.addr, align 4
  %idxprom109 = sext i32 %81 to i64
  %arrayidx110 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx110, i32 0, i64 %idxprom108
  %82 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %82 to i32
  %83 = load i32, i32* @mymove, align 4
  %cmp113 = icmp eq i32 %conv112, %83
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.128

land.lhs.true.115:                                ; preds = %if.else.106
  %84 = load i32, i32* %n.addr, align 4
  %sub116 = sub nsw i32 %84, 1
  %idxprom117 = sext i32 %sub116 to i64
  %85 = load i32, i32* %m.addr, align 4
  %idxprom118 = sext i32 %85 to i64
  %arrayidx119 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx119, i32 0, i64 %idxprom117
  %86 = load i8, i8* %arrayidx120, align 1
  %tobool121 = icmp ne i8 %86, 0
  br i1 %tobool121, label %if.end.128, label %if.then.122

if.then.122:                                      ; preds = %land.lhs.true.115
  %87 = load i32, i32* %m.addr, align 4
  %88 = load i32, i32* %n.addr, align 4
  %sub123 = sub nsw i32 %88, 1
  %89 = load i32, i32* %minlib.addr, align 4
  %call124 = call i32 @findnextmove(i32 %87, i32 %sub123, i32* %ti, i32* %tj, i32* %tval, i32 %89)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.122
  store i32 1, i32* %found, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.then.122
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %land.lhs.true.115, %if.else.106
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.103
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.91
  %90 = load i32, i32* %found, align 4
  %tobool131 = icmp ne i32 %90, 0
  br i1 %tobool131, label %if.then.132, label %if.end.141

if.then.132:                                      ; preds = %if.end.130
  store i32 0, i32* %found, align 4
  %91 = load i32, i32* %tval, align 4
  %92 = load i32*, i32** %val.addr, align 8
  %93 = load i32, i32* %92, align 4
  %cmp133 = icmp sgt i32 %91, %93
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.132
  %94 = load i32, i32* %tval, align 4
  %95 = load i32*, i32** %val.addr, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %ti, align 4
  %97 = load i32*, i32** %i.addr, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %tj, align 4
  %99 = load i32*, i32** %j.addr, align 8
  store i32 %98, i32* %99, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.then.132
  %100 = load i32, i32* %minlib.addr, align 4
  %cmp137 = icmp eq i32 %100, 1
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.136
  store i32 1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.end.136
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.130
  %101 = load i32, i32* %n.addr, align 4
  %cmp142 = icmp ne i32 %101, 18
  br i1 %cmp142, label %if.then.144, label %if.end.180

if.then.144:                                      ; preds = %if.end.141
  %102 = load i32, i32* %n.addr, align 4
  %add145 = add nsw i32 %102, 1
  %idxprom146 = sext i32 %add145 to i64
  %103 = load i32, i32* %m.addr, align 4
  %idxprom147 = sext i32 %103 to i64
  %arrayidx148 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx148, i32 0, i64 %idxprom146
  %104 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %104 to i32
  %cmp151 = icmp eq i32 %conv150, 0
  br i1 %cmp151, label %if.then.153, label %if.else.156

if.then.153:                                      ; preds = %if.then.144
  %105 = load i32, i32* %m.addr, align 4
  store i32 %105, i32* %ti, align 4
  %106 = load i32, i32* %n.addr, align 4
  %add154 = add nsw i32 %106, 1
  store i32 %add154, i32* %tj, align 4
  store i32 0, i32* @lib, align 4
  %107 = load i32, i32* %ti, align 4
  %108 = load i32, i32* %tj, align 4
  %109 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %107, i32 %108, i32 %109)
  %110 = load i32, i32* @lib, align 4
  %111 = load i32, i32* %minlib.addr, align 4
  %call155 = call i32 @fval(i32 %110, i32 %111)
  store i32 %call155, i32* %tval, align 4
  store i32 1, i32* %found, align 4
  br label %if.end.179

if.else.156:                                      ; preds = %if.then.144
  %112 = load i32, i32* %n.addr, align 4
  %add157 = add nsw i32 %112, 1
  %idxprom158 = sext i32 %add157 to i64
  %113 = load i32, i32* %m.addr, align 4
  %idxprom159 = sext i32 %113 to i64
  %arrayidx160 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx160, i32 0, i64 %idxprom158
  %114 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %114 to i32
  %115 = load i32, i32* @mymove, align 4
  %cmp163 = icmp eq i32 %conv162, %115
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.178

land.lhs.true.165:                                ; preds = %if.else.156
  %116 = load i32, i32* %n.addr, align 4
  %add166 = add nsw i32 %116, 1
  %idxprom167 = sext i32 %add166 to i64
  %117 = load i32, i32* %m.addr, align 4
  %idxprom168 = sext i32 %117 to i64
  %arrayidx169 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom168
  %arrayidx170 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx169, i32 0, i64 %idxprom167
  %118 = load i8, i8* %arrayidx170, align 1
  %tobool171 = icmp ne i8 %118, 0
  br i1 %tobool171, label %if.end.178, label %if.then.172

if.then.172:                                      ; preds = %land.lhs.true.165
  %119 = load i32, i32* %m.addr, align 4
  %120 = load i32, i32* %n.addr, align 4
  %add173 = add nsw i32 %120, 1
  %121 = load i32, i32* %minlib.addr, align 4
  %call174 = call i32 @findnextmove(i32 %119, i32 %add173, i32* %ti, i32* %tj, i32* %tval, i32 %121)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.then.172
  store i32 1, i32* %found, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %if.then.172
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %land.lhs.true.165, %if.else.156
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.then.153
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.end.141
  %122 = load i32, i32* %found, align 4
  %tobool181 = icmp ne i32 %122, 0
  br i1 %tobool181, label %if.then.182, label %if.end.191

if.then.182:                                      ; preds = %if.end.180
  store i32 0, i32* %found, align 4
  %123 = load i32, i32* %tval, align 4
  %124 = load i32*, i32** %val.addr, align 8
  %125 = load i32, i32* %124, align 4
  %cmp183 = icmp sgt i32 %123, %125
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.then.182
  %126 = load i32, i32* %tval, align 4
  %127 = load i32*, i32** %val.addr, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %ti, align 4
  %129 = load i32*, i32** %i.addr, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %tj, align 4
  %131 = load i32*, i32** %j.addr, align 8
  store i32 %130, i32* %131, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.then.182
  %132 = load i32, i32* %minlib.addr, align 4
  %cmp187 = icmp eq i32 %132, 1
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.186
  store i32 1, i32* %retval
  br label %return

if.end.190:                                       ; preds = %if.end.186
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.180
  %133 = load i32*, i32** %val.addr, align 8
  %134 = load i32, i32* %133, align 4
  %cmp192 = icmp sgt i32 %134, 0
  br i1 %cmp192, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %if.end.191
  store i32 1, i32* %retval
  br label %return

if.else.195:                                      ; preds = %if.end.191
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.195, %if.then.194, %if.then.189, %if.then.139, %if.then.89, %if.then.40
  %135 = load i32, i32* %retval
  ret i32 %135
}

declare void @countlib(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @fval(i32 %newlib, i32 %minlib) #0 {
entry:
  %newlib.addr = alloca i32, align 4
  %minlib.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 %newlib, i32* %newlib.addr, align 4
  store i32 %minlib, i32* %minlib.addr, align 4
  %0 = load i32, i32* %newlib.addr, align 4
  %1 = load i32, i32* %minlib.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %val, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %newlib.addr, align 4
  %3 = load i32, i32* %minlib.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %k, align 4
  %4 = load i32, i32* %k, align 4
  %sub1 = sub nsw i32 %4, 1
  %mul = mul nsw i32 %sub1, 50
  %5 = load i32, i32* %minlib.addr, align 4
  %6 = load i32, i32* %minlib.addr, align 4
  %mul2 = mul nsw i32 %5, %6
  %7 = load i32, i32* %minlib.addr, align 4
  %mul3 = mul nsw i32 %mul2, %7
  %div = sdiv i32 %mul, %mul3
  %add = add nsw i32 40, %div
  store i32 %add, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %val, align 4
  ret i32 %8
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
