; ModuleID = './MultiSource.Benchmarks.7zip/11.Aes.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Sbox = internal global [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16
@InvS = internal global [256 x i8] zeroinitializer, align 16
@T = internal global [1024 x i32] zeroinitializer, align 16
@D = internal global [1024 x i32] zeroinitializer, align 16
@g_AesCbc_Encode = common global void (i32*, i8*, i64)* null, align 8
@g_AesCbc_Decode = common global void (i32*, i8*, i64)* null, align 8
@g_AesCtr_Code = common global void (i32*, i8*, i64)* null, align 8
@Rcon = internal global [11 x i8] c"\00\01\02\04\08\10 @\80\1B6", align 1

; Function Attrs: nounwind uwtable
define void @AesGenTables() #0 {
entry:
  %i = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %a3 = alloca i32, align 4
  %a147 = alloca i32, align 4
  %a251 = alloca i32, align 4
  %a4 = alloca i32, align 4
  %a8 = alloca i32, align 4
  %a9 = alloca i32, align 4
  %aB = alloca i32, align 4
  %aD = alloca i32, align 4
  %aE = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %idxprom1 = zext i8 %3 to i64
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom1
  store i8 %conv, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.115, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp ult i32 %5, 256
  br i1 %cmp4, label %for.body.6, label %for.end.117

for.body.6:                                       ; preds = %for.cond.3
  %6 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  store i32 %conv9, i32* %a1, align 4
  %8 = load i32, i32* %a1, align 4
  %shl = shl i32 %8, 1
  %9 = load i32, i32* %a1, align 4
  %and = and i32 %9, 128
  %cmp10 = icmp ne i32 %and, 0
  %cond = select i1 %cmp10, i32 27, i32 0
  %xor = xor i32 %shl, %cond
  %and12 = and i32 %xor, 255
  store i32 %and12, i32* %a2, align 4
  %10 = load i32, i32* %a2, align 4
  %11 = load i32, i32* %a1, align 4
  %xor13 = xor i32 %10, %11
  store i32 %xor13, i32* %a3, align 4
  %12 = load i32, i32* %a2, align 4
  %13 = load i32, i32* %a1, align 4
  %shl14 = shl i32 %13, 8
  %or = or i32 %12, %shl14
  %14 = load i32, i32* %a1, align 4
  %shl15 = shl i32 %14, 16
  %or16 = or i32 %or, %shl15
  %15 = load i32, i32* %a3, align 4
  %shl17 = shl i32 %15, 24
  %or18 = or i32 %or16, %shl17
  %16 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [1024 x i32], [1024 x i32]* @T, i32 0, i64 %idxprom19
  store i32 %or18, i32* %arrayidx20, align 4
  %17 = load i32, i32* %a3, align 4
  %18 = load i32, i32* %a2, align 4
  %shl21 = shl i32 %18, 8
  %or22 = or i32 %17, %shl21
  %19 = load i32, i32* %a1, align 4
  %shl23 = shl i32 %19, 16
  %or24 = or i32 %or22, %shl23
  %20 = load i32, i32* %a1, align 4
  %shl25 = shl i32 %20, 24
  %or26 = or i32 %or24, %shl25
  %21 = load i32, i32* %i, align 4
  %add = add i32 256, %21
  %idxprom27 = zext i32 %add to i64
  %arrayidx28 = getelementptr inbounds [1024 x i32], [1024 x i32]* @T, i32 0, i64 %idxprom27
  store i32 %or26, i32* %arrayidx28, align 4
  %22 = load i32, i32* %a1, align 4
  %23 = load i32, i32* %a3, align 4
  %shl29 = shl i32 %23, 8
  %or30 = or i32 %22, %shl29
  %24 = load i32, i32* %a2, align 4
  %shl31 = shl i32 %24, 16
  %or32 = or i32 %or30, %shl31
  %25 = load i32, i32* %a1, align 4
  %shl33 = shl i32 %25, 24
  %or34 = or i32 %or32, %shl33
  %26 = load i32, i32* %i, align 4
  %add35 = add i32 512, %26
  %idxprom36 = zext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds [1024 x i32], [1024 x i32]* @T, i32 0, i64 %idxprom36
  store i32 %or34, i32* %arrayidx37, align 4
  %27 = load i32, i32* %a1, align 4
  %28 = load i32, i32* %a1, align 4
  %shl38 = shl i32 %28, 8
  %or39 = or i32 %27, %shl38
  %29 = load i32, i32* %a3, align 4
  %shl40 = shl i32 %29, 16
  %or41 = or i32 %or39, %shl40
  %30 = load i32, i32* %a2, align 4
  %shl42 = shl i32 %30, 24
  %or43 = or i32 %or41, %shl42
  %31 = load i32, i32* %i, align 4
  %add44 = add i32 768, %31
  %idxprom45 = zext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [1024 x i32], [1024 x i32]* @T, i32 0, i64 %idxprom45
  store i32 %or43, i32* %arrayidx46, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom48 = zext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom48
  %33 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %33 to i32
  store i32 %conv50, i32* %a147, align 4
  %34 = load i32, i32* %a147, align 4
  %shl52 = shl i32 %34, 1
  %35 = load i32, i32* %a147, align 4
  %and53 = and i32 %35, 128
  %cmp54 = icmp ne i32 %and53, 0
  %cond56 = select i1 %cmp54, i32 27, i32 0
  %xor57 = xor i32 %shl52, %cond56
  %and58 = and i32 %xor57, 255
  store i32 %and58, i32* %a251, align 4
  %36 = load i32, i32* %a251, align 4
  %shl59 = shl i32 %36, 1
  %37 = load i32, i32* %a251, align 4
  %and60 = and i32 %37, 128
  %cmp61 = icmp ne i32 %and60, 0
  %cond63 = select i1 %cmp61, i32 27, i32 0
  %xor64 = xor i32 %shl59, %cond63
  %and65 = and i32 %xor64, 255
  store i32 %and65, i32* %a4, align 4
  %38 = load i32, i32* %a4, align 4
  %shl66 = shl i32 %38, 1
  %39 = load i32, i32* %a4, align 4
  %and67 = and i32 %39, 128
  %cmp68 = icmp ne i32 %and67, 0
  %cond70 = select i1 %cmp68, i32 27, i32 0
  %xor71 = xor i32 %shl66, %cond70
  %and72 = and i32 %xor71, 255
  store i32 %and72, i32* %a8, align 4
  %40 = load i32, i32* %a8, align 4
  %41 = load i32, i32* %a147, align 4
  %xor73 = xor i32 %40, %41
  store i32 %xor73, i32* %a9, align 4
  %42 = load i32, i32* %a8, align 4
  %43 = load i32, i32* %a251, align 4
  %xor74 = xor i32 %42, %43
  %44 = load i32, i32* %a147, align 4
  %xor75 = xor i32 %xor74, %44
  store i32 %xor75, i32* %aB, align 4
  %45 = load i32, i32* %a8, align 4
  %46 = load i32, i32* %a4, align 4
  %xor76 = xor i32 %45, %46
  %47 = load i32, i32* %a147, align 4
  %xor77 = xor i32 %xor76, %47
  store i32 %xor77, i32* %aD, align 4
  %48 = load i32, i32* %a8, align 4
  %49 = load i32, i32* %a4, align 4
  %xor78 = xor i32 %48, %49
  %50 = load i32, i32* %a251, align 4
  %xor79 = xor i32 %xor78, %50
  store i32 %xor79, i32* %aE, align 4
  %51 = load i32, i32* %aE, align 4
  %52 = load i32, i32* %a9, align 4
  %shl80 = shl i32 %52, 8
  %or81 = or i32 %51, %shl80
  %53 = load i32, i32* %aD, align 4
  %shl82 = shl i32 %53, 16
  %or83 = or i32 %or81, %shl82
  %54 = load i32, i32* %aB, align 4
  %shl84 = shl i32 %54, 24
  %or85 = or i32 %or83, %shl84
  %55 = load i32, i32* %i, align 4
  %idxprom86 = zext i32 %55 to i64
  %arrayidx87 = getelementptr inbounds [1024 x i32], [1024 x i32]* @D, i32 0, i64 %idxprom86
  store i32 %or85, i32* %arrayidx87, align 4
  %56 = load i32, i32* %aB, align 4
  %57 = load i32, i32* %aE, align 4
  %shl88 = shl i32 %57, 8
  %or89 = or i32 %56, %shl88
  %58 = load i32, i32* %a9, align 4
  %shl90 = shl i32 %58, 16
  %or91 = or i32 %or89, %shl90
  %59 = load i32, i32* %aD, align 4
  %shl92 = shl i32 %59, 24
  %or93 = or i32 %or91, %shl92
  %60 = load i32, i32* %i, align 4
  %add94 = add i32 256, %60
  %idxprom95 = zext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds [1024 x i32], [1024 x i32]* @D, i32 0, i64 %idxprom95
  store i32 %or93, i32* %arrayidx96, align 4
  %61 = load i32, i32* %aD, align 4
  %62 = load i32, i32* %aB, align 4
  %shl97 = shl i32 %62, 8
  %or98 = or i32 %61, %shl97
  %63 = load i32, i32* %aE, align 4
  %shl99 = shl i32 %63, 16
  %or100 = or i32 %or98, %shl99
  %64 = load i32, i32* %a9, align 4
  %shl101 = shl i32 %64, 24
  %or102 = or i32 %or100, %shl101
  %65 = load i32, i32* %i, align 4
  %add103 = add i32 512, %65
  %idxprom104 = zext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds [1024 x i32], [1024 x i32]* @D, i32 0, i64 %idxprom104
  store i32 %or102, i32* %arrayidx105, align 4
  %66 = load i32, i32* %a9, align 4
  %67 = load i32, i32* %aD, align 4
  %shl106 = shl i32 %67, 8
  %or107 = or i32 %66, %shl106
  %68 = load i32, i32* %aB, align 4
  %shl108 = shl i32 %68, 16
  %or109 = or i32 %or107, %shl108
  %69 = load i32, i32* %aE, align 4
  %shl110 = shl i32 %69, 24
  %or111 = or i32 %or109, %shl110
  %70 = load i32, i32* %i, align 4
  %add112 = add i32 768, %70
  %idxprom113 = zext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds [1024 x i32], [1024 x i32]* @D, i32 0, i64 %idxprom113
  store i32 %or111, i32* %arrayidx114, align 4
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.6
  %71 = load i32, i32* %i, align 4
  %inc116 = add i32 %71, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.3

