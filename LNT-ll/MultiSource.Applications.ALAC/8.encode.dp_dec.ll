; ModuleID = './MultiSource.Applications.ALAC/8.encode.dp_dec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @unpc_block(i32* %pc1, i32* %out, i32 %num, i16* %coefs, i32 %numactive, i32 %chanbits, i32 %denshift) #0 {
entry:
  %pc1.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %coefs.addr = alloca i16*, align 8
  %numactive.addr = alloca i32, align 4
  %chanbits.addr = alloca i32, align 4
  %denshift.addr = alloca i32, align 4
  %a0 = alloca i16, align 2
  %a1 = alloca i16, align 2
  %a2 = alloca i16, align 2
  %a3 = alloca i16, align 2
  %b0 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %b3 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %lim = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sg = alloca i32, align 4
  %sgn = alloca i32, align 4
  %top = alloca i32, align 4
  %dd = alloca i32, align 4
  %pout = alloca i32*, align 8
  %del = alloca i32, align 4
  %del0 = alloca i32, align 4
  %chanshift = alloca i32, align 4
  %denhalf = alloca i32, align 4
  %prev = alloca i32, align 4
  %a042 = alloca i16, align 2
  %a143 = alloca i16, align 2
  %a244 = alloca i16, align 2
  %a345 = alloca i16, align 2
  %b046 = alloca i32, align 4
  %b147 = alloca i32, align 4
  %b248 = alloca i32, align 4
  %b349 = alloca i32, align 4
  %a4 = alloca i16, align 2
  %a5 = alloca i16, align 2
  %a6 = alloca i16, align 2
  %a7 = alloca i16, align 2
  %b4 = alloca i32, align 4
  %b5 = alloca i32, align 4
  %b6 = alloca i32, align 4
  %b7 = alloca i32, align 4
  store i32* %pc1, i32** %pc1.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i16* %coefs, i16** %coefs.addr, align 8
  store i32 %numactive, i32* %numactive.addr, align 4
  store i32 %chanbits, i32* %chanbits.addr, align 4
  store i32 %denshift, i32* %denshift.addr, align 4
  %0 = load i32, i32* %chanbits.addr, align 4
  %sub = sub i32 32, %0
  store i32 %sub, i32* %chanshift, align 4
  %1 = load i32, i32* %denshift.addr, align 4
  %sub1 = sub i32 %1, 1
  %shl = shl i32 1, %sub1
  store i32 %shl, i32* %denhalf, align 4
  %2 = load i32*, i32** %pc1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32*, i32** %out.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 %3, i32* %arrayidx2, align 4
  %5 = load i32, i32* %numactive.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %num.addr, align 4
  %cmp3 = icmp sgt i32 %6, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32*, i32** %pc1.addr, align 8
  %8 = load i32*, i32** %out.addr, align 8
  %cmp4 = icmp ne i32* %7, %8
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load i32*, i32** %out.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = bitcast i32* %arrayidx6 to i8*
  %11 = load i32*, i32** %pc1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 1
  %12 = bitcast i32* %arrayidx7 to i8*
  %13 = load i32, i32* %num.addr, align 4
  %sub8 = sub nsw i32 %13, 1
  %conv = sext i32 %sub8 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %12, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  br label %if.end.568

if.end.9:                                         ; preds = %entry
  %14 = load i32, i32* %numactive.addr, align 4
  %cmp10 = icmp eq i32 %14, 31
  br i1 %cmp10, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end.9
  %15 = load i32*, i32** %out.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx13, align 4
  store i32 %16, i32* %prev, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %num.addr, align 4
  %cmp14 = icmp slt i32 %17, %18
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %j, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32*, i32** %pc1.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %21 = load i32, i32* %arrayidx16, align 4
  %22 = load i32, i32* %prev, align 4
  %add = add nsw i32 %21, %22
  store i32 %add, i32* %del, align 4
  %23 = load i32, i32* %del, align 4
  %24 = load i32, i32* %chanshift, align 4
  %shl17 = shl i32 %23, %24
  %25 = load i32, i32* %chanshift, align 4
  %shr = ashr i32 %shl17, %25
  store i32 %shr, i32* %prev, align 4
  %26 = load i32, i32* %prev, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load i32*, i32** %out.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %28, i64 %idxprom18
  store i32 %26, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.568

if.end.20:                                        ; preds = %if.end.9
  store i32 1, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.35, %if.end.20
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %numactive.addr, align 4
  %cmp22 = icmp sle i32 %30, %31
  br i1 %cmp22, label %for.body.24, label %for.end.37

for.body.24:                                      ; preds = %for.cond.21
  %32 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %32 to i64
  %33 = load i32*, i32** %pc1.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %33, i64 %idxprom25
  %34 = load i32, i32* %arrayidx26, align 4
  %35 = load i32, i32* %j, align 4
  %sub27 = sub nsw i32 %35, 1
  %idxprom28 = sext i32 %sub27 to i64
  %36 = load i32*, i32** %out.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %36, i64 %idxprom28
  %37 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %34, %37
  store i32 %add30, i32* %del, align 4
  %38 = load i32, i32* %del, align 4
  %39 = load i32, i32* %chanshift, align 4
  %shl31 = shl i32 %38, %39
  %40 = load i32, i32* %chanshift, align 4
  %shr32 = ashr i32 %shl31, %40
  %41 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %41 to i64
  %42 = load i32*, i32** %out.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %42, i64 %idxprom33
  store i32 %shr32, i32* %arrayidx34, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.24
  %43 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %43, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond.21

for.end.37:                                       ; preds = %for.cond.21
  %44 = load i32, i32* %numactive.addr, align 4
  %add38 = add nsw i32 %44, 1
  store i32 %add38, i32* %lim, align 4
  %45 = load i32, i32* %numactive.addr, align 4
  %cmp39 = icmp eq i32 %45, 4
  br i1 %cmp39, label %if.then.41, label %if.else.189

if.then.41:                                       ; preds = %for.end.37
  %46 = load i16*, i16** %coefs.addr, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %46, i64 0
  %47 = load i16, i16* %arrayidx50, align 2
  store i16 %47, i16* %a042, align 2
  %48 = load i16*, i16** %coefs.addr, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %48, i64 1
  %49 = load i16, i16* %arrayidx51, align 2
  store i16 %49, i16* %a143, align 2
  %50 = load i16*, i16** %coefs.addr, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %50, i64 2
  %51 = load i16, i16* %arrayidx52, align 2
  store i16 %51, i16* %a244, align 2
  %52 = load i16*, i16** %coefs.addr, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %52, i64 3
  %53 = load i16, i16* %arrayidx53, align 2
  store i16 %53, i16* %a345, align 2
  %54 = load i32, i32* %lim, align 4
  store i32 %54, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.182, %if.then.41
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %num.addr, align 4
  %cmp55 = icmp slt i32 %55, %56
  br i1 %cmp55, label %for.body.57, label %for.end.184

