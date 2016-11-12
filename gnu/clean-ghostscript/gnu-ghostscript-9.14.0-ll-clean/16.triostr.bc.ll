; ModuleID = './triostr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define x86_fp80 @trio_to_long_double(i8* %source, i8** %endp) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %endp.addr = alloca i8**, align 8
  %isNegative = alloca i32, align 4
  %isExponentNegative = alloca i32, align 4
  %integer = alloca x86_fp80, align 16
  %fraction = alloca x86_fp80, align 16
  %exponent = alloca i64, align 8
  %base = alloca x86_fp80, align 16
  %fracdiv = alloca x86_fp80, align 16
  %value = alloca x86_fp80, align 16
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i8** %endp, i8*** %endp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %isNegative, align 4, !tbaa !5
  %1 = bitcast i32* %isExponentNegative to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %isExponentNegative, align 4, !tbaa !5
  %2 = bitcast x86_fp80* %integer to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %integer, align 16, !tbaa !7
  %3 = bitcast x86_fp80* %fraction to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %fraction, align 16, !tbaa !7
  %4 = bitcast i64* %exponent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 0, i64* %exponent, align 8, !tbaa !9
  %5 = bitcast x86_fp80* %base to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast x86_fp80* %fracdiv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %fracdiv, align 16, !tbaa !7
  %7 = bitcast x86_fp80* %value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %value, align 16, !tbaa !7
  %8 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx2, align 1, !tbaa !11
  %conv3 = sext i8 %11 to i32
  %cmp4 = icmp eq i32 %conv3, 120
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx6, align 1, !tbaa !11
  %conv7 = sext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 88
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store x86_fp80 0xK40038000000000000000, x86_fp80* %base, align 16, !tbaa !7
  %14 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then
  %15 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !11
  %conv10 = sext i8 %16 to i32
  %idxprom = sext i32 %conv10 to i64
  %call = call i16** @__ctype_b_loc() #5
  %17 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %18 = load i16, i16* %arrayidx11, align 2, !tbaa !12
  %conv12 = zext i16 %18 to i32
  %and = and i32 %conv12, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !7
  %20 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !7
  %mul = fmul x86_fp80 %20, %19
  store x86_fp80 %mul, x86_fp80* %integer, align 16, !tbaa !7
  %21 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !11
  %conv13 = sext i8 %22 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %call15 = call i16** @__ctype_b_loc() #5
  %23 = load i16*, i16** %call15, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %23, i64 %idxprom14
  %24 = load i16, i16* %arrayidx16, align 2, !tbaa !12
  %conv17 = zext i16 %24 to i32
  %and18 = and i32 %conv17, 2048
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %25 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !11
  %conv20 = sext i8 %26 to i32
  %sub = sub nsw i32 %conv20, 48
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %27 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !11
  %conv21 = sext i8 %28 to i32
  %call22 = call i32 @internal_to_upper(i32 %conv21) #6
  %sub23 = sub nsw i32 %call22, 65
  %add = add nsw i32 10, %sub23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add, %cond.false ]
  %conv24 = sitofp i32 %cond to x86_fp80
  %29 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !7
  %add25 = fadd x86_fp80 %29, %conv24
  store x86_fp80 %add25, x86_fp80* %integer, align 16, !tbaa !7
  %30 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !11
  %conv26 = sext i8 %32 to i32
  %cmp27 = icmp eq i32 %conv26, 46
  br i1 %cmp27, label %if.then.29, label %if.end.100

if.then.29:                                       ; preds = %while.end
  %33 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr30, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.31

while.cond.31:                                    ; preds = %cond.end.55, %if.then.29
  %34 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !11
  %conv32 = sext i8 %35 to i32
  %idxprom33 = sext i32 %conv32 to i64
  %call34 = call i16** @__ctype_b_loc() #5
  %36 = load i16*, i16** %call34, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %36, i64 %idxprom33
  %37 = load i16, i16* %arrayidx35, align 2, !tbaa !12
  %conv36 = zext i16 %37 to i32
  %and37 = and i32 %conv36, 4096
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %while.body.39, label %while.end.61

