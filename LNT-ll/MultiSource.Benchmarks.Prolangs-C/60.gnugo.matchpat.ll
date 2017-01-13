; ModuleID = './MultiSource.Benchmarks.Prolangs-C/60.gnugo.matchpat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { [16 x %struct.patval], i32, i32, i32 }
%struct.patval = type { i32, i32, i32 }

@matchpat.pat = internal global [24 x %struct.pattern] zeroinitializer, align 16
@matchpat.trf = internal global [8 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 1, i32 0]]], align 16
@p = external global [19 x [19 x i8]], align 16
@umove = external global i32, align 4
@mymove = external global i32, align 4
@lib = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @matchpat(i32 %m, i32 %n, i32* %i, i32* %j, i32* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %val.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %my = alloca i32, align 4
  %nx = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %cont = alloca i32, align 4
  %ti = alloca i32, align 4
  %tj = alloca i32, align 4
  %tval = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  %0 = load i32*, i32** %i.addr, align 8
  store i32 -1, i32* %0, align 4
  %1 = load i32*, i32** %j.addr, align 8
  store i32 -1, i32* %1, align 4
  %2 = load i32*, i32** %val.addr, align 8
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.266, %entry
  %3 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %3, 24
  br i1 %cmp, label %for.body, label %for.end.268

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %l, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %l, align 4
  %5 = load i32, i32* %r, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i32 0, i64 %idxprom
  %trfno = getelementptr inbounds %struct.pattern, %struct.pattern* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %trfno, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  store i32 1, i32* %cont, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %for.body.3
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %r, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i32 0, i64 %idxprom4
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %arrayidx5, i32 0, i32 1
  %9 = load i32, i32* %patlen, align 4
  %cmp6 = icmp ne i32 %7, %9
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i32, i32* %cont, align 4
  %tobool = icmp ne i32 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, i32* %n.addr, align 4
  %13 = load i32, i32* %l, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx8, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx9, i32 0, i64 0
  %14 = load i32, i32* %arrayidx10, align 4
  %15 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i32, i32* %r, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i32 0, i64 %idxprom12
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %arrayidx13, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %patn, i32 0, i64 %idxprom11
  %x = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx14, i32 0, i32 0
  %17 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %14, %17
  %add = add nsw i32 %12, %mul
  %18 = load i32, i32* %l, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx16, i32 0, i64 0
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx17, i32 0, i64 1
  %19 = load i32, i32* %arrayidx18, align 4
  %20 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load i32, i32* %r, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i32 0, i64 %idxprom20
  %patn22 = getelementptr inbounds %struct.pattern, %struct.pattern* %arrayidx21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %patn22, i32 0, i64 %idxprom19
  %y = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx23, i32 0, i32 1
  %22 = load i32, i32* %y, align 4
  %mul24 = mul nsw i32 %19, %22
  %add25 = add nsw i32 %add, %mul24
  store i32 %add25, i32* %nx, align 4
  %23 = load i32, i32* %m.addr, align 4
  %24 = load i32, i32* %l, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx27, i32 0, i64 1
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx28, i32 0, i64 0
  %25 = load i32, i32* %arrayidx29, align 4
  %26 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load i32, i32* %r, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i32 0, i64 %idxprom31
  %patn33 = getelementptr inbounds %struct.pattern, %struct.pattern* %arrayidx32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %patn33, i32 0, i64 %idxprom30
  %x35 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx34, i32 0, i32 0
  %28 = load i32, i32* %x35, align 4
  %mul36 = mul nsw i32 %25, %28
  %add37 = add nsw i32 %23, %mul36
  %29 = load i32, i32* %l, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @matchpat.trf, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx39, i32 0, i64 1
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx40, i32 0, i64 1
  %30 = load i32, i32* %arrayidx41, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %31 to i64
  %32 = load i32, i32* %r, align 4
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i32 0, i64 %idxprom43
  %patn45 = getelementptr inbounds %struct.pattern, %struct.pattern* %arrayidx44, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %patn45, i32 0, i64 %idxprom42
  %y47 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx46, i32 0, i32 1
  %33 = load i32, i32* %y47, align 4
  %mul48 = mul nsw i32 %30, %33
  %add49 = add nsw i32 %add37, %mul48
  store i32 %add49, i32* %my, align 4
  %34 = load i32, i32* %my, align 4
  %cmp50 = icmp slt i32 %34, 0
  br i1 %cmp50, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %35 = load i32, i32* %my, align 4
  %cmp51 = icmp sgt i32 %35, 18
  br i1 %cmp51, label %if.then, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* %nx, align 4
  %cmp53 = icmp slt i32 %36, 0
  br i1 %cmp53, label %if.then, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.52
  %37 = load i32, i32* %nx, align 4
  %cmp55 = icmp sgt i32 %37, 18
  br i1 %cmp55, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.54, %lor.lhs.false.52, %lor.lhs.false, %while.body
  store i32 0, i32* %cont, align 4
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false.54
  %38 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %38 to i64
  %39 = load i32, i32* %r, align 4
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i32 0, i64 %idxprom57
  %patn59 = getelementptr inbounds %struct.pattern, %struct.pattern* %arrayidx58, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [16 x %struct.patval], [16 x %struct.patval]* %patn59, i32 0, i64 %idxprom56
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx60, i32 0, i32 2
  %40 = load i32, i32* %att, align 4
  switch i32 %40, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.68
    i32 2, label %sw.bb.78
    i32 3, label %sw.bb.88
    i32 4, label %sw.bb.102
    i32 5, label %sw.bb.123
    i32 6, label %sw.bb.145
  ]

