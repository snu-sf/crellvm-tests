; ModuleID = './MultiSource.Benchmarks.MiBench/156.security-blowfish.bf_cbc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: nounwind uwtable
define void @BF_cbc_encrypt(i8* %in, i8* %out, i64 %length, %struct.bf_key_st* %ks, i8* %iv, i32 %encrypt) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %ks.addr = alloca %struct.bf_key_st*, align 8
  %iv.addr = alloca i8*, align 8
  %encrypt.addr = alloca i32, align 4
  %tin0 = alloca i64, align 8
  %tin1 = alloca i64, align 8
  %tout0 = alloca i64, align 8
  %tout1 = alloca i64, align 8
  %xor0 = alloca i64, align 8
  %xor1 = alloca i64, align 8
  %l = alloca i64, align 8
  %tin = alloca [2 x i64], align 16
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store %struct.bf_key_st* %ks, %struct.bf_key_st** %ks.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i32 %encrypt, i32* %encrypt.addr, align 4
  %0 = load i64, i64* %length.addr, align 8
  store i64 %0, i64* %l, align 8
  %1 = load i32, i32* %encrypt.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %iv.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, i64* %tout0, align 8
  %4 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr1, i8** %iv.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i64
  %shl3 = shl i64 %conv2, 16
  %6 = load i64, i64* %tout0, align 8
  %or = or i64 %6, %shl3
  store i64 %or, i64* %tout0, align 8
  %7 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr4, i8** %iv.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = zext i8 %8 to i64
  %shl6 = shl i64 %conv5, 8
  %9 = load i64, i64* %tout0, align 8
  %or7 = or i64 %9, %shl6
  store i64 %or7, i64* %tout0, align 8
  %10 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %iv.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = zext i8 %11 to i64
  %12 = load i64, i64* %tout0, align 8
  %or10 = or i64 %12, %conv9
  store i64 %or10, i64* %tout0, align 8
  %13 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %iv.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = zext i8 %14 to i64
  %shl13 = shl i64 %conv12, 24
  store i64 %shl13, i64* %tout1, align 8
  %15 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %iv.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv15 = zext i8 %16 to i64
  %shl16 = shl i64 %conv15, 16
  %17 = load i64, i64* %tout1, align 8
  %or17 = or i64 %17, %shl16
  store i64 %or17, i64* %tout1, align 8
  %18 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr18, i8** %iv.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv19 = zext i8 %19 to i64
  %shl20 = shl i64 %conv19, 8
  %20 = load i64, i64* %tout1, align 8
  %or21 = or i64 %20, %shl20
  store i64 %or21, i64* %tout1, align 8
  %21 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %iv.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv23 = zext i8 %22 to i64
  %23 = load i64, i64* %tout1, align 8
  %or24 = or i64 %23, %conv23
  store i64 %or24, i64* %tout1, align 8
  %24 = load i8*, i8** %iv.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 -8
  store i8* %add.ptr, i8** %iv.addr, align 8
  %25 = load i64, i64* %l, align 8
  %sub = sub nsw i64 %25, 8
  store i64 %sub, i64* %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %26 = load i64, i64* %l, align 8
  %cmp = icmp sge i64 %26, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %in.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr26, i8** %in.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv27 = zext i8 %28 to i64
  %shl28 = shl i64 %conv27, 24
  store i64 %shl28, i64* %tin0, align 8
  %29 = load i8*, i8** %in.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr29, i8** %in.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv30 = zext i8 %30 to i64
  %shl31 = shl i64 %conv30, 16
  %31 = load i64, i64* %tin0, align 8
  %or32 = or i64 %31, %shl31
  store i64 %or32, i64* %tin0, align 8
  %32 = load i8*, i8** %in.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr33, i8** %in.addr, align 8
  %33 = load i8, i8* %32, align 1
  %conv34 = zext i8 %33 to i64
  %shl35 = shl i64 %conv34, 8
  %34 = load i64, i64* %tin0, align 8
  %or36 = or i64 %34, %shl35
  store i64 %or36, i64* %tin0, align 8
  %35 = load i8*, i8** %in.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr37, i8** %in.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv38 = zext i8 %36 to i64
  %37 = load i64, i64* %tin0, align 8
  %or39 = or i64 %37, %conv38
  store i64 %or39, i64* %tin0, align 8
  %38 = load i8*, i8** %in.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr40, i8** %in.addr, align 8
  %39 = load i8, i8* %38, align 1
  %conv41 = zext i8 %39 to i64
  %shl42 = shl i64 %conv41, 24
  store i64 %shl42, i64* %tin1, align 8
  %40 = load i8*, i8** %in.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr43, i8** %in.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv44 = zext i8 %41 to i64
  %shl45 = shl i64 %conv44, 16
  %42 = load i64, i64* %tin1, align 8
  %or46 = or i64 %42, %shl45
  store i64 %or46, i64* %tin1, align 8
  %43 = load i8*, i8** %in.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr47, i8** %in.addr, align 8
  %44 = load i8, i8* %43, align 1
  %conv48 = zext i8 %44 to i64
  %shl49 = shl i64 %conv48, 8
  %45 = load i64, i64* %tin1, align 8
  %or50 = or i64 %45, %shl49
  store i64 %or50, i64* %tin1, align 8
  %46 = load i8*, i8** %in.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr51, i8** %in.addr, align 8
  %47 = load i8, i8* %46, align 1
  %conv52 = zext i8 %47 to i64
  %48 = load i64, i64* %tin1, align 8
  %or53 = or i64 %48, %conv52
  store i64 %or53, i64* %tin1, align 8
  %49 = load i64, i64* %tout0, align 8
  %50 = load i64, i64* %tin0, align 8
  %xor = xor i64 %50, %49
  store i64 %xor, i64* %tin0, align 8
  %51 = load i64, i64* %tout1, align 8
  %52 = load i64, i64* %tin1, align 8
  %xor54 = xor i64 %52, %51
  store i64 %xor54, i64* %tin1, align 8
  %53 = load i64, i64* %tin0, align 8
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 0
  store i64 %53, i64* %arrayidx, align 8
  %54 = load i64, i64* %tin1, align 8
  %arrayidx55 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 1
  store i64 %54, i64* %arrayidx55, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i32 0
  %55 = load %struct.bf_key_st*, %struct.bf_key_st** %ks.addr, align 8
  call void @BF_encrypt(i64* %arraydecay, %struct.bf_key_st* %55, i32 1)
  %arrayidx56 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 0
  %56 = load i64, i64* %arrayidx56, align 8
  store i64 %56, i64* %tout0, align 8
  %arrayidx57 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 1
  %57 = load i64, i64* %arrayidx57, align 8
  store i64 %57, i64* %tout1, align 8
  %58 = load i64, i64* %tout0, align 8
  %shr = lshr i64 %58, 24
  %and = and i64 %shr, 255
  %conv58 = trunc i64 %and to i8
  %59 = load i8*, i8** %out.addr, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr59, i8** %out.addr, align 8
  store i8 %conv58, i8* %59, align 1
  %60 = load i64, i64* %tout0, align 8
  %shr60 = lshr i64 %60, 16
  %and61 = and i64 %shr60, 255
  %conv62 = trunc i64 %and61 to i8
  %61 = load i8*, i8** %out.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr63, i8** %out.addr, align 8
  store i8 %conv62, i8* %61, align 1
  %62 = load i64, i64* %tout0, align 8
  %shr64 = lshr i64 %62, 8
  %and65 = and i64 %shr64, 255
  %conv66 = trunc i64 %and65 to i8
  %63 = load i8*, i8** %out.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr67, i8** %out.addr, align 8
  store i8 %conv66, i8* %63, align 1
  %64 = load i64, i64* %tout0, align 8
  %and68 = and i64 %64, 255
  %conv69 = trunc i64 %and68 to i8
  %65 = load i8*, i8** %out.addr, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr70, i8** %out.addr, align 8
  store i8 %conv69, i8* %65, align 1
  %66 = load i64, i64* %tout1, align 8
  %shr71 = lshr i64 %66, 24
  %and72 = and i64 %shr71, 255
  %conv73 = trunc i64 %and72 to i8
  %67 = load i8*, i8** %out.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr74, i8** %out.addr, align 8
  store i8 %conv73, i8* %67, align 1
  %68 = load i64, i64* %tout1, align 8
  %shr75 = lshr i64 %68, 16
  %and76 = and i64 %shr75, 255
  %conv77 = trunc i64 %and76 to i8
  %69 = load i8*, i8** %out.addr, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr78, i8** %out.addr, align 8
  store i8 %conv77, i8* %69, align 1
  %70 = load i64, i64* %tout1, align 8
  %shr79 = lshr i64 %70, 8
  %and80 = and i64 %shr79, 255
  %conv81 = trunc i64 %and80 to i8
  %71 = load i8*, i8** %out.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr82, i8** %out.addr, align 8
  store i8 %conv81, i8* %71, align 1
  %72 = load i64, i64* %tout1, align 8
  %and83 = and i64 %72, 255
  %conv84 = trunc i64 %and83 to i8
  %73 = load i8*, i8** %out.addr, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr85, i8** %out.addr, align 8
  store i8 %conv84, i8* %73, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i64, i64* %l, align 8
  %sub86 = sub nsw i64 %74, 8
  store i64 %sub86, i64* %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load i64, i64* %l, align 8
  %cmp87 = icmp ne i64 %75, -8
  br i1 %cmp87, label %if.then.89, label %if.end

