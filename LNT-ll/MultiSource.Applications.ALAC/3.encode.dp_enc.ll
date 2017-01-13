; ModuleID = './MultiSource.Applications.ALAC/3.encode.dp_enc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @init_coefs(i16* %coefs, i32 %denshift, i32 %numPairs) #0 {
entry:
  %coefs.addr = alloca i16*, align 8
  %denshift.addr = alloca i32, align 4
  %numPairs.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %den = alloca i32, align 4
  store i16* %coefs, i16** %coefs.addr, align 8
  store i32 %denshift, i32* %denshift.addr, align 4
  store i32 %numPairs, i32* %numPairs.addr, align 4
  %0 = load i32, i32* %denshift.addr, align 4
  %shl = shl i32 1, %0
  store i32 %shl, i32* %den, align 4
  %1 = load i32, i32* %den, align 4
  %mul = mul nsw i32 38, %1
  %shr = ashr i32 %mul, 4
  %conv = trunc i32 %shr to i16
  %2 = load i16*, i16** %coefs.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 0
  store i16 %conv, i16* %arrayidx, align 2
  %3 = load i32, i32* %den, align 4
  %mul1 = mul nsw i32 -29, %3
  %shr2 = ashr i32 %mul1, 4
  %conv3 = trunc i32 %shr2 to i16
  %4 = load i16*, i16** %coefs.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %conv3, i16* %arrayidx4, align 2
  %5 = load i32, i32* %den, align 4
  %mul5 = mul nsw i32 -2, %5
  %shr6 = ashr i32 %mul5, 4
  %conv7 = trunc i32 %shr6 to i16
  %6 = load i16*, i16** %coefs.addr, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %6, i64 2
  store i16 %conv7, i16* %arrayidx8, align 2
  store i32 3, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %numPairs.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i16*, i16** %coefs.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 %idxprom
  store i16 0, i16* %arrayidx10, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @copy_coefs(i16* %srcCoefs, i16* %dstCoefs, i32 %numPairs) #0 {
entry:
  %srcCoefs.addr = alloca i16*, align 8
  %dstCoefs.addr = alloca i16*, align 8
  %numPairs.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %srcCoefs, i16** %srcCoefs.addr, align 8
  store i16* %dstCoefs, i16** %dstCoefs.addr, align 8
  store i32 %numPairs, i32* %numPairs.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %numPairs.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** %srcCoefs.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %5 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i16*, i16** %dstCoefs.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 %idxprom1
  store i16 %4, i16* %arrayidx2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @pc_block(i32* %in, i32* %pc1, i32 %num, i16* %coefs, i32 %numactive, i32 %chanbits, i32 %denshift) #0 {
entry:
  %in.addr = alloca i32*, align 8
  %pc1.addr = alloca i32*, align 8
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
  %pin = alloca i32*, align 8
  %sum1 = alloca i32, align 4
  %dd = alloca i32, align 4
  %sg = alloca i32, align 4
  %sgn = alloca i32, align 4
  %top = alloca i32, align 4
  %del = alloca i32, align 4
  %del0 = alloca i32, align 4
  %chanshift = alloca i32, align 4
  %denhalf = alloca i32, align 4
  %a4 = alloca i16, align 2
  %a5 = alloca i16, align 2
  %a6 = alloca i16, align 2
  %a7 = alloca i16, align 2
  %b4 = alloca i32, align 4
  %b5 = alloca i32, align 4
  %b6 = alloca i32, align 4
  %b7 = alloca i32, align 4
  store i32* %in, i32** %in.addr, align 8
  store i32* %pc1, i32** %pc1.addr, align 8
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
  %2 = load i32*, i32** %in.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32*, i32** %pc1.addr, align 8
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
  %7 = load i32*, i32** %in.addr, align 8
  %8 = load i32*, i32** %pc1.addr, align 8
  %cmp4 = icmp ne i32* %7, %8
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load i32*, i32** %pc1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = bitcast i32* %arrayidx6 to i8*
  %11 = load i32*, i32** %in.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 1
  %12 = bitcast i32* %arrayidx7 to i8*
  %13 = load i32, i32* %num.addr, align 4
  %sub8 = sub nsw i32 %13, 1
  %conv = sext i32 %sub8 to i64
  %mul = mul i64 %conv, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %12, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  br label %if.end.562

if.end.9:                                         ; preds = %entry
  %14 = load i32, i32* %numactive.addr, align 4
  %cmp10 = icmp eq i32 %14, 31
  br i1 %cmp10, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %if.end.9
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %num.addr, align 4
  %cmp13 = icmp slt i32 %15, %16
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %j, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32*, i32** %in.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx15, align 4
  %20 = load i32, i32* %j, align 4
  %sub16 = sub nsw i32 %20, 1
  %idxprom17 = sext i32 %sub16 to i64
  %21 = load i32*, i32** %in.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %21, i64 %idxprom17
  %22 = load i32, i32* %arrayidx18, align 4
  %sub19 = sub nsw i32 %19, %22
  store i32 %sub19, i32* %del, align 4
  %23 = load i32, i32* %del, align 4
  %24 = load i32, i32* %chanshift, align 4
  %shl20 = shl i32 %23, %24
  %25 = load i32, i32* %chanshift, align 4
  %shr = ashr i32 %shl20, %25
  %26 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load i32*, i32** %pc1.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %27, i64 %idxprom21
  store i32 %shr, i32* %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.562

if.end.23:                                        ; preds = %if.end.9
  store i32 1, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.38, %if.end.23
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %numactive.addr, align 4
  %cmp25 = icmp sle i32 %29, %30
  br i1 %cmp25, label %for.body.27, label %for.end.40

for.body.27:                                      ; preds = %for.cond.24
  %31 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load i32*, i32** %in.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %32, i64 %idxprom28
  %33 = load i32, i32* %arrayidx29, align 4
  %34 = load i32, i32* %j, align 4
  %sub30 = sub nsw i32 %34, 1
  %idxprom31 = sext i32 %sub30 to i64
  %35 = load i32*, i32** %in.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %35, i64 %idxprom31
  %36 = load i32, i32* %arrayidx32, align 4
  %sub33 = sub nsw i32 %33, %36
  store i32 %sub33, i32* %del, align 4
  %37 = load i32, i32* %del, align 4
  %38 = load i32, i32* %chanshift, align 4
  %shl34 = shl i32 %37, %38
  %39 = load i32, i32* %chanshift, align 4
  %shr35 = ashr i32 %shl34, %39
  %40 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %40 to i64
  %41 = load i32*, i32** %pc1.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %41, i64 %idxprom36
  store i32 %shr35, i32* %arrayidx37, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.27
  %42 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %42, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond.24

for.end.40:                                       ; preds = %for.cond.24
  %43 = load i32, i32* %numactive.addr, align 4
  %add = add nsw i32 %43, 1
  store i32 %add, i32* %lim, align 4
  %44 = load i32, i32* %numactive.addr, align 4
  %cmp41 = icmp eq i32 %44, 4
  br i1 %cmp41, label %if.then.43, label %if.else.183

if.then.43:                                       ; preds = %for.end.40
  %45 = load i16*, i16** %coefs.addr, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %45, i64 0
  %46 = load i16, i16* %arrayidx44, align 2
  store i16 %46, i16* %a0, align 2
  %47 = load i16*, i16** %coefs.addr, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %47, i64 1
  %48 = load i16, i16* %arrayidx45, align 2
  store i16 %48, i16* %a1, align 2
  %49 = load i16*, i16** %coefs.addr, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %49, i64 2
  %50 = load i16, i16* %arrayidx46, align 2
  store i16 %50, i16* %a2, align 2
  %51 = load i16*, i16** %coefs.addr, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %51, i64 3
  %52 = load i16, i16* %arrayidx47, align 2
  store i16 %52, i16* %a3, align 2
  %53 = load i32, i32* %lim, align 4
  store i32 %53, i32* %j, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.176, %if.then.43
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %num.addr, align 4
  %cmp49 = icmp slt i32 %54, %55
  br i1 %cmp49, label %for.body.51, label %for.end.178

