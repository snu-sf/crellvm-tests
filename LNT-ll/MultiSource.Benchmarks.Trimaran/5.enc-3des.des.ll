; ModuleID = './MultiSource.Benchmarks.Trimaran/5.enc-3des.des.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.des_context = type { [32 x i64], [32 x i64] }
%struct.des3_context = type { [96 x i64], [96 x i64] }

@SB1 = global [64 x i64] [i64 16843776, i64 0, i64 65536, i64 16843780, i64 16842756, i64 66564, i64 4, i64 65536, i64 1024, i64 16843776, i64 16843780, i64 1024, i64 16778244, i64 16842756, i64 16777216, i64 4, i64 1028, i64 16778240, i64 16778240, i64 66560, i64 66560, i64 16842752, i64 16842752, i64 16778244, i64 65540, i64 16777220, i64 16777220, i64 65540, i64 0, i64 1028, i64 66564, i64 16777216, i64 65536, i64 16843780, i64 4, i64 16842752, i64 16843776, i64 16777216, i64 16777216, i64 1024, i64 16842756, i64 65536, i64 66560, i64 16777220, i64 1024, i64 4, i64 16778244, i64 66564, i64 16843780, i64 65540, i64 16842752, i64 16778244, i64 16777220, i64 1028, i64 66564, i64 16843776, i64 1028, i64 16778240, i64 16778240, i64 0, i64 65540, i64 66560, i64 0, i64 16842756], align 16
@LHs = internal global [16 x i64] [i64 0, i64 1, i64 256, i64 257, i64 65536, i64 65537, i64 65792, i64 65793, i64 16777216, i64 16777217, i64 16777472, i64 16777473, i64 16842752, i64 16842753, i64 16843008, i64 16843009], align 16
@RHs = internal global [16 x i64] [i64 0, i64 16777216, i64 65536, i64 16842752, i64 256, i64 16777472, i64 65792, i64 16843008, i64 1, i64 16777217, i64 65537, i64 16842753, i64 257, i64 16777473, i64 65793, i64 16843009], align 16
@SB8 = internal global [64 x i64] [i64 268439616, i64 4096, i64 262144, i64 268701760, i64 268435456, i64 268439616, i64 64, i64 268435456, i64 262208, i64 268697600, i64 268701760, i64 266240, i64 268701696, i64 266304, i64 4096, i64 64, i64 268697600, i64 268435520, i64 268439552, i64 4160, i64 266240, i64 262208, i64 268697664, i64 268701696, i64 4160, i64 0, i64 0, i64 268697664, i64 268435520, i64 268439552, i64 266304, i64 262144, i64 266304, i64 262144, i64 268701696, i64 4096, i64 64, i64 268697664, i64 4096, i64 266304, i64 268439552, i64 64, i64 268435520, i64 268697600, i64 268697664, i64 268435456, i64 262144, i64 268439616, i64 0, i64 268701760, i64 262208, i64 268435520, i64 268697600, i64 268439552, i64 268439616, i64 0, i64 268701760, i64 266240, i64 266240, i64 4160, i64 4160, i64 262208, i64 268435456, i64 268701696], align 16
@SB6 = internal global [64 x i64] [i64 536870928, i64 541065216, i64 16384, i64 541081616, i64 541065216, i64 16, i64 541081616, i64 4194304, i64 536887296, i64 4210704, i64 4194304, i64 536870928, i64 4194320, i64 536887296, i64 536870912, i64 16400, i64 0, i64 4194320, i64 536887312, i64 16384, i64 4210688, i64 536887312, i64 16, i64 541065232, i64 541065232, i64 0, i64 4210704, i64 541081600, i64 16400, i64 4210688, i64 541081600, i64 536870912, i64 536887296, i64 16, i64 541065232, i64 4210688, i64 541081616, i64 4194304, i64 16400, i64 536870928, i64 4194304, i64 536887296, i64 536870912, i64 16400, i64 536870928, i64 541081616, i64 4210688, i64 541065216, i64 4210704, i64 541081600, i64 0, i64 541065232, i64 16, i64 16384, i64 541065216, i64 4210704, i64 16384, i64 4194320, i64 536887312, i64 0, i64 541081600, i64 536870912, i64 4194320, i64 536887312], align 16
@SB4 = internal global [64 x i64] [i64 8396801, i64 8321, i64 8321, i64 128, i64 8396928, i64 8388737, i64 8388609, i64 8193, i64 0, i64 8396800, i64 8396800, i64 8396929, i64 129, i64 0, i64 8388736, i64 8388609, i64 1, i64 8192, i64 8388608, i64 8396801, i64 128, i64 8388608, i64 8193, i64 8320, i64 8388737, i64 1, i64 8320, i64 8388736, i64 8192, i64 8396928, i64 8396929, i64 129, i64 8388736, i64 8388609, i64 8396800, i64 8396929, i64 129, i64 0, i64 0, i64 8396800, i64 8320, i64 8388736, i64 8388737, i64 1, i64 8396801, i64 8321, i64 8321, i64 128, i64 8396929, i64 129, i64 1, i64 8192, i64 8388609, i64 8193, i64 8396928, i64 8388737, i64 8193, i64 8320, i64 8388608, i64 8396801, i64 128, i64 8388608, i64 8192, i64 8396928], align 16
@SB2 = internal global [64 x i64] [i64 2148565024, i64 2147516416, i64 32768, i64 1081376, i64 1048576, i64 32, i64 2148532256, i64 2147516448, i64 2147483680, i64 2148565024, i64 2148564992, i64 2147483648, i64 2147516416, i64 1048576, i64 32, i64 2148532256, i64 1081344, i64 1048608, i64 2147516448, i64 0, i64 2147483648, i64 32768, i64 1081376, i64 2148532224, i64 1048608, i64 2147483680, i64 0, i64 1081344, i64 32800, i64 2148564992, i64 2148532224, i64 32800, i64 0, i64 1081376, i64 2148532256, i64 1048576, i64 2147516448, i64 2148532224, i64 2148564992, i64 32768, i64 2148532224, i64 2147516416, i64 32, i64 2148565024, i64 1081376, i64 32, i64 32768, i64 2147483648, i64 32800, i64 2148564992, i64 1048576, i64 2147483680, i64 1048608, i64 2147516448, i64 2147483680, i64 1048608, i64 1081344, i64 0, i64 2147516416, i64 32800, i64 2147483648, i64 2148532256, i64 2148565024, i64 1081344], align 16
@SB7 = internal global [64 x i64] [i64 2097152, i64 69206018, i64 67110914, i64 0, i64 2048, i64 67110914, i64 2099202, i64 69208064, i64 69208066, i64 2097152, i64 0, i64 67108866, i64 2, i64 67108864, i64 69206018, i64 2050, i64 67110912, i64 2099202, i64 2097154, i64 67110912, i64 67108866, i64 69206016, i64 69208064, i64 2097154, i64 69206016, i64 2048, i64 2050, i64 69208066, i64 2099200, i64 2, i64 67108864, i64 2099200, i64 67108864, i64 2099200, i64 2097152, i64 67110914, i64 67110914, i64 69206018, i64 69206018, i64 2, i64 2097154, i64 67108864, i64 67110912, i64 2097152, i64 69208064, i64 2050, i64 2099202, i64 69208064, i64 2050, i64 67108866, i64 69208066, i64 69206016, i64 2099200, i64 0, i64 2, i64 69208066, i64 0, i64 2099202, i64 69206016, i64 2048, i64 67108866, i64 67110912, i64 2048, i64 2097154], align 16
@SB5 = internal global [64 x i64] [i64 256, i64 34078976, i64 34078720, i64 1107296512, i64 524288, i64 256, i64 1073741824, i64 34078720, i64 1074266368, i64 524288, i64 33554688, i64 1074266368, i64 1107296512, i64 1107820544, i64 524544, i64 1073741824, i64 33554432, i64 1074266112, i64 1074266112, i64 0, i64 1073742080, i64 1107820800, i64 1107820800, i64 33554688, i64 1107820544, i64 1073742080, i64 0, i64 1107296256, i64 34078976, i64 33554432, i64 1107296256, i64 524544, i64 524288, i64 1107296512, i64 256, i64 33554432, i64 1073741824, i64 34078720, i64 1107296512, i64 1074266368, i64 33554688, i64 1073741824, i64 1107820544, i64 34078976, i64 1074266368, i64 256, i64 33554432, i64 1107820544, i64 1107820800, i64 524544, i64 1107296256, i64 1107820800, i64 34078720, i64 0, i64 1074266112, i64 1107296256, i64 524544, i64 33554688, i64 1073742080, i64 524288, i64 0, i64 1074266112, i64 34078976, i64 1073742080], align 16
@SB3 = internal global [64 x i64] [i64 520, i64 134349312, i64 0, i64 134348808, i64 134218240, i64 0, i64 131592, i64 134218240, i64 131080, i64 134217736, i64 134217736, i64 131072, i64 134349320, i64 131080, i64 134348800, i64 520, i64 134217728, i64 8, i64 134349312, i64 512, i64 131584, i64 134348800, i64 134348808, i64 131592, i64 134218248, i64 131584, i64 131072, i64 134218248, i64 8, i64 134349320, i64 512, i64 134217728, i64 134349312, i64 134217728, i64 131080, i64 520, i64 131072, i64 134349312, i64 134218240, i64 0, i64 512, i64 131080, i64 134349320, i64 134218240, i64 134217736, i64 512, i64 0, i64 134348808, i64 134218248, i64 131072, i64 134217728, i64 134349320, i64 8, i64 131592, i64 131584, i64 134217736, i64 134348800, i64 134218248, i64 520, i64 134348800, i64 131592, i64 8, i64 134348808, i64 131584], align 16
@.str = private unnamed_addr constant [44 x i8] c"\0A Triple-DES Monte Carlo Test (ECB mode) - \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"encryption\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"decryption\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" Test %d, key size = %3d bits: \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@DES3_init = internal global [8 x i8] c"Now is t", align 1
@DES3_keys = internal global [3 x [8 x i8]] [[8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"#Eg\89\AB\CD\EF\01", [8 x i8] c"Eg\89\AB\CD\EF\01#"], align 16
@DES3_enc_test = internal global [3 x [8 x i8]] [[8 x i8] c"j*\19\F4\1E\CA\85K", [8 x i8] c"\03\E6\9F[\FAX\EBB", [8 x i8] c"\DD\17\E8\B8\B47\D22"], align 16
@DES3_dec_test = internal global [3 x [8 x i8]] [[8 x i8] c"\CD\D6O/\94'\C1]", [8 x i8] c"i\96\C8\FAG\A2\AB\EB", [8 x i8] c"\83%9vD\09\1A\0A"], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"passed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @des_main_ks(i64* %SK, i8* %key) #0 {
entry:
  %SK.addr = alloca i64*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %X = alloca i64, align 8
  %Y = alloca i64, align 8
  %T = alloca i64, align 8
  store i64* %SK, i64** %SK.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 24
  %2 = load i8*, i8** %key.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 16
  %or = or i64 %shl, %shl3
  %4 = load i8*, i8** %key.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 8
  %or7 = or i64 %or, %shl6
  %6 = load i8*, i8** %key.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i64
  %or10 = or i64 %or7, %conv9
  store i64 %or10, i64* %X, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i64
  %shl13 = shl i64 %conv12, 24
  %10 = load i8*, i8** %key.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %11 to i64
  %shl16 = shl i64 %conv15, 16
  %or17 = or i64 %shl13, %shl16
  %12 = load i8*, i8** %key.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i64
  %shl20 = shl i64 %conv19, 8
  %or21 = or i64 %or17, %shl20
  %14 = load i8*, i8** %key.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %15 to i64
  %or24 = or i64 %or21, %conv23
  store i64 %or24, i64* %Y, align 8
  %16 = load i64, i64* %Y, align 8
  %shr = lshr i64 %16, 4
  %17 = load i64, i64* %X, align 8
  %xor = xor i64 %shr, %17
  %and = and i64 %xor, 252645135
  store i64 %and, i64* %T, align 8
  %18 = load i64, i64* %T, align 8
  %19 = load i64, i64* %X, align 8
  %xor25 = xor i64 %19, %18
  store i64 %xor25, i64* %X, align 8
  %20 = load i64, i64* %T, align 8
  %shl26 = shl i64 %20, 4
  %21 = load i64, i64* %Y, align 8
  %xor27 = xor i64 %21, %shl26
  store i64 %xor27, i64* %Y, align 8
  %22 = load i64, i64* %Y, align 8
  %23 = load i64, i64* %X, align 8
  %xor28 = xor i64 %22, %23
  %and29 = and i64 %xor28, 269488144
  store i64 %and29, i64* %T, align 8
  %24 = load i64, i64* %T, align 8
  %25 = load i64, i64* %X, align 8
  %xor30 = xor i64 %25, %24
  store i64 %xor30, i64* %X, align 8
  %26 = load i64, i64* %T, align 8
  %27 = load i64, i64* %Y, align 8
  %xor31 = xor i64 %27, %26
  store i64 %xor31, i64* %Y, align 8
  %28 = load i64, i64* %X, align 8
  %and32 = and i64 %28, 15
  %arrayidx33 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i32 0, i64 %and32
  %29 = load i64, i64* %arrayidx33, align 8
  %shl34 = shl i64 %29, 3
  %30 = load i64, i64* %X, align 8
  %shr35 = lshr i64 %30, 8
  %and36 = and i64 %shr35, 15
  %arrayidx37 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i32 0, i64 %and36
  %31 = load i64, i64* %arrayidx37, align 8
  %shl38 = shl i64 %31, 2
  %or39 = or i64 %shl34, %shl38
  %32 = load i64, i64* %X, align 8
  %shr40 = lshr i64 %32, 16
  %and41 = and i64 %shr40, 15
  %arrayidx42 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i32 0, i64 %and41
  %33 = load i64, i64* %arrayidx42, align 8
  %shl43 = shl i64 %33, 1
  %or44 = or i64 %or39, %shl43
  %34 = load i64, i64* %X, align 8
  %shr45 = lshr i64 %34, 24
  %and46 = and i64 %shr45, 15
  %arrayidx47 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i32 0, i64 %and46
  %35 = load i64, i64* %arrayidx47, align 8
  %or48 = or i64 %or44, %35
  %36 = load i64, i64* %X, align 8
  %shr49 = lshr i64 %36, 5
  %and50 = and i64 %shr49, 15
  %arrayidx51 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i32 0, i64 %and50
  %37 = load i64, i64* %arrayidx51, align 8
  %shl52 = shl i64 %37, 7
  %or53 = or i64 %or48, %shl52
  %38 = load i64, i64* %X, align 8
  %shr54 = lshr i64 %38, 13
  %and55 = and i64 %shr54, 15
  %arrayidx56 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i32 0, i64 %and55
  %39 = load i64, i64* %arrayidx56, align 8
  %shl57 = shl i64 %39, 6
  %or58 = or i64 %or53, %shl57
  %40 = load i64, i64* %X, align 8
  %shr59 = lshr i64 %40, 21
  %and60 = and i64 %shr59, 15
  %arrayidx61 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i32 0, i64 %and60
  %41 = load i64, i64* %arrayidx61, align 8
  %shl62 = shl i64 %41, 5
  %or63 = or i64 %or58, %shl62
  %42 = load i64, i64* %X, align 8
  %shr64 = lshr i64 %42, 29
  %and65 = and i64 %shr64, 15
  %arrayidx66 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i32 0, i64 %and65
  %43 = load i64, i64* %arrayidx66, align 8
  %shl67 = shl i64 %43, 4
  %or68 = or i64 %or63, %shl67
  store i64 %or68, i64* %X, align 8
  %44 = load i64, i64* %Y, align 8
  %shr69 = lshr i64 %44, 1
  %and70 = and i64 %shr69, 15
  %arrayidx71 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i32 0, i64 %and70
  %45 = load i64, i64* %arrayidx71, align 8
  %shl72 = shl i64 %45, 3
  %46 = load i64, i64* %Y, align 8
  %shr73 = lshr i64 %46, 9
  %and74 = and i64 %shr73, 15
  %arrayidx75 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i32 0, i64 %and74
  %47 = load i64, i64* %arrayidx75, align 8
  %shl76 = shl i64 %47, 2
  %or77 = or i64 %shl72, %shl76
  %48 = load i64, i64* %Y, align 8
  %shr78 = lshr i64 %48, 17
  %and79 = and i64 %shr78, 15
  %arrayidx80 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i32 0, i64 %and79
  %49 = load i64, i64* %arrayidx80, align 8
  %shl81 = shl i64 %49, 1
  %or82 = or i64 %or77, %shl81
  %50 = load i64, i64* %Y, align 8
  %shr83 = lshr i64 %50, 25
  %and84 = and i64 %shr83, 15
  %arrayidx85 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i32 0, i64 %and84
  %51 = load i64, i64* %arrayidx85, align 8
  %or86 = or i64 %or82, %51
  %52 = load i64, i64* %Y, align 8
  %shr87 = lshr i64 %52, 4
  %and88 = and i64 %shr87, 15
  %arrayidx89 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i32 0, i64 %and88
  %53 = load i64, i64* %arrayidx89, align 8
  %shl90 = shl i64 %53, 7
  %or91 = or i64 %or86, %shl90
  %54 = load i64, i64* %Y, align 8
  %shr92 = lshr i64 %54, 12
  %and93 = and i64 %shr92, 15
  %arrayidx94 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i32 0, i64 %and93
  %55 = load i64, i64* %arrayidx94, align 8
  %shl95 = shl i64 %55, 6
  %or96 = or i64 %or91, %shl95
  %56 = load i64, i64* %Y, align 8
  %shr97 = lshr i64 %56, 20
  %and98 = and i64 %shr97, 15
  %arrayidx99 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i32 0, i64 %and98
  %57 = load i64, i64* %arrayidx99, align 8
  %shl100 = shl i64 %57, 5
  %or101 = or i64 %or96, %shl100
  %58 = load i64, i64* %Y, align 8
  %shr102 = lshr i64 %58, 28
  %and103 = and i64 %shr102, 15
  %arrayidx104 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i32 0, i64 %and103
  %59 = load i64, i64* %arrayidx104, align 8
  %shl105 = shl i64 %59, 4
  %or106 = or i64 %or101, %shl105
  store i64 %or106, i64* %Y, align 8
  %60 = load i64, i64* %X, align 8
  %and107 = and i64 %60, 268435455
  store i64 %and107, i64* %X, align 8
  %61 = load i64, i64* %Y, align 8
  %and108 = and i64 %61, 268435455
  store i64 %and108, i64* %Y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %62 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %62, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %i, align 4
  %cmp110 = icmp slt i32 %63, 2
  br i1 %cmp110, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %64 = load i32, i32* %i, align 4
  %cmp112 = icmp eq i32 %64, 8
  br i1 %cmp112, label %if.then, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %lor.lhs.false
  %65 = load i32, i32* %i, align 4
  %cmp115 = icmp eq i32 %65, 15
  br i1 %cmp115, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.114, %lor.lhs.false, %for.body
  %66 = load i64, i64* %X, align 8
  %shl117 = shl i64 %66, 1
  %67 = load i64, i64* %X, align 8
  %shr118 = lshr i64 %67, 27
  %or119 = or i64 %shl117, %shr118
  %and120 = and i64 %or119, 268435455
  store i64 %and120, i64* %X, align 8
  %68 = load i64, i64* %Y, align 8
  %shl121 = shl i64 %68, 1
  %69 = load i64, i64* %Y, align 8
  %shr122 = lshr i64 %69, 27
  %or123 = or i64 %shl121, %shr122
  %and124 = and i64 %or123, 268435455
  store i64 %and124, i64* %Y, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.114
  %70 = load i64, i64* %X, align 8
  %shl125 = shl i64 %70, 2
  %71 = load i64, i64* %X, align 8
  %shr126 = lshr i64 %71, 26
  %or127 = or i64 %shl125, %shr126
  %and128 = and i64 %or127, 268435455
  store i64 %and128, i64* %X, align 8
  %72 = load i64, i64* %Y, align 8
  %shl129 = shl i64 %72, 2
  %73 = load i64, i64* %Y, align 8
  %shr130 = lshr i64 %73, 26
  %or131 = or i64 %shl129, %shr130
  %and132 = and i64 %or131, 268435455
  store i64 %and132, i64* %Y, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %74 = load i64, i64* %X, align 8
  %shl133 = shl i64 %74, 4
  %and134 = and i64 %shl133, 603979776
  %75 = load i64, i64* %X, align 8
  %shl135 = shl i64 %75, 28
  %and136 = and i64 %shl135, 268435456
  %or137 = or i64 %and134, %and136
  %76 = load i64, i64* %X, align 8
  %shl138 = shl i64 %76, 14
  %and139 = and i64 %shl138, 134217728
  %or140 = or i64 %or137, %and139
  %77 = load i64, i64* %X, align 8
  %shl141 = shl i64 %77, 18
  %and142 = and i64 %shl141, 34078720
  %or143 = or i64 %or140, %and142
  %78 = load i64, i64* %X, align 8
  %shl144 = shl i64 %78, 6
  %and145 = and i64 %shl144, 16777216
  %or146 = or i64 %or143, %and145
  %79 = load i64, i64* %X, align 8
  %shl147 = shl i64 %79, 9
  %and148 = and i64 %shl147, 2097152
  %or149 = or i64 %or146, %and148
  %80 = load i64, i64* %X, align 8
  %shr150 = lshr i64 %80, 1
  %and151 = and i64 %shr150, 1048576
  %or152 = or i64 %or149, %and151
  %81 = load i64, i64* %X, align 8
  %shl153 = shl i64 %81, 10
  %and154 = and i64 %shl153, 262144
  %or155 = or i64 %or152, %and154
  %82 = load i64, i64* %X, align 8
  %shl156 = shl i64 %82, 2
  %and157 = and i64 %shl156, 131072
  %or158 = or i64 %or155, %and157
  %83 = load i64, i64* %X, align 8
  %shr159 = lshr i64 %83, 10
  %and160 = and i64 %shr159, 65536
  %or161 = or i64 %or158, %and160
  %84 = load i64, i64* %Y, align 8
  %shr162 = lshr i64 %84, 13
  %and163 = and i64 %shr162, 8192
  %or164 = or i64 %or161, %and163
  %85 = load i64, i64* %Y, align 8
  %shr165 = lshr i64 %85, 4
  %and166 = and i64 %shr165, 4096
  %or167 = or i64 %or164, %and166
  %86 = load i64, i64* %Y, align 8
  %shl168 = shl i64 %86, 6
  %and169 = and i64 %shl168, 2048
  %or170 = or i64 %or167, %and169
  %87 = load i64, i64* %Y, align 8
  %shr171 = lshr i64 %87, 1
  %and172 = and i64 %shr171, 1024
  %or173 = or i64 %or170, %and172
  %88 = load i64, i64* %Y, align 8
  %shr174 = lshr i64 %88, 14
  %and175 = and i64 %shr174, 512
  %or176 = or i64 %or173, %and175
  %89 = load i64, i64* %Y, align 8
  %and177 = and i64 %89, 256
  %or178 = or i64 %or176, %and177
  %90 = load i64, i64* %Y, align 8
  %shr179 = lshr i64 %90, 5
  %and180 = and i64 %shr179, 32
  %or181 = or i64 %or178, %and180
  %91 = load i64, i64* %Y, align 8
  %shr182 = lshr i64 %91, 10
  %and183 = and i64 %shr182, 16
  %or184 = or i64 %or181, %and183
  %92 = load i64, i64* %Y, align 8
  %shr185 = lshr i64 %92, 3
  %and186 = and i64 %shr185, 8
  %or187 = or i64 %or184, %and186
  %93 = load i64, i64* %Y, align 8
  %shr188 = lshr i64 %93, 18
  %and189 = and i64 %shr188, 4
  %or190 = or i64 %or187, %and189
  %94 = load i64, i64* %Y, align 8
  %shr191 = lshr i64 %94, 26
  %and192 = and i64 %shr191, 2
  %or193 = or i64 %or190, %and192
  %95 = load i64, i64* %Y, align 8
  %shr194 = lshr i64 %95, 24
  %and195 = and i64 %shr194, 1
  %or196 = or i64 %or193, %and195
  %96 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %incdec.ptr, i64** %SK.addr, align 8
  store i64 %or196, i64* %96, align 8
  %97 = load i64, i64* %X, align 8
  %shl197 = shl i64 %97, 15
  %and198 = and i64 %shl197, 536870912
  %98 = load i64, i64* %X, align 8
  %shl199 = shl i64 %98, 17
  %and200 = and i64 %shl199, 268435456
  %or201 = or i64 %and198, %and200
  %99 = load i64, i64* %X, align 8
  %shl202 = shl i64 %99, 10
  %and203 = and i64 %shl202, 134217728
  %or204 = or i64 %or201, %and203
  %100 = load i64, i64* %X, align 8
  %shl205 = shl i64 %100, 22
  %and206 = and i64 %shl205, 67108864
  %or207 = or i64 %or204, %and206
  %101 = load i64, i64* %X, align 8
  %shr208 = lshr i64 %101, 2
  %and209 = and i64 %shr208, 33554432
  %or210 = or i64 %or207, %and209
  %102 = load i64, i64* %X, align 8
  %shl211 = shl i64 %102, 1
  %and212 = and i64 %shl211, 16777216
  %or213 = or i64 %or210, %and212
  %103 = load i64, i64* %X, align 8
  %shl214 = shl i64 %103, 16
  %and215 = and i64 %shl214, 2097152
  %or216 = or i64 %or213, %and215
  %104 = load i64, i64* %X, align 8
  %shl217 = shl i64 %104, 11
  %and218 = and i64 %shl217, 1048576
  %or219 = or i64 %or216, %and218
  %105 = load i64, i64* %X, align 8
  %shl220 = shl i64 %105, 3
  %and221 = and i64 %shl220, 524288
  %or222 = or i64 %or219, %and221
  %106 = load i64, i64* %X, align 8
  %shr223 = lshr i64 %106, 6
  %and224 = and i64 %shr223, 262144
  %or225 = or i64 %or222, %and224
  %107 = load i64, i64* %X, align 8
  %shl226 = shl i64 %107, 15
  %and227 = and i64 %shl226, 131072
  %or228 = or i64 %or225, %and227
  %108 = load i64, i64* %X, align 8
  %shr229 = lshr i64 %108, 4
  %and230 = and i64 %shr229, 65536
  %or231 = or i64 %or228, %and230
  %109 = load i64, i64* %Y, align 8
  %shr232 = lshr i64 %109, 2
  %and233 = and i64 %shr232, 8192
  %or234 = or i64 %or231, %and233
  %110 = load i64, i64* %Y, align 8
  %shl235 = shl i64 %110, 8
  %and236 = and i64 %shl235, 4096
  %or237 = or i64 %or234, %and236
  %111 = load i64, i64* %Y, align 8
  %shr238 = lshr i64 %111, 14
  %and239 = and i64 %shr238, 2056
  %or240 = or i64 %or237, %and239
  %112 = load i64, i64* %Y, align 8
  %shr241 = lshr i64 %112, 9
  %and242 = and i64 %shr241, 1024
  %or243 = or i64 %or240, %and242
  %113 = load i64, i64* %Y, align 8
  %and244 = and i64 %113, 512
  %or245 = or i64 %or243, %and244
  %114 = load i64, i64* %Y, align 8
  %shl246 = shl i64 %114, 7
  %and247 = and i64 %shl246, 256
  %or248 = or i64 %or245, %and247
  %115 = load i64, i64* %Y, align 8
  %shr249 = lshr i64 %115, 7
  %and250 = and i64 %shr249, 32
  %or251 = or i64 %or248, %and250
  %116 = load i64, i64* %Y, align 8
  %shr252 = lshr i64 %116, 3
  %and253 = and i64 %shr252, 17
  %or254 = or i64 %or251, %and253
  %117 = load i64, i64* %Y, align 8
  %shl255 = shl i64 %117, 2
  %and256 = and i64 %shl255, 4
  %or257 = or i64 %or254, %and256
  %118 = load i64, i64* %Y, align 8
  %shr258 = lshr i64 %118, 21
  %and259 = and i64 %shr258, 2
  %or260 = or i64 %or257, %and259
  %119 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr261 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %incdec.ptr261, i64** %SK.addr, align 8
  store i64 %or260, i64* %119, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %120 = load i32, i32* %i, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @des_set_key(%struct.des_context* %ctx, i8* %key) #0 {
entry:
  %ctx.addr = alloca %struct.des_context*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.des_context* %ctx, %struct.des_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.des_context*, %struct.des_context** %ctx.addr, align 8
  %esk = getelementptr inbounds %struct.des_context, %struct.des_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %esk, i32 0, i32 0
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @des_main_ks(i64* %arraydecay, i8* %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %sub = sub nsw i32 30, %3
  %idxprom = sext i32 %sub to i64
  %4 = load %struct.des_context*, %struct.des_context** %ctx.addr, align 8
  %esk1 = getelementptr inbounds %struct.des_context, %struct.des_context* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [32 x i64], [32 x i64]* %esk1, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.des_context*, %struct.des_context** %ctx.addr, align 8
  %dsk = getelementptr inbounds %struct.des_context, %struct.des_context* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [32 x i64], [32 x i64]* %dsk, i32 0, i64 %idxprom2
  store i64 %5, i64* %arrayidx3, align 8
  %8 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 31, %8
  %idxprom5 = sext i32 %sub4 to i64
  %9 = load %struct.des_context*, %struct.des_context** %ctx.addr, align 8
  %esk6 = getelementptr inbounds %struct.des_context, %struct.des_context* %9, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [32 x i64], [32 x i64]* %esk6, i32 0, i64 %idxprom5
  %10 = load i64, i64* %arrayidx7, align 8
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom8 = sext i32 %add to i64
  %12 = load %struct.des_context*, %struct.des_context** %ctx.addr, align 8
  %dsk9 = getelementptr inbounds %struct.des_context, %struct.des_context* %12, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [32 x i64], [32 x i64]* %dsk9, i32 0, i64 %idxprom8
  store i64 %10, i64* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %13, 2
  store i32 %add11, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @des_crypt(i64* %SK, i8* %input, i8* %output) #0 {
entry:
  %SK.addr = alloca i64*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %X = alloca i64, align 8
  %Y = alloca i64, align 8
  %T = alloca i64, align 8
  store i64* %SK, i64** %SK.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 24
  %2 = load i8*, i8** %input.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 16
  %or = or i64 %shl, %shl3
  %4 = load i8*, i8** %input.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 8
  %or7 = or i64 %or, %shl6
  %6 = load i8*, i8** %input.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i64
  %or10 = or i64 %or7, %conv9
  store i64 %or10, i64* %X, align 8
  %8 = load i8*, i8** %input.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i64
  %shl13 = shl i64 %conv12, 24
  %10 = load i8*, i8** %input.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %11 to i64
  %shl16 = shl i64 %conv15, 16
  %or17 = or i64 %shl13, %shl16
  %12 = load i8*, i8** %input.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i64
  %shl20 = shl i64 %conv19, 8
  %or21 = or i64 %or17, %shl20
  %14 = load i8*, i8** %input.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %15 to i64
  %or24 = or i64 %or21, %conv23
  store i64 %or24, i64* %Y, align 8
  %16 = load i64, i64* %X, align 8
  %shr = lshr i64 %16, 4
  %17 = load i64, i64* %Y, align 8
  %xor = xor i64 %shr, %17
  %and = and i64 %xor, 252645135
  store i64 %and, i64* %T, align 8
  %18 = load i64, i64* %T, align 8
  %19 = load i64, i64* %Y, align 8
  %xor25 = xor i64 %19, %18
  store i64 %xor25, i64* %Y, align 8
  %20 = load i64, i64* %T, align 8
  %shl26 = shl i64 %20, 4
  %21 = load i64, i64* %X, align 8
  %xor27 = xor i64 %21, %shl26
  store i64 %xor27, i64* %X, align 8
  %22 = load i64, i64* %X, align 8
  %shr28 = lshr i64 %22, 16
  %23 = load i64, i64* %Y, align 8
  %xor29 = xor i64 %shr28, %23
  %and30 = and i64 %xor29, 65535
  store i64 %and30, i64* %T, align 8
  %24 = load i64, i64* %T, align 8
  %25 = load i64, i64* %Y, align 8
  %xor31 = xor i64 %25, %24
  store i64 %xor31, i64* %Y, align 8
  %26 = load i64, i64* %T, align 8
  %shl32 = shl i64 %26, 16
  %27 = load i64, i64* %X, align 8
  %xor33 = xor i64 %27, %shl32
  store i64 %xor33, i64* %X, align 8
  %28 = load i64, i64* %Y, align 8
  %shr34 = lshr i64 %28, 2
  %29 = load i64, i64* %X, align 8
  %xor35 = xor i64 %shr34, %29
  %and36 = and i64 %xor35, 858993459
  store i64 %and36, i64* %T, align 8
  %30 = load i64, i64* %T, align 8
  %31 = load i64, i64* %X, align 8
  %xor37 = xor i64 %31, %30
  store i64 %xor37, i64* %X, align 8
  %32 = load i64, i64* %T, align 8
  %shl38 = shl i64 %32, 2
  %33 = load i64, i64* %Y, align 8
  %xor39 = xor i64 %33, %shl38
  store i64 %xor39, i64* %Y, align 8
  %34 = load i64, i64* %Y, align 8
  %shr40 = lshr i64 %34, 8
  %35 = load i64, i64* %X, align 8
  %xor41 = xor i64 %shr40, %35
  %and42 = and i64 %xor41, 16711935
  store i64 %and42, i64* %T, align 8
  %36 = load i64, i64* %T, align 8
  %37 = load i64, i64* %X, align 8
  %xor43 = xor i64 %37, %36
  store i64 %xor43, i64* %X, align 8
  %38 = load i64, i64* %T, align 8
  %shl44 = shl i64 %38, 8
  %39 = load i64, i64* %Y, align 8
  %xor45 = xor i64 %39, %shl44
  store i64 %xor45, i64* %Y, align 8
  %40 = load i64, i64* %Y, align 8
  %shl46 = shl i64 %40, 1
  %41 = load i64, i64* %Y, align 8
  %shr47 = lshr i64 %41, 31
  %or48 = or i64 %shl46, %shr47
  %and49 = and i64 %or48, 4294967295
  store i64 %and49, i64* %Y, align 8
  %42 = load i64, i64* %X, align 8
  %43 = load i64, i64* %Y, align 8
  %xor50 = xor i64 %42, %43
  %and51 = and i64 %xor50, 2863311530
  store i64 %and51, i64* %T, align 8
  %44 = load i64, i64* %T, align 8
  %45 = load i64, i64* %Y, align 8
  %xor52 = xor i64 %45, %44
  store i64 %xor52, i64* %Y, align 8
  %46 = load i64, i64* %T, align 8
  %47 = load i64, i64* %X, align 8
  %xor53 = xor i64 %47, %46
  store i64 %xor53, i64* %X, align 8
  %48 = load i64, i64* %X, align 8
  %shl54 = shl i64 %48, 1
  %49 = load i64, i64* %X, align 8
  %shr55 = lshr i64 %49, 31
  %or56 = or i64 %shl54, %shr55
  %and57 = and i64 %or56, 4294967295
  store i64 %and57, i64* %X, align 8
  %50 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %incdec.ptr, i64** %SK.addr, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %Y, align 8
  %xor58 = xor i64 %51, %52
  store i64 %xor58, i64* %T, align 8
  %53 = load i64, i64* %T, align 8
  %and59 = and i64 %53, 63
  %arrayidx60 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and59
  %54 = load i64, i64* %arrayidx60, align 8
  %55 = load i64, i64* %T, align 8
  %shr61 = lshr i64 %55, 8
  %and62 = and i64 %shr61, 63
  %arrayidx63 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and62
  %56 = load i64, i64* %arrayidx63, align 8
  %xor64 = xor i64 %54, %56
  %57 = load i64, i64* %T, align 8
  %shr65 = lshr i64 %57, 16
  %and66 = and i64 %shr65, 63
  %arrayidx67 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and66
  %58 = load i64, i64* %arrayidx67, align 8
  %xor68 = xor i64 %xor64, %58
  %59 = load i64, i64* %T, align 8
  %shr69 = lshr i64 %59, 24
  %and70 = and i64 %shr69, 63
  %arrayidx71 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and70
  %60 = load i64, i64* %arrayidx71, align 8
  %xor72 = xor i64 %xor68, %60
  %61 = load i64, i64* %X, align 8
  %xor73 = xor i64 %61, %xor72
  store i64 %xor73, i64* %X, align 8
  %62 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %incdec.ptr74, i64** %SK.addr, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %Y, align 8
  %shl75 = shl i64 %64, 28
  %65 = load i64, i64* %Y, align 8
  %shr76 = lshr i64 %65, 4
  %or77 = or i64 %shl75, %shr76
  %xor78 = xor i64 %63, %or77
  store i64 %xor78, i64* %T, align 8
  %66 = load i64, i64* %T, align 8
  %and79 = and i64 %66, 63
  %arrayidx80 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and79
  %67 = load i64, i64* %arrayidx80, align 8
  %68 = load i64, i64* %T, align 8
  %shr81 = lshr i64 %68, 8
  %and82 = and i64 %shr81, 63
  %arrayidx83 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and82
  %69 = load i64, i64* %arrayidx83, align 8
  %xor84 = xor i64 %67, %69
  %70 = load i64, i64* %T, align 8
  %shr85 = lshr i64 %70, 16
  %and86 = and i64 %shr85, 63
  %arrayidx87 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and86
  %71 = load i64, i64* %arrayidx87, align 8
  %xor88 = xor i64 %xor84, %71
  %72 = load i64, i64* %T, align 8
  %shr89 = lshr i64 %72, 24
  %and90 = and i64 %shr89, 63
  %arrayidx91 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and90
  %73 = load i64, i64* %arrayidx91, align 8
  %xor92 = xor i64 %xor88, %73
  %74 = load i64, i64* %X, align 8
  %xor93 = xor i64 %74, %xor92
  store i64 %xor93, i64* %X, align 8
  %75 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %incdec.ptr94, i64** %SK.addr, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %X, align 8
  %xor95 = xor i64 %76, %77
  store i64 %xor95, i64* %T, align 8
  %78 = load i64, i64* %T, align 8
  %and96 = and i64 %78, 63
  %arrayidx97 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and96
  %79 = load i64, i64* %arrayidx97, align 8
  %80 = load i64, i64* %T, align 8
  %shr98 = lshr i64 %80, 8
  %and99 = and i64 %shr98, 63
  %arrayidx100 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and99
  %81 = load i64, i64* %arrayidx100, align 8
  %xor101 = xor i64 %79, %81
  %82 = load i64, i64* %T, align 8
  %shr102 = lshr i64 %82, 16
  %and103 = and i64 %shr102, 63
  %arrayidx104 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and103
  %83 = load i64, i64* %arrayidx104, align 8
  %xor105 = xor i64 %xor101, %83
  %84 = load i64, i64* %T, align 8
  %shr106 = lshr i64 %84, 24
  %and107 = and i64 %shr106, 63
  %arrayidx108 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and107
  %85 = load i64, i64* %arrayidx108, align 8
  %xor109 = xor i64 %xor105, %85
  %86 = load i64, i64* %Y, align 8
  %xor110 = xor i64 %86, %xor109
  store i64 %xor110, i64* %Y, align 8
  %87 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %incdec.ptr111, i64** %SK.addr, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %X, align 8
  %shl112 = shl i64 %89, 28
  %90 = load i64, i64* %X, align 8
  %shr113 = lshr i64 %90, 4
  %or114 = or i64 %shl112, %shr113
  %xor115 = xor i64 %88, %or114
  store i64 %xor115, i64* %T, align 8
  %91 = load i64, i64* %T, align 8
  %and116 = and i64 %91, 63
  %arrayidx117 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and116
  %92 = load i64, i64* %arrayidx117, align 8
  %93 = load i64, i64* %T, align 8
  %shr118 = lshr i64 %93, 8
  %and119 = and i64 %shr118, 63
  %arrayidx120 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and119
  %94 = load i64, i64* %arrayidx120, align 8
  %xor121 = xor i64 %92, %94
  %95 = load i64, i64* %T, align 8
  %shr122 = lshr i64 %95, 16
  %and123 = and i64 %shr122, 63
  %arrayidx124 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and123
  %96 = load i64, i64* %arrayidx124, align 8
  %xor125 = xor i64 %xor121, %96
  %97 = load i64, i64* %T, align 8
  %shr126 = lshr i64 %97, 24
  %and127 = and i64 %shr126, 63
  %arrayidx128 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and127
  %98 = load i64, i64* %arrayidx128, align 8
  %xor129 = xor i64 %xor125, %98
  %99 = load i64, i64* %Y, align 8
  %xor130 = xor i64 %99, %xor129
  store i64 %xor130, i64* %Y, align 8
  %100 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr131 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %incdec.ptr131, i64** %SK.addr, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %Y, align 8
  %xor132 = xor i64 %101, %102
  store i64 %xor132, i64* %T, align 8
  %103 = load i64, i64* %T, align 8
  %and133 = and i64 %103, 63
  %arrayidx134 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and133
  %104 = load i64, i64* %arrayidx134, align 8
  %105 = load i64, i64* %T, align 8
  %shr135 = lshr i64 %105, 8
  %and136 = and i64 %shr135, 63
  %arrayidx137 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and136
  %106 = load i64, i64* %arrayidx137, align 8
  %xor138 = xor i64 %104, %106
  %107 = load i64, i64* %T, align 8
  %shr139 = lshr i64 %107, 16
  %and140 = and i64 %shr139, 63
  %arrayidx141 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and140
  %108 = load i64, i64* %arrayidx141, align 8
  %xor142 = xor i64 %xor138, %108
  %109 = load i64, i64* %T, align 8
  %shr143 = lshr i64 %109, 24
  %and144 = and i64 %shr143, 63
  %arrayidx145 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and144
  %110 = load i64, i64* %arrayidx145, align 8
  %xor146 = xor i64 %xor142, %110
  %111 = load i64, i64* %X, align 8
  %xor147 = xor i64 %111, %xor146
  store i64 %xor147, i64* %X, align 8
  %112 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %incdec.ptr148, i64** %SK.addr, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %Y, align 8
  %shl149 = shl i64 %114, 28
  %115 = load i64, i64* %Y, align 8
  %shr150 = lshr i64 %115, 4
  %or151 = or i64 %shl149, %shr150
  %xor152 = xor i64 %113, %or151
  store i64 %xor152, i64* %T, align 8
  %116 = load i64, i64* %T, align 8
  %and153 = and i64 %116, 63
  %arrayidx154 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and153
  %117 = load i64, i64* %arrayidx154, align 8
  %118 = load i64, i64* %T, align 8
  %shr155 = lshr i64 %118, 8
  %and156 = and i64 %shr155, 63
  %arrayidx157 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and156
  %119 = load i64, i64* %arrayidx157, align 8
  %xor158 = xor i64 %117, %119
  %120 = load i64, i64* %T, align 8
  %shr159 = lshr i64 %120, 16
  %and160 = and i64 %shr159, 63
  %arrayidx161 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and160
  %121 = load i64, i64* %arrayidx161, align 8
  %xor162 = xor i64 %xor158, %121
  %122 = load i64, i64* %T, align 8
  %shr163 = lshr i64 %122, 24
  %and164 = and i64 %shr163, 63
  %arrayidx165 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and164
  %123 = load i64, i64* %arrayidx165, align 8
  %xor166 = xor i64 %xor162, %123
  %124 = load i64, i64* %X, align 8
  %xor167 = xor i64 %124, %xor166
  store i64 %xor167, i64* %X, align 8
  %125 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr168 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %incdec.ptr168, i64** %SK.addr, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %X, align 8
  %xor169 = xor i64 %126, %127
  store i64 %xor169, i64* %T, align 8
  %128 = load i64, i64* %T, align 8
  %and170 = and i64 %128, 63
  %arrayidx171 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and170
  %129 = load i64, i64* %arrayidx171, align 8
  %130 = load i64, i64* %T, align 8
  %shr172 = lshr i64 %130, 8
  %and173 = and i64 %shr172, 63
  %arrayidx174 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and173
  %131 = load i64, i64* %arrayidx174, align 8
  %xor175 = xor i64 %129, %131
  %132 = load i64, i64* %T, align 8
  %shr176 = lshr i64 %132, 16
  %and177 = and i64 %shr176, 63
  %arrayidx178 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and177
  %133 = load i64, i64* %arrayidx178, align 8
  %xor179 = xor i64 %xor175, %133
  %134 = load i64, i64* %T, align 8
  %shr180 = lshr i64 %134, 24
  %and181 = and i64 %shr180, 63
  %arrayidx182 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and181
  %135 = load i64, i64* %arrayidx182, align 8
  %xor183 = xor i64 %xor179, %135
  %136 = load i64, i64* %Y, align 8
  %xor184 = xor i64 %136, %xor183
  store i64 %xor184, i64* %Y, align 8
  %137 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr185 = getelementptr inbounds i64, i64* %137, i32 1
  store i64* %incdec.ptr185, i64** %SK.addr, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %X, align 8
  %shl186 = shl i64 %139, 28
  %140 = load i64, i64* %X, align 8
  %shr187 = lshr i64 %140, 4
  %or188 = or i64 %shl186, %shr187
  %xor189 = xor i64 %138, %or188
  store i64 %xor189, i64* %T, align 8
  %141 = load i64, i64* %T, align 8
  %and190 = and i64 %141, 63
  %arrayidx191 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and190
  %142 = load i64, i64* %arrayidx191, align 8
  %143 = load i64, i64* %T, align 8
  %shr192 = lshr i64 %143, 8
  %and193 = and i64 %shr192, 63
  %arrayidx194 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and193
  %144 = load i64, i64* %arrayidx194, align 8
  %xor195 = xor i64 %142, %144
  %145 = load i64, i64* %T, align 8
  %shr196 = lshr i64 %145, 16
  %and197 = and i64 %shr196, 63
  %arrayidx198 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and197
  %146 = load i64, i64* %arrayidx198, align 8
  %xor199 = xor i64 %xor195, %146
  %147 = load i64, i64* %T, align 8
  %shr200 = lshr i64 %147, 24
  %and201 = and i64 %shr200, 63
  %arrayidx202 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and201
  %148 = load i64, i64* %arrayidx202, align 8
  %xor203 = xor i64 %xor199, %148
  %149 = load i64, i64* %Y, align 8
  %xor204 = xor i64 %149, %xor203
  store i64 %xor204, i64* %Y, align 8
  %150 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr205 = getelementptr inbounds i64, i64* %150, i32 1
  store i64* %incdec.ptr205, i64** %SK.addr, align 8
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %Y, align 8
  %xor206 = xor i64 %151, %152
  store i64 %xor206, i64* %T, align 8
  %153 = load i64, i64* %T, align 8
  %and207 = and i64 %153, 63
  %arrayidx208 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and207
  %154 = load i64, i64* %arrayidx208, align 8
  %155 = load i64, i64* %T, align 8
  %shr209 = lshr i64 %155, 8
  %and210 = and i64 %shr209, 63
  %arrayidx211 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and210
  %156 = load i64, i64* %arrayidx211, align 8
  %xor212 = xor i64 %154, %156
  %157 = load i64, i64* %T, align 8
  %shr213 = lshr i64 %157, 16
  %and214 = and i64 %shr213, 63
  %arrayidx215 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and214
  %158 = load i64, i64* %arrayidx215, align 8
  %xor216 = xor i64 %xor212, %158
  %159 = load i64, i64* %T, align 8
  %shr217 = lshr i64 %159, 24
  %and218 = and i64 %shr217, 63
  %arrayidx219 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and218
  %160 = load i64, i64* %arrayidx219, align 8
  %xor220 = xor i64 %xor216, %160
  %161 = load i64, i64* %X, align 8
  %xor221 = xor i64 %161, %xor220
  store i64 %xor221, i64* %X, align 8
  %162 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr222 = getelementptr inbounds i64, i64* %162, i32 1
  store i64* %incdec.ptr222, i64** %SK.addr, align 8
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %Y, align 8
  %shl223 = shl i64 %164, 28
  %165 = load i64, i64* %Y, align 8
  %shr224 = lshr i64 %165, 4
  %or225 = or i64 %shl223, %shr224
  %xor226 = xor i64 %163, %or225
  store i64 %xor226, i64* %T, align 8
  %166 = load i64, i64* %T, align 8
  %and227 = and i64 %166, 63
  %arrayidx228 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and227
  %167 = load i64, i64* %arrayidx228, align 8
  %168 = load i64, i64* %T, align 8
  %shr229 = lshr i64 %168, 8
  %and230 = and i64 %shr229, 63
  %arrayidx231 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and230
  %169 = load i64, i64* %arrayidx231, align 8
  %xor232 = xor i64 %167, %169
  %170 = load i64, i64* %T, align 8
  %shr233 = lshr i64 %170, 16
  %and234 = and i64 %shr233, 63
  %arrayidx235 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and234
  %171 = load i64, i64* %arrayidx235, align 8
  %xor236 = xor i64 %xor232, %171
  %172 = load i64, i64* %T, align 8
  %shr237 = lshr i64 %172, 24
  %and238 = and i64 %shr237, 63
  %arrayidx239 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and238
  %173 = load i64, i64* %arrayidx239, align 8
  %xor240 = xor i64 %xor236, %173
  %174 = load i64, i64* %X, align 8
  %xor241 = xor i64 %174, %xor240
  store i64 %xor241, i64* %X, align 8
  %175 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr242 = getelementptr inbounds i64, i64* %175, i32 1
  store i64* %incdec.ptr242, i64** %SK.addr, align 8
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %X, align 8
  %xor243 = xor i64 %176, %177
  store i64 %xor243, i64* %T, align 8
  %178 = load i64, i64* %T, align 8
  %and244 = and i64 %178, 63
  %arrayidx245 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and244
  %179 = load i64, i64* %arrayidx245, align 8
  %180 = load i64, i64* %T, align 8
  %shr246 = lshr i64 %180, 8
  %and247 = and i64 %shr246, 63
  %arrayidx248 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and247
  %181 = load i64, i64* %arrayidx248, align 8
  %xor249 = xor i64 %179, %181
  %182 = load i64, i64* %T, align 8
  %shr250 = lshr i64 %182, 16
  %and251 = and i64 %shr250, 63
  %arrayidx252 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and251
  %183 = load i64, i64* %arrayidx252, align 8
  %xor253 = xor i64 %xor249, %183
  %184 = load i64, i64* %T, align 8
  %shr254 = lshr i64 %184, 24
  %and255 = and i64 %shr254, 63
  %arrayidx256 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and255
  %185 = load i64, i64* %arrayidx256, align 8
  %xor257 = xor i64 %xor253, %185
  %186 = load i64, i64* %Y, align 8
  %xor258 = xor i64 %186, %xor257
  store i64 %xor258, i64* %Y, align 8
  %187 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr259 = getelementptr inbounds i64, i64* %187, i32 1
  store i64* %incdec.ptr259, i64** %SK.addr, align 8
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %X, align 8
  %shl260 = shl i64 %189, 28
  %190 = load i64, i64* %X, align 8
  %shr261 = lshr i64 %190, 4
  %or262 = or i64 %shl260, %shr261
  %xor263 = xor i64 %188, %or262
  store i64 %xor263, i64* %T, align 8
  %191 = load i64, i64* %T, align 8
  %and264 = and i64 %191, 63
  %arrayidx265 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and264
  %192 = load i64, i64* %arrayidx265, align 8
  %193 = load i64, i64* %T, align 8
  %shr266 = lshr i64 %193, 8
  %and267 = and i64 %shr266, 63
  %arrayidx268 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and267
  %194 = load i64, i64* %arrayidx268, align 8
  %xor269 = xor i64 %192, %194
  %195 = load i64, i64* %T, align 8
  %shr270 = lshr i64 %195, 16
  %and271 = and i64 %shr270, 63
  %arrayidx272 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and271
  %196 = load i64, i64* %arrayidx272, align 8
  %xor273 = xor i64 %xor269, %196
  %197 = load i64, i64* %T, align 8
  %shr274 = lshr i64 %197, 24
  %and275 = and i64 %shr274, 63
  %arrayidx276 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and275
  %198 = load i64, i64* %arrayidx276, align 8
  %xor277 = xor i64 %xor273, %198
  %199 = load i64, i64* %Y, align 8
  %xor278 = xor i64 %199, %xor277
  store i64 %xor278, i64* %Y, align 8
  %200 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr279 = getelementptr inbounds i64, i64* %200, i32 1
  store i64* %incdec.ptr279, i64** %SK.addr, align 8
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %Y, align 8
  %xor280 = xor i64 %201, %202
  store i64 %xor280, i64* %T, align 8
  %203 = load i64, i64* %T, align 8
  %and281 = and i64 %203, 63
  %arrayidx282 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and281
  %204 = load i64, i64* %arrayidx282, align 8
  %205 = load i64, i64* %T, align 8
  %shr283 = lshr i64 %205, 8
  %and284 = and i64 %shr283, 63
  %arrayidx285 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and284
  %206 = load i64, i64* %arrayidx285, align 8
  %xor286 = xor i64 %204, %206
  %207 = load i64, i64* %T, align 8
  %shr287 = lshr i64 %207, 16
  %and288 = and i64 %shr287, 63
  %arrayidx289 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and288
  %208 = load i64, i64* %arrayidx289, align 8
  %xor290 = xor i64 %xor286, %208
  %209 = load i64, i64* %T, align 8
  %shr291 = lshr i64 %209, 24
  %and292 = and i64 %shr291, 63
  %arrayidx293 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and292
  %210 = load i64, i64* %arrayidx293, align 8
  %xor294 = xor i64 %xor290, %210
  %211 = load i64, i64* %X, align 8
  %xor295 = xor i64 %211, %xor294
  store i64 %xor295, i64* %X, align 8
  %212 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr296 = getelementptr inbounds i64, i64* %212, i32 1
  store i64* %incdec.ptr296, i64** %SK.addr, align 8
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %Y, align 8
  %shl297 = shl i64 %214, 28
  %215 = load i64, i64* %Y, align 8
  %shr298 = lshr i64 %215, 4
  %or299 = or i64 %shl297, %shr298
  %xor300 = xor i64 %213, %or299
  store i64 %xor300, i64* %T, align 8
  %216 = load i64, i64* %T, align 8
  %and301 = and i64 %216, 63
  %arrayidx302 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and301
  %217 = load i64, i64* %arrayidx302, align 8
  %218 = load i64, i64* %T, align 8
  %shr303 = lshr i64 %218, 8
  %and304 = and i64 %shr303, 63
  %arrayidx305 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and304
  %219 = load i64, i64* %arrayidx305, align 8
  %xor306 = xor i64 %217, %219
  %220 = load i64, i64* %T, align 8
  %shr307 = lshr i64 %220, 16
  %and308 = and i64 %shr307, 63
  %arrayidx309 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and308
  %221 = load i64, i64* %arrayidx309, align 8
  %xor310 = xor i64 %xor306, %221
  %222 = load i64, i64* %T, align 8
  %shr311 = lshr i64 %222, 24
  %and312 = and i64 %shr311, 63
  %arrayidx313 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and312
  %223 = load i64, i64* %arrayidx313, align 8
  %xor314 = xor i64 %xor310, %223
  %224 = load i64, i64* %X, align 8
  %xor315 = xor i64 %224, %xor314
  store i64 %xor315, i64* %X, align 8
  %225 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr316 = getelementptr inbounds i64, i64* %225, i32 1
  store i64* %incdec.ptr316, i64** %SK.addr, align 8
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %X, align 8
  %xor317 = xor i64 %226, %227
  store i64 %xor317, i64* %T, align 8
  %228 = load i64, i64* %T, align 8
  %and318 = and i64 %228, 63
  %arrayidx319 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and318
  %229 = load i64, i64* %arrayidx319, align 8
  %230 = load i64, i64* %T, align 8
  %shr320 = lshr i64 %230, 8
  %and321 = and i64 %shr320, 63
  %arrayidx322 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and321
  %231 = load i64, i64* %arrayidx322, align 8
  %xor323 = xor i64 %229, %231
  %232 = load i64, i64* %T, align 8
  %shr324 = lshr i64 %232, 16
  %and325 = and i64 %shr324, 63
  %arrayidx326 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and325
  %233 = load i64, i64* %arrayidx326, align 8
  %xor327 = xor i64 %xor323, %233
  %234 = load i64, i64* %T, align 8
  %shr328 = lshr i64 %234, 24
  %and329 = and i64 %shr328, 63
  %arrayidx330 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and329
  %235 = load i64, i64* %arrayidx330, align 8
  %xor331 = xor i64 %xor327, %235
  %236 = load i64, i64* %Y, align 8
  %xor332 = xor i64 %236, %xor331
  store i64 %xor332, i64* %Y, align 8
  %237 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr333 = getelementptr inbounds i64, i64* %237, i32 1
  store i64* %incdec.ptr333, i64** %SK.addr, align 8
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %X, align 8
  %shl334 = shl i64 %239, 28
  %240 = load i64, i64* %X, align 8
  %shr335 = lshr i64 %240, 4
  %or336 = or i64 %shl334, %shr335
  %xor337 = xor i64 %238, %or336
  store i64 %xor337, i64* %T, align 8
  %241 = load i64, i64* %T, align 8
  %and338 = and i64 %241, 63
  %arrayidx339 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and338
  %242 = load i64, i64* %arrayidx339, align 8
  %243 = load i64, i64* %T, align 8
  %shr340 = lshr i64 %243, 8
  %and341 = and i64 %shr340, 63
  %arrayidx342 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and341
  %244 = load i64, i64* %arrayidx342, align 8
  %xor343 = xor i64 %242, %244
  %245 = load i64, i64* %T, align 8
  %shr344 = lshr i64 %245, 16
  %and345 = and i64 %shr344, 63
  %arrayidx346 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and345
  %246 = load i64, i64* %arrayidx346, align 8
  %xor347 = xor i64 %xor343, %246
  %247 = load i64, i64* %T, align 8
  %shr348 = lshr i64 %247, 24
  %and349 = and i64 %shr348, 63
  %arrayidx350 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and349
  %248 = load i64, i64* %arrayidx350, align 8
  %xor351 = xor i64 %xor347, %248
  %249 = load i64, i64* %Y, align 8
  %xor352 = xor i64 %249, %xor351
  store i64 %xor352, i64* %Y, align 8
  %250 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr353 = getelementptr inbounds i64, i64* %250, i32 1
  store i64* %incdec.ptr353, i64** %SK.addr, align 8
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %Y, align 8
  %xor354 = xor i64 %251, %252
  store i64 %xor354, i64* %T, align 8
  %253 = load i64, i64* %T, align 8
  %and355 = and i64 %253, 63
  %arrayidx356 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and355
  %254 = load i64, i64* %arrayidx356, align 8
  %255 = load i64, i64* %T, align 8
  %shr357 = lshr i64 %255, 8
  %and358 = and i64 %shr357, 63
  %arrayidx359 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and358
  %256 = load i64, i64* %arrayidx359, align 8
  %xor360 = xor i64 %254, %256
  %257 = load i64, i64* %T, align 8
  %shr361 = lshr i64 %257, 16
  %and362 = and i64 %shr361, 63
  %arrayidx363 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and362
  %258 = load i64, i64* %arrayidx363, align 8
  %xor364 = xor i64 %xor360, %258
  %259 = load i64, i64* %T, align 8
  %shr365 = lshr i64 %259, 24
  %and366 = and i64 %shr365, 63
  %arrayidx367 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and366
  %260 = load i64, i64* %arrayidx367, align 8
  %xor368 = xor i64 %xor364, %260
  %261 = load i64, i64* %X, align 8
  %xor369 = xor i64 %261, %xor368
  store i64 %xor369, i64* %X, align 8
  %262 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr370 = getelementptr inbounds i64, i64* %262, i32 1
  store i64* %incdec.ptr370, i64** %SK.addr, align 8
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %Y, align 8
  %shl371 = shl i64 %264, 28
  %265 = load i64, i64* %Y, align 8
  %shr372 = lshr i64 %265, 4
  %or373 = or i64 %shl371, %shr372
  %xor374 = xor i64 %263, %or373
  store i64 %xor374, i64* %T, align 8
  %266 = load i64, i64* %T, align 8
  %and375 = and i64 %266, 63
  %arrayidx376 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and375
  %267 = load i64, i64* %arrayidx376, align 8
  %268 = load i64, i64* %T, align 8
  %shr377 = lshr i64 %268, 8
  %and378 = and i64 %shr377, 63
  %arrayidx379 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and378
  %269 = load i64, i64* %arrayidx379, align 8
  %xor380 = xor i64 %267, %269
  %270 = load i64, i64* %T, align 8
  %shr381 = lshr i64 %270, 16
  %and382 = and i64 %shr381, 63
  %arrayidx383 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and382
  %271 = load i64, i64* %arrayidx383, align 8
  %xor384 = xor i64 %xor380, %271
  %272 = load i64, i64* %T, align 8
  %shr385 = lshr i64 %272, 24
  %and386 = and i64 %shr385, 63
  %arrayidx387 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and386
  %273 = load i64, i64* %arrayidx387, align 8
  %xor388 = xor i64 %xor384, %273
  %274 = load i64, i64* %X, align 8
  %xor389 = xor i64 %274, %xor388
  store i64 %xor389, i64* %X, align 8
  %275 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr390 = getelementptr inbounds i64, i64* %275, i32 1
  store i64* %incdec.ptr390, i64** %SK.addr, align 8
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* %X, align 8
  %xor391 = xor i64 %276, %277
  store i64 %xor391, i64* %T, align 8
  %278 = load i64, i64* %T, align 8
  %and392 = and i64 %278, 63
  %arrayidx393 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and392
  %279 = load i64, i64* %arrayidx393, align 8
  %280 = load i64, i64* %T, align 8
  %shr394 = lshr i64 %280, 8
  %and395 = and i64 %shr394, 63
  %arrayidx396 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and395
  %281 = load i64, i64* %arrayidx396, align 8
  %xor397 = xor i64 %279, %281
  %282 = load i64, i64* %T, align 8
  %shr398 = lshr i64 %282, 16
  %and399 = and i64 %shr398, 63
  %arrayidx400 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and399
  %283 = load i64, i64* %arrayidx400, align 8
  %xor401 = xor i64 %xor397, %283
  %284 = load i64, i64* %T, align 8
  %shr402 = lshr i64 %284, 24
  %and403 = and i64 %shr402, 63
  %arrayidx404 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and403
  %285 = load i64, i64* %arrayidx404, align 8
  %xor405 = xor i64 %xor401, %285
  %286 = load i64, i64* %Y, align 8
  %xor406 = xor i64 %286, %xor405
  store i64 %xor406, i64* %Y, align 8
  %287 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr407 = getelementptr inbounds i64, i64* %287, i32 1
  store i64* %incdec.ptr407, i64** %SK.addr, align 8
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %X, align 8
  %shl408 = shl i64 %289, 28
  %290 = load i64, i64* %X, align 8
  %shr409 = lshr i64 %290, 4
  %or410 = or i64 %shl408, %shr409
  %xor411 = xor i64 %288, %or410
  store i64 %xor411, i64* %T, align 8
  %291 = load i64, i64* %T, align 8
  %and412 = and i64 %291, 63
  %arrayidx413 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and412
  %292 = load i64, i64* %arrayidx413, align 8
  %293 = load i64, i64* %T, align 8
  %shr414 = lshr i64 %293, 8
  %and415 = and i64 %shr414, 63
  %arrayidx416 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and415
  %294 = load i64, i64* %arrayidx416, align 8
  %xor417 = xor i64 %292, %294
  %295 = load i64, i64* %T, align 8
  %shr418 = lshr i64 %295, 16
  %and419 = and i64 %shr418, 63
  %arrayidx420 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and419
  %296 = load i64, i64* %arrayidx420, align 8
  %xor421 = xor i64 %xor417, %296
  %297 = load i64, i64* %T, align 8
  %shr422 = lshr i64 %297, 24
  %and423 = and i64 %shr422, 63
  %arrayidx424 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and423
  %298 = load i64, i64* %arrayidx424, align 8
  %xor425 = xor i64 %xor421, %298
  %299 = load i64, i64* %Y, align 8
  %xor426 = xor i64 %299, %xor425
  store i64 %xor426, i64* %Y, align 8
  %300 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr427 = getelementptr inbounds i64, i64* %300, i32 1
  store i64* %incdec.ptr427, i64** %SK.addr, align 8
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* %Y, align 8
  %xor428 = xor i64 %301, %302
  store i64 %xor428, i64* %T, align 8
  %303 = load i64, i64* %T, align 8
  %and429 = and i64 %303, 63
  %arrayidx430 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and429
  %304 = load i64, i64* %arrayidx430, align 8
  %305 = load i64, i64* %T, align 8
  %shr431 = lshr i64 %305, 8
  %and432 = and i64 %shr431, 63
  %arrayidx433 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and432
  %306 = load i64, i64* %arrayidx433, align 8
  %xor434 = xor i64 %304, %306
  %307 = load i64, i64* %T, align 8
  %shr435 = lshr i64 %307, 16
  %and436 = and i64 %shr435, 63
  %arrayidx437 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and436
  %308 = load i64, i64* %arrayidx437, align 8
  %xor438 = xor i64 %xor434, %308
  %309 = load i64, i64* %T, align 8
  %shr439 = lshr i64 %309, 24
  %and440 = and i64 %shr439, 63
  %arrayidx441 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and440
  %310 = load i64, i64* %arrayidx441, align 8
  %xor442 = xor i64 %xor438, %310
  %311 = load i64, i64* %X, align 8
  %xor443 = xor i64 %311, %xor442
  store i64 %xor443, i64* %X, align 8
  %312 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr444 = getelementptr inbounds i64, i64* %312, i32 1
  store i64* %incdec.ptr444, i64** %SK.addr, align 8
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* %Y, align 8
  %shl445 = shl i64 %314, 28
  %315 = load i64, i64* %Y, align 8
  %shr446 = lshr i64 %315, 4
  %or447 = or i64 %shl445, %shr446
  %xor448 = xor i64 %313, %or447
  store i64 %xor448, i64* %T, align 8
  %316 = load i64, i64* %T, align 8
  %and449 = and i64 %316, 63
  %arrayidx450 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and449
  %317 = load i64, i64* %arrayidx450, align 8
  %318 = load i64, i64* %T, align 8
  %shr451 = lshr i64 %318, 8
  %and452 = and i64 %shr451, 63
  %arrayidx453 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and452
  %319 = load i64, i64* %arrayidx453, align 8
  %xor454 = xor i64 %317, %319
  %320 = load i64, i64* %T, align 8
  %shr455 = lshr i64 %320, 16
  %and456 = and i64 %shr455, 63
  %arrayidx457 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and456
  %321 = load i64, i64* %arrayidx457, align 8
  %xor458 = xor i64 %xor454, %321
  %322 = load i64, i64* %T, align 8
  %shr459 = lshr i64 %322, 24
  %and460 = and i64 %shr459, 63
  %arrayidx461 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and460
  %323 = load i64, i64* %arrayidx461, align 8
  %xor462 = xor i64 %xor458, %323
  %324 = load i64, i64* %X, align 8
  %xor463 = xor i64 %324, %xor462
  store i64 %xor463, i64* %X, align 8
  %325 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr464 = getelementptr inbounds i64, i64* %325, i32 1
  store i64* %incdec.ptr464, i64** %SK.addr, align 8
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* %X, align 8
  %xor465 = xor i64 %326, %327
  store i64 %xor465, i64* %T, align 8
  %328 = load i64, i64* %T, align 8
  %and466 = and i64 %328, 63
  %arrayidx467 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and466
  %329 = load i64, i64* %arrayidx467, align 8
  %330 = load i64, i64* %T, align 8
  %shr468 = lshr i64 %330, 8
  %and469 = and i64 %shr468, 63
  %arrayidx470 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and469
  %331 = load i64, i64* %arrayidx470, align 8
  %xor471 = xor i64 %329, %331
  %332 = load i64, i64* %T, align 8
  %shr472 = lshr i64 %332, 16
  %and473 = and i64 %shr472, 63
  %arrayidx474 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and473
  %333 = load i64, i64* %arrayidx474, align 8
  %xor475 = xor i64 %xor471, %333
  %334 = load i64, i64* %T, align 8
  %shr476 = lshr i64 %334, 24
  %and477 = and i64 %shr476, 63
  %arrayidx478 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and477
  %335 = load i64, i64* %arrayidx478, align 8
  %xor479 = xor i64 %xor475, %335
  %336 = load i64, i64* %Y, align 8
  %xor480 = xor i64 %336, %xor479
  store i64 %xor480, i64* %Y, align 8
  %337 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr481 = getelementptr inbounds i64, i64* %337, i32 1
  store i64* %incdec.ptr481, i64** %SK.addr, align 8
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* %X, align 8
  %shl482 = shl i64 %339, 28
  %340 = load i64, i64* %X, align 8
  %shr483 = lshr i64 %340, 4
  %or484 = or i64 %shl482, %shr483
  %xor485 = xor i64 %338, %or484
  store i64 %xor485, i64* %T, align 8
  %341 = load i64, i64* %T, align 8
  %and486 = and i64 %341, 63
  %arrayidx487 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and486
  %342 = load i64, i64* %arrayidx487, align 8
  %343 = load i64, i64* %T, align 8
  %shr488 = lshr i64 %343, 8
  %and489 = and i64 %shr488, 63
  %arrayidx490 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and489
  %344 = load i64, i64* %arrayidx490, align 8
  %xor491 = xor i64 %342, %344
  %345 = load i64, i64* %T, align 8
  %shr492 = lshr i64 %345, 16
  %and493 = and i64 %shr492, 63
  %arrayidx494 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and493
  %346 = load i64, i64* %arrayidx494, align 8
  %xor495 = xor i64 %xor491, %346
  %347 = load i64, i64* %T, align 8
  %shr496 = lshr i64 %347, 24
  %and497 = and i64 %shr496, 63
  %arrayidx498 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and497
  %348 = load i64, i64* %arrayidx498, align 8
  %xor499 = xor i64 %xor495, %348
  %349 = load i64, i64* %Y, align 8
  %xor500 = xor i64 %349, %xor499
  store i64 %xor500, i64* %Y, align 8
  %350 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr501 = getelementptr inbounds i64, i64* %350, i32 1
  store i64* %incdec.ptr501, i64** %SK.addr, align 8
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* %Y, align 8
  %xor502 = xor i64 %351, %352
  store i64 %xor502, i64* %T, align 8
  %353 = load i64, i64* %T, align 8
  %and503 = and i64 %353, 63
  %arrayidx504 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and503
  %354 = load i64, i64* %arrayidx504, align 8
  %355 = load i64, i64* %T, align 8
  %shr505 = lshr i64 %355, 8
  %and506 = and i64 %shr505, 63
  %arrayidx507 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and506
  %356 = load i64, i64* %arrayidx507, align 8
  %xor508 = xor i64 %354, %356
  %357 = load i64, i64* %T, align 8
  %shr509 = lshr i64 %357, 16
  %and510 = and i64 %shr509, 63
  %arrayidx511 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and510
  %358 = load i64, i64* %arrayidx511, align 8
  %xor512 = xor i64 %xor508, %358
  %359 = load i64, i64* %T, align 8
  %shr513 = lshr i64 %359, 24
  %and514 = and i64 %shr513, 63
  %arrayidx515 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and514
  %360 = load i64, i64* %arrayidx515, align 8
  %xor516 = xor i64 %xor512, %360
  %361 = load i64, i64* %X, align 8
  %xor517 = xor i64 %361, %xor516
  store i64 %xor517, i64* %X, align 8
  %362 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr518 = getelementptr inbounds i64, i64* %362, i32 1
  store i64* %incdec.ptr518, i64** %SK.addr, align 8
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* %Y, align 8
  %shl519 = shl i64 %364, 28
  %365 = load i64, i64* %Y, align 8
  %shr520 = lshr i64 %365, 4
  %or521 = or i64 %shl519, %shr520
  %xor522 = xor i64 %363, %or521
  store i64 %xor522, i64* %T, align 8
  %366 = load i64, i64* %T, align 8
  %and523 = and i64 %366, 63
  %arrayidx524 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and523
  %367 = load i64, i64* %arrayidx524, align 8
  %368 = load i64, i64* %T, align 8
  %shr525 = lshr i64 %368, 8
  %and526 = and i64 %shr525, 63
  %arrayidx527 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and526
  %369 = load i64, i64* %arrayidx527, align 8
  %xor528 = xor i64 %367, %369
  %370 = load i64, i64* %T, align 8
  %shr529 = lshr i64 %370, 16
  %and530 = and i64 %shr529, 63
  %arrayidx531 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and530
  %371 = load i64, i64* %arrayidx531, align 8
  %xor532 = xor i64 %xor528, %371
  %372 = load i64, i64* %T, align 8
  %shr533 = lshr i64 %372, 24
  %and534 = and i64 %shr533, 63
  %arrayidx535 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and534
  %373 = load i64, i64* %arrayidx535, align 8
  %xor536 = xor i64 %xor532, %373
  %374 = load i64, i64* %X, align 8
  %xor537 = xor i64 %374, %xor536
  store i64 %xor537, i64* %X, align 8
  %375 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr538 = getelementptr inbounds i64, i64* %375, i32 1
  store i64* %incdec.ptr538, i64** %SK.addr, align 8
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* %X, align 8
  %xor539 = xor i64 %376, %377
  store i64 %xor539, i64* %T, align 8
  %378 = load i64, i64* %T, align 8
  %and540 = and i64 %378, 63
  %arrayidx541 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and540
  %379 = load i64, i64* %arrayidx541, align 8
  %380 = load i64, i64* %T, align 8
  %shr542 = lshr i64 %380, 8
  %and543 = and i64 %shr542, 63
  %arrayidx544 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and543
  %381 = load i64, i64* %arrayidx544, align 8
  %xor545 = xor i64 %379, %381
  %382 = load i64, i64* %T, align 8
  %shr546 = lshr i64 %382, 16
  %and547 = and i64 %shr546, 63
  %arrayidx548 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and547
  %383 = load i64, i64* %arrayidx548, align 8
  %xor549 = xor i64 %xor545, %383
  %384 = load i64, i64* %T, align 8
  %shr550 = lshr i64 %384, 24
  %and551 = and i64 %shr550, 63
  %arrayidx552 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and551
  %385 = load i64, i64* %arrayidx552, align 8
  %xor553 = xor i64 %xor549, %385
  %386 = load i64, i64* %Y, align 8
  %xor554 = xor i64 %386, %xor553
  store i64 %xor554, i64* %Y, align 8
  %387 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr555 = getelementptr inbounds i64, i64* %387, i32 1
  store i64* %incdec.ptr555, i64** %SK.addr, align 8
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* %X, align 8
  %shl556 = shl i64 %389, 28
  %390 = load i64, i64* %X, align 8
  %shr557 = lshr i64 %390, 4
  %or558 = or i64 %shl556, %shr557
  %xor559 = xor i64 %388, %or558
  store i64 %xor559, i64* %T, align 8
  %391 = load i64, i64* %T, align 8
  %and560 = and i64 %391, 63
  %arrayidx561 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and560
  %392 = load i64, i64* %arrayidx561, align 8
  %393 = load i64, i64* %T, align 8
  %shr562 = lshr i64 %393, 8
  %and563 = and i64 %shr562, 63
  %arrayidx564 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and563
  %394 = load i64, i64* %arrayidx564, align 8
  %xor565 = xor i64 %392, %394
  %395 = load i64, i64* %T, align 8
  %shr566 = lshr i64 %395, 16
  %and567 = and i64 %shr566, 63
  %arrayidx568 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and567
  %396 = load i64, i64* %arrayidx568, align 8
  %xor569 = xor i64 %xor565, %396
  %397 = load i64, i64* %T, align 8
  %shr570 = lshr i64 %397, 24
  %and571 = and i64 %shr570, 63
  %arrayidx572 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and571
  %398 = load i64, i64* %arrayidx572, align 8
  %xor573 = xor i64 %xor569, %398
  %399 = load i64, i64* %Y, align 8
  %xor574 = xor i64 %399, %xor573
  store i64 %xor574, i64* %Y, align 8
  %400 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr575 = getelementptr inbounds i64, i64* %400, i32 1
  store i64* %incdec.ptr575, i64** %SK.addr, align 8
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* %Y, align 8
  %xor576 = xor i64 %401, %402
  store i64 %xor576, i64* %T, align 8
  %403 = load i64, i64* %T, align 8
  %and577 = and i64 %403, 63
  %arrayidx578 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and577
  %404 = load i64, i64* %arrayidx578, align 8
  %405 = load i64, i64* %T, align 8
  %shr579 = lshr i64 %405, 8
  %and580 = and i64 %shr579, 63
  %arrayidx581 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and580
  %406 = load i64, i64* %arrayidx581, align 8
  %xor582 = xor i64 %404, %406
  %407 = load i64, i64* %T, align 8
  %shr583 = lshr i64 %407, 16
  %and584 = and i64 %shr583, 63
  %arrayidx585 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and584
  %408 = load i64, i64* %arrayidx585, align 8
  %xor586 = xor i64 %xor582, %408
  %409 = load i64, i64* %T, align 8
  %shr587 = lshr i64 %409, 24
  %and588 = and i64 %shr587, 63
  %arrayidx589 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and588
  %410 = load i64, i64* %arrayidx589, align 8
  %xor590 = xor i64 %xor586, %410
  %411 = load i64, i64* %X, align 8
  %xor591 = xor i64 %411, %xor590
  store i64 %xor591, i64* %X, align 8
  %412 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr592 = getelementptr inbounds i64, i64* %412, i32 1
  store i64* %incdec.ptr592, i64** %SK.addr, align 8
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* %Y, align 8
  %shl593 = shl i64 %414, 28
  %415 = load i64, i64* %Y, align 8
  %shr594 = lshr i64 %415, 4
  %or595 = or i64 %shl593, %shr594
  %xor596 = xor i64 %413, %or595
  store i64 %xor596, i64* %T, align 8
  %416 = load i64, i64* %T, align 8
  %and597 = and i64 %416, 63
  %arrayidx598 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and597
  %417 = load i64, i64* %arrayidx598, align 8
  %418 = load i64, i64* %T, align 8
  %shr599 = lshr i64 %418, 8
  %and600 = and i64 %shr599, 63
  %arrayidx601 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and600
  %419 = load i64, i64* %arrayidx601, align 8
  %xor602 = xor i64 %417, %419
  %420 = load i64, i64* %T, align 8
  %shr603 = lshr i64 %420, 16
  %and604 = and i64 %shr603, 63
  %arrayidx605 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and604
  %421 = load i64, i64* %arrayidx605, align 8
  %xor606 = xor i64 %xor602, %421
  %422 = load i64, i64* %T, align 8
  %shr607 = lshr i64 %422, 24
  %and608 = and i64 %shr607, 63
  %arrayidx609 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and608
  %423 = load i64, i64* %arrayidx609, align 8
  %xor610 = xor i64 %xor606, %423
  %424 = load i64, i64* %X, align 8
  %xor611 = xor i64 %424, %xor610
  store i64 %xor611, i64* %X, align 8
  %425 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr612 = getelementptr inbounds i64, i64* %425, i32 1
  store i64* %incdec.ptr612, i64** %SK.addr, align 8
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* %X, align 8
  %xor613 = xor i64 %426, %427
  store i64 %xor613, i64* %T, align 8
  %428 = load i64, i64* %T, align 8
  %and614 = and i64 %428, 63
  %arrayidx615 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and614
  %429 = load i64, i64* %arrayidx615, align 8
  %430 = load i64, i64* %T, align 8
  %shr616 = lshr i64 %430, 8
  %and617 = and i64 %shr616, 63
  %arrayidx618 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and617
  %431 = load i64, i64* %arrayidx618, align 8
  %xor619 = xor i64 %429, %431
  %432 = load i64, i64* %T, align 8
  %shr620 = lshr i64 %432, 16
  %and621 = and i64 %shr620, 63
  %arrayidx622 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and621
  %433 = load i64, i64* %arrayidx622, align 8
  %xor623 = xor i64 %xor619, %433
  %434 = load i64, i64* %T, align 8
  %shr624 = lshr i64 %434, 24
  %and625 = and i64 %shr624, 63
  %arrayidx626 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and625
  %435 = load i64, i64* %arrayidx626, align 8
  %xor627 = xor i64 %xor623, %435
  %436 = load i64, i64* %Y, align 8
  %xor628 = xor i64 %436, %xor627
  store i64 %xor628, i64* %Y, align 8
  %437 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr629 = getelementptr inbounds i64, i64* %437, i32 1
  store i64* %incdec.ptr629, i64** %SK.addr, align 8
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* %X, align 8
  %shl630 = shl i64 %439, 28
  %440 = load i64, i64* %X, align 8
  %shr631 = lshr i64 %440, 4
  %or632 = or i64 %shl630, %shr631
  %xor633 = xor i64 %438, %or632
  store i64 %xor633, i64* %T, align 8
  %441 = load i64, i64* %T, align 8
  %and634 = and i64 %441, 63
  %arrayidx635 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and634
  %442 = load i64, i64* %arrayidx635, align 8
  %443 = load i64, i64* %T, align 8
  %shr636 = lshr i64 %443, 8
  %and637 = and i64 %shr636, 63
  %arrayidx638 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and637
  %444 = load i64, i64* %arrayidx638, align 8
  %xor639 = xor i64 %442, %444
  %445 = load i64, i64* %T, align 8
  %shr640 = lshr i64 %445, 16
  %and641 = and i64 %shr640, 63
  %arrayidx642 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and641
  %446 = load i64, i64* %arrayidx642, align 8
  %xor643 = xor i64 %xor639, %446
  %447 = load i64, i64* %T, align 8
  %shr644 = lshr i64 %447, 24
  %and645 = and i64 %shr644, 63
  %arrayidx646 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and645
  %448 = load i64, i64* %arrayidx646, align 8
  %xor647 = xor i64 %xor643, %448
  %449 = load i64, i64* %Y, align 8
  %xor648 = xor i64 %449, %xor647
  store i64 %xor648, i64* %Y, align 8
  %450 = load i64, i64* %Y, align 8
  %shl649 = shl i64 %450, 31
  %451 = load i64, i64* %Y, align 8
  %shr650 = lshr i64 %451, 1
  %or651 = or i64 %shl649, %shr650
  %and652 = and i64 %or651, 4294967295
  store i64 %and652, i64* %Y, align 8
  %452 = load i64, i64* %Y, align 8
  %453 = load i64, i64* %X, align 8
  %xor653 = xor i64 %452, %453
  %and654 = and i64 %xor653, 2863311530
  store i64 %and654, i64* %T, align 8
  %454 = load i64, i64* %T, align 8
  %455 = load i64, i64* %Y, align 8
  %xor655 = xor i64 %455, %454
  store i64 %xor655, i64* %Y, align 8
  %456 = load i64, i64* %T, align 8
  %457 = load i64, i64* %X, align 8
  %xor656 = xor i64 %457, %456
  store i64 %xor656, i64* %X, align 8
  %458 = load i64, i64* %X, align 8
  %shl657 = shl i64 %458, 31
  %459 = load i64, i64* %X, align 8
  %shr658 = lshr i64 %459, 1
  %or659 = or i64 %shl657, %shr658
  %and660 = and i64 %or659, 4294967295
  store i64 %and660, i64* %X, align 8
  %460 = load i64, i64* %X, align 8
  %shr661 = lshr i64 %460, 8
  %461 = load i64, i64* %Y, align 8
  %xor662 = xor i64 %shr661, %461
  %and663 = and i64 %xor662, 16711935
  store i64 %and663, i64* %T, align 8
  %462 = load i64, i64* %T, align 8
  %463 = load i64, i64* %Y, align 8
  %xor664 = xor i64 %463, %462
  store i64 %xor664, i64* %Y, align 8
  %464 = load i64, i64* %T, align 8
  %shl665 = shl i64 %464, 8
  %465 = load i64, i64* %X, align 8
  %xor666 = xor i64 %465, %shl665
  store i64 %xor666, i64* %X, align 8
  %466 = load i64, i64* %X, align 8
  %shr667 = lshr i64 %466, 2
  %467 = load i64, i64* %Y, align 8
  %xor668 = xor i64 %shr667, %467
  %and669 = and i64 %xor668, 858993459
  store i64 %and669, i64* %T, align 8
  %468 = load i64, i64* %T, align 8
  %469 = load i64, i64* %Y, align 8
  %xor670 = xor i64 %469, %468
  store i64 %xor670, i64* %Y, align 8
  %470 = load i64, i64* %T, align 8
  %shl671 = shl i64 %470, 2
  %471 = load i64, i64* %X, align 8
  %xor672 = xor i64 %471, %shl671
  store i64 %xor672, i64* %X, align 8
  %472 = load i64, i64* %Y, align 8
  %shr673 = lshr i64 %472, 16
  %473 = load i64, i64* %X, align 8
  %xor674 = xor i64 %shr673, %473
  %and675 = and i64 %xor674, 65535
  store i64 %and675, i64* %T, align 8
  %474 = load i64, i64* %T, align 8
  %475 = load i64, i64* %X, align 8
  %xor676 = xor i64 %475, %474
  store i64 %xor676, i64* %X, align 8
  %476 = load i64, i64* %T, align 8
  %shl677 = shl i64 %476, 16
  %477 = load i64, i64* %Y, align 8
  %xor678 = xor i64 %477, %shl677
  store i64 %xor678, i64* %Y, align 8
  %478 = load i64, i64* %Y, align 8
  %shr679 = lshr i64 %478, 4
  %479 = load i64, i64* %X, align 8
  %xor680 = xor i64 %shr679, %479
  %and681 = and i64 %xor680, 252645135
  store i64 %and681, i64* %T, align 8
  %480 = load i64, i64* %T, align 8
  %481 = load i64, i64* %X, align 8
  %xor682 = xor i64 %481, %480
  store i64 %xor682, i64* %X, align 8
  %482 = load i64, i64* %T, align 8
  %shl683 = shl i64 %482, 4
  %483 = load i64, i64* %Y, align 8
  %xor684 = xor i64 %483, %shl683
  store i64 %xor684, i64* %Y, align 8
  %484 = load i64, i64* %Y, align 8
  %shr685 = lshr i64 %484, 24
  %conv686 = trunc i64 %shr685 to i8
  %485 = load i8*, i8** %output.addr, align 8
  %arrayidx687 = getelementptr inbounds i8, i8* %485, i64 0
  store i8 %conv686, i8* %arrayidx687, align 1
  %486 = load i64, i64* %Y, align 8
  %shr688 = lshr i64 %486, 16
  %conv689 = trunc i64 %shr688 to i8
  %487 = load i8*, i8** %output.addr, align 8
  %arrayidx690 = getelementptr inbounds i8, i8* %487, i64 1
  store i8 %conv689, i8* %arrayidx690, align 1
  %488 = load i64, i64* %Y, align 8
  %shr691 = lshr i64 %488, 8
  %conv692 = trunc i64 %shr691 to i8
  %489 = load i8*, i8** %output.addr, align 8
  %arrayidx693 = getelementptr inbounds i8, i8* %489, i64 2
  store i8 %conv692, i8* %arrayidx693, align 1
  %490 = load i64, i64* %Y, align 8
  %conv694 = trunc i64 %490 to i8
  %491 = load i8*, i8** %output.addr, align 8
  %arrayidx695 = getelementptr inbounds i8, i8* %491, i64 3
  store i8 %conv694, i8* %arrayidx695, align 1
  %492 = load i64, i64* %X, align 8
  %shr696 = lshr i64 %492, 24
  %conv697 = trunc i64 %shr696 to i8
  %493 = load i8*, i8** %output.addr, align 8
  %arrayidx698 = getelementptr inbounds i8, i8* %493, i64 4
  store i8 %conv697, i8* %arrayidx698, align 1
  %494 = load i64, i64* %X, align 8
  %shr699 = lshr i64 %494, 16
  %conv700 = trunc i64 %shr699 to i8
  %495 = load i8*, i8** %output.addr, align 8
  %arrayidx701 = getelementptr inbounds i8, i8* %495, i64 5
  store i8 %conv700, i8* %arrayidx701, align 1
  %496 = load i64, i64* %X, align 8
  %shr702 = lshr i64 %496, 8
  %conv703 = trunc i64 %shr702 to i8
  %497 = load i8*, i8** %output.addr, align 8
  %arrayidx704 = getelementptr inbounds i8, i8* %497, i64 6
  store i8 %conv703, i8* %arrayidx704, align 1
  %498 = load i64, i64* %X, align 8
  %conv705 = trunc i64 %498 to i8
  %499 = load i8*, i8** %output.addr, align 8
  %arrayidx706 = getelementptr inbounds i8, i8* %499, i64 7
  store i8 %conv705, i8* %arrayidx706, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @des_encrypt(%struct.des_context* %ctx, i8* %input, i8* %output) #0 {
entry:
  %ctx.addr = alloca %struct.des_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store %struct.des_context* %ctx, %struct.des_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.des_context*, %struct.des_context** %ctx.addr, align 8
  %esk = getelementptr inbounds %struct.des_context, %struct.des_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %esk, i32 0, i32 0
  %1 = load i8*, i8** %input.addr, align 8
  %2 = load i8*, i8** %output.addr, align 8
  call void @des_crypt(i64* %arraydecay, i8* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @des_decrypt(%struct.des_context* %ctx, i8* %input, i8* %output) #0 {
entry:
  %ctx.addr = alloca %struct.des_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store %struct.des_context* %ctx, %struct.des_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.des_context*, %struct.des_context** %ctx.addr, align 8
  %dsk = getelementptr inbounds %struct.des_context, %struct.des_context* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %dsk, i32 0, i32 0
  %1 = load i8*, i8** %input.addr, align 8
  %2 = load i8*, i8** %output.addr, align 8
  call void @des_crypt(i64* %arraydecay, i8* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @des3_set_2keys(%struct.des3_context* %ctx, i8* %key1, i8* %key2) #0 {
entry:
  %ctx.addr = alloca %struct.des3_context*, align 8
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.des3_context* %ctx, %struct.des3_context** %ctx.addr, align 8
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  %0 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk = getelementptr inbounds %struct.des3_context, %struct.des3_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [96 x i64], [96 x i64]* %esk, i32 0, i32 0
  %1 = load i8*, i8** %key1.addr, align 8
  %call = call i32 @des_main_ks(i64* %arraydecay, i8* %1)
  %2 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk = getelementptr inbounds %struct.des3_context, %struct.des3_context* %2, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk, i32 0, i32 0
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay1, i64 32
  %3 = load i8*, i8** %key2.addr, align 8
  %call2 = call i32 @des_main_ks(i64* %add.ptr, i8* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 30, %5
  %idxprom = sext i32 %sub to i64
  %6 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk3 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [96 x i64], [96 x i64]* %esk3, i32 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk5 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk5, i32 0, i64 %idxprom4
  store i64 %7, i64* %arrayidx6, align 8
  %10 = load i32, i32* %i, align 4
  %sub7 = sub nsw i32 31, %10
  %idxprom8 = sext i32 %sub7 to i64
  %11 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk9 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %11, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [96 x i64], [96 x i64]* %esk9, i32 0, i64 %idxprom8
  %12 = load i64, i64* %arrayidx10, align 8
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  %idxprom11 = sext i32 %add to i64
  %14 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk12 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk12, i32 0, i64 %idxprom11
  store i64 %12, i64* %arrayidx13, align 8
  %15 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 62, %15
  %idxprom15 = sext i32 %sub14 to i64
  %16 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk16 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk16, i32 0, i64 %idxprom15
  %17 = load i64, i64* %arrayidx17, align 8
  %18 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %18, 32
  %idxprom19 = sext i32 %add18 to i64
  %19 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk20 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %19, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [96 x i64], [96 x i64]* %esk20, i32 0, i64 %idxprom19
  store i64 %17, i64* %arrayidx21, align 8
  %20 = load i32, i32* %i, align 4
  %sub22 = sub nsw i32 63, %20
  %idxprom23 = sext i32 %sub22 to i64
  %21 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk24 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %21, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk24, i32 0, i64 %idxprom23
  %22 = load i64, i64* %arrayidx25, align 8
  %23 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %23, 33
  %idxprom27 = sext i32 %add26 to i64
  %24 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk28 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %24, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [96 x i64], [96 x i64]* %esk28, i32 0, i64 %idxprom27
  store i64 %22, i64* %arrayidx29, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %25 to i64
  %26 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk31 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %26, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [96 x i64], [96 x i64]* %esk31, i32 0, i64 %idxprom30
  %27 = load i64, i64* %arrayidx32, align 8
  %28 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %28, 64
  %idxprom34 = sext i32 %add33 to i64
  %29 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk35 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %29, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [96 x i64], [96 x i64]* %esk35, i32 0, i64 %idxprom34
  store i64 %27, i64* %arrayidx36, align 8
  %30 = load i32, i32* %i, align 4
  %add37 = add nsw i32 1, %30
  %idxprom38 = sext i32 %add37 to i64
  %31 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk39 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %31, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [96 x i64], [96 x i64]* %esk39, i32 0, i64 %idxprom38
  %32 = load i64, i64* %arrayidx40, align 8
  %33 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %33, 65
  %idxprom42 = sext i32 %add41 to i64
  %34 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk43 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %34, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [96 x i64], [96 x i64]* %esk43, i32 0, i64 %idxprom42
  store i64 %32, i64* %arrayidx44, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %35 to i64
  %36 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk46 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %36, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk46, i32 0, i64 %idxprom45
  %37 = load i64, i64* %arrayidx47, align 8
  %38 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %38, 64
  %idxprom49 = sext i32 %add48 to i64
  %39 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk50 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %39, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk50, i32 0, i64 %idxprom49
  store i64 %37, i64* %arrayidx51, align 8
  %40 = load i32, i32* %i, align 4
  %add52 = add nsw i32 1, %40
  %idxprom53 = sext i32 %add52 to i64
  %41 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk54 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %41, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk54, i32 0, i64 %idxprom53
  %42 = load i64, i64* %arrayidx55, align 8
  %43 = load i32, i32* %i, align 4
  %add56 = add nsw i32 %43, 65
  %idxprom57 = sext i32 %add56 to i64
  %44 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk58 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %44, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk58, i32 0, i64 %idxprom57
  store i64 %42, i64* %arrayidx59, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4
  %add60 = add nsw i32 %45, 2
  store i32 %add60, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @des3_set_3keys(%struct.des3_context* %ctx, i8* %key1, i8* %key2, i8* %key3) #0 {
entry:
  %ctx.addr = alloca %struct.des3_context*, align 8
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  %key3.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.des3_context* %ctx, %struct.des3_context** %ctx.addr, align 8
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  store i8* %key3, i8** %key3.addr, align 8
  %0 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk = getelementptr inbounds %struct.des3_context, %struct.des3_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [96 x i64], [96 x i64]* %esk, i32 0, i32 0
  %1 = load i8*, i8** %key1.addr, align 8
  %call = call i32 @des_main_ks(i64* %arraydecay, i8* %1)
  %2 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk = getelementptr inbounds %struct.des3_context, %struct.des3_context* %2, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk, i32 0, i32 0
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay1, i64 32
  %3 = load i8*, i8** %key2.addr, align 8
  %call2 = call i32 @des_main_ks(i64* %add.ptr, i8* %3)
  %4 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk3 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %4, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [96 x i64], [96 x i64]* %esk3, i32 0, i32 0
  %add.ptr5 = getelementptr inbounds i64, i64* %arraydecay4, i64 64
  %5 = load i8*, i8** %key3.addr, align 8
  %call6 = call i32 @des_main_ks(i64* %add.ptr5, i8* %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 94, %7
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk7 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %8, i32 0, i32 0
  %arrayidx = getelementptr inbounds [96 x i64], [96 x i64]* %esk7, i32 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk9 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %11, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk9, i32 0, i64 %idxprom8
  store i64 %9, i64* %arrayidx10, align 8
  %12 = load i32, i32* %i, align 4
  %sub11 = sub nsw i32 95, %12
  %idxprom12 = sext i32 %sub11 to i64
  %13 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk13 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %13, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [96 x i64], [96 x i64]* %esk13, i32 0, i64 %idxprom12
  %14 = load i64, i64* %arrayidx14, align 8
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  %idxprom15 = sext i32 %add to i64
  %16 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk16 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk16, i32 0, i64 %idxprom15
  store i64 %14, i64* %arrayidx17, align 8
  %17 = load i32, i32* %i, align 4
  %sub18 = sub nsw i32 62, %17
  %idxprom19 = sext i32 %sub18 to i64
  %18 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk20 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %18, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk20, i32 0, i64 %idxprom19
  %19 = load i64, i64* %arrayidx21, align 8
  %20 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %20, 32
  %idxprom23 = sext i32 %add22 to i64
  %21 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk24 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %21, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [96 x i64], [96 x i64]* %esk24, i32 0, i64 %idxprom23
  store i64 %19, i64* %arrayidx25, align 8
  %22 = load i32, i32* %i, align 4
  %sub26 = sub nsw i32 63, %22
  %idxprom27 = sext i32 %sub26 to i64
  %23 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk28 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %23, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk28, i32 0, i64 %idxprom27
  %24 = load i64, i64* %arrayidx29, align 8
  %25 = load i32, i32* %i, align 4
  %add30 = add nsw i32 %25, 33
  %idxprom31 = sext i32 %add30 to i64
  %26 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk32 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %26, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [96 x i64], [96 x i64]* %esk32, i32 0, i64 %idxprom31
  store i64 %24, i64* %arrayidx33, align 8
  %27 = load i32, i32* %i, align 4
  %sub34 = sub nsw i32 30, %27
  %idxprom35 = sext i32 %sub34 to i64
  %28 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk36 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %28, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [96 x i64], [96 x i64]* %esk36, i32 0, i64 %idxprom35
  %29 = load i64, i64* %arrayidx37, align 8
  %30 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %30, 64
  %idxprom39 = sext i32 %add38 to i64
  %31 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk40 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %31, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk40, i32 0, i64 %idxprom39
  store i64 %29, i64* %arrayidx41, align 8
  %32 = load i32, i32* %i, align 4
  %sub42 = sub nsw i32 31, %32
  %idxprom43 = sext i32 %sub42 to i64
  %33 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk44 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %33, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [96 x i64], [96 x i64]* %esk44, i32 0, i64 %idxprom43
  %34 = load i64, i64* %arrayidx45, align 8
  %35 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %35, 65
  %idxprom47 = sext i32 %add46 to i64
  %36 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk48 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %36, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [96 x i64], [96 x i64]* %dsk48, i32 0, i64 %idxprom47
  store i64 %34, i64* %arrayidx49, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %37, 2
  store i32 %add50, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @des3_crypt(i64* %SK, i8* %input, i8* %output) #0 {
entry:
  %SK.addr = alloca i64*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %X = alloca i64, align 8
  %Y = alloca i64, align 8
  %T = alloca i64, align 8
  store i64* %SK, i64** %SK.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %shl = shl i64 %conv, 24
  %2 = load i8*, i8** %input.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl i64 %conv2, 16
  %or = or i64 %shl, %shl3
  %4 = load i8*, i8** %input.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i64
  %shl6 = shl i64 %conv5, 8
  %or7 = or i64 %or, %shl6
  %6 = load i8*, i8** %input.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i64
  %or10 = or i64 %or7, %conv9
  store i64 %or10, i64* %X, align 8
  %8 = load i8*, i8** %input.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i64
  %shl13 = shl i64 %conv12, 24
  %10 = load i8*, i8** %input.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %11 to i64
  %shl16 = shl i64 %conv15, 16
  %or17 = or i64 %shl13, %shl16
  %12 = load i8*, i8** %input.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i64
  %shl20 = shl i64 %conv19, 8
  %or21 = or i64 %or17, %shl20
  %14 = load i8*, i8** %input.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %15 to i64
  %or24 = or i64 %or21, %conv23
  store i64 %or24, i64* %Y, align 8
  %16 = load i64, i64* %X, align 8
  %shr = lshr i64 %16, 4
  %17 = load i64, i64* %Y, align 8
  %xor = xor i64 %shr, %17
  %and = and i64 %xor, 252645135
  store i64 %and, i64* %T, align 8
  %18 = load i64, i64* %T, align 8
  %19 = load i64, i64* %Y, align 8
  %xor25 = xor i64 %19, %18
  store i64 %xor25, i64* %Y, align 8
  %20 = load i64, i64* %T, align 8
  %shl26 = shl i64 %20, 4
  %21 = load i64, i64* %X, align 8
  %xor27 = xor i64 %21, %shl26
  store i64 %xor27, i64* %X, align 8
  %22 = load i64, i64* %X, align 8
  %shr28 = lshr i64 %22, 16
  %23 = load i64, i64* %Y, align 8
  %xor29 = xor i64 %shr28, %23
  %and30 = and i64 %xor29, 65535
  store i64 %and30, i64* %T, align 8
  %24 = load i64, i64* %T, align 8
  %25 = load i64, i64* %Y, align 8
  %xor31 = xor i64 %25, %24
  store i64 %xor31, i64* %Y, align 8
  %26 = load i64, i64* %T, align 8
  %shl32 = shl i64 %26, 16
  %27 = load i64, i64* %X, align 8
  %xor33 = xor i64 %27, %shl32
  store i64 %xor33, i64* %X, align 8
  %28 = load i64, i64* %Y, align 8
  %shr34 = lshr i64 %28, 2
  %29 = load i64, i64* %X, align 8
  %xor35 = xor i64 %shr34, %29
  %and36 = and i64 %xor35, 858993459
  store i64 %and36, i64* %T, align 8
  %30 = load i64, i64* %T, align 8
  %31 = load i64, i64* %X, align 8
  %xor37 = xor i64 %31, %30
  store i64 %xor37, i64* %X, align 8
  %32 = load i64, i64* %T, align 8
  %shl38 = shl i64 %32, 2
  %33 = load i64, i64* %Y, align 8
  %xor39 = xor i64 %33, %shl38
  store i64 %xor39, i64* %Y, align 8
  %34 = load i64, i64* %Y, align 8
  %shr40 = lshr i64 %34, 8
  %35 = load i64, i64* %X, align 8
  %xor41 = xor i64 %shr40, %35
  %and42 = and i64 %xor41, 16711935
  store i64 %and42, i64* %T, align 8
  %36 = load i64, i64* %T, align 8
  %37 = load i64, i64* %X, align 8
  %xor43 = xor i64 %37, %36
  store i64 %xor43, i64* %X, align 8
  %38 = load i64, i64* %T, align 8
  %shl44 = shl i64 %38, 8
  %39 = load i64, i64* %Y, align 8
  %xor45 = xor i64 %39, %shl44
  store i64 %xor45, i64* %Y, align 8
  %40 = load i64, i64* %Y, align 8
  %shl46 = shl i64 %40, 1
  %41 = load i64, i64* %Y, align 8
  %shr47 = lshr i64 %41, 31
  %or48 = or i64 %shl46, %shr47
  %and49 = and i64 %or48, 4294967295
  store i64 %and49, i64* %Y, align 8
  %42 = load i64, i64* %X, align 8
  %43 = load i64, i64* %Y, align 8
  %xor50 = xor i64 %42, %43
  %and51 = and i64 %xor50, 2863311530
  store i64 %and51, i64* %T, align 8
  %44 = load i64, i64* %T, align 8
  %45 = load i64, i64* %Y, align 8
  %xor52 = xor i64 %45, %44
  store i64 %xor52, i64* %Y, align 8
  %46 = load i64, i64* %T, align 8
  %47 = load i64, i64* %X, align 8
  %xor53 = xor i64 %47, %46
  store i64 %xor53, i64* %X, align 8
  %48 = load i64, i64* %X, align 8
  %shl54 = shl i64 %48, 1
  %49 = load i64, i64* %X, align 8
  %shr55 = lshr i64 %49, 31
  %or56 = or i64 %shl54, %shr55
  %and57 = and i64 %or56, 4294967295
  store i64 %and57, i64* %X, align 8
  %50 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %incdec.ptr, i64** %SK.addr, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %Y, align 8
  %xor58 = xor i64 %51, %52
  store i64 %xor58, i64* %T, align 8
  %53 = load i64, i64* %T, align 8
  %and59 = and i64 %53, 63
  %arrayidx60 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and59
  %54 = load i64, i64* %arrayidx60, align 8
  %55 = load i64, i64* %T, align 8
  %shr61 = lshr i64 %55, 8
  %and62 = and i64 %shr61, 63
  %arrayidx63 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and62
  %56 = load i64, i64* %arrayidx63, align 8
  %xor64 = xor i64 %54, %56
  %57 = load i64, i64* %T, align 8
  %shr65 = lshr i64 %57, 16
  %and66 = and i64 %shr65, 63
  %arrayidx67 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and66
  %58 = load i64, i64* %arrayidx67, align 8
  %xor68 = xor i64 %xor64, %58
  %59 = load i64, i64* %T, align 8
  %shr69 = lshr i64 %59, 24
  %and70 = and i64 %shr69, 63
  %arrayidx71 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and70
  %60 = load i64, i64* %arrayidx71, align 8
  %xor72 = xor i64 %xor68, %60
  %61 = load i64, i64* %X, align 8
  %xor73 = xor i64 %61, %xor72
  store i64 %xor73, i64* %X, align 8
  %62 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %incdec.ptr74, i64** %SK.addr, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %Y, align 8
  %shl75 = shl i64 %64, 28
  %65 = load i64, i64* %Y, align 8
  %shr76 = lshr i64 %65, 4
  %or77 = or i64 %shl75, %shr76
  %xor78 = xor i64 %63, %or77
  store i64 %xor78, i64* %T, align 8
  %66 = load i64, i64* %T, align 8
  %and79 = and i64 %66, 63
  %arrayidx80 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and79
  %67 = load i64, i64* %arrayidx80, align 8
  %68 = load i64, i64* %T, align 8
  %shr81 = lshr i64 %68, 8
  %and82 = and i64 %shr81, 63
  %arrayidx83 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and82
  %69 = load i64, i64* %arrayidx83, align 8
  %xor84 = xor i64 %67, %69
  %70 = load i64, i64* %T, align 8
  %shr85 = lshr i64 %70, 16
  %and86 = and i64 %shr85, 63
  %arrayidx87 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and86
  %71 = load i64, i64* %arrayidx87, align 8
  %xor88 = xor i64 %xor84, %71
  %72 = load i64, i64* %T, align 8
  %shr89 = lshr i64 %72, 24
  %and90 = and i64 %shr89, 63
  %arrayidx91 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and90
  %73 = load i64, i64* %arrayidx91, align 8
  %xor92 = xor i64 %xor88, %73
  %74 = load i64, i64* %X, align 8
  %xor93 = xor i64 %74, %xor92
  store i64 %xor93, i64* %X, align 8
  %75 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %incdec.ptr94, i64** %SK.addr, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %X, align 8
  %xor95 = xor i64 %76, %77
  store i64 %xor95, i64* %T, align 8
  %78 = load i64, i64* %T, align 8
  %and96 = and i64 %78, 63
  %arrayidx97 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and96
  %79 = load i64, i64* %arrayidx97, align 8
  %80 = load i64, i64* %T, align 8
  %shr98 = lshr i64 %80, 8
  %and99 = and i64 %shr98, 63
  %arrayidx100 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and99
  %81 = load i64, i64* %arrayidx100, align 8
  %xor101 = xor i64 %79, %81
  %82 = load i64, i64* %T, align 8
  %shr102 = lshr i64 %82, 16
  %and103 = and i64 %shr102, 63
  %arrayidx104 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and103
  %83 = load i64, i64* %arrayidx104, align 8
  %xor105 = xor i64 %xor101, %83
  %84 = load i64, i64* %T, align 8
  %shr106 = lshr i64 %84, 24
  %and107 = and i64 %shr106, 63
  %arrayidx108 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and107
  %85 = load i64, i64* %arrayidx108, align 8
  %xor109 = xor i64 %xor105, %85
  %86 = load i64, i64* %Y, align 8
  %xor110 = xor i64 %86, %xor109
  store i64 %xor110, i64* %Y, align 8
  %87 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %incdec.ptr111, i64** %SK.addr, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %X, align 8
  %shl112 = shl i64 %89, 28
  %90 = load i64, i64* %X, align 8
  %shr113 = lshr i64 %90, 4
  %or114 = or i64 %shl112, %shr113
  %xor115 = xor i64 %88, %or114
  store i64 %xor115, i64* %T, align 8
  %91 = load i64, i64* %T, align 8
  %and116 = and i64 %91, 63
  %arrayidx117 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and116
  %92 = load i64, i64* %arrayidx117, align 8
  %93 = load i64, i64* %T, align 8
  %shr118 = lshr i64 %93, 8
  %and119 = and i64 %shr118, 63
  %arrayidx120 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and119
  %94 = load i64, i64* %arrayidx120, align 8
  %xor121 = xor i64 %92, %94
  %95 = load i64, i64* %T, align 8
  %shr122 = lshr i64 %95, 16
  %and123 = and i64 %shr122, 63
  %arrayidx124 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and123
  %96 = load i64, i64* %arrayidx124, align 8
  %xor125 = xor i64 %xor121, %96
  %97 = load i64, i64* %T, align 8
  %shr126 = lshr i64 %97, 24
  %and127 = and i64 %shr126, 63
  %arrayidx128 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and127
  %98 = load i64, i64* %arrayidx128, align 8
  %xor129 = xor i64 %xor125, %98
  %99 = load i64, i64* %Y, align 8
  %xor130 = xor i64 %99, %xor129
  store i64 %xor130, i64* %Y, align 8
  %100 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr131 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %incdec.ptr131, i64** %SK.addr, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %Y, align 8
  %xor132 = xor i64 %101, %102
  store i64 %xor132, i64* %T, align 8
  %103 = load i64, i64* %T, align 8
  %and133 = and i64 %103, 63
  %arrayidx134 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and133
  %104 = load i64, i64* %arrayidx134, align 8
  %105 = load i64, i64* %T, align 8
  %shr135 = lshr i64 %105, 8
  %and136 = and i64 %shr135, 63
  %arrayidx137 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and136
  %106 = load i64, i64* %arrayidx137, align 8
  %xor138 = xor i64 %104, %106
  %107 = load i64, i64* %T, align 8
  %shr139 = lshr i64 %107, 16
  %and140 = and i64 %shr139, 63
  %arrayidx141 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and140
  %108 = load i64, i64* %arrayidx141, align 8
  %xor142 = xor i64 %xor138, %108
  %109 = load i64, i64* %T, align 8
  %shr143 = lshr i64 %109, 24
  %and144 = and i64 %shr143, 63
  %arrayidx145 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and144
  %110 = load i64, i64* %arrayidx145, align 8
  %xor146 = xor i64 %xor142, %110
  %111 = load i64, i64* %X, align 8
  %xor147 = xor i64 %111, %xor146
  store i64 %xor147, i64* %X, align 8
  %112 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %incdec.ptr148, i64** %SK.addr, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %Y, align 8
  %shl149 = shl i64 %114, 28
  %115 = load i64, i64* %Y, align 8
  %shr150 = lshr i64 %115, 4
  %or151 = or i64 %shl149, %shr150
  %xor152 = xor i64 %113, %or151
  store i64 %xor152, i64* %T, align 8
  %116 = load i64, i64* %T, align 8
  %and153 = and i64 %116, 63
  %arrayidx154 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and153
  %117 = load i64, i64* %arrayidx154, align 8
  %118 = load i64, i64* %T, align 8
  %shr155 = lshr i64 %118, 8
  %and156 = and i64 %shr155, 63
  %arrayidx157 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and156
  %119 = load i64, i64* %arrayidx157, align 8
  %xor158 = xor i64 %117, %119
  %120 = load i64, i64* %T, align 8
  %shr159 = lshr i64 %120, 16
  %and160 = and i64 %shr159, 63
  %arrayidx161 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and160
  %121 = load i64, i64* %arrayidx161, align 8
  %xor162 = xor i64 %xor158, %121
  %122 = load i64, i64* %T, align 8
  %shr163 = lshr i64 %122, 24
  %and164 = and i64 %shr163, 63
  %arrayidx165 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and164
  %123 = load i64, i64* %arrayidx165, align 8
  %xor166 = xor i64 %xor162, %123
  %124 = load i64, i64* %X, align 8
  %xor167 = xor i64 %124, %xor166
  store i64 %xor167, i64* %X, align 8
  %125 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr168 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %incdec.ptr168, i64** %SK.addr, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %X, align 8
  %xor169 = xor i64 %126, %127
  store i64 %xor169, i64* %T, align 8
  %128 = load i64, i64* %T, align 8
  %and170 = and i64 %128, 63
  %arrayidx171 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and170
  %129 = load i64, i64* %arrayidx171, align 8
  %130 = load i64, i64* %T, align 8
  %shr172 = lshr i64 %130, 8
  %and173 = and i64 %shr172, 63
  %arrayidx174 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and173
  %131 = load i64, i64* %arrayidx174, align 8
  %xor175 = xor i64 %129, %131
  %132 = load i64, i64* %T, align 8
  %shr176 = lshr i64 %132, 16
  %and177 = and i64 %shr176, 63
  %arrayidx178 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and177
  %133 = load i64, i64* %arrayidx178, align 8
  %xor179 = xor i64 %xor175, %133
  %134 = load i64, i64* %T, align 8
  %shr180 = lshr i64 %134, 24
  %and181 = and i64 %shr180, 63
  %arrayidx182 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and181
  %135 = load i64, i64* %arrayidx182, align 8
  %xor183 = xor i64 %xor179, %135
  %136 = load i64, i64* %Y, align 8
  %xor184 = xor i64 %136, %xor183
  store i64 %xor184, i64* %Y, align 8
  %137 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr185 = getelementptr inbounds i64, i64* %137, i32 1
  store i64* %incdec.ptr185, i64** %SK.addr, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %X, align 8
  %shl186 = shl i64 %139, 28
  %140 = load i64, i64* %X, align 8
  %shr187 = lshr i64 %140, 4
  %or188 = or i64 %shl186, %shr187
  %xor189 = xor i64 %138, %or188
  store i64 %xor189, i64* %T, align 8
  %141 = load i64, i64* %T, align 8
  %and190 = and i64 %141, 63
  %arrayidx191 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and190
  %142 = load i64, i64* %arrayidx191, align 8
  %143 = load i64, i64* %T, align 8
  %shr192 = lshr i64 %143, 8
  %and193 = and i64 %shr192, 63
  %arrayidx194 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and193
  %144 = load i64, i64* %arrayidx194, align 8
  %xor195 = xor i64 %142, %144
  %145 = load i64, i64* %T, align 8
  %shr196 = lshr i64 %145, 16
  %and197 = and i64 %shr196, 63
  %arrayidx198 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and197
  %146 = load i64, i64* %arrayidx198, align 8
  %xor199 = xor i64 %xor195, %146
  %147 = load i64, i64* %T, align 8
  %shr200 = lshr i64 %147, 24
  %and201 = and i64 %shr200, 63
  %arrayidx202 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and201
  %148 = load i64, i64* %arrayidx202, align 8
  %xor203 = xor i64 %xor199, %148
  %149 = load i64, i64* %Y, align 8
  %xor204 = xor i64 %149, %xor203
  store i64 %xor204, i64* %Y, align 8
  %150 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr205 = getelementptr inbounds i64, i64* %150, i32 1
  store i64* %incdec.ptr205, i64** %SK.addr, align 8
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %Y, align 8
  %xor206 = xor i64 %151, %152
  store i64 %xor206, i64* %T, align 8
  %153 = load i64, i64* %T, align 8
  %and207 = and i64 %153, 63
  %arrayidx208 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and207
  %154 = load i64, i64* %arrayidx208, align 8
  %155 = load i64, i64* %T, align 8
  %shr209 = lshr i64 %155, 8
  %and210 = and i64 %shr209, 63
  %arrayidx211 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and210
  %156 = load i64, i64* %arrayidx211, align 8
  %xor212 = xor i64 %154, %156
  %157 = load i64, i64* %T, align 8
  %shr213 = lshr i64 %157, 16
  %and214 = and i64 %shr213, 63
  %arrayidx215 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and214
  %158 = load i64, i64* %arrayidx215, align 8
  %xor216 = xor i64 %xor212, %158
  %159 = load i64, i64* %T, align 8
  %shr217 = lshr i64 %159, 24
  %and218 = and i64 %shr217, 63
  %arrayidx219 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and218
  %160 = load i64, i64* %arrayidx219, align 8
  %xor220 = xor i64 %xor216, %160
  %161 = load i64, i64* %X, align 8
  %xor221 = xor i64 %161, %xor220
  store i64 %xor221, i64* %X, align 8
  %162 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr222 = getelementptr inbounds i64, i64* %162, i32 1
  store i64* %incdec.ptr222, i64** %SK.addr, align 8
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %Y, align 8
  %shl223 = shl i64 %164, 28
  %165 = load i64, i64* %Y, align 8
  %shr224 = lshr i64 %165, 4
  %or225 = or i64 %shl223, %shr224
  %xor226 = xor i64 %163, %or225
  store i64 %xor226, i64* %T, align 8
  %166 = load i64, i64* %T, align 8
  %and227 = and i64 %166, 63
  %arrayidx228 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and227
  %167 = load i64, i64* %arrayidx228, align 8
  %168 = load i64, i64* %T, align 8
  %shr229 = lshr i64 %168, 8
  %and230 = and i64 %shr229, 63
  %arrayidx231 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and230
  %169 = load i64, i64* %arrayidx231, align 8
  %xor232 = xor i64 %167, %169
  %170 = load i64, i64* %T, align 8
  %shr233 = lshr i64 %170, 16
  %and234 = and i64 %shr233, 63
  %arrayidx235 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and234
  %171 = load i64, i64* %arrayidx235, align 8
  %xor236 = xor i64 %xor232, %171
  %172 = load i64, i64* %T, align 8
  %shr237 = lshr i64 %172, 24
  %and238 = and i64 %shr237, 63
  %arrayidx239 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and238
  %173 = load i64, i64* %arrayidx239, align 8
  %xor240 = xor i64 %xor236, %173
  %174 = load i64, i64* %X, align 8
  %xor241 = xor i64 %174, %xor240
  store i64 %xor241, i64* %X, align 8
  %175 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr242 = getelementptr inbounds i64, i64* %175, i32 1
  store i64* %incdec.ptr242, i64** %SK.addr, align 8
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %X, align 8
  %xor243 = xor i64 %176, %177
  store i64 %xor243, i64* %T, align 8
  %178 = load i64, i64* %T, align 8
  %and244 = and i64 %178, 63
  %arrayidx245 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and244
  %179 = load i64, i64* %arrayidx245, align 8
  %180 = load i64, i64* %T, align 8
  %shr246 = lshr i64 %180, 8
  %and247 = and i64 %shr246, 63
  %arrayidx248 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and247
  %181 = load i64, i64* %arrayidx248, align 8
  %xor249 = xor i64 %179, %181
  %182 = load i64, i64* %T, align 8
  %shr250 = lshr i64 %182, 16
  %and251 = and i64 %shr250, 63
  %arrayidx252 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and251
  %183 = load i64, i64* %arrayidx252, align 8
  %xor253 = xor i64 %xor249, %183
  %184 = load i64, i64* %T, align 8
  %shr254 = lshr i64 %184, 24
  %and255 = and i64 %shr254, 63
  %arrayidx256 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and255
  %185 = load i64, i64* %arrayidx256, align 8
  %xor257 = xor i64 %xor253, %185
  %186 = load i64, i64* %Y, align 8
  %xor258 = xor i64 %186, %xor257
  store i64 %xor258, i64* %Y, align 8
  %187 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr259 = getelementptr inbounds i64, i64* %187, i32 1
  store i64* %incdec.ptr259, i64** %SK.addr, align 8
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %X, align 8
  %shl260 = shl i64 %189, 28
  %190 = load i64, i64* %X, align 8
  %shr261 = lshr i64 %190, 4
  %or262 = or i64 %shl260, %shr261
  %xor263 = xor i64 %188, %or262
  store i64 %xor263, i64* %T, align 8
  %191 = load i64, i64* %T, align 8
  %and264 = and i64 %191, 63
  %arrayidx265 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and264
  %192 = load i64, i64* %arrayidx265, align 8
  %193 = load i64, i64* %T, align 8
  %shr266 = lshr i64 %193, 8
  %and267 = and i64 %shr266, 63
  %arrayidx268 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and267
  %194 = load i64, i64* %arrayidx268, align 8
  %xor269 = xor i64 %192, %194
  %195 = load i64, i64* %T, align 8
  %shr270 = lshr i64 %195, 16
  %and271 = and i64 %shr270, 63
  %arrayidx272 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and271
  %196 = load i64, i64* %arrayidx272, align 8
  %xor273 = xor i64 %xor269, %196
  %197 = load i64, i64* %T, align 8
  %shr274 = lshr i64 %197, 24
  %and275 = and i64 %shr274, 63
  %arrayidx276 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and275
  %198 = load i64, i64* %arrayidx276, align 8
  %xor277 = xor i64 %xor273, %198
  %199 = load i64, i64* %Y, align 8
  %xor278 = xor i64 %199, %xor277
  store i64 %xor278, i64* %Y, align 8
  %200 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr279 = getelementptr inbounds i64, i64* %200, i32 1
  store i64* %incdec.ptr279, i64** %SK.addr, align 8
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %Y, align 8
  %xor280 = xor i64 %201, %202
  store i64 %xor280, i64* %T, align 8
  %203 = load i64, i64* %T, align 8
  %and281 = and i64 %203, 63
  %arrayidx282 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and281
  %204 = load i64, i64* %arrayidx282, align 8
  %205 = load i64, i64* %T, align 8
  %shr283 = lshr i64 %205, 8
  %and284 = and i64 %shr283, 63
  %arrayidx285 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and284
  %206 = load i64, i64* %arrayidx285, align 8
  %xor286 = xor i64 %204, %206
  %207 = load i64, i64* %T, align 8
  %shr287 = lshr i64 %207, 16
  %and288 = and i64 %shr287, 63
  %arrayidx289 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and288
  %208 = load i64, i64* %arrayidx289, align 8
  %xor290 = xor i64 %xor286, %208
  %209 = load i64, i64* %T, align 8
  %shr291 = lshr i64 %209, 24
  %and292 = and i64 %shr291, 63
  %arrayidx293 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and292
  %210 = load i64, i64* %arrayidx293, align 8
  %xor294 = xor i64 %xor290, %210
  %211 = load i64, i64* %X, align 8
  %xor295 = xor i64 %211, %xor294
  store i64 %xor295, i64* %X, align 8
  %212 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr296 = getelementptr inbounds i64, i64* %212, i32 1
  store i64* %incdec.ptr296, i64** %SK.addr, align 8
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %Y, align 8
  %shl297 = shl i64 %214, 28
  %215 = load i64, i64* %Y, align 8
  %shr298 = lshr i64 %215, 4
  %or299 = or i64 %shl297, %shr298
  %xor300 = xor i64 %213, %or299
  store i64 %xor300, i64* %T, align 8
  %216 = load i64, i64* %T, align 8
  %and301 = and i64 %216, 63
  %arrayidx302 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and301
  %217 = load i64, i64* %arrayidx302, align 8
  %218 = load i64, i64* %T, align 8
  %shr303 = lshr i64 %218, 8
  %and304 = and i64 %shr303, 63
  %arrayidx305 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and304
  %219 = load i64, i64* %arrayidx305, align 8
  %xor306 = xor i64 %217, %219
  %220 = load i64, i64* %T, align 8
  %shr307 = lshr i64 %220, 16
  %and308 = and i64 %shr307, 63
  %arrayidx309 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and308
  %221 = load i64, i64* %arrayidx309, align 8
  %xor310 = xor i64 %xor306, %221
  %222 = load i64, i64* %T, align 8
  %shr311 = lshr i64 %222, 24
  %and312 = and i64 %shr311, 63
  %arrayidx313 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and312
  %223 = load i64, i64* %arrayidx313, align 8
  %xor314 = xor i64 %xor310, %223
  %224 = load i64, i64* %X, align 8
  %xor315 = xor i64 %224, %xor314
  store i64 %xor315, i64* %X, align 8
  %225 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr316 = getelementptr inbounds i64, i64* %225, i32 1
  store i64* %incdec.ptr316, i64** %SK.addr, align 8
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %X, align 8
  %xor317 = xor i64 %226, %227
  store i64 %xor317, i64* %T, align 8
  %228 = load i64, i64* %T, align 8
  %and318 = and i64 %228, 63
  %arrayidx319 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and318
  %229 = load i64, i64* %arrayidx319, align 8
  %230 = load i64, i64* %T, align 8
  %shr320 = lshr i64 %230, 8
  %and321 = and i64 %shr320, 63
  %arrayidx322 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and321
  %231 = load i64, i64* %arrayidx322, align 8
  %xor323 = xor i64 %229, %231
  %232 = load i64, i64* %T, align 8
  %shr324 = lshr i64 %232, 16
  %and325 = and i64 %shr324, 63
  %arrayidx326 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and325
  %233 = load i64, i64* %arrayidx326, align 8
  %xor327 = xor i64 %xor323, %233
  %234 = load i64, i64* %T, align 8
  %shr328 = lshr i64 %234, 24
  %and329 = and i64 %shr328, 63
  %arrayidx330 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and329
  %235 = load i64, i64* %arrayidx330, align 8
  %xor331 = xor i64 %xor327, %235
  %236 = load i64, i64* %Y, align 8
  %xor332 = xor i64 %236, %xor331
  store i64 %xor332, i64* %Y, align 8
  %237 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr333 = getelementptr inbounds i64, i64* %237, i32 1
  store i64* %incdec.ptr333, i64** %SK.addr, align 8
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %X, align 8
  %shl334 = shl i64 %239, 28
  %240 = load i64, i64* %X, align 8
  %shr335 = lshr i64 %240, 4
  %or336 = or i64 %shl334, %shr335
  %xor337 = xor i64 %238, %or336
  store i64 %xor337, i64* %T, align 8
  %241 = load i64, i64* %T, align 8
  %and338 = and i64 %241, 63
  %arrayidx339 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and338
  %242 = load i64, i64* %arrayidx339, align 8
  %243 = load i64, i64* %T, align 8
  %shr340 = lshr i64 %243, 8
  %and341 = and i64 %shr340, 63
  %arrayidx342 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and341
  %244 = load i64, i64* %arrayidx342, align 8
  %xor343 = xor i64 %242, %244
  %245 = load i64, i64* %T, align 8
  %shr344 = lshr i64 %245, 16
  %and345 = and i64 %shr344, 63
  %arrayidx346 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and345
  %246 = load i64, i64* %arrayidx346, align 8
  %xor347 = xor i64 %xor343, %246
  %247 = load i64, i64* %T, align 8
  %shr348 = lshr i64 %247, 24
  %and349 = and i64 %shr348, 63
  %arrayidx350 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and349
  %248 = load i64, i64* %arrayidx350, align 8
  %xor351 = xor i64 %xor347, %248
  %249 = load i64, i64* %Y, align 8
  %xor352 = xor i64 %249, %xor351
  store i64 %xor352, i64* %Y, align 8
  %250 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr353 = getelementptr inbounds i64, i64* %250, i32 1
  store i64* %incdec.ptr353, i64** %SK.addr, align 8
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %Y, align 8
  %xor354 = xor i64 %251, %252
  store i64 %xor354, i64* %T, align 8
  %253 = load i64, i64* %T, align 8
  %and355 = and i64 %253, 63
  %arrayidx356 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and355
  %254 = load i64, i64* %arrayidx356, align 8
  %255 = load i64, i64* %T, align 8
  %shr357 = lshr i64 %255, 8
  %and358 = and i64 %shr357, 63
  %arrayidx359 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and358
  %256 = load i64, i64* %arrayidx359, align 8
  %xor360 = xor i64 %254, %256
  %257 = load i64, i64* %T, align 8
  %shr361 = lshr i64 %257, 16
  %and362 = and i64 %shr361, 63
  %arrayidx363 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and362
  %258 = load i64, i64* %arrayidx363, align 8
  %xor364 = xor i64 %xor360, %258
  %259 = load i64, i64* %T, align 8
  %shr365 = lshr i64 %259, 24
  %and366 = and i64 %shr365, 63
  %arrayidx367 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and366
  %260 = load i64, i64* %arrayidx367, align 8
  %xor368 = xor i64 %xor364, %260
  %261 = load i64, i64* %X, align 8
  %xor369 = xor i64 %261, %xor368
  store i64 %xor369, i64* %X, align 8
  %262 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr370 = getelementptr inbounds i64, i64* %262, i32 1
  store i64* %incdec.ptr370, i64** %SK.addr, align 8
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %Y, align 8
  %shl371 = shl i64 %264, 28
  %265 = load i64, i64* %Y, align 8
  %shr372 = lshr i64 %265, 4
  %or373 = or i64 %shl371, %shr372
  %xor374 = xor i64 %263, %or373
  store i64 %xor374, i64* %T, align 8
  %266 = load i64, i64* %T, align 8
  %and375 = and i64 %266, 63
  %arrayidx376 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and375
  %267 = load i64, i64* %arrayidx376, align 8
  %268 = load i64, i64* %T, align 8
  %shr377 = lshr i64 %268, 8
  %and378 = and i64 %shr377, 63
  %arrayidx379 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and378
  %269 = load i64, i64* %arrayidx379, align 8
  %xor380 = xor i64 %267, %269
  %270 = load i64, i64* %T, align 8
  %shr381 = lshr i64 %270, 16
  %and382 = and i64 %shr381, 63
  %arrayidx383 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and382
  %271 = load i64, i64* %arrayidx383, align 8
  %xor384 = xor i64 %xor380, %271
  %272 = load i64, i64* %T, align 8
  %shr385 = lshr i64 %272, 24
  %and386 = and i64 %shr385, 63
  %arrayidx387 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and386
  %273 = load i64, i64* %arrayidx387, align 8
  %xor388 = xor i64 %xor384, %273
  %274 = load i64, i64* %X, align 8
  %xor389 = xor i64 %274, %xor388
  store i64 %xor389, i64* %X, align 8
  %275 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr390 = getelementptr inbounds i64, i64* %275, i32 1
  store i64* %incdec.ptr390, i64** %SK.addr, align 8
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* %X, align 8
  %xor391 = xor i64 %276, %277
  store i64 %xor391, i64* %T, align 8
  %278 = load i64, i64* %T, align 8
  %and392 = and i64 %278, 63
  %arrayidx393 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and392
  %279 = load i64, i64* %arrayidx393, align 8
  %280 = load i64, i64* %T, align 8
  %shr394 = lshr i64 %280, 8
  %and395 = and i64 %shr394, 63
  %arrayidx396 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and395
  %281 = load i64, i64* %arrayidx396, align 8
  %xor397 = xor i64 %279, %281
  %282 = load i64, i64* %T, align 8
  %shr398 = lshr i64 %282, 16
  %and399 = and i64 %shr398, 63
  %arrayidx400 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and399
  %283 = load i64, i64* %arrayidx400, align 8
  %xor401 = xor i64 %xor397, %283
  %284 = load i64, i64* %T, align 8
  %shr402 = lshr i64 %284, 24
  %and403 = and i64 %shr402, 63
  %arrayidx404 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and403
  %285 = load i64, i64* %arrayidx404, align 8
  %xor405 = xor i64 %xor401, %285
  %286 = load i64, i64* %Y, align 8
  %xor406 = xor i64 %286, %xor405
  store i64 %xor406, i64* %Y, align 8
  %287 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr407 = getelementptr inbounds i64, i64* %287, i32 1
  store i64* %incdec.ptr407, i64** %SK.addr, align 8
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %X, align 8
  %shl408 = shl i64 %289, 28
  %290 = load i64, i64* %X, align 8
  %shr409 = lshr i64 %290, 4
  %or410 = or i64 %shl408, %shr409
  %xor411 = xor i64 %288, %or410
  store i64 %xor411, i64* %T, align 8
  %291 = load i64, i64* %T, align 8
  %and412 = and i64 %291, 63
  %arrayidx413 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and412
  %292 = load i64, i64* %arrayidx413, align 8
  %293 = load i64, i64* %T, align 8
  %shr414 = lshr i64 %293, 8
  %and415 = and i64 %shr414, 63
  %arrayidx416 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and415
  %294 = load i64, i64* %arrayidx416, align 8
  %xor417 = xor i64 %292, %294
  %295 = load i64, i64* %T, align 8
  %shr418 = lshr i64 %295, 16
  %and419 = and i64 %shr418, 63
  %arrayidx420 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and419
  %296 = load i64, i64* %arrayidx420, align 8
  %xor421 = xor i64 %xor417, %296
  %297 = load i64, i64* %T, align 8
  %shr422 = lshr i64 %297, 24
  %and423 = and i64 %shr422, 63
  %arrayidx424 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and423
  %298 = load i64, i64* %arrayidx424, align 8
  %xor425 = xor i64 %xor421, %298
  %299 = load i64, i64* %Y, align 8
  %xor426 = xor i64 %299, %xor425
  store i64 %xor426, i64* %Y, align 8
  %300 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr427 = getelementptr inbounds i64, i64* %300, i32 1
  store i64* %incdec.ptr427, i64** %SK.addr, align 8
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* %Y, align 8
  %xor428 = xor i64 %301, %302
  store i64 %xor428, i64* %T, align 8
  %303 = load i64, i64* %T, align 8
  %and429 = and i64 %303, 63
  %arrayidx430 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and429
  %304 = load i64, i64* %arrayidx430, align 8
  %305 = load i64, i64* %T, align 8
  %shr431 = lshr i64 %305, 8
  %and432 = and i64 %shr431, 63
  %arrayidx433 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and432
  %306 = load i64, i64* %arrayidx433, align 8
  %xor434 = xor i64 %304, %306
  %307 = load i64, i64* %T, align 8
  %shr435 = lshr i64 %307, 16
  %and436 = and i64 %shr435, 63
  %arrayidx437 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and436
  %308 = load i64, i64* %arrayidx437, align 8
  %xor438 = xor i64 %xor434, %308
  %309 = load i64, i64* %T, align 8
  %shr439 = lshr i64 %309, 24
  %and440 = and i64 %shr439, 63
  %arrayidx441 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and440
  %310 = load i64, i64* %arrayidx441, align 8
  %xor442 = xor i64 %xor438, %310
  %311 = load i64, i64* %X, align 8
  %xor443 = xor i64 %311, %xor442
  store i64 %xor443, i64* %X, align 8
  %312 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr444 = getelementptr inbounds i64, i64* %312, i32 1
  store i64* %incdec.ptr444, i64** %SK.addr, align 8
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* %Y, align 8
  %shl445 = shl i64 %314, 28
  %315 = load i64, i64* %Y, align 8
  %shr446 = lshr i64 %315, 4
  %or447 = or i64 %shl445, %shr446
  %xor448 = xor i64 %313, %or447
  store i64 %xor448, i64* %T, align 8
  %316 = load i64, i64* %T, align 8
  %and449 = and i64 %316, 63
  %arrayidx450 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and449
  %317 = load i64, i64* %arrayidx450, align 8
  %318 = load i64, i64* %T, align 8
  %shr451 = lshr i64 %318, 8
  %and452 = and i64 %shr451, 63
  %arrayidx453 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and452
  %319 = load i64, i64* %arrayidx453, align 8
  %xor454 = xor i64 %317, %319
  %320 = load i64, i64* %T, align 8
  %shr455 = lshr i64 %320, 16
  %and456 = and i64 %shr455, 63
  %arrayidx457 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and456
  %321 = load i64, i64* %arrayidx457, align 8
  %xor458 = xor i64 %xor454, %321
  %322 = load i64, i64* %T, align 8
  %shr459 = lshr i64 %322, 24
  %and460 = and i64 %shr459, 63
  %arrayidx461 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and460
  %323 = load i64, i64* %arrayidx461, align 8
  %xor462 = xor i64 %xor458, %323
  %324 = load i64, i64* %X, align 8
  %xor463 = xor i64 %324, %xor462
  store i64 %xor463, i64* %X, align 8
  %325 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr464 = getelementptr inbounds i64, i64* %325, i32 1
  store i64* %incdec.ptr464, i64** %SK.addr, align 8
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* %X, align 8
  %xor465 = xor i64 %326, %327
  store i64 %xor465, i64* %T, align 8
  %328 = load i64, i64* %T, align 8
  %and466 = and i64 %328, 63
  %arrayidx467 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and466
  %329 = load i64, i64* %arrayidx467, align 8
  %330 = load i64, i64* %T, align 8
  %shr468 = lshr i64 %330, 8
  %and469 = and i64 %shr468, 63
  %arrayidx470 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and469
  %331 = load i64, i64* %arrayidx470, align 8
  %xor471 = xor i64 %329, %331
  %332 = load i64, i64* %T, align 8
  %shr472 = lshr i64 %332, 16
  %and473 = and i64 %shr472, 63
  %arrayidx474 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and473
  %333 = load i64, i64* %arrayidx474, align 8
  %xor475 = xor i64 %xor471, %333
  %334 = load i64, i64* %T, align 8
  %shr476 = lshr i64 %334, 24
  %and477 = and i64 %shr476, 63
  %arrayidx478 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and477
  %335 = load i64, i64* %arrayidx478, align 8
  %xor479 = xor i64 %xor475, %335
  %336 = load i64, i64* %Y, align 8
  %xor480 = xor i64 %336, %xor479
  store i64 %xor480, i64* %Y, align 8
  %337 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr481 = getelementptr inbounds i64, i64* %337, i32 1
  store i64* %incdec.ptr481, i64** %SK.addr, align 8
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* %X, align 8
  %shl482 = shl i64 %339, 28
  %340 = load i64, i64* %X, align 8
  %shr483 = lshr i64 %340, 4
  %or484 = or i64 %shl482, %shr483
  %xor485 = xor i64 %338, %or484
  store i64 %xor485, i64* %T, align 8
  %341 = load i64, i64* %T, align 8
  %and486 = and i64 %341, 63
  %arrayidx487 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and486
  %342 = load i64, i64* %arrayidx487, align 8
  %343 = load i64, i64* %T, align 8
  %shr488 = lshr i64 %343, 8
  %and489 = and i64 %shr488, 63
  %arrayidx490 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and489
  %344 = load i64, i64* %arrayidx490, align 8
  %xor491 = xor i64 %342, %344
  %345 = load i64, i64* %T, align 8
  %shr492 = lshr i64 %345, 16
  %and493 = and i64 %shr492, 63
  %arrayidx494 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and493
  %346 = load i64, i64* %arrayidx494, align 8
  %xor495 = xor i64 %xor491, %346
  %347 = load i64, i64* %T, align 8
  %shr496 = lshr i64 %347, 24
  %and497 = and i64 %shr496, 63
  %arrayidx498 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and497
  %348 = load i64, i64* %arrayidx498, align 8
  %xor499 = xor i64 %xor495, %348
  %349 = load i64, i64* %Y, align 8
  %xor500 = xor i64 %349, %xor499
  store i64 %xor500, i64* %Y, align 8
  %350 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr501 = getelementptr inbounds i64, i64* %350, i32 1
  store i64* %incdec.ptr501, i64** %SK.addr, align 8
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* %Y, align 8
  %xor502 = xor i64 %351, %352
  store i64 %xor502, i64* %T, align 8
  %353 = load i64, i64* %T, align 8
  %and503 = and i64 %353, 63
  %arrayidx504 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and503
  %354 = load i64, i64* %arrayidx504, align 8
  %355 = load i64, i64* %T, align 8
  %shr505 = lshr i64 %355, 8
  %and506 = and i64 %shr505, 63
  %arrayidx507 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and506
  %356 = load i64, i64* %arrayidx507, align 8
  %xor508 = xor i64 %354, %356
  %357 = load i64, i64* %T, align 8
  %shr509 = lshr i64 %357, 16
  %and510 = and i64 %shr509, 63
  %arrayidx511 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and510
  %358 = load i64, i64* %arrayidx511, align 8
  %xor512 = xor i64 %xor508, %358
  %359 = load i64, i64* %T, align 8
  %shr513 = lshr i64 %359, 24
  %and514 = and i64 %shr513, 63
  %arrayidx515 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and514
  %360 = load i64, i64* %arrayidx515, align 8
  %xor516 = xor i64 %xor512, %360
  %361 = load i64, i64* %X, align 8
  %xor517 = xor i64 %361, %xor516
  store i64 %xor517, i64* %X, align 8
  %362 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr518 = getelementptr inbounds i64, i64* %362, i32 1
  store i64* %incdec.ptr518, i64** %SK.addr, align 8
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* %Y, align 8
  %shl519 = shl i64 %364, 28
  %365 = load i64, i64* %Y, align 8
  %shr520 = lshr i64 %365, 4
  %or521 = or i64 %shl519, %shr520
  %xor522 = xor i64 %363, %or521
  store i64 %xor522, i64* %T, align 8
  %366 = load i64, i64* %T, align 8
  %and523 = and i64 %366, 63
  %arrayidx524 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and523
  %367 = load i64, i64* %arrayidx524, align 8
  %368 = load i64, i64* %T, align 8
  %shr525 = lshr i64 %368, 8
  %and526 = and i64 %shr525, 63
  %arrayidx527 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and526
  %369 = load i64, i64* %arrayidx527, align 8
  %xor528 = xor i64 %367, %369
  %370 = load i64, i64* %T, align 8
  %shr529 = lshr i64 %370, 16
  %and530 = and i64 %shr529, 63
  %arrayidx531 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and530
  %371 = load i64, i64* %arrayidx531, align 8
  %xor532 = xor i64 %xor528, %371
  %372 = load i64, i64* %T, align 8
  %shr533 = lshr i64 %372, 24
  %and534 = and i64 %shr533, 63
  %arrayidx535 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and534
  %373 = load i64, i64* %arrayidx535, align 8
  %xor536 = xor i64 %xor532, %373
  %374 = load i64, i64* %X, align 8
  %xor537 = xor i64 %374, %xor536
  store i64 %xor537, i64* %X, align 8
  %375 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr538 = getelementptr inbounds i64, i64* %375, i32 1
  store i64* %incdec.ptr538, i64** %SK.addr, align 8
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* %X, align 8
  %xor539 = xor i64 %376, %377
  store i64 %xor539, i64* %T, align 8
  %378 = load i64, i64* %T, align 8
  %and540 = and i64 %378, 63
  %arrayidx541 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and540
  %379 = load i64, i64* %arrayidx541, align 8
  %380 = load i64, i64* %T, align 8
  %shr542 = lshr i64 %380, 8
  %and543 = and i64 %shr542, 63
  %arrayidx544 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and543
  %381 = load i64, i64* %arrayidx544, align 8
  %xor545 = xor i64 %379, %381
  %382 = load i64, i64* %T, align 8
  %shr546 = lshr i64 %382, 16
  %and547 = and i64 %shr546, 63
  %arrayidx548 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and547
  %383 = load i64, i64* %arrayidx548, align 8
  %xor549 = xor i64 %xor545, %383
  %384 = load i64, i64* %T, align 8
  %shr550 = lshr i64 %384, 24
  %and551 = and i64 %shr550, 63
  %arrayidx552 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and551
  %385 = load i64, i64* %arrayidx552, align 8
  %xor553 = xor i64 %xor549, %385
  %386 = load i64, i64* %Y, align 8
  %xor554 = xor i64 %386, %xor553
  store i64 %xor554, i64* %Y, align 8
  %387 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr555 = getelementptr inbounds i64, i64* %387, i32 1
  store i64* %incdec.ptr555, i64** %SK.addr, align 8
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* %X, align 8
  %shl556 = shl i64 %389, 28
  %390 = load i64, i64* %X, align 8
  %shr557 = lshr i64 %390, 4
  %or558 = or i64 %shl556, %shr557
  %xor559 = xor i64 %388, %or558
  store i64 %xor559, i64* %T, align 8
  %391 = load i64, i64* %T, align 8
  %and560 = and i64 %391, 63
  %arrayidx561 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and560
  %392 = load i64, i64* %arrayidx561, align 8
  %393 = load i64, i64* %T, align 8
  %shr562 = lshr i64 %393, 8
  %and563 = and i64 %shr562, 63
  %arrayidx564 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and563
  %394 = load i64, i64* %arrayidx564, align 8
  %xor565 = xor i64 %392, %394
  %395 = load i64, i64* %T, align 8
  %shr566 = lshr i64 %395, 16
  %and567 = and i64 %shr566, 63
  %arrayidx568 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and567
  %396 = load i64, i64* %arrayidx568, align 8
  %xor569 = xor i64 %xor565, %396
  %397 = load i64, i64* %T, align 8
  %shr570 = lshr i64 %397, 24
  %and571 = and i64 %shr570, 63
  %arrayidx572 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and571
  %398 = load i64, i64* %arrayidx572, align 8
  %xor573 = xor i64 %xor569, %398
  %399 = load i64, i64* %Y, align 8
  %xor574 = xor i64 %399, %xor573
  store i64 %xor574, i64* %Y, align 8
  %400 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr575 = getelementptr inbounds i64, i64* %400, i32 1
  store i64* %incdec.ptr575, i64** %SK.addr, align 8
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* %Y, align 8
  %xor576 = xor i64 %401, %402
  store i64 %xor576, i64* %T, align 8
  %403 = load i64, i64* %T, align 8
  %and577 = and i64 %403, 63
  %arrayidx578 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and577
  %404 = load i64, i64* %arrayidx578, align 8
  %405 = load i64, i64* %T, align 8
  %shr579 = lshr i64 %405, 8
  %and580 = and i64 %shr579, 63
  %arrayidx581 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and580
  %406 = load i64, i64* %arrayidx581, align 8
  %xor582 = xor i64 %404, %406
  %407 = load i64, i64* %T, align 8
  %shr583 = lshr i64 %407, 16
  %and584 = and i64 %shr583, 63
  %arrayidx585 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and584
  %408 = load i64, i64* %arrayidx585, align 8
  %xor586 = xor i64 %xor582, %408
  %409 = load i64, i64* %T, align 8
  %shr587 = lshr i64 %409, 24
  %and588 = and i64 %shr587, 63
  %arrayidx589 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and588
  %410 = load i64, i64* %arrayidx589, align 8
  %xor590 = xor i64 %xor586, %410
  %411 = load i64, i64* %X, align 8
  %xor591 = xor i64 %411, %xor590
  store i64 %xor591, i64* %X, align 8
  %412 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr592 = getelementptr inbounds i64, i64* %412, i32 1
  store i64* %incdec.ptr592, i64** %SK.addr, align 8
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* %Y, align 8
  %shl593 = shl i64 %414, 28
  %415 = load i64, i64* %Y, align 8
  %shr594 = lshr i64 %415, 4
  %or595 = or i64 %shl593, %shr594
  %xor596 = xor i64 %413, %or595
  store i64 %xor596, i64* %T, align 8
  %416 = load i64, i64* %T, align 8
  %and597 = and i64 %416, 63
  %arrayidx598 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and597
  %417 = load i64, i64* %arrayidx598, align 8
  %418 = load i64, i64* %T, align 8
  %shr599 = lshr i64 %418, 8
  %and600 = and i64 %shr599, 63
  %arrayidx601 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and600
  %419 = load i64, i64* %arrayidx601, align 8
  %xor602 = xor i64 %417, %419
  %420 = load i64, i64* %T, align 8
  %shr603 = lshr i64 %420, 16
  %and604 = and i64 %shr603, 63
  %arrayidx605 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and604
  %421 = load i64, i64* %arrayidx605, align 8
  %xor606 = xor i64 %xor602, %421
  %422 = load i64, i64* %T, align 8
  %shr607 = lshr i64 %422, 24
  %and608 = and i64 %shr607, 63
  %arrayidx609 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and608
  %423 = load i64, i64* %arrayidx609, align 8
  %xor610 = xor i64 %xor606, %423
  %424 = load i64, i64* %X, align 8
  %xor611 = xor i64 %424, %xor610
  store i64 %xor611, i64* %X, align 8
  %425 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr612 = getelementptr inbounds i64, i64* %425, i32 1
  store i64* %incdec.ptr612, i64** %SK.addr, align 8
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* %X, align 8
  %xor613 = xor i64 %426, %427
  store i64 %xor613, i64* %T, align 8
  %428 = load i64, i64* %T, align 8
  %and614 = and i64 %428, 63
  %arrayidx615 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and614
  %429 = load i64, i64* %arrayidx615, align 8
  %430 = load i64, i64* %T, align 8
  %shr616 = lshr i64 %430, 8
  %and617 = and i64 %shr616, 63
  %arrayidx618 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and617
  %431 = load i64, i64* %arrayidx618, align 8
  %xor619 = xor i64 %429, %431
  %432 = load i64, i64* %T, align 8
  %shr620 = lshr i64 %432, 16
  %and621 = and i64 %shr620, 63
  %arrayidx622 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and621
  %433 = load i64, i64* %arrayidx622, align 8
  %xor623 = xor i64 %xor619, %433
  %434 = load i64, i64* %T, align 8
  %shr624 = lshr i64 %434, 24
  %and625 = and i64 %shr624, 63
  %arrayidx626 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and625
  %435 = load i64, i64* %arrayidx626, align 8
  %xor627 = xor i64 %xor623, %435
  %436 = load i64, i64* %Y, align 8
  %xor628 = xor i64 %436, %xor627
  store i64 %xor628, i64* %Y, align 8
  %437 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr629 = getelementptr inbounds i64, i64* %437, i32 1
  store i64* %incdec.ptr629, i64** %SK.addr, align 8
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* %X, align 8
  %shl630 = shl i64 %439, 28
  %440 = load i64, i64* %X, align 8
  %shr631 = lshr i64 %440, 4
  %or632 = or i64 %shl630, %shr631
  %xor633 = xor i64 %438, %or632
  store i64 %xor633, i64* %T, align 8
  %441 = load i64, i64* %T, align 8
  %and634 = and i64 %441, 63
  %arrayidx635 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and634
  %442 = load i64, i64* %arrayidx635, align 8
  %443 = load i64, i64* %T, align 8
  %shr636 = lshr i64 %443, 8
  %and637 = and i64 %shr636, 63
  %arrayidx638 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and637
  %444 = load i64, i64* %arrayidx638, align 8
  %xor639 = xor i64 %442, %444
  %445 = load i64, i64* %T, align 8
  %shr640 = lshr i64 %445, 16
  %and641 = and i64 %shr640, 63
  %arrayidx642 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and641
  %446 = load i64, i64* %arrayidx642, align 8
  %xor643 = xor i64 %xor639, %446
  %447 = load i64, i64* %T, align 8
  %shr644 = lshr i64 %447, 24
  %and645 = and i64 %shr644, 63
  %arrayidx646 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and645
  %448 = load i64, i64* %arrayidx646, align 8
  %xor647 = xor i64 %xor643, %448
  %449 = load i64, i64* %Y, align 8
  %xor648 = xor i64 %449, %xor647
  store i64 %xor648, i64* %Y, align 8
  %450 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr649 = getelementptr inbounds i64, i64* %450, i32 1
  store i64* %incdec.ptr649, i64** %SK.addr, align 8
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* %X, align 8
  %xor650 = xor i64 %451, %452
  store i64 %xor650, i64* %T, align 8
  %453 = load i64, i64* %T, align 8
  %and651 = and i64 %453, 63
  %arrayidx652 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and651
  %454 = load i64, i64* %arrayidx652, align 8
  %455 = load i64, i64* %T, align 8
  %shr653 = lshr i64 %455, 8
  %and654 = and i64 %shr653, 63
  %arrayidx655 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and654
  %456 = load i64, i64* %arrayidx655, align 8
  %xor656 = xor i64 %454, %456
  %457 = load i64, i64* %T, align 8
  %shr657 = lshr i64 %457, 16
  %and658 = and i64 %shr657, 63
  %arrayidx659 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and658
  %458 = load i64, i64* %arrayidx659, align 8
  %xor660 = xor i64 %xor656, %458
  %459 = load i64, i64* %T, align 8
  %shr661 = lshr i64 %459, 24
  %and662 = and i64 %shr661, 63
  %arrayidx663 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and662
  %460 = load i64, i64* %arrayidx663, align 8
  %xor664 = xor i64 %xor660, %460
  %461 = load i64, i64* %Y, align 8
  %xor665 = xor i64 %461, %xor664
  store i64 %xor665, i64* %Y, align 8
  %462 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr666 = getelementptr inbounds i64, i64* %462, i32 1
  store i64* %incdec.ptr666, i64** %SK.addr, align 8
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* %X, align 8
  %shl667 = shl i64 %464, 28
  %465 = load i64, i64* %X, align 8
  %shr668 = lshr i64 %465, 4
  %or669 = or i64 %shl667, %shr668
  %xor670 = xor i64 %463, %or669
  store i64 %xor670, i64* %T, align 8
  %466 = load i64, i64* %T, align 8
  %and671 = and i64 %466, 63
  %arrayidx672 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and671
  %467 = load i64, i64* %arrayidx672, align 8
  %468 = load i64, i64* %T, align 8
  %shr673 = lshr i64 %468, 8
  %and674 = and i64 %shr673, 63
  %arrayidx675 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and674
  %469 = load i64, i64* %arrayidx675, align 8
  %xor676 = xor i64 %467, %469
  %470 = load i64, i64* %T, align 8
  %shr677 = lshr i64 %470, 16
  %and678 = and i64 %shr677, 63
  %arrayidx679 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and678
  %471 = load i64, i64* %arrayidx679, align 8
  %xor680 = xor i64 %xor676, %471
  %472 = load i64, i64* %T, align 8
  %shr681 = lshr i64 %472, 24
  %and682 = and i64 %shr681, 63
  %arrayidx683 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and682
  %473 = load i64, i64* %arrayidx683, align 8
  %xor684 = xor i64 %xor680, %473
  %474 = load i64, i64* %Y, align 8
  %xor685 = xor i64 %474, %xor684
  store i64 %xor685, i64* %Y, align 8
  %475 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr686 = getelementptr inbounds i64, i64* %475, i32 1
  store i64* %incdec.ptr686, i64** %SK.addr, align 8
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* %Y, align 8
  %xor687 = xor i64 %476, %477
  store i64 %xor687, i64* %T, align 8
  %478 = load i64, i64* %T, align 8
  %and688 = and i64 %478, 63
  %arrayidx689 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and688
  %479 = load i64, i64* %arrayidx689, align 8
  %480 = load i64, i64* %T, align 8
  %shr690 = lshr i64 %480, 8
  %and691 = and i64 %shr690, 63
  %arrayidx692 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and691
  %481 = load i64, i64* %arrayidx692, align 8
  %xor693 = xor i64 %479, %481
  %482 = load i64, i64* %T, align 8
  %shr694 = lshr i64 %482, 16
  %and695 = and i64 %shr694, 63
  %arrayidx696 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and695
  %483 = load i64, i64* %arrayidx696, align 8
  %xor697 = xor i64 %xor693, %483
  %484 = load i64, i64* %T, align 8
  %shr698 = lshr i64 %484, 24
  %and699 = and i64 %shr698, 63
  %arrayidx700 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and699
  %485 = load i64, i64* %arrayidx700, align 8
  %xor701 = xor i64 %xor697, %485
  %486 = load i64, i64* %X, align 8
  %xor702 = xor i64 %486, %xor701
  store i64 %xor702, i64* %X, align 8
  %487 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr703 = getelementptr inbounds i64, i64* %487, i32 1
  store i64* %incdec.ptr703, i64** %SK.addr, align 8
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* %Y, align 8
  %shl704 = shl i64 %489, 28
  %490 = load i64, i64* %Y, align 8
  %shr705 = lshr i64 %490, 4
  %or706 = or i64 %shl704, %shr705
  %xor707 = xor i64 %488, %or706
  store i64 %xor707, i64* %T, align 8
  %491 = load i64, i64* %T, align 8
  %and708 = and i64 %491, 63
  %arrayidx709 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and708
  %492 = load i64, i64* %arrayidx709, align 8
  %493 = load i64, i64* %T, align 8
  %shr710 = lshr i64 %493, 8
  %and711 = and i64 %shr710, 63
  %arrayidx712 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and711
  %494 = load i64, i64* %arrayidx712, align 8
  %xor713 = xor i64 %492, %494
  %495 = load i64, i64* %T, align 8
  %shr714 = lshr i64 %495, 16
  %and715 = and i64 %shr714, 63
  %arrayidx716 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and715
  %496 = load i64, i64* %arrayidx716, align 8
  %xor717 = xor i64 %xor713, %496
  %497 = load i64, i64* %T, align 8
  %shr718 = lshr i64 %497, 24
  %and719 = and i64 %shr718, 63
  %arrayidx720 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and719
  %498 = load i64, i64* %arrayidx720, align 8
  %xor721 = xor i64 %xor717, %498
  %499 = load i64, i64* %X, align 8
  %xor722 = xor i64 %499, %xor721
  store i64 %xor722, i64* %X, align 8
  %500 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr723 = getelementptr inbounds i64, i64* %500, i32 1
  store i64* %incdec.ptr723, i64** %SK.addr, align 8
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* %X, align 8
  %xor724 = xor i64 %501, %502
  store i64 %xor724, i64* %T, align 8
  %503 = load i64, i64* %T, align 8
  %and725 = and i64 %503, 63
  %arrayidx726 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and725
  %504 = load i64, i64* %arrayidx726, align 8
  %505 = load i64, i64* %T, align 8
  %shr727 = lshr i64 %505, 8
  %and728 = and i64 %shr727, 63
  %arrayidx729 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and728
  %506 = load i64, i64* %arrayidx729, align 8
  %xor730 = xor i64 %504, %506
  %507 = load i64, i64* %T, align 8
  %shr731 = lshr i64 %507, 16
  %and732 = and i64 %shr731, 63
  %arrayidx733 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and732
  %508 = load i64, i64* %arrayidx733, align 8
  %xor734 = xor i64 %xor730, %508
  %509 = load i64, i64* %T, align 8
  %shr735 = lshr i64 %509, 24
  %and736 = and i64 %shr735, 63
  %arrayidx737 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and736
  %510 = load i64, i64* %arrayidx737, align 8
  %xor738 = xor i64 %xor734, %510
  %511 = load i64, i64* %Y, align 8
  %xor739 = xor i64 %511, %xor738
  store i64 %xor739, i64* %Y, align 8
  %512 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr740 = getelementptr inbounds i64, i64* %512, i32 1
  store i64* %incdec.ptr740, i64** %SK.addr, align 8
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* %X, align 8
  %shl741 = shl i64 %514, 28
  %515 = load i64, i64* %X, align 8
  %shr742 = lshr i64 %515, 4
  %or743 = or i64 %shl741, %shr742
  %xor744 = xor i64 %513, %or743
  store i64 %xor744, i64* %T, align 8
  %516 = load i64, i64* %T, align 8
  %and745 = and i64 %516, 63
  %arrayidx746 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and745
  %517 = load i64, i64* %arrayidx746, align 8
  %518 = load i64, i64* %T, align 8
  %shr747 = lshr i64 %518, 8
  %and748 = and i64 %shr747, 63
  %arrayidx749 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and748
  %519 = load i64, i64* %arrayidx749, align 8
  %xor750 = xor i64 %517, %519
  %520 = load i64, i64* %T, align 8
  %shr751 = lshr i64 %520, 16
  %and752 = and i64 %shr751, 63
  %arrayidx753 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and752
  %521 = load i64, i64* %arrayidx753, align 8
  %xor754 = xor i64 %xor750, %521
  %522 = load i64, i64* %T, align 8
  %shr755 = lshr i64 %522, 24
  %and756 = and i64 %shr755, 63
  %arrayidx757 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and756
  %523 = load i64, i64* %arrayidx757, align 8
  %xor758 = xor i64 %xor754, %523
  %524 = load i64, i64* %Y, align 8
  %xor759 = xor i64 %524, %xor758
  store i64 %xor759, i64* %Y, align 8
  %525 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr760 = getelementptr inbounds i64, i64* %525, i32 1
  store i64* %incdec.ptr760, i64** %SK.addr, align 8
  %526 = load i64, i64* %525, align 8
  %527 = load i64, i64* %Y, align 8
  %xor761 = xor i64 %526, %527
  store i64 %xor761, i64* %T, align 8
  %528 = load i64, i64* %T, align 8
  %and762 = and i64 %528, 63
  %arrayidx763 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and762
  %529 = load i64, i64* %arrayidx763, align 8
  %530 = load i64, i64* %T, align 8
  %shr764 = lshr i64 %530, 8
  %and765 = and i64 %shr764, 63
  %arrayidx766 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and765
  %531 = load i64, i64* %arrayidx766, align 8
  %xor767 = xor i64 %529, %531
  %532 = load i64, i64* %T, align 8
  %shr768 = lshr i64 %532, 16
  %and769 = and i64 %shr768, 63
  %arrayidx770 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and769
  %533 = load i64, i64* %arrayidx770, align 8
  %xor771 = xor i64 %xor767, %533
  %534 = load i64, i64* %T, align 8
  %shr772 = lshr i64 %534, 24
  %and773 = and i64 %shr772, 63
  %arrayidx774 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and773
  %535 = load i64, i64* %arrayidx774, align 8
  %xor775 = xor i64 %xor771, %535
  %536 = load i64, i64* %X, align 8
  %xor776 = xor i64 %536, %xor775
  store i64 %xor776, i64* %X, align 8
  %537 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr777 = getelementptr inbounds i64, i64* %537, i32 1
  store i64* %incdec.ptr777, i64** %SK.addr, align 8
  %538 = load i64, i64* %537, align 8
  %539 = load i64, i64* %Y, align 8
  %shl778 = shl i64 %539, 28
  %540 = load i64, i64* %Y, align 8
  %shr779 = lshr i64 %540, 4
  %or780 = or i64 %shl778, %shr779
  %xor781 = xor i64 %538, %or780
  store i64 %xor781, i64* %T, align 8
  %541 = load i64, i64* %T, align 8
  %and782 = and i64 %541, 63
  %arrayidx783 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and782
  %542 = load i64, i64* %arrayidx783, align 8
  %543 = load i64, i64* %T, align 8
  %shr784 = lshr i64 %543, 8
  %and785 = and i64 %shr784, 63
  %arrayidx786 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and785
  %544 = load i64, i64* %arrayidx786, align 8
  %xor787 = xor i64 %542, %544
  %545 = load i64, i64* %T, align 8
  %shr788 = lshr i64 %545, 16
  %and789 = and i64 %shr788, 63
  %arrayidx790 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and789
  %546 = load i64, i64* %arrayidx790, align 8
  %xor791 = xor i64 %xor787, %546
  %547 = load i64, i64* %T, align 8
  %shr792 = lshr i64 %547, 24
  %and793 = and i64 %shr792, 63
  %arrayidx794 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and793
  %548 = load i64, i64* %arrayidx794, align 8
  %xor795 = xor i64 %xor791, %548
  %549 = load i64, i64* %X, align 8
  %xor796 = xor i64 %549, %xor795
  store i64 %xor796, i64* %X, align 8
  %550 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr797 = getelementptr inbounds i64, i64* %550, i32 1
  store i64* %incdec.ptr797, i64** %SK.addr, align 8
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* %X, align 8
  %xor798 = xor i64 %551, %552
  store i64 %xor798, i64* %T, align 8
  %553 = load i64, i64* %T, align 8
  %and799 = and i64 %553, 63
  %arrayidx800 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and799
  %554 = load i64, i64* %arrayidx800, align 8
  %555 = load i64, i64* %T, align 8
  %shr801 = lshr i64 %555, 8
  %and802 = and i64 %shr801, 63
  %arrayidx803 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and802
  %556 = load i64, i64* %arrayidx803, align 8
  %xor804 = xor i64 %554, %556
  %557 = load i64, i64* %T, align 8
  %shr805 = lshr i64 %557, 16
  %and806 = and i64 %shr805, 63
  %arrayidx807 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and806
  %558 = load i64, i64* %arrayidx807, align 8
  %xor808 = xor i64 %xor804, %558
  %559 = load i64, i64* %T, align 8
  %shr809 = lshr i64 %559, 24
  %and810 = and i64 %shr809, 63
  %arrayidx811 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and810
  %560 = load i64, i64* %arrayidx811, align 8
  %xor812 = xor i64 %xor808, %560
  %561 = load i64, i64* %Y, align 8
  %xor813 = xor i64 %561, %xor812
  store i64 %xor813, i64* %Y, align 8
  %562 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr814 = getelementptr inbounds i64, i64* %562, i32 1
  store i64* %incdec.ptr814, i64** %SK.addr, align 8
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* %X, align 8
  %shl815 = shl i64 %564, 28
  %565 = load i64, i64* %X, align 8
  %shr816 = lshr i64 %565, 4
  %or817 = or i64 %shl815, %shr816
  %xor818 = xor i64 %563, %or817
  store i64 %xor818, i64* %T, align 8
  %566 = load i64, i64* %T, align 8
  %and819 = and i64 %566, 63
  %arrayidx820 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and819
  %567 = load i64, i64* %arrayidx820, align 8
  %568 = load i64, i64* %T, align 8
  %shr821 = lshr i64 %568, 8
  %and822 = and i64 %shr821, 63
  %arrayidx823 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and822
  %569 = load i64, i64* %arrayidx823, align 8
  %xor824 = xor i64 %567, %569
  %570 = load i64, i64* %T, align 8
  %shr825 = lshr i64 %570, 16
  %and826 = and i64 %shr825, 63
  %arrayidx827 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and826
  %571 = load i64, i64* %arrayidx827, align 8
  %xor828 = xor i64 %xor824, %571
  %572 = load i64, i64* %T, align 8
  %shr829 = lshr i64 %572, 24
  %and830 = and i64 %shr829, 63
  %arrayidx831 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and830
  %573 = load i64, i64* %arrayidx831, align 8
  %xor832 = xor i64 %xor828, %573
  %574 = load i64, i64* %Y, align 8
  %xor833 = xor i64 %574, %xor832
  store i64 %xor833, i64* %Y, align 8
  %575 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr834 = getelementptr inbounds i64, i64* %575, i32 1
  store i64* %incdec.ptr834, i64** %SK.addr, align 8
  %576 = load i64, i64* %575, align 8
  %577 = load i64, i64* %Y, align 8
  %xor835 = xor i64 %576, %577
  store i64 %xor835, i64* %T, align 8
  %578 = load i64, i64* %T, align 8
  %and836 = and i64 %578, 63
  %arrayidx837 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and836
  %579 = load i64, i64* %arrayidx837, align 8
  %580 = load i64, i64* %T, align 8
  %shr838 = lshr i64 %580, 8
  %and839 = and i64 %shr838, 63
  %arrayidx840 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and839
  %581 = load i64, i64* %arrayidx840, align 8
  %xor841 = xor i64 %579, %581
  %582 = load i64, i64* %T, align 8
  %shr842 = lshr i64 %582, 16
  %and843 = and i64 %shr842, 63
  %arrayidx844 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and843
  %583 = load i64, i64* %arrayidx844, align 8
  %xor845 = xor i64 %xor841, %583
  %584 = load i64, i64* %T, align 8
  %shr846 = lshr i64 %584, 24
  %and847 = and i64 %shr846, 63
  %arrayidx848 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and847
  %585 = load i64, i64* %arrayidx848, align 8
  %xor849 = xor i64 %xor845, %585
  %586 = load i64, i64* %X, align 8
  %xor850 = xor i64 %586, %xor849
  store i64 %xor850, i64* %X, align 8
  %587 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr851 = getelementptr inbounds i64, i64* %587, i32 1
  store i64* %incdec.ptr851, i64** %SK.addr, align 8
  %588 = load i64, i64* %587, align 8
  %589 = load i64, i64* %Y, align 8
  %shl852 = shl i64 %589, 28
  %590 = load i64, i64* %Y, align 8
  %shr853 = lshr i64 %590, 4
  %or854 = or i64 %shl852, %shr853
  %xor855 = xor i64 %588, %or854
  store i64 %xor855, i64* %T, align 8
  %591 = load i64, i64* %T, align 8
  %and856 = and i64 %591, 63
  %arrayidx857 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and856
  %592 = load i64, i64* %arrayidx857, align 8
  %593 = load i64, i64* %T, align 8
  %shr858 = lshr i64 %593, 8
  %and859 = and i64 %shr858, 63
  %arrayidx860 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and859
  %594 = load i64, i64* %arrayidx860, align 8
  %xor861 = xor i64 %592, %594
  %595 = load i64, i64* %T, align 8
  %shr862 = lshr i64 %595, 16
  %and863 = and i64 %shr862, 63
  %arrayidx864 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and863
  %596 = load i64, i64* %arrayidx864, align 8
  %xor865 = xor i64 %xor861, %596
  %597 = load i64, i64* %T, align 8
  %shr866 = lshr i64 %597, 24
  %and867 = and i64 %shr866, 63
  %arrayidx868 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and867
  %598 = load i64, i64* %arrayidx868, align 8
  %xor869 = xor i64 %xor865, %598
  %599 = load i64, i64* %X, align 8
  %xor870 = xor i64 %599, %xor869
  store i64 %xor870, i64* %X, align 8
  %600 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr871 = getelementptr inbounds i64, i64* %600, i32 1
  store i64* %incdec.ptr871, i64** %SK.addr, align 8
  %601 = load i64, i64* %600, align 8
  %602 = load i64, i64* %X, align 8
  %xor872 = xor i64 %601, %602
  store i64 %xor872, i64* %T, align 8
  %603 = load i64, i64* %T, align 8
  %and873 = and i64 %603, 63
  %arrayidx874 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and873
  %604 = load i64, i64* %arrayidx874, align 8
  %605 = load i64, i64* %T, align 8
  %shr875 = lshr i64 %605, 8
  %and876 = and i64 %shr875, 63
  %arrayidx877 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and876
  %606 = load i64, i64* %arrayidx877, align 8
  %xor878 = xor i64 %604, %606
  %607 = load i64, i64* %T, align 8
  %shr879 = lshr i64 %607, 16
  %and880 = and i64 %shr879, 63
  %arrayidx881 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and880
  %608 = load i64, i64* %arrayidx881, align 8
  %xor882 = xor i64 %xor878, %608
  %609 = load i64, i64* %T, align 8
  %shr883 = lshr i64 %609, 24
  %and884 = and i64 %shr883, 63
  %arrayidx885 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and884
  %610 = load i64, i64* %arrayidx885, align 8
  %xor886 = xor i64 %xor882, %610
  %611 = load i64, i64* %Y, align 8
  %xor887 = xor i64 %611, %xor886
  store i64 %xor887, i64* %Y, align 8
  %612 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr888 = getelementptr inbounds i64, i64* %612, i32 1
  store i64* %incdec.ptr888, i64** %SK.addr, align 8
  %613 = load i64, i64* %612, align 8
  %614 = load i64, i64* %X, align 8
  %shl889 = shl i64 %614, 28
  %615 = load i64, i64* %X, align 8
  %shr890 = lshr i64 %615, 4
  %or891 = or i64 %shl889, %shr890
  %xor892 = xor i64 %613, %or891
  store i64 %xor892, i64* %T, align 8
  %616 = load i64, i64* %T, align 8
  %and893 = and i64 %616, 63
  %arrayidx894 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and893
  %617 = load i64, i64* %arrayidx894, align 8
  %618 = load i64, i64* %T, align 8
  %shr895 = lshr i64 %618, 8
  %and896 = and i64 %shr895, 63
  %arrayidx897 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and896
  %619 = load i64, i64* %arrayidx897, align 8
  %xor898 = xor i64 %617, %619
  %620 = load i64, i64* %T, align 8
  %shr899 = lshr i64 %620, 16
  %and900 = and i64 %shr899, 63
  %arrayidx901 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and900
  %621 = load i64, i64* %arrayidx901, align 8
  %xor902 = xor i64 %xor898, %621
  %622 = load i64, i64* %T, align 8
  %shr903 = lshr i64 %622, 24
  %and904 = and i64 %shr903, 63
  %arrayidx905 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and904
  %623 = load i64, i64* %arrayidx905, align 8
  %xor906 = xor i64 %xor902, %623
  %624 = load i64, i64* %Y, align 8
  %xor907 = xor i64 %624, %xor906
  store i64 %xor907, i64* %Y, align 8
  %625 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr908 = getelementptr inbounds i64, i64* %625, i32 1
  store i64* %incdec.ptr908, i64** %SK.addr, align 8
  %626 = load i64, i64* %625, align 8
  %627 = load i64, i64* %Y, align 8
  %xor909 = xor i64 %626, %627
  store i64 %xor909, i64* %T, align 8
  %628 = load i64, i64* %T, align 8
  %and910 = and i64 %628, 63
  %arrayidx911 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and910
  %629 = load i64, i64* %arrayidx911, align 8
  %630 = load i64, i64* %T, align 8
  %shr912 = lshr i64 %630, 8
  %and913 = and i64 %shr912, 63
  %arrayidx914 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and913
  %631 = load i64, i64* %arrayidx914, align 8
  %xor915 = xor i64 %629, %631
  %632 = load i64, i64* %T, align 8
  %shr916 = lshr i64 %632, 16
  %and917 = and i64 %shr916, 63
  %arrayidx918 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and917
  %633 = load i64, i64* %arrayidx918, align 8
  %xor919 = xor i64 %xor915, %633
  %634 = load i64, i64* %T, align 8
  %shr920 = lshr i64 %634, 24
  %and921 = and i64 %shr920, 63
  %arrayidx922 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and921
  %635 = load i64, i64* %arrayidx922, align 8
  %xor923 = xor i64 %xor919, %635
  %636 = load i64, i64* %X, align 8
  %xor924 = xor i64 %636, %xor923
  store i64 %xor924, i64* %X, align 8
  %637 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr925 = getelementptr inbounds i64, i64* %637, i32 1
  store i64* %incdec.ptr925, i64** %SK.addr, align 8
  %638 = load i64, i64* %637, align 8
  %639 = load i64, i64* %Y, align 8
  %shl926 = shl i64 %639, 28
  %640 = load i64, i64* %Y, align 8
  %shr927 = lshr i64 %640, 4
  %or928 = or i64 %shl926, %shr927
  %xor929 = xor i64 %638, %or928
  store i64 %xor929, i64* %T, align 8
  %641 = load i64, i64* %T, align 8
  %and930 = and i64 %641, 63
  %arrayidx931 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and930
  %642 = load i64, i64* %arrayidx931, align 8
  %643 = load i64, i64* %T, align 8
  %shr932 = lshr i64 %643, 8
  %and933 = and i64 %shr932, 63
  %arrayidx934 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and933
  %644 = load i64, i64* %arrayidx934, align 8
  %xor935 = xor i64 %642, %644
  %645 = load i64, i64* %T, align 8
  %shr936 = lshr i64 %645, 16
  %and937 = and i64 %shr936, 63
  %arrayidx938 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and937
  %646 = load i64, i64* %arrayidx938, align 8
  %xor939 = xor i64 %xor935, %646
  %647 = load i64, i64* %T, align 8
  %shr940 = lshr i64 %647, 24
  %and941 = and i64 %shr940, 63
  %arrayidx942 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and941
  %648 = load i64, i64* %arrayidx942, align 8
  %xor943 = xor i64 %xor939, %648
  %649 = load i64, i64* %X, align 8
  %xor944 = xor i64 %649, %xor943
  store i64 %xor944, i64* %X, align 8
  %650 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr945 = getelementptr inbounds i64, i64* %650, i32 1
  store i64* %incdec.ptr945, i64** %SK.addr, align 8
  %651 = load i64, i64* %650, align 8
  %652 = load i64, i64* %X, align 8
  %xor946 = xor i64 %651, %652
  store i64 %xor946, i64* %T, align 8
  %653 = load i64, i64* %T, align 8
  %and947 = and i64 %653, 63
  %arrayidx948 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and947
  %654 = load i64, i64* %arrayidx948, align 8
  %655 = load i64, i64* %T, align 8
  %shr949 = lshr i64 %655, 8
  %and950 = and i64 %shr949, 63
  %arrayidx951 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and950
  %656 = load i64, i64* %arrayidx951, align 8
  %xor952 = xor i64 %654, %656
  %657 = load i64, i64* %T, align 8
  %shr953 = lshr i64 %657, 16
  %and954 = and i64 %shr953, 63
  %arrayidx955 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and954
  %658 = load i64, i64* %arrayidx955, align 8
  %xor956 = xor i64 %xor952, %658
  %659 = load i64, i64* %T, align 8
  %shr957 = lshr i64 %659, 24
  %and958 = and i64 %shr957, 63
  %arrayidx959 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and958
  %660 = load i64, i64* %arrayidx959, align 8
  %xor960 = xor i64 %xor956, %660
  %661 = load i64, i64* %Y, align 8
  %xor961 = xor i64 %661, %xor960
  store i64 %xor961, i64* %Y, align 8
  %662 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr962 = getelementptr inbounds i64, i64* %662, i32 1
  store i64* %incdec.ptr962, i64** %SK.addr, align 8
  %663 = load i64, i64* %662, align 8
  %664 = load i64, i64* %X, align 8
  %shl963 = shl i64 %664, 28
  %665 = load i64, i64* %X, align 8
  %shr964 = lshr i64 %665, 4
  %or965 = or i64 %shl963, %shr964
  %xor966 = xor i64 %663, %or965
  store i64 %xor966, i64* %T, align 8
  %666 = load i64, i64* %T, align 8
  %and967 = and i64 %666, 63
  %arrayidx968 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and967
  %667 = load i64, i64* %arrayidx968, align 8
  %668 = load i64, i64* %T, align 8
  %shr969 = lshr i64 %668, 8
  %and970 = and i64 %shr969, 63
  %arrayidx971 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and970
  %669 = load i64, i64* %arrayidx971, align 8
  %xor972 = xor i64 %667, %669
  %670 = load i64, i64* %T, align 8
  %shr973 = lshr i64 %670, 16
  %and974 = and i64 %shr973, 63
  %arrayidx975 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and974
  %671 = load i64, i64* %arrayidx975, align 8
  %xor976 = xor i64 %xor972, %671
  %672 = load i64, i64* %T, align 8
  %shr977 = lshr i64 %672, 24
  %and978 = and i64 %shr977, 63
  %arrayidx979 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and978
  %673 = load i64, i64* %arrayidx979, align 8
  %xor980 = xor i64 %xor976, %673
  %674 = load i64, i64* %Y, align 8
  %xor981 = xor i64 %674, %xor980
  store i64 %xor981, i64* %Y, align 8
  %675 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr982 = getelementptr inbounds i64, i64* %675, i32 1
  store i64* %incdec.ptr982, i64** %SK.addr, align 8
  %676 = load i64, i64* %675, align 8
  %677 = load i64, i64* %Y, align 8
  %xor983 = xor i64 %676, %677
  store i64 %xor983, i64* %T, align 8
  %678 = load i64, i64* %T, align 8
  %and984 = and i64 %678, 63
  %arrayidx985 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and984
  %679 = load i64, i64* %arrayidx985, align 8
  %680 = load i64, i64* %T, align 8
  %shr986 = lshr i64 %680, 8
  %and987 = and i64 %shr986, 63
  %arrayidx988 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and987
  %681 = load i64, i64* %arrayidx988, align 8
  %xor989 = xor i64 %679, %681
  %682 = load i64, i64* %T, align 8
  %shr990 = lshr i64 %682, 16
  %and991 = and i64 %shr990, 63
  %arrayidx992 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and991
  %683 = load i64, i64* %arrayidx992, align 8
  %xor993 = xor i64 %xor989, %683
  %684 = load i64, i64* %T, align 8
  %shr994 = lshr i64 %684, 24
  %and995 = and i64 %shr994, 63
  %arrayidx996 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and995
  %685 = load i64, i64* %arrayidx996, align 8
  %xor997 = xor i64 %xor993, %685
  %686 = load i64, i64* %X, align 8
  %xor998 = xor i64 %686, %xor997
  store i64 %xor998, i64* %X, align 8
  %687 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr999 = getelementptr inbounds i64, i64* %687, i32 1
  store i64* %incdec.ptr999, i64** %SK.addr, align 8
  %688 = load i64, i64* %687, align 8
  %689 = load i64, i64* %Y, align 8
  %shl1000 = shl i64 %689, 28
  %690 = load i64, i64* %Y, align 8
  %shr1001 = lshr i64 %690, 4
  %or1002 = or i64 %shl1000, %shr1001
  %xor1003 = xor i64 %688, %or1002
  store i64 %xor1003, i64* %T, align 8
  %691 = load i64, i64* %T, align 8
  %and1004 = and i64 %691, 63
  %arrayidx1005 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1004
  %692 = load i64, i64* %arrayidx1005, align 8
  %693 = load i64, i64* %T, align 8
  %shr1006 = lshr i64 %693, 8
  %and1007 = and i64 %shr1006, 63
  %arrayidx1008 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1007
  %694 = load i64, i64* %arrayidx1008, align 8
  %xor1009 = xor i64 %692, %694
  %695 = load i64, i64* %T, align 8
  %shr1010 = lshr i64 %695, 16
  %and1011 = and i64 %shr1010, 63
  %arrayidx1012 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1011
  %696 = load i64, i64* %arrayidx1012, align 8
  %xor1013 = xor i64 %xor1009, %696
  %697 = load i64, i64* %T, align 8
  %shr1014 = lshr i64 %697, 24
  %and1015 = and i64 %shr1014, 63
  %arrayidx1016 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1015
  %698 = load i64, i64* %arrayidx1016, align 8
  %xor1017 = xor i64 %xor1013, %698
  %699 = load i64, i64* %X, align 8
  %xor1018 = xor i64 %699, %xor1017
  store i64 %xor1018, i64* %X, align 8
  %700 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1019 = getelementptr inbounds i64, i64* %700, i32 1
  store i64* %incdec.ptr1019, i64** %SK.addr, align 8
  %701 = load i64, i64* %700, align 8
  %702 = load i64, i64* %X, align 8
  %xor1020 = xor i64 %701, %702
  store i64 %xor1020, i64* %T, align 8
  %703 = load i64, i64* %T, align 8
  %and1021 = and i64 %703, 63
  %arrayidx1022 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1021
  %704 = load i64, i64* %arrayidx1022, align 8
  %705 = load i64, i64* %T, align 8
  %shr1023 = lshr i64 %705, 8
  %and1024 = and i64 %shr1023, 63
  %arrayidx1025 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1024
  %706 = load i64, i64* %arrayidx1025, align 8
  %xor1026 = xor i64 %704, %706
  %707 = load i64, i64* %T, align 8
  %shr1027 = lshr i64 %707, 16
  %and1028 = and i64 %shr1027, 63
  %arrayidx1029 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1028
  %708 = load i64, i64* %arrayidx1029, align 8
  %xor1030 = xor i64 %xor1026, %708
  %709 = load i64, i64* %T, align 8
  %shr1031 = lshr i64 %709, 24
  %and1032 = and i64 %shr1031, 63
  %arrayidx1033 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1032
  %710 = load i64, i64* %arrayidx1033, align 8
  %xor1034 = xor i64 %xor1030, %710
  %711 = load i64, i64* %Y, align 8
  %xor1035 = xor i64 %711, %xor1034
  store i64 %xor1035, i64* %Y, align 8
  %712 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1036 = getelementptr inbounds i64, i64* %712, i32 1
  store i64* %incdec.ptr1036, i64** %SK.addr, align 8
  %713 = load i64, i64* %712, align 8
  %714 = load i64, i64* %X, align 8
  %shl1037 = shl i64 %714, 28
  %715 = load i64, i64* %X, align 8
  %shr1038 = lshr i64 %715, 4
  %or1039 = or i64 %shl1037, %shr1038
  %xor1040 = xor i64 %713, %or1039
  store i64 %xor1040, i64* %T, align 8
  %716 = load i64, i64* %T, align 8
  %and1041 = and i64 %716, 63
  %arrayidx1042 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1041
  %717 = load i64, i64* %arrayidx1042, align 8
  %718 = load i64, i64* %T, align 8
  %shr1043 = lshr i64 %718, 8
  %and1044 = and i64 %shr1043, 63
  %arrayidx1045 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1044
  %719 = load i64, i64* %arrayidx1045, align 8
  %xor1046 = xor i64 %717, %719
  %720 = load i64, i64* %T, align 8
  %shr1047 = lshr i64 %720, 16
  %and1048 = and i64 %shr1047, 63
  %arrayidx1049 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1048
  %721 = load i64, i64* %arrayidx1049, align 8
  %xor1050 = xor i64 %xor1046, %721
  %722 = load i64, i64* %T, align 8
  %shr1051 = lshr i64 %722, 24
  %and1052 = and i64 %shr1051, 63
  %arrayidx1053 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1052
  %723 = load i64, i64* %arrayidx1053, align 8
  %xor1054 = xor i64 %xor1050, %723
  %724 = load i64, i64* %Y, align 8
  %xor1055 = xor i64 %724, %xor1054
  store i64 %xor1055, i64* %Y, align 8
  %725 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1056 = getelementptr inbounds i64, i64* %725, i32 1
  store i64* %incdec.ptr1056, i64** %SK.addr, align 8
  %726 = load i64, i64* %725, align 8
  %727 = load i64, i64* %Y, align 8
  %xor1057 = xor i64 %726, %727
  store i64 %xor1057, i64* %T, align 8
  %728 = load i64, i64* %T, align 8
  %and1058 = and i64 %728, 63
  %arrayidx1059 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1058
  %729 = load i64, i64* %arrayidx1059, align 8
  %730 = load i64, i64* %T, align 8
  %shr1060 = lshr i64 %730, 8
  %and1061 = and i64 %shr1060, 63
  %arrayidx1062 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1061
  %731 = load i64, i64* %arrayidx1062, align 8
  %xor1063 = xor i64 %729, %731
  %732 = load i64, i64* %T, align 8
  %shr1064 = lshr i64 %732, 16
  %and1065 = and i64 %shr1064, 63
  %arrayidx1066 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1065
  %733 = load i64, i64* %arrayidx1066, align 8
  %xor1067 = xor i64 %xor1063, %733
  %734 = load i64, i64* %T, align 8
  %shr1068 = lshr i64 %734, 24
  %and1069 = and i64 %shr1068, 63
  %arrayidx1070 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1069
  %735 = load i64, i64* %arrayidx1070, align 8
  %xor1071 = xor i64 %xor1067, %735
  %736 = load i64, i64* %X, align 8
  %xor1072 = xor i64 %736, %xor1071
  store i64 %xor1072, i64* %X, align 8
  %737 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1073 = getelementptr inbounds i64, i64* %737, i32 1
  store i64* %incdec.ptr1073, i64** %SK.addr, align 8
  %738 = load i64, i64* %737, align 8
  %739 = load i64, i64* %Y, align 8
  %shl1074 = shl i64 %739, 28
  %740 = load i64, i64* %Y, align 8
  %shr1075 = lshr i64 %740, 4
  %or1076 = or i64 %shl1074, %shr1075
  %xor1077 = xor i64 %738, %or1076
  store i64 %xor1077, i64* %T, align 8
  %741 = load i64, i64* %T, align 8
  %and1078 = and i64 %741, 63
  %arrayidx1079 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1078
  %742 = load i64, i64* %arrayidx1079, align 8
  %743 = load i64, i64* %T, align 8
  %shr1080 = lshr i64 %743, 8
  %and1081 = and i64 %shr1080, 63
  %arrayidx1082 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1081
  %744 = load i64, i64* %arrayidx1082, align 8
  %xor1083 = xor i64 %742, %744
  %745 = load i64, i64* %T, align 8
  %shr1084 = lshr i64 %745, 16
  %and1085 = and i64 %shr1084, 63
  %arrayidx1086 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1085
  %746 = load i64, i64* %arrayidx1086, align 8
  %xor1087 = xor i64 %xor1083, %746
  %747 = load i64, i64* %T, align 8
  %shr1088 = lshr i64 %747, 24
  %and1089 = and i64 %shr1088, 63
  %arrayidx1090 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1089
  %748 = load i64, i64* %arrayidx1090, align 8
  %xor1091 = xor i64 %xor1087, %748
  %749 = load i64, i64* %X, align 8
  %xor1092 = xor i64 %749, %xor1091
  store i64 %xor1092, i64* %X, align 8
  %750 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1093 = getelementptr inbounds i64, i64* %750, i32 1
  store i64* %incdec.ptr1093, i64** %SK.addr, align 8
  %751 = load i64, i64* %750, align 8
  %752 = load i64, i64* %X, align 8
  %xor1094 = xor i64 %751, %752
  store i64 %xor1094, i64* %T, align 8
  %753 = load i64, i64* %T, align 8
  %and1095 = and i64 %753, 63
  %arrayidx1096 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1095
  %754 = load i64, i64* %arrayidx1096, align 8
  %755 = load i64, i64* %T, align 8
  %shr1097 = lshr i64 %755, 8
  %and1098 = and i64 %shr1097, 63
  %arrayidx1099 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1098
  %756 = load i64, i64* %arrayidx1099, align 8
  %xor1100 = xor i64 %754, %756
  %757 = load i64, i64* %T, align 8
  %shr1101 = lshr i64 %757, 16
  %and1102 = and i64 %shr1101, 63
  %arrayidx1103 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1102
  %758 = load i64, i64* %arrayidx1103, align 8
  %xor1104 = xor i64 %xor1100, %758
  %759 = load i64, i64* %T, align 8
  %shr1105 = lshr i64 %759, 24
  %and1106 = and i64 %shr1105, 63
  %arrayidx1107 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1106
  %760 = load i64, i64* %arrayidx1107, align 8
  %xor1108 = xor i64 %xor1104, %760
  %761 = load i64, i64* %Y, align 8
  %xor1109 = xor i64 %761, %xor1108
  store i64 %xor1109, i64* %Y, align 8
  %762 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1110 = getelementptr inbounds i64, i64* %762, i32 1
  store i64* %incdec.ptr1110, i64** %SK.addr, align 8
  %763 = load i64, i64* %762, align 8
  %764 = load i64, i64* %X, align 8
  %shl1111 = shl i64 %764, 28
  %765 = load i64, i64* %X, align 8
  %shr1112 = lshr i64 %765, 4
  %or1113 = or i64 %shl1111, %shr1112
  %xor1114 = xor i64 %763, %or1113
  store i64 %xor1114, i64* %T, align 8
  %766 = load i64, i64* %T, align 8
  %and1115 = and i64 %766, 63
  %arrayidx1116 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1115
  %767 = load i64, i64* %arrayidx1116, align 8
  %768 = load i64, i64* %T, align 8
  %shr1117 = lshr i64 %768, 8
  %and1118 = and i64 %shr1117, 63
  %arrayidx1119 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1118
  %769 = load i64, i64* %arrayidx1119, align 8
  %xor1120 = xor i64 %767, %769
  %770 = load i64, i64* %T, align 8
  %shr1121 = lshr i64 %770, 16
  %and1122 = and i64 %shr1121, 63
  %arrayidx1123 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1122
  %771 = load i64, i64* %arrayidx1123, align 8
  %xor1124 = xor i64 %xor1120, %771
  %772 = load i64, i64* %T, align 8
  %shr1125 = lshr i64 %772, 24
  %and1126 = and i64 %shr1125, 63
  %arrayidx1127 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1126
  %773 = load i64, i64* %arrayidx1127, align 8
  %xor1128 = xor i64 %xor1124, %773
  %774 = load i64, i64* %Y, align 8
  %xor1129 = xor i64 %774, %xor1128
  store i64 %xor1129, i64* %Y, align 8
  %775 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1130 = getelementptr inbounds i64, i64* %775, i32 1
  store i64* %incdec.ptr1130, i64** %SK.addr, align 8
  %776 = load i64, i64* %775, align 8
  %777 = load i64, i64* %Y, align 8
  %xor1131 = xor i64 %776, %777
  store i64 %xor1131, i64* %T, align 8
  %778 = load i64, i64* %T, align 8
  %and1132 = and i64 %778, 63
  %arrayidx1133 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1132
  %779 = load i64, i64* %arrayidx1133, align 8
  %780 = load i64, i64* %T, align 8
  %shr1134 = lshr i64 %780, 8
  %and1135 = and i64 %shr1134, 63
  %arrayidx1136 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1135
  %781 = load i64, i64* %arrayidx1136, align 8
  %xor1137 = xor i64 %779, %781
  %782 = load i64, i64* %T, align 8
  %shr1138 = lshr i64 %782, 16
  %and1139 = and i64 %shr1138, 63
  %arrayidx1140 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1139
  %783 = load i64, i64* %arrayidx1140, align 8
  %xor1141 = xor i64 %xor1137, %783
  %784 = load i64, i64* %T, align 8
  %shr1142 = lshr i64 %784, 24
  %and1143 = and i64 %shr1142, 63
  %arrayidx1144 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1143
  %785 = load i64, i64* %arrayidx1144, align 8
  %xor1145 = xor i64 %xor1141, %785
  %786 = load i64, i64* %X, align 8
  %xor1146 = xor i64 %786, %xor1145
  store i64 %xor1146, i64* %X, align 8
  %787 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1147 = getelementptr inbounds i64, i64* %787, i32 1
  store i64* %incdec.ptr1147, i64** %SK.addr, align 8
  %788 = load i64, i64* %787, align 8
  %789 = load i64, i64* %Y, align 8
  %shl1148 = shl i64 %789, 28
  %790 = load i64, i64* %Y, align 8
  %shr1149 = lshr i64 %790, 4
  %or1150 = or i64 %shl1148, %shr1149
  %xor1151 = xor i64 %788, %or1150
  store i64 %xor1151, i64* %T, align 8
  %791 = load i64, i64* %T, align 8
  %and1152 = and i64 %791, 63
  %arrayidx1153 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1152
  %792 = load i64, i64* %arrayidx1153, align 8
  %793 = load i64, i64* %T, align 8
  %shr1154 = lshr i64 %793, 8
  %and1155 = and i64 %shr1154, 63
  %arrayidx1156 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1155
  %794 = load i64, i64* %arrayidx1156, align 8
  %xor1157 = xor i64 %792, %794
  %795 = load i64, i64* %T, align 8
  %shr1158 = lshr i64 %795, 16
  %and1159 = and i64 %shr1158, 63
  %arrayidx1160 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1159
  %796 = load i64, i64* %arrayidx1160, align 8
  %xor1161 = xor i64 %xor1157, %796
  %797 = load i64, i64* %T, align 8
  %shr1162 = lshr i64 %797, 24
  %and1163 = and i64 %shr1162, 63
  %arrayidx1164 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1163
  %798 = load i64, i64* %arrayidx1164, align 8
  %xor1165 = xor i64 %xor1161, %798
  %799 = load i64, i64* %X, align 8
  %xor1166 = xor i64 %799, %xor1165
  store i64 %xor1166, i64* %X, align 8
  %800 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1167 = getelementptr inbounds i64, i64* %800, i32 1
  store i64* %incdec.ptr1167, i64** %SK.addr, align 8
  %801 = load i64, i64* %800, align 8
  %802 = load i64, i64* %X, align 8
  %xor1168 = xor i64 %801, %802
  store i64 %xor1168, i64* %T, align 8
  %803 = load i64, i64* %T, align 8
  %and1169 = and i64 %803, 63
  %arrayidx1170 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1169
  %804 = load i64, i64* %arrayidx1170, align 8
  %805 = load i64, i64* %T, align 8
  %shr1171 = lshr i64 %805, 8
  %and1172 = and i64 %shr1171, 63
  %arrayidx1173 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1172
  %806 = load i64, i64* %arrayidx1173, align 8
  %xor1174 = xor i64 %804, %806
  %807 = load i64, i64* %T, align 8
  %shr1175 = lshr i64 %807, 16
  %and1176 = and i64 %shr1175, 63
  %arrayidx1177 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1176
  %808 = load i64, i64* %arrayidx1177, align 8
  %xor1178 = xor i64 %xor1174, %808
  %809 = load i64, i64* %T, align 8
  %shr1179 = lshr i64 %809, 24
  %and1180 = and i64 %shr1179, 63
  %arrayidx1181 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1180
  %810 = load i64, i64* %arrayidx1181, align 8
  %xor1182 = xor i64 %xor1178, %810
  %811 = load i64, i64* %Y, align 8
  %xor1183 = xor i64 %811, %xor1182
  store i64 %xor1183, i64* %Y, align 8
  %812 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1184 = getelementptr inbounds i64, i64* %812, i32 1
  store i64* %incdec.ptr1184, i64** %SK.addr, align 8
  %813 = load i64, i64* %812, align 8
  %814 = load i64, i64* %X, align 8
  %shl1185 = shl i64 %814, 28
  %815 = load i64, i64* %X, align 8
  %shr1186 = lshr i64 %815, 4
  %or1187 = or i64 %shl1185, %shr1186
  %xor1188 = xor i64 %813, %or1187
  store i64 %xor1188, i64* %T, align 8
  %816 = load i64, i64* %T, align 8
  %and1189 = and i64 %816, 63
  %arrayidx1190 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1189
  %817 = load i64, i64* %arrayidx1190, align 8
  %818 = load i64, i64* %T, align 8
  %shr1191 = lshr i64 %818, 8
  %and1192 = and i64 %shr1191, 63
  %arrayidx1193 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1192
  %819 = load i64, i64* %arrayidx1193, align 8
  %xor1194 = xor i64 %817, %819
  %820 = load i64, i64* %T, align 8
  %shr1195 = lshr i64 %820, 16
  %and1196 = and i64 %shr1195, 63
  %arrayidx1197 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1196
  %821 = load i64, i64* %arrayidx1197, align 8
  %xor1198 = xor i64 %xor1194, %821
  %822 = load i64, i64* %T, align 8
  %shr1199 = lshr i64 %822, 24
  %and1200 = and i64 %shr1199, 63
  %arrayidx1201 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1200
  %823 = load i64, i64* %arrayidx1201, align 8
  %xor1202 = xor i64 %xor1198, %823
  %824 = load i64, i64* %Y, align 8
  %xor1203 = xor i64 %824, %xor1202
  store i64 %xor1203, i64* %Y, align 8
  %825 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1204 = getelementptr inbounds i64, i64* %825, i32 1
  store i64* %incdec.ptr1204, i64** %SK.addr, align 8
  %826 = load i64, i64* %825, align 8
  %827 = load i64, i64* %Y, align 8
  %xor1205 = xor i64 %826, %827
  store i64 %xor1205, i64* %T, align 8
  %828 = load i64, i64* %T, align 8
  %and1206 = and i64 %828, 63
  %arrayidx1207 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1206
  %829 = load i64, i64* %arrayidx1207, align 8
  %830 = load i64, i64* %T, align 8
  %shr1208 = lshr i64 %830, 8
  %and1209 = and i64 %shr1208, 63
  %arrayidx1210 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1209
  %831 = load i64, i64* %arrayidx1210, align 8
  %xor1211 = xor i64 %829, %831
  %832 = load i64, i64* %T, align 8
  %shr1212 = lshr i64 %832, 16
  %and1213 = and i64 %shr1212, 63
  %arrayidx1214 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1213
  %833 = load i64, i64* %arrayidx1214, align 8
  %xor1215 = xor i64 %xor1211, %833
  %834 = load i64, i64* %T, align 8
  %shr1216 = lshr i64 %834, 24
  %and1217 = and i64 %shr1216, 63
  %arrayidx1218 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1217
  %835 = load i64, i64* %arrayidx1218, align 8
  %xor1219 = xor i64 %xor1215, %835
  %836 = load i64, i64* %X, align 8
  %xor1220 = xor i64 %836, %xor1219
  store i64 %xor1220, i64* %X, align 8
  %837 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1221 = getelementptr inbounds i64, i64* %837, i32 1
  store i64* %incdec.ptr1221, i64** %SK.addr, align 8
  %838 = load i64, i64* %837, align 8
  %839 = load i64, i64* %Y, align 8
  %shl1222 = shl i64 %839, 28
  %840 = load i64, i64* %Y, align 8
  %shr1223 = lshr i64 %840, 4
  %or1224 = or i64 %shl1222, %shr1223
  %xor1225 = xor i64 %838, %or1224
  store i64 %xor1225, i64* %T, align 8
  %841 = load i64, i64* %T, align 8
  %and1226 = and i64 %841, 63
  %arrayidx1227 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1226
  %842 = load i64, i64* %arrayidx1227, align 8
  %843 = load i64, i64* %T, align 8
  %shr1228 = lshr i64 %843, 8
  %and1229 = and i64 %shr1228, 63
  %arrayidx1230 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1229
  %844 = load i64, i64* %arrayidx1230, align 8
  %xor1231 = xor i64 %842, %844
  %845 = load i64, i64* %T, align 8
  %shr1232 = lshr i64 %845, 16
  %and1233 = and i64 %shr1232, 63
  %arrayidx1234 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1233
  %846 = load i64, i64* %arrayidx1234, align 8
  %xor1235 = xor i64 %xor1231, %846
  %847 = load i64, i64* %T, align 8
  %shr1236 = lshr i64 %847, 24
  %and1237 = and i64 %shr1236, 63
  %arrayidx1238 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1237
  %848 = load i64, i64* %arrayidx1238, align 8
  %xor1239 = xor i64 %xor1235, %848
  %849 = load i64, i64* %X, align 8
  %xor1240 = xor i64 %849, %xor1239
  store i64 %xor1240, i64* %X, align 8
  %850 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1241 = getelementptr inbounds i64, i64* %850, i32 1
  store i64* %incdec.ptr1241, i64** %SK.addr, align 8
  %851 = load i64, i64* %850, align 8
  %852 = load i64, i64* %Y, align 8
  %xor1242 = xor i64 %851, %852
  store i64 %xor1242, i64* %T, align 8
  %853 = load i64, i64* %T, align 8
  %and1243 = and i64 %853, 63
  %arrayidx1244 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1243
  %854 = load i64, i64* %arrayidx1244, align 8
  %855 = load i64, i64* %T, align 8
  %shr1245 = lshr i64 %855, 8
  %and1246 = and i64 %shr1245, 63
  %arrayidx1247 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1246
  %856 = load i64, i64* %arrayidx1247, align 8
  %xor1248 = xor i64 %854, %856
  %857 = load i64, i64* %T, align 8
  %shr1249 = lshr i64 %857, 16
  %and1250 = and i64 %shr1249, 63
  %arrayidx1251 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1250
  %858 = load i64, i64* %arrayidx1251, align 8
  %xor1252 = xor i64 %xor1248, %858
  %859 = load i64, i64* %T, align 8
  %shr1253 = lshr i64 %859, 24
  %and1254 = and i64 %shr1253, 63
  %arrayidx1255 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1254
  %860 = load i64, i64* %arrayidx1255, align 8
  %xor1256 = xor i64 %xor1252, %860
  %861 = load i64, i64* %X, align 8
  %xor1257 = xor i64 %861, %xor1256
  store i64 %xor1257, i64* %X, align 8
  %862 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1258 = getelementptr inbounds i64, i64* %862, i32 1
  store i64* %incdec.ptr1258, i64** %SK.addr, align 8
  %863 = load i64, i64* %862, align 8
  %864 = load i64, i64* %Y, align 8
  %shl1259 = shl i64 %864, 28
  %865 = load i64, i64* %Y, align 8
  %shr1260 = lshr i64 %865, 4
  %or1261 = or i64 %shl1259, %shr1260
  %xor1262 = xor i64 %863, %or1261
  store i64 %xor1262, i64* %T, align 8
  %866 = load i64, i64* %T, align 8
  %and1263 = and i64 %866, 63
  %arrayidx1264 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1263
  %867 = load i64, i64* %arrayidx1264, align 8
  %868 = load i64, i64* %T, align 8
  %shr1265 = lshr i64 %868, 8
  %and1266 = and i64 %shr1265, 63
  %arrayidx1267 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1266
  %869 = load i64, i64* %arrayidx1267, align 8
  %xor1268 = xor i64 %867, %869
  %870 = load i64, i64* %T, align 8
  %shr1269 = lshr i64 %870, 16
  %and1270 = and i64 %shr1269, 63
  %arrayidx1271 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1270
  %871 = load i64, i64* %arrayidx1271, align 8
  %xor1272 = xor i64 %xor1268, %871
  %872 = load i64, i64* %T, align 8
  %shr1273 = lshr i64 %872, 24
  %and1274 = and i64 %shr1273, 63
  %arrayidx1275 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1274
  %873 = load i64, i64* %arrayidx1275, align 8
  %xor1276 = xor i64 %xor1272, %873
  %874 = load i64, i64* %X, align 8
  %xor1277 = xor i64 %874, %xor1276
  store i64 %xor1277, i64* %X, align 8
  %875 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1278 = getelementptr inbounds i64, i64* %875, i32 1
  store i64* %incdec.ptr1278, i64** %SK.addr, align 8
  %876 = load i64, i64* %875, align 8
  %877 = load i64, i64* %X, align 8
  %xor1279 = xor i64 %876, %877
  store i64 %xor1279, i64* %T, align 8
  %878 = load i64, i64* %T, align 8
  %and1280 = and i64 %878, 63
  %arrayidx1281 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1280
  %879 = load i64, i64* %arrayidx1281, align 8
  %880 = load i64, i64* %T, align 8
  %shr1282 = lshr i64 %880, 8
  %and1283 = and i64 %shr1282, 63
  %arrayidx1284 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1283
  %881 = load i64, i64* %arrayidx1284, align 8
  %xor1285 = xor i64 %879, %881
  %882 = load i64, i64* %T, align 8
  %shr1286 = lshr i64 %882, 16
  %and1287 = and i64 %shr1286, 63
  %arrayidx1288 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1287
  %883 = load i64, i64* %arrayidx1288, align 8
  %xor1289 = xor i64 %xor1285, %883
  %884 = load i64, i64* %T, align 8
  %shr1290 = lshr i64 %884, 24
  %and1291 = and i64 %shr1290, 63
  %arrayidx1292 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1291
  %885 = load i64, i64* %arrayidx1292, align 8
  %xor1293 = xor i64 %xor1289, %885
  %886 = load i64, i64* %Y, align 8
  %xor1294 = xor i64 %886, %xor1293
  store i64 %xor1294, i64* %Y, align 8
  %887 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1295 = getelementptr inbounds i64, i64* %887, i32 1
  store i64* %incdec.ptr1295, i64** %SK.addr, align 8
  %888 = load i64, i64* %887, align 8
  %889 = load i64, i64* %X, align 8
  %shl1296 = shl i64 %889, 28
  %890 = load i64, i64* %X, align 8
  %shr1297 = lshr i64 %890, 4
  %or1298 = or i64 %shl1296, %shr1297
  %xor1299 = xor i64 %888, %or1298
  store i64 %xor1299, i64* %T, align 8
  %891 = load i64, i64* %T, align 8
  %and1300 = and i64 %891, 63
  %arrayidx1301 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1300
  %892 = load i64, i64* %arrayidx1301, align 8
  %893 = load i64, i64* %T, align 8
  %shr1302 = lshr i64 %893, 8
  %and1303 = and i64 %shr1302, 63
  %arrayidx1304 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1303
  %894 = load i64, i64* %arrayidx1304, align 8
  %xor1305 = xor i64 %892, %894
  %895 = load i64, i64* %T, align 8
  %shr1306 = lshr i64 %895, 16
  %and1307 = and i64 %shr1306, 63
  %arrayidx1308 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1307
  %896 = load i64, i64* %arrayidx1308, align 8
  %xor1309 = xor i64 %xor1305, %896
  %897 = load i64, i64* %T, align 8
  %shr1310 = lshr i64 %897, 24
  %and1311 = and i64 %shr1310, 63
  %arrayidx1312 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1311
  %898 = load i64, i64* %arrayidx1312, align 8
  %xor1313 = xor i64 %xor1309, %898
  %899 = load i64, i64* %Y, align 8
  %xor1314 = xor i64 %899, %xor1313
  store i64 %xor1314, i64* %Y, align 8
  %900 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1315 = getelementptr inbounds i64, i64* %900, i32 1
  store i64* %incdec.ptr1315, i64** %SK.addr, align 8
  %901 = load i64, i64* %900, align 8
  %902 = load i64, i64* %Y, align 8
  %xor1316 = xor i64 %901, %902
  store i64 %xor1316, i64* %T, align 8
  %903 = load i64, i64* %T, align 8
  %and1317 = and i64 %903, 63
  %arrayidx1318 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1317
  %904 = load i64, i64* %arrayidx1318, align 8
  %905 = load i64, i64* %T, align 8
  %shr1319 = lshr i64 %905, 8
  %and1320 = and i64 %shr1319, 63
  %arrayidx1321 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1320
  %906 = load i64, i64* %arrayidx1321, align 8
  %xor1322 = xor i64 %904, %906
  %907 = load i64, i64* %T, align 8
  %shr1323 = lshr i64 %907, 16
  %and1324 = and i64 %shr1323, 63
  %arrayidx1325 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1324
  %908 = load i64, i64* %arrayidx1325, align 8
  %xor1326 = xor i64 %xor1322, %908
  %909 = load i64, i64* %T, align 8
  %shr1327 = lshr i64 %909, 24
  %and1328 = and i64 %shr1327, 63
  %arrayidx1329 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1328
  %910 = load i64, i64* %arrayidx1329, align 8
  %xor1330 = xor i64 %xor1326, %910
  %911 = load i64, i64* %X, align 8
  %xor1331 = xor i64 %911, %xor1330
  store i64 %xor1331, i64* %X, align 8
  %912 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1332 = getelementptr inbounds i64, i64* %912, i32 1
  store i64* %incdec.ptr1332, i64** %SK.addr, align 8
  %913 = load i64, i64* %912, align 8
  %914 = load i64, i64* %Y, align 8
  %shl1333 = shl i64 %914, 28
  %915 = load i64, i64* %Y, align 8
  %shr1334 = lshr i64 %915, 4
  %or1335 = or i64 %shl1333, %shr1334
  %xor1336 = xor i64 %913, %or1335
  store i64 %xor1336, i64* %T, align 8
  %916 = load i64, i64* %T, align 8
  %and1337 = and i64 %916, 63
  %arrayidx1338 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1337
  %917 = load i64, i64* %arrayidx1338, align 8
  %918 = load i64, i64* %T, align 8
  %shr1339 = lshr i64 %918, 8
  %and1340 = and i64 %shr1339, 63
  %arrayidx1341 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1340
  %919 = load i64, i64* %arrayidx1341, align 8
  %xor1342 = xor i64 %917, %919
  %920 = load i64, i64* %T, align 8
  %shr1343 = lshr i64 %920, 16
  %and1344 = and i64 %shr1343, 63
  %arrayidx1345 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1344
  %921 = load i64, i64* %arrayidx1345, align 8
  %xor1346 = xor i64 %xor1342, %921
  %922 = load i64, i64* %T, align 8
  %shr1347 = lshr i64 %922, 24
  %and1348 = and i64 %shr1347, 63
  %arrayidx1349 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1348
  %923 = load i64, i64* %arrayidx1349, align 8
  %xor1350 = xor i64 %xor1346, %923
  %924 = load i64, i64* %X, align 8
  %xor1351 = xor i64 %924, %xor1350
  store i64 %xor1351, i64* %X, align 8
  %925 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1352 = getelementptr inbounds i64, i64* %925, i32 1
  store i64* %incdec.ptr1352, i64** %SK.addr, align 8
  %926 = load i64, i64* %925, align 8
  %927 = load i64, i64* %X, align 8
  %xor1353 = xor i64 %926, %927
  store i64 %xor1353, i64* %T, align 8
  %928 = load i64, i64* %T, align 8
  %and1354 = and i64 %928, 63
  %arrayidx1355 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1354
  %929 = load i64, i64* %arrayidx1355, align 8
  %930 = load i64, i64* %T, align 8
  %shr1356 = lshr i64 %930, 8
  %and1357 = and i64 %shr1356, 63
  %arrayidx1358 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1357
  %931 = load i64, i64* %arrayidx1358, align 8
  %xor1359 = xor i64 %929, %931
  %932 = load i64, i64* %T, align 8
  %shr1360 = lshr i64 %932, 16
  %and1361 = and i64 %shr1360, 63
  %arrayidx1362 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1361
  %933 = load i64, i64* %arrayidx1362, align 8
  %xor1363 = xor i64 %xor1359, %933
  %934 = load i64, i64* %T, align 8
  %shr1364 = lshr i64 %934, 24
  %and1365 = and i64 %shr1364, 63
  %arrayidx1366 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1365
  %935 = load i64, i64* %arrayidx1366, align 8
  %xor1367 = xor i64 %xor1363, %935
  %936 = load i64, i64* %Y, align 8
  %xor1368 = xor i64 %936, %xor1367
  store i64 %xor1368, i64* %Y, align 8
  %937 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1369 = getelementptr inbounds i64, i64* %937, i32 1
  store i64* %incdec.ptr1369, i64** %SK.addr, align 8
  %938 = load i64, i64* %937, align 8
  %939 = load i64, i64* %X, align 8
  %shl1370 = shl i64 %939, 28
  %940 = load i64, i64* %X, align 8
  %shr1371 = lshr i64 %940, 4
  %or1372 = or i64 %shl1370, %shr1371
  %xor1373 = xor i64 %938, %or1372
  store i64 %xor1373, i64* %T, align 8
  %941 = load i64, i64* %T, align 8
  %and1374 = and i64 %941, 63
  %arrayidx1375 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1374
  %942 = load i64, i64* %arrayidx1375, align 8
  %943 = load i64, i64* %T, align 8
  %shr1376 = lshr i64 %943, 8
  %and1377 = and i64 %shr1376, 63
  %arrayidx1378 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1377
  %944 = load i64, i64* %arrayidx1378, align 8
  %xor1379 = xor i64 %942, %944
  %945 = load i64, i64* %T, align 8
  %shr1380 = lshr i64 %945, 16
  %and1381 = and i64 %shr1380, 63
  %arrayidx1382 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1381
  %946 = load i64, i64* %arrayidx1382, align 8
  %xor1383 = xor i64 %xor1379, %946
  %947 = load i64, i64* %T, align 8
  %shr1384 = lshr i64 %947, 24
  %and1385 = and i64 %shr1384, 63
  %arrayidx1386 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1385
  %948 = load i64, i64* %arrayidx1386, align 8
  %xor1387 = xor i64 %xor1383, %948
  %949 = load i64, i64* %Y, align 8
  %xor1388 = xor i64 %949, %xor1387
  store i64 %xor1388, i64* %Y, align 8
  %950 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1389 = getelementptr inbounds i64, i64* %950, i32 1
  store i64* %incdec.ptr1389, i64** %SK.addr, align 8
  %951 = load i64, i64* %950, align 8
  %952 = load i64, i64* %Y, align 8
  %xor1390 = xor i64 %951, %952
  store i64 %xor1390, i64* %T, align 8
  %953 = load i64, i64* %T, align 8
  %and1391 = and i64 %953, 63
  %arrayidx1392 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1391
  %954 = load i64, i64* %arrayidx1392, align 8
  %955 = load i64, i64* %T, align 8
  %shr1393 = lshr i64 %955, 8
  %and1394 = and i64 %shr1393, 63
  %arrayidx1395 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1394
  %956 = load i64, i64* %arrayidx1395, align 8
  %xor1396 = xor i64 %954, %956
  %957 = load i64, i64* %T, align 8
  %shr1397 = lshr i64 %957, 16
  %and1398 = and i64 %shr1397, 63
  %arrayidx1399 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1398
  %958 = load i64, i64* %arrayidx1399, align 8
  %xor1400 = xor i64 %xor1396, %958
  %959 = load i64, i64* %T, align 8
  %shr1401 = lshr i64 %959, 24
  %and1402 = and i64 %shr1401, 63
  %arrayidx1403 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1402
  %960 = load i64, i64* %arrayidx1403, align 8
  %xor1404 = xor i64 %xor1400, %960
  %961 = load i64, i64* %X, align 8
  %xor1405 = xor i64 %961, %xor1404
  store i64 %xor1405, i64* %X, align 8
  %962 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1406 = getelementptr inbounds i64, i64* %962, i32 1
  store i64* %incdec.ptr1406, i64** %SK.addr, align 8
  %963 = load i64, i64* %962, align 8
  %964 = load i64, i64* %Y, align 8
  %shl1407 = shl i64 %964, 28
  %965 = load i64, i64* %Y, align 8
  %shr1408 = lshr i64 %965, 4
  %or1409 = or i64 %shl1407, %shr1408
  %xor1410 = xor i64 %963, %or1409
  store i64 %xor1410, i64* %T, align 8
  %966 = load i64, i64* %T, align 8
  %and1411 = and i64 %966, 63
  %arrayidx1412 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1411
  %967 = load i64, i64* %arrayidx1412, align 8
  %968 = load i64, i64* %T, align 8
  %shr1413 = lshr i64 %968, 8
  %and1414 = and i64 %shr1413, 63
  %arrayidx1415 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1414
  %969 = load i64, i64* %arrayidx1415, align 8
  %xor1416 = xor i64 %967, %969
  %970 = load i64, i64* %T, align 8
  %shr1417 = lshr i64 %970, 16
  %and1418 = and i64 %shr1417, 63
  %arrayidx1419 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1418
  %971 = load i64, i64* %arrayidx1419, align 8
  %xor1420 = xor i64 %xor1416, %971
  %972 = load i64, i64* %T, align 8
  %shr1421 = lshr i64 %972, 24
  %and1422 = and i64 %shr1421, 63
  %arrayidx1423 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1422
  %973 = load i64, i64* %arrayidx1423, align 8
  %xor1424 = xor i64 %xor1420, %973
  %974 = load i64, i64* %X, align 8
  %xor1425 = xor i64 %974, %xor1424
  store i64 %xor1425, i64* %X, align 8
  %975 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1426 = getelementptr inbounds i64, i64* %975, i32 1
  store i64* %incdec.ptr1426, i64** %SK.addr, align 8
  %976 = load i64, i64* %975, align 8
  %977 = load i64, i64* %X, align 8
  %xor1427 = xor i64 %976, %977
  store i64 %xor1427, i64* %T, align 8
  %978 = load i64, i64* %T, align 8
  %and1428 = and i64 %978, 63
  %arrayidx1429 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1428
  %979 = load i64, i64* %arrayidx1429, align 8
  %980 = load i64, i64* %T, align 8
  %shr1430 = lshr i64 %980, 8
  %and1431 = and i64 %shr1430, 63
  %arrayidx1432 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1431
  %981 = load i64, i64* %arrayidx1432, align 8
  %xor1433 = xor i64 %979, %981
  %982 = load i64, i64* %T, align 8
  %shr1434 = lshr i64 %982, 16
  %and1435 = and i64 %shr1434, 63
  %arrayidx1436 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1435
  %983 = load i64, i64* %arrayidx1436, align 8
  %xor1437 = xor i64 %xor1433, %983
  %984 = load i64, i64* %T, align 8
  %shr1438 = lshr i64 %984, 24
  %and1439 = and i64 %shr1438, 63
  %arrayidx1440 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1439
  %985 = load i64, i64* %arrayidx1440, align 8
  %xor1441 = xor i64 %xor1437, %985
  %986 = load i64, i64* %Y, align 8
  %xor1442 = xor i64 %986, %xor1441
  store i64 %xor1442, i64* %Y, align 8
  %987 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1443 = getelementptr inbounds i64, i64* %987, i32 1
  store i64* %incdec.ptr1443, i64** %SK.addr, align 8
  %988 = load i64, i64* %987, align 8
  %989 = load i64, i64* %X, align 8
  %shl1444 = shl i64 %989, 28
  %990 = load i64, i64* %X, align 8
  %shr1445 = lshr i64 %990, 4
  %or1446 = or i64 %shl1444, %shr1445
  %xor1447 = xor i64 %988, %or1446
  store i64 %xor1447, i64* %T, align 8
  %991 = load i64, i64* %T, align 8
  %and1448 = and i64 %991, 63
  %arrayidx1449 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1448
  %992 = load i64, i64* %arrayidx1449, align 8
  %993 = load i64, i64* %T, align 8
  %shr1450 = lshr i64 %993, 8
  %and1451 = and i64 %shr1450, 63
  %arrayidx1452 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1451
  %994 = load i64, i64* %arrayidx1452, align 8
  %xor1453 = xor i64 %992, %994
  %995 = load i64, i64* %T, align 8
  %shr1454 = lshr i64 %995, 16
  %and1455 = and i64 %shr1454, 63
  %arrayidx1456 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1455
  %996 = load i64, i64* %arrayidx1456, align 8
  %xor1457 = xor i64 %xor1453, %996
  %997 = load i64, i64* %T, align 8
  %shr1458 = lshr i64 %997, 24
  %and1459 = and i64 %shr1458, 63
  %arrayidx1460 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1459
  %998 = load i64, i64* %arrayidx1460, align 8
  %xor1461 = xor i64 %xor1457, %998
  %999 = load i64, i64* %Y, align 8
  %xor1462 = xor i64 %999, %xor1461
  store i64 %xor1462, i64* %Y, align 8
  %1000 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1463 = getelementptr inbounds i64, i64* %1000, i32 1
  store i64* %incdec.ptr1463, i64** %SK.addr, align 8
  %1001 = load i64, i64* %1000, align 8
  %1002 = load i64, i64* %Y, align 8
  %xor1464 = xor i64 %1001, %1002
  store i64 %xor1464, i64* %T, align 8
  %1003 = load i64, i64* %T, align 8
  %and1465 = and i64 %1003, 63
  %arrayidx1466 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1465
  %1004 = load i64, i64* %arrayidx1466, align 8
  %1005 = load i64, i64* %T, align 8
  %shr1467 = lshr i64 %1005, 8
  %and1468 = and i64 %shr1467, 63
  %arrayidx1469 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1468
  %1006 = load i64, i64* %arrayidx1469, align 8
  %xor1470 = xor i64 %1004, %1006
  %1007 = load i64, i64* %T, align 8
  %shr1471 = lshr i64 %1007, 16
  %and1472 = and i64 %shr1471, 63
  %arrayidx1473 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1472
  %1008 = load i64, i64* %arrayidx1473, align 8
  %xor1474 = xor i64 %xor1470, %1008
  %1009 = load i64, i64* %T, align 8
  %shr1475 = lshr i64 %1009, 24
  %and1476 = and i64 %shr1475, 63
  %arrayidx1477 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1476
  %1010 = load i64, i64* %arrayidx1477, align 8
  %xor1478 = xor i64 %xor1474, %1010
  %1011 = load i64, i64* %X, align 8
  %xor1479 = xor i64 %1011, %xor1478
  store i64 %xor1479, i64* %X, align 8
  %1012 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1480 = getelementptr inbounds i64, i64* %1012, i32 1
  store i64* %incdec.ptr1480, i64** %SK.addr, align 8
  %1013 = load i64, i64* %1012, align 8
  %1014 = load i64, i64* %Y, align 8
  %shl1481 = shl i64 %1014, 28
  %1015 = load i64, i64* %Y, align 8
  %shr1482 = lshr i64 %1015, 4
  %or1483 = or i64 %shl1481, %shr1482
  %xor1484 = xor i64 %1013, %or1483
  store i64 %xor1484, i64* %T, align 8
  %1016 = load i64, i64* %T, align 8
  %and1485 = and i64 %1016, 63
  %arrayidx1486 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1485
  %1017 = load i64, i64* %arrayidx1486, align 8
  %1018 = load i64, i64* %T, align 8
  %shr1487 = lshr i64 %1018, 8
  %and1488 = and i64 %shr1487, 63
  %arrayidx1489 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1488
  %1019 = load i64, i64* %arrayidx1489, align 8
  %xor1490 = xor i64 %1017, %1019
  %1020 = load i64, i64* %T, align 8
  %shr1491 = lshr i64 %1020, 16
  %and1492 = and i64 %shr1491, 63
  %arrayidx1493 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1492
  %1021 = load i64, i64* %arrayidx1493, align 8
  %xor1494 = xor i64 %xor1490, %1021
  %1022 = load i64, i64* %T, align 8
  %shr1495 = lshr i64 %1022, 24
  %and1496 = and i64 %shr1495, 63
  %arrayidx1497 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1496
  %1023 = load i64, i64* %arrayidx1497, align 8
  %xor1498 = xor i64 %xor1494, %1023
  %1024 = load i64, i64* %X, align 8
  %xor1499 = xor i64 %1024, %xor1498
  store i64 %xor1499, i64* %X, align 8
  %1025 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1500 = getelementptr inbounds i64, i64* %1025, i32 1
  store i64* %incdec.ptr1500, i64** %SK.addr, align 8
  %1026 = load i64, i64* %1025, align 8
  %1027 = load i64, i64* %X, align 8
  %xor1501 = xor i64 %1026, %1027
  store i64 %xor1501, i64* %T, align 8
  %1028 = load i64, i64* %T, align 8
  %and1502 = and i64 %1028, 63
  %arrayidx1503 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1502
  %1029 = load i64, i64* %arrayidx1503, align 8
  %1030 = load i64, i64* %T, align 8
  %shr1504 = lshr i64 %1030, 8
  %and1505 = and i64 %shr1504, 63
  %arrayidx1506 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1505
  %1031 = load i64, i64* %arrayidx1506, align 8
  %xor1507 = xor i64 %1029, %1031
  %1032 = load i64, i64* %T, align 8
  %shr1508 = lshr i64 %1032, 16
  %and1509 = and i64 %shr1508, 63
  %arrayidx1510 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1509
  %1033 = load i64, i64* %arrayidx1510, align 8
  %xor1511 = xor i64 %xor1507, %1033
  %1034 = load i64, i64* %T, align 8
  %shr1512 = lshr i64 %1034, 24
  %and1513 = and i64 %shr1512, 63
  %arrayidx1514 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1513
  %1035 = load i64, i64* %arrayidx1514, align 8
  %xor1515 = xor i64 %xor1511, %1035
  %1036 = load i64, i64* %Y, align 8
  %xor1516 = xor i64 %1036, %xor1515
  store i64 %xor1516, i64* %Y, align 8
  %1037 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1517 = getelementptr inbounds i64, i64* %1037, i32 1
  store i64* %incdec.ptr1517, i64** %SK.addr, align 8
  %1038 = load i64, i64* %1037, align 8
  %1039 = load i64, i64* %X, align 8
  %shl1518 = shl i64 %1039, 28
  %1040 = load i64, i64* %X, align 8
  %shr1519 = lshr i64 %1040, 4
  %or1520 = or i64 %shl1518, %shr1519
  %xor1521 = xor i64 %1038, %or1520
  store i64 %xor1521, i64* %T, align 8
  %1041 = load i64, i64* %T, align 8
  %and1522 = and i64 %1041, 63
  %arrayidx1523 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1522
  %1042 = load i64, i64* %arrayidx1523, align 8
  %1043 = load i64, i64* %T, align 8
  %shr1524 = lshr i64 %1043, 8
  %and1525 = and i64 %shr1524, 63
  %arrayidx1526 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1525
  %1044 = load i64, i64* %arrayidx1526, align 8
  %xor1527 = xor i64 %1042, %1044
  %1045 = load i64, i64* %T, align 8
  %shr1528 = lshr i64 %1045, 16
  %and1529 = and i64 %shr1528, 63
  %arrayidx1530 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1529
  %1046 = load i64, i64* %arrayidx1530, align 8
  %xor1531 = xor i64 %xor1527, %1046
  %1047 = load i64, i64* %T, align 8
  %shr1532 = lshr i64 %1047, 24
  %and1533 = and i64 %shr1532, 63
  %arrayidx1534 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1533
  %1048 = load i64, i64* %arrayidx1534, align 8
  %xor1535 = xor i64 %xor1531, %1048
  %1049 = load i64, i64* %Y, align 8
  %xor1536 = xor i64 %1049, %xor1535
  store i64 %xor1536, i64* %Y, align 8
  %1050 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1537 = getelementptr inbounds i64, i64* %1050, i32 1
  store i64* %incdec.ptr1537, i64** %SK.addr, align 8
  %1051 = load i64, i64* %1050, align 8
  %1052 = load i64, i64* %Y, align 8
  %xor1538 = xor i64 %1051, %1052
  store i64 %xor1538, i64* %T, align 8
  %1053 = load i64, i64* %T, align 8
  %and1539 = and i64 %1053, 63
  %arrayidx1540 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1539
  %1054 = load i64, i64* %arrayidx1540, align 8
  %1055 = load i64, i64* %T, align 8
  %shr1541 = lshr i64 %1055, 8
  %and1542 = and i64 %shr1541, 63
  %arrayidx1543 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1542
  %1056 = load i64, i64* %arrayidx1543, align 8
  %xor1544 = xor i64 %1054, %1056
  %1057 = load i64, i64* %T, align 8
  %shr1545 = lshr i64 %1057, 16
  %and1546 = and i64 %shr1545, 63
  %arrayidx1547 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1546
  %1058 = load i64, i64* %arrayidx1547, align 8
  %xor1548 = xor i64 %xor1544, %1058
  %1059 = load i64, i64* %T, align 8
  %shr1549 = lshr i64 %1059, 24
  %and1550 = and i64 %shr1549, 63
  %arrayidx1551 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1550
  %1060 = load i64, i64* %arrayidx1551, align 8
  %xor1552 = xor i64 %xor1548, %1060
  %1061 = load i64, i64* %X, align 8
  %xor1553 = xor i64 %1061, %xor1552
  store i64 %xor1553, i64* %X, align 8
  %1062 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1554 = getelementptr inbounds i64, i64* %1062, i32 1
  store i64* %incdec.ptr1554, i64** %SK.addr, align 8
  %1063 = load i64, i64* %1062, align 8
  %1064 = load i64, i64* %Y, align 8
  %shl1555 = shl i64 %1064, 28
  %1065 = load i64, i64* %Y, align 8
  %shr1556 = lshr i64 %1065, 4
  %or1557 = or i64 %shl1555, %shr1556
  %xor1558 = xor i64 %1063, %or1557
  store i64 %xor1558, i64* %T, align 8
  %1066 = load i64, i64* %T, align 8
  %and1559 = and i64 %1066, 63
  %arrayidx1560 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1559
  %1067 = load i64, i64* %arrayidx1560, align 8
  %1068 = load i64, i64* %T, align 8
  %shr1561 = lshr i64 %1068, 8
  %and1562 = and i64 %shr1561, 63
  %arrayidx1563 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1562
  %1069 = load i64, i64* %arrayidx1563, align 8
  %xor1564 = xor i64 %1067, %1069
  %1070 = load i64, i64* %T, align 8
  %shr1565 = lshr i64 %1070, 16
  %and1566 = and i64 %shr1565, 63
  %arrayidx1567 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1566
  %1071 = load i64, i64* %arrayidx1567, align 8
  %xor1568 = xor i64 %xor1564, %1071
  %1072 = load i64, i64* %T, align 8
  %shr1569 = lshr i64 %1072, 24
  %and1570 = and i64 %shr1569, 63
  %arrayidx1571 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1570
  %1073 = load i64, i64* %arrayidx1571, align 8
  %xor1572 = xor i64 %xor1568, %1073
  %1074 = load i64, i64* %X, align 8
  %xor1573 = xor i64 %1074, %xor1572
  store i64 %xor1573, i64* %X, align 8
  %1075 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1574 = getelementptr inbounds i64, i64* %1075, i32 1
  store i64* %incdec.ptr1574, i64** %SK.addr, align 8
  %1076 = load i64, i64* %1075, align 8
  %1077 = load i64, i64* %X, align 8
  %xor1575 = xor i64 %1076, %1077
  store i64 %xor1575, i64* %T, align 8
  %1078 = load i64, i64* %T, align 8
  %and1576 = and i64 %1078, 63
  %arrayidx1577 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1576
  %1079 = load i64, i64* %arrayidx1577, align 8
  %1080 = load i64, i64* %T, align 8
  %shr1578 = lshr i64 %1080, 8
  %and1579 = and i64 %shr1578, 63
  %arrayidx1580 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1579
  %1081 = load i64, i64* %arrayidx1580, align 8
  %xor1581 = xor i64 %1079, %1081
  %1082 = load i64, i64* %T, align 8
  %shr1582 = lshr i64 %1082, 16
  %and1583 = and i64 %shr1582, 63
  %arrayidx1584 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1583
  %1083 = load i64, i64* %arrayidx1584, align 8
  %xor1585 = xor i64 %xor1581, %1083
  %1084 = load i64, i64* %T, align 8
  %shr1586 = lshr i64 %1084, 24
  %and1587 = and i64 %shr1586, 63
  %arrayidx1588 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1587
  %1085 = load i64, i64* %arrayidx1588, align 8
  %xor1589 = xor i64 %xor1585, %1085
  %1086 = load i64, i64* %Y, align 8
  %xor1590 = xor i64 %1086, %xor1589
  store i64 %xor1590, i64* %Y, align 8
  %1087 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1591 = getelementptr inbounds i64, i64* %1087, i32 1
  store i64* %incdec.ptr1591, i64** %SK.addr, align 8
  %1088 = load i64, i64* %1087, align 8
  %1089 = load i64, i64* %X, align 8
  %shl1592 = shl i64 %1089, 28
  %1090 = load i64, i64* %X, align 8
  %shr1593 = lshr i64 %1090, 4
  %or1594 = or i64 %shl1592, %shr1593
  %xor1595 = xor i64 %1088, %or1594
  store i64 %xor1595, i64* %T, align 8
  %1091 = load i64, i64* %T, align 8
  %and1596 = and i64 %1091, 63
  %arrayidx1597 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1596
  %1092 = load i64, i64* %arrayidx1597, align 8
  %1093 = load i64, i64* %T, align 8
  %shr1598 = lshr i64 %1093, 8
  %and1599 = and i64 %shr1598, 63
  %arrayidx1600 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1599
  %1094 = load i64, i64* %arrayidx1600, align 8
  %xor1601 = xor i64 %1092, %1094
  %1095 = load i64, i64* %T, align 8
  %shr1602 = lshr i64 %1095, 16
  %and1603 = and i64 %shr1602, 63
  %arrayidx1604 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1603
  %1096 = load i64, i64* %arrayidx1604, align 8
  %xor1605 = xor i64 %xor1601, %1096
  %1097 = load i64, i64* %T, align 8
  %shr1606 = lshr i64 %1097, 24
  %and1607 = and i64 %shr1606, 63
  %arrayidx1608 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1607
  %1098 = load i64, i64* %arrayidx1608, align 8
  %xor1609 = xor i64 %xor1605, %1098
  %1099 = load i64, i64* %Y, align 8
  %xor1610 = xor i64 %1099, %xor1609
  store i64 %xor1610, i64* %Y, align 8
  %1100 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1611 = getelementptr inbounds i64, i64* %1100, i32 1
  store i64* %incdec.ptr1611, i64** %SK.addr, align 8
  %1101 = load i64, i64* %1100, align 8
  %1102 = load i64, i64* %Y, align 8
  %xor1612 = xor i64 %1101, %1102
  store i64 %xor1612, i64* %T, align 8
  %1103 = load i64, i64* %T, align 8
  %and1613 = and i64 %1103, 63
  %arrayidx1614 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1613
  %1104 = load i64, i64* %arrayidx1614, align 8
  %1105 = load i64, i64* %T, align 8
  %shr1615 = lshr i64 %1105, 8
  %and1616 = and i64 %shr1615, 63
  %arrayidx1617 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1616
  %1106 = load i64, i64* %arrayidx1617, align 8
  %xor1618 = xor i64 %1104, %1106
  %1107 = load i64, i64* %T, align 8
  %shr1619 = lshr i64 %1107, 16
  %and1620 = and i64 %shr1619, 63
  %arrayidx1621 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1620
  %1108 = load i64, i64* %arrayidx1621, align 8
  %xor1622 = xor i64 %xor1618, %1108
  %1109 = load i64, i64* %T, align 8
  %shr1623 = lshr i64 %1109, 24
  %and1624 = and i64 %shr1623, 63
  %arrayidx1625 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1624
  %1110 = load i64, i64* %arrayidx1625, align 8
  %xor1626 = xor i64 %xor1622, %1110
  %1111 = load i64, i64* %X, align 8
  %xor1627 = xor i64 %1111, %xor1626
  store i64 %xor1627, i64* %X, align 8
  %1112 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1628 = getelementptr inbounds i64, i64* %1112, i32 1
  store i64* %incdec.ptr1628, i64** %SK.addr, align 8
  %1113 = load i64, i64* %1112, align 8
  %1114 = load i64, i64* %Y, align 8
  %shl1629 = shl i64 %1114, 28
  %1115 = load i64, i64* %Y, align 8
  %shr1630 = lshr i64 %1115, 4
  %or1631 = or i64 %shl1629, %shr1630
  %xor1632 = xor i64 %1113, %or1631
  store i64 %xor1632, i64* %T, align 8
  %1116 = load i64, i64* %T, align 8
  %and1633 = and i64 %1116, 63
  %arrayidx1634 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1633
  %1117 = load i64, i64* %arrayidx1634, align 8
  %1118 = load i64, i64* %T, align 8
  %shr1635 = lshr i64 %1118, 8
  %and1636 = and i64 %shr1635, 63
  %arrayidx1637 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1636
  %1119 = load i64, i64* %arrayidx1637, align 8
  %xor1638 = xor i64 %1117, %1119
  %1120 = load i64, i64* %T, align 8
  %shr1639 = lshr i64 %1120, 16
  %and1640 = and i64 %shr1639, 63
  %arrayidx1641 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1640
  %1121 = load i64, i64* %arrayidx1641, align 8
  %xor1642 = xor i64 %xor1638, %1121
  %1122 = load i64, i64* %T, align 8
  %shr1643 = lshr i64 %1122, 24
  %and1644 = and i64 %shr1643, 63
  %arrayidx1645 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1644
  %1123 = load i64, i64* %arrayidx1645, align 8
  %xor1646 = xor i64 %xor1642, %1123
  %1124 = load i64, i64* %X, align 8
  %xor1647 = xor i64 %1124, %xor1646
  store i64 %xor1647, i64* %X, align 8
  %1125 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1648 = getelementptr inbounds i64, i64* %1125, i32 1
  store i64* %incdec.ptr1648, i64** %SK.addr, align 8
  %1126 = load i64, i64* %1125, align 8
  %1127 = load i64, i64* %X, align 8
  %xor1649 = xor i64 %1126, %1127
  store i64 %xor1649, i64* %T, align 8
  %1128 = load i64, i64* %T, align 8
  %and1650 = and i64 %1128, 63
  %arrayidx1651 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1650
  %1129 = load i64, i64* %arrayidx1651, align 8
  %1130 = load i64, i64* %T, align 8
  %shr1652 = lshr i64 %1130, 8
  %and1653 = and i64 %shr1652, 63
  %arrayidx1654 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1653
  %1131 = load i64, i64* %arrayidx1654, align 8
  %xor1655 = xor i64 %1129, %1131
  %1132 = load i64, i64* %T, align 8
  %shr1656 = lshr i64 %1132, 16
  %and1657 = and i64 %shr1656, 63
  %arrayidx1658 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1657
  %1133 = load i64, i64* %arrayidx1658, align 8
  %xor1659 = xor i64 %xor1655, %1133
  %1134 = load i64, i64* %T, align 8
  %shr1660 = lshr i64 %1134, 24
  %and1661 = and i64 %shr1660, 63
  %arrayidx1662 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1661
  %1135 = load i64, i64* %arrayidx1662, align 8
  %xor1663 = xor i64 %xor1659, %1135
  %1136 = load i64, i64* %Y, align 8
  %xor1664 = xor i64 %1136, %xor1663
  store i64 %xor1664, i64* %Y, align 8
  %1137 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1665 = getelementptr inbounds i64, i64* %1137, i32 1
  store i64* %incdec.ptr1665, i64** %SK.addr, align 8
  %1138 = load i64, i64* %1137, align 8
  %1139 = load i64, i64* %X, align 8
  %shl1666 = shl i64 %1139, 28
  %1140 = load i64, i64* %X, align 8
  %shr1667 = lshr i64 %1140, 4
  %or1668 = or i64 %shl1666, %shr1667
  %xor1669 = xor i64 %1138, %or1668
  store i64 %xor1669, i64* %T, align 8
  %1141 = load i64, i64* %T, align 8
  %and1670 = and i64 %1141, 63
  %arrayidx1671 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1670
  %1142 = load i64, i64* %arrayidx1671, align 8
  %1143 = load i64, i64* %T, align 8
  %shr1672 = lshr i64 %1143, 8
  %and1673 = and i64 %shr1672, 63
  %arrayidx1674 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1673
  %1144 = load i64, i64* %arrayidx1674, align 8
  %xor1675 = xor i64 %1142, %1144
  %1145 = load i64, i64* %T, align 8
  %shr1676 = lshr i64 %1145, 16
  %and1677 = and i64 %shr1676, 63
  %arrayidx1678 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1677
  %1146 = load i64, i64* %arrayidx1678, align 8
  %xor1679 = xor i64 %xor1675, %1146
  %1147 = load i64, i64* %T, align 8
  %shr1680 = lshr i64 %1147, 24
  %and1681 = and i64 %shr1680, 63
  %arrayidx1682 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1681
  %1148 = load i64, i64* %arrayidx1682, align 8
  %xor1683 = xor i64 %xor1679, %1148
  %1149 = load i64, i64* %Y, align 8
  %xor1684 = xor i64 %1149, %xor1683
  store i64 %xor1684, i64* %Y, align 8
  %1150 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1685 = getelementptr inbounds i64, i64* %1150, i32 1
  store i64* %incdec.ptr1685, i64** %SK.addr, align 8
  %1151 = load i64, i64* %1150, align 8
  %1152 = load i64, i64* %Y, align 8
  %xor1686 = xor i64 %1151, %1152
  store i64 %xor1686, i64* %T, align 8
  %1153 = load i64, i64* %T, align 8
  %and1687 = and i64 %1153, 63
  %arrayidx1688 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1687
  %1154 = load i64, i64* %arrayidx1688, align 8
  %1155 = load i64, i64* %T, align 8
  %shr1689 = lshr i64 %1155, 8
  %and1690 = and i64 %shr1689, 63
  %arrayidx1691 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1690
  %1156 = load i64, i64* %arrayidx1691, align 8
  %xor1692 = xor i64 %1154, %1156
  %1157 = load i64, i64* %T, align 8
  %shr1693 = lshr i64 %1157, 16
  %and1694 = and i64 %shr1693, 63
  %arrayidx1695 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1694
  %1158 = load i64, i64* %arrayidx1695, align 8
  %xor1696 = xor i64 %xor1692, %1158
  %1159 = load i64, i64* %T, align 8
  %shr1697 = lshr i64 %1159, 24
  %and1698 = and i64 %shr1697, 63
  %arrayidx1699 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1698
  %1160 = load i64, i64* %arrayidx1699, align 8
  %xor1700 = xor i64 %xor1696, %1160
  %1161 = load i64, i64* %X, align 8
  %xor1701 = xor i64 %1161, %xor1700
  store i64 %xor1701, i64* %X, align 8
  %1162 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1702 = getelementptr inbounds i64, i64* %1162, i32 1
  store i64* %incdec.ptr1702, i64** %SK.addr, align 8
  %1163 = load i64, i64* %1162, align 8
  %1164 = load i64, i64* %Y, align 8
  %shl1703 = shl i64 %1164, 28
  %1165 = load i64, i64* %Y, align 8
  %shr1704 = lshr i64 %1165, 4
  %or1705 = or i64 %shl1703, %shr1704
  %xor1706 = xor i64 %1163, %or1705
  store i64 %xor1706, i64* %T, align 8
  %1166 = load i64, i64* %T, align 8
  %and1707 = and i64 %1166, 63
  %arrayidx1708 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1707
  %1167 = load i64, i64* %arrayidx1708, align 8
  %1168 = load i64, i64* %T, align 8
  %shr1709 = lshr i64 %1168, 8
  %and1710 = and i64 %shr1709, 63
  %arrayidx1711 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1710
  %1169 = load i64, i64* %arrayidx1711, align 8
  %xor1712 = xor i64 %1167, %1169
  %1170 = load i64, i64* %T, align 8
  %shr1713 = lshr i64 %1170, 16
  %and1714 = and i64 %shr1713, 63
  %arrayidx1715 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1714
  %1171 = load i64, i64* %arrayidx1715, align 8
  %xor1716 = xor i64 %xor1712, %1171
  %1172 = load i64, i64* %T, align 8
  %shr1717 = lshr i64 %1172, 24
  %and1718 = and i64 %shr1717, 63
  %arrayidx1719 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1718
  %1173 = load i64, i64* %arrayidx1719, align 8
  %xor1720 = xor i64 %xor1716, %1173
  %1174 = load i64, i64* %X, align 8
  %xor1721 = xor i64 %1174, %xor1720
  store i64 %xor1721, i64* %X, align 8
  %1175 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1722 = getelementptr inbounds i64, i64* %1175, i32 1
  store i64* %incdec.ptr1722, i64** %SK.addr, align 8
  %1176 = load i64, i64* %1175, align 8
  %1177 = load i64, i64* %X, align 8
  %xor1723 = xor i64 %1176, %1177
  store i64 %xor1723, i64* %T, align 8
  %1178 = load i64, i64* %T, align 8
  %and1724 = and i64 %1178, 63
  %arrayidx1725 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1724
  %1179 = load i64, i64* %arrayidx1725, align 8
  %1180 = load i64, i64* %T, align 8
  %shr1726 = lshr i64 %1180, 8
  %and1727 = and i64 %shr1726, 63
  %arrayidx1728 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1727
  %1181 = load i64, i64* %arrayidx1728, align 8
  %xor1729 = xor i64 %1179, %1181
  %1182 = load i64, i64* %T, align 8
  %shr1730 = lshr i64 %1182, 16
  %and1731 = and i64 %shr1730, 63
  %arrayidx1732 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1731
  %1183 = load i64, i64* %arrayidx1732, align 8
  %xor1733 = xor i64 %xor1729, %1183
  %1184 = load i64, i64* %T, align 8
  %shr1734 = lshr i64 %1184, 24
  %and1735 = and i64 %shr1734, 63
  %arrayidx1736 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1735
  %1185 = load i64, i64* %arrayidx1736, align 8
  %xor1737 = xor i64 %xor1733, %1185
  %1186 = load i64, i64* %Y, align 8
  %xor1738 = xor i64 %1186, %xor1737
  store i64 %xor1738, i64* %Y, align 8
  %1187 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1739 = getelementptr inbounds i64, i64* %1187, i32 1
  store i64* %incdec.ptr1739, i64** %SK.addr, align 8
  %1188 = load i64, i64* %1187, align 8
  %1189 = load i64, i64* %X, align 8
  %shl1740 = shl i64 %1189, 28
  %1190 = load i64, i64* %X, align 8
  %shr1741 = lshr i64 %1190, 4
  %or1742 = or i64 %shl1740, %shr1741
  %xor1743 = xor i64 %1188, %or1742
  store i64 %xor1743, i64* %T, align 8
  %1191 = load i64, i64* %T, align 8
  %and1744 = and i64 %1191, 63
  %arrayidx1745 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1744
  %1192 = load i64, i64* %arrayidx1745, align 8
  %1193 = load i64, i64* %T, align 8
  %shr1746 = lshr i64 %1193, 8
  %and1747 = and i64 %shr1746, 63
  %arrayidx1748 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1747
  %1194 = load i64, i64* %arrayidx1748, align 8
  %xor1749 = xor i64 %1192, %1194
  %1195 = load i64, i64* %T, align 8
  %shr1750 = lshr i64 %1195, 16
  %and1751 = and i64 %shr1750, 63
  %arrayidx1752 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1751
  %1196 = load i64, i64* %arrayidx1752, align 8
  %xor1753 = xor i64 %xor1749, %1196
  %1197 = load i64, i64* %T, align 8
  %shr1754 = lshr i64 %1197, 24
  %and1755 = and i64 %shr1754, 63
  %arrayidx1756 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1755
  %1198 = load i64, i64* %arrayidx1756, align 8
  %xor1757 = xor i64 %xor1753, %1198
  %1199 = load i64, i64* %Y, align 8
  %xor1758 = xor i64 %1199, %xor1757
  store i64 %xor1758, i64* %Y, align 8
  %1200 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1759 = getelementptr inbounds i64, i64* %1200, i32 1
  store i64* %incdec.ptr1759, i64** %SK.addr, align 8
  %1201 = load i64, i64* %1200, align 8
  %1202 = load i64, i64* %Y, align 8
  %xor1760 = xor i64 %1201, %1202
  store i64 %xor1760, i64* %T, align 8
  %1203 = load i64, i64* %T, align 8
  %and1761 = and i64 %1203, 63
  %arrayidx1762 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1761
  %1204 = load i64, i64* %arrayidx1762, align 8
  %1205 = load i64, i64* %T, align 8
  %shr1763 = lshr i64 %1205, 8
  %and1764 = and i64 %shr1763, 63
  %arrayidx1765 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1764
  %1206 = load i64, i64* %arrayidx1765, align 8
  %xor1766 = xor i64 %1204, %1206
  %1207 = load i64, i64* %T, align 8
  %shr1767 = lshr i64 %1207, 16
  %and1768 = and i64 %shr1767, 63
  %arrayidx1769 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1768
  %1208 = load i64, i64* %arrayidx1769, align 8
  %xor1770 = xor i64 %xor1766, %1208
  %1209 = load i64, i64* %T, align 8
  %shr1771 = lshr i64 %1209, 24
  %and1772 = and i64 %shr1771, 63
  %arrayidx1773 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1772
  %1210 = load i64, i64* %arrayidx1773, align 8
  %xor1774 = xor i64 %xor1770, %1210
  %1211 = load i64, i64* %X, align 8
  %xor1775 = xor i64 %1211, %xor1774
  store i64 %xor1775, i64* %X, align 8
  %1212 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1776 = getelementptr inbounds i64, i64* %1212, i32 1
  store i64* %incdec.ptr1776, i64** %SK.addr, align 8
  %1213 = load i64, i64* %1212, align 8
  %1214 = load i64, i64* %Y, align 8
  %shl1777 = shl i64 %1214, 28
  %1215 = load i64, i64* %Y, align 8
  %shr1778 = lshr i64 %1215, 4
  %or1779 = or i64 %shl1777, %shr1778
  %xor1780 = xor i64 %1213, %or1779
  store i64 %xor1780, i64* %T, align 8
  %1216 = load i64, i64* %T, align 8
  %and1781 = and i64 %1216, 63
  %arrayidx1782 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1781
  %1217 = load i64, i64* %arrayidx1782, align 8
  %1218 = load i64, i64* %T, align 8
  %shr1783 = lshr i64 %1218, 8
  %and1784 = and i64 %shr1783, 63
  %arrayidx1785 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1784
  %1219 = load i64, i64* %arrayidx1785, align 8
  %xor1786 = xor i64 %1217, %1219
  %1220 = load i64, i64* %T, align 8
  %shr1787 = lshr i64 %1220, 16
  %and1788 = and i64 %shr1787, 63
  %arrayidx1789 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1788
  %1221 = load i64, i64* %arrayidx1789, align 8
  %xor1790 = xor i64 %xor1786, %1221
  %1222 = load i64, i64* %T, align 8
  %shr1791 = lshr i64 %1222, 24
  %and1792 = and i64 %shr1791, 63
  %arrayidx1793 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1792
  %1223 = load i64, i64* %arrayidx1793, align 8
  %xor1794 = xor i64 %xor1790, %1223
  %1224 = load i64, i64* %X, align 8
  %xor1795 = xor i64 %1224, %xor1794
  store i64 %xor1795, i64* %X, align 8
  %1225 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1796 = getelementptr inbounds i64, i64* %1225, i32 1
  store i64* %incdec.ptr1796, i64** %SK.addr, align 8
  %1226 = load i64, i64* %1225, align 8
  %1227 = load i64, i64* %X, align 8
  %xor1797 = xor i64 %1226, %1227
  store i64 %xor1797, i64* %T, align 8
  %1228 = load i64, i64* %T, align 8
  %and1798 = and i64 %1228, 63
  %arrayidx1799 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i32 0, i64 %and1798
  %1229 = load i64, i64* %arrayidx1799, align 8
  %1230 = load i64, i64* %T, align 8
  %shr1800 = lshr i64 %1230, 8
  %and1801 = and i64 %shr1800, 63
  %arrayidx1802 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i32 0, i64 %and1801
  %1231 = load i64, i64* %arrayidx1802, align 8
  %xor1803 = xor i64 %1229, %1231
  %1232 = load i64, i64* %T, align 8
  %shr1804 = lshr i64 %1232, 16
  %and1805 = and i64 %shr1804, 63
  %arrayidx1806 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i32 0, i64 %and1805
  %1233 = load i64, i64* %arrayidx1806, align 8
  %xor1807 = xor i64 %xor1803, %1233
  %1234 = load i64, i64* %T, align 8
  %shr1808 = lshr i64 %1234, 24
  %and1809 = and i64 %shr1808, 63
  %arrayidx1810 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i32 0, i64 %and1809
  %1235 = load i64, i64* %arrayidx1810, align 8
  %xor1811 = xor i64 %xor1807, %1235
  %1236 = load i64, i64* %Y, align 8
  %xor1812 = xor i64 %1236, %xor1811
  store i64 %xor1812, i64* %Y, align 8
  %1237 = load i64*, i64** %SK.addr, align 8
  %incdec.ptr1813 = getelementptr inbounds i64, i64* %1237, i32 1
  store i64* %incdec.ptr1813, i64** %SK.addr, align 8
  %1238 = load i64, i64* %1237, align 8
  %1239 = load i64, i64* %X, align 8
  %shl1814 = shl i64 %1239, 28
  %1240 = load i64, i64* %X, align 8
  %shr1815 = lshr i64 %1240, 4
  %or1816 = or i64 %shl1814, %shr1815
  %xor1817 = xor i64 %1238, %or1816
  store i64 %xor1817, i64* %T, align 8
  %1241 = load i64, i64* %T, align 8
  %and1818 = and i64 %1241, 63
  %arrayidx1819 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i32 0, i64 %and1818
  %1242 = load i64, i64* %arrayidx1819, align 8
  %1243 = load i64, i64* %T, align 8
  %shr1820 = lshr i64 %1243, 8
  %and1821 = and i64 %shr1820, 63
  %arrayidx1822 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i32 0, i64 %and1821
  %1244 = load i64, i64* %arrayidx1822, align 8
  %xor1823 = xor i64 %1242, %1244
  %1245 = load i64, i64* %T, align 8
  %shr1824 = lshr i64 %1245, 16
  %and1825 = and i64 %shr1824, 63
  %arrayidx1826 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i32 0, i64 %and1825
  %1246 = load i64, i64* %arrayidx1826, align 8
  %xor1827 = xor i64 %xor1823, %1246
  %1247 = load i64, i64* %T, align 8
  %shr1828 = lshr i64 %1247, 24
  %and1829 = and i64 %shr1828, 63
  %arrayidx1830 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i32 0, i64 %and1829
  %1248 = load i64, i64* %arrayidx1830, align 8
  %xor1831 = xor i64 %xor1827, %1248
  %1249 = load i64, i64* %Y, align 8
  %xor1832 = xor i64 %1249, %xor1831
  store i64 %xor1832, i64* %Y, align 8
  %1250 = load i64, i64* %Y, align 8
  %shl1833 = shl i64 %1250, 31
  %1251 = load i64, i64* %Y, align 8
  %shr1834 = lshr i64 %1251, 1
  %or1835 = or i64 %shl1833, %shr1834
  %and1836 = and i64 %or1835, 4294967295
  store i64 %and1836, i64* %Y, align 8
  %1252 = load i64, i64* %Y, align 8
  %1253 = load i64, i64* %X, align 8
  %xor1837 = xor i64 %1252, %1253
  %and1838 = and i64 %xor1837, 2863311530
  store i64 %and1838, i64* %T, align 8
  %1254 = load i64, i64* %T, align 8
  %1255 = load i64, i64* %Y, align 8
  %xor1839 = xor i64 %1255, %1254
  store i64 %xor1839, i64* %Y, align 8
  %1256 = load i64, i64* %T, align 8
  %1257 = load i64, i64* %X, align 8
  %xor1840 = xor i64 %1257, %1256
  store i64 %xor1840, i64* %X, align 8
  %1258 = load i64, i64* %X, align 8
  %shl1841 = shl i64 %1258, 31
  %1259 = load i64, i64* %X, align 8
  %shr1842 = lshr i64 %1259, 1
  %or1843 = or i64 %shl1841, %shr1842
  %and1844 = and i64 %or1843, 4294967295
  store i64 %and1844, i64* %X, align 8
  %1260 = load i64, i64* %X, align 8
  %shr1845 = lshr i64 %1260, 8
  %1261 = load i64, i64* %Y, align 8
  %xor1846 = xor i64 %shr1845, %1261
  %and1847 = and i64 %xor1846, 16711935
  store i64 %and1847, i64* %T, align 8
  %1262 = load i64, i64* %T, align 8
  %1263 = load i64, i64* %Y, align 8
  %xor1848 = xor i64 %1263, %1262
  store i64 %xor1848, i64* %Y, align 8
  %1264 = load i64, i64* %T, align 8
  %shl1849 = shl i64 %1264, 8
  %1265 = load i64, i64* %X, align 8
  %xor1850 = xor i64 %1265, %shl1849
  store i64 %xor1850, i64* %X, align 8
  %1266 = load i64, i64* %X, align 8
  %shr1851 = lshr i64 %1266, 2
  %1267 = load i64, i64* %Y, align 8
  %xor1852 = xor i64 %shr1851, %1267
  %and1853 = and i64 %xor1852, 858993459
  store i64 %and1853, i64* %T, align 8
  %1268 = load i64, i64* %T, align 8
  %1269 = load i64, i64* %Y, align 8
  %xor1854 = xor i64 %1269, %1268
  store i64 %xor1854, i64* %Y, align 8
  %1270 = load i64, i64* %T, align 8
  %shl1855 = shl i64 %1270, 2
  %1271 = load i64, i64* %X, align 8
  %xor1856 = xor i64 %1271, %shl1855
  store i64 %xor1856, i64* %X, align 8
  %1272 = load i64, i64* %Y, align 8
  %shr1857 = lshr i64 %1272, 16
  %1273 = load i64, i64* %X, align 8
  %xor1858 = xor i64 %shr1857, %1273
  %and1859 = and i64 %xor1858, 65535
  store i64 %and1859, i64* %T, align 8
  %1274 = load i64, i64* %T, align 8
  %1275 = load i64, i64* %X, align 8
  %xor1860 = xor i64 %1275, %1274
  store i64 %xor1860, i64* %X, align 8
  %1276 = load i64, i64* %T, align 8
  %shl1861 = shl i64 %1276, 16
  %1277 = load i64, i64* %Y, align 8
  %xor1862 = xor i64 %1277, %shl1861
  store i64 %xor1862, i64* %Y, align 8
  %1278 = load i64, i64* %Y, align 8
  %shr1863 = lshr i64 %1278, 4
  %1279 = load i64, i64* %X, align 8
  %xor1864 = xor i64 %shr1863, %1279
  %and1865 = and i64 %xor1864, 252645135
  store i64 %and1865, i64* %T, align 8
  %1280 = load i64, i64* %T, align 8
  %1281 = load i64, i64* %X, align 8
  %xor1866 = xor i64 %1281, %1280
  store i64 %xor1866, i64* %X, align 8
  %1282 = load i64, i64* %T, align 8
  %shl1867 = shl i64 %1282, 4
  %1283 = load i64, i64* %Y, align 8
  %xor1868 = xor i64 %1283, %shl1867
  store i64 %xor1868, i64* %Y, align 8
  %1284 = load i64, i64* %Y, align 8
  %shr1869 = lshr i64 %1284, 24
  %conv1870 = trunc i64 %shr1869 to i8
  %1285 = load i8*, i8** %output.addr, align 8
  %arrayidx1871 = getelementptr inbounds i8, i8* %1285, i64 0
  store i8 %conv1870, i8* %arrayidx1871, align 1
  %1286 = load i64, i64* %Y, align 8
  %shr1872 = lshr i64 %1286, 16
  %conv1873 = trunc i64 %shr1872 to i8
  %1287 = load i8*, i8** %output.addr, align 8
  %arrayidx1874 = getelementptr inbounds i8, i8* %1287, i64 1
  store i8 %conv1873, i8* %arrayidx1874, align 1
  %1288 = load i64, i64* %Y, align 8
  %shr1875 = lshr i64 %1288, 8
  %conv1876 = trunc i64 %shr1875 to i8
  %1289 = load i8*, i8** %output.addr, align 8
  %arrayidx1877 = getelementptr inbounds i8, i8* %1289, i64 2
  store i8 %conv1876, i8* %arrayidx1877, align 1
  %1290 = load i64, i64* %Y, align 8
  %conv1878 = trunc i64 %1290 to i8
  %1291 = load i8*, i8** %output.addr, align 8
  %arrayidx1879 = getelementptr inbounds i8, i8* %1291, i64 3
  store i8 %conv1878, i8* %arrayidx1879, align 1
  %1292 = load i64, i64* %X, align 8
  %shr1880 = lshr i64 %1292, 24
  %conv1881 = trunc i64 %shr1880 to i8
  %1293 = load i8*, i8** %output.addr, align 8
  %arrayidx1882 = getelementptr inbounds i8, i8* %1293, i64 4
  store i8 %conv1881, i8* %arrayidx1882, align 1
  %1294 = load i64, i64* %X, align 8
  %shr1883 = lshr i64 %1294, 16
  %conv1884 = trunc i64 %shr1883 to i8
  %1295 = load i8*, i8** %output.addr, align 8
  %arrayidx1885 = getelementptr inbounds i8, i8* %1295, i64 5
  store i8 %conv1884, i8* %arrayidx1885, align 1
  %1296 = load i64, i64* %X, align 8
  %shr1886 = lshr i64 %1296, 8
  %conv1887 = trunc i64 %shr1886 to i8
  %1297 = load i8*, i8** %output.addr, align 8
  %arrayidx1888 = getelementptr inbounds i8, i8* %1297, i64 6
  store i8 %conv1887, i8* %arrayidx1888, align 1
  %1298 = load i64, i64* %X, align 8
  %conv1889 = trunc i64 %1298 to i8
  %1299 = load i8*, i8** %output.addr, align 8
  %arrayidx1890 = getelementptr inbounds i8, i8* %1299, i64 7
  store i8 %conv1889, i8* %arrayidx1890, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @des3_encrypt(%struct.des3_context* %ctx, i8* %input, i8* %output) #0 {
entry:
  %ctx.addr = alloca %struct.des3_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store %struct.des3_context* %ctx, %struct.des3_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %esk = getelementptr inbounds %struct.des3_context, %struct.des3_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [96 x i64], [96 x i64]* %esk, i32 0, i32 0
  %1 = load i8*, i8** %input.addr, align 8
  %2 = load i8*, i8** %output.addr, align 8
  call void @des3_crypt(i64* %arraydecay, i8* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @des3_decrypt(%struct.des3_context* %ctx, i8* %input, i8* %output) #0 {
entry:
  %ctx.addr = alloca %struct.des3_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store %struct.des3_context* %ctx, %struct.des3_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.des3_context*, %struct.des3_context** %ctx.addr, align 8
  %dsk = getelementptr inbounds %struct.des3_context, %struct.des3_context* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [96 x i64], [96 x i64]* %dsk, i32 0, i32 0
  %1 = load i8*, i8** %input.addr, align 8
  %2 = load i8*, i8** %output.addr, align 8
  call void @des3_crypt(i64* %arraydecay, i8* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %ctx = alloca %struct.des_context, align 8
  %ctx3 = alloca %struct.des3_context, align 8
  %buf = alloca [8 x i8], align 1
  %delay = alloca i32, align 4
  %NumDelay = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 100, i32* %NumDelay, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #4
  store i32 %call, i32* %NumDelay, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %if.end
  %3 = load i32, i32* %m, align 4
  %cmp1 = icmp slt i32 %3, 2
  br i1 %cmp1, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0))
  %4 = load i32, i32* %m, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %for.body
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %for.body
  %5 = load i32, i32* %m, align 4
  %cmp7 = icmp eq i32 %5, 1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  store i32 0, i32* %n, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.70, %if.end.10
  %6 = load i32, i32* %n, align 4
  %cmp12 = icmp slt i32 %6, 3
  br i1 %cmp12, label %for.body.13, label %for.end.72

for.body.13:                                      ; preds = %for.cond.11
  %7 = load i32, i32* %n, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %8, 64
  %add14 = add nsw i32 64, %mul
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %add, i32 %add14)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @fflush(%struct._IO_FILE* %9)
  store i32 0, i32* %delay, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.66, %for.body.13
  %10 = load i32, i32* %delay, align 4
  %11 = load i32, i32* %NumDelay, align 4
  %cmp18 = icmp slt i32 %10, %11
  br i1 %cmp18, label %for.body.19, label %for.end.68

for.body.19:                                      ; preds = %for.cond.17
  %12 = bitcast [8 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @DES3_init, i32 0, i32 0), i64 8, i32 1, i1 false)
  %13 = load i32, i32* %n, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %for.body.19
  %call20 = call i32 @des_set_key(%struct.des_context* %ctx, i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i32 0, i64 0, i32 0))
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body.19
  %call22 = call i32 @des3_set_2keys(%struct.des3_context* %ctx3, i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i32 0, i64 0, i32 0), i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i32 0, i64 1, i32 0))
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body.19
  %call24 = call i32 @des3_set_3keys(%struct.des3_context* %ctx3, i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i32 0, i64 0, i32 0), i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i32 0, i64 1, i32 0), i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i32 0, i64 2, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.19, %sw.bb.23, %sw.bb.21, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %sw.epilog
  %14 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %14, 10000
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %15 = load i32, i32* %n, align 4
  %cmp28 = icmp eq i32 %15, 0
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %for.body.27
  %16 = load i32, i32* %m, align 4
  %cmp30 = icmp eq i32 %16, 0
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.29
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  call void @des_encrypt(%struct.des_context* %ctx, i8* %arraydecay, i8* %arraydecay32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.then.29
  %17 = load i32, i32* %m, align 4
  %cmp34 = icmp eq i32 %17, 1
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.33
  %arraydecay36 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  call void @des_decrypt(%struct.des_context* %ctx, i8* %arraydecay36, i8* %arraydecay37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.33
  br label %if.end.49

if.else:                                          ; preds = %for.body.27
  %18 = load i32, i32* %m, align 4
  %cmp39 = icmp eq i32 %18, 0
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.else
  %arraydecay41 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %arraydecay42 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  call void @des3_encrypt(%struct.des3_context* %ctx3, i8* %arraydecay41, i8* %arraydecay42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.else
  %19 = load i32, i32* %m, align 4
  %cmp44 = icmp eq i32 %19, 1
  br i1 %cmp44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.43
  %arraydecay46 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %arraydecay47 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  call void @des3_decrypt(%struct.des3_context* %ctx3, i8* %arraydecay46, i8* %arraydecay47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.43
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %21 = load i32, i32* %m, align 4
  %cmp50 = icmp eq i32 %21, 0
  br i1 %cmp50, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end
  %arraydecay51 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %22 = load i32, i32* %n, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx52 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @DES3_enc_test, i32 0, i64 %idxprom
  %arraydecay53 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx52, i32 0, i32 0
  %call54 = call i32 @memcmp(i8* %arraydecay51, i8* %arraydecay53, i64 8) #4
  %tobool = icmp ne i32 %call54, 0
  br i1 %tobool, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end
  %23 = load i32, i32* %m, align 4
  %cmp55 = icmp eq i32 %23, 1
  br i1 %cmp55, label %land.lhs.true.56, label %if.end.65

land.lhs.true.56:                                 ; preds = %lor.lhs.false
  %arraydecay57 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i32 0, i32 0
  %24 = load i32, i32* %n, align 4
  %idxprom58 = sext i32 %24 to i64
  %arrayidx59 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @DES3_dec_test, i32 0, i64 %idxprom58
  %arraydecay60 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx59, i32 0, i32 0
  %call61 = call i32 @memcmp(i8* %arraydecay57, i8* %arraydecay60, i64 8) #4
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %land.lhs.true.56, %land.lhs.true
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %land.lhs.true.56, %lor.lhs.false
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %25 = load i32, i32* %delay, align 4
  %inc67 = add nsw i32 %25, 1
  store i32 %inc67, i32* %delay, align 4
  br label %for.cond.17

for.end.68:                                       ; preds = %for.cond.17
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.68
  %26 = load i32, i32* %n, align 4
  %inc71 = add nsw i32 %26, 1
  store i32 %inc71, i32* %n, align 4
  br label %for.cond.11

for.end.72:                                       ; preds = %for.cond.11
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.72
  %27 = load i32, i32* %m, align 4
  %inc74 = add nsw i32 %27, 1
  store i32 %inc74, i32* %m, align 4
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.75, %if.then.63
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