if.then.89:                                       ; preds = %for.end
  %76 = load i64, i64* %l, align 8
  %add = add nsw i64 %76, 8
  %77 = load i8*, i8** %in.addr, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %77, i64 %add
  store i8* %add.ptr90, i8** %in.addr, align 8
  store i64 0, i64* %tin1, align 8
  store i64 0, i64* %tin0, align 8
  %78 = load i64, i64* %l, align 8
  %add91 = add nsw i64 %78, 8
  switch i64 %add91, label %sw.epilog [
    i64 8, label %sw.bb
    i64 7, label %sw.bb.94
    i64 6, label %sw.bb.99
    i64 5, label %sw.bb.104
    i64 4, label %sw.bb.109
    i64 3, label %sw.bb.112
    i64 2, label %sw.bb.117
    i64 1, label %sw.bb.122
  ]

sw.bb:                                            ; preds = %if.then.89
  %79 = load i8*, i8** %in.addr, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr92, i8** %in.addr, align 8
  %80 = load i8, i8* %incdec.ptr92, align 1
  %conv93 = zext i8 %80 to i64
  store i64 %conv93, i64* %tin1, align 8
  br label %sw.bb.94

sw.bb.94:                                         ; preds = %if.then.89, %sw.bb
  %81 = load i8*, i8** %in.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %incdec.ptr95, i8** %in.addr, align 8
  %82 = load i8, i8* %incdec.ptr95, align 1
  %conv96 = zext i8 %82 to i64
  %shl97 = shl i64 %conv96, 8
  %83 = load i64, i64* %tin1, align 8
  %or98 = or i64 %83, %shl97
  store i64 %or98, i64* %tin1, align 8
  br label %sw.bb.99