for.end.117:                                      ; preds = %for.cond.3
  store void (i32*, i8*, i64)* @AesCbc_Encode, void (i32*, i8*, i64)** @g_AesCbc_Encode, align 8
  store void (i32*, i8*, i64)* @AesCbc_Decode, void (i32*, i8*, i64)** @g_AesCbc_Decode, align 8
  store void (i32*, i8*, i64)* @AesCtr_Code, void (i32*, i8*, i64)** @g_AesCtr_Code, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @AesCbc_Encode(i32* %p, i8* %data, i64 %numBlocks) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %numBlocks.addr = alloca i64, align 8
  store i32* %p, i32** %p.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %numBlocks, i64* %numBlocks.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %numBlocks.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %xor = xor i32 %5, %3
  store i32 %xor, i32* %arrayidx, align 4
  %6 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 4
  %7 = bitcast i8* %add.ptr to i32*
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = load i32, i32* %arrayidx1, align 4
  %xor2 = xor i32 %10, %8
  store i32 %xor2, i32* %arrayidx1, align 4
  %11 = load i8*, i8** %data.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i64 8
  %12 = bitcast i8* %add.ptr3 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %p.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 2
  %15 = load i32, i32* %arrayidx4, align 4
  %xor5 = xor i32 %15, %13
  store i32 %xor5, i32* %arrayidx4, align 4
  %16 = load i8*, i8** %data.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %16, i64 12
  %17 = bitcast i8* %add.ptr6 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %p.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %19, i64 3
  %20 = load i32, i32* %arrayidx7, align 4
  %xor8 = xor i32 %20, %18
  store i32 %xor8, i32* %arrayidx7, align 4
  %21 = load i32*, i32** %p.addr, align 8
  %add.ptr9 = getelementptr inbounds i32, i32* %21, i64 4
  %22 = load i32*, i32** %p.addr, align 8
  %23 = load i32*, i32** %p.addr, align 8
  call void @Aes_Encode(i32* %add.ptr9, i32* %22, i32* %23)
  %24 = load i32*, i32** %p.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx10, align 4
  %26 = load i8*, i8** %data.addr, align 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %p.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %28, i64 1
  %29 = load i32, i32* %arrayidx11, align 4
  %30 = load i8*, i8** %data.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %30, i64 4
  %31 = bitcast i8* %add.ptr12 to i32*
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %p.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %32, i64 2
  %33 = load i32, i32* %arrayidx13, align 4
  %34 = load i8*, i8** %data.addr, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %34, i64 8
  %35 = bitcast i8* %add.ptr14 to i32*
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %p.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %36, i64 3
  %37 = load i32, i32* %arrayidx15, align 4
  %38 = load i8*, i8** %data.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %38, i64 12
  %39 = bitcast i8* %add.ptr16 to i32*
  store i32 %37, i32* %39, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i64, i64* %numBlocks.addr, align 8
  %dec = add i64 %40, -1
  store i64 %dec, i64* %numBlocks.addr, align 8
  %41 = load i8*, i8** %data.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %41, i64 16
  store i8* %add.ptr17, i8** %data.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @AesCbc_Decode(i32* %p, i8* %data, i64 %numBlocks) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %numBlocks.addr = alloca i64, align 8
  %in = alloca [4 x i32], align 16
  %out = alloca [4 x i32], align 16
  store i32* %p, i32** %p.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %numBlocks, i64* %numBlocks.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %numBlocks.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %in, i32 0, i64 0
  store i32 %3, i32* %arrayidx, align 4
  %4 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 4
  %5 = bitcast i8* %add.ptr to i32*
  %6 = load i32, i32* %5, align 4
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %in, i32 0, i64 1
  store i32 %6, i32* %arrayidx1, align 4
  %7 = load i8*, i8** %data.addr, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 8
  %8 = bitcast i8* %add.ptr2 to i32*
  %9 = load i32, i32* %8, align 4
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %in, i32 0, i64 2
  store i32 %9, i32* %arrayidx3, align 4
  %10 = load i8*, i8** %data.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 12
  %11 = bitcast i8* %add.ptr4 to i32*
  %12 = load i32, i32* %11, align 4
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %in, i32 0, i64 3
  store i32 %12, i32* %arrayidx5, align 4
  %13 = load i32*, i32** %p.addr, align 8
  %add.ptr6 = getelementptr inbounds i32, i32* %13, i64 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %out, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [4 x i32], [4 x i32]* %in, i32 0, i32 0
  call void @Aes_Decode(i32* %add.ptr6, i32* %arraydecay, i32* %arraydecay7)
  %14 = load i32*, i32** %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %out, i32 0, i64 0
  %16 = load i32, i32* %arrayidx9, align 4
  %xor = xor i32 %15, %16
  %17 = load i8*, i8** %data.addr, align 8
  %18 = bitcast i8* %17 to i32*
  store i32 %xor, i32* %18, align 4
  %19 = load i32*, i32** %p.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 1
  %20 = load i32, i32* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %out, i32 0, i64 1
  %21 = load i32, i32* %arrayidx11, align 4
  %xor12 = xor i32 %20, %21
  %22 = load i8*, i8** %data.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %22, i64 4
  %23 = bitcast i8* %add.ptr13 to i32*
  store i32 %xor12, i32* %23, align 4
  %24 = load i32*, i32** %p.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %24, i64 2
  %25 = load i32, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %out, i32 0, i64 2
  %26 = load i32, i32* %arrayidx15, align 4
  %xor16 = xor i32 %25, %26
  %27 = load i8*, i8** %data.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %27, i64 8
  %28 = bitcast i8* %add.ptr17 to i32*
  store i32 %xor16, i32* %28, align 4
  %29 = load i32*, i32** %p.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %29, i64 3
  %30 = load i32, i32* %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %out, i32 0, i64 3
  %31 = load i32, i32* %arrayidx19, align 4
  %xor20 = xor i32 %30, %31
  %32 = load i8*, i8** %data.addr, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %32, i64 12
  %33 = bitcast i8* %add.ptr21 to i32*
  store i32 %xor20, i32* %33, align 4
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %in, i32 0, i64 0
  %34 = load i32, i32* %arrayidx22, align 4
  %35 = load i32*, i32** %p.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %34, i32* %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %in, i32 0, i64 1
  %36 = load i32, i32* %arrayidx24, align 4
  %37 = load i32*, i32** %p.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %arrayidx25, align 4
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %in, i32 0, i64 2
  %38 = load i32, i32* %arrayidx26, align 4
  %39 = load i32*, i32** %p.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %38, i32* %arrayidx27, align 4
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %in, i32 0, i64 3
  %40 = load i32, i32* %arrayidx28, align 4
  %41 = load i32*, i32** %p.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %40, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i64, i64* %numBlocks.addr, align 8
  %dec = add i64 %42, -1
  store i64 %dec, i64* %numBlocks.addr, align 8
  %43 = load i8*, i8** %data.addr, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %43, i64 16
  store i8* %add.ptr30, i8** %data.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @AesCtr_Code(i32* %p, i8* %data, i64 %numBlocks) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %numBlocks.addr = alloca i64, align 8
  %temp = alloca [4 x i32], align 16
  %buf = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %numBlocks, i64* %numBlocks.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load i64, i64* %numBlocks.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %inc, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 1
  %4 = load i32, i32* %arrayidx2, align 4
  %inc3 = add i32 %4, 1
  store i32 %inc3, i32* %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i32*, i32** %p.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i32 0
  %6 = load i32*, i32** %p.addr, align 8
  call void @Aes_Encode(i32* %add.ptr, i32* %arraydecay, i32* %6)
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i64 0
  %7 = load i32, i32* %arrayidx4, align 4
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %8 = bitcast i8* %arraydecay5 to i32*
  store i32 %7, i32* %8, align 4
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i64 1
  %9 = load i32, i32* %arrayidx6, align 4
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay7, i64 4
  %10 = bitcast i8* %add.ptr8 to i32*
  store i32 %9, i32* %10, align 4
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i64 2
  %11 = load i32, i32* %arrayidx9, align 4
  %arraydecay10 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %add.ptr11 = getelementptr inbounds i8, i8* %arraydecay10, i64 8
  %12 = bitcast i8* %add.ptr11 to i32*
  store i32 %11, i32* %12, align 4
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %temp, i32 0, i64 3
  %13 = load i32, i32* %arrayidx12, align 4
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %add.ptr14 = getelementptr inbounds i8, i8* %arraydecay13, i64 12
  %14 = bitcast i8* %add.ptr14 to i32*
  store i32 %13, i32* %14, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %15, 16
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %17 to i32
  %18 = load i8*, i8** %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %data.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv19 = zext i8 %19 to i32
  %xor = xor i32 %conv19, %conv
  %conv20 = trunc i32 %xor to i8
  store i8 %conv20, i8* %18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %20 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %20, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %21 = load i64, i64* %numBlocks.addr, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %numBlocks.addr, align 8
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Aes_SetKey_Enc(i32* %w, i8* %key, i32 %keySize) #0 {
entry:
  %w.addr = alloca i32*, align 8
  %key.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %wSize = alloca i32, align 4
  %t = alloca i32, align 4
  %rem = alloca i32, align 4
  store i32* %w, i32** %w.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %keySize, i32* %keySize.addr, align 4
  %0 = load i32, i32* %keySize.addr, align 4
  %add = add i32 %0, 28
  store i32 %add, i32* %wSize, align 4
  %1 = load i32, i32* %keySize.addr, align 4
  %div = udiv i32 %1, 4
  store i32 %div, i32* %keySize.addr, align 4
  %2 = load i32, i32* %keySize.addr, align 4
  %div1 = udiv i32 %2, 2
  %add2 = add i32 %div1, 3
  %3 = load i32*, i32** %w.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  store i32 %add2, i32* %arrayidx, align 4
  %4 = load i32*, i32** %w.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 4
  store i32* %add.ptr, i32** %w.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %keySize.addr, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %key.addr, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i32*, i32** %w.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 %9, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %13 = load i8*, i8** %key.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %add.ptr4, i8** %key.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.73, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %wSize, align 4
  %cmp6 = icmp ult i32 %14, %15
  br i1 %cmp6, label %for.body.7, label %for.end.75