for.body.51:                                      ; preds = %for.cond.48
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %lim, align 4
  %sub52 = sub nsw i32 %56, %57
  %idxprom53 = sext i32 %sub52 to i64
  %58 = load i32*, i32** %in.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %58, i64 %idxprom53
  %59 = load i32, i32* %arrayidx54, align 4
  store i32 %59, i32* %top, align 4
  %60 = load i32*, i32** %in.addr, align 8
  %61 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %61 to i64
  %add.ptr = getelementptr inbounds i32, i32* %60, i64 %idx.ext
  %add.ptr55 = getelementptr inbounds i32, i32* %add.ptr, i64 -1
  store i32* %add.ptr55, i32** %pin, align 8
  %62 = load i32, i32* %top, align 4
  %63 = load i32*, i32** %pin, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx56, align 4
  %sub57 = sub nsw i32 %62, %64
  store i32 %sub57, i32* %b0, align 4
  %65 = load i32, i32* %top, align 4
  %66 = load i32*, i32** %pin, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %66, i64 -1
  %67 = load i32, i32* %arrayidx58, align 4
  %sub59 = sub nsw i32 %65, %67
  store i32 %sub59, i32* %b1, align 4
  %68 = load i32, i32* %top, align 4
  %69 = load i32*, i32** %pin, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %69, i64 -2
  %70 = load i32, i32* %arrayidx60, align 4
  %sub61 = sub nsw i32 %68, %70
  store i32 %sub61, i32* %b2, align 4
  %71 = load i32, i32* %top, align 4
  %72 = load i32*, i32** %pin, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %72, i64 -3
  %73 = load i32, i32* %arrayidx62, align 4
  %sub63 = sub nsw i32 %71, %73
  store i32 %sub63, i32* %b3, align 4
  %74 = load i32, i32* %denhalf, align 4
  %75 = load i16, i16* %a0, align 2
  %conv64 = sext i16 %75 to i32
  %76 = load i32, i32* %b0, align 4
  %mul65 = mul nsw i32 %conv64, %76
  %sub66 = sub nsw i32 %74, %mul65
  %77 = load i16, i16* %a1, align 2
  %conv67 = sext i16 %77 to i32
  %78 = load i32, i32* %b1, align 4
  %mul68 = mul nsw i32 %conv67, %78
  %sub69 = sub nsw i32 %sub66, %mul68
  %79 = load i16, i16* %a2, align 2
  %conv70 = sext i16 %79 to i32
  %80 = load i32, i32* %b2, align 4
  %mul71 = mul nsw i32 %conv70, %80
  %sub72 = sub nsw i32 %sub69, %mul71
  %81 = load i16, i16* %a3, align 2
  %conv73 = sext i16 %81 to i32
  %82 = load i32, i32* %b3, align 4
  %mul74 = mul nsw i32 %conv73, %82
  %sub75 = sub nsw i32 %sub72, %mul74
  %83 = load i32, i32* %denshift.addr, align 4
  %shr76 = ashr i32 %sub75, %83
  store i32 %shr76, i32* %sum1, align 4
  %84 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %84 to i64
  %85 = load i32*, i32** %in.addr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %85, i64 %idxprom77
  %86 = load i32, i32* %arrayidx78, align 4
  %87 = load i32, i32* %top, align 4
  %sub79 = sub nsw i32 %86, %87
  %88 = load i32, i32* %sum1, align 4
  %sub80 = sub nsw i32 %sub79, %88
  store i32 %sub80, i32* %del, align 4
  %89 = load i32, i32* %del, align 4
  %90 = load i32, i32* %chanshift, align 4
  %shl81 = shl i32 %89, %90
  %91 = load i32, i32* %chanshift, align 4
  %shr82 = ashr i32 %shl81, %91
  store i32 %shr82, i32* %del, align 4
  %92 = load i32, i32* %del, align 4
  %93 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %93 to i64
  %94 = load i32*, i32** %pc1.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %94, i64 %idxprom83
  store i32 %92, i32* %arrayidx84, align 4
  %95 = load i32, i32* %del, align 4
  store i32 %95, i32* %del0, align 4
  %96 = load i32, i32* %del, align 4
  %call = call i32 @sign_of_int(i32 %96)
  store i32 %call, i32* %sg, align 4
  %97 = load i32, i32* %sg, align 4
  %cmp85 = icmp sgt i32 %97, 0
  br i1 %cmp85, label %if.then.87, label %if.else

if.then.87:                                       ; preds = %for.body.51
  %98 = load i32, i32* %b3, align 4
  %call88 = call i32 @sign_of_int(i32 %98)
  store i32 %call88, i32* %sgn, align 4
  %99 = load i32, i32* %sgn, align 4
  %100 = load i16, i16* %a3, align 2
  %conv89 = sext i16 %100 to i32
  %sub90 = sub nsw i32 %conv89, %99
  %conv91 = trunc i32 %sub90 to i16
  store i16 %conv91, i16* %a3, align 2
  %101 = load i32, i32* %sgn, align 4
  %102 = load i32, i32* %b3, align 4
  %mul92 = mul nsw i32 %101, %102
  %103 = load i32, i32* %denshift.addr, align 4
  %shr93 = ashr i32 %mul92, %103
  %mul94 = mul nsw i32 1, %shr93
  %104 = load i32, i32* %del0, align 4
  %sub95 = sub nsw i32 %104, %mul94
  store i32 %sub95, i32* %del0, align 4
  %105 = load i32, i32* %del0, align 4
  %cmp96 = icmp sle i32 %105, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.then.87
  br label %for.inc.176

if.end.99:                                        ; preds = %if.then.87
  %106 = load i32, i32* %b2, align 4
  %call100 = call i32 @sign_of_int(i32 %106)
  store i32 %call100, i32* %sgn, align 4
  %107 = load i32, i32* %sgn, align 4
  %108 = load i16, i16* %a2, align 2
  %conv101 = sext i16 %108 to i32
  %sub102 = sub nsw i32 %conv101, %107
  %conv103 = trunc i32 %sub102 to i16
  store i16 %conv103, i16* %a2, align 2
  %109 = load i32, i32* %sgn, align 4
  %110 = load i32, i32* %b2, align 4
  %mul104 = mul nsw i32 %109, %110
  %111 = load i32, i32* %denshift.addr, align 4
  %shr105 = ashr i32 %mul104, %111
  %mul106 = mul nsw i32 2, %shr105
  %112 = load i32, i32* %del0, align 4
  %sub107 = sub nsw i32 %112, %mul106
  store i32 %sub107, i32* %del0, align 4
  %113 = load i32, i32* %del0, align 4
  %cmp108 = icmp sle i32 %113, 0
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.99
  br label %for.inc.176

if.end.111:                                       ; preds = %if.end.99
  %114 = load i32, i32* %b1, align 4
  %call112 = call i32 @sign_of_int(i32 %114)
  store i32 %call112, i32* %sgn, align 4
  %115 = load i32, i32* %sgn, align 4
  %116 = load i16, i16* %a1, align 2
  %conv113 = sext i16 %116 to i32
  %sub114 = sub nsw i32 %conv113, %115
  %conv115 = trunc i32 %sub114 to i16
  store i16 %conv115, i16* %a1, align 2
  %117 = load i32, i32* %sgn, align 4
  %118 = load i32, i32* %b1, align 4
  %mul116 = mul nsw i32 %117, %118
  %119 = load i32, i32* %denshift.addr, align 4
  %shr117 = ashr i32 %mul116, %119
  %mul118 = mul nsw i32 3, %shr117
  %120 = load i32, i32* %del0, align 4
  %sub119 = sub nsw i32 %120, %mul118
  store i32 %sub119, i32* %del0, align 4
  %121 = load i32, i32* %del0, align 4
  %cmp120 = icmp sle i32 %121, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.111
  br label %for.inc.176

if.end.123:                                       ; preds = %if.end.111
  %122 = load i32, i32* %b0, align 4
  %call124 = call i32 @sign_of_int(i32 %122)
  %123 = load i16, i16* %a0, align 2
  %conv125 = sext i16 %123 to i32
  %sub126 = sub nsw i32 %conv125, %call124
  %conv127 = trunc i32 %sub126 to i16
  store i16 %conv127, i16* %a0, align 2
  br label %if.end.175