sw.bb.99:                                         ; preds = %if.then.89, %sw.bb.94
  %84 = load i8*, i8** %in.addr, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %84, i32 -1
  store i8* %incdec.ptr100, i8** %in.addr, align 8
  %85 = load i8, i8* %incdec.ptr100, align 1
  %conv101 = zext i8 %85 to i64
  %shl102 = shl i64 %conv101, 16
  %86 = load i64, i64* %tin1, align 8
  %or103 = or i64 %86, %shl102
  store i64 %or103, i64* %tin1, align 8
  br label %sw.bb.104

sw.bb.104:                                        ; preds = %if.then.89, %sw.bb.99
  %87 = load i8*, i8** %in.addr, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %incdec.ptr105, i8** %in.addr, align 8
  %88 = load i8, i8* %incdec.ptr105, align 1
  %conv106 = zext i8 %88 to i64
  %shl107 = shl i64 %conv106, 24
  %89 = load i64, i64* %tin1, align 8
  %or108 = or i64 %89, %shl107
  store i64 %or108, i64* %tin1, align 8
  br label %sw.bb.109

sw.bb.109:                                        ; preds = %if.then.89, %sw.bb.104
  %90 = load i8*, i8** %in.addr, align 8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %incdec.ptr110, i8** %in.addr, align 8
  %91 = load i8, i8* %incdec.ptr110, align 1
  %conv111 = zext i8 %91 to i64
  store i64 %conv111, i64* %tin0, align 8
  br label %sw.bb.112

sw.bb.112:                                        ; preds = %if.then.89, %sw.bb.109
  %92 = load i8*, i8** %in.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %incdec.ptr113, i8** %in.addr, align 8
  %93 = load i8, i8* %incdec.ptr113, align 1
  %conv114 = zext i8 %93 to i64
  %shl115 = shl i64 %conv114, 8
  %94 = load i64, i64* %tin0, align 8
  %or116 = or i64 %94, %shl115
  store i64 %or116, i64* %tin0, align 8
  br label %sw.bb.117

sw.bb.117:                                        ; preds = %if.then.89, %sw.bb.112
  %95 = load i8*, i8** %in.addr, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %incdec.ptr118, i8** %in.addr, align 8
  %96 = load i8, i8* %incdec.ptr118, align 1
  %conv119 = zext i8 %96 to i64
  %shl120 = shl i64 %conv119, 16
  %97 = load i64, i64* %tin0, align 8
  %or121 = or i64 %97, %shl120
  store i64 %or121, i64* %tin0, align 8
  br label %sw.bb.122

