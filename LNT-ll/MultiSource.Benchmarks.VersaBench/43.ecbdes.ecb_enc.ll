; ModuleID = './MultiSource.Benchmarks.VersaBench/43.ecbdes.ecb_enc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ks_struct = type { %union.anon }
%union.anon = type { [2 x i64] }

@des_SPtrans = constant [8 x [64 x i64]] [[64 x i64] [i64 34080768, i64 524288, i64 33554434, i64 34080770, i64 33554432, i64 526338, i64 524290, i64 33554434, i64 526338, i64 34080768, i64 34078720, i64 2050, i64 33556482, i64 33554432, i64 0, i64 524290, i64 524288, i64 2, i64 33556480, i64 526336, i64 34080770, i64 34078720, i64 2050, i64 33556480, i64 2, i64 2048, i64 526336, i64 34078722, i64 2048, i64 33556482, i64 34078722, i64 0, i64 0, i64 34080770, i64 33556480, i64 524290, i64 34080768, i64 524288, i64 2050, i64 33556480, i64 34078722, i64 2048, i64 526336, i64 33554434, i64 526338, i64 2, i64 33554434, i64 34078720, i64 34080770, i64 526336, i64 34078720, i64 33556482, i64 33554432, i64 2050, i64 524290, i64 0, i64 524288, i64 33554432, i64 33556482, i64 34080768, i64 2, i64 34078722, i64 2048, i64 526338], [64 x i64] [i64 1074823184, i64 0, i64 1081344, i64 1074790400, i64 1073741840, i64 32784, i64 1073774592, i64 1081344, i64 32768, i64 1074790416, i64 16, i64 1073774592, i64 1048592, i64 1074823168, i64 1074790400, i64 16, i64 1048576, i64 1073774608, i64 1074790416, i64 32768, i64 1081360, i64 1073741824, i64 0, i64 1048592, i64 1073774608, i64 1081360, i64 1074823168, i64 1073741840, i64 1073741824, i64 1048576, i64 32784, i64 1074823184, i64 1048592, i64 1074823168, i64 1073774592, i64 1081360, i64 1074823184, i64 1048592, i64 1073741840, i64 0, i64 1073741824, i64 32784, i64 1048576, i64 1074790416, i64 32768, i64 1073741824, i64 1081360, i64 1073774608, i64 1074823168, i64 32768, i64 0, i64 1073741840, i64 16, i64 1074823184, i64 1081344, i64 1074790400, i64 1074790416, i64 1048576, i64 32784, i64 1073774592, i64 1073774608, i64 16, i64 1074790400, i64 1081344], [64 x i64] [i64 67108865, i64 67371264, i64 256, i64 67109121, i64 262145, i64 67108864, i64 67109121, i64 262400, i64 67109120, i64 262144, i64 67371008, i64 1, i64 67371265, i64 257, i64 1, i64 67371009, i64 0, i64 262145, i64 67371264, i64 256, i64 257, i64 67371265, i64 262144, i64 67108865, i64 67371009, i64 67109120, i64 262401, i64 67371008, i64 262400, i64 0, i64 67108864, i64 262401, i64 67371264, i64 256, i64 1, i64 262144, i64 257, i64 262145, i64 67371008, i64 67109121, i64 0, i64 67371264, i64 262400, i64 67371009, i64 262145, i64 67108864, i64 67371265, i64 1, i64 262401, i64 67108865, i64 67108864, i64 67371265, i64 262144, i64 67109120, i64 67109121, i64 262400, i64 67109120, i64 0, i64 67371009, i64 257, i64 67108865, i64 262401, i64 256, i64 67371008], [64 x i64] [i64 4198408, i64 268439552, i64 8, i64 272633864, i64 0, i64 272629760, i64 268439560, i64 4194312, i64 272633856, i64 268435464, i64 268435456, i64 4104, i64 268435464, i64 4198408, i64 4194304, i64 268435456, i64 272629768, i64 4198400, i64 4096, i64 8, i64 4198400, i64 268439560, i64 272629760, i64 4096, i64 4104, i64 0, i64 4194312, i64 272633856, i64 268439552, i64 272629768, i64 272633864, i64 4194304, i64 272629768, i64 4104, i64 4194304, i64 268435464, i64 4198400, i64 268439552, i64 8, i64 272629760, i64 268439560, i64 0, i64 4096, i64 4194312, i64 0, i64 272629768, i64 272633856, i64 4096, i64 268435456, i64 272633864, i64 4198408, i64 4194304, i64 272633864, i64 8, i64 268439552, i64 4198408, i64 4194312, i64 4198400, i64 272629760, i64 268439560, i64 4104, i64 268435456, i64 268435464, i64 272633856], [64 x i64] [i64 134217728, i64 65536, i64 1024, i64 134284320, i64 134283296, i64 134218752, i64 66592, i64 134283264, i64 65536, i64 32, i64 134217760, i64 66560, i64 134218784, i64 134283296, i64 134284288, i64 0, i64 66560, i64 134217728, i64 65568, i64 1056, i64 134218752, i64 66592, i64 0, i64 134217760, i64 32, i64 134218784, i64 134284320, i64 65568, i64 134283264, i64 1024, i64 1056, i64 134284288, i64 134284288, i64 134218784, i64 65568, i64 134283264, i64 65536, i64 32, i64 134217760, i64 134218752, i64 134217728, i64 66560, i64 134284320, i64 0, i64 66592, i64 134217728, i64 1024, i64 65568, i64 134218784, i64 1024, i64 0, i64 134284320, i64 134283296, i64 134284288, i64 1056, i64 65536, i64 66560, i64 134283296, i64 134218752, i64 1056, i64 32, i64 66592, i64 134283264, i64 134217760], [64 x i64] [i64 2147483712, i64 2097216, i64 0, i64 2149588992, i64 2097216, i64 8192, i64 2147491904, i64 2097152, i64 8256, i64 2149589056, i64 2105344, i64 2147483648, i64 2147491840, i64 2147483712, i64 2149580800, i64 2105408, i64 2097152, i64 2147491904, i64 2149580864, i64 0, i64 8192, i64 64, i64 2149588992, i64 2149580864, i64 2149589056, i64 2149580800, i64 2147483648, i64 8256, i64 64, i64 2105344, i64 2105408, i64 2147491840, i64 8256, i64 2147483648, i64 2147491840, i64 2105408, i64 2149588992, i64 2097216, i64 0, i64 2147491840, i64 2147483648, i64 8192, i64 2149580864, i64 2097152, i64 2097216, i64 2149589056, i64 2105344, i64 64, i64 2149589056, i64 2105344, i64 2097152, i64 2147491904, i64 2147483712, i64 2149580800, i64 2105408, i64 0, i64 8192, i64 2147483712, i64 2147491904, i64 2149588992, i64 2149580800, i64 8256, i64 64, i64 2149580864], [64 x i64] [i64 16384, i64 512, i64 16777728, i64 16777220, i64 16794116, i64 16388, i64 16896, i64 0, i64 16777216, i64 16777732, i64 516, i64 16793600, i64 4, i64 16794112, i64 16793600, i64 516, i64 16777732, i64 16384, i64 16388, i64 16794116, i64 0, i64 16777728, i64 16777220, i64 16896, i64 16793604, i64 16900, i64 16794112, i64 4, i64 16900, i64 16793604, i64 512, i64 16777216, i64 16900, i64 16793600, i64 16793604, i64 516, i64 16384, i64 512, i64 16777216, i64 16793604, i64 16777732, i64 16900, i64 16896, i64 0, i64 512, i64 16777220, i64 4, i64 16777728, i64 0, i64 16777732, i64 16777728, i64 16896, i64 516, i64 16384, i64 16794116, i64 16777216, i64 16794112, i64 4, i64 16388, i64 16794116, i64 16777220, i64 16794112, i64 16793600, i64 16388], [64 x i64] [i64 545259648, i64 545390592, i64 131200, i64 0, i64 537001984, i64 8388736, i64 545259520, i64 545390720, i64 128, i64 536870912, i64 8519680, i64 131200, i64 8519808, i64 537002112, i64 536871040, i64 545259520, i64 131072, i64 8519808, i64 8388736, i64 537001984, i64 545390720, i64 536871040, i64 0, i64 8519680, i64 536870912, i64 8388608, i64 537002112, i64 545259648, i64 8388608, i64 131072, i64 545390592, i64 128, i64 8388608, i64 131072, i64 536871040, i64 545390720, i64 131200, i64 536870912, i64 0, i64 8519680, i64 545259648, i64 537002112, i64 537001984, i64 8388736, i64 545390592, i64 128, i64 8388736, i64 537001984, i64 545390720, i64 8388608, i64 545259520, i64 536871040, i64 8519680, i64 131200, i64 537002112, i64 545259520, i64 128, i64 545390592, i64 8519808, i64 0, i64 536870912, i64 545259648, i64 131072, i64 8519808]], align 16
@.str = private unnamed_addr constant [34 x i8] c"libdes v 3.24 - 20-Apr-1996 - eay\00", align 1
@libdes_version = global i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"DES part of SSLeay 0.6.6 06-Dec-1996\00", align 1
@DES_version = global i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), align 8
@des_options.init = internal global i32 1, align 4
@des_options.buf = internal global [32 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cisc\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"des(%s,%s,%s,%s)\00", align 1

; Function Attrs: nounwind uwtable
define i8* @des_options() #0 {
entry:
  %ptr = alloca i8*, align 8
  %unroll = alloca i8*, align 8
  %risc = alloca i8*, align 8
  %size = alloca i8*, align 8
  %0 = load i32, i32* @des_options.init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @des_options.init, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %ptr, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %risc, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %unroll, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8** %size, align 8
  %1 = load i8*, i8** %ptr, align 8
  %2 = load i8*, i8** %risc, align 8
  %3 = load i8*, i8** %unroll, align 8
  %4 = load i8*, i8** %size, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @des_options.buf, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* %1, i8* %2, i8* %3, i8* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @des_options.buf, i32 0, i32 0)
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @des_ecb_encrypt([8 x i8]* %input, [8 x i8]* %output, %struct.des_ks_struct* %ks, i32 %encrypt) #0 {
entry:
  %input.addr = alloca [8 x i8]*, align 8
  %output.addr = alloca [8 x i8]*, align 8
  %ks.addr = alloca %struct.des_ks_struct*, align 8
  %encrypt.addr = alloca i32, align 4
  %l = alloca i64, align 8
  %in = alloca i8*, align 8
  %out = alloca i8*, align 8
  %ll = alloca [2 x i64], align 16
  store [8 x i8]* %input, [8 x i8]** %input.addr, align 8
  store [8 x i8]* %output, [8 x i8]** %output.addr, align 8
  store %struct.des_ks_struct* %ks, %struct.des_ks_struct** %ks.addr, align 8
  store i32 %encrypt, i32* %encrypt.addr, align 4
  %0 = load [8 x i8]*, [8 x i8]** %input.addr, align 8
  %1 = bitcast [8 x i8]* %0 to i8*
  store i8* %1, i8** %in, align 8
  %2 = load [8 x i8]*, [8 x i8]** %output.addr, align 8
  %3 = bitcast [8 x i8]* %2 to i8*
  store i8* %3, i8** %out, align 8
  %4 = load i8*, i8** %in, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %in, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i64
  store i64 %conv, i64* %l, align 8
  %6 = load i8*, i8** %in, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr1, i8** %in, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = zext i8 %7 to i64
  %shl = shl i64 %conv2, 8
  %8 = load i64, i64* %l, align 8
  %or = or i64 %8, %shl
  store i64 %or, i64* %l, align 8
  %9 = load i8*, i8** %in, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr3, i8** %in, align 8
  %10 = load i8, i8* %9, align 1
  %conv4 = zext i8 %10 to i64
  %shl5 = shl i64 %conv4, 16
  %11 = load i64, i64* %l, align 8
  %or6 = or i64 %11, %shl5
  store i64 %or6, i64* %l, align 8
  %12 = load i8*, i8** %in, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr7, i8** %in, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = zext i8 %13 to i64
  %shl9 = shl i64 %conv8, 24
  %14 = load i64, i64* %l, align 8
  %or10 = or i64 %14, %shl9
  store i64 %or10, i64* %l, align 8
  %15 = load i64, i64* %l, align 8
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ll, i32 0, i64 0
  store i64 %15, i64* %arrayidx, align 8
  %16 = load i8*, i8** %in, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr11, i8** %in, align 8
  %17 = load i8, i8* %16, align 1
  %conv12 = zext i8 %17 to i64
  store i64 %conv12, i64* %l, align 8
  %18 = load i8*, i8** %in, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr13, i8** %in, align 8
  %19 = load i8, i8* %18, align 1
  %conv14 = zext i8 %19 to i64
  %shl15 = shl i64 %conv14, 8
  %20 = load i64, i64* %l, align 8
  %or16 = or i64 %20, %shl15
  store i64 %or16, i64* %l, align 8
  %21 = load i8*, i8** %in, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr17, i8** %in, align 8
  %22 = load i8, i8* %21, align 1
  %conv18 = zext i8 %22 to i64
  %shl19 = shl i64 %conv18, 16
  %23 = load i64, i64* %l, align 8
  %or20 = or i64 %23, %shl19
  store i64 %or20, i64* %l, align 8
  %24 = load i8*, i8** %in, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr21, i8** %in, align 8
  %25 = load i8, i8* %24, align 1
  %conv22 = zext i8 %25 to i64
  %shl23 = shl i64 %conv22, 24
  %26 = load i64, i64* %l, align 8
  %or24 = or i64 %26, %shl23
  store i64 %or24, i64* %l, align 8
  %27 = load i64, i64* %l, align 8
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %ll, i32 0, i64 1
  store i64 %27, i64* %arrayidx25, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ll, i32 0, i32 0
  %28 = load %struct.des_ks_struct*, %struct.des_ks_struct** %ks.addr, align 8
  %29 = load i32, i32* %encrypt.addr, align 4
  call void @des_encrypt(i64* %arraydecay, %struct.des_ks_struct* %28, i32 %29)
  %arrayidx26 = getelementptr inbounds [2 x i64], [2 x i64]* %ll, i32 0, i64 0
  %30 = load i64, i64* %arrayidx26, align 8
  store i64 %30, i64* %l, align 8
  %31 = load i64, i64* %l, align 8
  %and = and i64 %31, 255
  %conv27 = trunc i64 %and to i8
  %32 = load i8*, i8** %out, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr28, i8** %out, align 8
  store i8 %conv27, i8* %32, align 1
  %33 = load i64, i64* %l, align 8
  %shr = lshr i64 %33, 8
  %and29 = and i64 %shr, 255
  %conv30 = trunc i64 %and29 to i8
  %34 = load i8*, i8** %out, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr31, i8** %out, align 8
  store i8 %conv30, i8* %34, align 1
  %35 = load i64, i64* %l, align 8
  %shr32 = lshr i64 %35, 16
  %and33 = and i64 %shr32, 255
  %conv34 = trunc i64 %and33 to i8
  %36 = load i8*, i8** %out, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr35, i8** %out, align 8
  store i8 %conv34, i8* %36, align 1
  %37 = load i64, i64* %l, align 8
  %shr36 = lshr i64 %37, 24
  %and37 = and i64 %shr36, 255
  %conv38 = trunc i64 %and37 to i8
  %38 = load i8*, i8** %out, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr39, i8** %out, align 8
  store i8 %conv38, i8* %38, align 1
  %arrayidx40 = getelementptr inbounds [2 x i64], [2 x i64]* %ll, i32 0, i64 1
  %39 = load i64, i64* %arrayidx40, align 8
  store i64 %39, i64* %l, align 8
  %40 = load i64, i64* %l, align 8
  %and41 = and i64 %40, 255
  %conv42 = trunc i64 %and41 to i8
  %41 = load i8*, i8** %out, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr43, i8** %out, align 8
  store i8 %conv42, i8* %41, align 1
  %42 = load i64, i64* %l, align 8
  %shr44 = lshr i64 %42, 8
  %and45 = and i64 %shr44, 255
  %conv46 = trunc i64 %and45 to i8
  %43 = load i8*, i8** %out, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr47, i8** %out, align 8
  store i8 %conv46, i8* %43, align 1
  %44 = load i64, i64* %l, align 8
  %shr48 = lshr i64 %44, 16
  %and49 = and i64 %shr48, 255
  %conv50 = trunc i64 %and49 to i8
  %45 = load i8*, i8** %out, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr51, i8** %out, align 8
  store i8 %conv50, i8* %45, align 1
  %46 = load i64, i64* %l, align 8
  %shr52 = lshr i64 %46, 24
  %and53 = and i64 %shr52, 255
  %conv54 = trunc i64 %and53 to i8
  %47 = load i8*, i8** %out, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr55, i8** %out, align 8
  store i8 %conv54, i8* %47, align 1
  %arrayidx56 = getelementptr inbounds [2 x i64], [2 x i64]* %ll, i32 0, i64 1
  store i64 0, i64* %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds [2 x i64], [2 x i64]* %ll, i32 0, i64 0
  store i64 0, i64* %arrayidx57, align 8
  store i64 0, i64* %l, align 8
  ret void
}

declare void @des_encrypt(i64*, %struct.des_ks_struct*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