if.else:                                          ; preds = %for.body.51
  %124 = load i32, i32* %sg, align 4
  %cmp128 = icmp slt i32 %124, 0
  br i1 %cmp128, label %if.then.130, label %if.end.174

if.then.130:                                      ; preds = %if.else
  %125 = load i32, i32* %b3, align 4
  %call131 = call i32 @sign_of_int(i32 %125)
  %sub132 = sub nsw i32 0, %call131
  store i32 %sub132, i32* %sgn, align 4
  %126 = load i32, i32* %sgn, align 4
  %127 = load i16, i16* %a3, align 2
  %conv133 = sext i16 %127 to i32
  %sub134 = sub nsw i32 %conv133, %126
  %conv135 = trunc i32 %sub134 to i16
  store i16 %conv135, i16* %a3, align 2
  %128 = load i32, i32* %sgn, align 4
  %129 = load i32, i32* %b3, align 4
  %mul136 = mul nsw i32 %128, %129
  %130 = load i32, i32* %denshift.addr, align 4
  %shr137 = ashr i32 %mul136, %130
  %mul138 = mul nsw i32 1, %shr137
  %131 = load i32, i32* %del0, align 4
  %sub139 = sub nsw i32 %131, %mul138
  store i32 %sub139, i32* %del0, align 4
  %132 = load i32, i32* %del0, align 4
  %cmp140 = icmp sge i32 %132, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.then.130
  br label %for.inc.176

if.end.143:                                       ; preds = %if.then.130
  %133 = load i32, i32* %b2, align 4
  %call144 = call i32 @sign_of_int(i32 %133)
  %sub145 = sub nsw i32 0, %call144
  store i32 %sub145, i32* %sgn, align 4
  %134 = load i32, i32* %sgn, align 4
  %135 = load i16, i16* %a2, align 2
  %conv146 = sext i16 %135 to i32
  %sub147 = sub nsw i32 %conv146, %134
  %conv148 = trunc i32 %sub147 to i16
  store i16 %conv148, i16* %a2, align 2
  %136 = load i32, i32* %sgn, align 4
  %137 = load i32, i32* %b2, align 4
  %mul149 = mul nsw i32 %136, %137
  %138 = load i32, i32* %denshift.addr, align 4
  %shr150 = ashr i32 %mul149, %138
  %mul151 = mul nsw i32 2, %shr150
  %139 = load i32, i32* %del0, align 4
  %sub152 = sub nsw i32 %139, %mul151
  store i32 %sub152, i32* %del0, align 4
  %140 = load i32, i32* %del0, align 4
  %cmp153 = icmp sge i32 %140, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.143
  br label %for.inc.176

if.end.156:                                       ; preds = %if.end.143
  %141 = load i32, i32* %b1, align 4
  %call157 = call i32 @sign_of_int(i32 %141)
  %sub158 = sub nsw i32 0, %call157
  store i32 %sub158, i32* %sgn, align 4
  %142 = load i32, i32* %sgn, align 4
  %143 = load i16, i16* %a1, align 2
  %conv159 = sext i16 %143 to i32
  %sub160 = sub nsw i32 %conv159, %142
  %conv161 = trunc i32 %sub160 to i16
  store i16 %conv161, i16* %a1, align 2
  %144 = load i32, i32* %sgn, align 4
  %145 = load i32, i32* %b1, align 4
  %mul162 = mul nsw i32 %144, %145
  %146 = load i32, i32* %denshift.addr, align 4
  %shr163 = ashr i32 %mul162, %146
  %mul164 = mul nsw i32 3, %shr163
  %147 = load i32, i32* %del0, align 4
  %sub165 = sub nsw i32 %147, %mul164
  store i32 %sub165, i32* %del0, align 4
  %148 = load i32, i32* %del0, align 4
  %cmp166 = icmp sge i32 %148, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.156
  br label %for.inc.176

if.end.169:                                       ; preds = %if.end.156
  %149 = load i32, i32* %b0, align 4
  %call170 = call i32 @sign_of_int(i32 %149)
  %150 = load i16, i16* %a0, align 2
  %conv171 = sext i16 %150 to i32
  %add172 = add nsw i32 %conv171, %call170
  %conv173 = trunc i32 %add172 to i16
  store i16 %conv173, i16* %a0, align 2
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.169, %if.else
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.123
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.175, %if.then.168, %if.then.155, %if.then.142, %if.then.122, %if.then.110, %if.then.98
  %151 = load i32, i32* %j, align 4
  %inc177 = add nsw i32 %151, 1
  store i32 %inc177, i32* %j, align 4
  br label %for.cond.48

for.end.178:                                      ; preds = %for.cond.48
  %152 = load i16, i16* %a0, align 2
  %153 = load i16*, i16** %coefs.addr, align 8
  %arrayidx179 = getelementptr inbounds i16, i16* %153, i64 0
  store i16 %152, i16* %arrayidx179, align 2
  %154 = load i16, i16* %a1, align 2
  %155 = load i16*, i16** %coefs.addr, align 8
  %arrayidx180 = getelementptr inbounds i16, i16* %155, i64 1
  store i16 %154, i16* %arrayidx180, align 2
  %156 = load i16, i16* %a2, align 2
  %157 = load i16*, i16** %coefs.addr, align 8
  %arrayidx181 = getelementptr inbounds i16, i16* %157, i64 2
  store i16 %156, i16* %arrayidx181, align 2
  %158 = load i16, i16* %a3, align 2
  %159 = load i16*, i16** %coefs.addr, align 8
  %arrayidx182 = getelementptr inbounds i16, i16* %159, i64 3
  store i16 %158, i16* %arrayidx182, align 2
  br label %if.end.562

if.else.183:                                      ; preds = %for.end.40
  %160 = load i32, i32* %numactive.addr, align 4
  %cmp184 = icmp eq i32 %160, 8
  br i1 %cmp184, label %if.then.186, label %if.else.457

if.then.186:                                      ; preds = %if.else.183
  %161 = load i16*, i16** %coefs.addr, align 8
  %arrayidx187 = getelementptr inbounds i16, i16* %161, i64 0
  %162 = load i16, i16* %arrayidx187, align 2
  store i16 %162, i16* %a0, align 2
  %163 = load i16*, i16** %coefs.addr, align 8
  %arrayidx188 = getelementptr inbounds i16, i16* %163, i64 1
  %164 = load i16, i16* %arrayidx188, align 2
  store i16 %164, i16* %a1, align 2
  %165 = load i16*, i16** %coefs.addr, align 8
  %arrayidx189 = getelementptr inbounds i16, i16* %165, i64 2
  %166 = load i16, i16* %arrayidx189, align 2
  store i16 %166, i16* %a2, align 2
  %167 = load i16*, i16** %coefs.addr, align 8
  %arrayidx190 = getelementptr inbounds i16, i16* %167, i64 3
  %168 = load i16, i16* %arrayidx190, align 2
  store i16 %168, i16* %a3, align 2
  %169 = load i16*, i16** %coefs.addr, align 8
  %arrayidx191 = getelementptr inbounds i16, i16* %169, i64 4
  %170 = load i16, i16* %arrayidx191, align 2
  store i16 %170, i16* %a4, align 2
  %171 = load i16*, i16** %coefs.addr, align 8
  %arrayidx192 = getelementptr inbounds i16, i16* %171, i64 5
  %172 = load i16, i16* %arrayidx192, align 2
  store i16 %172, i16* %a5, align 2
  %173 = load i16*, i16** %coefs.addr, align 8
  %arrayidx193 = getelementptr inbounds i16, i16* %173, i64 6
  %174 = load i16, i16* %arrayidx193, align 2
  store i16 %174, i16* %a6, align 2
  %175 = load i16*, i16** %coefs.addr, align 8
  %arrayidx194 = getelementptr inbounds i16, i16* %175, i64 7
  %176 = load i16, i16* %arrayidx194, align 2
  store i16 %176, i16* %a7, align 2
  %177 = load i32, i32* %lim, align 4
  store i32 %177, i32* %j, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.446, %if.then.186
  %178 = load i32, i32* %j, align 4
  %179 = load i32, i32* %num.addr, align 4
  %cmp196 = icmp slt i32 %178, %179
  br i1 %cmp196, label %for.body.198, label %for.end.448