for.body.57:                                      ; preds = %for.cond.54
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %lim, align 4
  %sub58 = sub nsw i32 %57, %58
  %idxprom59 = sext i32 %sub58 to i64
  %59 = load i32*, i32** %out.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %59, i64 %idxprom59
  %60 = load i32, i32* %arrayidx60, align 4
  store i32 %60, i32* %top, align 4
  %61 = load i32*, i32** %out.addr, align 8
  %62 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %62 to i64
  %add.ptr = getelementptr inbounds i32, i32* %61, i64 %idx.ext
  %add.ptr61 = getelementptr inbounds i32, i32* %add.ptr, i64 -1
  store i32* %add.ptr61, i32** %pout, align 8
  %63 = load i32, i32* %top, align 4
  %64 = load i32*, i32** %pout, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %64, i64 0
  %65 = load i32, i32* %arrayidx62, align 4
  %sub63 = sub nsw i32 %63, %65
  store i32 %sub63, i32* %b046, align 4
  %66 = load i32, i32* %top, align 4
  %67 = load i32*, i32** %pout, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %67, i64 -1
  %68 = load i32, i32* %arrayidx64, align 4
  %sub65 = sub nsw i32 %66, %68
  store i32 %sub65, i32* %b147, align 4
  %69 = load i32, i32* %top, align 4
  %70 = load i32*, i32** %pout, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %70, i64 -2
  %71 = load i32, i32* %arrayidx66, align 4
  %sub67 = sub nsw i32 %69, %71
  store i32 %sub67, i32* %b248, align 4
  %72 = load i32, i32* %top, align 4
  %73 = load i32*, i32** %pout, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %73, i64 -3
  %74 = load i32, i32* %arrayidx68, align 4
  %sub69 = sub nsw i32 %72, %74
  store i32 %sub69, i32* %b349, align 4
  %75 = load i32, i32* %denhalf, align 4
  %76 = load i16, i16* %a042, align 2
  %conv70 = sext i16 %76 to i32
  %77 = load i32, i32* %b046, align 4
  %mul71 = mul nsw i32 %conv70, %77
  %sub72 = sub nsw i32 %75, %mul71
  %78 = load i16, i16* %a143, align 2
  %conv73 = sext i16 %78 to i32
  %79 = load i32, i32* %b147, align 4
  %mul74 = mul nsw i32 %conv73, %79
  %sub75 = sub nsw i32 %sub72, %mul74
  %80 = load i16, i16* %a244, align 2
  %conv76 = sext i16 %80 to i32
  %81 = load i32, i32* %b248, align 4
  %mul77 = mul nsw i32 %conv76, %81
  %sub78 = sub nsw i32 %sub75, %mul77
  %82 = load i16, i16* %a345, align 2
  %conv79 = sext i16 %82 to i32
  %83 = load i32, i32* %b349, align 4
  %mul80 = mul nsw i32 %conv79, %83
  %sub81 = sub nsw i32 %sub78, %mul80
  %84 = load i32, i32* %denshift.addr, align 4
  %shr82 = ashr i32 %sub81, %84
  store i32 %shr82, i32* %sum1, align 4
  %85 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %85 to i64
  %86 = load i32*, i32** %pc1.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %86, i64 %idxprom83
  %87 = load i32, i32* %arrayidx84, align 4
  store i32 %87, i32* %del, align 4
  %88 = load i32, i32* %del, align 4
  store i32 %88, i32* %del0, align 4
  %89 = load i32, i32* %del, align 4
  %call = call i32 @sign_of_int(i32 %89)
  store i32 %call, i32* %sg, align 4
  %90 = load i32, i32* %top, align 4
  %91 = load i32, i32* %sum1, align 4
  %add85 = add nsw i32 %90, %91
  %92 = load i32, i32* %del, align 4
  %add86 = add nsw i32 %92, %add85
  store i32 %add86, i32* %del, align 4
  %93 = load i32, i32* %del, align 4
  %94 = load i32, i32* %chanshift, align 4
  %shl87 = shl i32 %93, %94
  %95 = load i32, i32* %chanshift, align 4
  %shr88 = ashr i32 %shl87, %95
  %96 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %96 to i64
  %97 = load i32*, i32** %out.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %97, i64 %idxprom89
  store i32 %shr88, i32* %arrayidx90, align 4
  %98 = load i32, i32* %sg, align 4
  %cmp91 = icmp sgt i32 %98, 0
  br i1 %cmp91, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %for.body.57
  %99 = load i32, i32* %b349, align 4
  %call94 = call i32 @sign_of_int(i32 %99)
  store i32 %call94, i32* %sgn, align 4
  %100 = load i32, i32* %sgn, align 4
  %101 = load i16, i16* %a345, align 2
  %conv95 = sext i16 %101 to i32
  %sub96 = sub nsw i32 %conv95, %100
  %conv97 = trunc i32 %sub96 to i16
  store i16 %conv97, i16* %a345, align 2
  %102 = load i32, i32* %sgn, align 4
  %103 = load i32, i32* %b349, align 4
  %mul98 = mul nsw i32 %102, %103
  %104 = load i32, i32* %denshift.addr, align 4
  %shr99 = ashr i32 %mul98, %104
  %mul100 = mul nsw i32 1, %shr99
  %105 = load i32, i32* %del0, align 4
  %sub101 = sub nsw i32 %105, %mul100
  store i32 %sub101, i32* %del0, align 4
  %106 = load i32, i32* %del0, align 4
  %cmp102 = icmp sle i32 %106, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.93
  br label %for.inc.182

if.end.105:                                       ; preds = %if.then.93
  %107 = load i32, i32* %b248, align 4
  %call106 = call i32 @sign_of_int(i32 %107)
  store i32 %call106, i32* %sgn, align 4
  %108 = load i32, i32* %sgn, align 4
  %109 = load i16, i16* %a244, align 2
  %conv107 = sext i16 %109 to i32
  %sub108 = sub nsw i32 %conv107, %108
  %conv109 = trunc i32 %sub108 to i16
  store i16 %conv109, i16* %a244, align 2
  %110 = load i32, i32* %sgn, align 4
  %111 = load i32, i32* %b248, align 4
  %mul110 = mul nsw i32 %110, %111
  %112 = load i32, i32* %denshift.addr, align 4
  %shr111 = ashr i32 %mul110, %112
  %mul112 = mul nsw i32 2, %shr111
  %113 = load i32, i32* %del0, align 4
  %sub113 = sub nsw i32 %113, %mul112
  store i32 %sub113, i32* %del0, align 4
  %114 = load i32, i32* %del0, align 4
  %cmp114 = icmp sle i32 %114, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end.105
  br label %for.inc.182

if.end.117:                                       ; preds = %if.end.105
  %115 = load i32, i32* %b147, align 4
  %call118 = call i32 @sign_of_int(i32 %115)
  store i32 %call118, i32* %sgn, align 4
  %116 = load i32, i32* %sgn, align 4
  %117 = load i16, i16* %a143, align 2
  %conv119 = sext i16 %117 to i32
  %sub120 = sub nsw i32 %conv119, %116
  %conv121 = trunc i32 %sub120 to i16
  store i16 %conv121, i16* %a143, align 2
  %118 = load i32, i32* %sgn, align 4
  %119 = load i32, i32* %b147, align 4
  %mul122 = mul nsw i32 %118, %119
  %120 = load i32, i32* %denshift.addr, align 4
  %shr123 = ashr i32 %mul122, %120
  %mul124 = mul nsw i32 3, %shr123
  %121 = load i32, i32* %del0, align 4
  %sub125 = sub nsw i32 %121, %mul124
  store i32 %sub125, i32* %del0, align 4
  %122 = load i32, i32* %del0, align 4
  %cmp126 = icmp sle i32 %122, 0
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.117
  br label %for.inc.182

if.end.129:                                       ; preds = %if.end.117
  %123 = load i32, i32* %b046, align 4
  %call130 = call i32 @sign_of_int(i32 %123)
  %124 = load i16, i16* %a042, align 2
  %conv131 = sext i16 %124 to i32
  %sub132 = sub nsw i32 %conv131, %call130
  %conv133 = trunc i32 %sub132 to i16
  store i16 %conv133, i16* %a042, align 2
  br label %if.end.181

if.else:                                          ; preds = %for.body.57
  %125 = load i32, i32* %sg, align 4
  %cmp134 = icmp slt i32 %125, 0
  br i1 %cmp134, label %if.then.136, label %if.end.180

if.then.136:                                      ; preds = %if.else
  %126 = load i32, i32* %b349, align 4
  %call137 = call i32 @sign_of_int(i32 %126)
  %sub138 = sub nsw i32 0, %call137
  store i32 %sub138, i32* %sgn, align 4
  %127 = load i32, i32* %sgn, align 4
  %128 = load i16, i16* %a345, align 2
  %conv139 = sext i16 %128 to i32
  %sub140 = sub nsw i32 %conv139, %127
  %conv141 = trunc i32 %sub140 to i16
  store i16 %conv141, i16* %a345, align 2
  %129 = load i32, i32* %sgn, align 4
  %130 = load i32, i32* %b349, align 4
  %mul142 = mul nsw i32 %129, %130
  %131 = load i32, i32* %denshift.addr, align 4
  %shr143 = ashr i32 %mul142, %131
  %mul144 = mul nsw i32 1, %shr143
  %132 = load i32, i32* %del0, align 4
  %sub145 = sub nsw i32 %132, %mul144
  store i32 %sub145, i32* %del0, align 4
  %133 = load i32, i32* %del0, align 4
  %cmp146 = icmp sge i32 %133, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.then.136
  br label %for.inc.182