sw.bb:                                            ; preds = %if.end
  %41 = load i32, i32* %nx, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load i32, i32* %my, align 4
  %idxprom62 = sext i32 %42 to i64
  %arrayidx63 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx63, i32 0, i64 %idxprom61
  %43 = load i8, i8* %arrayidx64, align 1
  %conv = zext i8 %43 to i32
  %cmp65 = icmp eq i32 %conv, 0
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %sw.bb
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  store i32 0, i32* %cont, align 4
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end
  %44 = load i32, i32* %nx, align 4
  %idxprom69 = sext i32 %44 to i64
  %45 = load i32, i32* %my, align 4
  %idxprom70 = sext i32 %45 to i64
  %arrayidx71 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx71, i32 0, i64 %idxprom69
  %46 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %46 to i32
  %47 = load i32, i32* @umove, align 4
  %cmp74 = icmp eq i32 %conv73, %47
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %sw.bb.68
  br label %sw.epilog

if.else.77:                                       ; preds = %sw.bb.68
  store i32 0, i32* %cont, align 4
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end
  %48 = load i32, i32* %nx, align 4
  %idxprom79 = sext i32 %48 to i64
  %49 = load i32, i32* %my, align 4
  %idxprom80 = sext i32 %49 to i64
  %arrayidx81 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx81, i32 0, i64 %idxprom79
  %50 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %50 to i32
  %51 = load i32, i32* @mymove, align 4
  %cmp84 = icmp eq i32 %conv83, %51
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %sw.bb.78
  br label %sw.epilog

if.else.87:                                       ; preds = %sw.bb.78
  store i32 0, i32* %cont, align 4
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end
  %52 = load i32, i32* %nx, align 4
  %idxprom89 = sext i32 %52 to i64
  %53 = load i32, i32* %my, align 4
  %idxprom90 = sext i32 %53 to i64
  %arrayidx91 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx91, i32 0, i64 %idxprom89
  %54 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %54 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  br i1 %cmp94, label %if.then.96, label %if.else.101

if.then.96:                                       ; preds = %sw.bb.88
  store i32 0, i32* @lib, align 4
  %55 = load i32, i32* %my, align 4
  %56 = load i32, i32* %nx, align 4
  %57 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %55, i32 %56, i32 %57)
  %58 = load i32, i32* @lib, align 4
  %cmp97 = icmp sgt i32 %58, 1
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.then.96
  %59 = load i32, i32* %my, align 4
  store i32 %59, i32* %ti, align 4
  %60 = load i32, i32* %nx, align 4
  store i32 %60, i32* %tj, align 4
  br label %sw.epilog

if.else.100:                                      ; preds = %if.then.96
  store i32 0, i32* %cont, align 4
  br label %sw.epilog

if.else.101:                                      ; preds = %sw.bb.88
  store i32 0, i32* %cont, align 4
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end
  %61 = load i32, i32* %nx, align 4
  %idxprom103 = sext i32 %61 to i64
  %62 = load i32, i32* %my, align 4
  %idxprom104 = sext i32 %62 to i64
  %arrayidx105 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom104
  %arrayidx106 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx105, i32 0, i64 %idxprom103
  %63 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %63 to i32
  %cmp108 = icmp eq i32 %conv107, 0
  br i1 %cmp108, label %land.lhs.true, label %if.else.122

