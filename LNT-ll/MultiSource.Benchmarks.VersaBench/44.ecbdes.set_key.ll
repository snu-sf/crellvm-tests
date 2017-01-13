; ModuleID = './MultiSource.Benchmarks.VersaBench/44.ecbdes.set_key.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ks_struct = type { %union.anon }
%union.anon = type { [2 x i64] }

@des_check_key = global i32 0, align 4
@odd_parity = internal constant [256 x i8] c"\01\01\02\02\04\04\07\07\08\08\0B\0B\0D\0D\0E\0E\10\10\13\13\15\15\16\16\19\19\1A\1A\1C\1C\1F\1F  ##%%&&))**,,//1122447788;;==>>@@CCEEFFIIJJLLOOQQRRTTWWXX[[]]^^aabbddgghhkkmmnnppssuuvvyyzz||\7F\7F\80\80\83\83\85\85\86\86\89\89\8A\8A\8C\8C\8F\8F\91\91\92\92\94\94\97\97\98\98\9B\9B\9D\9D\9E\9E\A1\A1\A2\A2\A4\A4\A7\A7\A8\A8\AB\AB\AD\AD\AE\AE\B0\B0\B3\B3\B5\B5\B6\B6\B9\B9\BA\BA\BC\BC\BF\BF\C1\C1\C2\C2\C4\C4\C7\C7\C8\C8\CB\CB\CD\CD\CE\CE\D0\D0\D3\D3\D5\D5\D6\D6\D9\D9\DA\DA\DC\DC\DF\DF\E0\E0\E3\E3\E5\E5\E6\E6\E9\E9\EA\EA\EC\EC\EF\EF\F1\F1\F2\F2\F4\F4\F7\F7\F8\F8\FB\FB\FD\FD\FE\FE", align 16
@weak_keys = internal global [16 x [8 x i8]] [[8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE", [8 x i8] c"\1F\1F\1F\1F\1F\1F\1F\1F", [8 x i8] c"\E0\E0\E0\E0\E0\E0\E0\E0", [8 x i8] c"\01\FE\01\FE\01\FE\01\FE", [8 x i8] c"\FE\01\FE\01\FE\01\FE\01", [8 x i8] c"\1F\E0\1F\E0\0E\F1\0E\F1", [8 x i8] c"\E0\1F\E0\1F\F1\0E\F1\0E", [8 x i8] c"\01\E0\01\E0\01\F1\01\F1", [8 x i8] c"\E0\01\E0\01\F1\01\F1\01", [8 x i8] c"\1F\FE\1F\FE\0E\FE\0E\FE", [8 x i8] c"\FE\1F\FE\1F\FE\0E\FE\0E", [8 x i8] c"\01\1F\01\1F\01\0E\01\0E", [8 x i8] c"\1F\01\1F\01\0E\01\0E\01", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] c"\FE\E0\FE\E0\FE\F1\FE\F1"], align 16
@des_set_key.shifts2 = internal global [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], align 16
@des_skb = internal constant [8 x [64 x i64]] [[64 x i64] [i64 0, i64 16, i64 536870912, i64 536870928, i64 65536, i64 65552, i64 536936448, i64 536936464, i64 2048, i64 2064, i64 536872960, i64 536872976, i64 67584, i64 67600, i64 536938496, i64 536938512, i64 32, i64 48, i64 536870944, i64 536870960, i64 65568, i64 65584, i64 536936480, i64 536936496, i64 2080, i64 2096, i64 536872992, i64 536873008, i64 67616, i64 67632, i64 536938528, i64 536938544, i64 524288, i64 524304, i64 537395200, i64 537395216, i64 589824, i64 589840, i64 537460736, i64 537460752, i64 526336, i64 526352, i64 537397248, i64 537397264, i64 591872, i64 591888, i64 537462784, i64 537462800, i64 524320, i64 524336, i64 537395232, i64 537395248, i64 589856, i64 589872, i64 537460768, i64 537460784, i64 526368, i64 526384, i64 537397280, i64 537397296, i64 591904, i64 591920, i64 537462816, i64 537462832], [64 x i64] [i64 0, i64 33554432, i64 8192, i64 33562624, i64 2097152, i64 35651584, i64 2105344, i64 35659776, i64 4, i64 33554436, i64 8196, i64 33562628, i64 2097156, i64 35651588, i64 2105348, i64 35659780, i64 1024, i64 33555456, i64 9216, i64 33563648, i64 2098176, i64 35652608, i64 2106368, i64 35660800, i64 1028, i64 33555460, i64 9220, i64 33563652, i64 2098180, i64 35652612, i64 2106372, i64 35660804, i64 268435456, i64 301989888, i64 268443648, i64 301998080, i64 270532608, i64 304087040, i64 270540800, i64 304095232, i64 268435460, i64 301989892, i64 268443652, i64 301998084, i64 270532612, i64 304087044, i64 270540804, i64 304095236, i64 268436480, i64 301990912, i64 268444672, i64 301999104, i64 270533632, i64 304088064, i64 270541824, i64 304096256, i64 268436484, i64 301990916, i64 268444676, i64 301999108, i64 270533636, i64 304088068, i64 270541828, i64 304096260], [64 x i64] [i64 0, i64 1, i64 262144, i64 262145, i64 16777216, i64 16777217, i64 17039360, i64 17039361, i64 2, i64 3, i64 262146, i64 262147, i64 16777218, i64 16777219, i64 17039362, i64 17039363, i64 512, i64 513, i64 262656, i64 262657, i64 16777728, i64 16777729, i64 17039872, i64 17039873, i64 514, i64 515, i64 262658, i64 262659, i64 16777730, i64 16777731, i64 17039874, i64 17039875, i64 134217728, i64 134217729, i64 134479872, i64 134479873, i64 150994944, i64 150994945, i64 151257088, i64 151257089, i64 134217730, i64 134217731, i64 134479874, i64 134479875, i64 150994946, i64 150994947, i64 151257090, i64 151257091, i64 134218240, i64 134218241, i64 134480384, i64 134480385, i64 150995456, i64 150995457, i64 151257600, i64 151257601, i64 134218242, i64 134218243, i64 134480386, i64 134480387, i64 150995458, i64 150995459, i64 151257602, i64 151257603], [64 x i64] [i64 0, i64 1048576, i64 256, i64 1048832, i64 8, i64 1048584, i64 264, i64 1048840, i64 4096, i64 1052672, i64 4352, i64 1052928, i64 4104, i64 1052680, i64 4360, i64 1052936, i64 67108864, i64 68157440, i64 67109120, i64 68157696, i64 67108872, i64 68157448, i64 67109128, i64 68157704, i64 67112960, i64 68161536, i64 67113216, i64 68161792, i64 67112968, i64 68161544, i64 67113224, i64 68161800, i64 131072, i64 1179648, i64 131328, i64 1179904, i64 131080, i64 1179656, i64 131336, i64 1179912, i64 135168, i64 1183744, i64 135424, i64 1184000, i64 135176, i64 1183752, i64 135432, i64 1184008, i64 67239936, i64 68288512, i64 67240192, i64 68288768, i64 67239944, i64 68288520, i64 67240200, i64 68288776, i64 67244032, i64 68292608, i64 67244288, i64 68292864, i64 67244040, i64 68292616, i64 67244296, i64 68292872], [64 x i64] [i64 0, i64 268435456, i64 65536, i64 268500992, i64 4, i64 268435460, i64 65540, i64 268500996, i64 536870912, i64 805306368, i64 536936448, i64 805371904, i64 536870916, i64 805306372, i64 536936452, i64 805371908, i64 1048576, i64 269484032, i64 1114112, i64 269549568, i64 1048580, i64 269484036, i64 1114116, i64 269549572, i64 537919488, i64 806354944, i64 537985024, i64 806420480, i64 537919492, i64 806354948, i64 537985028, i64 806420484, i64 4096, i64 268439552, i64 69632, i64 268505088, i64 4100, i64 268439556, i64 69636, i64 268505092, i64 536875008, i64 805310464, i64 536940544, i64 805376000, i64 536875012, i64 805310468, i64 536940548, i64 805376004, i64 1052672, i64 269488128, i64 1118208, i64 269553664, i64 1052676, i64 269488132, i64 1118212, i64 269553668, i64 537923584, i64 806359040, i64 537989120, i64 806424576, i64 537923588, i64 806359044, i64 537989124, i64 806424580], [64 x i64] [i64 0, i64 134217728, i64 8, i64 134217736, i64 1024, i64 134218752, i64 1032, i64 134218760, i64 131072, i64 134348800, i64 131080, i64 134348808, i64 132096, i64 134349824, i64 132104, i64 134349832, i64 1, i64 134217729, i64 9, i64 134217737, i64 1025, i64 134218753, i64 1033, i64 134218761, i64 131073, i64 134348801, i64 131081, i64 134348809, i64 132097, i64 134349825, i64 132105, i64 134349833, i64 33554432, i64 167772160, i64 33554440, i64 167772168, i64 33555456, i64 167773184, i64 33555464, i64 167773192, i64 33685504, i64 167903232, i64 33685512, i64 167903240, i64 33686528, i64 167904256, i64 33686536, i64 167904264, i64 33554433, i64 167772161, i64 33554441, i64 167772169, i64 33555457, i64 167773185, i64 33555465, i64 167773193, i64 33685505, i64 167903233, i64 33685513, i64 167903241, i64 33686529, i64 167904257, i64 33686537, i64 167904265], [64 x i64] [i64 0, i64 256, i64 524288, i64 524544, i64 16777216, i64 16777472, i64 17301504, i64 17301760, i64 16, i64 272, i64 524304, i64 524560, i64 16777232, i64 16777488, i64 17301520, i64 17301776, i64 2097152, i64 2097408, i64 2621440, i64 2621696, i64 18874368, i64 18874624, i64 19398656, i64 19398912, i64 2097168, i64 2097424, i64 2621456, i64 2621712, i64 18874384, i64 18874640, i64 19398672, i64 19398928, i64 512, i64 768, i64 524800, i64 525056, i64 16777728, i64 16777984, i64 17302016, i64 17302272, i64 528, i64 784, i64 524816, i64 525072, i64 16777744, i64 16778000, i64 17302032, i64 17302288, i64 2097664, i64 2097920, i64 2621952, i64 2622208, i64 18874880, i64 18875136, i64 19399168, i64 19399424, i64 2097680, i64 2097936, i64 2621968, i64 2622224, i64 18874896, i64 18875152, i64 19399184, i64 19399440], [64 x i64] [i64 0, i64 67108864, i64 262144, i64 67371008, i64 2, i64 67108866, i64 262146, i64 67371010, i64 8192, i64 67117056, i64 270336, i64 67379200, i64 8194, i64 67117058, i64 270338, i64 67379202, i64 32, i64 67108896, i64 262176, i64 67371040, i64 34, i64 67108898, i64 262178, i64 67371042, i64 8224, i64 67117088, i64 270368, i64 67379232, i64 8226, i64 67117090, i64 270370, i64 67379234, i64 2048, i64 67110912, i64 264192, i64 67373056, i64 2050, i64 67110914, i64 264194, i64 67373058, i64 10240, i64 67119104, i64 272384, i64 67381248, i64 10242, i64 67119106, i64 272386, i64 67381250, i64 2080, i64 67110944, i64 264224, i64 67373088, i64 2082, i64 67110946, i64 264226, i64 67373090, i64 10272, i64 67119136, i64 272416, i64 67381280, i64 10274, i64 67119138, i64 272418, i64 67381282]], align 16

; Function Attrs: nounwind uwtable
define void @des_set_odd_parity([8 x i8]* %key) #0 {
entry:
  %key.addr = alloca [8 x i8]*, align 8
  %i = alloca i32, align 4
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %2, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %idxprom2 = zext i8 %3 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i32 0, i64 %idxprom4
  store i8 %4, i8* %arrayidx5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @des_is_weak_key([8 x i8]* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca [8 x i8]*, align 8
  %i = alloca i32, align 4
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i32 0, i32 0
  %2 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %3 = bitcast [8 x i8]* %2 to i8*
  %call = call i32 @memcmp(i8* %arraydecay, i8* %3, i64 8) #2
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @des_set_key([8 x i8]* %key, %struct.des_ks_struct* %schedule) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca [8 x i8]*, align 8
  %schedule.addr = alloca %struct.des_ks_struct*, align 8
  %c = alloca i64, align 8
  %d = alloca i64, align 8
  %t = alloca i64, align 8
  %s = alloca i64, align 8
  %t2 = alloca i64, align 8
  %in = alloca i8*, align 8
  %k = alloca i64*, align 8
  %i = alloca i32, align 4
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store %struct.des_ks_struct* %schedule, %struct.des_ks_struct** %schedule.addr, align 8
  %0 = load i32, i32* @des_check_key, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %call = call i32 @check_parity([8 x i8]* %1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %call3 = call i32 @des_is_weak_key([8 x i8]* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %3 = load %struct.des_ks_struct*, %struct.des_ks_struct** %schedule.addr, align 8
  %4 = bitcast %struct.des_ks_struct* %3 to i64*
  store i64* %4, i64** %k, align 8
  %5 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %6 = bitcast [8 x i8]* %5 to i8*
  store i8* %6, i8** %in, align 8
  %7 = load i8*, i8** %in, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %in, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i64
  store i64 %conv, i64* %c, align 8
  %9 = load i8*, i8** %in, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %in, align 8
  %10 = load i8, i8* %9, align 1
  %conv9 = zext i8 %10 to i64
  %shl = shl i64 %conv9, 8
  %11 = load i64, i64* %c, align 8
  %or = or i64 %11, %shl
  store i64 %or, i64* %c, align 8
  %12 = load i8*, i8** %in, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %in, align 8
  %13 = load i8, i8* %12, align 1
  %conv11 = zext i8 %13 to i64
  %shl12 = shl i64 %conv11, 16
  %14 = load i64, i64* %c, align 8
  %or13 = or i64 %14, %shl12
  store i64 %or13, i64* %c, align 8
  %15 = load i8*, i8** %in, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %in, align 8
  %16 = load i8, i8* %15, align 1
  %conv15 = zext i8 %16 to i64
  %shl16 = shl i64 %conv15, 24
  %17 = load i64, i64* %c, align 8
  %or17 = or i64 %17, %shl16
  store i64 %or17, i64* %c, align 8
  %18 = load i8*, i8** %in, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr18, i8** %in, align 8
  %19 = load i8, i8* %18, align 1
  %conv19 = zext i8 %19 to i64
  store i64 %conv19, i64* %d, align 8
  %20 = load i8*, i8** %in, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr20, i8** %in, align 8
  %21 = load i8, i8* %20, align 1
  %conv21 = zext i8 %21 to i64
  %shl22 = shl i64 %conv21, 8
  %22 = load i64, i64* %d, align 8
  %or23 = or i64 %22, %shl22
  store i64 %or23, i64* %d, align 8
  %23 = load i8*, i8** %in, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr24, i8** %in, align 8
  %24 = load i8, i8* %23, align 1
  %conv25 = zext i8 %24 to i64
  %shl26 = shl i64 %conv25, 16
  %25 = load i64, i64* %d, align 8
  %or27 = or i64 %25, %shl26
  store i64 %or27, i64* %d, align 8
  %26 = load i8*, i8** %in, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr28, i8** %in, align 8
  %27 = load i8, i8* %26, align 1
  %conv29 = zext i8 %27 to i64
  %shl30 = shl i64 %conv29, 24
  %28 = load i64, i64* %d, align 8
  %or31 = or i64 %28, %shl30
  store i64 %or31, i64* %d, align 8
  %29 = load i64, i64* %d, align 8
  %shr = lshr i64 %29, 4
  %30 = load i64, i64* %c, align 8
  %xor = xor i64 %shr, %30
  %and = and i64 %xor, 252645135
  store i64 %and, i64* %t, align 8
  %31 = load i64, i64* %t, align 8
  %32 = load i64, i64* %c, align 8
  %xor32 = xor i64 %32, %31
  store i64 %xor32, i64* %c, align 8
  %33 = load i64, i64* %t, align 8
  %shl33 = shl i64 %33, 4
  %34 = load i64, i64* %d, align 8
  %xor34 = xor i64 %34, %shl33
  store i64 %xor34, i64* %d, align 8
  %35 = load i64, i64* %c, align 8
  %shl35 = shl i64 %35, 18
  %36 = load i64, i64* %c, align 8
  %xor36 = xor i64 %shl35, %36
  %and37 = and i64 %xor36, 3435921408
  store i64 %and37, i64* %t, align 8
  %37 = load i64, i64* %c, align 8
  %38 = load i64, i64* %t, align 8
  %xor38 = xor i64 %37, %38
  %39 = load i64, i64* %t, align 8
  %shr39 = lshr i64 %39, 18
  %xor40 = xor i64 %xor38, %shr39
  store i64 %xor40, i64* %c, align 8
  %40 = load i64, i64* %d, align 8
  %shl41 = shl i64 %40, 18
  %41 = load i64, i64* %d, align 8
  %xor42 = xor i64 %shl41, %41
  %and43 = and i64 %xor42, 3435921408
  store i64 %and43, i64* %t, align 8
  %42 = load i64, i64* %d, align 8
  %43 = load i64, i64* %t, align 8
  %xor44 = xor i64 %42, %43
  %44 = load i64, i64* %t, align 8
  %shr45 = lshr i64 %44, 18
  %xor46 = xor i64 %xor44, %shr45
  store i64 %xor46, i64* %d, align 8
  %45 = load i64, i64* %d, align 8
  %shr47 = lshr i64 %45, 1
  %46 = load i64, i64* %c, align 8
  %xor48 = xor i64 %shr47, %46
  %and49 = and i64 %xor48, 1431655765
  store i64 %and49, i64* %t, align 8
  %47 = load i64, i64* %t, align 8
  %48 = load i64, i64* %c, align 8
  %xor50 = xor i64 %48, %47
  store i64 %xor50, i64* %c, align 8
  %49 = load i64, i64* %t, align 8
  %shl51 = shl i64 %49, 1
  %50 = load i64, i64* %d, align 8
  %xor52 = xor i64 %50, %shl51
  store i64 %xor52, i64* %d, align 8
  %51 = load i64, i64* %c, align 8
  %shr53 = lshr i64 %51, 8
  %52 = load i64, i64* %d, align 8
  %xor54 = xor i64 %shr53, %52
  %and55 = and i64 %xor54, 16711935
  store i64 %and55, i64* %t, align 8
  %53 = load i64, i64* %t, align 8
  %54 = load i64, i64* %d, align 8
  %xor56 = xor i64 %54, %53
  store i64 %xor56, i64* %d, align 8
  %55 = load i64, i64* %t, align 8
  %shl57 = shl i64 %55, 8
  %56 = load i64, i64* %c, align 8
  %xor58 = xor i64 %56, %shl57
  store i64 %xor58, i64* %c, align 8
  %57 = load i64, i64* %d, align 8
  %shr59 = lshr i64 %57, 1
  %58 = load i64, i64* %c, align 8
  %xor60 = xor i64 %shr59, %58
  %and61 = and i64 %xor60, 1431655765
  store i64 %and61, i64* %t, align 8
  %59 = load i64, i64* %t, align 8
  %60 = load i64, i64* %c, align 8
  %xor62 = xor i64 %60, %59
  store i64 %xor62, i64* %c, align 8
  %61 = load i64, i64* %t, align 8
  %shl63 = shl i64 %61, 1
  %62 = load i64, i64* %d, align 8
  %xor64 = xor i64 %62, %shl63
  store i64 %xor64, i64* %d, align 8
  %63 = load i64, i64* %d, align 8
  %and65 = and i64 %63, 255
  %shl66 = shl i64 %and65, 16
  %64 = load i64, i64* %d, align 8
  %and67 = and i64 %64, 65280
  %or68 = or i64 %shl66, %and67
  %65 = load i64, i64* %d, align 8
  %and69 = and i64 %65, 16711680
  %shr70 = lshr i64 %and69, 16
  %or71 = or i64 %or68, %shr70
  %66 = load i64, i64* %c, align 8
  %and72 = and i64 %66, 4026531840
  %shr73 = lshr i64 %and72, 4
  %or74 = or i64 %or71, %shr73
  store i64 %or74, i64* %d, align 8
  %67 = load i64, i64* %c, align 8
  %and75 = and i64 %67, 268435455
  store i64 %and75, i64* %c, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %68 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %68, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32, i32* %i, align 4
  %idxprom = sext i32 %69 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @des_set_key.shifts2, i32 0, i64 %idxprom
  %70 = load i32, i32* %arrayidx, align 4
  %tobool77 = icmp ne i32 %70, 0
  br i1 %tobool77, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %for.body
  %71 = load i64, i64* %c, align 8
  %shr79 = lshr i64 %71, 2
  %72 = load i64, i64* %c, align 8
  %shl80 = shl i64 %72, 26
  %or81 = or i64 %shr79, %shl80
  store i64 %or81, i64* %c, align 8
  %73 = load i64, i64* %d, align 8
  %shr82 = lshr i64 %73, 2
  %74 = load i64, i64* %d, align 8
  %shl83 = shl i64 %74, 26
  %or84 = or i64 %shr82, %shl83
  store i64 %or84, i64* %d, align 8
  br label %if.end.91

if.else:                                          ; preds = %for.body
  %75 = load i64, i64* %c, align 8
  %shr85 = lshr i64 %75, 1
  %76 = load i64, i64* %c, align 8
  %shl86 = shl i64 %76, 27
  %or87 = or i64 %shr85, %shl86
  store i64 %or87, i64* %c, align 8
  %77 = load i64, i64* %d, align 8
  %shr88 = lshr i64 %77, 1
  %78 = load i64, i64* %d, align 8
  %shl89 = shl i64 %78, 27
  %or90 = or i64 %shr88, %shl89
  store i64 %or90, i64* %d, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else, %if.then.78
  %79 = load i64, i64* %c, align 8
  %and92 = and i64 %79, 268435455
  store i64 %and92, i64* %c, align 8
  %80 = load i64, i64* %d, align 8
  %and93 = and i64 %80, 268435455
  store i64 %and93, i64* %d, align 8
  %81 = load i64, i64* %c, align 8
  %and94 = and i64 %81, 63
  %arrayidx95 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i32 0, i64 0), i32 0, i64 %and94
  %82 = load i64, i64* %arrayidx95, align 8
  %83 = load i64, i64* %c, align 8
  %shr96 = lshr i64 %83, 6
  %and97 = and i64 %shr96, 3
  %84 = load i64, i64* %c, align 8
  %shr98 = lshr i64 %84, 7
  %and99 = and i64 %shr98, 60
  %or100 = or i64 %and97, %and99
  %arrayidx101 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i32 0, i64 1), i32 0, i64 %or100
  %85 = load i64, i64* %arrayidx101, align 8
  %or102 = or i64 %82, %85
  %86 = load i64, i64* %c, align 8
  %shr103 = lshr i64 %86, 13
  %and104 = and i64 %shr103, 15
  %87 = load i64, i64* %c, align 8
  %shr105 = lshr i64 %87, 14
  %and106 = and i64 %shr105, 48
  %or107 = or i64 %and104, %and106
  %arrayidx108 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i32 0, i64 2), i32 0, i64 %or107
  %88 = load i64, i64* %arrayidx108, align 8
  %or109 = or i64 %or102, %88
  %89 = load i64, i64* %c, align 8
  %shr110 = lshr i64 %89, 20
  %and111 = and i64 %shr110, 1
  %90 = load i64, i64* %c, align 8
  %shr112 = lshr i64 %90, 21
  %and113 = and i64 %shr112, 6
  %or114 = or i64 %and111, %and113
  %91 = load i64, i64* %c, align 8
  %shr115 = lshr i64 %91, 22
  %and116 = and i64 %shr115, 56
  %or117 = or i64 %or114, %and116
  %arrayidx118 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i32 0, i64 3), i32 0, i64 %or117
  %92 = load i64, i64* %arrayidx118, align 8
  %or119 = or i64 %or109, %92
  store i64 %or119, i64* %s, align 8
  %93 = load i64, i64* %d, align 8
  %and120 = and i64 %93, 63
  %arrayidx121 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i32 0, i64 4), i32 0, i64 %and120
  %94 = load i64, i64* %arrayidx121, align 8
  %95 = load i64, i64* %d, align 8
  %shr122 = lshr i64 %95, 7
  %and123 = and i64 %shr122, 3
  %96 = load i64, i64* %d, align 8
  %shr124 = lshr i64 %96, 8
  %and125 = and i64 %shr124, 60
  %or126 = or i64 %and123, %and125
  %arrayidx127 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i32 0, i64 5), i32 0, i64 %or126
  %97 = load i64, i64* %arrayidx127, align 8
  %or128 = or i64 %94, %97
  %98 = load i64, i64* %d, align 8
  %shr129 = lshr i64 %98, 15
  %and130 = and i64 %shr129, 63
  %arrayidx131 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i32 0, i64 6), i32 0, i64 %and130
  %99 = load i64, i64* %arrayidx131, align 8
  %or132 = or i64 %or128, %99
  %100 = load i64, i64* %d, align 8
  %shr133 = lshr i64 %100, 21
  %and134 = and i64 %shr133, 15
  %101 = load i64, i64* %d, align 8
  %shr135 = lshr i64 %101, 22
  %and136 = and i64 %shr135, 48
  %or137 = or i64 %and134, %and136
  %arrayidx138 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i32 0, i64 7), i32 0, i64 %or137
  %102 = load i64, i64* %arrayidx138, align 8
  %or139 = or i64 %or132, %102
  store i64 %or139, i64* %t, align 8
  %103 = load i64, i64* %t, align 8
  %shl140 = shl i64 %103, 16
  %104 = load i64, i64* %s, align 8
  %and141 = and i64 %104, 65535
  %or142 = or i64 %shl140, %and141
  %and143 = and i64 %or142, 4294967295
  store i64 %and143, i64* %t2, align 8
  %105 = load i64, i64* %t2, align 8
  %shl144 = shl i64 %105, 2
  %106 = load i64, i64* %t2, align 8
  %shr145 = lshr i64 %106, 30
  %or146 = or i64 %shl144, %shr145
  %and147 = and i64 %or146, 4294967295
  %107 = load i64*, i64** %k, align 8
  %incdec.ptr148 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %incdec.ptr148, i64** %k, align 8
  store i64 %and147, i64* %107, align 8
  %108 = load i64, i64* %s, align 8
  %shr149 = lshr i64 %108, 16
  %109 = load i64, i64* %t, align 8
  %and150 = and i64 %109, 4294901760
  %or151 = or i64 %shr149, %and150
  store i64 %or151, i64* %t2, align 8
  %110 = load i64, i64* %t2, align 8
  %shl152 = shl i64 %110, 6
  %111 = load i64, i64* %t2, align 8
  %shr153 = lshr i64 %111, 26
  %or154 = or i64 %shl152, %shr153
  %and155 = and i64 %or154, 4294967295
  %112 = load i64*, i64** %k, align 8
  %incdec.ptr156 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %incdec.ptr156, i64** %k, align 8
  store i64 %and155, i64* %112, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.91
  %113 = load i32, i32* %i, align 4
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then.2
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal i32 @check_parity([8 x i8]* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca [8 x i8]*, align 8
  %i = alloca i32, align 4
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %2, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %arrayidx4 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i32 0, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %idxprom5 = zext i8 %6 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv2, %conv7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @des_key_sched([8 x i8]* %key, %struct.des_ks_struct* %schedule) #0 {
entry:
  %key.addr = alloca [8 x i8]*, align 8
  %schedule.addr = alloca %struct.des_ks_struct*, align 8
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store %struct.des_ks_struct* %schedule, %struct.des_ks_struct** %schedule.addr, align 8
  %0 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %1 = load %struct.des_ks_struct*, %struct.des_ks_struct** %schedule.addr, align 8
  %call = call i32 @des_set_key([8 x i8]* %0, %struct.des_ks_struct* %1)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
