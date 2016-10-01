; ModuleID = './MultiSource.Benchmarks.MiBench/154.security-blowfish.bf_cfb64.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: nounwind uwtable
define void @BF_cfb64_encrypt(i8* %in, i8* %out, i64 %length, %struct.bf_key_st* %schedule, i8* %ivec, i32* %num, i32 %encrypt) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %schedule.addr = alloca %struct.bf_key_st*, align 8
  %ivec.addr = alloca i8*, align 8
  %num.addr = alloca i32*, align 8
  %encrypt.addr = alloca i32, align 4
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %t = alloca i64, align 8
  %n = alloca i32, align 4
  %l = alloca i64, align 8
  %ti = alloca [2 x i64], align 16
  %iv = alloca i8*, align 8
  %c = alloca i8, align 1
  %cc = alloca i8, align 1
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** %schedule.addr, align 8
  store i8* %ivec, i8** %ivec.addr, align 8
  store i32* %num, i32** %num.addr, align 8
  store i32 %encrypt, i32* %encrypt.addr, align 4
  %0 = load i32*, i32** %num.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %n, align 4
  %2 = load i64, i64* %length.addr, align 8
  store i64 %2, i64* %l, align 8
  %3 = load i8*, i8** %ivec.addr, align 8
  store i8* %3, i8** %iv, align 8
  %4 = load i32, i32* %encrypt.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load i64, i64* %l, align 8
  %dec = add nsw i64 %5, -1
  store i64 %dec, i64* %l, align 8
  %tobool1 = icmp ne i64 %5, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %while.body
  %7 = load i8*, i8** %iv, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %iv, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, i64* %v0, align 8
  %9 = load i8*, i8** %iv, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr3, i8** %iv, align 8
  %10 = load i8, i8* %9, align 1
  %conv4 = zext i8 %10 to i64
  %shl5 = shl i64 %conv4, 16
  %11 = load i64, i64* %v0, align 8
  %or = or i64 %11, %shl5
  store i64 %or, i64* %v0, align 8
  %12 = load i8*, i8** %iv, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr6, i8** %iv, align 8
  %13 = load i8, i8* %12, align 1
  %conv7 = zext i8 %13 to i64
  %shl8 = shl i64 %conv7, 8
  %14 = load i64, i64* %v0, align 8
  %or9 = or i64 %14, %shl8
  store i64 %or9, i64* %v0, align 8
  %15 = load i8*, i8** %iv, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr10, i8** %iv, align 8
  %16 = load i8, i8* %15, align 1
  %conv11 = zext i8 %16 to i64
  %17 = load i64, i64* %v0, align 8
  %or12 = or i64 %17, %conv11
  store i64 %or12, i64* %v0, align 8
  %18 = load i64, i64* %v0, align 8
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 0
  store i64 %18, i64* %arrayidx, align 8
  %19 = load i8*, i8** %iv, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr13, i8** %iv, align 8
  %20 = load i8, i8* %19, align 1
  %conv14 = zext i8 %20 to i64
  %shl15 = shl i64 %conv14, 24
  store i64 %shl15, i64* %v1, align 8
  %21 = load i8*, i8** %iv, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr16, i8** %iv, align 8
  %22 = load i8, i8* %21, align 1
  %conv17 = zext i8 %22 to i64
  %shl18 = shl i64 %conv17, 16
  %23 = load i64, i64* %v1, align 8
  %or19 = or i64 %23, %shl18
  store i64 %or19, i64* %v1, align 8
  %24 = load i8*, i8** %iv, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr20, i8** %iv, align 8
  %25 = load i8, i8* %24, align 1
  %conv21 = zext i8 %25 to i64
  %shl22 = shl i64 %conv21, 8
  %26 = load i64, i64* %v1, align 8
  %or23 = or i64 %26, %shl22
  store i64 %or23, i64* %v1, align 8
  %27 = load i8*, i8** %iv, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr24, i8** %iv, align 8
  %28 = load i8, i8* %27, align 1
  %conv25 = zext i8 %28 to i64
  %29 = load i64, i64* %v1, align 8
  %or26 = or i64 %29, %conv25
  store i64 %or26, i64* %v1, align 8
  %30 = load i64, i64* %v1, align 8
  %arrayidx27 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 1
  store i64 %30, i64* %arrayidx27, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i32 0
  %31 = load %struct.bf_key_st*, %struct.bf_key_st** %schedule.addr, align 8
  call void @BF_encrypt(i64* %arraydecay, %struct.bf_key_st* %31, i32 1)
  %32 = load i8*, i8** %ivec.addr, align 8
  store i8* %32, i8** %iv, align 8
  %arrayidx28 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 0
  %33 = load i64, i64* %arrayidx28, align 8
  store i64 %33, i64* %t, align 8
  %34 = load i64, i64* %t, align 8
  %shr = lshr i64 %34, 24
  %and = and i64 %shr, 255
  %conv29 = trunc i64 %and to i8
  %35 = load i8*, i8** %iv, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr30, i8** %iv, align 8
  store i8 %conv29, i8* %35, align 1
  %36 = load i64, i64* %t, align 8
  %shr31 = lshr i64 %36, 16
  %and32 = and i64 %shr31, 255
  %conv33 = trunc i64 %and32 to i8
  %37 = load i8*, i8** %iv, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr34, i8** %iv, align 8
  store i8 %conv33, i8* %37, align 1
  %38 = load i64, i64* %t, align 8
  %shr35 = lshr i64 %38, 8
  %and36 = and i64 %shr35, 255
  %conv37 = trunc i64 %and36 to i8
  %39 = load i8*, i8** %iv, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr38, i8** %iv, align 8
  store i8 %conv37, i8* %39, align 1
  %40 = load i64, i64* %t, align 8
  %and39 = and i64 %40, 255
  %conv40 = trunc i64 %and39 to i8
  %41 = load i8*, i8** %iv, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr41, i8** %iv, align 8
  store i8 %conv40, i8* %41, align 1
  %arrayidx42 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 1
  %42 = load i64, i64* %arrayidx42, align 8
  store i64 %42, i64* %t, align 8
  %43 = load i64, i64* %t, align 8
  %shr43 = lshr i64 %43, 24
  %and44 = and i64 %shr43, 255
  %conv45 = trunc i64 %and44 to i8
  %44 = load i8*, i8** %iv, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr46, i8** %iv, align 8
  store i8 %conv45, i8* %44, align 1
  %45 = load i64, i64* %t, align 8
  %shr47 = lshr i64 %45, 16
  %and48 = and i64 %shr47, 255
  %conv49 = trunc i64 %and48 to i8
  %46 = load i8*, i8** %iv, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr50, i8** %iv, align 8
  store i8 %conv49, i8* %46, align 1
  %47 = load i64, i64* %t, align 8
  %shr51 = lshr i64 %47, 8
  %and52 = and i64 %shr51, 255
  %conv53 = trunc i64 %and52 to i8
  %48 = load i8*, i8** %iv, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr54, i8** %iv, align 8
  store i8 %conv53, i8* %48, align 1
  %49 = load i64, i64* %t, align 8
  %and55 = and i64 %49, 255
  %conv56 = trunc i64 %and55 to i8
  %50 = load i8*, i8** %iv, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr57, i8** %iv, align 8
  store i8 %conv56, i8* %50, align 1
  %51 = load i8*, i8** %ivec.addr, align 8
  store i8* %51, i8** %iv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %while.body
  %52 = load i8*, i8** %in.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr58, i8** %in.addr, align 8
  %53 = load i8, i8* %52, align 1
  %conv59 = zext i8 %53 to i32
  %54 = load i32, i32* %n, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load i8*, i8** %iv, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %55, i64 %idxprom
  %56 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %56 to i32
  %xor = xor i32 %conv59, %conv61
  %conv62 = trunc i32 %xor to i8
  store i8 %conv62, i8* %c, align 1
  %57 = load i8, i8* %c, align 1
  %58 = load i8*, i8** %out.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr63, i8** %out.addr, align 8
  store i8 %57, i8* %58, align 1
  %59 = load i8, i8* %c, align 1
  %60 = load i32, i32* %n, align 4
  %idxprom64 = sext i32 %60 to i64
  %61 = load i8*, i8** %iv, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %61, i64 %idxprom64
  store i8 %59, i8* %arrayidx65, align 1
  %62 = load i32, i32* %n, align 4
  %add = add nsw i32 %62, 1
  %and66 = and i32 %add, 7
  store i32 %and66, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.151

