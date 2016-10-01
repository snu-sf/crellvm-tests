; ModuleID = './MultiSource.Benchmarks.MiBench/176.automotive-bitcount.bitcnt_3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@bits = internal global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: nounwind uwtable
define i32 @ntbl_bitcount(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 15
  %conv = trunc i64 %and to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %1 to i32
  %2 = load i64, i64* %x.addr, align 8
  %and2 = and i64 %2, 240
  %shr = lshr i64 %and2, 4
  %conv3 = trunc i64 %shr to i32
  %idxprom4 = sext i32 %conv3 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom4
  %3 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %3 to i32
  %add = add nsw i32 %conv1, %conv6
  %4 = load i64, i64* %x.addr, align 8
  %and7 = and i64 %4, 3840
  %shr8 = lshr i64 %and7, 8
  %conv9 = trunc i64 %shr8 to i32
  %idxprom10 = sext i32 %conv9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom10
  %5 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %5 to i32
  %add13 = add nsw i32 %add, %conv12
  %6 = load i64, i64* %x.addr, align 8
  %and14 = and i64 %6, 61440
  %shr15 = lshr i64 %and14, 12
  %conv16 = trunc i64 %shr15 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom17
  %7 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %7 to i32
  %add20 = add nsw i32 %add13, %conv19
  %8 = load i64, i64* %x.addr, align 8
  %and21 = and i64 %8, 983040
  %shr22 = lshr i64 %and21, 16
  %conv23 = trunc i64 %shr22 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom24
  %9 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %9 to i32
  %add27 = add nsw i32 %add20, %conv26
  %10 = load i64, i64* %x.addr, align 8
  %and28 = and i64 %10, 15728640
  %shr29 = lshr i64 %and28, 20
  %conv30 = trunc i64 %shr29 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom31
  %11 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %11 to i32
  %add34 = add nsw i32 %add27, %conv33
  %12 = load i64, i64* %x.addr, align 8
  %and35 = and i64 %12, 251658240
  %shr36 = lshr i64 %and35, 24
  %conv37 = trunc i64 %shr36 to i32
  %idxprom38 = sext i32 %conv37 to i64
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom38
  %13 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %13 to i32
  %add41 = add nsw i32 %add34, %conv40
  %14 = load i64, i64* %x.addr, align 8
  %and42 = and i64 %14, 4026531840
  %shr43 = lshr i64 %and42, 28
  %conv44 = trunc i64 %shr43 to i32
  %idxprom45 = sext i32 %conv44 to i64
  %arrayidx46 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom45
  %15 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %15 to i32
  %add48 = add nsw i32 %add41, %conv47
  ret i32 %add48
}

; Function Attrs: nounwind uwtable
define i32 @BW_btbl_bitcount(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %xi = alloca i32, align 4
  %U = alloca %union.anon, align 4
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %xi, align 4
  %1 = load i32, i32* %xi, align 4
  %y = bitcast %union.anon* %U to i32*
  store i32 %1, i32* %y, align 4
  %ch = bitcast %union.anon* %U to [4 x i8]*
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %ch, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %ch3 = bitcast %union.anon* %U to [4 x i8]*
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %ch3, i32 0, i64 1
  %4 = load i8, i8* %arrayidx4, align 1
  %idxprom5 = zext i8 %4 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom5
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %5 to i32
  %add = add nsw i32 %conv2, %conv7
  %ch8 = bitcast %union.anon* %U to [4 x i8]*
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %ch8, i32 0, i64 3
  %6 = load i8, i8* %arrayidx9, align 1
  %idxprom10 = zext i8 %6 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom10
  %7 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %7 to i32
  %add13 = add nsw i32 %add, %conv12
  %ch14 = bitcast %union.anon* %U to [4 x i8]*
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %ch14, i32 0, i64 2
  %8 = load i8, i8* %arrayidx15, align 1
  %idxprom16 = zext i8 %8 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom16
  %9 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %9 to i32
  %add19 = add nsw i32 %add13, %conv18
  ret i32 %add19
}

; Function Attrs: nounwind uwtable
define i32 @AR_btbl_bitcount(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %xi = alloca i32, align 4
  %Ptr = alloca i8*, align 8
  %Accu = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %xi, align 4
  %1 = bitcast i32* %xi to i8*
  store i8* %1, i8** %Ptr, align 8
  %2 = load i8*, i8** %Ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %Ptr, align 8
  %3 = load i8, i8* %2, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %4 to i32
  store i32 %conv1, i32* %Accu, align 4
  %5 = load i8*, i8** %Ptr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %Ptr, align 8
  %6 = load i8, i8* %5, align 1
  %idxprom3 = zext i8 %6 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %8 = load i32, i32* %Accu, align 4
  %add = add nsw i32 %8, %conv5
  store i32 %add, i32* %Accu, align 4
  %9 = load i8*, i8** %Ptr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr6, i8** %Ptr, align 8
  %10 = load i8, i8* %9, align 1
  %idxprom7 = zext i8 %10 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom7
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  %12 = load i32, i32* %Accu, align 4
  %add10 = add nsw i32 %12, %conv9
  store i32 %add10, i32* %Accu, align 4
  %13 = load i8*, i8** %Ptr, align 8
  %14 = load i8, i8* %13, align 1
  %idxprom11 = zext i8 %14 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i32 0, i64 %idxprom11
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %16 = load i32, i32* %Accu, align 4
  %add14 = add nsw i32 %16, %conv13
  store i32 %add14, i32* %Accu, align 4
  %17 = load i32, i32* %Accu, align 4
  ret i32 %17
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