land.lhs.true:                                    ; preds = %sw.bb.102
  %64 = load i32, i32* %my, align 4
  %cmp110 = icmp eq i32 %64, 0
  br i1 %cmp110, label %if.then.121, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %land.lhs.true
  %65 = load i32, i32* %my, align 4
  %cmp113 = icmp eq i32 %65, 18
  br i1 %cmp113, label %if.then.121, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %lor.lhs.false.112
  %66 = load i32, i32* %nx, align 4
  %cmp116 = icmp eq i32 %66, 0
  br i1 %cmp116, label %if.then.121, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %lor.lhs.false.115
  %67 = load i32, i32* %nx, align 4
  %cmp119 = icmp eq i32 %67, 18
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %lor.lhs.false.118, %lor.lhs.false.115, %lor.lhs.false.112, %land.lhs.true
  br label %sw.epilog

if.else.122:                                      ; preds = %lor.lhs.false.118, %sw.bb.102
  store i32 0, i32* %cont, align 4
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.end
  %68 = load i32, i32* %nx, align 4
  %idxprom124 = sext i32 %68 to i64
  %69 = load i32, i32* %my, align 4
  %idxprom125 = sext i32 %69 to i64
  %arrayidx126 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom125
  %arrayidx127 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx126, i32 0, i64 %idxprom124
  %70 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %70 to i32
  %71 = load i32, i32* @umove, align 4
  %cmp129 = icmp eq i32 %conv128, %71
  br i1 %cmp129, label %land.lhs.true.131, label %if.else.144

land.lhs.true.131:                                ; preds = %sw.bb.123
  %72 = load i32, i32* %my, align 4
  %cmp132 = icmp eq i32 %72, 0
  br i1 %cmp132, label %if.then.143, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %land.lhs.true.131
  %73 = load i32, i32* %my, align 4
  %cmp135 = icmp eq i32 %73, 18
  br i1 %cmp135, label %if.then.143, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %lor.lhs.false.134
  %74 = load i32, i32* %nx, align 4
  %cmp138 = icmp eq i32 %74, 0
  br i1 %cmp138, label %if.then.143, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %lor.lhs.false.137
  %75 = load i32, i32* %nx, align 4
  %cmp141 = icmp eq i32 %75, 18
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %lor.lhs.false.140, %lor.lhs.false.137, %lor.lhs.false.134, %land.lhs.true.131
  br label %sw.epilog

if.else.144:                                      ; preds = %lor.lhs.false.140, %sw.bb.123
  store i32 0, i32* %cont, align 4
  br label %sw.epilog

sw.bb.145:                                        ; preds = %if.end
  %76 = load i32, i32* %nx, align 4
  %idxprom146 = sext i32 %76 to i64
  %77 = load i32, i32* %my, align 4
  %idxprom147 = sext i32 %77 to i64
  %arrayidx148 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx148, i32 0, i64 %idxprom146
  %78 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %78 to i32
  %79 = load i32, i32* @mymove, align 4
  %cmp151 = icmp eq i32 %conv150, %79
  br i1 %cmp151, label %land.lhs.true.153, label %if.else.166

land.lhs.true.153:                                ; preds = %sw.bb.145
  %80 = load i32, i32* %my, align 4
  %cmp154 = icmp eq i32 %80, 0
  br i1 %cmp154, label %if.then.165, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %land.lhs.true.153
  %81 = load i32, i32* %my, align 4
  %cmp157 = icmp eq i32 %81, 18
  br i1 %cmp157, label %if.then.165, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %lor.lhs.false.156
  %82 = load i32, i32* %nx, align 4
  %cmp160 = icmp eq i32 %82, 0
  br i1 %cmp160, label %if.then.165, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %lor.lhs.false.159
  %83 = load i32, i32* %nx, align 4
  %cmp163 = icmp eq i32 %83, 18
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %lor.lhs.false.162, %lor.lhs.false.159, %lor.lhs.false.156, %land.lhs.true.153
  br label %sw.epilog

if.else.166:                                      ; preds = %lor.lhs.false.162, %sw.bb.145
  store i32 0, i32* %cont, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.else.166, %if.then.165, %if.else.144, %if.then.143, %if.else.122, %if.then.121, %if.else.101, %if.else.100, %if.then.99, %if.else.87, %if.then.86, %if.else.77, %if.then.76, %if.else, %if.then.67
  %84 = load i32, i32* %k, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %land.end
  %85 = load i32, i32* %cont, align 4
  %tobool167 = icmp ne i32 %85, 0
  br i1 %tobool167, label %if.then.168, label %if.end.264