for.body.7:                                       ; preds = %for.cond.5
  %16 = load i32, i32* %i, align 4
  %sub = sub i32 %16, 1
  %idxprom8 = zext i32 %sub to i64
  %17 = load i32*, i32** %w.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  store i32 %18, i32* %t, align 4
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %keySize.addr, align 4
  %rem10 = urem i32 %19, %20
  store i32 %rem10, i32* %rem, align 4
  %21 = load i32, i32* %rem, align 4
  %cmp11 = icmp eq i32 %21, 0
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.7
  %22 = load i32, i32* %t, align 4
  %shr = lshr i32 %22, 8
  %and = and i32 %shr, 255
  %idxprom12 = zext i32 %and to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom12
  %23 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %23 to i32
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %keySize.addr, align 4
  %div14 = udiv i32 %24, %25
  %idxprom15 = zext i32 %div14 to i64
  %arrayidx16 = getelementptr inbounds [11 x i8], [11 x i8]* @Rcon, i32 0, i64 %idxprom15
  %26 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %26 to i32
  %xor = xor i32 %conv, %conv17
  %27 = load i32, i32* %t, align 4
  %shr18 = lshr i32 %27, 16
  %and19 = and i32 %shr18, 255
  %idxprom20 = zext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom20
  %28 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %28 to i32
  %shl = shl i32 %conv22, 8
  %or = or i32 %xor, %shl
  %29 = load i32, i32* %t, align 4
  %shr23 = lshr i32 %29, 24
  %and24 = and i32 %shr23, 255
  %idxprom25 = zext i32 %and24 to i64
  %arrayidx26 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom25
  %30 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %30 to i32
  %shl28 = shl i32 %conv27, 16
  %or29 = or i32 %or, %shl28
  %31 = load i32, i32* %t, align 4
  %and30 = and i32 %31, 255
  %idxprom31 = zext i32 %and30 to i64
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom31
  %32 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %32 to i32
  %shl34 = shl i32 %conv33, 24
  %or35 = or i32 %or29, %shl34
  store i32 %or35, i32* %t, align 4
  br label %if.end.66

if.else:                                          ; preds = %for.body.7
  %33 = load i32, i32* %keySize.addr, align 4
  %cmp36 = icmp ugt i32 %33, 6
  br i1 %cmp36, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %34 = load i32, i32* %rem, align 4
  %cmp38 = icmp eq i32 %34, 4
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %land.lhs.true
  %35 = load i32, i32* %t, align 4
  %and41 = and i32 %35, 255
  %idxprom42 = zext i32 %and41 to i64
  %arrayidx43 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom42
  %36 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %36 to i32
  %37 = load i32, i32* %t, align 4
  %shr45 = lshr i32 %37, 8
  %and46 = and i32 %shr45, 255
  %idxprom47 = zext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom47
  %38 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %38 to i32
  %shl50 = shl i32 %conv49, 8
  %or51 = or i32 %conv44, %shl50
  %39 = load i32, i32* %t, align 4
  %shr52 = lshr i32 %39, 16
  %and53 = and i32 %shr52, 255
  %idxprom54 = zext i32 %and53 to i64
  %arrayidx55 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom54
  %40 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %40 to i32
  %shl57 = shl i32 %conv56, 16
  %or58 = or i32 %or51, %shl57
  %41 = load i32, i32* %t, align 4
  %shr59 = lshr i32 %41, 24
  %and60 = and i32 %shr59, 255
  %idxprom61 = zext i32 %and60 to i64
  %arrayidx62 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom61
  %42 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %42 to i32
  %shl64 = shl i32 %conv63, 24
  %or65 = or i32 %or58, %shl64
  store i32 %or65, i32* %t, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.40, %land.lhs.true, %if.else
  br label %if.end.66

if.end.66:                                        ; preds = %if.end, %if.then
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %keySize.addr, align 4
  %sub67 = sub i32 %43, %44
  %idxprom68 = zext i32 %sub67 to i64
  %45 = load i32*, i32** %w.addr, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %45, i64 %idxprom68
  %46 = load i32, i32* %arrayidx69, align 4
  %47 = load i32, i32* %t, align 4
  %xor70 = xor i32 %46, %47
  %48 = load i32, i32* %i, align 4
  %idxprom71 = zext i32 %48 to i64
  %49 = load i32*, i32** %w.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %49, i64 %idxprom71
  store i32 %xor70, i32* %arrayidx72, align 4
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.66
  %50 = load i32, i32* %i, align 4
  %inc74 = add i32 %50, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.5

for.end.75:                                       ; preds = %for.cond.5
  ret void
}