while.body.39:                                    ; preds = %while.cond.31
  %38 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !7
  %39 = load x86_fp80, x86_fp80* %fracdiv, align 16, !tbaa !7
  %div = fdiv x86_fp80 %39, %38
  store x86_fp80 %div, x86_fp80* %fracdiv, align 16, !tbaa !7
  %40 = load x86_fp80, x86_fp80* %fracdiv, align 16, !tbaa !7
  %41 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !11
  %conv40 = sext i8 %42 to i32
  %idxprom41 = sext i32 %conv40 to i64
  %call42 = call i16** @__ctype_b_loc() #5
  %43 = load i16*, i16** %call42, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i16, i16* %43, i64 %idxprom41
  %44 = load i16, i16* %arrayidx43, align 2, !tbaa !12
  %conv44 = zext i16 %44 to i32
  %and45 = and i32 %conv44, 2048
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %cond.true.47, label %cond.false.50

cond.true.47:                                     ; preds = %while.body.39
  %45 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !11
  %conv48 = sext i8 %46 to i32
  %sub49 = sub nsw i32 %conv48, 48
  br label %cond.end.55

cond.false.50:                                    ; preds = %while.body.39
  %47 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !11
  %conv51 = sext i8 %48 to i32
  %call52 = call i32 @internal_to_upper(i32 %conv51) #6
  %sub53 = sub nsw i32 %call52, 65
  %add54 = add nsw i32 10, %sub53
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.50, %cond.true.47
  %cond56 = phi i32 [ %sub49, %cond.true.47 ], [ %add54, %cond.false.50 ]
  %conv57 = sitofp i32 %cond56 to x86_fp80
  %mul58 = fmul x86_fp80 %40, %conv57
  %49 = load x86_fp80, x86_fp80* %fraction, align 16, !tbaa !7
  %add59 = fadd x86_fp80 %49, %mul58
  store x86_fp80 %add59, x86_fp80* %fraction, align 16, !tbaa !7
  %50 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr60, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.31

while.end.61:                                     ; preds = %while.cond.31
  %51 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !11
  %conv62 = sext i8 %52 to i32
  %cmp63 = icmp eq i32 %conv62, 112
  br i1 %cmp63, label %if.then.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %while.end.61
  %53 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !11
  %conv66 = sext i8 %54 to i32
  %cmp67 = icmp eq i32 %conv66, 80
  br i1 %cmp67, label %if.then.69, label %if.end.99

if.then.69:                                       ; preds = %lor.lhs.false.65, %while.end.61
  %55 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr70, i8** %source.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !11
  %conv71 = sext i8 %57 to i32
  %cmp72 = icmp eq i32 %conv71, 43
  br i1 %cmp72, label %if.then.78, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.then.69
  %58 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !11
  %conv75 = sext i8 %59 to i32
  %cmp76 = icmp eq i32 %conv75, 45
  br i1 %cmp76, label %if.then.78, label %if.end

if.then.78:                                       ; preds = %lor.lhs.false.74, %if.then.69
  %60 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %61 = load i8, i8* %60, align 1, !tbaa !11
  %conv79 = sext i8 %61 to i32
  %cmp80 = icmp eq i32 %conv79, 45
  %conv81 = zext i1 %cmp80 to i32
  store i32 %conv81, i32* %isExponentNegative, align 4, !tbaa !5
  %62 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr82 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr82, i8** %source.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.78, %lor.lhs.false.74
  br label %while.cond.83

while.cond.83:                                    ; preds = %while.body.91, %if.end
  %63 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %64 = load i8, i8* %63, align 1, !tbaa !11
  %conv84 = sext i8 %64 to i32
  %idxprom85 = sext i32 %conv84 to i64
  %call86 = call i16** @__ctype_b_loc() #5
  %65 = load i16*, i16** %call86, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i16, i16* %65, i64 %idxprom85
  %66 = load i16, i16* %arrayidx87, align 2, !tbaa !12
  %conv88 = zext i16 %66 to i32
  %and89 = and i32 %conv88, 2048
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %while.body.91, label %while.end.98

while.body.91:                                    ; preds = %while.cond.83
  %67 = load i64, i64* %exponent, align 8, !tbaa !9
  %mul92 = mul i64 %67, 10
  store i64 %mul92, i64* %exponent, align 8, !tbaa !9
  %68 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !11
  %conv93 = sext i8 %69 to i32
  %sub94 = sub nsw i32 %conv93, 48
  %conv95 = sext i32 %sub94 to i64
  %70 = load i64, i64* %exponent, align 8, !tbaa !9
  %add96 = add i64 %70, %conv95
  store i64 %add96, i64* %exponent, align 8, !tbaa !9
  %71 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr97, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.83