for.body.198:                                     ; preds = %for.cond.195
  %180 = load i32, i32* %j, align 4
  %181 = load i32, i32* %lim, align 4
  %sub199 = sub nsw i32 %180, %181
  %idxprom200 = sext i32 %sub199 to i64
  %182 = load i32*, i32** %in.addr, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %182, i64 %idxprom200
  %183 = load i32, i32* %arrayidx201, align 4
  store i32 %183, i32* %top, align 4
  %184 = load i32*, i32** %in.addr, align 8
  %185 = load i32, i32* %j, align 4
  %idx.ext202 = sext i32 %185 to i64
  %add.ptr203 = getelementptr inbounds i32, i32* %184, i64 %idx.ext202
  %add.ptr204 = getelementptr inbounds i32, i32* %add.ptr203, i64 -1
  store i32* %add.ptr204, i32** %pin, align 8
  %186 = load i32, i32* %top, align 4
  %187 = load i32*, i32** %pin, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %187, i32 -1
  store i32* %incdec.ptr, i32** %pin, align 8
  %188 = load i32, i32* %187, align 4
  %sub205 = sub nsw i32 %186, %188
  store i32 %sub205, i32* %b0, align 4
  %189 = load i32, i32* %top, align 4
  %190 = load i32*, i32** %pin, align 8
  %incdec.ptr206 = getelementptr inbounds i32, i32* %190, i32 -1
  store i32* %incdec.ptr206, i32** %pin, align 8
  %191 = load i32, i32* %190, align 4
  %sub207 = sub nsw i32 %189, %191
  store i32 %sub207, i32* %b1, align 4
  %192 = load i32, i32* %top, align 4
  %193 = load i32*, i32** %pin, align 8
  %incdec.ptr208 = getelementptr inbounds i32, i32* %193, i32 -1
  store i32* %incdec.ptr208, i32** %pin, align 8
  %194 = load i32, i32* %193, align 4
  %sub209 = sub nsw i32 %192, %194
  store i32 %sub209, i32* %b2, align 4
  %195 = load i32, i32* %top, align 4
  %196 = load i32*, i32** %pin, align 8
  %incdec.ptr210 = getelementptr inbounds i32, i32* %196, i32 -1
  store i32* %incdec.ptr210, i32** %pin, align 8
  %197 = load i32, i32* %196, align 4
  %sub211 = sub nsw i32 %195, %197
  store i32 %sub211, i32* %b3, align 4
  %198 = load i32, i32* %top, align 4
  %199 = load i32*, i32** %pin, align 8
  %incdec.ptr212 = getelementptr inbounds i32, i32* %199, i32 -1
  store i32* %incdec.ptr212, i32** %pin, align 8
  %200 = load i32, i32* %199, align 4
  %sub213 = sub nsw i32 %198, %200
  store i32 %sub213, i32* %b4, align 4
  %201 = load i32, i32* %top, align 4
  %202 = load i32*, i32** %pin, align 8
  %incdec.ptr214 = getelementptr inbounds i32, i32* %202, i32 -1
  store i32* %incdec.ptr214, i32** %pin, align 8
  %203 = load i32, i32* %202, align 4
  %sub215 = sub nsw i32 %201, %203
  store i32 %sub215, i32* %b5, align 4
  %204 = load i32, i32* %top, align 4
  %205 = load i32*, i32** %pin, align 8
  %incdec.ptr216 = getelementptr inbounds i32, i32* %205, i32 -1
  store i32* %incdec.ptr216, i32** %pin, align 8
  %206 = load i32, i32* %205, align 4
  %sub217 = sub nsw i32 %204, %206
  store i32 %sub217, i32* %b6, align 4
  %207 = load i32, i32* %top, align 4
  %208 = load i32*, i32** %pin, align 8
  %209 = load i32, i32* %208, align 4
  %sub218 = sub nsw i32 %207, %209
  store i32 %sub218, i32* %b7, align 4
  %210 = load i32*, i32** %pin, align 8
  %add.ptr219 = getelementptr inbounds i32, i32* %210, i64 8
  store i32* %add.ptr219, i32** %pin, align 8
  %211 = load i32, i32* %denhalf, align 4
  %212 = load i16, i16* %a0, align 2
  %conv220 = sext i16 %212 to i32
  %213 = load i32, i32* %b0, align 4
  %mul221 = mul nsw i32 %conv220, %213
  %sub222 = sub nsw i32 %211, %mul221
  %214 = load i16, i16* %a1, align 2
  %conv223 = sext i16 %214 to i32
  %215 = load i32, i32* %b1, align 4
  %mul224 = mul nsw i32 %conv223, %215
  %sub225 = sub nsw i32 %sub222, %mul224
  %216 = load i16, i16* %a2, align 2
  %conv226 = sext i16 %216 to i32
  %217 = load i32, i32* %b2, align 4
  %mul227 = mul nsw i32 %conv226, %217
  %sub228 = sub nsw i32 %sub225, %mul227
  %218 = load i16, i16* %a3, align 2
  %conv229 = sext i16 %218 to i32
  %219 = load i32, i32* %b3, align 4
  %mul230 = mul nsw i32 %conv229, %219
  %sub231 = sub nsw i32 %sub228, %mul230
  %220 = load i16, i16* %a4, align 2
  %conv232 = sext i16 %220 to i32
  %221 = load i32, i32* %b4, align 4
  %mul233 = mul nsw i32 %conv232, %221
  %sub234 = sub nsw i32 %sub231, %mul233
  %222 = load i16, i16* %a5, align 2
  %conv235 = sext i16 %222 to i32
  %223 = load i32, i32* %b5, align 4
  %mul236 = mul nsw i32 %conv235, %223
  %sub237 = sub nsw i32 %sub234, %mul236
  %224 = load i16, i16* %a6, align 2
  %conv238 = sext i16 %224 to i32
  %225 = load i32, i32* %b6, align 4
  %mul239 = mul nsw i32 %conv238, %225
  %sub240 = sub nsw i32 %sub237, %mul239
  %226 = load i16, i16* %a7, align 2
  %conv241 = sext i16 %226 to i32
  %227 = load i32, i32* %b7, align 4
  %mul242 = mul nsw i32 %conv241, %227
  %sub243 = sub nsw i32 %sub240, %mul242
  %228 = load i32, i32* %denshift.addr, align 4
  %shr244 = ashr i32 %sub243, %228
  store i32 %shr244, i32* %sum1, align 4
  %229 = load i32, i32* %j, align 4
  %idxprom245 = sext i32 %229 to i64
  %230 = load i32*, i32** %in.addr, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %230, i64 %idxprom245
  %231 = load i32, i32* %arrayidx246, align 4
  %232 = load i32, i32* %top, align 4
  %sub247 = sub nsw i32 %231, %232
  %233 = load i32, i32* %sum1, align 4
  %sub248 = sub nsw i32 %sub247, %233
  store i32 %sub248, i32* %del, align 4
  %234 = load i32, i32* %del, align 4
  %235 = load i32, i32* %chanshift, align 4
  %shl249 = shl i32 %234, %235
  %236 = load i32, i32* %chanshift, align 4
  %shr250 = ashr i32 %shl249, %236
  store i32 %shr250, i32* %del, align 4
  %237 = load i32, i32* %del, align 4
  %238 = load i32, i32* %j, align 4
  %idxprom251 = sext i32 %238 to i64
  %239 = load i32*, i32** %pc1.addr, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %239, i64 %idxprom251
  store i32 %237, i32* %arrayidx252, align 4
  %240 = load i32, i32* %del, align 4
  store i32 %240, i32* %del0, align 4
  %241 = load i32, i32* %del, align 4
  %call253 = call i32 @sign_of_int(i32 %241)
  store i32 %call253, i32* %sg, align 4
  %242 = load i32, i32* %sg, align 4
  %cmp254 = icmp sgt i32 %242, 0
  br i1 %cmp254, label %if.then.256, label %if.else.345

