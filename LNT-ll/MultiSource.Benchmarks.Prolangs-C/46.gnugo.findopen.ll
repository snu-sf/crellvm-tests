; ModuleID = './MultiSource.Benchmarks.Prolangs-C/46.gnugo.findopen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma = external global [19 x [19 x i8]], align 16
@p = external global [19 x [19 x i8]], align 16
@mik = external global i32, align 4
@mjk = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @findopen(i32 %m, i32 %n, i32* %i, i32* %j, i32 %color, i32 %minlib, i32* %ct) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %minlib.addr = alloca i32, align 4
  %ct.addr = alloca i32*, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 %minlib, i32* %minlib.addr, align 4
  store i32* %ct, i32** %ct.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %m.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 1, i8* %arrayidx2, align 1
  %2 = load i32, i32* %m.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.47

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx5, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, i32* %m.addr, align 4
  %sub9 = sub nsw i32 %6, 1
  %7 = load i32, i32* @mik, align 4
  %cmp10 = icmp ne i32 %sub9, %7
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i32, i32* %n.addr, align 4
  %9 = load i32, i32* @mjk, align 4
  %cmp12 = icmp ne i32 %8, %9
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load i32, i32* %m.addr, align 4
  %sub15 = sub nsw i32 %10, 1
  %11 = load i32*, i32** %ct.addr, align 8
  %12 = load i32, i32* %11, align 4
  %idxprom16 = sext i32 %12 to i64
  %13 = load i32*, i32** %i.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %13, i64 %idxprom16
  store i32 %sub15, i32* %arrayidx17, align 4
  %14 = load i32, i32* %n.addr, align 4
  %15 = load i32*, i32** %ct.addr, align 8
  %16 = load i32, i32* %15, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i32*, i32** %j.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %17, i64 %idxprom18
  store i32 %14, i32* %arrayidx19, align 4
  %18 = load i32*, i32** %ct.addr, align 8
  %19 = load i32, i32* %18, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %18, align 4
  %20 = load i32*, i32** %ct.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %minlib.addr, align 4
  %cmp20 = icmp eq i32 %21, %22
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.14
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.14
  br label %if.end.46

if.else:                                          ; preds = %lor.lhs.false, %if.then
  %23 = load i32, i32* %n.addr, align 4
  %idxprom23 = sext i32 %23 to i64
  %24 = load i32, i32* %m.addr, align 4
  %sub24 = sub nsw i32 %24, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx26, i32 0, i64 %idxprom23
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %25 to i32
  %26 = load i32, i32* %color.addr, align 4
  %cmp29 = icmp eq i32 %conv28, %26
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.45

land.lhs.true.31:                                 ; preds = %if.else
  %27 = load i32, i32* %n.addr, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load i32, i32* %m.addr, align 4
  %sub33 = sub nsw i32 %28, 1
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx35, i32 0, i64 %idxprom32
  %29 = load i8, i8* %arrayidx36, align 1
  %tobool = icmp ne i8 %29, 0
  br i1 %tobool, label %if.end.45, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.31
  %30 = load i32, i32* %m.addr, align 4
  %sub38 = sub nsw i32 %30, 1
  %31 = load i32, i32* %n.addr, align 4
  %32 = load i32*, i32** %i.addr, align 8
  %33 = load i32*, i32** %j.addr, align 8
  %34 = load i32, i32* %color.addr, align 4
  %35 = load i32, i32* %minlib.addr, align 4
  %36 = load i32*, i32** %ct.addr, align 8
  %call = call i32 @findopen(i32 %sub38, i32 %31, i32* %32, i32* %33, i32 %34, i32 %35, i32* %36)
  %tobool39 = icmp ne i32 %call, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.44

land.lhs.true.40:                                 ; preds = %if.then.37
  %37 = load i32*, i32** %ct.addr, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %minlib.addr, align 4
  %cmp41 = icmp eq i32 %38, %39
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.40
  store i32 1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %land.lhs.true.40, %if.then.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.31, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %entry
  %40 = load i32, i32* %m.addr, align 4
  %cmp48 = icmp ne i32 %40, 18
  br i1 %cmp48, label %if.then.50, label %if.end.103

if.then.50:                                       ; preds = %if.end.47
  %41 = load i32, i32* %n.addr, align 4
  %idxprom51 = sext i32 %41 to i64
  %42 = load i32, i32* %m.addr, align 4
  %add = add nsw i32 %42, 1
  %idxprom52 = sext i32 %add to i64
  %arrayidx53 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom52
  %arrayidx54 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx53, i32 0, i64 %idxprom51
  %43 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %43 to i32
  %cmp56 = icmp eq i32 %conv55, 0
  br i1 %cmp56, label %land.lhs.true.58, label %if.else.76