; Function Attrs: nounwind uwtable
define void @Aes_SetKey_Dec(i32* %w, i8* %key, i32 %keySize) #0 {
entry:
  %w.addr = alloca i32*, align 8
  %key.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %r = alloca i32, align 4
  store i32* %w, i32** %w.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %keySize, i32* %keySize.addr, align 4
  %0 = load i32*, i32** %w.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i32, i32* %keySize.addr, align 4
  call void @Aes_SetKey_Enc(i32* %0, i8* %1, i32 %2)
  %3 = load i32, i32* %keySize.addr, align 4
  %add = add i32 %3, 20
  store i32 %add, i32* %num, align 4
  %4 = load i32*, i32** %w.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 8
  store i32* %add.ptr, i32** %w.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %num, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i32*, i32** %w.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  store i32 %9, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  %and = and i32 %10, 255
  %idxprom1 = zext i32 %and to i64
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom1
  %11 = load i8, i8* %arrayidx2, align 1
  %idxprom3 = zext i8 %11 to i64
  %arrayidx4 = getelementptr inbounds [1024 x i32], [1024 x i32]* @D, i32 0, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %13 = load i32, i32* %r, align 4
  %shr = lshr i32 %13, 8
  %and5 = and i32 %shr, 255
  %idxprom6 = zext i32 %and5 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom6
  %14 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %14 to i32
  %add8 = add nsw i32 256, %conv
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds [1024 x i32], [1024 x i32]* @D, i32 0, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  %xor = xor i32 %12, %15
  %16 = load i32, i32* %r, align 4
  %shr11 = lshr i32 %16, 16
  %and12 = and i32 %shr11, 255
  %idxprom13 = zext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom13
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  %add16 = add nsw i32 512, %conv15
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [1024 x i32], [1024 x i32]* @D, i32 0, i64 %idxprom17
  %18 = load i32, i32* %arrayidx18, align 4
  %xor19 = xor i32 %xor, %18
  %19 = load i32, i32* %r, align 4
  %shr20 = lshr i32 %19, 24
  %and21 = and i32 %shr20, 255
  %idxprom22 = zext i32 %and21 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom22
  %20 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %20 to i32
  %add25 = add nsw i32 768, %conv24
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [1024 x i32], [1024 x i32]* @D, i32 0, i64 %idxprom26
  %21 = load i32, i32* %arrayidx27, align 4
  %xor28 = xor i32 %xor19, %21
  %22 = load i32, i32* %i, align 4
  %idxprom29 = zext i32 %22 to i64
  %23 = load i32*, i32** %w.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %23, i64 %idxprom29
  store i32 %xor28, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @AesCbc_Init(i32* %p, i8* %iv) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %iv.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %iv.addr, align 8
  %2 = load i32, i32* %i, align 4
  %mul = mul i32 %2, 4
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to i32*
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Aes_Encode(i32* %w, i32* %dest, i32* %src) #0 {
entry:
  %w.addr = alloca i32*, align 8
  %dest.addr = alloca i32*, align 8
  %src.addr = alloca i32*, align 8
  %s = alloca [4 x i32], align 16
  %m = alloca [4 x i32], align 16
  %numRounds2 = alloca i32, align 4
  store i32* %w, i32** %w.addr, align 8
  store i32* %dest, i32** %dest.addr, align 8
  store i32* %src, i32** %src.addr, align 8
  %0 = load i32*, i32** %w.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %numRounds2, align 4
  %2 = load i32*, i32** %w.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 4
  store i32* %add.ptr, i32** %w.addr, align 8
  %3 = load i32*, i32** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32*, i32** %w.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx2, align 4
  %xor = xor i32 %4, %6
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  store i32 %xor, i32* %arrayidx3, align 4
  %7 = load i32*, i32** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32*, i32** %w.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = load i32, i32* %arrayidx5, align 4
  %xor6 = xor i32 %8, %10
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  store i32 %xor6, i32* %arrayidx7, align 4
  %11 = load i32*, i32** %src.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 2
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32*, i32** %w.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 2
  %14 = load i32, i32* %arrayidx9, align 4
  %xor10 = xor i32 %12, %14
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  store i32 %xor10, i32* %arrayidx11, align 4
  %15 = load i32*, i32** %src.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %15, i64 3
  %16 = load i32, i32* %arrayidx12, align 4
  %17 = load i32*, i32** %w.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 3
  %18 = load i32, i32* %arrayidx13, align 4
  %xor14 = xor i32 %16, %18
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  store i32 %xor14, i32* %arrayidx15, align 4
  %19 = load i32*, i32** %w.addr, align 8
  %add.ptr16 = getelementptr inbounds i32, i32* %19, i64 4
  store i32* %add.ptr16, i32** %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  %20 = load i32, i32* %arrayidx17, align 4
  %and = and i32 %20, 255
  %idxprom = zext i32 %and to i64
  %arrayidx18 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i32 0), i64 %idxprom
  %21 = load i32, i32* %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  %22 = load i32, i32* %arrayidx19, align 4
  %shr = lshr i32 %22, 8
  %and20 = and i32 %shr, 255
  %idxprom21 = zext i32 %and20 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 256), i64 %idxprom21
  %23 = load i32, i32* %arrayidx22, align 4
  %xor23 = xor i32 %21, %23
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  %24 = load i32, i32* %arrayidx24, align 4
  %shr25 = lshr i32 %24, 16
  %and26 = and i32 %shr25, 255
  %idxprom27 = zext i32 %and26 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 512), i64 %idxprom27
  %25 = load i32, i32* %arrayidx28, align 4
  %xor29 = xor i32 %xor23, %25
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  %26 = load i32, i32* %arrayidx30, align 4
  %shr31 = lshr i32 %26, 24
  %and32 = and i32 %shr31, 255
  %idxprom33 = zext i32 %and32 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 768), i64 %idxprom33
  %27 = load i32, i32* %arrayidx34, align 4
  %xor35 = xor i32 %xor29, %27
  %28 = load i32*, i32** %w.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %28, i64 2
  %29 = load i32, i32* %arrayidx36, align 4
  %xor37 = xor i32 %xor35, %29
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  store i32 %xor37, i32* %arrayidx38, align 4
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  %30 = load i32, i32* %arrayidx39, align 4
  %and40 = and i32 %30, 255
  %idxprom41 = zext i32 %and40 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i32 0), i64 %idxprom41
  %31 = load i32, i32* %arrayidx42, align 4
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  %32 = load i32, i32* %arrayidx43, align 4
  %shr44 = lshr i32 %32, 8
  %and45 = and i32 %shr44, 255
  %idxprom46 = zext i32 %and45 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 256), i64 %idxprom46
  %33 = load i32, i32* %arrayidx47, align 4
  %xor48 = xor i32 %31, %33
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  %34 = load i32, i32* %arrayidx49, align 4
  %shr50 = lshr i32 %34, 16
  %and51 = and i32 %shr50, 255
  %idxprom52 = zext i32 %and51 to i64
  %arrayidx53 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 512), i64 %idxprom52
  %35 = load i32, i32* %arrayidx53, align 4
  %xor54 = xor i32 %xor48, %35
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  %36 = load i32, i32* %arrayidx55, align 4
  %shr56 = lshr i32 %36, 24
  %and57 = and i32 %shr56, 255
  %idxprom58 = zext i32 %and57 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 768), i64 %idxprom58
  %37 = load i32, i32* %arrayidx59, align 4
  %xor60 = xor i32 %xor54, %37
  %38 = load i32*, i32** %w.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %38, i64 0
  %39 = load i32, i32* %arrayidx61, align 4
  %xor62 = xor i32 %xor60, %39
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  store i32 %xor62, i32* %arrayidx63, align 4
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  %40 = load i32, i32* %arrayidx64, align 4
  %and65 = and i32 %40, 255
  %idxprom66 = zext i32 %and65 to i64
  %arrayidx67 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i32 0), i64 %idxprom66
  %41 = load i32, i32* %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  %42 = load i32, i32* %arrayidx68, align 4
  %shr69 = lshr i32 %42, 8
  %and70 = and i32 %shr69, 255
  %idxprom71 = zext i32 %and70 to i64
  %arrayidx72 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 256), i64 %idxprom71
  %43 = load i32, i32* %arrayidx72, align 4
  %xor73 = xor i32 %41, %43
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  %44 = load i32, i32* %arrayidx74, align 4
  %shr75 = lshr i32 %44, 16
  %and76 = and i32 %shr75, 255
  %idxprom77 = zext i32 %and76 to i64
  %arrayidx78 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 512), i64 %idxprom77
  %45 = load i32, i32* %arrayidx78, align 4
  %xor79 = xor i32 %xor73, %45
  %arrayidx80 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  %46 = load i32, i32* %arrayidx80, align 4
  %shr81 = lshr i32 %46, 24
  %and82 = and i32 %shr81, 255
  %idxprom83 = zext i32 %and82 to i64
  %arrayidx84 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 768), i64 %idxprom83
  %47 = load i32, i32* %arrayidx84, align 4
  %xor85 = xor i32 %xor79, %47
  %48 = load i32*, i32** %w.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %48, i64 3
  %49 = load i32, i32* %arrayidx86, align 4
  %xor87 = xor i32 %xor85, %49
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  store i32 %xor87, i32* %arrayidx88, align 4
  %arrayidx89 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  %50 = load i32, i32* %arrayidx89, align 4
  %and90 = and i32 %50, 255
  %idxprom91 = zext i32 %and90 to i64
  %arrayidx92 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i32 0), i64 %idxprom91
  %51 = load i32, i32* %arrayidx92, align 4
  %arrayidx93 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  %52 = load i32, i32* %arrayidx93, align 4
  %shr94 = lshr i32 %52, 8
  %and95 = and i32 %shr94, 255
  %idxprom96 = zext i32 %and95 to i64
  %arrayidx97 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 256), i64 %idxprom96
  %53 = load i32, i32* %arrayidx97, align 4
  %xor98 = xor i32 %51, %53
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  %54 = load i32, i32* %arrayidx99, align 4
  %shr100 = lshr i32 %54, 16
  %and101 = and i32 %shr100, 255
  %idxprom102 = zext i32 %and101 to i64
  %arrayidx103 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 512), i64 %idxprom102
  %55 = load i32, i32* %arrayidx103, align 4
  %xor104 = xor i32 %xor98, %55
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  %56 = load i32, i32* %arrayidx105, align 4
  %shr106 = lshr i32 %56, 24
  %and107 = and i32 %shr106, 255
  %idxprom108 = zext i32 %and107 to i64
  %arrayidx109 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 768), i64 %idxprom108
  %57 = load i32, i32* %arrayidx109, align 4
  %xor110 = xor i32 %xor104, %57
  %58 = load i32*, i32** %w.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %58, i64 1
  %59 = load i32, i32* %arrayidx111, align 4
  %xor112 = xor i32 %xor110, %59
  %arrayidx113 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  store i32 %xor112, i32* %arrayidx113, align 4
  %60 = load i32, i32* %numRounds2, align 4
  %dec = add i32 %60, -1
  store i32 %dec, i32* %numRounds2, align 4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %arrayidx114 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %61 = load i32, i32* %arrayidx114, align 4
  %and115 = and i32 %61, 255
  %idxprom116 = zext i32 %and115 to i64
  %arrayidx117 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i32 0), i64 %idxprom116
  %62 = load i32, i32* %arrayidx117, align 4
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %63 = load i32, i32* %arrayidx118, align 4
  %shr119 = lshr i32 %63, 8
  %and120 = and i32 %shr119, 255
  %idxprom121 = zext i32 %and120 to i64
  %arrayidx122 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 256), i64 %idxprom121
  %64 = load i32, i32* %arrayidx122, align 4
  %xor123 = xor i32 %62, %64
  %arrayidx124 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %65 = load i32, i32* %arrayidx124, align 4
  %shr125 = lshr i32 %65, 16
  %and126 = and i32 %shr125, 255
  %idxprom127 = zext i32 %and126 to i64
  %arrayidx128 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 512), i64 %idxprom127
  %66 = load i32, i32* %arrayidx128, align 4
  %xor129 = xor i32 %xor123, %66
  %arrayidx130 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %67 = load i32, i32* %arrayidx130, align 4
  %shr131 = lshr i32 %67, 24
  %and132 = and i32 %shr131, 255
  %idxprom133 = zext i32 %and132 to i64
  %arrayidx134 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 768), i64 %idxprom133
  %68 = load i32, i32* %arrayidx134, align 4
  %xor135 = xor i32 %xor129, %68
  %69 = load i32*, i32** %w.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %69, i64 6
  %70 = load i32, i32* %arrayidx136, align 4
  %xor137 = xor i32 %xor135, %70
  %arrayidx138 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  store i32 %xor137, i32* %arrayidx138, align 4
  %arrayidx139 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %71 = load i32, i32* %arrayidx139, align 4
  %and140 = and i32 %71, 255
  %idxprom141 = zext i32 %and140 to i64
  %arrayidx142 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i32 0), i64 %idxprom141
  %72 = load i32, i32* %arrayidx142, align 4
  %arrayidx143 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %73 = load i32, i32* %arrayidx143, align 4
  %shr144 = lshr i32 %73, 8
  %and145 = and i32 %shr144, 255
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 256), i64 %idxprom146
  %74 = load i32, i32* %arrayidx147, align 4
  %xor148 = xor i32 %72, %74
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %75 = load i32, i32* %arrayidx149, align 4
  %shr150 = lshr i32 %75, 16
  %and151 = and i32 %shr150, 255
  %idxprom152 = zext i32 %and151 to i64
  %arrayidx153 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 512), i64 %idxprom152
  %76 = load i32, i32* %arrayidx153, align 4
  %xor154 = xor i32 %xor148, %76
  %arrayidx155 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %77 = load i32, i32* %arrayidx155, align 4
  %shr156 = lshr i32 %77, 24
  %and157 = and i32 %shr156, 255
  %idxprom158 = zext i32 %and157 to i64
  %arrayidx159 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 768), i64 %idxprom158
  %78 = load i32, i32* %arrayidx159, align 4
  %xor160 = xor i32 %xor154, %78
  %79 = load i32*, i32** %w.addr, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %79, i64 4
  %80 = load i32, i32* %arrayidx161, align 4
  %xor162 = xor i32 %xor160, %80
  %arrayidx163 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  store i32 %xor162, i32* %arrayidx163, align 4
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %81 = load i32, i32* %arrayidx164, align 4
  %and165 = and i32 %81, 255
  %idxprom166 = zext i32 %and165 to i64
  %arrayidx167 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i32 0), i64 %idxprom166
  %82 = load i32, i32* %arrayidx167, align 4
  %arrayidx168 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %83 = load i32, i32* %arrayidx168, align 4
  %shr169 = lshr i32 %83, 8
  %and170 = and i32 %shr169, 255
  %idxprom171 = zext i32 %and170 to i64
  %arrayidx172 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 256), i64 %idxprom171
  %84 = load i32, i32* %arrayidx172, align 4
  %xor173 = xor i32 %82, %84
  %arrayidx174 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %85 = load i32, i32* %arrayidx174, align 4
  %shr175 = lshr i32 %85, 16
  %and176 = and i32 %shr175, 255
  %idxprom177 = zext i32 %and176 to i64
  %arrayidx178 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 512), i64 %idxprom177
  %86 = load i32, i32* %arrayidx178, align 4
  %xor179 = xor i32 %xor173, %86
  %arrayidx180 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %87 = load i32, i32* %arrayidx180, align 4
  %shr181 = lshr i32 %87, 24
  %and182 = and i32 %shr181, 255
  %idxprom183 = zext i32 %and182 to i64
  %arrayidx184 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 768), i64 %idxprom183
  %88 = load i32, i32* %arrayidx184, align 4
  %xor185 = xor i32 %xor179, %88
  %89 = load i32*, i32** %w.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %89, i64 7
  %90 = load i32, i32* %arrayidx186, align 4
  %xor187 = xor i32 %xor185, %90
  %arrayidx188 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  store i32 %xor187, i32* %arrayidx188, align 4
  %arrayidx189 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %91 = load i32, i32* %arrayidx189, align 4
  %and190 = and i32 %91, 255
  %idxprom191 = zext i32 %and190 to i64
  %arrayidx192 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i32 0), i64 %idxprom191
  %92 = load i32, i32* %arrayidx192, align 4
  %arrayidx193 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %93 = load i32, i32* %arrayidx193, align 4
  %shr194 = lshr i32 %93, 8
  %and195 = and i32 %shr194, 255
  %idxprom196 = zext i32 %and195 to i64
  %arrayidx197 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 256), i64 %idxprom196
  %94 = load i32, i32* %arrayidx197, align 4
  %xor198 = xor i32 %92, %94
  %arrayidx199 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %95 = load i32, i32* %arrayidx199, align 4
  %shr200 = lshr i32 %95, 16
  %and201 = and i32 %shr200, 255
  %idxprom202 = zext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 512), i64 %idxprom202
  %96 = load i32, i32* %arrayidx203, align 4
  %xor204 = xor i32 %xor198, %96
  %arrayidx205 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %97 = load i32, i32* %arrayidx205, align 4
  %shr206 = lshr i32 %97, 24
  %and207 = and i32 %shr206, 255
  %idxprom208 = zext i32 %and207 to i64
  %arrayidx209 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @T, i32 0, i64 768), i64 %idxprom208
  %98 = load i32, i32* %arrayidx209, align 4
  %xor210 = xor i32 %xor204, %98
  %99 = load i32*, i32** %w.addr, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %99, i64 5
  %100 = load i32, i32* %arrayidx211, align 4
  %xor212 = xor i32 %xor210, %100
  %arrayidx213 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  store i32 %xor212, i32* %arrayidx213, align 4
  %101 = load i32*, i32** %w.addr, align 8
  %add.ptr214 = getelementptr inbounds i32, i32* %101, i64 8
  store i32* %add.ptr214, i32** %w.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %102 = load i32*, i32** %w.addr, align 8
  %add.ptr215 = getelementptr inbounds i32, i32* %102, i64 4
  store i32* %add.ptr215, i32** %w.addr, align 8
  %arrayidx216 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %103 = load i32, i32* %arrayidx216, align 4
  %and217 = and i32 %103, 255
  %idxprom218 = zext i32 %and217 to i64
  %arrayidx219 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom218
  %104 = load i8, i8* %arrayidx219, align 1
  %conv = zext i8 %104 to i32
  %arrayidx220 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %105 = load i32, i32* %arrayidx220, align 4
  %shr221 = lshr i32 %105, 8
  %and222 = and i32 %shr221, 255
  %idxprom223 = zext i32 %and222 to i64
  %arrayidx224 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom223
  %106 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %106 to i32
  %shl = shl i32 %conv225, 8
  %or = or i32 %conv, %shl
  %arrayidx226 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %107 = load i32, i32* %arrayidx226, align 4
  %shr227 = lshr i32 %107, 16
  %and228 = and i32 %shr227, 255
  %idxprom229 = zext i32 %and228 to i64
  %arrayidx230 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom229
  %108 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %108 to i32
  %shl232 = shl i32 %conv231, 16
  %or233 = or i32 %or, %shl232
  %arrayidx234 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %109 = load i32, i32* %arrayidx234, align 4
  %shr235 = lshr i32 %109, 24
  %and236 = and i32 %shr235, 255
  %idxprom237 = zext i32 %and236 to i64
  %arrayidx238 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom237
  %110 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %110 to i32
  %shl240 = shl i32 %conv239, 24
  %or241 = or i32 %or233, %shl240
  %111 = load i32*, i32** %w.addr, align 8
  %arrayidx242 = getelementptr inbounds i32, i32* %111, i64 0
  %112 = load i32, i32* %arrayidx242, align 4
  %xor243 = xor i32 %or241, %112
  %113 = load i32*, i32** %dest.addr, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %xor243, i32* %arrayidx244, align 4
  %arrayidx245 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %114 = load i32, i32* %arrayidx245, align 4
  %and246 = and i32 %114, 255
  %idxprom247 = zext i32 %and246 to i64
  %arrayidx248 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom247
  %115 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %115 to i32
  %arrayidx250 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %116 = load i32, i32* %arrayidx250, align 4
  %shr251 = lshr i32 %116, 8
  %and252 = and i32 %shr251, 255
  %idxprom253 = zext i32 %and252 to i64
  %arrayidx254 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom253
  %117 = load i8, i8* %arrayidx254, align 1
  %conv255 = zext i8 %117 to i32
  %shl256 = shl i32 %conv255, 8
  %or257 = or i32 %conv249, %shl256
  %arrayidx258 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %118 = load i32, i32* %arrayidx258, align 4
  %shr259 = lshr i32 %118, 16
  %and260 = and i32 %shr259, 255
  %idxprom261 = zext i32 %and260 to i64
  %arrayidx262 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom261
  %119 = load i8, i8* %arrayidx262, align 1
  %conv263 = zext i8 %119 to i32
  %shl264 = shl i32 %conv263, 16
  %or265 = or i32 %or257, %shl264
  %arrayidx266 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %120 = load i32, i32* %arrayidx266, align 4
  %shr267 = lshr i32 %120, 24
  %and268 = and i32 %shr267, 255
  %idxprom269 = zext i32 %and268 to i64
  %arrayidx270 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom269
  %121 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %121 to i32
  %shl272 = shl i32 %conv271, 24
  %or273 = or i32 %or265, %shl272
  %122 = load i32*, i32** %w.addr, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %122, i64 1
  %123 = load i32, i32* %arrayidx274, align 4
  %xor275 = xor i32 %or273, %123
  %124 = load i32*, i32** %dest.addr, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %xor275, i32* %arrayidx276, align 4
  %arrayidx277 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %125 = load i32, i32* %arrayidx277, align 4
  %and278 = and i32 %125, 255
  %idxprom279 = zext i32 %and278 to i64
  %arrayidx280 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom279
  %126 = load i8, i8* %arrayidx280, align 1
  %conv281 = zext i8 %126 to i32
  %arrayidx282 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %127 = load i32, i32* %arrayidx282, align 4
  %shr283 = lshr i32 %127, 8
  %and284 = and i32 %shr283, 255
  %idxprom285 = zext i32 %and284 to i64
  %arrayidx286 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom285
  %128 = load i8, i8* %arrayidx286, align 1
  %conv287 = zext i8 %128 to i32
  %shl288 = shl i32 %conv287, 8
  %or289 = or i32 %conv281, %shl288
  %arrayidx290 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %129 = load i32, i32* %arrayidx290, align 4
  %shr291 = lshr i32 %129, 16
  %and292 = and i32 %shr291, 255
  %idxprom293 = zext i32 %and292 to i64
  %arrayidx294 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom293
  %130 = load i8, i8* %arrayidx294, align 1
  %conv295 = zext i8 %130 to i32
  %shl296 = shl i32 %conv295, 16
  %or297 = or i32 %or289, %shl296
  %arrayidx298 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %131 = load i32, i32* %arrayidx298, align 4
  %shr299 = lshr i32 %131, 24
  %and300 = and i32 %shr299, 255
  %idxprom301 = zext i32 %and300 to i64
  %arrayidx302 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom301
  %132 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %132 to i32
  %shl304 = shl i32 %conv303, 24
  %or305 = or i32 %or297, %shl304
  %133 = load i32*, i32** %w.addr, align 8
  %arrayidx306 = getelementptr inbounds i32, i32* %133, i64 2
  %134 = load i32, i32* %arrayidx306, align 4
  %xor307 = xor i32 %or305, %134
  %135 = load i32*, i32** %dest.addr, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %135, i64 2
  store i32 %xor307, i32* %arrayidx308, align 4
  %arrayidx309 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %136 = load i32, i32* %arrayidx309, align 4
  %and310 = and i32 %136, 255
  %idxprom311 = zext i32 %and310 to i64
  %arrayidx312 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom311
  %137 = load i8, i8* %arrayidx312, align 1
  %conv313 = zext i8 %137 to i32
  %arrayidx314 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %138 = load i32, i32* %arrayidx314, align 4
  %shr315 = lshr i32 %138, 8
  %and316 = and i32 %shr315, 255
  %idxprom317 = zext i32 %and316 to i64
  %arrayidx318 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom317
  %139 = load i8, i8* %arrayidx318, align 1
  %conv319 = zext i8 %139 to i32
  %shl320 = shl i32 %conv319, 8
  %or321 = or i32 %conv313, %shl320
  %arrayidx322 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %140 = load i32, i32* %arrayidx322, align 4
  %shr323 = lshr i32 %140, 16
  %and324 = and i32 %shr323, 255
  %idxprom325 = zext i32 %and324 to i64
  %arrayidx326 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom325
  %141 = load i8, i8* %arrayidx326, align 1
  %conv327 = zext i8 %141 to i32
  %shl328 = shl i32 %conv327, 16
  %or329 = or i32 %or321, %shl328
  %arrayidx330 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %142 = load i32, i32* %arrayidx330, align 4
  %shr331 = lshr i32 %142, 24
  %and332 = and i32 %shr331, 255
  %idxprom333 = zext i32 %and332 to i64
  %arrayidx334 = getelementptr inbounds [256 x i8], [256 x i8]* @Sbox, i32 0, i64 %idxprom333
  %143 = load i8, i8* %arrayidx334, align 1
  %conv335 = zext i8 %143 to i32
  %shl336 = shl i32 %conv335, 24
  %or337 = or i32 %or329, %shl336
  %144 = load i32*, i32** %w.addr, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %144, i64 3
  %145 = load i32, i32* %arrayidx338, align 4
  %xor339 = xor i32 %or337, %145
  %146 = load i32*, i32** %dest.addr, align 8
  %arrayidx340 = getelementptr inbounds i32, i32* %146, i64 3
  store i32 %xor339, i32* %arrayidx340, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Aes_Decode(i32* %w, i32* %dest, i32* %src) #0 {