if.then.256:                                      ; preds = %for.body.198
  %243 = load i32, i32* %b7, align 4
  %call257 = call i32 @sign_of_int(i32 %243)
  store i32 %call257, i32* %sgn, align 4
  %244 = load i32, i32* %sgn, align 4
  %245 = load i16, i16* %a7, align 2
  %conv258 = sext i16 %245 to i32
  %sub259 = sub nsw i32 %conv258, %244
  %conv260 = trunc i32 %sub259 to i16
  store i16 %conv260, i16* %a7, align 2
  %246 = load i32, i32* %sgn, align 4
  %247 = load i32, i32* %b7, align 4
  %mul261 = mul nsw i32 %246, %247
  %248 = load i32, i32* %denshift.addr, align 4
  %shr262 = ashr i32 %mul261, %248
  %mul263 = mul nsw i32 1, %shr262
  %249 = load i32, i32* %del0, align 4
  %sub264 = sub nsw i32 %249, %mul263
  store i32 %sub264, i32* %del0, align 4
  %250 = load i32, i32* %del0, align 4
  %cmp265 = icmp sle i32 %250, 0
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.then.256
  br label %for.inc.446

if.end.268:                                       ; preds = %if.then.256
  %251 = load i32, i32* %b6, align 4
  %call269 = call i32 @sign_of_int(i32 %251)
  store i32 %call269, i32* %sgn, align 4
  %252 = load i32, i32* %sgn, align 4
  %253 = load i16, i16* %a6, align 2
  %conv270 = sext i16 %253 to i32
  %sub271 = sub nsw i32 %conv270, %252
  %conv272 = trunc i32 %sub271 to i16
  store i16 %conv272, i16* %a6, align 2
  %254 = load i32, i32* %sgn, align 4
  %255 = load i32, i32* %b6, align 4
  %mul273 = mul nsw i32 %254, %255
  %256 = load i32, i32* %denshift.addr, align 4
  %shr274 = ashr i32 %mul273, %256
  %mul275 = mul nsw i32 2, %shr274
  %257 = load i32, i32* %del0, align 4
  %sub276 = sub nsw i32 %257, %mul275
  store i32 %sub276, i32* %del0, align 4
  %258 = load i32, i32* %del0, align 4
  %cmp277 = icmp sle i32 %258, 0
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %if.end.268
  br label %for.inc.446

if.end.280:                                       ; preds = %if.end.268
  %259 = load i32, i32* %b5, align 4
  %call281 = call i32 @sign_of_int(i32 %259)
  store i32 %call281, i32* %sgn, align 4
  %260 = load i32, i32* %sgn, align 4
  %261 = load i16, i16* %a5, align 2
  %conv282 = sext i16 %261 to i32
  %sub283 = sub nsw i32 %conv282, %260
  %conv284 = trunc i32 %sub283 to i16
  store i16 %conv284, i16* %a5, align 2
  %262 = load i32, i32* %sgn, align 4
  %263 = load i32, i32* %b5, align 4
  %mul285 = mul nsw i32 %262, %263
  %264 = load i32, i32* %denshift.addr, align 4
  %shr286 = ashr i32 %mul285, %264
  %mul287 = mul nsw i32 3, %shr286
  %265 = load i32, i32* %del0, align 4
  %sub288 = sub nsw i32 %265, %mul287
  store i32 %sub288, i32* %del0, align 4
  %266 = load i32, i32* %del0, align 4
  %cmp289 = icmp sle i32 %266, 0
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %if.end.280
  br label %for.inc.446

if.end.292:                                       ; preds = %if.end.280
  %267 = load i32, i32* %b4, align 4
  %call293 = call i32 @sign_of_int(i32 %267)
  store i32 %call293, i32* %sgn, align 4
  %268 = load i32, i32* %sgn, align 4
  %269 = load i16, i16* %a4, align 2
  %conv294 = sext i16 %269 to i32
  %sub295 = sub nsw i32 %conv294, %268
  %conv296 = trunc i32 %sub295 to i16
  store i16 %conv296, i16* %a4, align 2
  %270 = load i32, i32* %sgn, align 4
  %271 = load i32, i32* %b4, align 4
  %mul297 = mul nsw i32 %270, %271
  %272 = load i32, i32* %denshift.addr, align 4
  %shr298 = ashr i32 %mul297, %272
  %mul299 = mul nsw i32 4, %shr298
  %273 = load i32, i32* %del0, align 4
  %sub300 = sub nsw i32 %273, %mul299
  store i32 %sub300, i32* %del0, align 4
  %274 = load i32, i32* %del0, align 4
  %cmp301 = icmp sle i32 %274, 0
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %if.end.292
  br label %for.inc.446

if.end.304:                                       ; preds = %if.end.292
  %275 = load i32, i32* %b3, align 4
  %call305 = call i32 @sign_of_int(i32 %275)
  store i32 %call305, i32* %sgn, align 4
  %276 = load i32, i32* %sgn, align 4
  %277 = load i16, i16* %a3, align 2
  %conv306 = sext i16 %277 to i32
  %sub307 = sub nsw i32 %conv306, %276
  %conv308 = trunc i32 %sub307 to i16
  store i16 %conv308, i16* %a3, align 2
  %278 = load i32, i32* %sgn, align 4
  %279 = load i32, i32* %b3, align 4
  %mul309 = mul nsw i32 %278, %279
  %280 = load i32, i32* %denshift.addr, align 4
  %shr310 = ashr i32 %mul309, %280
  %mul311 = mul nsw i32 5, %shr310
  %281 = load i32, i32* %del0, align 4
  %sub312 = sub nsw i32 %281, %mul311
  store i32 %sub312, i32* %del0, align 4
  %282 = load i32, i32* %del0, align 4
  %cmp313 = icmp sle i32 %282, 0
  br i1 %cmp313, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %if.end.304
  br label %for.inc.446

if.end.316:                                       ; preds = %if.end.304
  %283 = load i32, i32* %b2, align 4
  %call317 = call i32 @sign_of_int(i32 %283)
  store i32 %call317, i32* %sgn, align 4
  %284 = load i32, i32* %sgn, align 4
  %285 = load i16, i16* %a2, align 2
  %conv318 = sext i16 %285 to i32
  %sub319 = sub nsw i32 %conv318, %284
  %conv320 = trunc i32 %sub319 to i16
  store i16 %conv320, i16* %a2, align 2
  %286 = load i32, i32* %sgn, align 4
  %287 = load i32, i32* %b2, align 4
  %mul321 = mul nsw i32 %286, %287
  %288 = load i32, i32* %denshift.addr, align 4
  %shr322 = ashr i32 %mul321, %288
  %mul323 = mul nsw i32 6, %shr322
  %289 = load i32, i32* %del0, align 4
  %sub324 = sub nsw i32 %289, %mul323
  store i32 %sub324, i32* %del0, align 4
  %290 = load i32, i32* %del0, align 4
  %cmp325 = icmp sle i32 %290, 0
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %if.end.316
  br label %for.inc.446

if.end.328:                                       ; preds = %if.end.316
  %291 = load i32, i32* %b1, align 4
  %call329 = call i32 @sign_of_int(i32 %291)
  store i32 %call329, i32* %sgn, align 4
  %292 = load i32, i32* %sgn, align 4
  %293 = load i16, i16* %a1, align 2
  %conv330 = sext i16 %293 to i32
  %sub331 = sub nsw i32 %conv330, %292
  %conv332 = trunc i32 %sub331 to i16
  store i16 %conv332, i16* %a1, align 2
  %294 = load i32, i32* %sgn, align 4
  %295 = load i32, i32* %b1, align 4
  %mul333 = mul nsw i32 %294, %295
  %296 = load i32, i32* %denshift.addr, align 4
  %shr334 = ashr i32 %mul333, %296
  %mul335 = mul nsw i32 7, %shr334
  %297 = load i32, i32* %del0, align 4
  %sub336 = sub nsw i32 %297, %mul335
  store i32 %sub336, i32* %del0, align 4
  %298 = load i32, i32* %del0, align 4
  %cmp337 = icmp sle i32 %298, 0
  br i1 %cmp337, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %if.end.328
  br label %for.inc.446