while.end.98:                                     ; preds = %while.cond.83
  br label %if.end.99

if.end.99:                                        ; preds = %while.end.98, %lor.lhs.false.65
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %while.end
  store x86_fp80 0xK40008000000000000000, x86_fp80* %base, align 16, !tbaa !7
  br label %if.end.202

if.else:                                          ; preds = %lor.lhs.false, %entry
  store x86_fp80 0xK4002A000000000000000, x86_fp80* %base, align 16, !tbaa !7
  %72 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !11
  %conv101 = sext i8 %73 to i32
  %cmp102 = icmp eq i32 %conv101, 45
  %conv103 = zext i1 %cmp102 to i32
  store i32 %conv103, i32* %isNegative, align 4, !tbaa !5
  %74 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !11
  %conv104 = sext i8 %75 to i32
  %cmp105 = icmp eq i32 %conv104, 43
  br i1 %cmp105, label %if.then.111, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.else
  %76 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !11
  %conv108 = sext i8 %77 to i32
  %cmp109 = icmp eq i32 %conv108, 45
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %lor.lhs.false.107, %if.else
  %78 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr112, i8** %source.addr, align 8, !tbaa !1
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %lor.lhs.false.107
  br label %while.cond.114

while.cond.114:                                   ; preds = %while.body.122, %if.end.113
  %79 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !11
  %conv115 = sext i8 %80 to i32
  %idxprom116 = sext i32 %conv115 to i64
  %call117 = call i16** @__ctype_b_loc() #5
  %81 = load i16*, i16** %call117, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i16, i16* %81, i64 %idxprom116
  %82 = load i16, i16* %arrayidx118, align 2, !tbaa !12
  %conv119 = zext i16 %82 to i32
  %and120 = and i32 %conv119, 2048
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %while.body.122, label %while.end.129

while.body.122:                                   ; preds = %while.cond.114
  %83 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !7
  %84 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !7
  %mul123 = fmul x86_fp80 %84, %83
  store x86_fp80 %mul123, x86_fp80* %integer, align 16, !tbaa !7
  %85 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %86 = load i8, i8* %85, align 1, !tbaa !11
  %conv124 = sext i8 %86 to i32
  %sub125 = sub nsw i32 %conv124, 48
  %conv126 = sitofp i32 %sub125 to x86_fp80
  %87 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !7
  %add127 = fadd x86_fp80 %87, %conv126
  store x86_fp80 %add127, x86_fp80* %integer, align 16, !tbaa !7
  %88 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr128 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr128, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.114

while.end.129:                                    ; preds = %while.cond.114
  %89 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !11
  %conv130 = sext i8 %90 to i32
  %cmp131 = icmp eq i32 %conv130, 46
  br i1 %cmp131, label %if.then.133, label %if.end.152

if.then.133:                                      ; preds = %while.end.129
  %91 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr134, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.135

while.cond.135:                                   ; preds = %while.body.143, %if.then.133
  %92 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %93 = load i8, i8* %92, align 1, !tbaa !11
  %conv136 = sext i8 %93 to i32
  %idxprom137 = sext i32 %conv136 to i64
  %call138 = call i16** @__ctype_b_loc() #5
  %94 = load i16*, i16** %call138, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i16, i16* %94, i64 %idxprom137
  %95 = load i16, i16* %arrayidx139, align 2, !tbaa !12
  %conv140 = zext i16 %95 to i32
  %and141 = and i32 %conv140, 2048
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %while.body.143, label %while.end.151

while.body.143:                                   ; preds = %while.cond.135
  %96 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !7
  %97 = load x86_fp80, x86_fp80* %fracdiv, align 16, !tbaa !7
  %div144 = fdiv x86_fp80 %97, %96
  store x86_fp80 %div144, x86_fp80* %fracdiv, align 16, !tbaa !7
  %98 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %99 = load i8, i8* %98, align 1, !tbaa !11
  %conv145 = sext i8 %99 to i32
  %sub146 = sub nsw i32 %conv145, 48
  %conv147 = sitofp i32 %sub146 to x86_fp80
  %100 = load x86_fp80, x86_fp80* %fracdiv, align 16, !tbaa !7
  %mul148 = fmul x86_fp80 %conv147, %100
  %101 = load x86_fp80, x86_fp80* %fraction, align 16, !tbaa !7
  %add149 = fadd x86_fp80 %101, %mul148
  store x86_fp80 %add149, x86_fp80* %fraction, align 16, !tbaa !7
  %102 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr150 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr150, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.135