if.end.149:                                       ; preds = %if.then.136
  %134 = load i32, i32* %b248, align 4
  %call150 = call i32 @sign_of_int(i32 %134)
  %sub151 = sub nsw i32 0, %call150
  store i32 %sub151, i32* %sgn, align 4
  %135 = load i32, i32* %sgn, align 4
  %136 = load i16, i16* %a244, align 2
  %conv152 = sext i16 %136 to i32
  %sub153 = sub nsw i32 %conv152, %135
  %conv154 = trunc i32 %sub153 to i16
  store i16 %conv154, i16* %a244, align 2
  %137 = load i32, i32* %sgn, align 4
  %138 = load i32, i32* %b248, align 4
  %mul155 = mul nsw i32 %137, %138
  %139 = load i32, i32* %denshift.addr, align 4
  %shr156 = ashr i32 %mul155, %139
  %mul157 = mul nsw i32 2, %shr156
  %140 = load i32, i32* %del0, align 4
  %sub158 = sub nsw i32 %140, %mul157
  store i32 %sub158, i32* %del0, align 4
  %141 = load i32, i32* %del0, align 4
  %cmp159 = icmp sge i32 %141, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.149
  br label %for.inc.182

if.end.162:                                       ; preds = %if.end.149
  %142 = load i32, i32* %b147, align 4
  %call163 = call i32 @sign_of_int(i32 %142)
  %sub164 = sub nsw i32 0, %call163
  store i32 %sub164, i32* %sgn, align 4
  %143 = load i32, i32* %sgn, align 4
  %144 = load i16, i16* %a143, align 2
  %conv165 = sext i16 %144 to i32
  %sub166 = sub nsw i32 %conv165, %143
  %conv167 = trunc i32 %sub166 to i16
  store i16 %conv167, i16* %a143, align 2
  %145 = load i32, i32* %sgn, align 4
  %146 = load i32, i32* %b147, align 4
  %mul168 = mul nsw i32 %145, %146
  %147 = load i32, i32* %denshift.addr, align 4
  %shr169 = ashr i32 %mul168, %147
  %mul170 = mul nsw i32 3, %shr169
  %148 = load i32, i32* %del0, align 4
  %sub171 = sub nsw i32 %148, %mul170
  store i32 %sub171, i32* %del0, align 4
  %149 = load i32, i32* %del0, align 4
  %cmp172 = icmp sge i32 %149, 0
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.162
  br label %for.inc.182

if.end.175:                                       ; preds = %if.end.162
  %150 = load i32, i32* %b046, align 4
  %call176 = call i32 @sign_of_int(i32 %150)
  %151 = load i16, i16* %a042, align 2
  %conv177 = sext i16 %151 to i32
  %add178 = add nsw i32 %conv177, %call176
  %conv179 = trunc i32 %add178 to i16
  store i16 %conv179, i16* %a042, align 2
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.175, %if.else
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.end.129
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181, %if.then.174, %if.then.161, %if.then.148, %if.then.128, %if.then.116, %if.then.104
  %152 = load i32, i32* %j, align 4
  %inc183 = add nsw i32 %152, 1
  store i32 %inc183, i32* %j, align 4
  br label %for.cond.54

for.end.184:                                      ; preds = %for.cond.54
  %153 = load i16, i16* %a042, align 2
  %154 = load i16*, i16** %coefs.addr, align 8
  %arrayidx185 = getelementptr inbounds i16, i16* %154, i64 0
  store i16 %153, i16* %arrayidx185, align 2
  %155 = load i16, i16* %a143, align 2
  %156 = load i16*, i16** %coefs.addr, align 8
  %arrayidx186 = getelementptr inbounds i16, i16* %156, i64 1
  store i16 %155, i16* %arrayidx186, align 2
  %157 = load i16, i16* %a244, align 2
  %158 = load i16*, i16** %coefs.addr, align 8
  %arrayidx187 = getelementptr inbounds i16, i16* %158, i64 2
  store i16 %157, i16* %arrayidx187, align 2
  %159 = load i16, i16* %a345, align 2
  %160 = load i16*, i16** %coefs.addr, align 8
  %arrayidx188 = getelementptr inbounds i16, i16* %160, i64 3
  store i16 %159, i16* %arrayidx188, align 2
  br label %if.end.568

if.else.189:                                      ; preds = %for.end.37
  %161 = load i32, i32* %numactive.addr, align 4
  %cmp190 = icmp eq i32 %161, 8
  br i1 %cmp190, label %if.then.192, label %if.else.463

if.then.192:                                      ; preds = %if.else.189
  %162 = load i16*, i16** %coefs.addr, align 8
  %arrayidx193 = getelementptr inbounds i16, i16* %162, i64 0
  %163 = load i16, i16* %arrayidx193, align 2
  store i16 %163, i16* %a0, align 2
  %164 = load i16*, i16** %coefs.addr, align 8
  %arrayidx194 = getelementptr inbounds i16, i16* %164, i64 1
  %165 = load i16, i16* %arrayidx194, align 2
  store i16 %165, i16* %a1, align 2
  %166 = load i16*, i16** %coefs.addr, align 8
  %arrayidx195 = getelementptr inbounds i16, i16* %166, i64 2
  %167 = load i16, i16* %arrayidx195, align 2
  store i16 %167, i16* %a2, align 2
  %168 = load i16*, i16** %coefs.addr, align 8
  %arrayidx196 = getelementptr inbounds i16, i16* %168, i64 3
  %169 = load i16, i16* %arrayidx196, align 2
  store i16 %169, i16* %a3, align 2
  %170 = load i16*, i16** %coefs.addr, align 8
  %arrayidx197 = getelementptr inbounds i16, i16* %170, i64 4
  %171 = load i16, i16* %arrayidx197, align 2
  store i16 %171, i16* %a4, align 2
  %172 = load i16*, i16** %coefs.addr, align 8
  %arrayidx198 = getelementptr inbounds i16, i16* %172, i64 5
  %173 = load i16, i16* %arrayidx198, align 2
  store i16 %173, i16* %a5, align 2
  %174 = load i16*, i16** %coefs.addr, align 8
  %arrayidx199 = getelementptr inbounds i16, i16* %174, i64 6
  %175 = load i16, i16* %arrayidx199, align 2
  store i16 %175, i16* %a6, align 2
  %176 = load i16*, i16** %coefs.addr, align 8
  %arrayidx200 = getelementptr inbounds i16, i16* %176, i64 7
  %177 = load i16, i16* %arrayidx200, align 2
  store i16 %177, i16* %a7, align 2
  %178 = load i32, i32* %lim, align 4
  store i32 %178, i32* %j, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.452, %if.then.192
  %179 = load i32, i32* %j, align 4
  %180 = load i32, i32* %num.addr, align 4
  %cmp202 = icmp slt i32 %179, %180
  br i1 %cmp202, label %for.body.204, label %for.end.454