entry:
  %w.addr = alloca i32*, align 8
  %dest.addr = alloca i32*, align 8
  %src.addr = alloca i32*, align 8
  %s = alloca [4 x i32], align 16
  %m = alloca [4 x i32], align 16
  %numRounds2 = alloca i32, align 4
  store i32* %w, i32** %w.addr, align 8
  store i32* %dest, i32** %dest.addr, align 8
  store i32* %src, i32** %src.addr, align 8
  %0 = load i32*, i32** %w.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %numRounds2, align 4
  %2 = load i32, i32* %numRounds2, align 4
  %mul = mul i32 %2, 8
  %add = add i32 4, %mul
  %3 = load i32*, i32** %w.addr, align 8
  %idx.ext = zext i32 %add to i64
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.ext
  store i32* %add.ptr, i32** %w.addr, align 8
  %4 = load i32*, i32** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx1, align 4
  %6 = load i32*, i32** %w.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %xor = xor i32 %5, %7
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  store i32 %xor, i32* %arrayidx3, align 4
  %8 = load i32*, i32** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32*, i32** %w.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 1
  %11 = load i32, i32* %arrayidx5, align 4
  %xor6 = xor i32 %9, %11
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  store i32 %xor6, i32* %arrayidx7, align 4
  %12 = load i32*, i32** %src.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 2
  %13 = load i32, i32* %arrayidx8, align 4
  %14 = load i32*, i32** %w.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 2
  %15 = load i32, i32* %arrayidx9, align 4
  %xor10 = xor i32 %13, %15
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  store i32 %xor10, i32* %arrayidx11, align 4
  %16 = load i32*, i32** %src.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %16, i64 3
  %17 = load i32, i32* %arrayidx12, align 4
  %18 = load i32*, i32** %w.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 3
  %19 = load i32, i32* %arrayidx13, align 4
  %xor14 = xor i32 %17, %19
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  store i32 %xor14, i32* %arrayidx15, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %20 = load i32*, i32** %w.addr, align 8
  %add.ptr16 = getelementptr inbounds i32, i32* %20, i64 -8
  store i32* %add.ptr16, i32** %w.addr, align 8
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  %21 = load i32, i32* %arrayidx17, align 4
  %and = and i32 %21, 255
  %idxprom = zext i32 %and to i64
  %arrayidx18 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i32 0), i64 %idxprom
  %22 = load i32, i32* %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  %23 = load i32, i32* %arrayidx19, align 4
  %shr = lshr i32 %23, 8
  %and20 = and i32 %shr, 255
  %idxprom21 = zext i32 %and20 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 256), i64 %idxprom21
  %24 = load i32, i32* %arrayidx22, align 4
  %xor23 = xor i32 %22, %24
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  %25 = load i32, i32* %arrayidx24, align 4
  %shr25 = lshr i32 %25, 16
  %and26 = and i32 %shr25, 255
  %idxprom27 = zext i32 %and26 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 512), i64 %idxprom27
  %26 = load i32, i32* %arrayidx28, align 4
  %xor29 = xor i32 %xor23, %26
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  %27 = load i32, i32* %arrayidx30, align 4
  %shr31 = lshr i32 %27, 24
  %and32 = and i32 %shr31, 255
  %idxprom33 = zext i32 %and32 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 768), i64 %idxprom33
  %28 = load i32, i32* %arrayidx34, align 4
  %xor35 = xor i32 %xor29, %28
  %29 = load i32*, i32** %w.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %29, i64 4
  %30 = load i32, i32* %arrayidx36, align 4
  %xor37 = xor i32 %xor35, %30
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  store i32 %xor37, i32* %arrayidx38, align 4
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  %31 = load i32, i32* %arrayidx39, align 4
  %and40 = and i32 %31, 255
  %idxprom41 = zext i32 %and40 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i32 0), i64 %idxprom41
  %32 = load i32, i32* %arrayidx42, align 4
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  %33 = load i32, i32* %arrayidx43, align 4
  %shr44 = lshr i32 %33, 8
  %and45 = and i32 %shr44, 255
  %idxprom46 = zext i32 %and45 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 256), i64 %idxprom46
  %34 = load i32, i32* %arrayidx47, align 4
  %xor48 = xor i32 %32, %34
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  %35 = load i32, i32* %arrayidx49, align 4
  %shr50 = lshr i32 %35, 16
  %and51 = and i32 %shr50, 255
  %idxprom52 = zext i32 %and51 to i64
  %arrayidx53 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 512), i64 %idxprom52
  %36 = load i32, i32* %arrayidx53, align 4
  %xor54 = xor i32 %xor48, %36
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  %37 = load i32, i32* %arrayidx55, align 4
  %shr56 = lshr i32 %37, 24
  %and57 = and i32 %shr56, 255
  %idxprom58 = zext i32 %and57 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 768), i64 %idxprom58
  %38 = load i32, i32* %arrayidx59, align 4
  %xor60 = xor i32 %xor54, %38
  %39 = load i32*, i32** %w.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %39, i64 6
  %40 = load i32, i32* %arrayidx61, align 4
  %xor62 = xor i32 %xor60, %40
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  store i32 %xor62, i32* %arrayidx63, align 4
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  %41 = load i32, i32* %arrayidx64, align 4
  %and65 = and i32 %41, 255
  %idxprom66 = zext i32 %and65 to i64
  %arrayidx67 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i32 0), i64 %idxprom66
  %42 = load i32, i32* %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  %43 = load i32, i32* %arrayidx68, align 4
  %shr69 = lshr i32 %43, 8
  %and70 = and i32 %shr69, 255
  %idxprom71 = zext i32 %and70 to i64
  %arrayidx72 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 256), i64 %idxprom71
  %44 = load i32, i32* %arrayidx72, align 4
  %xor73 = xor i32 %42, %44
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  %45 = load i32, i32* %arrayidx74, align 4
  %shr75 = lshr i32 %45, 16
  %and76 = and i32 %shr75, 255
  %idxprom77 = zext i32 %and76 to i64
  %arrayidx78 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 512), i64 %idxprom77
  %46 = load i32, i32* %arrayidx78, align 4
  %xor79 = xor i32 %xor73, %46
  %arrayidx80 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  %47 = load i32, i32* %arrayidx80, align 4
  %shr81 = lshr i32 %47, 24
  %and82 = and i32 %shr81, 255
  %idxprom83 = zext i32 %and82 to i64
  %arrayidx84 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 768), i64 %idxprom83
  %48 = load i32, i32* %arrayidx84, align 4
  %xor85 = xor i32 %xor79, %48
  %49 = load i32*, i32** %w.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %49, i64 7
  %50 = load i32, i32* %arrayidx86, align 4
  %xor87 = xor i32 %xor85, %50
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  store i32 %xor87, i32* %arrayidx88, align 4
  %arrayidx89 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  %51 = load i32, i32* %arrayidx89, align 4
  %and90 = and i32 %51, 255
  %idxprom91 = zext i32 %and90 to i64
  %arrayidx92 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i32 0), i64 %idxprom91
  %52 = load i32, i32* %arrayidx92, align 4
  %arrayidx93 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  %53 = load i32, i32* %arrayidx93, align 4
  %shr94 = lshr i32 %53, 8
  %and95 = and i32 %shr94, 255
  %idxprom96 = zext i32 %and95 to i64
  %arrayidx97 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 256), i64 %idxprom96
  %54 = load i32, i32* %arrayidx97, align 4
  %xor98 = xor i32 %52, %54
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  %55 = load i32, i32* %arrayidx99, align 4
  %shr100 = lshr i32 %55, 16
  %and101 = and i32 %shr100, 255
  %idxprom102 = zext i32 %and101 to i64
  %arrayidx103 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 512), i64 %idxprom102
  %56 = load i32, i32* %arrayidx103, align 4
  %xor104 = xor i32 %xor98, %56
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  %57 = load i32, i32* %arrayidx105, align 4
  %shr106 = lshr i32 %57, 24
  %and107 = and i32 %shr106, 255
  %idxprom108 = zext i32 %and107 to i64
  %arrayidx109 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 768), i64 %idxprom108
  %58 = load i32, i32* %arrayidx109, align 4
  %xor110 = xor i32 %xor104, %58
  %59 = load i32*, i32** %w.addr, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %59, i64 5
  %60 = load i32, i32* %arrayidx111, align 4
  %xor112 = xor i32 %xor110, %60
  %arrayidx113 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  store i32 %xor112, i32* %arrayidx113, align 4
  %61 = load i32, i32* %numRounds2, align 4
  %dec = add i32 %61, -1
  store i32 %dec, i32* %numRounds2, align 4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %arrayidx114 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %62 = load i32, i32* %arrayidx114, align 4
  %and115 = and i32 %62, 255
  %idxprom116 = zext i32 %and115 to i64
  %arrayidx117 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i32 0), i64 %idxprom116
  %63 = load i32, i32* %arrayidx117, align 4
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %64 = load i32, i32* %arrayidx118, align 4
  %shr119 = lshr i32 %64, 8
  %and120 = and i32 %shr119, 255
  %idxprom121 = zext i32 %and120 to i64
  %arrayidx122 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 256), i64 %idxprom121
  %65 = load i32, i32* %arrayidx122, align 4
  %xor123 = xor i32 %63, %65
  %arrayidx124 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %66 = load i32, i32* %arrayidx124, align 4
  %shr125 = lshr i32 %66, 16
  %and126 = and i32 %shr125, 255
  %idxprom127 = zext i32 %and126 to i64
  %arrayidx128 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 512), i64 %idxprom127
  %67 = load i32, i32* %arrayidx128, align 4
  %xor129 = xor i32 %xor123, %67
  %arrayidx130 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %68 = load i32, i32* %arrayidx130, align 4
  %shr131 = lshr i32 %68, 24
  %and132 = and i32 %shr131, 255
  %idxprom133 = zext i32 %and132 to i64
  %arrayidx134 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 768), i64 %idxprom133
  %69 = load i32, i32* %arrayidx134, align 4
  %xor135 = xor i32 %xor129, %69
  %70 = load i32*, i32** %w.addr, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %70, i64 0
  %71 = load i32, i32* %arrayidx136, align 4
  %xor137 = xor i32 %xor135, %71
  %arrayidx138 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 0
  store i32 %xor137, i32* %arrayidx138, align 4
  %arrayidx139 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %72 = load i32, i32* %arrayidx139, align 4
  %and140 = and i32 %72, 255
  %idxprom141 = zext i32 %and140 to i64
  %arrayidx142 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i32 0), i64 %idxprom141
  %73 = load i32, i32* %arrayidx142, align 4
  %arrayidx143 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %74 = load i32, i32* %arrayidx143, align 4
  %shr144 = lshr i32 %74, 8
  %and145 = and i32 %shr144, 255
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 256), i64 %idxprom146
  %75 = load i32, i32* %arrayidx147, align 4
  %xor148 = xor i32 %73, %75
  %arrayidx149 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %76 = load i32, i32* %arrayidx149, align 4
  %shr150 = lshr i32 %76, 16
  %and151 = and i32 %shr150, 255
  %idxprom152 = zext i32 %and151 to i64
  %arrayidx153 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 512), i64 %idxprom152
  %77 = load i32, i32* %arrayidx153, align 4
  %xor154 = xor i32 %xor148, %77
  %arrayidx155 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %78 = load i32, i32* %arrayidx155, align 4
  %shr156 = lshr i32 %78, 24
  %and157 = and i32 %shr156, 255
  %idxprom158 = zext i32 %and157 to i64
  %arrayidx159 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 768), i64 %idxprom158
  %79 = load i32, i32* %arrayidx159, align 4
  %xor160 = xor i32 %xor154, %79
  %80 = load i32*, i32** %w.addr, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %80, i64 2
  %81 = load i32, i32* %arrayidx161, align 4
  %xor162 = xor i32 %xor160, %81
  %arrayidx163 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 2
  store i32 %xor162, i32* %arrayidx163, align 4
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %82 = load i32, i32* %arrayidx164, align 4
  %and165 = and i32 %82, 255
  %idxprom166 = zext i32 %and165 to i64
  %arrayidx167 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i32 0), i64 %idxprom166
  %83 = load i32, i32* %arrayidx167, align 4
  %arrayidx168 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %84 = load i32, i32* %arrayidx168, align 4
  %shr169 = lshr i32 %84, 8
  %and170 = and i32 %shr169, 255
  %idxprom171 = zext i32 %and170 to i64
  %arrayidx172 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 256), i64 %idxprom171
  %85 = load i32, i32* %arrayidx172, align 4
  %xor173 = xor i32 %83, %85
  %arrayidx174 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %86 = load i32, i32* %arrayidx174, align 4
  %shr175 = lshr i32 %86, 16
  %and176 = and i32 %shr175, 255
  %idxprom177 = zext i32 %and176 to i64
  %arrayidx178 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 512), i64 %idxprom177
  %87 = load i32, i32* %arrayidx178, align 4
  %xor179 = xor i32 %xor173, %87
  %arrayidx180 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %88 = load i32, i32* %arrayidx180, align 4
  %shr181 = lshr i32 %88, 24
  %and182 = and i32 %shr181, 255
  %idxprom183 = zext i32 %and182 to i64
  %arrayidx184 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 768), i64 %idxprom183
  %89 = load i32, i32* %arrayidx184, align 4
  %xor185 = xor i32 %xor179, %89
  %90 = load i32*, i32** %w.addr, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %90, i64 3
  %91 = load i32, i32* %arrayidx186, align 4
  %xor187 = xor i32 %xor185, %91
  %arrayidx188 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 3
  store i32 %xor187, i32* %arrayidx188, align 4
  %arrayidx189 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %92 = load i32, i32* %arrayidx189, align 4
  %and190 = and i32 %92, 255
  %idxprom191 = zext i32 %and190 to i64
  %arrayidx192 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i32 0), i64 %idxprom191
  %93 = load i32, i32* %arrayidx192, align 4
  %arrayidx193 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %94 = load i32, i32* %arrayidx193, align 4
  %shr194 = lshr i32 %94, 8
  %and195 = and i32 %shr194, 255
  %idxprom196 = zext i32 %and195 to i64
  %arrayidx197 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 256), i64 %idxprom196
  %95 = load i32, i32* %arrayidx197, align 4
  %xor198 = xor i32 %93, %95
  %arrayidx199 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %96 = load i32, i32* %arrayidx199, align 4
  %shr200 = lshr i32 %96, 16
  %and201 = and i32 %shr200, 255
  %idxprom202 = zext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 512), i64 %idxprom202
  %97 = load i32, i32* %arrayidx203, align 4
  %xor204 = xor i32 %xor198, %97
  %arrayidx205 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %98 = load i32, i32* %arrayidx205, align 4
  %shr206 = lshr i32 %98, 24
  %and207 = and i32 %shr206, 255
  %idxprom208 = zext i32 %and207 to i64
  %arrayidx209 = getelementptr inbounds i32, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @D, i32 0, i64 768), i64 %idxprom208
  %99 = load i32, i32* %arrayidx209, align 4
  %xor210 = xor i32 %xor204, %99
  %100 = load i32*, i32** %w.addr, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %100, i64 1
  %101 = load i32, i32* %arrayidx211, align 4
  %xor212 = xor i32 %xor210, %101
  %arrayidx213 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i32 0, i64 1
  store i32 %xor212, i32* %arrayidx213, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %arrayidx214 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %102 = load i32, i32* %arrayidx214, align 4
  %and215 = and i32 %102, 255
  %idxprom216 = zext i32 %and215 to i64
  %arrayidx217 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom216
  %103 = load i8, i8* %arrayidx217, align 1
  %conv = zext i8 %103 to i32
  %arrayidx218 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %104 = load i32, i32* %arrayidx218, align 4
  %shr219 = lshr i32 %104, 8
  %and220 = and i32 %shr219, 255
  %idxprom221 = zext i32 %and220 to i64
  %arrayidx222 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom221
  %105 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %105 to i32
  %shl = shl i32 %conv223, 8
  %or = or i32 %conv, %shl
  %arrayidx224 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %106 = load i32, i32* %arrayidx224, align 4
  %shr225 = lshr i32 %106, 16
  %and226 = and i32 %shr225, 255
  %idxprom227 = zext i32 %and226 to i64
  %arrayidx228 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom227
  %107 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %107 to i32
  %shl230 = shl i32 %conv229, 16
  %or231 = or i32 %or, %shl230
  %arrayidx232 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %108 = load i32, i32* %arrayidx232, align 4
  %shr233 = lshr i32 %108, 24
  %and234 = and i32 %shr233, 255
  %idxprom235 = zext i32 %and234 to i64
  %arrayidx236 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom235
  %109 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %109 to i32
  %shl238 = shl i32 %conv237, 24
  %or239 = or i32 %or231, %shl238
  %110 = load i32*, i32** %w.addr, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %110, i64 0
  %111 = load i32, i32* %arrayidx240, align 4
  %xor241 = xor i32 %or239, %111
  %112 = load i32*, i32** %dest.addr, align 8
  %arrayidx242 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %xor241, i32* %arrayidx242, align 4
  %arrayidx243 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %113 = load i32, i32* %arrayidx243, align 4
  %and244 = and i32 %113, 255
  %idxprom245 = zext i32 %and244 to i64
  %arrayidx246 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom245
  %114 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %114 to i32
  %arrayidx248 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %115 = load i32, i32* %arrayidx248, align 4
  %shr249 = lshr i32 %115, 8
  %and250 = and i32 %shr249, 255
  %idxprom251 = zext i32 %and250 to i64
  %arrayidx252 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom251
  %116 = load i8, i8* %arrayidx252, align 1
  %conv253 = zext i8 %116 to i32
  %shl254 = shl i32 %conv253, 8
  %or255 = or i32 %conv247, %shl254
  %arrayidx256 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %117 = load i32, i32* %arrayidx256, align 4
  %shr257 = lshr i32 %117, 16
  %and258 = and i32 %shr257, 255
  %idxprom259 = zext i32 %and258 to i64
  %arrayidx260 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom259
  %118 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %118 to i32
  %shl262 = shl i32 %conv261, 16
  %or263 = or i32 %or255, %shl262
  %arrayidx264 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %119 = load i32, i32* %arrayidx264, align 4
  %shr265 = lshr i32 %119, 24
  %and266 = and i32 %shr265, 255
  %idxprom267 = zext i32 %and266 to i64
  %arrayidx268 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom267
  %120 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %120 to i32
  %shl270 = shl i32 %conv269, 24
  %or271 = or i32 %or263, %shl270
  %121 = load i32*, i32** %w.addr, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %121, i64 1
  %122 = load i32, i32* %arrayidx272, align 4
  %xor273 = xor i32 %or271, %122
  %123 = load i32*, i32** %dest.addr, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %xor273, i32* %arrayidx274, align 4
  %arrayidx275 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %124 = load i32, i32* %arrayidx275, align 4
  %and276 = and i32 %124, 255
  %idxprom277 = zext i32 %and276 to i64
  %arrayidx278 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom277
  %125 = load i8, i8* %arrayidx278, align 1
  %conv279 = zext i8 %125 to i32
  %arrayidx280 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %126 = load i32, i32* %arrayidx280, align 4
  %shr281 = lshr i32 %126, 8
  %and282 = and i32 %shr281, 255
  %idxprom283 = zext i32 %and282 to i64
  %arrayidx284 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom283
  %127 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %127 to i32
  %shl286 = shl i32 %conv285, 8
  %or287 = or i32 %conv279, %shl286
  %arrayidx288 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %128 = load i32, i32* %arrayidx288, align 4
  %shr289 = lshr i32 %128, 16
  %and290 = and i32 %shr289, 255
  %idxprom291 = zext i32 %and290 to i64
  %arrayidx292 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom291
  %129 = load i8, i8* %arrayidx292, align 1
  %conv293 = zext i8 %129 to i32
  %shl294 = shl i32 %conv293, 16
  %or295 = or i32 %or287, %shl294
  %arrayidx296 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %130 = load i32, i32* %arrayidx296, align 4
  %shr297 = lshr i32 %130, 24
  %and298 = and i32 %shr297, 255
  %idxprom299 = zext i32 %and298 to i64
  %arrayidx300 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom299
  %131 = load i8, i8* %arrayidx300, align 1
  %conv301 = zext i8 %131 to i32
  %shl302 = shl i32 %conv301, 24
  %or303 = or i32 %or295, %shl302
  %132 = load i32*, i32** %w.addr, align 8
  %arrayidx304 = getelementptr inbounds i32, i32* %132, i64 2
  %133 = load i32, i32* %arrayidx304, align 4
  %xor305 = xor i32 %or303, %133
  %134 = load i32*, i32** %dest.addr, align 8
  %arrayidx306 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 %xor305, i32* %arrayidx306, align 4
  %arrayidx307 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 3
  %135 = load i32, i32* %arrayidx307, align 4
  %and308 = and i32 %135, 255
  %idxprom309 = zext i32 %and308 to i64
  %arrayidx310 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom309
  %136 = load i8, i8* %arrayidx310, align 1
  %conv311 = zext i8 %136 to i32
  %arrayidx312 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 2
  %137 = load i32, i32* %arrayidx312, align 4
  %shr313 = lshr i32 %137, 8
  %and314 = and i32 %shr313, 255
  %idxprom315 = zext i32 %and314 to i64
  %arrayidx316 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom315
  %138 = load i8, i8* %arrayidx316, align 1
  %conv317 = zext i8 %138 to i32
  %shl318 = shl i32 %conv317, 8
  %or319 = or i32 %conv311, %shl318
  %arrayidx320 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 1
  %139 = load i32, i32* %arrayidx320, align 4
  %shr321 = lshr i32 %139, 16
  %and322 = and i32 %shr321, 255
  %idxprom323 = zext i32 %and322 to i64
  %arrayidx324 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom323
  %140 = load i8, i8* %arrayidx324, align 1
  %conv325 = zext i8 %140 to i32
  %shl326 = shl i32 %conv325, 16
  %or327 = or i32 %or319, %shl326
  %arrayidx328 = getelementptr inbounds [4 x i32], [4 x i32]* %m, i32 0, i64 0
  %141 = load i32, i32* %arrayidx328, align 4
  %shr329 = lshr i32 %141, 24
  %and330 = and i32 %shr329, 255
  %idxprom331 = zext i32 %and330 to i64
  %arrayidx332 = getelementptr inbounds [256 x i8], [256 x i8]* @InvS, i32 0, i64 %idxprom331
  %142 = load i8, i8* %arrayidx332, align 1
  %conv333 = zext i8 %142 to i32
  %shl334 = shl i32 %conv333, 24
  %or335 = or i32 %or327, %shl334
  %143 = load i32*, i32** %w.addr, align 8
  %arrayidx336 = getelementptr inbounds i32, i32* %143, i64 3
  %144 = load i32, i32* %arrayidx336, align 4
  %xor337 = xor i32 %or335, %144
  %145 = load i32*, i32** %dest.addr, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %145, i64 3
  store i32 %xor337, i32* %arrayidx338, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
