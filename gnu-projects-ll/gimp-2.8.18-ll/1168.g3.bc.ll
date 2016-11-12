; ModuleID = './plug-ins/file-faxg3/g3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g3code = type { i32, i32, i32, i32 }
%struct.g3_tree = type { i32, [256 x %struct.g3_tree*] }

@t_white = global [66 x %struct.g3code] [%struct.g3code { i32 0, i32 0, i32 172, i32 8 }, %struct.g3code { i32 0, i32 1, i32 56, i32 6 }, %struct.g3code { i32 0, i32 2, i32 14, i32 4 }, %struct.g3code { i32 0, i32 3, i32 1, i32 4 }, %struct.g3code { i32 0, i32 4, i32 13, i32 4 }, %struct.g3code { i32 0, i32 5, i32 3, i32 4 }, %struct.g3code { i32 0, i32 6, i32 7, i32 4 }, %struct.g3code { i32 0, i32 7, i32 15, i32 4 }, %struct.g3code { i32 0, i32 8, i32 25, i32 5 }, %struct.g3code { i32 0, i32 9, i32 5, i32 5 }, %struct.g3code { i32 0, i32 10, i32 28, i32 5 }, %struct.g3code { i32 0, i32 11, i32 2, i32 5 }, %struct.g3code { i32 0, i32 12, i32 4, i32 6 }, %struct.g3code { i32 0, i32 13, i32 48, i32 6 }, %struct.g3code { i32 0, i32 14, i32 11, i32 6 }, %struct.g3code { i32 0, i32 15, i32 43, i32 6 }, %struct.g3code { i32 0, i32 16, i32 21, i32 6 }, %struct.g3code { i32 0, i32 17, i32 53, i32 6 }, %struct.g3code { i32 0, i32 18, i32 114, i32 7 }, %struct.g3code { i32 0, i32 19, i32 24, i32 7 }, %struct.g3code { i32 0, i32 20, i32 8, i32 7 }, %struct.g3code { i32 0, i32 21, i32 116, i32 7 }, %struct.g3code { i32 0, i32 22, i32 96, i32 7 }, %struct.g3code { i32 0, i32 23, i32 16, i32 7 }, %struct.g3code { i32 0, i32 24, i32 10, i32 7 }, %struct.g3code { i32 0, i32 25, i32 106, i32 7 }, %struct.g3code { i32 0, i32 26, i32 100, i32 7 }, %struct.g3code { i32 0, i32 27, i32 18, i32 7 }, %struct.g3code { i32 0, i32 28, i32 12, i32 7 }, %struct.g3code { i32 0, i32 29, i32 64, i32 8 }, %struct.g3code { i32 0, i32 30, i32 192, i32 8 }, %struct.g3code { i32 0, i32 31, i32 88, i32 8 }, %struct.g3code { i32 0, i32 32, i32 216, i32 8 }, %struct.g3code { i32 0, i32 33, i32 72, i32 8 }, %struct.g3code { i32 0, i32 34, i32 200, i32 8 }, %struct.g3code { i32 0, i32 35, i32 40, i32 8 }, %struct.g3code { i32 0, i32 36, i32 168, i32 8 }, %struct.g3code { i32 0, i32 37, i32 104, i32 8 }, %struct.g3code { i32 0, i32 38, i32 232, i32 8 }, %struct.g3code { i32 0, i32 39, i32 20, i32 8 }, %struct.g3code { i32 0, i32 40, i32 148, i32 8 }, %struct.g3code { i32 0, i32 41, i32 84, i32 8 }, %struct.g3code { i32 0, i32 42, i32 212, i32 8 }, %struct.g3code { i32 0, i32 43, i32 52, i32 8 }, %struct.g3code { i32 0, i32 44, i32 180, i32 8 }, %struct.g3code { i32 0, i32 45, i32 32, i32 8 }, %struct.g3code { i32 0, i32 46, i32 160, i32 8 }, %struct.g3code { i32 0, i32 47, i32 80, i32 8 }, %struct.g3code { i32 0, i32 48, i32 208, i32 8 }, %struct.g3code { i32 0, i32 49, i32 74, i32 8 }, %struct.g3code { i32 0, i32 50, i32 202, i32 8 }, %struct.g3code { i32 0, i32 51, i32 42, i32 8 }, %struct.g3code { i32 0, i32 52, i32 170, i32 8 }, %struct.g3code { i32 0, i32 53, i32 36, i32 8 }, %struct.g3code { i32 0, i32 54, i32 164, i32 8 }, %struct.g3code { i32 0, i32 55, i32 26, i32 8 }, %struct.g3code { i32 0, i32 56, i32 154, i32 8 }, %struct.g3code { i32 0, i32 57, i32 90, i32 8 }, %struct.g3code { i32 0, i32 58, i32 218, i32 8 }, %struct.g3code { i32 0, i32 59, i32 82, i32 8 }, %struct.g3code { i32 0, i32 60, i32 210, i32 8 }, %struct.g3code { i32 0, i32 61, i32 76, i32 8 }, %struct.g3code { i32 0, i32 62, i32 204, i32 8 }, %struct.g3code { i32 0, i32 63, i32 44, i32 8 }, %struct.g3code { i32 0, i32 -1, i32 0, i32 11 }, %struct.g3code { i32 0, i32 -1, i32 0, i32 0 }], align 16
@m_white = global [28 x %struct.g3code] [%struct.g3code { i32 0, i32 64, i32 27, i32 5 }, %struct.g3code { i32 0, i32 128, i32 9, i32 5 }, %struct.g3code { i32 0, i32 192, i32 58, i32 6 }, %struct.g3code { i32 0, i32 256, i32 118, i32 7 }, %struct.g3code { i32 0, i32 320, i32 108, i32 8 }, %struct.g3code { i32 0, i32 384, i32 236, i32 8 }, %struct.g3code { i32 0, i32 448, i32 38, i32 8 }, %struct.g3code { i32 0, i32 512, i32 166, i32 8 }, %struct.g3code { i32 0, i32 576, i32 22, i32 8 }, %struct.g3code { i32 0, i32 640, i32 230, i32 8 }, %struct.g3code { i32 0, i32 704, i32 102, i32 9 }, %struct.g3code { i32 0, i32 768, i32 358, i32 9 }, %struct.g3code { i32 0, i32 832, i32 150, i32 9 }, %struct.g3code { i32 0, i32 896, i32 406, i32 9 }, %struct.g3code { i32 0, i32 960, i32 86, i32 9 }, %struct.g3code { i32 0, i32 1024, i32 342, i32 9 }, %struct.g3code { i32 0, i32 1088, i32 214, i32 9 }, %struct.g3code { i32 0, i32 1152, i32 470, i32 9 }, %struct.g3code { i32 0, i32 1216, i32 54, i32 9 }, %struct.g3code { i32 0, i32 1280, i32 310, i32 9 }, %struct.g3code { i32 0, i32 1344, i32 182, i32 9 }, %struct.g3code { i32 0, i32 1408, i32 438, i32 9 }, %struct.g3code { i32 0, i32 1472, i32 50, i32 9 }, %struct.g3code { i32 0, i32 1536, i32 306, i32 9 }, %struct.g3code { i32 0, i32 1600, i32 178, i32 9 }, %struct.g3code { i32 0, i32 1664, i32 6, i32 6 }, %struct.g3code { i32 0, i32 1728, i32 434, i32 9 }, %struct.g3code { i32 0, i32 -1, i32 0, i32 0 }], align 16
@t_black = global [66 x %struct.g3code] [%struct.g3code { i32 0, i32 0, i32 944, i32 10 }, %struct.g3code { i32 0, i32 1, i32 2, i32 3 }, %struct.g3code { i32 0, i32 2, i32 3, i32 2 }, %struct.g3code { i32 0, i32 3, i32 1, i32 2 }, %struct.g3code { i32 0, i32 4, i32 6, i32 3 }, %struct.g3code { i32 0, i32 5, i32 12, i32 4 }, %struct.g3code { i32 0, i32 6, i32 4, i32 4 }, %struct.g3code { i32 0, i32 7, i32 24, i32 5 }, %struct.g3code { i32 0, i32 8, i32 40, i32 6 }, %struct.g3code { i32 0, i32 9, i32 8, i32 6 }, %struct.g3code { i32 0, i32 10, i32 16, i32 7 }, %struct.g3code { i32 0, i32 11, i32 80, i32 7 }, %struct.g3code { i32 0, i32 12, i32 112, i32 7 }, %struct.g3code { i32 0, i32 13, i32 32, i32 8 }, %struct.g3code { i32 0, i32 14, i32 224, i32 8 }, %struct.g3code { i32 0, i32 15, i32 48, i32 9 }, %struct.g3code { i32 0, i32 16, i32 928, i32 10 }, %struct.g3code { i32 0, i32 17, i32 96, i32 10 }, %struct.g3code { i32 0, i32 18, i32 64, i32 10 }, %struct.g3code { i32 0, i32 19, i32 1840, i32 11 }, %struct.g3code { i32 0, i32 20, i32 176, i32 11 }, %struct.g3code { i32 0, i32 21, i32 432, i32 11 }, %struct.g3code { i32 0, i32 22, i32 1888, i32 11 }, %struct.g3code { i32 0, i32 23, i32 160, i32 11 }, %struct.g3code { i32 0, i32 24, i32 1856, i32 11 }, %struct.g3code { i32 0, i32 25, i32 192, i32 11 }, %struct.g3code { i32 0, i32 26, i32 1328, i32 12 }, %struct.g3code { i32 0, i32 27, i32 3376, i32 12 }, %struct.g3code { i32 0, i32 28, i32 816, i32 12 }, %struct.g3code { i32 0, i32 29, i32 2864, i32 12 }, %struct.g3code { i32 0, i32 30, i32 352, i32 12 }, %struct.g3code { i32 0, i32 31, i32 2400, i32 12 }, %struct.g3code { i32 0, i32 32, i32 1376, i32 12 }, %struct.g3code { i32 0, i32 33, i32 3424, i32 12 }, %struct.g3code { i32 0, i32 34, i32 1200, i32 12 }, %struct.g3code { i32 0, i32 35, i32 3248, i32 12 }, %struct.g3code { i32 0, i32 36, i32 688, i32 12 }, %struct.g3code { i32 0, i32 37, i32 2736, i32 12 }, %struct.g3code { i32 0, i32 38, i32 1712, i32 12 }, %struct.g3code { i32 0, i32 39, i32 3760, i32 12 }, %struct.g3code { i32 0, i32 40, i32 864, i32 12 }, %struct.g3code { i32 0, i32 41, i32 2912, i32 12 }, %struct.g3code { i32 0, i32 42, i32 1456, i32 12 }, %struct.g3code { i32 0, i32 43, i32 3504, i32 12 }, %struct.g3code { i32 0, i32 44, i32 672, i32 12 }, %struct.g3code { i32 0, i32 45, i32 2720, i32 12 }, %struct.g3code { i32 0, i32 46, i32 1696, i32 12 }, %struct.g3code { i32 0, i32 47, i32 3744, i32 12 }, %struct.g3code { i32 0, i32 48, i32 608, i32 12 }, %struct.g3code { i32 0, i32 49, i32 2656, i32 12 }, %struct.g3code { i32 0, i32 50, i32 1184, i32 12 }, %struct.g3code { i32 0, i32 51, i32 3232, i32 12 }, %struct.g3code { i32 0, i32 52, i32 576, i32 12 }, %struct.g3code { i32 0, i32 53, i32 3776, i32 12 }, %struct.g3code { i32 0, i32 54, i32 448, i32 12 }, %struct.g3code { i32 0, i32 55, i32 3648, i32 12 }, %struct.g3code { i32 0, i32 56, i32 320, i32 12 }, %struct.g3code { i32 0, i32 57, i32 416, i32 12 }, %struct.g3code { i32 0, i32 58, i32 2464, i32 12 }, %struct.g3code { i32 0, i32 59, i32 3392, i32 12 }, %struct.g3code { i32 0, i32 60, i32 832, i32 12 }, %struct.g3code { i32 0, i32 61, i32 1440, i32 12 }, %struct.g3code { i32 0, i32 62, i32 1632, i32 12 }, %struct.g3code { i32 0, i32 63, i32 3680, i32 12 }, %struct.g3code { i32 0, i32 -1, i32 0, i32 11 }, %struct.g3code { i32 0, i32 -1, i32 0, i32 0 }], align 16
@m_black = global [28 x %struct.g3code] [%struct.g3code { i32 0, i32 64, i32 960, i32 10 }, %struct.g3code { i32 0, i32 128, i32 304, i32 12 }, %struct.g3code { i32 0, i32 192, i32 2352, i32 12 }, %struct.g3code { i32 0, i32 256, i32 3488, i32 12 }, %struct.g3code { i32 0, i32 320, i32 3264, i32 12 }, %struct.g3code { i32 0, i32 384, i32 704, i32 12 }, %struct.g3code { i32 0, i32 448, i32 2752, i32 12 }, %struct.g3code { i32 0, i32 512, i32 1728, i32 13 }, %struct.g3code { i32 0, i32 576, i32 5824, i32 13 }, %struct.g3code { i32 0, i32 640, i32 2624, i32 13 }, %struct.g3code { i32 0, i32 704, i32 6720, i32 13 }, %struct.g3code { i32 0, i32 768, i32 1600, i32 13 }, %struct.g3code { i32 0, i32 832, i32 5696, i32 13 }, %struct.g3code { i32 0, i32 896, i32 2496, i32 13 }, %struct.g3code { i32 0, i32 960, i32 6592, i32 13 }, %struct.g3code { i32 0, i32 1024, i32 1472, i32 13 }, %struct.g3code { i32 0, i32 1088, i32 5568, i32 13 }, %struct.g3code { i32 0, i32 1152, i32 3520, i32 13 }, %struct.g3code { i32 0, i32 1216, i32 7616, i32 13 }, %struct.g3code { i32 0, i32 1280, i32 2368, i32 13 }, %struct.g3code { i32 0, i32 1344, i32 6464, i32 13 }, %struct.g3code { i32 0, i32 1408, i32 1344, i32 13 }, %struct.g3code { i32 0, i32 1472, i32 5440, i32 13 }, %struct.g3code { i32 0, i32 1536, i32 2880, i32 13 }, %struct.g3code { i32 0, i32 1600, i32 6976, i32 13 }, %struct.g3code { i32 0, i32 1664, i32 1216, i32 13 }, %struct.g3code { i32 0, i32 1728, i32 5312, i32 13 }, %struct.g3code { i32 0, i32 -1, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [9 x i8] c"malloc 3\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"internal table setup error\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"malloc(1)\00", align 1

; Function Attrs: nounwind uwtable
define void @tree_add_node(%struct.g3_tree* %p, %struct.g3code* %g3c, i32 %bit_code, i32 %bit_length) #0 {
entry:
  %p.addr = alloca %struct.g3_tree*, align 8
  %g3c.addr = alloca %struct.g3code*, align 8
  %bit_code.addr = alloca i32, align 4
  %bit_length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p2 = alloca %struct.g3_tree*, align 8
  store %struct.g3_tree* %p, %struct.g3_tree** %p.addr, align 8
  store %struct.g3code* %g3c, %struct.g3code** %g3c.addr, align 8
  store i32 %bit_code, i32* %bit_code.addr, align 4
  store i32 %bit_length, i32* %bit_length.addr, align 4
  %0 = load i32, i32* %bit_length.addr, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %bit_length.addr, align 4
  %2 = load %struct.g3code*, %struct.g3code** %g3c.addr, align 8
  %nr_bits = getelementptr inbounds %struct.g3code, %struct.g3code* %2, i32 0, i32 0
  store i32 %1, i32* %nr_bits, align 4
  %3 = load i32, i32* %bit_length.addr, align 4
  %cmp1 = icmp eq i32 %3, 8
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.g3code*, %struct.g3code** %g3c.addr, align 8
  %5 = bitcast %struct.g3code* %4 to %struct.g3_tree*
  %6 = load i32, i32* %bit_code.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.g3_tree*, %struct.g3_tree** %p.addr, align 8
  %nextb = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [256 x %struct.g3_tree*], [256 x %struct.g3_tree*]* %nextb, i32 0, i64 %idxprom
  store %struct.g3_tree* %5, %struct.g3_tree** %arrayidx, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %bit_length.addr, align 4
  %sub = sub nsw i32 8, %9
  %shl = shl i32 1, %sub
  %cmp3 = icmp slt i32 %8, %shl
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.g3code*, %struct.g3code** %g3c.addr, align 8
  %11 = bitcast %struct.g3code* %10 to %struct.g3_tree*
  %12 = load i32, i32* %bit_code.addr, align 4
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %bit_length.addr, align 4
  %shl4 = shl i32 %13, %14
  %add = add nsw i32 %12, %shl4
  %idxprom5 = sext i32 %add to i64
  %15 = load %struct.g3_tree*, %struct.g3_tree** %p.addr, align 8
  %nextb6 = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %15, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [256 x %struct.g3_tree*], [256 x %struct.g3_tree*]* %nextb6, i32 0, i64 %idxprom5
  store %struct.g3_tree* %11, %struct.g3_tree** %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.2
  br label %if.end.28

if.else.8:                                        ; preds = %entry
  %17 = load i32, i32* %bit_code.addr, align 4
  %and = and i32 %17, 255
  %idxprom9 = sext i32 %and to i64
  %18 = load %struct.g3_tree*, %struct.g3_tree** %p.addr, align 8
  %nextb10 = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %18, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [256 x %struct.g3_tree*], [256 x %struct.g3_tree*]* %nextb10, i32 0, i64 %idxprom9
  %19 = load %struct.g3_tree*, %struct.g3_tree** %arrayidx11, align 8
  store %struct.g3_tree* %19, %struct.g3_tree** %p2, align 8
  %20 = load %struct.g3_tree*, %struct.g3_tree** %p2, align 8
  %cmp12 = icmp eq %struct.g3_tree* %20, null
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.else.8
  %call = call noalias i8* @calloc(i64 1, i64 2056) #4
  %21 = bitcast i8* %call to %struct.g3_tree*
  %22 = load i32, i32* %bit_code.addr, align 4
  %and14 = and i32 %22, 255
  %idxprom15 = sext i32 %and14 to i64
  %23 = load %struct.g3_tree*, %struct.g3_tree** %p.addr, align 8
  %nextb16 = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %23, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [256 x %struct.g3_tree*], [256 x %struct.g3_tree*]* %nextb16, i32 0, i64 %idxprom15
  store %struct.g3_tree* %21, %struct.g3_tree** %arrayidx17, align 8
  store %struct.g3_tree* %21, %struct.g3_tree** %p2, align 8
  %24 = load %struct.g3_tree*, %struct.g3_tree** %p2, align 8
  %cmp18 = icmp eq %struct.g3_tree* %24, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.13
  call void @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 11) #5
  unreachable

if.end.20:                                        ; preds = %if.then.13
  %25 = load %struct.g3_tree*, %struct.g3_tree** %p2, align 8
  %nr_bits21 = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %25, i32 0, i32 0
  store i32 0, i32* %nr_bits21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %if.else.8
  %26 = load %struct.g3_tree*, %struct.g3_tree** %p2, align 8
  %nr_bits23 = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %26, i32 0, i32 0
  %27 = load i32, i32* %nr_bits23, align 4
  %cmp24 = icmp ne i32 %27, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 6) #5
  unreachable