for.body.204:                                     ; preds = %for.cond.201
  %181 = load i32, i32* %j, align 4
  %182 = load i32, i32* %lim, align 4
  %sub205 = sub nsw i32 %181, %182
  %idxprom206 = sext i32 %sub205 to i64
  %183 = load i32*, i32** %out.addr, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %183, i64 %idxprom206
  %184 = load i32, i32* %arrayidx207, align 4
  store i32 %184, i32* %top, align 4
  %185 = load i32*, i32** %out.addr, align 8
  %186 = load i32, i32* %j, align 4
  %idx.ext208 = sext i32 %186 to i64
  %add.ptr209 = getelementptr inbounds i32, i32* %185, i64 %idx.ext208
  %add.ptr210 = getelementptr inbounds i32, i32* %add.ptr209, i64 -1
  store i32* %add.ptr210, i32** %pout, align 8
  %187 = load i32, i32* %top, align 4
  %188 = load i32*, i32** %pout, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %188, i32 -1
  store i32* %incdec.ptr, i32** %pout, align 8
  %189 = load i32, i32* %188, align 4
  %sub211 = sub nsw i32 %187, %189
  store i32 %sub211, i32* %b0, align 4
  %190 = load i32, i32* %top, align 4
  %191 = load i32*, i32** %pout, align 8
  %incdec.ptr212 = getelementptr inbounds i32, i32* %191, i32 -1
  store i32* %incdec.ptr212, i32** %pout, align 8
  %192 = load i32, i32* %191, align 4
  %sub213 = sub nsw i32 %190, %192
  store i32 %sub213, i32* %b1, align 4
  %193 = load i32, i32* %top, align 4
  %194 = load i32*, i32** %pout, align 8
  %incdec.ptr214 = getelementptr inbounds i32, i32* %194, i32 -1
  store i32* %incdec.ptr214, i32** %pout, align 8
  %195 = load i32, i32* %194, align 4
  %sub215 = sub nsw i32 %193, %195
  store i32 %sub215, i32* %b2, align 4
  %196 = load i32, i32* %top, align 4
  %197 = load i32*, i32** %pout, align 8
  %incdec.ptr216 = getelementptr inbounds i32, i32* %197, i32 -1
  store i32* %incdec.ptr216, i32** %pout, align 8
  %198 = load i32, i32* %197, align 4
  %sub217 = sub nsw i32 %196, %198
  store i32 %sub217, i32* %b3, align 4
  %199 = load i32, i32* %top, align 4
  %200 = load i32*, i32** %pout, align 8
  %incdec.ptr218 = getelementptr inbounds i32, i32* %200, i32 -1
  store i32* %incdec.ptr218, i32** %pout, align 8
  %201 = load i32, i32* %200, align 4
  %sub219 = sub nsw i32 %199, %201
  store i32 %sub219, i32* %b4, align 4
  %202 = load i32, i32* %top, align 4
  %203 = load i32*, i32** %pout, align 8
  %incdec.ptr220 = getelementptr inbounds i32, i32* %203, i32 -1
  store i32* %incdec.ptr220, i32** %pout, align 8
  %204 = load i32, i32* %203, align 4
  %sub221 = sub nsw i32 %202, %204
  store i32 %sub221, i32* %b5, align 4
  %205 = load i32, i32* %top, align 4
  %206 = load i32*, i32** %pout, align 8
  %incdec.ptr222 = getelementptr inbounds i32, i32* %206, i32 -1
  store i32* %incdec.ptr222, i32** %pout, align 8
  %207 = load i32, i32* %206, align 4
  %sub223 = sub nsw i32 %205, %207
  store i32 %sub223, i32* %b6, align 4
  %208 = load i32, i32* %top, align 4
  %209 = load i32*, i32** %pout, align 8
  %210 = load i32, i32* %209, align 4
  %sub224 = sub nsw i32 %208, %210
  store i32 %sub224, i32* %b7, align 4
  %211 = load i32*, i32** %pout, align 8
  %add.ptr225 = getelementptr inbounds i32, i32* %211, i64 8
  store i32* %add.ptr225, i32** %pout, align 8
  %212 = load i32, i32* %denhalf, align 4
  %213 = load i16, i16* %a0, align 2
  %conv226 = sext i16 %213 to i32
  %214 = load i32, i32* %b0, align 4
  %mul227 = mul nsw i32 %conv226, %214
  %sub228 = sub nsw i32 %212, %mul227
  %215 = load i16, i16* %a1, align 2
  %conv229 = sext i16 %215 to i32
  %216 = load i32, i32* %b1, align 4
  %mul230 = mul nsw i32 %conv229, %216
  %sub231 = sub nsw i32 %sub228, %mul230
  %217 = load i16, i16* %a2, align 2
  %conv232 = sext i16 %217 to i32
  %218 = load i32, i32* %b2, align 4
  %mul233 = mul nsw i32 %conv232, %218
  %sub234 = sub nsw i32 %sub231, %mul233
  %219 = load i16, i16* %a3, align 2
  %conv235 = sext i16 %219 to i32
  %220 = load i32, i32* %b3, align 4
  %mul236 = mul nsw i32 %conv235, %220
  %sub237 = sub nsw i32 %sub234, %mul236
  %221 = load i16, i16* %a4, align 2
  %conv238 = sext i16 %221 to i32
  %222 = load i32, i32* %b4, align 4
  %mul239 = mul nsw i32 %conv238, %222
  %sub240 = sub nsw i32 %sub237, %mul239
  %223 = load i16, i16* %a5, align 2
  %conv241 = sext i16 %223 to i32
  %224 = load i32, i32* %b5, align 4
  %mul242 = mul nsw i32 %conv241, %224
  %sub243 = sub nsw i32 %sub240, %mul242
  %225 = load i16, i16* %a6, align 2
  %conv244 = sext i16 %225 to i32
  %226 = load i32, i32* %b6, align 4
  %mul245 = mul nsw i32 %conv244, %226
  %sub246 = sub nsw i32 %sub243, %mul245
  %227 = load i16, i16* %a7, align 2
  %conv247 = sext i16 %227 to i32
  %228 = load i32, i32* %b7, align 4
  %mul248 = mul nsw i32 %conv247, %228
  %sub249 = sub nsw i32 %sub246, %mul248
  %229 = load i32, i32* %denshift.addr, align 4
  %shr250 = ashr i32 %sub249, %229
  store i32 %shr250, i32* %sum1, align 4
  %230 = load i32, i32* %j, align 4
  %idxprom251 = sext i32 %230 to i64
  %231 = load i32*, i32** %pc1.addr, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %231, i64 %idxprom251
  %232 = load i32, i32* %arrayidx252, align 4
  store i32 %232, i32* %del, align 4
  %233 = load i32, i32* %del, align 4
  store i32 %233, i32* %del0, align 4
  %234 = load i32, i32* %del, align 4
  %call253 = call i32 @sign_of_int(i32 %234)
  store i32 %call253, i32* %sg, align 4
  %235 = load i32, i32* %top, align 4
  %236 = load i32, i32* %sum1, align 4
  %add254 = add nsw i32 %235, %236
  %237 = load i32, i32* %del, align 4
  %add255 = add nsw i32 %237, %add254
  store i32 %add255, i32* %del, align 4
  %238 = load i32, i32* %del, align 4
  %239 = load i32, i32* %chanshift, align 4
  %shl256 = shl i32 %238, %239
  %240 = load i32, i32* %chanshift, align 4
  %shr257 = ashr i32 %shl256, %240
  %241 = load i32, i32* %j, align 4
  %idxprom258 = sext i32 %241 to i64
  %242 = load i32*, i32** %out.addr, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %242, i64 %idxprom258
  store i32 %shr257, i32* %arrayidx259, align 4
  %243 = load i32, i32* %sg, align 4
  %cmp260 = icmp sgt i32 %243, 0
  br i1 %cmp260, label %if.then.262, label %if.else.351

if.then.262:                                      ; preds = %for.body.204
  %244 = load i32, i32* %b7, align 4
  %call263 = call i32 @sign_of_int(i32 %244)
  store i32 %call263, i32* %sgn, align 4
  %245 = load i32, i32* %sgn, align 4
  %246 = load i16, i16* %a7, align 2
  %conv264 = sext i16 %246 to i32
  %sub265 = sub nsw i32 %conv264, %245
  %conv266 = trunc i32 %sub265 to i16
  store i16 %conv266, i16* %a7, align 2
  %247 = load i32, i32* %sgn, align 4
  %248 = load i32, i32* %b7, align 4
  %mul267 = mul nsw i32 %247, %248
  %249 = load i32, i32* %denshift.addr, align 4
  %shr268 = ashr i32 %mul267, %249
  %mul269 = mul nsw i32 1, %shr268
  %250 = load i32, i32* %del0, align 4
  %sub270 = sub nsw i32 %250, %mul269
  store i32 %sub270, i32* %del0, align 4
  %251 = load i32, i32* %del0, align 4
  %cmp271 = icmp sle i32 %251, 0
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.then.262
  br label %for.inc.452