if.then.168:                                      ; preds = %while.end
  %86 = load i32, i32* %r, align 4
  %idxprom169 = sext i32 %86 to i64
  %arrayidx170 = getelementptr inbounds [24 x %struct.pattern], [24 x %struct.pattern]* @matchpat.pat, i32 0, i64 %idxprom169
  %patwt = getelementptr inbounds %struct.pattern, %struct.pattern* %arrayidx170, i32 0, i32 3
  %87 = load i32, i32* %patwt, align 4
  store i32 %87, i32* %tval, align 4
  %88 = load i32, i32* %r, align 4
  %cmp171 = icmp sge i32 %88, 8
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.259

land.lhs.true.173:                                ; preds = %if.then.168
  %89 = load i32, i32* %r, align 4
  %cmp174 = icmp sle i32 %89, 13
  br i1 %cmp174, label %if.then.176, label %if.end.259

if.then.176:                                      ; preds = %land.lhs.true.173
  %90 = load i32, i32* %ti, align 4
  %sub = sub nsw i32 %90, 9
  %cmp177 = icmp slt i32 %sub, 0
  br i1 %cmp177, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.176
  %91 = load i32, i32* %ti, align 4
  %sub179 = sub nsw i32 %91, 9
  %sub180 = sub nsw i32 0, %sub179
  br label %cond.end

cond.false:                                       ; preds = %if.then.176
  %92 = load i32, i32* %ti, align 4
  %sub181 = sub nsw i32 %92, 9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub180, %cond.true ], [ %sub181, %cond.false ]
  %cmp182 = icmp sgt i32 %cond, 7
  br i1 %cmp182, label %if.then.184, label %if.else.185

if.then.184:                                      ; preds = %cond.end
  %93 = load i32, i32* %tval, align 4
  %dec = add nsw i32 %93, -1
  store i32 %dec, i32* %tval, align 4
  br label %if.end.214

if.else.185:                                      ; preds = %cond.end
  %94 = load i32, i32* %ti, align 4
  %sub186 = sub nsw i32 %94, 9
  %cmp187 = icmp slt i32 %sub186, 0
  br i1 %cmp187, label %cond.true.189, label %cond.false.192

cond.true.189:                                    ; preds = %if.else.185
  %95 = load i32, i32* %ti, align 4
  %sub190 = sub nsw i32 %95, 9
  %sub191 = sub nsw i32 0, %sub190
  br label %cond.end.194

cond.false.192:                                   ; preds = %if.else.185
  %96 = load i32, i32* %ti, align 4
  %sub193 = sub nsw i32 %96, 9
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.192, %cond.true.189
  %cond195 = phi i32 [ %sub191, %cond.true.189 ], [ %sub193, %cond.false.192 ]
  %cmp196 = icmp eq i32 %cond195, 6
  br i1 %cmp196, label %if.then.211, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %cond.end.194
  %97 = load i32, i32* %ti, align 4
  %sub199 = sub nsw i32 %97, 9
  %cmp200 = icmp slt i32 %sub199, 0
  br i1 %cmp200, label %cond.true.202, label %cond.false.205

cond.true.202:                                    ; preds = %lor.lhs.false.198
  %98 = load i32, i32* %ti, align 4
  %sub203 = sub nsw i32 %98, 9
  %sub204 = sub nsw i32 0, %sub203
  br label %cond.end.207

cond.false.205:                                   ; preds = %lor.lhs.false.198
  %99 = load i32, i32* %ti, align 4
  %sub206 = sub nsw i32 %99, 9
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.205, %cond.true.202
  %cond208 = phi i32 [ %sub204, %cond.true.202 ], [ %sub206, %cond.false.205 ]
  %cmp209 = icmp eq i32 %cond208, 7
  br i1 %cmp209, label %if.then.211, label %if.end.213

if.then.211:                                      ; preds = %cond.end.207, %cond.end.194
  %100 = load i32, i32* %tval, align 4
  %inc212 = add nsw i32 %100, 1
  store i32 %inc212, i32* %tval, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.211, %cond.end.207
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.then.184
  %101 = load i32, i32* %tj, align 4
  %sub215 = sub nsw i32 %101, 9
  %cmp216 = icmp slt i32 %sub215, 0
  br i1 %cmp216, label %cond.true.218, label %cond.false.221