land.lhs.true.58:                                 ; preds = %if.then.50
  %44 = load i32, i32* %m.addr, align 4
  %add59 = add nsw i32 %44, 1
  %45 = load i32, i32* @mik, align 4
  %cmp60 = icmp ne i32 %add59, %45
  br i1 %cmp60, label %if.then.65, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true.58
  %46 = load i32, i32* %n.addr, align 4
  %47 = load i32, i32* @mjk, align 4
  %cmp63 = icmp ne i32 %46, %47
  br i1 %cmp63, label %if.then.65, label %if.else.76

if.then.65:                                       ; preds = %lor.lhs.false.62, %land.lhs.true.58
  %48 = load i32, i32* %m.addr, align 4
  %add66 = add nsw i32 %48, 1
  %49 = load i32*, i32** %ct.addr, align 8
  %50 = load i32, i32* %49, align 4
  %idxprom67 = sext i32 %50 to i64
  %51 = load i32*, i32** %i.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %51, i64 %idxprom67
  store i32 %add66, i32* %arrayidx68, align 4
  %52 = load i32, i32* %n.addr, align 4
  %53 = load i32*, i32** %ct.addr, align 8
  %54 = load i32, i32* %53, align 4
  %idxprom69 = sext i32 %54 to i64
  %55 = load i32*, i32** %j.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %55, i64 %idxprom69
  store i32 %52, i32* %arrayidx70, align 4
  %56 = load i32*, i32** %ct.addr, align 8
  %57 = load i32, i32* %56, align 4
  %inc71 = add nsw i32 %57, 1
  store i32 %inc71, i32* %56, align 4
  %58 = load i32*, i32** %ct.addr, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %minlib.addr, align 4
  %cmp72 = icmp eq i32 %59, %60
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.65
  store i32 1, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.then.65
  br label %if.end.102

if.else.76:                                       ; preds = %lor.lhs.false.62, %if.then.50
  %61 = load i32, i32* %n.addr, align 4
  %idxprom77 = sext i32 %61 to i64
  %62 = load i32, i32* %m.addr, align 4
  %add78 = add nsw i32 %62, 1
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx80, i32 0, i64 %idxprom77
  %63 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %63 to i32
  %64 = load i32, i32* %color.addr, align 4
  %cmp83 = icmp eq i32 %conv82, %64
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.101

land.lhs.true.85:                                 ; preds = %if.else.76
  %65 = load i32, i32* %n.addr, align 4
  %idxprom86 = sext i32 %65 to i64
  %66 = load i32, i32* %m.addr, align 4
  %add87 = add nsw i32 %66, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx89, i32 0, i64 %idxprom86
  %67 = load i8, i8* %arrayidx90, align 1
  %tobool91 = icmp ne i8 %67, 0
  br i1 %tobool91, label %if.end.101, label %if.then.92

if.then.92:                                       ; preds = %land.lhs.true.85
  %68 = load i32, i32* %m.addr, align 4
  %add93 = add nsw i32 %68, 1
  %69 = load i32, i32* %n.addr, align 4
  %70 = load i32*, i32** %i.addr, align 8
  %71 = load i32*, i32** %j.addr, align 8
  %72 = load i32, i32* %color.addr, align 4
  %73 = load i32, i32* %minlib.addr, align 4
  %74 = load i32*, i32** %ct.addr, align 8
  %call94 = call i32 @findopen(i32 %add93, i32 %69, i32* %70, i32* %71, i32 %72, i32 %73, i32* %74)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.100

land.lhs.true.96:                                 ; preds = %if.then.92
  %75 = load i32*, i32** %ct.addr, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %minlib.addr, align 4
  %cmp97 = icmp eq i32 %76, %77
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %land.lhs.true.96
  store i32 1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %land.lhs.true.96, %if.then.92
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %land.lhs.true.85, %if.else.76
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.75
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.47
  %78 = load i32, i32* %n.addr, align 4
  %cmp104 = icmp ne i32 %78, 0
  br i1 %cmp104, label %if.then.106, label %if.end.160

if.then.106:                                      ; preds = %if.end.103
  %79 = load i32, i32* %n.addr, align 4
  %sub107 = sub nsw i32 %79, 1
  %idxprom108 = sext i32 %sub107 to i64
  %80 = load i32, i32* %m.addr, align 4
  %idxprom109 = sext i32 %80 to i64
  %arrayidx110 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx110, i32 0, i64 %idxprom108
  %81 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %81 to i32
  %cmp113 = icmp eq i32 %conv112, 0
  br i1 %cmp113, label %land.lhs.true.115, label %if.else.133