if.end.274:                                       ; preds = %if.then.262
  %252 = load i32, i32* %b6, align 4
  %call275 = call i32 @sign_of_int(i32 %252)
  store i32 %call275, i32* %sgn, align 4
  %253 = load i32, i32* %sgn, align 4
  %254 = load i16, i16* %a6, align 2
  %conv276 = sext i16 %254 to i32
  %sub277 = sub nsw i32 %conv276, %253
  %conv278 = trunc i32 %sub277 to i16
  store i16 %conv278, i16* %a6, align 2
  %255 = load i32, i32* %sgn, align 4
  %256 = load i32, i32* %b6, align 4
  %mul279 = mul nsw i32 %255, %256
  %257 = load i32, i32* %denshift.addr, align 4
  %shr280 = ashr i32 %mul279, %257
  %mul281 = mul nsw i32 2, %shr280
  %258 = load i32, i32* %del0, align 4
  %sub282 = sub nsw i32 %258, %mul281
  store i32 %sub282, i32* %del0, align 4
  %259 = load i32, i32* %del0, align 4
  %cmp283 = icmp sle i32 %259, 0
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %if.end.274
  br label %for.inc.452

if.end.286:                                       ; preds = %if.end.274
  %260 = load i32, i32* %b5, align 4
  %call287 = call i32 @sign_of_int(i32 %260)
  store i32 %call287, i32* %sgn, align 4
  %261 = load i32, i32* %sgn, align 4
  %262 = load i16, i16* %a5, align 2
  %conv288 = sext i16 %262 to i32
  %sub289 = sub nsw i32 %conv288, %261
  %conv290 = trunc i32 %sub289 to i16
  store i16 %conv290, i16* %a5, align 2
  %263 = load i32, i32* %sgn, align 4
  %264 = load i32, i32* %b5, align 4
  %mul291 = mul nsw i32 %263, %264
  %265 = load i32, i32* %denshift.addr, align 4
  %shr292 = ashr i32 %mul291, %265
  %mul293 = mul nsw i32 3, %shr292
  %266 = load i32, i32* %del0, align 4
  %sub294 = sub nsw i32 %266, %mul293
  store i32 %sub294, i32* %del0, align 4
  %267 = load i32, i32* %del0, align 4
  %cmp295 = icmp sle i32 %267, 0
  br i1 %cmp295, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.end.286
  br label %for.inc.452

if.end.298:                                       ; preds = %if.end.286
  %268 = load i32, i32* %b4, align 4
  %call299 = call i32 @sign_of_int(i32 %268)
  store i32 %call299, i32* %sgn, align 4
  %269 = load i32, i32* %sgn, align 4
  %270 = load i16, i16* %a4, align 2
  %conv300 = sext i16 %270 to i32
  %sub301 = sub nsw i32 %conv300, %269
  %conv302 = trunc i32 %sub301 to i16
  store i16 %conv302, i16* %a4, align 2
  %271 = load i32, i32* %sgn, align 4
  %272 = load i32, i32* %b4, align 4
  %mul303 = mul nsw i32 %271, %272
  %273 = load i32, i32* %denshift.addr, align 4
  %shr304 = ashr i32 %mul303, %273
  %mul305 = mul nsw i32 4, %shr304
  %274 = load i32, i32* %del0, align 4
  %sub306 = sub nsw i32 %274, %mul305
  store i32 %sub306, i32* %del0, align 4
  %275 = load i32, i32* %del0, align 4
  %cmp307 = icmp sle i32 %275, 0
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %if.end.298
  br label %for.inc.452

if.end.310:                                       ; preds = %if.end.298
  %276 = load i32, i32* %b3, align 4
  %call311 = call i32 @sign_of_int(i32 %276)
  store i32 %call311, i32* %sgn, align 4
  %277 = load i32, i32* %sgn, align 4
  %278 = load i16, i16* %a3, align 2
  %conv312 = sext i16 %278 to i32
  %sub313 = sub nsw i32 %conv312, %277
  %conv314 = trunc i32 %sub313 to i16
  store i16 %conv314, i16* %a3, align 2
  %279 = load i32, i32* %sgn, align 4
  %280 = load i32, i32* %b3, align 4
  %mul315 = mul nsw i32 %279, %280
  %281 = load i32, i32* %denshift.addr, align 4
  %shr316 = ashr i32 %mul315, %281
  %mul317 = mul nsw i32 5, %shr316
  %282 = load i32, i32* %del0, align 4
  %sub318 = sub nsw i32 %282, %mul317
  store i32 %sub318, i32* %del0, align 4
  %283 = load i32, i32* %del0, align 4
  %cmp319 = icmp sle i32 %283, 0
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %if.end.310
  br label %for.inc.452

if.end.322:                                       ; preds = %if.end.310
  %284 = load i32, i32* %b2, align 4
  %call323 = call i32 @sign_of_int(i32 %284)
  store i32 %call323, i32* %sgn, align 4
  %285 = load i32, i32* %sgn, align 4
  %286 = load i16, i16* %a2, align 2
  %conv324 = sext i16 %286 to i32
  %sub325 = sub nsw i32 %conv324, %285
  %conv326 = trunc i32 %sub325 to i16
  store i16 %conv326, i16* %a2, align 2
  %287 = load i32, i32* %sgn, align 4
  %288 = load i32, i32* %b2, align 4
  %mul327 = mul nsw i32 %287, %288
  %289 = load i32, i32* %denshift.addr, align 4
  %shr328 = ashr i32 %mul327, %289
  %mul329 = mul nsw i32 6, %shr328
  %290 = load i32, i32* %del0, align 4
  %sub330 = sub nsw i32 %290, %mul329
  store i32 %sub330, i32* %del0, align 4
  %291 = load i32, i32* %del0, align 4
  %cmp331 = icmp sle i32 %291, 0
  br i1 %cmp331, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %if.end.322
  br label %for.inc.452

if.end.334:                                       ; preds = %if.end.322
  %292 = load i32, i32* %b1, align 4
  %call335 = call i32 @sign_of_int(i32 %292)
  store i32 %call335, i32* %sgn, align 4
  %293 = load i32, i32* %sgn, align 4
  %294 = load i16, i16* %a1, align 2
  %conv336 = sext i16 %294 to i32
  %sub337 = sub nsw i32 %conv336, %293
  %conv338 = trunc i32 %sub337 to i16
  store i16 %conv338, i16* %a1, align 2
  %295 = load i32, i32* %sgn, align 4
  %296 = load i32, i32* %b1, align 4
  %mul339 = mul nsw i32 %295, %296
  %297 = load i32, i32* %denshift.addr, align 4
  %shr340 = ashr i32 %mul339, %297
  %mul341 = mul nsw i32 7, %shr340
  %298 = load i32, i32* %del0, align 4
  %sub342 = sub nsw i32 %298, %mul341
  store i32 %sub342, i32* %del0, align 4
  %299 = load i32, i32* %del0, align 4
  %cmp343 = icmp sle i32 %299, 0
  br i1 %cmp343, label %if.then.345, label %if.end.346

if.then.345:                                      ; preds = %if.end.334
  br label %for.inc.452

if.end.346:                                       ; preds = %if.end.334
  %300 = load i32, i32* %b0, align 4
  %call347 = call i32 @sign_of_int(i32 %300)
  %301 = load i16, i16* %a0, align 2
  %conv348 = sext i16 %301 to i32
  %sub349 = sub nsw i32 %conv348, %call347
  %conv350 = trunc i32 %sub349 to i16
  store i16 %conv350, i16* %a0, align 2
  br label %if.end.451

if.else.351:                                      ; preds = %for.body.204
  %302 = load i32, i32* %sg, align 4
  %cmp352 = icmp slt i32 %302, 0
  br i1 %cmp352, label %if.then.354, label %if.end.450