cond.true.218:                                    ; preds = %if.end.214
  %102 = load i32, i32* %tj, align 4
  %sub219 = sub nsw i32 %102, 9
  %sub220 = sub nsw i32 0, %sub219
  br label %cond.end.223

cond.false.221:                                   ; preds = %if.end.214
  %103 = load i32, i32* %tj, align 4
  %sub222 = sub nsw i32 %103, 9
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.221, %cond.true.218
  %cond224 = phi i32 [ %sub220, %cond.true.218 ], [ %sub222, %cond.false.221 ]
  %cmp225 = icmp sgt i32 %cond224, 7
  br i1 %cmp225, label %if.then.227, label %if.else.229

if.then.227:                                      ; preds = %cond.end.223
  %104 = load i32, i32* %tval, align 4
  %dec228 = add nsw i32 %104, -1
  store i32 %dec228, i32* %tval, align 4
  br label %if.end.258

if.else.229:                                      ; preds = %cond.end.223
  %105 = load i32, i32* %tj, align 4
  %sub230 = sub nsw i32 %105, 9
  %cmp231 = icmp slt i32 %sub230, 0
  br i1 %cmp231, label %cond.true.233, label %cond.false.236

cond.true.233:                                    ; preds = %if.else.229
  %106 = load i32, i32* %tj, align 4
  %sub234 = sub nsw i32 %106, 9
  %sub235 = sub nsw i32 0, %sub234
  br label %cond.end.238

cond.false.236:                                   ; preds = %if.else.229
  %107 = load i32, i32* %tj, align 4
  %sub237 = sub nsw i32 %107, 9
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.236, %cond.true.233
  %cond239 = phi i32 [ %sub235, %cond.true.233 ], [ %sub237, %cond.false.236 ]
  %cmp240 = icmp eq i32 %cond239, 6
  br i1 %cmp240, label %if.then.255, label %lor.lhs.false.242

lor.lhs.false.242:                                ; preds = %cond.end.238
  %108 = load i32, i32* %tj, align 4
  %sub243 = sub nsw i32 %108, 9
  %cmp244 = icmp slt i32 %sub243, 0
  br i1 %cmp244, label %cond.true.246, label %cond.false.249

cond.true.246:                                    ; preds = %lor.lhs.false.242
  %109 = load i32, i32* %tj, align 4
  %sub247 = sub nsw i32 %109, 9
  %sub248 = sub nsw i32 0, %sub247
  br label %cond.end.251

cond.false.249:                                   ; preds = %lor.lhs.false.242
  %110 = load i32, i32* %tj, align 4
  %sub250 = sub nsw i32 %110, 9
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.249, %cond.true.246
  %cond252 = phi i32 [ %sub248, %cond.true.246 ], [ %sub250, %cond.false.249 ]
  %cmp253 = icmp eq i32 %cond252, 7
  br i1 %cmp253, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %cond.end.251, %cond.end.238
  %111 = load i32, i32* %tval, align 4
  %inc256 = add nsw i32 %111, 1
  store i32 %inc256, i32* %tval, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %cond.end.251
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.then.227
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %land.lhs.true.173, %if.then.168
  %112 = load i32, i32* %tval, align 4
  %113 = load i32*, i32** %val.addr, align 8
  %114 = load i32, i32* %113, align 4
  %cmp260 = icmp sgt i32 %112, %114
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.end.259
  %115 = load i32, i32* %tval, align 4
  %116 = load i32*, i32** %val.addr, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %ti, align 4
  %118 = load i32*, i32** %i.addr, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %tj, align 4
  %120 = load i32*, i32** %j.addr, align 8
  store i32 %119, i32* %120, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %if.end.259
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.264
  %121 = load i32, i32* %l, align 4
  %inc265 = add nsw i32 %121, 1
  store i32 %inc265, i32* %l, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.end
  %122 = load i32, i32* %r, align 4
  %inc267 = add nsw i32 %122, 1
  store i32 %inc267, i32* %r, align 4
  br label %for.cond

for.end.268:                                      ; preds = %for.cond
  %123 = load i32*, i32** %val.addr, align 8
  %124 = load i32, i32* %123, align 4
  %cmp269 = icmp sgt i32 %124, 0
  br i1 %cmp269, label %if.then.271, label %if.else.272

if.then.271:                                      ; preds = %for.end.268
  store i32 1, i32* %retval
  br label %return

if.else.272:                                      ; preds = %for.end.268
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.272, %if.then.271
  %125 = load i32, i32* %retval
  ret i32 %125
}

declare void @countlib(i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