if.end.26:                                        ; preds = %if.end.22
  %28 = load %struct.g3_tree*, %struct.g3_tree** %p2, align 8
  %29 = load %struct.g3code*, %struct.g3code** %g3c.addr, align 8
  %30 = load i32, i32* %bit_code.addr, align 4
  %shr = ashr i32 %30, 8
  %31 = load i32, i32* %bit_length.addr, align 4
  %sub27 = sub nsw i32 %31, 8
  call void @tree_add_node(%struct.g3_tree* %28, %struct.g3code* %29, i32 %shr, i32 %sub27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.26, %if.end
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @perror(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @g_printerr(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @build_tree(%struct.g3_tree** %p, %struct.g3code* %c) #0 {
entry:
  %p.addr = alloca %struct.g3_tree**, align 8
  %c.addr = alloca %struct.g3code*, align 8
  store %struct.g3_tree** %p, %struct.g3_tree*** %p.addr, align 8
  store %struct.g3code* %c, %struct.g3code** %c.addr, align 8
  %0 = load %struct.g3_tree**, %struct.g3_tree*** %p.addr, align 8
  %1 = load %struct.g3_tree*, %struct.g3_tree** %0, align 8
  %cmp = icmp eq %struct.g3_tree* %1, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call noalias i8* @calloc(i64 1, i64 2056) #4
  %2 = bitcast i8* %call to %struct.g3_tree*
  %3 = load %struct.g3_tree**, %struct.g3_tree*** %p.addr, align 8
  store %struct.g3_tree* %2, %struct.g3_tree** %3, align 8
  %4 = load %struct.g3_tree**, %struct.g3_tree*** %p.addr, align 8
  %5 = load %struct.g3_tree*, %struct.g3_tree** %4, align 8
  %cmp1 = icmp eq %struct.g3_tree* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 10) #5
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load %struct.g3_tree**, %struct.g3_tree*** %p.addr, align 8
  %7 = load %struct.g3_tree*, %struct.g3_tree** %6, align 8
  %nr_bits = getelementptr inbounds %struct.g3_tree, %struct.g3_tree* %7, i32 0, i32 0
  store i32 0, i32* %nr_bits, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.3
  %8 = load %struct.g3code*, %struct.g3code** %c.addr, align 8
  %bit_length = getelementptr inbounds %struct.g3code, %struct.g3code* %8, i32 0, i32 3
  %9 = load i32, i32* %bit_length, align 4
  %cmp4 = icmp ne i32 %9, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.g3_tree**, %struct.g3_tree*** %p.addr, align 8
  %11 = load %struct.g3_tree*, %struct.g3_tree** %10, align 8
  %12 = load %struct.g3code*, %struct.g3code** %c.addr, align 8
  %13 = load %struct.g3code*, %struct.g3code** %c.addr, align 8
  %bit_code = getelementptr inbounds %struct.g3code, %struct.g3code* %13, i32 0, i32 2
  %14 = load i32, i32* %bit_code, align 4
  %15 = load %struct.g3code*, %struct.g3code** %c.addr, align 8
  %bit_length5 = getelementptr inbounds %struct.g3code, %struct.g3code* %15, i32 0, i32 3
  %16 = load i32, i32* %bit_length5, align 4
  call void @tree_add_node(%struct.g3_tree* %11, %struct.g3code* %12, i32 %14, i32 %16)
  %17 = load %struct.g3code*, %struct.g3code** %c.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.g3code, %struct.g3code* %17, i32 1
  store %struct.g3code* %incdec.ptr, %struct.g3code** %c.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_byte_tab(i32 %reverse, i32* %byte_tab) #0 {
entry:
  %reverse.addr = alloca i32, align 4
  %byte_tab.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %reverse, i32* %reverse.addr, align 4
  store i32* %byte_tab, i32** %byte_tab.addr, align 8
  %0 = load i32, i32* %reverse.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %byte_tab.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.25, %if.else
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %6, 256
  br i1 %cmp2, label %for.body.3, label %for.end.27

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %and = and i32 %7, 1
  %shl = shl i32 %and, 7
  %8 = load i32, i32* %i, align 4
  %and4 = and i32 %8, 2
  %shl5 = shl i32 %and4, 5
  %or = or i32 %shl, %shl5
  %9 = load i32, i32* %i, align 4
  %and6 = and i32 %9, 4
  %shl7 = shl i32 %and6, 3
  %or8 = or i32 %or, %shl7
  %10 = load i32, i32* %i, align 4
  %and9 = and i32 %10, 8
  %shl10 = shl i32 %and9, 1
  %or11 = or i32 %or8, %shl10
  %11 = load i32, i32* %i, align 4
  %and12 = and i32 %11, 16
  %shr = ashr i32 %and12, 1
  %or13 = or i32 %or11, %shr
  %12 = load i32, i32* %i, align 4
  %and14 = and i32 %12, 32
  %shr15 = ashr i32 %and14, 3
  %or16 = or i32 %or13, %shr15
  %13 = load i32, i32* %i, align 4
  %and17 = and i32 %13, 64
  %shr18 = ashr i32 %and17, 5
  %or19 = or i32 %or16, %shr18
  %14 = load i32, i32* %i, align 4
  %and20 = and i32 %14, 128
  %shr21 = ashr i32 %and20, 7
  %or22 = or i32 %or19, %shr21
  %15 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %16 = load i32*, i32** %byte_tab.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %16, i64 %idxprom23
  store i32 %or22, i32* %arrayidx24, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.3
  %17 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %17, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.1

for.end.27:                                       ; preds = %for.cond.1
  br label %if.end

if.end:                                           ; preds = %for.end.27, %for.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