while.end.151:                                    ; preds = %while.cond.135
  br label %if.end.152

if.end.152:                                       ; preds = %while.end.151, %while.end.129
  %103 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !11
  %conv153 = sext i8 %104 to i32
  %cmp154 = icmp eq i32 %conv153, 101
  br i1 %cmp154, label %if.then.168, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %if.end.152
  %105 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !11
  %conv157 = sext i8 %106 to i32
  %cmp158 = icmp eq i32 %conv157, 69
  br i1 %cmp158, label %if.then.168, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.156
  %107 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %108 = load i8, i8* %107, align 1, !tbaa !11
  %conv161 = sext i8 %108 to i32
  %cmp162 = icmp eq i32 %conv161, 100
  br i1 %cmp162, label %if.then.168, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %lor.lhs.false.160
  %109 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !11
  %conv165 = sext i8 %110 to i32
  %cmp166 = icmp eq i32 %conv165, 68
  br i1 %cmp166, label %if.then.168, label %if.end.201

if.then.168:                                      ; preds = %lor.lhs.false.164, %lor.lhs.false.160, %lor.lhs.false.156, %if.end.152
  %111 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr169 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr169, i8** %source.addr, align 8, !tbaa !1
  %112 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %113 = load i8, i8* %112, align 1, !tbaa !11
  %conv170 = sext i8 %113 to i32
  %cmp171 = icmp eq i32 %conv170, 45
  %conv172 = zext i1 %cmp171 to i32
  store i32 %conv172, i32* %isExponentNegative, align 4, !tbaa !5
  %114 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %115 = load i8, i8* %114, align 1, !tbaa !11
  %conv173 = sext i8 %115 to i32
  %cmp174 = icmp eq i32 %conv173, 43
  br i1 %cmp174, label %if.then.180, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %if.then.168
  %116 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !11
  %conv177 = sext i8 %117 to i32
  %cmp178 = icmp eq i32 %conv177, 45
  br i1 %cmp178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %lor.lhs.false.176, %if.then.168
  %118 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr181 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr181, i8** %source.addr, align 8, !tbaa !1
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %lor.lhs.false.176
  br label %while.cond.183

while.cond.183:                                   ; preds = %while.body.191, %if.end.182
  %119 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %120 = load i8, i8* %119, align 1, !tbaa !11
  %conv184 = sext i8 %120 to i32
  %idxprom185 = sext i32 %conv184 to i64
  %call186 = call i16** @__ctype_b_loc() #5
  %121 = load i16*, i16** %call186, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i16, i16* %121, i64 %idxprom185
  %122 = load i16, i16* %arrayidx187, align 2, !tbaa !12
  %conv188 = zext i16 %122 to i32
  %and189 = and i32 %conv188, 2048
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %while.body.191, label %while.end.200

while.body.191:                                   ; preds = %while.cond.183
  %123 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !7
  %conv192 = fptosi x86_fp80 %123 to i32
  %conv193 = sext i32 %conv192 to i64
  %124 = load i64, i64* %exponent, align 8, !tbaa !9
  %mul194 = mul i64 %124, %conv193
  store i64 %mul194, i64* %exponent, align 8, !tbaa !9
  %125 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !11
  %conv195 = sext i8 %126 to i32
  %sub196 = sub nsw i32 %conv195, 48
  %conv197 = sext i32 %sub196 to i64
  %127 = load i64, i64* %exponent, align 8, !tbaa !9
  %add198 = add i64 %127, %conv197
  store i64 %add198, i64* %exponent, align 8, !tbaa !9
  %128 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr199 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr199, i8** %source.addr, align 8, !tbaa !1
  br label %while.cond.183

while.end.200:                                    ; preds = %while.cond.183
  br label %if.end.201

if.end.201:                                       ; preds = %while.end.200, %lor.lhs.false.164
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.100
  %129 = load x86_fp80, x86_fp80* %integer, align 16, !tbaa !7
  %130 = load x86_fp80, x86_fp80* %fraction, align 16, !tbaa !7
  %add203 = fadd x86_fp80 %129, %130
  store x86_fp80 %add203, x86_fp80* %value, align 16, !tbaa !7
  %131 = load i64, i64* %exponent, align 8, !tbaa !9
  %cmp204 = icmp ne i64 %131, 0
  br i1 %cmp204, label %if.then.206, label %if.end.217