if.end.340:                                       ; preds = %if.end.328
  %299 = load i32, i32* %b0, align 4
  %call341 = call i32 @sign_of_int(i32 %299)
  %300 = load i16, i16* %a0, align 2
  %conv342 = sext i16 %300 to i32
  %sub343 = sub nsw i32 %conv342, %call341
  %conv344 = trunc i32 %sub343 to i16
  store i16 %conv344, i16* %a0, align 2
  br label %if.end.445

if.else.345:                                      ; preds = %for.body.198
  %301 = load i32, i32* %sg, align 4
  %cmp346 = icmp slt i32 %301, 0
  br i1 %cmp346, label %if.then.348, label %if.end.444

if.then.348:                                      ; preds = %if.else.345
  %302 = load i32, i32* %b7, align 4
  %call349 = call i32 @sign_of_int(i32 %302)
  %sub350 = sub nsw i32 0, %call349
  store i32 %sub350, i32* %sgn, align 4
  %303 = load i32, i32* %sgn, align 4
  %304 = load i16, i16* %a7, align 2
  %conv351 = sext i16 %304 to i32
  %sub352 = sub nsw i32 %conv351, %303
  %conv353 = trunc i32 %sub352 to i16
  store i16 %conv353, i16* %a7, align 2
  %305 = load i32, i32* %sgn, align 4
  %306 = load i32, i32* %b7, align 4
  %mul354 = mul nsw i32 %305, %306
  %307 = load i32, i32* %denshift.addr, align 4
  %shr355 = ashr i32 %mul354, %307
  %mul356 = mul nsw i32 1, %shr355
  %308 = load i32, i32* %del0, align 4
  %sub357 = sub nsw i32 %308, %mul356
  store i32 %sub357, i32* %del0, align 4
  %309 = load i32, i32* %del0, align 4
  %cmp358 = icmp sge i32 %309, 0
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %if.then.348
  br label %for.inc.446

if.end.361:                                       ; preds = %if.then.348
  %310 = load i32, i32* %b6, align 4
  %call362 = call i32 @sign_of_int(i32 %310)
  %sub363 = sub nsw i32 0, %call362
  store i32 %sub363, i32* %sgn, align 4
  %311 = load i32, i32* %sgn, align 4
  %312 = load i16, i16* %a6, align 2
  %conv364 = sext i16 %312 to i32
  %sub365 = sub nsw i32 %conv364, %311
  %conv366 = trunc i32 %sub365 to i16
  store i16 %conv366, i16* %a6, align 2
  %313 = load i32, i32* %sgn, align 4
  %314 = load i32, i32* %b6, align 4
  %mul367 = mul nsw i32 %313, %314
  %315 = load i32, i32* %denshift.addr, align 4
  %shr368 = ashr i32 %mul367, %315
  %mul369 = mul nsw i32 2, %shr368
  %316 = load i32, i32* %del0, align 4
  %sub370 = sub nsw i32 %316, %mul369
  store i32 %sub370, i32* %del0, align 4
  %317 = load i32, i32* %del0, align 4
  %cmp371 = icmp sge i32 %317, 0
  br i1 %cmp371, label %if.then.373, label %if.end.374

if.then.373:                                      ; preds = %if.end.361
  br label %for.inc.446

if.end.374:                                       ; preds = %if.end.361
  %318 = load i32, i32* %b5, align 4
  %call375 = call i32 @sign_of_int(i32 %318)
  %sub376 = sub nsw i32 0, %call375
  store i32 %sub376, i32* %sgn, align 4
  %319 = load i32, i32* %sgn, align 4
  %320 = load i16, i16* %a5, align 2
  %conv377 = sext i16 %320 to i32
  %sub378 = sub nsw i32 %conv377, %319
  %conv379 = trunc i32 %sub378 to i16
  store i16 %conv379, i16* %a5, align 2
  %321 = load i32, i32* %sgn, align 4
  %322 = load i32, i32* %b5, align 4
  %mul380 = mul nsw i32 %321, %322
  %323 = load i32, i32* %denshift.addr, align 4
  %shr381 = ashr i32 %mul380, %323
  %mul382 = mul nsw i32 3, %shr381
  %324 = load i32, i32* %del0, align 4
  %sub383 = sub nsw i32 %324, %mul382
  store i32 %sub383, i32* %del0, align 4
  %325 = load i32, i32* %del0, align 4
  %cmp384 = icmp sge i32 %325, 0
  br i1 %cmp384, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %if.end.374
  br label %for.inc.446

if.end.387:                                       ; preds = %if.end.374
  %326 = load i32, i32* %b4, align 4
  %call388 = call i32 @sign_of_int(i32 %326)
  %sub389 = sub nsw i32 0, %call388
  store i32 %sub389, i32* %sgn, align 4
  %327 = load i32, i32* %sgn, align 4
  %328 = load i16, i16* %a4, align 2
  %conv390 = sext i16 %328 to i32
  %sub391 = sub nsw i32 %conv390, %327
  %conv392 = trunc i32 %sub391 to i16
  store i16 %conv392, i16* %a4, align 2
  %329 = load i32, i32* %sgn, align 4
  %330 = load i32, i32* %b4, align 4
  %mul393 = mul nsw i32 %329, %330
  %331 = load i32, i32* %denshift.addr, align 4
  %shr394 = ashr i32 %mul393, %331
  %mul395 = mul nsw i32 4, %shr394
  %332 = load i32, i32* %del0, align 4
  %sub396 = sub nsw i32 %332, %mul395
  store i32 %sub396, i32* %del0, align 4
  %333 = load i32, i32* %del0, align 4
  %cmp397 = icmp sge i32 %333, 0
  br i1 %cmp397, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %if.end.387
  br label %for.inc.446

if.end.400:                                       ; preds = %if.end.387
  %334 = load i32, i32* %b3, align 4
  %call401 = call i32 @sign_of_int(i32 %334)
  %sub402 = sub nsw i32 0, %call401
  store i32 %sub402, i32* %sgn, align 4
  %335 = load i32, i32* %sgn, align 4
  %336 = load i16, i16* %a3, align 2
  %conv403 = sext i16 %336 to i32
  %sub404 = sub nsw i32 %conv403, %335
  %conv405 = trunc i32 %sub404 to i16
  store i16 %conv405, i16* %a3, align 2
  %337 = load i32, i32* %sgn, align 4
  %338 = load i32, i32* %b3, align 4
  %mul406 = mul nsw i32 %337, %338
  %339 = load i32, i32* %denshift.addr, align 4
  %shr407 = ashr i32 %mul406, %339
  %mul408 = mul nsw i32 5, %shr407
  %340 = load i32, i32* %del0, align 4
  %sub409 = sub nsw i32 %340, %mul408
  store i32 %sub409, i32* %del0, align 4
  %341 = load i32, i32* %del0, align 4
  %cmp410 = icmp sge i32 %341, 0
  br i1 %cmp410, label %if.then.412, label %if.end.413

if.then.412:                                      ; preds = %if.end.400
  br label %for.inc.446

if.end.413:                                       ; preds = %if.end.400
  %342 = load i32, i32* %b2, align 4
  %call414 = call i32 @sign_of_int(i32 %342)
  %sub415 = sub nsw i32 0, %call414
  store i32 %sub415, i32* %sgn, align 4
  %343 = load i32, i32* %sgn, align 4
  %344 = load i16, i16* %a2, align 2
  %conv416 = sext i16 %344 to i32
  %sub417 = sub nsw i32 %conv416, %343
  %conv418 = trunc i32 %sub417 to i16
  store i16 %conv418, i16* %a2, align 2
  %345 = load i32, i32* %sgn, align 4
  %346 = load i32, i32* %b2, align 4
  %mul419 = mul nsw i32 %345, %346
  %347 = load i32, i32* %denshift.addr, align 4
  %shr420 = ashr i32 %mul419, %347
  %mul421 = mul nsw i32 6, %shr420
  %348 = load i32, i32* %del0, align 4
  %sub422 = sub nsw i32 %348, %mul421
  store i32 %sub422, i32* %del0, align 4
  %349 = load i32, i32* %del0, align 4
  %cmp423 = icmp sge i32 %349, 0
  br i1 %cmp423, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %if.end.413
  br label %for.inc.446