if.then.354:                                      ; preds = %if.else.351
  %303 = load i32, i32* %b7, align 4
  %call355 = call i32 @sign_of_int(i32 %303)
  %sub356 = sub nsw i32 0, %call355
  store i32 %sub356, i32* %sgn, align 4
  %304 = load i32, i32* %sgn, align 4
  %305 = load i16, i16* %a7, align 2
  %conv357 = sext i16 %305 to i32
  %sub358 = sub nsw i32 %conv357, %304
  %conv359 = trunc i32 %sub358 to i16
  store i16 %conv359, i16* %a7, align 2
  %306 = load i32, i32* %sgn, align 4
  %307 = load i32, i32* %b7, align 4
  %mul360 = mul nsw i32 %306, %307
  %308 = load i32, i32* %denshift.addr, align 4
  %shr361 = ashr i32 %mul360, %308
  %mul362 = mul nsw i32 1, %shr361
  %309 = load i32, i32* %del0, align 4
  %sub363 = sub nsw i32 %309, %mul362
  store i32 %sub363, i32* %del0, align 4
  %310 = load i32, i32* %del0, align 4
  %cmp364 = icmp sge i32 %310, 0
  br i1 %cmp364, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %if.then.354
  br label %for.inc.452

if.end.367:                                       ; preds = %if.then.354
  %311 = load i32, i32* %b6, align 4
  %call368 = call i32 @sign_of_int(i32 %311)
  %sub369 = sub nsw i32 0, %call368
  store i32 %sub369, i32* %sgn, align 4
  %312 = load i32, i32* %sgn, align 4
  %313 = load i16, i16* %a6, align 2
  %conv370 = sext i16 %313 to i32
  %sub371 = sub nsw i32 %conv370, %312
  %conv372 = trunc i32 %sub371 to i16
  store i16 %conv372, i16* %a6, align 2
  %314 = load i32, i32* %sgn, align 4
  %315 = load i32, i32* %b6, align 4
  %mul373 = mul nsw i32 %314, %315
  %316 = load i32, i32* %denshift.addr, align 4
  %shr374 = ashr i32 %mul373, %316
  %mul375 = mul nsw i32 2, %shr374
  %317 = load i32, i32* %del0, align 4
  %sub376 = sub nsw i32 %317, %mul375
  store i32 %sub376, i32* %del0, align 4
  %318 = load i32, i32* %del0, align 4
  %cmp377 = icmp sge i32 %318, 0
  br i1 %cmp377, label %if.then.379, label %if.end.380

if.then.379:                                      ; preds = %if.end.367
  br label %for.inc.452

if.end.380:                                       ; preds = %if.end.367
  %319 = load i32, i32* %b5, align 4
  %call381 = call i32 @sign_of_int(i32 %319)
  %sub382 = sub nsw i32 0, %call381
  store i32 %sub382, i32* %sgn, align 4
  %320 = load i32, i32* %sgn, align 4
  %321 = load i16, i16* %a5, align 2
  %conv383 = sext i16 %321 to i32
  %sub384 = sub nsw i32 %conv383, %320
  %conv385 = trunc i32 %sub384 to i16
  store i16 %conv385, i16* %a5, align 2
  %322 = load i32, i32* %sgn, align 4
  %323 = load i32, i32* %b5, align 4
  %mul386 = mul nsw i32 %322, %323
  %324 = load i32, i32* %denshift.addr, align 4
  %shr387 = ashr i32 %mul386, %324
  %mul388 = mul nsw i32 3, %shr387
  %325 = load i32, i32* %del0, align 4
  %sub389 = sub nsw i32 %325, %mul388
  store i32 %sub389, i32* %del0, align 4
  %326 = load i32, i32* %del0, align 4
  %cmp390 = icmp sge i32 %326, 0
  br i1 %cmp390, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %if.end.380
  br label %for.inc.452

if.end.393:                                       ; preds = %if.end.380
  %327 = load i32, i32* %b4, align 4
  %call394 = call i32 @sign_of_int(i32 %327)
  %sub395 = sub nsw i32 0, %call394
  store i32 %sub395, i32* %sgn, align 4
  %328 = load i32, i32* %sgn, align 4
  %329 = load i16, i16* %a4, align 2
  %conv396 = sext i16 %329 to i32
  %sub397 = sub nsw i32 %conv396, %328
  %conv398 = trunc i32 %sub397 to i16
  store i16 %conv398, i16* %a4, align 2
  %330 = load i32, i32* %sgn, align 4
  %331 = load i32, i32* %b4, align 4
  %mul399 = mul nsw i32 %330, %331
  %332 = load i32, i32* %denshift.addr, align 4
  %shr400 = ashr i32 %mul399, %332
  %mul401 = mul nsw i32 4, %shr400
  %333 = load i32, i32* %del0, align 4
  %sub402 = sub nsw i32 %333, %mul401
  store i32 %sub402, i32* %del0, align 4
  %334 = load i32, i32* %del0, align 4
  %cmp403 = icmp sge i32 %334, 0
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %if.end.393
  br label %for.inc.452

if.end.406:                                       ; preds = %if.end.393
  %335 = load i32, i32* %b3, align 4
  %call407 = call i32 @sign_of_int(i32 %335)
  %sub408 = sub nsw i32 0, %call407
  store i32 %sub408, i32* %sgn, align 4
  %336 = load i32, i32* %sgn, align 4
  %337 = load i16, i16* %a3, align 2
  %conv409 = sext i16 %337 to i32
  %sub410 = sub nsw i32 %conv409, %336
  %conv411 = trunc i32 %sub410 to i16
  store i16 %conv411, i16* %a3, align 2
  %338 = load i32, i32* %sgn, align 4
  %339 = load i32, i32* %b3, align 4
  %mul412 = mul nsw i32 %338, %339
  %340 = load i32, i32* %denshift.addr, align 4
  %shr413 = ashr i32 %mul412, %340
  %mul414 = mul nsw i32 5, %shr413
  %341 = load i32, i32* %del0, align 4
  %sub415 = sub nsw i32 %341, %mul414
  store i32 %sub415, i32* %del0, align 4
  %342 = load i32, i32* %del0, align 4
  %cmp416 = icmp sge i32 %342, 0
  br i1 %cmp416, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %if.end.406
  br label %for.inc.452

if.end.419:                                       ; preds = %if.end.406
  %343 = load i32, i32* %b2, align 4
  %call420 = call i32 @sign_of_int(i32 %343)
  %sub421 = sub nsw i32 0, %call420
  store i32 %sub421, i32* %sgn, align 4
  %344 = load i32, i32* %sgn, align 4
  %345 = load i16, i16* %a2, align 2
  %conv422 = sext i16 %345 to i32
  %sub423 = sub nsw i32 %conv422, %344
  %conv424 = trunc i32 %sub423 to i16
  store i16 %conv424, i16* %a2, align 2
  %346 = load i32, i32* %sgn, align 4
  %347 = load i32, i32* %b2, align 4
  %mul425 = mul nsw i32 %346, %347
  %348 = load i32, i32* %denshift.addr, align 4
  %shr426 = ashr i32 %mul425, %348
  %mul427 = mul nsw i32 6, %shr426
  %349 = load i32, i32* %del0, align 4
  %sub428 = sub nsw i32 %349, %mul427
  store i32 %sub428, i32* %del0, align 4
  %350 = load i32, i32* %del0, align 4
  %cmp429 = icmp sge i32 %350, 0
  br i1 %cmp429, label %if.then.431, label %if.end.432

if.then.431:                                      ; preds = %if.end.419
  br label %for.inc.452

if.end.432:                                       ; preds = %if.end.419
  %351 = load i32, i32* %b1, align 4
  %call433 = call i32 @sign_of_int(i32 %351)
  %sub434 = sub nsw i32 0, %call433
  store i32 %sub434, i32* %sgn, align 4
  %352 = load i32, i32* %sgn, align 4
  %353 = load i16, i16* %a1, align 2
  %conv435 = sext i16 %353 to i32
  %sub436 = sub nsw i32 %conv435, %352
  %conv437 = trunc i32 %sub436 to i16
  store i16 %conv437, i16* %a1, align 2
  %354 = load i32, i32* %sgn, align 4
  %355 = load i32, i32* %b1, align 4
  %mul438 = mul nsw i32 %354, %355
  %356 = load i32, i32* %denshift.addr, align 4
  %shr439 = ashr i32 %mul438, %356
  %mul440 = mul nsw i32 7, %shr439
  %357 = load i32, i32* %del0, align 4
  %sub441 = sub nsw i32 %357, %mul440
  store i32 %sub441, i32* %del0, align 4
  %358 = load i32, i32* %del0, align 4
  %cmp442 = icmp sge i32 %358, 0
  br i1 %cmp442, label %if.then.444, label %if.end.445