if.then.206:                                      ; preds = %if.end.202
  %132 = load i32, i32* %isExponentNegative, align 4, !tbaa !5
  %tobool207 = icmp ne i32 %132, 0
  br i1 %tobool207, label %if.then.208, label %if.else.212

if.then.208:                                      ; preds = %if.then.206
  %133 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !7
  %134 = load i64, i64* %exponent, align 8, !tbaa !9
  %conv209 = uitofp i64 %134 to x86_fp80
  %call210 = call x86_fp80 @powl(x86_fp80 %133, x86_fp80 %conv209) #7
  %135 = load x86_fp80, x86_fp80* %value, align 16, !tbaa !7
  %div211 = fdiv x86_fp80 %135, %call210
  store x86_fp80 %div211, x86_fp80* %value, align 16, !tbaa !7
  br label %if.end.216

if.else.212:                                      ; preds = %if.then.206
  %136 = load x86_fp80, x86_fp80* %base, align 16, !tbaa !7
  %137 = load i64, i64* %exponent, align 8, !tbaa !9
  %conv213 = uitofp i64 %137 to x86_fp80
  %call214 = call x86_fp80 @powl(x86_fp80 %136, x86_fp80 %conv213) #7
  %138 = load x86_fp80, x86_fp80* %value, align 16, !tbaa !7
  %mul215 = fmul x86_fp80 %138, %call214
  store x86_fp80 %mul215, x86_fp80* %value, align 16, !tbaa !7
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.212, %if.then.208
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.202
  %139 = load i32, i32* %isNegative, align 4, !tbaa !5
  %tobool218 = icmp ne i32 %139, 0
  br i1 %tobool218, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %if.end.217
  %140 = load x86_fp80, x86_fp80* %value, align 16, !tbaa !7
  %sub220 = fsub x86_fp80 0xK80000000000000000000, %140
  store x86_fp80 %sub220, x86_fp80* %value, align 16, !tbaa !7
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %if.end.217
  %141 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  %tobool222 = icmp ne i8** %141, null
  br i1 %tobool222, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.end.221
  %142 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %143 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  store i8* %142, i8** %143, align 8, !tbaa !1
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.223, %if.end.221
  %144 = load x86_fp80, x86_fp80* %value, align 16, !tbaa !7
  %145 = bitcast x86_fp80* %value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %145) #1
  %146 = bitcast x86_fp80* %fracdiv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %146) #1
  %147 = bitcast x86_fp80* %base to i8*
  call void @llvm.lifetime.end(i64 16, i8* %147) #1
  %148 = bitcast i64* %exponent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast x86_fp80* %fraction to i8*
  call void @llvm.lifetime.end(i64 16, i8* %149) #1
  %150 = bitcast x86_fp80* %integer to i8*
  call void @llvm.lifetime.end(i64 16, i8* %150) #1
  %151 = bitcast i32* %isExponentNegative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %isNegative to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  ret x86_fp80 %144
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @internal_to_upper(i32 %source) #3 {
entry:
  %source.addr = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %source, i32* %source.addr, align 4, !tbaa !5
  %0 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %source.addr, align 4, !tbaa !5
  %call = call i32 @toupper(i32 %1) #7
  store i32 %call, i32* %__res, align 4, !tbaa !5
  %2 = load i32, i32* %__res, align 4, !tbaa !5
  store i32 %2, i32* %tmp, !tbaa !5
  %3 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  %4 = load i32, i32* %tmp, !tbaa !5
  ret i32 %4
}

; Function Attrs: nounwind
declare x86_fp80 @powl(x86_fp80, x86_fp80) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define float @trio_to_float(i8* %source, i8** %endp) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %endp.addr = alloca i8**, align 8
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i8** %endp, i8*** %endp.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %1 = load i8**, i8*** %endp.addr, align 8, !tbaa !1
  %call = call float @strtof(i8* %0, i8** %1) #7
  ret float %call
}

; Function Attrs: nounwind
declare float @strtof(i8*, i8**) #4

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @toupper(i32 %__c) #3 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !5
  %0 = load i32, i32* %__c.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, -128
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %__c.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, 256
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %__c.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %call = call i32** @__ctype_toupper_loc() #5
  %3 = load i32*, i32** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %__c.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readnone }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long double", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!3, !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !3, i64 0}