sw.bb.122:                                        ; preds = %if.then.89, %sw.bb.117
  %98 = load i8*, i8** %in.addr, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %incdec.ptr123, i8** %in.addr, align 8
  %99 = load i8, i8* %incdec.ptr123, align 1
  %conv124 = zext i8 %99 to i64
  %shl125 = shl i64 %conv124, 24
  %100 = load i64, i64* %tin0, align 8
  %or126 = or i64 %100, %shl125
  store i64 %or126, i64* %tin0, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.122, %if.then.89
  %101 = load i64, i64* %tout0, align 8
  %102 = load i64, i64* %tin0, align 8
  %xor127 = xor i64 %102, %101
  store i64 %xor127, i64* %tin0, align 8
  %103 = load i64, i64* %tout1, align 8
  %104 = load i64, i64* %tin1, align 8
  %xor128 = xor i64 %104, %103
  store i64 %xor128, i64* %tin1, align 8
  %105 = load i64, i64* %tin0, align 8
  %arrayidx129 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 0
  store i64 %105, i64* %arrayidx129, align 8
  %106 = load i64, i64* %tin1, align 8
  %arrayidx130 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 1
  store i64 %106, i64* %arrayidx130, align 8
  %arraydecay131 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i32 0
  %107 = load %struct.bf_key_st*, %struct.bf_key_st** %ks.addr, align 8
  call void @BF_encrypt(i64* %arraydecay131, %struct.bf_key_st* %107, i32 1)
  %arrayidx132 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 0
  %108 = load i64, i64* %arrayidx132, align 8
  store i64 %108, i64* %tout0, align 8
  %arrayidx133 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 1
  %109 = load i64, i64* %arrayidx133, align 8
  store i64 %109, i64* %tout1, align 8
  %110 = load i64, i64* %tout0, align 8
  %shr134 = lshr i64 %110, 24
  %and135 = and i64 %shr134, 255
  %conv136 = trunc i64 %and135 to i8
  %111 = load i8*, i8** %out.addr, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr137, i8** %out.addr, align 8
  store i8 %conv136, i8* %111, align 1
  %112 = load i64, i64* %tout0, align 8
  %shr138 = lshr i64 %112, 16
  %and139 = and i64 %shr138, 255
  %conv140 = trunc i64 %and139 to i8
  %113 = load i8*, i8** %out.addr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr141, i8** %out.addr, align 8
  store i8 %conv140, i8* %113, align 1
  %114 = load i64, i64* %tout0, align 8
  %shr142 = lshr i64 %114, 8
  %and143 = and i64 %shr142, 255
  %conv144 = trunc i64 %and143 to i8
  %115 = load i8*, i8** %out.addr, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr145, i8** %out.addr, align 8
  store i8 %conv144, i8* %115, align 1
  %116 = load i64, i64* %tout0, align 8
  %and146 = and i64 %116, 255
  %conv147 = trunc i64 %and146 to i8
  %117 = load i8*, i8** %out.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr148, i8** %out.addr, align 8
  store i8 %conv147, i8* %117, align 1
  %118 = load i64, i64* %tout1, align 8
  %shr149 = lshr i64 %118, 24
  %and150 = and i64 %shr149, 255
  %conv151 = trunc i64 %and150 to i8
  %119 = load i8*, i8** %out.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr152, i8** %out.addr, align 8
  store i8 %conv151, i8* %119, align 1
  %120 = load i64, i64* %tout1, align 8
  %shr153 = lshr i64 %120, 16
  %and154 = and i64 %shr153, 255
  %conv155 = trunc i64 %and154 to i8
  %121 = load i8*, i8** %out.addr, align 8
  %incdec.ptr156 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr156, i8** %out.addr, align 8
  store i8 %conv155, i8* %121, align 1
  %122 = load i64, i64* %tout1, align 8
  %shr157 = lshr i64 %122, 8
  %and158 = and i64 %shr157, 255
  %conv159 = trunc i64 %and158 to i8
  %123 = load i8*, i8** %out.addr, align 8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr160, i8** %out.addr, align 8
  store i8 %conv159, i8* %123, align 1
  %124 = load i64, i64* %tout1, align 8
  %and161 = and i64 %124, 255
  %conv162 = trunc i64 %and161 to i8
  %125 = load i8*, i8** %out.addr, align 8
  %incdec.ptr163 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr163, i8** %out.addr, align 8
  store i8 %conv162, i8* %125, align 1
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %126 = load i64, i64* %tout0, align 8
  %shr164 = lshr i64 %126, 24
  %and165 = and i64 %shr164, 255
  %conv166 = trunc i64 %and165 to i8
  %127 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr167 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr167, i8** %iv.addr, align 8
  store i8 %conv166, i8* %127, align 1
  %128 = load i64, i64* %tout0, align 8
  %shr168 = lshr i64 %128, 16
  %and169 = and i64 %shr168, 255
  %conv170 = trunc i64 %and169 to i8
  %129 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr171 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr171, i8** %iv.addr, align 8
  store i8 %conv170, i8* %129, align 1
  %130 = load i64, i64* %tout0, align 8
  %shr172 = lshr i64 %130, 8
  %and173 = and i64 %shr172, 255
  %conv174 = trunc i64 %and173 to i8
  %131 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr175 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr175, i8** %iv.addr, align 8
  store i8 %conv174, i8* %131, align 1
  %132 = load i64, i64* %tout0, align 8
  %and176 = and i64 %132, 255
  %conv177 = trunc i64 %and176 to i8
  %133 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr178 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr178, i8** %iv.addr, align 8
  store i8 %conv177, i8* %133, align 1
  %134 = load i64, i64* %tout1, align 8
  %shr179 = lshr i64 %134, 24
  %and180 = and i64 %shr179, 255
  %conv181 = trunc i64 %and180 to i8
  %135 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr182 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr182, i8** %iv.addr, align 8
  store i8 %conv181, i8* %135, align 1
  %136 = load i64, i64* %tout1, align 8
  %shr183 = lshr i64 %136, 16
  %and184 = and i64 %shr183, 255
  %conv185 = trunc i64 %and184 to i8
  %137 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr186 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr186, i8** %iv.addr, align 8
  store i8 %conv185, i8* %137, align 1
  %138 = load i64, i64* %tout1, align 8
  %shr187 = lshr i64 %138, 8
  %and188 = and i64 %shr187, 255
  %conv189 = trunc i64 %and188 to i8
  %139 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr190, i8** %iv.addr, align 8
  store i8 %conv189, i8* %139, align 1
  %140 = load i64, i64* %tout1, align 8
  %and191 = and i64 %140, 255
  %conv192 = trunc i64 %and191 to i8
  %141 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr193, i8** %iv.addr, align 8
  store i8 %conv192, i8* %141, align 1
  br label %if.end.407

if.else:                                          ; preds = %entry
  %142 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr194 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr194, i8** %iv.addr, align 8
  %143 = load i8, i8* %142, align 1
  %conv195 = zext i8 %143 to i64
  %shl196 = shl i64 %conv195, 24
  store i64 %shl196, i64* %xor0, align 8
  %144 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr197 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr197, i8** %iv.addr, align 8
  %145 = load i8, i8* %144, align 1
  %conv198 = zext i8 %145 to i64
  %shl199 = shl i64 %conv198, 16
  %146 = load i64, i64* %xor0, align 8
  %or200 = or i64 %146, %shl199
  store i64 %or200, i64* %xor0, align 8
  %147 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr201 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr201, i8** %iv.addr, align 8
  %148 = load i8, i8* %147, align 1
  %conv202 = zext i8 %148 to i64
  %shl203 = shl i64 %conv202, 8
  %149 = load i64, i64* %xor0, align 8
  %or204 = or i64 %149, %shl203
  store i64 %or204, i64* %xor0, align 8
  %150 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr205 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr205, i8** %iv.addr, align 8
  %151 = load i8, i8* %150, align 1
  %conv206 = zext i8 %151 to i64
  %152 = load i64, i64* %xor0, align 8
  %or207 = or i64 %152, %conv206
  store i64 %or207, i64* %xor0, align 8
  %153 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr208 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr208, i8** %iv.addr, align 8
  %154 = load i8, i8* %153, align 1
  %conv209 = zext i8 %154 to i64
  %shl210 = shl i64 %conv209, 24
  store i64 %shl210, i64* %xor1, align 8
  %155 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr211 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr211, i8** %iv.addr, align 8
  %156 = load i8, i8* %155, align 1
  %conv212 = zext i8 %156 to i64
  %shl213 = shl i64 %conv212, 16
  %157 = load i64, i64* %xor1, align 8
  %or214 = or i64 %157, %shl213
  store i64 %or214, i64* %xor1, align 8
  %158 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr215 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr215, i8** %iv.addr, align 8
  %159 = load i8, i8* %158, align 1
  %conv216 = zext i8 %159 to i64
  %shl217 = shl i64 %conv216, 8
  %160 = load i64, i64* %xor1, align 8
  %or218 = or i64 %160, %shl217
  store i64 %or218, i64* %xor1, align 8
  %161 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr219 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr219, i8** %iv.addr, align 8
  %162 = load i8, i8* %161, align 1
  %conv220 = zext i8 %162 to i64
  %163 = load i64, i64* %xor1, align 8
  %or221 = or i64 %163, %conv220
  store i64 %or221, i64* %xor1, align 8
  %164 = load i8*, i8** %iv.addr, align 8
  %add.ptr222 = getelementptr inbounds i8, i8* %164, i64 -8
  store i8* %add.ptr222, i8** %iv.addr, align 8
  %165 = load i64, i64* %l, align 8
  %sub223 = sub nsw i64 %165, 8
  store i64 %sub223, i64* %l, align 8
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.293, %if.else
  %166 = load i64, i64* %l, align 8
  %cmp225 = icmp sge i64 %166, 0
  br i1 %cmp225, label %for.body.227, label %for.end.295