land.lhs.true.115:                                ; preds = %if.then.106
  %82 = load i32, i32* %m.addr, align 4
  %83 = load i32, i32* @mik, align 4
  %cmp116 = icmp ne i32 %82, %83
  br i1 %cmp116, label %if.then.122, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %land.lhs.true.115
  %84 = load i32, i32* %n.addr, align 4
  %sub119 = sub nsw i32 %84, 1
  %85 = load i32, i32* @mjk, align 4
  %cmp120 = icmp ne i32 %sub119, %85
  br i1 %cmp120, label %if.then.122, label %if.else.133

if.then.122:                                      ; preds = %lor.lhs.false.118, %land.lhs.true.115
  %86 = load i32, i32* %m.addr, align 4
  %87 = load i32*, i32** %ct.addr, align 8
  %88 = load i32, i32* %87, align 4
  %idxprom123 = sext i32 %88 to i64
  %89 = load i32*, i32** %i.addr, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %89, i64 %idxprom123
  store i32 %86, i32* %arrayidx124, align 4
  %90 = load i32, i32* %n.addr, align 4
  %sub125 = sub nsw i32 %90, 1
  %91 = load i32*, i32** %ct.addr, align 8
  %92 = load i32, i32* %91, align 4
  %idxprom126 = sext i32 %92 to i64
  %93 = load i32*, i32** %j.addr, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %93, i64 %idxprom126
  store i32 %sub125, i32* %arrayidx127, align 4
  %94 = load i32*, i32** %ct.addr, align 8
  %95 = load i32, i32* %94, align 4
  %inc128 = add nsw i32 %95, 1
  store i32 %inc128, i32* %94, align 4
  %96 = load i32*, i32** %ct.addr, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %minlib.addr, align 4
  %cmp129 = icmp eq i32 %97, %98
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.then.122
  store i32 1, i32* %retval
  br label %return

if.end.132:                                       ; preds = %if.then.122
  br label %if.end.159

if.else.133:                                      ; preds = %lor.lhs.false.118, %if.then.106
  %99 = load i32, i32* %n.addr, align 4
  %sub134 = sub nsw i32 %99, 1
  %idxprom135 = sext i32 %sub134 to i64
  %100 = load i32, i32* %m.addr, align 4
  %idxprom136 = sext i32 %100 to i64
  %arrayidx137 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom136
  %arrayidx138 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx137, i32 0, i64 %idxprom135
  %101 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %101 to i32
  %102 = load i32, i32* %color.addr, align 4
  %cmp140 = icmp eq i32 %conv139, %102
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.158

land.lhs.true.142:                                ; preds = %if.else.133
  %103 = load i32, i32* %n.addr, align 4
  %sub143 = sub nsw i32 %103, 1
  %idxprom144 = sext i32 %sub143 to i64
  %104 = load i32, i32* %m.addr, align 4
  %idxprom145 = sext i32 %104 to i64
  %arrayidx146 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom145
  %arrayidx147 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx146, i32 0, i64 %idxprom144
  %105 = load i8, i8* %arrayidx147, align 1
  %tobool148 = icmp ne i8 %105, 0
  br i1 %tobool148, label %if.end.158, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.142
  %106 = load i32, i32* %m.addr, align 4
  %107 = load i32, i32* %n.addr, align 4
  %sub150 = sub nsw i32 %107, 1
  %108 = load i32*, i32** %i.addr, align 8
  %109 = load i32*, i32** %j.addr, align 8
  %110 = load i32, i32* %color.addr, align 4
  %111 = load i32, i32* %minlib.addr, align 4
  %112 = load i32*, i32** %ct.addr, align 8
  %call151 = call i32 @findopen(i32 %106, i32 %sub150, i32* %108, i32* %109, i32 %110, i32 %111, i32* %112)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.157

land.lhs.true.153:                                ; preds = %if.then.149
  %113 = load i32*, i32** %ct.addr, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %minlib.addr, align 4
  %cmp154 = icmp eq i32 %114, %115
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %land.lhs.true.153
  store i32 1, i32* %retval
  br label %return

if.end.157:                                       ; preds = %land.lhs.true.153, %if.then.149
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %land.lhs.true.142, %if.else.133
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.132
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.103
  %116 = load i32, i32* %n.addr, align 4
  %cmp161 = icmp ne i32 %116, 18
  br i1 %cmp161, label %if.then.163, label %if.end.217

if.then.163:                                      ; preds = %if.end.160
  %117 = load i32, i32* %n.addr, align 4
  %add164 = add nsw i32 %117, 1
  %idxprom165 = sext i32 %add164 to i64
  %118 = load i32, i32* %m.addr, align 4
  %idxprom166 = sext i32 %118 to i64
  %arrayidx167 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx167, i32 0, i64 %idxprom165
  %119 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %119 to i32
  %cmp170 = icmp eq i32 %conv169, 0
  br i1 %cmp170, label %land.lhs.true.172, label %if.else.190