if.end.426:                                       ; preds = %if.end.413
  %350 = load i32, i32* %b1, align 4
  %call427 = call i32 @sign_of_int(i32 %350)
  %sub428 = sub nsw i32 0, %call427
  store i32 %sub428, i32* %sgn, align 4
  %351 = load i32, i32* %sgn, align 4
  %352 = load i16, i16* %a1, align 2
  %conv429 = sext i16 %352 to i32
  %sub430 = sub nsw i32 %conv429, %351
  %conv431 = trunc i32 %sub430 to i16
  store i16 %conv431, i16* %a1, align 2
  %353 = load i32, i32* %sgn, align 4
  %354 = load i32, i32* %b1, align 4
  %mul432 = mul nsw i32 %353, %354
  %355 = load i32, i32* %denshift.addr, align 4
  %shr433 = ashr i32 %mul432, %355
  %mul434 = mul nsw i32 7, %shr433
  %356 = load i32, i32* %del0, align 4
  %sub435 = sub nsw i32 %356, %mul434
  store i32 %sub435, i32* %del0, align 4
  %357 = load i32, i32* %del0, align 4
  %cmp436 = icmp sge i32 %357, 0
  br i1 %cmp436, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %if.end.426
  br label %for.inc.446

if.end.439:                                       ; preds = %if.end.426
  %358 = load i32, i32* %b0, align 4
  %call440 = call i32 @sign_of_int(i32 %358)
  %359 = load i16, i16* %a0, align 2
  %conv441 = sext i16 %359 to i32
  %add442 = add nsw i32 %conv441, %call440
  %conv443 = trunc i32 %add442 to i16
  store i16 %conv443, i16* %a0, align 2
  br label %if.end.444

if.end.444:                                       ; preds = %if.end.439, %if.else.345
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %if.end.340
  br label %for.inc.446

for.inc.446:                                      ; preds = %if.end.445, %if.then.438, %if.then.425, %if.then.412, %if.then.399, %if.then.386, %if.then.373, %if.then.360, %if.then.339, %if.then.327, %if.then.315, %if.then.303, %if.then.291, %if.then.279, %if.then.267
  %360 = load i32, i32* %j, align 4
  %inc447 = add nsw i32 %360, 1
  store i32 %inc447, i32* %j, align 4
  br label %for.cond.195

for.end.448:                                      ; preds = %for.cond.195
  %361 = load i16, i16* %a0, align 2
  %362 = load i16*, i16** %coefs.addr, align 8
  %arrayidx449 = getelementptr inbounds i16, i16* %362, i64 0
  store i16 %361, i16* %arrayidx449, align 2
  %363 = load i16, i16* %a1, align 2
  %364 = load i16*, i16** %coefs.addr, align 8
  %arrayidx450 = getelementptr inbounds i16, i16* %364, i64 1
  store i16 %363, i16* %arrayidx450, align 2
  %365 = load i16, i16* %a2, align 2
  %366 = load i16*, i16** %coefs.addr, align 8
  %arrayidx451 = getelementptr inbounds i16, i16* %366, i64 2
  store i16 %365, i16* %arrayidx451, align 2
  %367 = load i16, i16* %a3, align 2
  %368 = load i16*, i16** %coefs.addr, align 8
  %arrayidx452 = getelementptr inbounds i16, i16* %368, i64 3
  store i16 %367, i16* %arrayidx452, align 2
  %369 = load i16, i16* %a4, align 2
  %370 = load i16*, i16** %coefs.addr, align 8
  %arrayidx453 = getelementptr inbounds i16, i16* %370, i64 4
  store i16 %369, i16* %arrayidx453, align 2
  %371 = load i16, i16* %a5, align 2
  %372 = load i16*, i16** %coefs.addr, align 8
  %arrayidx454 = getelementptr inbounds i16, i16* %372, i64 5
  store i16 %371, i16* %arrayidx454, align 2
  %373 = load i16, i16* %a6, align 2
  %374 = load i16*, i16** %coefs.addr, align 8
  %arrayidx455 = getelementptr inbounds i16, i16* %374, i64 6
  store i16 %373, i16* %arrayidx455, align 2
  %375 = load i16, i16* %a7, align 2
  %376 = load i16*, i16** %coefs.addr, align 8
  %arrayidx456 = getelementptr inbounds i16, i16* %376, i64 7
  store i16 %375, i16* %arrayidx456, align 2
  br label %if.end.561

if.else.457:                                      ; preds = %if.else.183
  %377 = load i32, i32* %lim, align 4
  store i32 %377, i32* %j, align 4
  br label %for.cond.458

for.cond.458:                                     ; preds = %for.inc.558, %if.else.457
  %378 = load i32, i32* %j, align 4
  %379 = load i32, i32* %num.addr, align 4
  %cmp459 = icmp slt i32 %378, %379
  br i1 %cmp459, label %for.body.461, label %for.end.560

for.body.461:                                     ; preds = %for.cond.458
  %380 = load i32, i32* %j, align 4
  %381 = load i32, i32* %lim, align 4
  %sub462 = sub nsw i32 %380, %381
  %idxprom463 = sext i32 %sub462 to i64
  %382 = load i32*, i32** %in.addr, align 8
  %arrayidx464 = getelementptr inbounds i32, i32* %382, i64 %idxprom463
  %383 = load i32, i32* %arrayidx464, align 4
  store i32 %383, i32* %top, align 4
  %384 = load i32*, i32** %in.addr, align 8
  %385 = load i32, i32* %j, align 4
  %idx.ext465 = sext i32 %385 to i64
  %add.ptr466 = getelementptr inbounds i32, i32* %384, i64 %idx.ext465
  %add.ptr467 = getelementptr inbounds i32, i32* %add.ptr466, i64 -1
  store i32* %add.ptr467, i32** %pin, align 8
  store i32 0, i32* %sum1, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.468

for.cond.468:                                     ; preds = %for.inc.481, %for.body.461
  %386 = load i32, i32* %k, align 4
  %387 = load i32, i32* %numactive.addr, align 4
  %cmp469 = icmp slt i32 %386, %387
  br i1 %cmp469, label %for.body.471, label %for.end.483

for.body.471:                                     ; preds = %for.cond.468
  %388 = load i32, i32* %k, align 4
  %idxprom472 = sext i32 %388 to i64
  %389 = load i16*, i16** %coefs.addr, align 8
  %arrayidx473 = getelementptr inbounds i16, i16* %389, i64 %idxprom472
  %390 = load i16, i16* %arrayidx473, align 2
  %conv474 = sext i16 %390 to i32
  %391 = load i32, i32* %top, align 4
  %392 = load i32, i32* %k, align 4
  %sub475 = sub nsw i32 0, %392
  %idxprom476 = sext i32 %sub475 to i64
  %393 = load i32*, i32** %pin, align 8
  %arrayidx477 = getelementptr inbounds i32, i32* %393, i64 %idxprom476
  %394 = load i32, i32* %arrayidx477, align 4
  %sub478 = sub nsw i32 %391, %394
  %mul479 = mul nsw i32 %conv474, %sub478
  %395 = load i32, i32* %sum1, align 4
  %sub480 = sub nsw i32 %395, %mul479
  store i32 %sub480, i32* %sum1, align 4
  br label %for.inc.481

for.inc.481:                                      ; preds = %for.body.471
  %396 = load i32, i32* %k, align 4
  %inc482 = add nsw i32 %396, 1
  store i32 %inc482, i32* %k, align 4
  br label %for.cond.468