for.body.227:                                     ; preds = %for.cond.224
  %167 = load i8*, i8** %in.addr, align 8
  %incdec.ptr228 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr228, i8** %in.addr, align 8
  %168 = load i8, i8* %167, align 1
  %conv229 = zext i8 %168 to i64
  %shl230 = shl i64 %conv229, 24
  store i64 %shl230, i64* %tin0, align 8
  %169 = load i8*, i8** %in.addr, align 8
  %incdec.ptr231 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr231, i8** %in.addr, align 8
  %170 = load i8, i8* %169, align 1
  %conv232 = zext i8 %170 to i64
  %shl233 = shl i64 %conv232, 16
  %171 = load i64, i64* %tin0, align 8
  %or234 = or i64 %171, %shl233
  store i64 %or234, i64* %tin0, align 8
  %172 = load i8*, i8** %in.addr, align 8
  %incdec.ptr235 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr235, i8** %in.addr, align 8
  %173 = load i8, i8* %172, align 1
  %conv236 = zext i8 %173 to i64
  %shl237 = shl i64 %conv236, 8
  %174 = load i64, i64* %tin0, align 8
  %or238 = or i64 %174, %shl237
  store i64 %or238, i64* %tin0, align 8
  %175 = load i8*, i8** %in.addr, align 8
  %incdec.ptr239 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr239, i8** %in.addr, align 8
  %176 = load i8, i8* %175, align 1
  %conv240 = zext i8 %176 to i64
  %177 = load i64, i64* %tin0, align 8
  %or241 = or i64 %177, %conv240
  store i64 %or241, i64* %tin0, align 8
  %178 = load i8*, i8** %in.addr, align 8
  %incdec.ptr242 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr242, i8** %in.addr, align 8
  %179 = load i8, i8* %178, align 1
  %conv243 = zext i8 %179 to i64
  %shl244 = shl i64 %conv243, 24
  store i64 %shl244, i64* %tin1, align 8
  %180 = load i8*, i8** %in.addr, align 8
  %incdec.ptr245 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %incdec.ptr245, i8** %in.addr, align 8
  %181 = load i8, i8* %180, align 1
  %conv246 = zext i8 %181 to i64
  %shl247 = shl i64 %conv246, 16
  %182 = load i64, i64* %tin1, align 8
  %or248 = or i64 %182, %shl247
  store i64 %or248, i64* %tin1, align 8
  %183 = load i8*, i8** %in.addr, align 8
  %incdec.ptr249 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr249, i8** %in.addr, align 8
  %184 = load i8, i8* %183, align 1
  %conv250 = zext i8 %184 to i64
  %shl251 = shl i64 %conv250, 8
  %185 = load i64, i64* %tin1, align 8
  %or252 = or i64 %185, %shl251
  store i64 %or252, i64* %tin1, align 8
  %186 = load i8*, i8** %in.addr, align 8
  %incdec.ptr253 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %incdec.ptr253, i8** %in.addr, align 8
  %187 = load i8, i8* %186, align 1
  %conv254 = zext i8 %187 to i64
  %188 = load i64, i64* %tin1, align 8
  %or255 = or i64 %188, %conv254
  store i64 %or255, i64* %tin1, align 8
  %189 = load i64, i64* %tin0, align 8
  %arrayidx256 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 0
  store i64 %189, i64* %arrayidx256, align 8
  %190 = load i64, i64* %tin1, align 8
  %arrayidx257 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 1
  store i64 %190, i64* %arrayidx257, align 8
  %arraydecay258 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i32 0
  %191 = load %struct.bf_key_st*, %struct.bf_key_st** %ks.addr, align 8
  call void @BF_encrypt(i64* %arraydecay258, %struct.bf_key_st* %191, i32 0)
  %arrayidx259 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 0
  %192 = load i64, i64* %arrayidx259, align 8
  %193 = load i64, i64* %xor0, align 8
  %xor260 = xor i64 %192, %193
  store i64 %xor260, i64* %tout0, align 8
  %arrayidx261 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 1
  %194 = load i64, i64* %arrayidx261, align 8
  %195 = load i64, i64* %xor1, align 8
  %xor262 = xor i64 %194, %195
  store i64 %xor262, i64* %tout1, align 8
  %196 = load i64, i64* %tout0, align 8
  %shr263 = lshr i64 %196, 24
  %and264 = and i64 %shr263, 255
  %conv265 = trunc i64 %and264 to i8
  %197 = load i8*, i8** %out.addr, align 8
  %incdec.ptr266 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr266, i8** %out.addr, align 8
  store i8 %conv265, i8* %197, align 1
  %198 = load i64, i64* %tout0, align 8
  %shr267 = lshr i64 %198, 16
  %and268 = and i64 %shr267, 255
  %conv269 = trunc i64 %and268 to i8
  %199 = load i8*, i8** %out.addr, align 8
  %incdec.ptr270 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr270, i8** %out.addr, align 8
  store i8 %conv269, i8* %199, align 1
  %200 = load i64, i64* %tout0, align 8
  %shr271 = lshr i64 %200, 8
  %and272 = and i64 %shr271, 255
  %conv273 = trunc i64 %and272 to i8
  %201 = load i8*, i8** %out.addr, align 8
  %incdec.ptr274 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr274, i8** %out.addr, align 8
  store i8 %conv273, i8* %201, align 1
  %202 = load i64, i64* %tout0, align 8
  %and275 = and i64 %202, 255
  %conv276 = trunc i64 %and275 to i8
  %203 = load i8*, i8** %out.addr, align 8
  %incdec.ptr277 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr277, i8** %out.addr, align 8
  store i8 %conv276, i8* %203, align 1
  %204 = load i64, i64* %tout1, align 8
  %shr278 = lshr i64 %204, 24
  %and279 = and i64 %shr278, 255
  %conv280 = trunc i64 %and279 to i8
  %205 = load i8*, i8** %out.addr, align 8
  %incdec.ptr281 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr281, i8** %out.addr, align 8
  store i8 %conv280, i8* %205, align 1
  %206 = load i64, i64* %tout1, align 8
  %shr282 = lshr i64 %206, 16
  %and283 = and i64 %shr282, 255
  %conv284 = trunc i64 %and283 to i8
  %207 = load i8*, i8** %out.addr, align 8
  %incdec.ptr285 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %incdec.ptr285, i8** %out.addr, align 8
  store i8 %conv284, i8* %207, align 1
  %208 = load i64, i64* %tout1, align 8
  %shr286 = lshr i64 %208, 8
  %and287 = and i64 %shr286, 255
  %conv288 = trunc i64 %and287 to i8
  %209 = load i8*, i8** %out.addr, align 8
  %incdec.ptr289 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %incdec.ptr289, i8** %out.addr, align 8
  store i8 %conv288, i8* %209, align 1
  %210 = load i64, i64* %tout1, align 8
  %and290 = and i64 %210, 255
  %conv291 = trunc i64 %and290 to i8
  %211 = load i8*, i8** %out.addr, align 8
  %incdec.ptr292 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr292, i8** %out.addr, align 8
  store i8 %conv291, i8* %211, align 1
  %212 = load i64, i64* %tin0, align 8
  store i64 %212, i64* %xor0, align 8
  %213 = load i64, i64* %tin1, align 8
  store i64 %213, i64* %xor1, align 8
  br label %for.inc.293

