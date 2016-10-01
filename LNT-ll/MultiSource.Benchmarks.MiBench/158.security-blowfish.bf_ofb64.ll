; ModuleID = './MultiSource.Benchmarks.MiBench/158.security-blowfish.bf_ofb64.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: nounwind uwtable
define void @BF_ofb64_encrypt(i8* %in, i8* %out, i64 %length, %struct.bf_key_st* %schedule, i8* %ivec, i32* %num) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %schedule.addr = alloca %struct.bf_key_st*, align 8
  %ivec.addr = alloca i8*, align 8
  %num.addr = alloca i32*, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %t = alloca i64, align 8
  %n = alloca i32, align 4
  %l = alloca i64, align 8
  %d = alloca [8 x i8], align 1
  %dp = alloca i8*, align 8
  %ti = alloca [2 x i64], align 16
  %iv = alloca i8*, align 8
  %save = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** %schedule.addr, align 8
  store i8* %ivec, i8** %ivec.addr, align 8
  store i32* %num, i32** %num.addr, align 8
  %0 = load i32*, i32** %num.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %n, align 4
  %2 = load i64, i64* %length.addr, align 8
  store i64 %2, i64* %l, align 8
  store i32 0, i32* %save, align 4
  %3 = load i8*, i8** %ivec.addr, align 8
  store i8* %3, i8** %iv, align 8
  %4 = load i8*, i8** %iv, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %iv, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, i64* %v0, align 8
  %6 = load i8*, i8** %iv, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr1, i8** %iv, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = zext i8 %7 to i64
  %shl3 = shl i64 %conv2, 16
  %8 = load i64, i64* %v0, align 8
  %or = or i64 %8, %shl3
  store i64 %or, i64* %v0, align 8
  %9 = load i8*, i8** %iv, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr4, i8** %iv, align 8
  %10 = load i8, i8* %9, align 1
  %conv5 = zext i8 %10 to i64
  %shl6 = shl i64 %conv5, 8
  %11 = load i64, i64* %v0, align 8
  %or7 = or i64 %11, %shl6
  store i64 %or7, i64* %v0, align 8
  %12 = load i8*, i8** %iv, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %iv, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = zext i8 %13 to i64
  %14 = load i64, i64* %v0, align 8
  %or10 = or i64 %14, %conv9
  store i64 %or10, i64* %v0, align 8
  %15 = load i8*, i8** %iv, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr11, i8** %iv, align 8
  %16 = load i8, i8* %15, align 1
  %conv12 = zext i8 %16 to i64
  %shl13 = shl i64 %conv12, 24
  store i64 %shl13, i64* %v1, align 8
  %17 = load i8*, i8** %iv, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr14, i8** %iv, align 8
  %18 = load i8, i8* %17, align 1
  %conv15 = zext i8 %18 to i64
  %shl16 = shl i64 %conv15, 16
  %19 = load i64, i64* %v1, align 8
  %or17 = or i64 %19, %shl16
  store i64 %or17, i64* %v1, align 8
  %20 = load i8*, i8** %iv, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr18, i8** %iv, align 8
  %21 = load i8, i8* %20, align 1
  %conv19 = zext i8 %21 to i64
  %shl20 = shl i64 %conv19, 8
  %22 = load i64, i64* %v1, align 8
  %or21 = or i64 %22, %shl20
  store i64 %or21, i64* %v1, align 8
  %23 = load i8*, i8** %iv, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr22, i8** %iv, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = zext i8 %24 to i64
  %25 = load i64, i64* %v1, align 8
  %or24 = or i64 %25, %conv23
  store i64 %or24, i64* %v1, align 8
  %26 = load i64, i64* %v0, align 8
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 0
  store i64 %26, i64* %arrayidx, align 8
  %27 = load i64, i64* %v1, align 8
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 1
  store i64 %27, i64* %arrayidx25, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %d, i32 0, i32 0
  store i8* %arraydecay, i8** %dp, align 8
  %28 = load i64, i64* %v0, align 8
  %shr = lshr i64 %28, 24
  %and = and i64 %shr, 255
  %conv26 = trunc i64 %and to i8
  %29 = load i8*, i8** %dp, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr27, i8** %dp, align 8
  store i8 %conv26, i8* %29, align 1
  %30 = load i64, i64* %v0, align 8
  %shr28 = lshr i64 %30, 16
  %and29 = and i64 %shr28, 255
  %conv30 = trunc i64 %and29 to i8
  %31 = load i8*, i8** %dp, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr31, i8** %dp, align 8
  store i8 %conv30, i8* %31, align 1
  %32 = load i64, i64* %v0, align 8
  %shr32 = lshr i64 %32, 8
  %and33 = and i64 %shr32, 255
  %conv34 = trunc i64 %and33 to i8
  %33 = load i8*, i8** %dp, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr35, i8** %dp, align 8
  store i8 %conv34, i8* %33, align 1
  %34 = load i64, i64* %v0, align 8
  %and36 = and i64 %34, 255
  %conv37 = trunc i64 %and36 to i8
  %35 = load i8*, i8** %dp, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr38, i8** %dp, align 8
  store i8 %conv37, i8* %35, align 1
  %36 = load i64, i64* %v1, align 8
  %shr39 = lshr i64 %36, 24
  %and40 = and i64 %shr39, 255
  %conv41 = trunc i64 %and40 to i8
  %37 = load i8*, i8** %dp, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr42, i8** %dp, align 8
  store i8 %conv41, i8* %37, align 1
  %38 = load i64, i64* %v1, align 8
  %shr43 = lshr i64 %38, 16
  %and44 = and i64 %shr43, 255
  %conv45 = trunc i64 %and44 to i8
  %39 = load i8*, i8** %dp, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr46, i8** %dp, align 8
  store i8 %conv45, i8* %39, align 1
  %40 = load i64, i64* %v1, align 8
  %shr47 = lshr i64 %40, 8
  %and48 = and i64 %shr47, 255
  %conv49 = trunc i64 %and48 to i8
  %41 = load i8*, i8** %dp, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr50, i8** %dp, align 8
  store i8 %conv49, i8* %41, align 1
  %42 = load i64, i64* %v1, align 8
  %and51 = and i64 %42, 255
  %conv52 = trunc i64 %and51 to i8
  %43 = load i8*, i8** %dp, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr53, i8** %dp, align 8
  store i8 %conv52, i8* %43, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %44 = load i64, i64* %l, align 8
  %dec = add nsw i64 %44, -1
  store i64 %dec, i64* %l, align 8
  %tobool = icmp ne i64 %44, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %45, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %arraydecay55 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i32 0
  %46 = load %struct.bf_key_st*, %struct.bf_key_st** %schedule.addr, align 8
  call void @BF_encrypt(i64* %arraydecay55, %struct.bf_key_st* %46, i32 1)
  %arraydecay56 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i32 0, i32 0
  store i8* %arraydecay56, i8** %dp, align 8
  %arrayidx57 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 0
  %47 = load i64, i64* %arrayidx57, align 8
  store i64 %47, i64* %t, align 8
  %48 = load i64, i64* %t, align 8
  %shr58 = lshr i64 %48, 24
  %and59 = and i64 %shr58, 255
  %conv60 = trunc i64 %and59 to i8
  %49 = load i8*, i8** %dp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr61, i8** %dp, align 8
  store i8 %conv60, i8* %49, align 1
  %50 = load i64, i64* %t, align 8
  %shr62 = lshr i64 %50, 16
  %and63 = and i64 %shr62, 255
  %conv64 = trunc i64 %and63 to i8
  %51 = load i8*, i8** %dp, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr65, i8** %dp, align 8
  store i8 %conv64, i8* %51, align 1
  %52 = load i64, i64* %t, align 8
  %shr66 = lshr i64 %52, 8
  %and67 = and i64 %shr66, 255
  %conv68 = trunc i64 %and67 to i8
  %53 = load i8*, i8** %dp, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr69, i8** %dp, align 8
  store i8 %conv68, i8* %53, align 1
  %54 = load i64, i64* %t, align 8
  %and70 = and i64 %54, 255
  %conv71 = trunc i64 %and70 to i8
  %55 = load i8*, i8** %dp, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr72, i8** %dp, align 8
  store i8 %conv71, i8* %55, align 1
  %arrayidx73 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 1
  %56 = load i64, i64* %arrayidx73, align 8
  store i64 %56, i64* %t, align 8
  %57 = load i64, i64* %t, align 8
  %shr74 = lshr i64 %57, 24
  %and75 = and i64 %shr74, 255
  %conv76 = trunc i64 %and75 to i8
  %58 = load i8*, i8** %dp, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr77, i8** %dp, align 8
  store i8 %conv76, i8* %58, align 1
  %59 = load i64, i64* %t, align 8
  %shr78 = lshr i64 %59, 16
  %and79 = and i64 %shr78, 255
  %conv80 = trunc i64 %and79 to i8
  %60 = load i8*, i8** %dp, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr81, i8** %dp, align 8
  store i8 %conv80, i8* %60, align 1
  %61 = load i64, i64* %t, align 8
  %shr82 = lshr i64 %61, 8
  %and83 = and i64 %shr82, 255
  %conv84 = trunc i64 %and83 to i8
  %62 = load i8*, i8** %dp, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr85, i8** %dp, align 8
  store i8 %conv84, i8* %62, align 1
  %63 = load i64, i64* %t, align 8
  %and86 = and i64 %63, 255
  %conv87 = trunc i64 %and86 to i8
  %64 = load i8*, i8** %dp, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr88, i8** %dp, align 8
  store i8 %conv87, i8* %64, align 1
  %65 = load i32, i32* %save, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %save, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %66 = load i8*, i8** %in.addr, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr89, i8** %in.addr, align 8
  %67 = load i8, i8* %66, align 1
  %conv90 = zext i8 %67 to i32
  %68 = load i32, i32* %n, align 4
  %idxprom = sext i32 %68 to i64
  %arrayidx91 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i32 0, i64 %idxprom
  %69 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %69 to i32
  %xor = xor i32 %conv90, %conv92
  %conv93 = trunc i32 %xor to i8
  %70 = load i8*, i8** %out.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr94, i8** %out.addr, align 8
  store i8 %conv93, i8* %70, align 1
  %71 = load i32, i32* %n, align 4
  %add = add nsw i32 %71, 1
  %and95 = and i32 %add, 7
  store i32 %and95, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load i32, i32* %save, align 4
  %tobool96 = icmp ne i32 %72, 0
  br i1 %tobool96, label %if.then.97, label %if.end.130