for.end.483:                                      ; preds = %for.cond.468
  %397 = load i32, i32* %j, align 4
  %idxprom484 = sext i32 %397 to i64
  %398 = load i32*, i32** %in.addr, align 8
  %arrayidx485 = getelementptr inbounds i32, i32* %398, i64 %idxprom484
  %399 = load i32, i32* %arrayidx485, align 4
  %400 = load i32, i32* %top, align 4
  %sub486 = sub nsw i32 %399, %400
  %401 = load i32, i32* %sum1, align 4
  %402 = load i32, i32* %denhalf, align 4
  %add487 = add nsw i32 %401, %402
  %403 = load i32, i32* %denshift.addr, align 4
  %shr488 = ashr i32 %add487, %403
  %sub489 = sub nsw i32 %sub486, %shr488
  store i32 %sub489, i32* %del, align 4
  %404 = load i32, i32* %del, align 4
  %405 = load i32, i32* %chanshift, align 4
  %shl490 = shl i32 %404, %405
  %406 = load i32, i32* %chanshift, align 4
  %shr491 = ashr i32 %shl490, %406
  store i32 %shr491, i32* %del, align 4
  %407 = load i32, i32* %del, align 4
  %408 = load i32, i32* %j, align 4
  %idxprom492 = sext i32 %408 to i64
  %409 = load i32*, i32** %pc1.addr, align 8
  %arrayidx493 = getelementptr inbounds i32, i32* %409, i64 %idxprom492
  store i32 %407, i32* %arrayidx493, align 4
  %410 = load i32, i32* %del, align 4
  store i32 %410, i32* %del0, align 4
  %411 = load i32, i32* %del, align 4
  %call494 = call i32 @sign_of_int(i32 %411)
  store i32 %call494, i32* %sg, align 4
  %412 = load i32, i32* %sg, align 4
  %cmp495 = icmp sgt i32 %412, 0
  br i1 %cmp495, label %if.then.497, label %if.else.524

if.then.497:                                      ; preds = %for.end.483
  %413 = load i32, i32* %numactive.addr, align 4
  %sub498 = sub nsw i32 %413, 1
  store i32 %sub498, i32* %k, align 4
  br label %for.cond.499

for.cond.499:                                     ; preds = %for.inc.522, %if.then.497
  %414 = load i32, i32* %k, align 4
  %cmp500 = icmp sge i32 %414, 0
  br i1 %cmp500, label %for.body.502, label %for.end.523

for.body.502:                                     ; preds = %for.cond.499
  %415 = load i32, i32* %top, align 4
  %416 = load i32, i32* %k, align 4
  %sub503 = sub nsw i32 0, %416
  %idxprom504 = sext i32 %sub503 to i64
  %417 = load i32*, i32** %pin, align 8
  %arrayidx505 = getelementptr inbounds i32, i32* %417, i64 %idxprom504
  %418 = load i32, i32* %arrayidx505, align 4
  %sub506 = sub nsw i32 %415, %418
  store i32 %sub506, i32* %dd, align 4
  %419 = load i32, i32* %dd, align 4
  %call507 = call i32 @sign_of_int(i32 %419)
  store i32 %call507, i32* %sgn, align 4
  %420 = load i32, i32* %sgn, align 4
  %421 = load i32, i32* %k, align 4
  %idxprom508 = sext i32 %421 to i64
  %422 = load i16*, i16** %coefs.addr, align 8
  %arrayidx509 = getelementptr inbounds i16, i16* %422, i64 %idxprom508
  %423 = load i16, i16* %arrayidx509, align 2
  %conv510 = sext i16 %423 to i32
  %sub511 = sub nsw i32 %conv510, %420
  %conv512 = trunc i32 %sub511 to i16
  store i16 %conv512, i16* %arrayidx509, align 2
  %424 = load i32, i32* %numactive.addr, align 4
  %425 = load i32, i32* %k, align 4
  %sub513 = sub nsw i32 %424, %425
  %426 = load i32, i32* %sgn, align 4
  %427 = load i32, i32* %dd, align 4
  %mul514 = mul nsw i32 %426, %427
  %428 = load i32, i32* %denshift.addr, align 4
  %shr515 = ashr i32 %mul514, %428
  %mul516 = mul nsw i32 %sub513, %shr515
  %429 = load i32, i32* %del0, align 4
  %sub517 = sub nsw i32 %429, %mul516
  store i32 %sub517, i32* %del0, align 4
  %430 = load i32, i32* %del0, align 4
  %cmp518 = icmp sle i32 %430, 0
  br i1 %cmp518, label %if.then.520, label %if.end.521

if.then.520:                                      ; preds = %for.body.502
  br label %for.end.523

if.end.521:                                       ; preds = %for.body.502
  br label %for.inc.522

for.inc.522:                                      ; preds = %if.end.521
  %431 = load i32, i32* %k, align 4
  %dec = add nsw i32 %431, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.499

for.end.523:                                      ; preds = %if.then.520, %for.cond.499
  br label %if.end.557

if.else.524:                                      ; preds = %for.end.483
  %432 = load i32, i32* %sg, align 4
  %cmp525 = icmp slt i32 %432, 0
  br i1 %cmp525, label %if.then.527, label %if.end.556

if.then.527:                                      ; preds = %if.else.524
  %433 = load i32, i32* %numactive.addr, align 4
  %sub528 = sub nsw i32 %433, 1
  store i32 %sub528, i32* %k, align 4
  br label %for.cond.529

for.cond.529:                                     ; preds = %for.inc.553, %if.then.527
  %434 = load i32, i32* %k, align 4
  %cmp530 = icmp sge i32 %434, 0
  br i1 %cmp530, label %for.body.532, label %for.end.555

for.body.532:                                     ; preds = %for.cond.529
  %435 = load i32, i32* %top, align 4
  %436 = load i32, i32* %k, align 4
  %sub533 = sub nsw i32 0, %436
  %idxprom534 = sext i32 %sub533 to i64
  %437 = load i32*, i32** %pin, align 8
  %arrayidx535 = getelementptr inbounds i32, i32* %437, i64 %idxprom534
  %438 = load i32, i32* %arrayidx535, align 4
  %sub536 = sub nsw i32 %435, %438
  store i32 %sub536, i32* %dd, align 4
  %439 = load i32, i32* %dd, align 4
  %call537 = call i32 @sign_of_int(i32 %439)
  store i32 %call537, i32* %sgn, align 4
  %440 = load i32, i32* %sgn, align 4
  %441 = load i32, i32* %k, align 4
  %idxprom538 = sext i32 %441 to i64
  %442 = load i16*, i16** %coefs.addr, align 8
  %arrayidx539 = getelementptr inbounds i16, i16* %442, i64 %idxprom538
  %443 = load i16, i16* %arrayidx539, align 2
  %conv540 = sext i16 %443 to i32
  %add541 = add nsw i32 %conv540, %440
  %conv542 = trunc i32 %add541 to i16
  store i16 %conv542, i16* %arrayidx539, align 2
  %444 = load i32, i32* %numactive.addr, align 4
  %445 = load i32, i32* %k, align 4
  %sub543 = sub nsw i32 %444, %445
  %446 = load i32, i32* %sgn, align 4
  %sub544 = sub nsw i32 0, %446
  %447 = load i32, i32* %dd, align 4
  %mul545 = mul nsw i32 %sub544, %447
  %448 = load i32, i32* %denshift.addr, align 4
  %shr546 = ashr i32 %mul545, %448
  %mul547 = mul nsw i32 %sub543, %shr546
  %449 = load i32, i32* %del0, align 4
  %sub548 = sub nsw i32 %449, %mul547
  store i32 %sub548, i32* %del0, align 4
  %450 = load i32, i32* %del0, align 4
  %cmp549 = icmp sge i32 %450, 0
  br i1 %cmp549, label %if.then.551, label %if.end.552

if.then.551:                                      ; preds = %for.body.532
  br label %for.end.555

if.end.552:                                       ; preds = %for.body.532
  br label %for.inc.553

for.inc.553:                                      ; preds = %if.end.552
  %451 = load i32, i32* %k, align 4
  %dec554 = add nsw i32 %451, -1
  store i32 %dec554, i32* %k, align 4
  br label %for.cond.529

for.end.555:                                      ; preds = %if.then.551, %for.cond.529
  br label %if.end.556

if.end.556:                                       ; preds = %for.end.555, %if.else.524
  br label %if.end.557

if.end.557:                                       ; preds = %if.end.556, %for.end.523
  br label %for.inc.558

for.inc.558:                                      ; preds = %if.end.557
  %452 = load i32, i32* %j, align 4
  %inc559 = add nsw i32 %452, 1
  store i32 %inc559, i32* %j, align 4
  br label %for.cond.458

for.end.560:                                      ; preds = %for.cond.458
  br label %if.end.561

if.end.561:                                       ; preds = %for.end.560, %for.end.448
  br label %if.end.562

if.end.562:                                       ; preds = %if.end, %for.end, %if.end.561, %for.end.178
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