for.inc.293:                                      ; preds = %for.body.227
  %214 = load i64, i64* %l, align 8
  %sub294 = sub nsw i64 %214, 8
  store i64 %sub294, i64* %l, align 8
  br label %for.cond.224

for.end.295:                                      ; preds = %for.cond.224
  %215 = load i64, i64* %l, align 8
  %cmp296 = icmp ne i64 %215, -8
  br i1 %cmp296, label %if.then.298, label %if.end.376

if.then.298:                                      ; preds = %for.end.295
  %216 = load i8*, i8** %in.addr, align 8
  %incdec.ptr299 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr299, i8** %in.addr, align 8
  %217 = load i8, i8* %216, align 1
  %conv300 = zext i8 %217 to i64
  %shl301 = shl i64 %conv300, 24
  store i64 %shl301, i64* %tin0, align 8
  %218 = load i8*, i8** %in.addr, align 8
  %incdec.ptr302 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr302, i8** %in.addr, align 8
  %219 = load i8, i8* %218, align 1
  %conv303 = zext i8 %219 to i64
  %shl304 = shl i64 %conv303, 16
  %220 = load i64, i64* %tin0, align 8
  %or305 = or i64 %220, %shl304
  store i64 %or305, i64* %tin0, align 8
  %221 = load i8*, i8** %in.addr, align 8
  %incdec.ptr306 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr306, i8** %in.addr, align 8
  %222 = load i8, i8* %221, align 1
  %conv307 = zext i8 %222 to i64
  %shl308 = shl i64 %conv307, 8
  %223 = load i64, i64* %tin0, align 8
  %or309 = or i64 %223, %shl308
  store i64 %or309, i64* %tin0, align 8
  %224 = load i8*, i8** %in.addr, align 8
  %incdec.ptr310 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %incdec.ptr310, i8** %in.addr, align 8
  %225 = load i8, i8* %224, align 1
  %conv311 = zext i8 %225 to i64
  %226 = load i64, i64* %tin0, align 8
  %or312 = or i64 %226, %conv311
  store i64 %or312, i64* %tin0, align 8
  %227 = load i8*, i8** %in.addr, align 8
  %incdec.ptr313 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr313, i8** %in.addr, align 8
  %228 = load i8, i8* %227, align 1
  %conv314 = zext i8 %228 to i64
  %shl315 = shl i64 %conv314, 24
  store i64 %shl315, i64* %tin1, align 8
  %229 = load i8*, i8** %in.addr, align 8
  %incdec.ptr316 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %incdec.ptr316, i8** %in.addr, align 8
  %230 = load i8, i8* %229, align 1
  %conv317 = zext i8 %230 to i64
  %shl318 = shl i64 %conv317, 16
  %231 = load i64, i64* %tin1, align 8
  %or319 = or i64 %231, %shl318
  store i64 %or319, i64* %tin1, align 8
  %232 = load i8*, i8** %in.addr, align 8
  %incdec.ptr320 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %incdec.ptr320, i8** %in.addr, align 8
  %233 = load i8, i8* %232, align 1
  %conv321 = zext i8 %233 to i64
  %shl322 = shl i64 %conv321, 8
  %234 = load i64, i64* %tin1, align 8
  %or323 = or i64 %234, %shl322
  store i64 %or323, i64* %tin1, align 8
  %235 = load i8*, i8** %in.addr, align 8
  %incdec.ptr324 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr324, i8** %in.addr, align 8
  %236 = load i8, i8* %235, align 1
  %conv325 = zext i8 %236 to i64
  %237 = load i64, i64* %tin1, align 8
  %or326 = or i64 %237, %conv325
  store i64 %or326, i64* %tin1, align 8
  %238 = load i64, i64* %tin0, align 8
  %arrayidx327 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 0
  store i64 %238, i64* %arrayidx327, align 8
  %239 = load i64, i64* %tin1, align 8
  %arrayidx328 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 1
  store i64 %239, i64* %arrayidx328, align 8
  %arraydecay329 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i32 0
  %240 = load %struct.bf_key_st*, %struct.bf_key_st** %ks.addr, align 8
  call void @BF_encrypt(i64* %arraydecay329, %struct.bf_key_st* %240, i32 0)
  %arrayidx330 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 0
  %241 = load i64, i64* %arrayidx330, align 8
  %242 = load i64, i64* %xor0, align 8
  %xor331 = xor i64 %241, %242
  store i64 %xor331, i64* %tout0, align 8
  %arrayidx332 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 1
  %243 = load i64, i64* %arrayidx332, align 8
  %244 = load i64, i64* %xor1, align 8
  %xor333 = xor i64 %243, %244
  store i64 %xor333, i64* %tout1, align 8
  %245 = load i64, i64* %l, align 8
  %add334 = add nsw i64 %245, 8
  %246 = load i8*, i8** %out.addr, align 8
  %add.ptr335 = getelementptr inbounds i8, i8* %246, i64 %add334
  store i8* %add.ptr335, i8** %out.addr, align 8
  %247 = load i64, i64* %l, align 8
  %add336 = add nsw i64 %247, 8
  switch i64 %add336, label %sw.epilog.375 [
    i64 8, label %sw.bb.337
    i64 7, label %sw.bb.341
    i64 6, label %sw.bb.346
    i64 5, label %sw.bb.351
    i64 4, label %sw.bb.356
    i64 3, label %sw.bb.360
    i64 2, label %sw.bb.365
    i64 1, label %sw.bb.370
  ]