if.else:                                          ; preds = %entry
  br label %while.cond.67

while.cond.67:                                    ; preds = %if.end.137, %if.else
  %63 = load i64, i64* %l, align 8
  %dec68 = add nsw i64 %63, -1
  store i64 %dec68, i64* %l, align 8
  %tobool69 = icmp ne i64 %63, 0
  br i1 %tobool69, label %while.body.70, label %while.end.150

while.body.70:                                    ; preds = %while.cond.67
  %64 = load i32, i32* %n, align 4
  %cmp71 = icmp eq i32 %64, 0
  br i1 %cmp71, label %if.then.73, label %if.end.137

if.then.73:                                       ; preds = %while.body.70
  %65 = load i8*, i8** %iv, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr74, i8** %iv, align 8
  %66 = load i8, i8* %65, align 1
  %conv75 = zext i8 %66 to i64
  %shl76 = shl i64 %conv75, 24
  store i64 %shl76, i64* %v0, align 8
  %67 = load i8*, i8** %iv, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr77, i8** %iv, align 8
  %68 = load i8, i8* %67, align 1
  %conv78 = zext i8 %68 to i64
  %shl79 = shl i64 %conv78, 16
  %69 = load i64, i64* %v0, align 8
  %or80 = or i64 %69, %shl79
  store i64 %or80, i64* %v0, align 8
  %70 = load i8*, i8** %iv, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr81, i8** %iv, align 8
  %71 = load i8, i8* %70, align 1
  %conv82 = zext i8 %71 to i64
  %shl83 = shl i64 %conv82, 8
  %72 = load i64, i64* %v0, align 8
  %or84 = or i64 %72, %shl83
  store i64 %or84, i64* %v0, align 8
  %73 = load i8*, i8** %iv, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr85, i8** %iv, align 8
  %74 = load i8, i8* %73, align 1
  %conv86 = zext i8 %74 to i64
  %75 = load i64, i64* %v0, align 8
  %or87 = or i64 %75, %conv86
  store i64 %or87, i64* %v0, align 8
  %76 = load i64, i64* %v0, align 8
  %arrayidx88 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 0
  store i64 %76, i64* %arrayidx88, align 8
  %77 = load i8*, i8** %iv, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr89, i8** %iv, align 8
  %78 = load i8, i8* %77, align 1
  %conv90 = zext i8 %78 to i64
  %shl91 = shl i64 %conv90, 24
  store i64 %shl91, i64* %v1, align 8
  %79 = load i8*, i8** %iv, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr92, i8** %iv, align 8
  %80 = load i8, i8* %79, align 1
  %conv93 = zext i8 %80 to i64
  %shl94 = shl i64 %conv93, 16
  %81 = load i64, i64* %v1, align 8
  %or95 = or i64 %81, %shl94
  store i64 %or95, i64* %v1, align 8
  %82 = load i8*, i8** %iv, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr96, i8** %iv, align 8
  %83 = load i8, i8* %82, align 1
  %conv97 = zext i8 %83 to i64
  %shl98 = shl i64 %conv97, 8
  %84 = load i64, i64* %v1, align 8
  %or99 = or i64 %84, %shl98
  store i64 %or99, i64* %v1, align 8
  %85 = load i8*, i8** %iv, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr100, i8** %iv, align 8
  %86 = load i8, i8* %85, align 1
  %conv101 = zext i8 %86 to i64
  %87 = load i64, i64* %v1, align 8
  %or102 = or i64 %87, %conv101
  store i64 %or102, i64* %v1, align 8
  %88 = load i64, i64* %v1, align 8
  %arrayidx103 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 1
  store i64 %88, i64* %arrayidx103, align 8
  %arraydecay104 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i32 0
  %89 = load %struct.bf_key_st*, %struct.bf_key_st** %schedule.addr, align 8
  call void @BF_encrypt(i64* %arraydecay104, %struct.bf_key_st* %89, i32 1)
  %90 = load i8*, i8** %ivec.addr, align 8
  store i8* %90, i8** %iv, align 8
  %arrayidx105 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 0
  %91 = load i64, i64* %arrayidx105, align 8
  store i64 %91, i64* %t, align 8
  %92 = load i64, i64* %t, align 8
  %shr106 = lshr i64 %92, 24
  %and107 = and i64 %shr106, 255
  %conv108 = trunc i64 %and107 to i8
  %93 = load i8*, i8** %iv, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr109, i8** %iv, align 8
  store i8 %conv108, i8* %93, align 1
  %94 = load i64, i64* %t, align 8
  %shr110 = lshr i64 %94, 16
  %and111 = and i64 %shr110, 255
  %conv112 = trunc i64 %and111 to i8
  %95 = load i8*, i8** %iv, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr113, i8** %iv, align 8
  store i8 %conv112, i8* %95, align 1
  %96 = load i64, i64* %t, align 8
  %shr114 = lshr i64 %96, 8
  %and115 = and i64 %shr114, 255
  %conv116 = trunc i64 %and115 to i8
  %97 = load i8*, i8** %iv, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr117, i8** %iv, align 8
  store i8 %conv116, i8* %97, align 1
  %98 = load i64, i64* %t, align 8
  %and118 = and i64 %98, 255
  %conv119 = trunc i64 %and118 to i8
  %99 = load i8*, i8** %iv, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr120, i8** %iv, align 8
  store i8 %conv119, i8* %99, align 1
  %arrayidx121 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 1
  %100 = load i64, i64* %arrayidx121, align 8
  store i64 %100, i64* %t, align 8
  %101 = load i64, i64* %t, align 8
  %shr122 = lshr i64 %101, 24
  %and123 = and i64 %shr122, 255
  %conv124 = trunc i64 %and123 to i8
  %102 = load i8*, i8** %iv, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr125, i8** %iv, align 8
  store i8 %conv124, i8* %102, align 1
  %103 = load i64, i64* %t, align 8
  %shr126 = lshr i64 %103, 16
  %and127 = and i64 %shr126, 255
  %conv128 = trunc i64 %and127 to i8
  %104 = load i8*, i8** %iv, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr129, i8** %iv, align 8
  store i8 %conv128, i8* %104, align 1
  %105 = load i64, i64* %t, align 8
  %shr130 = lshr i64 %105, 8
  %and131 = and i64 %shr130, 255
  %conv132 = trunc i64 %and131 to i8
  %106 = load i8*, i8** %iv, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr133, i8** %iv, align 8
  store i8 %conv132, i8* %106, align 1
  %107 = load i64, i64* %t, align 8
  %and134 = and i64 %107, 255
  %conv135 = trunc i64 %and134 to i8
  %108 = load i8*, i8** %iv, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr136, i8** %iv, align 8
  store i8 %conv135, i8* %108, align 1
  %109 = load i8*, i8** %ivec.addr, align 8
  store i8* %109, i8** %iv, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.73, %while.body.70
  %110 = load i8*, i8** %in.addr, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr138, i8** %in.addr, align 8
  %111 = load i8, i8* %110, align 1
  store i8 %111, i8* %cc, align 1
  %112 = load i32, i32* %n, align 4
  %idxprom139 = sext i32 %112 to i64
  %113 = load i8*, i8** %iv, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %113, i64 %idxprom139
  %114 = load i8, i8* %arrayidx140, align 1
  store i8 %114, i8* %c, align 1
  %115 = load i8, i8* %cc, align 1
  %116 = load i32, i32* %n, align 4
  %idxprom141 = sext i32 %116 to i64
  %117 = load i8*, i8** %iv, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %117, i64 %idxprom141
  store i8 %115, i8* %arrayidx142, align 1
  %118 = load i8, i8* %c, align 1
  %conv143 = zext i8 %118 to i32
  %119 = load i8, i8* %cc, align 1
  %conv144 = zext i8 %119 to i32
  %xor145 = xor i32 %conv143, %conv144
  %conv146 = trunc i32 %xor145 to i8
  %120 = load i8*, i8** %out.addr, align 8
  %incdec.ptr147 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr147, i8** %out.addr, align 8
  store i8 %conv146, i8* %120, align 1
  %121 = load i32, i32* %n, align 4
  %add148 = add nsw i32 %121, 1
  %and149 = and i32 %add148, 7
  store i32 %and149, i32* %n, align 4
  br label %while.cond.67

while.end.150:                                    ; preds = %while.cond.67
  br label %if.end.151

if.end.151:                                       ; preds = %while.end.150, %while.end
  store i8 0, i8* %cc, align 1
  store i8 0, i8* %c, align 1
  store i64 0, i64* %t, align 8
  %arrayidx152 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 1
  store i64 0, i64* %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 0
  store i64 0, i64* %arrayidx153, align 8
  store i64 0, i64* %v1, align 8
  store i64 0, i64* %v0, align 8
  %122 = load i32, i32* %n, align 4
  %123 = load i32*, i32** %num.addr, align 8
  store i32 %122, i32* %123, align 4
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