land.lhs.true.172:                                ; preds = %if.then.163
  %120 = load i32, i32* %m.addr, align 4
  %121 = load i32, i32* @mik, align 4
  %cmp173 = icmp ne i32 %120, %121
  br i1 %cmp173, label %if.then.179, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %land.lhs.true.172
  %122 = load i32, i32* %n.addr, align 4
  %add176 = add nsw i32 %122, 1
  %123 = load i32, i32* @mjk, align 4
  %cmp177 = icmp ne i32 %add176, %123
  br i1 %cmp177, label %if.then.179, label %if.else.190

if.then.179:                                      ; preds = %lor.lhs.false.175, %land.lhs.true.172
  %124 = load i32, i32* %m.addr, align 4
  %125 = load i32*, i32** %ct.addr, align 8
  %126 = load i32, i32* %125, align 4
  %idxprom180 = sext i32 %126 to i64
  %127 = load i32*, i32** %i.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %127, i64 %idxprom180
  store i32 %124, i32* %arrayidx181, align 4
  %128 = load i32, i32* %n.addr, align 4
  %add182 = add nsw i32 %128, 1
  %129 = load i32*, i32** %ct.addr, align 8
  %130 = load i32, i32* %129, align 4
  %idxprom183 = sext i32 %130 to i64
  %131 = load i32*, i32** %j.addr, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %131, i64 %idxprom183
  store i32 %add182, i32* %arrayidx184, align 4
  %132 = load i32*, i32** %ct.addr, align 8
  %133 = load i32, i32* %132, align 4
  %inc185 = add nsw i32 %133, 1
  store i32 %inc185, i32* %132, align 4
  %134 = load i32*, i32** %ct.addr, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %minlib.addr, align 4
  %cmp186 = icmp eq i32 %135, %136
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.then.179
  store i32 1, i32* %retval
  br label %return

if.end.189:                                       ; preds = %if.then.179
  br label %if.end.216

if.else.190:                                      ; preds = %lor.lhs.false.175, %if.then.163
  %137 = load i32, i32* %n.addr, align 4
  %add191 = add nsw i32 %137, 1
  %idxprom192 = sext i32 %add191 to i64
  %138 = load i32, i32* %m.addr, align 4
  %idxprom193 = sext i32 %138 to i64
  %arrayidx194 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom193
  %arrayidx195 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx194, i32 0, i64 %idxprom192
  %139 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %139 to i32
  %140 = load i32, i32* %color.addr, align 4
  %cmp197 = icmp eq i32 %conv196, %140
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.215

land.lhs.true.199:                                ; preds = %if.else.190
  %141 = load i32, i32* %n.addr, align 4
  %add200 = add nsw i32 %141, 1
  %idxprom201 = sext i32 %add200 to i64
  %142 = load i32, i32* %m.addr, align 4
  %idxprom202 = sext i32 %142 to i64
  %arrayidx203 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i32 0, i64 %idxprom202
  %arrayidx204 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx203, i32 0, i64 %idxprom201
  %143 = load i8, i8* %arrayidx204, align 1
  %tobool205 = icmp ne i8 %143, 0
  br i1 %tobool205, label %if.end.215, label %if.then.206

if.then.206:                                      ; preds = %land.lhs.true.199
  %144 = load i32, i32* %m.addr, align 4
  %145 = load i32, i32* %n.addr, align 4
  %add207 = add nsw i32 %145, 1
  %146 = load i32*, i32** %i.addr, align 8
  %147 = load i32*, i32** %j.addr, align 8
  %148 = load i32, i32* %color.addr, align 4
  %149 = load i32, i32* %minlib.addr, align 4
  %150 = load i32*, i32** %ct.addr, align 8
  %call208 = call i32 @findopen(i32 %144, i32 %add207, i32* %146, i32* %147, i32 %148, i32 %149, i32* %150)
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %land.lhs.true.210, label %if.end.214

land.lhs.true.210:                                ; preds = %if.then.206
  %151 = load i32*, i32** %ct.addr, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %minlib.addr, align 4
  %cmp211 = icmp eq i32 %152, %153
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %land.lhs.true.210
  store i32 1, i32* %retval
  br label %return

if.end.214:                                       ; preds = %land.lhs.true.210, %if.then.206
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %land.lhs.true.199, %if.else.190
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.end.189
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.160
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.217, %if.then.213, %if.then.188, %if.then.156, %if.then.131, %if.then.99, %if.then.74, %if.then.43, %if.then.22
  %154 = load i32, i32* %retval
  ret i32 %154
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