sw.bb.337:                                        ; preds = %if.then.298
  %248 = load i64, i64* %tout1, align 8
  %and338 = and i64 %248, 255
  %conv339 = trunc i64 %and338 to i8
  %249 = load i8*, i8** %out.addr, align 8
  %incdec.ptr340 = getelementptr inbounds i8, i8* %249, i32 -1
  store i8* %incdec.ptr340, i8** %out.addr, align 8
  store i8 %conv339, i8* %incdec.ptr340, align 1
  br label %sw.bb.341

sw.bb.341:                                        ; preds = %if.then.298, %sw.bb.337
  %250 = load i64, i64* %tout1, align 8
  %shr342 = lshr i64 %250, 8
  %and343 = and i64 %shr342, 255
  %conv344 = trunc i64 %and343 to i8
  %251 = load i8*, i8** %out.addr, align 8
  %incdec.ptr345 = getelementptr inbounds i8, i8* %251, i32 -1
  store i8* %incdec.ptr345, i8** %out.addr, align 8
  store i8 %conv344, i8* %incdec.ptr345, align 1
  br label %sw.bb.346

sw.bb.346:                                        ; preds = %if.then.298, %sw.bb.341
  %252 = load i64, i64* %tout1, align 8
  %shr347 = lshr i64 %252, 16
  %and348 = and i64 %shr347, 255
  %conv349 = trunc i64 %and348 to i8
  %253 = load i8*, i8** %out.addr, align 8
  %incdec.ptr350 = getelementptr inbounds i8, i8* %253, i32 -1
  store i8* %incdec.ptr350, i8** %out.addr, align 8
  store i8 %conv349, i8* %incdec.ptr350, align 1
  br label %sw.bb.351

sw.bb.351:                                        ; preds = %if.then.298, %sw.bb.346
  %254 = load i64, i64* %tout1, align 8
  %shr352 = lshr i64 %254, 24
  %and353 = and i64 %shr352, 255
  %conv354 = trunc i64 %and353 to i8
  %255 = load i8*, i8** %out.addr, align 8
  %incdec.ptr355 = getelementptr inbounds i8, i8* %255, i32 -1
  store i8* %incdec.ptr355, i8** %out.addr, align 8
  store i8 %conv354, i8* %incdec.ptr355, align 1
  br label %sw.bb.356