if.then.444:                                      ; preds = %if.end.432
  br label %for.inc.452

if.end.445:                                       ; preds = %if.end.432
  %359 = load i32, i32* %b0, align 4
  %call446 = call i32 @sign_of_int(i32 %359)
  %360 = load i16, i16* %a0, align 2
  %conv447 = sext i16 %360 to i32
  %add448 = add nsw i32 %conv447, %call446
  %conv449 = trunc i32 %add448 to i16
  store i16 %conv449, i16* %a0, align 2
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.445, %if.else.351
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.end.346
  br label %for.inc.452

for.inc.452:                                      ; preds = %if.end.451, %if.then.444, %if.then.431, %if.then.418, %if.then.405, %if.then.392, %if.then.379, %if.then.366, %if.then.345, %if.then.333, %if.then.321, %if.then.309, %if.then.297, %if.then.285, %if.then.273
  %361 = load i32, i32* %j, align 4
  %inc453 = add nsw i32 %361, 1
  store i32 %inc453, i32* %j, align 4
  br label %for.cond.201

for.end.454:                                      ; preds = %for.cond.201
  %362 = load i16, i16* %a0, align 2
  %363 = load i16*, i16** %coefs.addr, align 8
  %arrayidx455 = getelementptr inbounds i16, i16* %363, i64 0
  store i16 %362, i16* %arrayidx455, align 2
  %364 = load i16, i16* %a1, align 2
  %365 = load i16*, i16** %coefs.addr, align 8
  %arrayidx456 = getelementptr inbounds i16, i16* %365, i64 1
  store i16 %364, i16* %arrayidx456, align 2
  %366 = load i16, i16* %a2, align 2
  %367 = load i16*, i16** %coefs.addr, align 8
  %arrayidx457 = getelementptr inbounds i16, i16* %367, i64 2
  store i16 %366, i16* %arrayidx457, align 2
  %368 = load i16, i16* %a3, align 2
  %369 = load i16*, i16** %coefs.addr, align 8
  %arrayidx458 = getelementptr inbounds i16, i16* %369, i64 3
  store i16 %368, i16* %arrayidx458, align 2
  %370 = load i16, i16* %a4, align 2
  %371 = load i16*, i16** %coefs.addr, align 8
  %arrayidx459 = getelementptr inbounds i16, i16* %371, i64 4
  store i16 %370, i16* %arrayidx459, align 2
  %372 = load i16, i16* %a5, align 2
  %373 = load i16*, i16** %coefs.addr, align 8
  %arrayidx460 = getelementptr inbounds i16, i16* %373, i64 5
  store i16 %372, i16* %arrayidx460, align 2
  %374 = load i16, i16* %a6, align 2
  %375 = load i16*, i16** %coefs.addr, align 8
  %arrayidx461 = getelementptr inbounds i16, i16* %375, i64 6
  store i16 %374, i16* %arrayidx461, align 2
  %376 = load i16, i16* %a7, align 2
  %377 = load i16*, i16** %coefs.addr, align 8
  %arrayidx462 = getelementptr inbounds i16, i16* %377, i64 7
  store i16 %376, i16* %arrayidx462, align 2
  br label %if.end.567

if.else.463:                                      ; preds = %if.else.189
  %378 = load i32, i32* %lim, align 4
  store i32 %378, i32* %j, align 4
  br label %for.cond.464

for.cond.464:                                     ; preds = %for.inc.564, %if.else.463
  %379 = load i32, i32* %j, align 4
  %380 = load i32, i32* %num.addr, align 4
  %cmp465 = icmp slt i32 %379, %380
  br i1 %cmp465, label %for.body.467, label %for.end.566

for.body.467:                                     ; preds = %for.cond.464
  store i32 0, i32* %sum1, align 4
  %381 = load i32*, i32** %out.addr, align 8
  %382 = load i32, i32* %j, align 4
  %idx.ext468 = sext i32 %382 to i64
  %add.ptr469 = getelementptr inbounds i32, i32* %381, i64 %idx.ext468
  %add.ptr470 = getelementptr inbounds i32, i32* %add.ptr469, i64 -1
  store i32* %add.ptr470, i32** %pout, align 8
  %383 = load i32, i32* %j, align 4
  %384 = load i32, i32* %lim, align 4
  %sub471 = sub nsw i32 %383, %384
  %idxprom472 = sext i32 %sub471 to i64
  %385 = load i32*, i32** %out.addr, align 8
  %arrayidx473 = getelementptr inbounds i32, i32* %385, i64 %idxprom472
  %386 = load i32, i32* %arrayidx473, align 4
  store i32 %386, i32* %top, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.474

for.cond.474:                                     ; preds = %for.inc.487, %for.body.467
  %387 = load i32, i32* %k, align 4
  %388 = load i32, i32* %numactive.addr, align 4
  %cmp475 = icmp slt i32 %387, %388
  br i1 %cmp475, label %for.body.477, label %for.end.489

for.body.477:                                     ; preds = %for.cond.474
  %389 = load i32, i32* %k, align 4
  %idxprom478 = sext i32 %389 to i64
  %390 = load i16*, i16** %coefs.addr, align 8
  %arrayidx479 = getelementptr inbounds i16, i16* %390, i64 %idxprom478
  %391 = load i16, i16* %arrayidx479, align 2
  %conv480 = sext i16 %391 to i32
  %392 = load i32, i32* %k, align 4
  %sub481 = sub nsw i32 0, %392
  %idxprom482 = sext i32 %sub481 to i64
  %393 = load i32*, i32** %pout, align 8
  %arrayidx483 = getelementptr inbounds i32, i32* %393, i64 %idxprom482
  %394 = load i32, i32* %arrayidx483, align 4
  %395 = load i32, i32* %top, align 4
  %sub484 = sub nsw i32 %394, %395
  %mul485 = mul nsw i32 %conv480, %sub484
  %396 = load i32, i32* %sum1, align 4
  %add486 = add nsw i32 %396, %mul485
  store i32 %add486, i32* %sum1, align 4
  br label %for.inc.487

for.inc.487:                                      ; preds = %for.body.477
  %397 = load i32, i32* %k, align 4
  %inc488 = add nsw i32 %397, 1
  store i32 %inc488, i32* %k, align 4
  br label %for.cond.474

for.end.489:                                      ; preds = %for.cond.474
  %398 = load i32, i32* %j, align 4
  %idxprom490 = sext i32 %398 to i64
  %399 = load i32*, i32** %pc1.addr, align 8
  %arrayidx491 = getelementptr inbounds i32, i32* %399, i64 %idxprom490
  %400 = load i32, i32* %arrayidx491, align 4
  store i32 %400, i32* %del, align 4
  %401 = load i32, i32* %del, align 4
  store i32 %401, i32* %del0, align 4
  %402 = load i32, i32* %del, align 4
  %call492 = call i32 @sign_of_int(i32 %402)
  store i32 %call492, i32* %sg, align 4
  %403 = load i32, i32* %top, align 4
  %404 = load i32, i32* %sum1, align 4
  %405 = load i32, i32* %denhalf, align 4
  %add493 = add nsw i32 %404, %405
  %406 = load i32, i32* %denshift.addr, align 4
  %shr494 = ashr i32 %add493, %406
  %add495 = add nsw i32 %403, %shr494
  %407 = load i32, i32* %del, align 4
  %add496 = add nsw i32 %407, %add495
  store i32 %add496, i32* %del, align 4
  %408 = load i32, i32* %del, align 4
  %409 = load i32, i32* %chanshift, align 4
  %shl497 = shl i32 %408, %409
  %410 = load i32, i32* %chanshift, align 4
  %shr498 = ashr i32 %shl497, %410
  %411 = load i32, i32* %j, align 4
  %idxprom499 = sext i32 %411 to i64
  %412 = load i32*, i32** %out.addr, align 8
  %arrayidx500 = getelementptr inbounds i32, i32* %412, i64 %idxprom499
  store i32 %shr498, i32* %arrayidx500, align 4
  %413 = load i32, i32* %sg, align 4
  %cmp501 = icmp sgt i32 %413, 0
  br i1 %cmp501, label %if.then.503, label %if.else.530