if.then.97:                                       ; preds = %while.end
  %arrayidx98 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 0
  %73 = load i64, i64* %arrayidx98, align 8
  store i64 %73, i64* %v0, align 8
  %arrayidx99 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 1
  %74 = load i64, i64* %arrayidx99, align 8
  store i64 %74, i64* %v1, align 8
  %75 = load i8*, i8** %ivec.addr, align 8
  store i8* %75, i8** %iv, align 8
  %76 = load i64, i64* %v0, align 8
  %shr100 = lshr i64 %76, 24
  %and101 = and i64 %shr100, 255
  %conv102 = trunc i64 %and101 to i8
  %77 = load i8*, i8** %iv, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr103, i8** %iv, align 8
  store i8 %conv102, i8* %77, align 1
  %78 = load i64, i64* %v0, align 8
  %shr104 = lshr i64 %78, 16
  %and105 = and i64 %shr104, 255
  %conv106 = trunc i64 %and105 to i8
  %79 = load i8*, i8** %iv, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr107, i8** %iv, align 8
  store i8 %conv106, i8* %79, align 1
  %80 = load i64, i64* %v0, align 8
  %shr108 = lshr i64 %80, 8
  %and109 = and i64 %shr108, 255
  %conv110 = trunc i64 %and109 to i8
  %81 = load i8*, i8** %iv, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr111, i8** %iv, align 8
  store i8 %conv110, i8* %81, align 1
  %82 = load i64, i64* %v0, align 8
  %and112 = and i64 %82, 255
  %conv113 = trunc i64 %and112 to i8
  %83 = load i8*, i8** %iv, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr114, i8** %iv, align 8
  store i8 %conv113, i8* %83, align 1
  %84 = load i64, i64* %v1, align 8
  %shr115 = lshr i64 %84, 24
  %and116 = and i64 %shr115, 255
  %conv117 = trunc i64 %and116 to i8
  %85 = load i8*, i8** %iv, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr118, i8** %iv, align 8
  store i8 %conv117, i8* %85, align 1
  %86 = load i64, i64* %v1, align 8
  %shr119 = lshr i64 %86, 16
  %and120 = and i64 %shr119, 255
  %conv121 = trunc i64 %and120 to i8
  %87 = load i8*, i8** %iv, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr122, i8** %iv, align 8
  store i8 %conv121, i8* %87, align 1
  %88 = load i64, i64* %v1, align 8
  %shr123 = lshr i64 %88, 8
  %and124 = and i64 %shr123, 255
  %conv125 = trunc i64 %and124 to i8
  %89 = load i8*, i8** %iv, align 8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr126, i8** %iv, align 8
  store i8 %conv125, i8* %89, align 1
  %90 = load i64, i64* %v1, align 8
  %and127 = and i64 %90, 255
  %conv128 = trunc i64 %and127 to i8
  %91 = load i8*, i8** %iv, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr129, i8** %iv, align 8
  store i8 %conv128, i8* %91, align 1
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.97, %while.end
  %arrayidx131 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 1
  store i64 0, i64* %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i32 0, i64 0
  store i64 0, i64* %arrayidx132, align 8
  store i64 0, i64* %v1, align 8
  store i64 0, i64* %v0, align 8
  store i64 0, i64* %t, align 8
  %92 = load i32, i32* %n, align 4
  %93 = load i32*, i32** %num.addr, align 8
  store i32 %92, i32* %93, align 4
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