sw.bb.356:                                        ; preds = %if.then.298, %sw.bb.351
  %256 = load i64, i64* %tout0, align 8
  %and357 = and i64 %256, 255
  %conv358 = trunc i64 %and357 to i8
  %257 = load i8*, i8** %out.addr, align 8
  %incdec.ptr359 = getelementptr inbounds i8, i8* %257, i32 -1
  store i8* %incdec.ptr359, i8** %out.addr, align 8
  store i8 %conv358, i8* %incdec.ptr359, align 1
  br label %sw.bb.360

sw.bb.360:                                        ; preds = %if.then.298, %sw.bb.356
  %258 = load i64, i64* %tout0, align 8
  %shr361 = lshr i64 %258, 8
  %and362 = and i64 %shr361, 255
  %conv363 = trunc i64 %and362 to i8
  %259 = load i8*, i8** %out.addr, align 8
  %incdec.ptr364 = getelementptr inbounds i8, i8* %259, i32 -1
  store i8* %incdec.ptr364, i8** %out.addr, align 8
  store i8 %conv363, i8* %incdec.ptr364, align 1
  br label %sw.bb.365

sw.bb.365:                                        ; preds = %if.then.298, %sw.bb.360
  %260 = load i64, i64* %tout0, align 8
  %shr366 = lshr i64 %260, 16
  %and367 = and i64 %shr366, 255
  %conv368 = trunc i64 %and367 to i8
  %261 = load i8*, i8** %out.addr, align 8
  %incdec.ptr369 = getelementptr inbounds i8, i8* %261, i32 -1
  store i8* %incdec.ptr369, i8** %out.addr, align 8
  store i8 %conv368, i8* %incdec.ptr369, align 1
  br label %sw.bb.370

sw.bb.370:                                        ; preds = %if.then.298, %sw.bb.365
  %262 = load i64, i64* %tout0, align 8
  %shr371 = lshr i64 %262, 24
  %and372 = and i64 %shr371, 255
  %conv373 = trunc i64 %and372 to i8
  %263 = load i8*, i8** %out.addr, align 8
  %incdec.ptr374 = getelementptr inbounds i8, i8* %263, i32 -1
  store i8* %incdec.ptr374, i8** %out.addr, align 8
  store i8 %conv373, i8* %incdec.ptr374, align 1
  br label %sw.epilog.375

sw.epilog.375:                                    ; preds = %sw.bb.370, %if.then.298
  %264 = load i64, i64* %tin0, align 8
  store i64 %264, i64* %xor0, align 8
  %265 = load i64, i64* %tin1, align 8
  store i64 %265, i64* %xor1, align 8
  br label %if.end.376

if.end.376:                                       ; preds = %sw.epilog.375, %for.end.295
  %266 = load i64, i64* %xor0, align 8
  %shr377 = lshr i64 %266, 24
  %and378 = and i64 %shr377, 255
  %conv379 = trunc i64 %and378 to i8
  %267 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr380 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr380, i8** %iv.addr, align 8
  store i8 %conv379, i8* %267, align 1
  %268 = load i64, i64* %xor0, align 8
  %shr381 = lshr i64 %268, 16
  %and382 = and i64 %shr381, 255
  %conv383 = trunc i64 %and382 to i8
  %269 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr384 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %incdec.ptr384, i8** %iv.addr, align 8
  store i8 %conv383, i8* %269, align 1
  %270 = load i64, i64* %xor0, align 8
  %shr385 = lshr i64 %270, 8
  %and386 = and i64 %shr385, 255
  %conv387 = trunc i64 %and386 to i8
  %271 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr388 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %incdec.ptr388, i8** %iv.addr, align 8
  store i8 %conv387, i8* %271, align 1
  %272 = load i64, i64* %xor0, align 8
  %and389 = and i64 %272, 255
  %conv390 = trunc i64 %and389 to i8
  %273 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr391 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr391, i8** %iv.addr, align 8
  store i8 %conv390, i8* %273, align 1
  %274 = load i64, i64* %xor1, align 8
  %shr392 = lshr i64 %274, 24
  %and393 = and i64 %shr392, 255
  %conv394 = trunc i64 %and393 to i8
  %275 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr395 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %incdec.ptr395, i8** %iv.addr, align 8
  store i8 %conv394, i8* %275, align 1
  %276 = load i64, i64* %xor1, align 8
  %shr396 = lshr i64 %276, 16
  %and397 = and i64 %shr396, 255
  %conv398 = trunc i64 %and397 to i8
  %277 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr399 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %incdec.ptr399, i8** %iv.addr, align 8
  store i8 %conv398, i8* %277, align 1
  %278 = load i64, i64* %xor1, align 8
  %shr400 = lshr i64 %278, 8
  %and401 = and i64 %shr400, 255
  %conv402 = trunc i64 %and401 to i8
  %279 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr403 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %incdec.ptr403, i8** %iv.addr, align 8
  store i8 %conv402, i8* %279, align 1
  %280 = load i64, i64* %xor1, align 8
  %and404 = and i64 %280, 255
  %conv405 = trunc i64 %and404 to i8
  %281 = load i8*, i8** %iv.addr, align 8
  %incdec.ptr406 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %incdec.ptr406, i8** %iv.addr, align 8
  store i8 %conv405, i8* %281, align 1
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.376, %if.end
  store i64 0, i64* %xor1, align 8
  store i64 0, i64* %xor0, align 8
  store i64 0, i64* %tout1, align 8
  store i64 0, i64* %tout0, align 8
  store i64 0, i64* %tin1, align 8
  store i64 0, i64* %tin0, align 8
  %arrayidx408 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 1
  store i64 0, i64* %arrayidx408, align 8
  %arrayidx409 = getelementptr inbounds [2 x i64], [2 x i64]* %tin, i32 0, i64 0
  store i64 0, i64* %arrayidx409, align 8
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