if.then.503:                                      ; preds = %for.end.489
  %414 = load i32, i32* %numactive.addr, align 4
  %sub504 = sub nsw i32 %414, 1
  store i32 %sub504, i32* %k, align 4
  br label %for.cond.505

for.cond.505:                                     ; preds = %for.inc.528, %if.then.503
  %415 = load i32, i32* %k, align 4
  %cmp506 = icmp sge i32 %415, 0
  br i1 %cmp506, label %for.body.508, label %for.end.529

for.body.508:                                     ; preds = %for.cond.505
  %416 = load i32, i32* %top, align 4
  %417 = load i32, i32* %k, align 4
  %sub509 = sub nsw i32 0, %417
  %idxprom510 = sext i32 %sub509 to i64
  %418 = load i32*, i32** %pout, align 8
  %arrayidx511 = getelementptr inbounds i32, i32* %418, i64 %idxprom510
  %419 = load i32, i32* %arrayidx511, align 4
  %sub512 = sub nsw i32 %416, %419
  store i32 %sub512, i32* %dd, align 4
  %420 = load i32, i32* %dd, align 4
  %call513 = call i32 @sign_of_int(i32 %420)
  store i32 %call513, i32* %sgn, align 4
  %421 = load i32, i32* %sgn, align 4
  %422 = load i32, i32* %k, align 4
  %idxprom514 = sext i32 %422 to i64
  %423 = load i16*, i16** %coefs.addr, align 8
  %arrayidx515 = getelementptr inbounds i16, i16* %423, i64 %idxprom514
  %424 = load i16, i16* %arrayidx515, align 2
  %conv516 = sext i16 %424 to i32
  %sub517 = sub nsw i32 %conv516, %421
  %conv518 = trunc i32 %sub517 to i16
  store i16 %conv518, i16* %arrayidx515, align 2
  %425 = load i32, i32* %numactive.addr, align 4
  %426 = load i32, i32* %k, align 4
  %sub519 = sub nsw i32 %425, %426
  %427 = load i32, i32* %sgn, align 4
  %428 = load i32, i32* %dd, align 4
  %mul520 = mul nsw i32 %427, %428
  %429 = load i32, i32* %denshift.addr, align 4
  %shr521 = ashr i32 %mul520, %429
  %mul522 = mul nsw i32 %sub519, %shr521
  %430 = load i32, i32* %del0, align 4
  %sub523 = sub nsw i32 %430, %mul522
  store i32 %sub523, i32* %del0, align 4
  %431 = load i32, i32* %del0, align 4
  %cmp524 = icmp sle i32 %431, 0
  br i1 %cmp524, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %for.body.508
  br label %for.end.529

if.end.527:                                       ; preds = %for.body.508
  br label %for.inc.528

for.inc.528:                                      ; preds = %if.end.527
  %432 = load i32, i32* %k, align 4
  %dec = add nsw i32 %432, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.505

for.end.529:                                      ; preds = %if.then.526, %for.cond.505
  br label %if.end.563

if.else.530:                                      ; preds = %for.end.489
  %433 = load i32, i32* %sg, align 4
  %cmp531 = icmp slt i32 %433, 0
  br i1 %cmp531, label %if.then.533, label %if.end.562

if.then.533:                                      ; preds = %if.else.530
  %434 = load i32, i32* %numactive.addr, align 4
  %sub534 = sub nsw i32 %434, 1
  store i32 %sub534, i32* %k, align 4
  br label %for.cond.535

for.cond.535:                                     ; preds = %for.inc.559, %if.then.533
  %435 = load i32, i32* %k, align 4
  %cmp536 = icmp sge i32 %435, 0
  br i1 %cmp536, label %for.body.538, label %for.end.561

for.body.538:                                     ; preds = %for.cond.535
  %436 = load i32, i32* %top, align 4
  %437 = load i32, i32* %k, align 4
  %sub539 = sub nsw i32 0, %437
  %idxprom540 = sext i32 %sub539 to i64
  %438 = load i32*, i32** %pout, align 8
  %arrayidx541 = getelementptr inbounds i32, i32* %438, i64 %idxprom540
  %439 = load i32, i32* %arrayidx541, align 4
  %sub542 = sub nsw i32 %436, %439
  store i32 %sub542, i32* %dd, align 4
  %440 = load i32, i32* %dd, align 4
  %call543 = call i32 @sign_of_int(i32 %440)
  store i32 %call543, i32* %sgn, align 4
  %441 = load i32, i32* %sgn, align 4
  %442 = load i32, i32* %k, align 4
  %idxprom544 = sext i32 %442 to i64
  %443 = load i16*, i16** %coefs.addr, align 8
  %arrayidx545 = getelementptr inbounds i16, i16* %443, i64 %idxprom544
  %444 = load i16, i16* %arrayidx545, align 2
  %conv546 = sext i16 %444 to i32
  %add547 = add nsw i32 %conv546, %441
  %conv548 = trunc i32 %add547 to i16
  store i16 %conv548, i16* %arrayidx545, align 2
  %445 = load i32, i32* %numactive.addr, align 4
  %446 = load i32, i32* %k, align 4
  %sub549 = sub nsw i32 %445, %446
  %447 = load i32, i32* %sgn, align 4
  %sub550 = sub nsw i32 0, %447
  %448 = load i32, i32* %dd, align 4
  %mul551 = mul nsw i32 %sub550, %448
  %449 = load i32, i32* %denshift.addr, align 4
  %shr552 = ashr i32 %mul551, %449
  %mul553 = mul nsw i32 %sub549, %shr552
  %450 = load i32, i32* %del0, align 4
  %sub554 = sub nsw i32 %450, %mul553
  store i32 %sub554, i32* %del0, align 4
  %451 = load i32, i32* %del0, align 4
  %cmp555 = icmp sge i32 %451, 0
  br i1 %cmp555, label %if.then.557, label %if.end.558

if.then.557:                                      ; preds = %for.body.538
  br label %for.end.561

if.end.558:                                       ; preds = %for.body.538
  br label %for.inc.559

for.inc.559:                                      ; preds = %if.end.558
  %452 = load i32, i32* %k, align 4
  %dec560 = add nsw i32 %452, -1
  store i32 %dec560, i32* %k, align 4
  br label %for.cond.535

for.end.561:                                      ; preds = %if.then.557, %for.cond.535
  br label %if.end.562

if.end.562:                                       ; preds = %for.end.561, %if.else.530
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %for.end.529
  br label %for.inc.564

for.inc.564:                                      ; preds = %if.end.563
  %453 = load i32, i32* %j, align 4
  %inc565 = add nsw i32 %453, 1
  store i32 %inc565, i32* %j, align 4
  br label %for.cond.464

for.end.566:                                      ; preds = %for.cond.464
  br label %if.end.567

if.end.567:                                       ; preds = %for.end.566, %for.end.454
  br label %if.end.568

if.end.568:                                       ; preds = %if.end, %for.end, %if.end.567, %for.end.184
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal i32 @sign_of_int(i32 %i) #2 {
entry:
  %i.addr = alloca i32, align 4
  %negishift = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 0, %0
  %shr = lshr i32 %sub, 31
  store i32 %shr, i32* %negishift, align 4
  %1 = load i32, i32* %negishift, align 4
  %2 = load i32, i32* %i.addr, align 4
  %shr1 = ashr i32 %2, 31
  %or = or i32 %1, %shr1
  ret i32 %or
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
