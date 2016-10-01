; ModuleID = './MultiSource.Benchmarks.MiBench/159.security-blowfish.bf_ecb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@.str = private unnamed_addr constant [42 x i8] c"BlowFish part of SSLeay 0.7.0 30-Jan-1997\00", align 1
@BF_version = global i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"blowfish(idx)\00", align 1

; Function Attrs: nounwind uwtable
define i8* @BF_options() #0 {
entry:
  ret i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define void @BF_ecb_encrypt(i8* %in, i8* %out, %struct.bf_key_st* %ks, i32 %encrypt) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %ks.addr = alloca %struct.bf_key_st*, align 8
  %encrypt.addr = alloca i32, align 4
  %l = alloca i64, align 8
  %d = alloca [2 x i64], align 16
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store %struct.bf_key_st* %ks, %struct.bf_key_st** %ks.addr, align 8
  store i32 %encrypt, i32* %encrypt.addr, align 4
  %0 = load i8*, i8** %in.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, i64* %l, align 8
  %2 = load i8*, i8** %in.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %in.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 16
  %4 = load i64, i64* %l, align 8
  %or = or i64 %4, %shl3
  store i64 %or, i64* %l, align 8
  %5 = load i8*, i8** %in.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr4, i8** %in.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = zext i8 %6 to i64
  %shl6 = shl i64 %conv5, 8
  %7 = load i64, i64* %l, align 8
  %or7 = or i64 %7, %shl6
  store i64 %or7, i64* %l, align 8
  %8 = load i8*, i8** %in.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr8, i8** %in.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv9 = zext i8 %9 to i64
  %10 = load i64, i64* %l, align 8
  %or10 = or i64 %10, %conv9
  store i64 %or10, i64* %l, align 8
  %11 = load i64, i64* %l, align 8
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %d, i32 0, i64 0
  store i64 %11, i64* %arrayidx, align 8
  %12 = load i8*, i8** %in.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr11, i8** %in.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = zext i8 %13 to i64
  %shl13 = shl i64 %conv12, 24
  store i64 %shl13, i64* %l, align 8
  %14 = load i8*, i8** %in.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr14, i8** %in.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv15 = zext i8 %15 to i64
  %shl16 = shl i64 %conv15, 16
  %16 = load i64, i64* %l, align 8
  %or17 = or i64 %16, %shl16
  store i64 %or17, i64* %l, align 8
  %17 = load i8*, i8** %in.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr18, i8** %in.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv19 = zext i8 %18 to i64
  %shl20 = shl i64 %conv19, 8
  %19 = load i64, i64* %l, align 8
  %or21 = or i64 %19, %shl20
  store i64 %or21, i64* %l, align 8
  %20 = load i8*, i8** %in.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr22, i8** %in.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv23 = zext i8 %21 to i64
  %22 = load i64, i64* %l, align 8
  %or24 = or i64 %22, %conv23
  store i64 %or24, i64* %l, align 8
  %23 = load i64, i64* %l, align 8
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i32 0, i64 1
  store i64 %23, i64* %arrayidx25, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %d, i32 0, i32 0
  %24 = load %struct.bf_key_st*, %struct.bf_key_st** %ks.addr, align 8
  %25 = load i32, i32* %encrypt.addr, align 4
  call void @BF_encrypt(i64* %arraydecay, %struct.bf_key_st* %24, i32 %25)
  %arrayidx26 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i32 0, i64 0
  %26 = load i64, i64* %arrayidx26, align 8
  store i64 %26, i64* %l, align 8
  %27 = load i64, i64* %l, align 8
  %shr = lshr i64 %27, 24
  %and = and i64 %shr, 255
  %conv27 = trunc i64 %and to i8
  %28 = load i8*, i8** %out.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr28, i8** %out.addr, align 8
  store i8 %conv27, i8* %28, align 1
  %29 = load i64, i64* %l, align 8
  %shr29 = lshr i64 %29, 16
  %and30 = and i64 %shr29, 255
  %conv31 = trunc i64 %and30 to i8
  %30 = load i8*, i8** %out.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr32, i8** %out.addr, align 8
  store i8 %conv31, i8* %30, align 1
  %31 = load i64, i64* %l, align 8
  %shr33 = lshr i64 %31, 8
  %and34 = and i64 %shr33, 255
  %conv35 = trunc i64 %and34 to i8
  %32 = load i8*, i8** %out.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr36, i8** %out.addr, align 8
  store i8 %conv35, i8* %32, align 1
  %33 = load i64, i64* %l, align 8
  %and37 = and i64 %33, 255
  %conv38 = trunc i64 %and37 to i8
  %34 = load i8*, i8** %out.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr39, i8** %out.addr, align 8
  store i8 %conv38, i8* %34, align 1
  %arrayidx40 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i32 0, i64 1
  %35 = load i64, i64* %arrayidx40, align 8
  store i64 %35, i64* %l, align 8
  %36 = load i64, i64* %l, align 8
  %shr41 = lshr i64 %36, 24
  %and42 = and i64 %shr41, 255
  %conv43 = trunc i64 %and42 to i8
  %37 = load i8*, i8** %out.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr44, i8** %out.addr, align 8
  store i8 %conv43, i8* %37, align 1
  %38 = load i64, i64* %l, align 8
  %shr45 = lshr i64 %38, 16
  %and46 = and i64 %shr45, 255
  %conv47 = trunc i64 %and46 to i8
  %39 = load i8*, i8** %out.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr48, i8** %out.addr, align 8
  store i8 %conv47, i8* %39, align 1
  %40 = load i64, i64* %l, align 8
  %shr49 = lshr i64 %40, 8
  %and50 = and i64 %shr49, 255
  %conv51 = trunc i64 %and50 to i8
  %41 = load i8*, i8** %out.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr52, i8** %out.addr, align 8
  store i8 %conv51, i8* %41, align 1
  %42 = load i64, i64* %l, align 8
  %and53 = and i64 %42, 255
  %conv54 = trunc i64 %and53 to i8
  %43 = load i8*, i8** %out.addr, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr55, i8** %out.addr, align 8
  store i8 %conv54, i8* %43, align 1
  %arrayidx56 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i32 0, i64 1
  store i64 0, i64* %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i32 0, i64 0
  store i64 0, i64* %arrayidx57, align 8
  store i64 0, i64* %l, align 8
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
