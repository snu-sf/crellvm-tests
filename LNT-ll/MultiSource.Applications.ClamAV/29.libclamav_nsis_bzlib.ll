; ModuleID = './MultiSource.Applications.ClamAV/29.libclamav_nsis_bzlib.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsis_bzstream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.DState = type { %struct.nsis_bzstream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@BZ2_rNums = constant [512 x i32] [i32 619, i32 720, i32 127, i32 481, i32 931, i32 816, i32 813, i32 233, i32 566, i32 247, i32 985, i32 724, i32 205, i32 454, i32 863, i32 491, i32 741, i32 242, i32 949, i32 214, i32 733, i32 859, i32 335, i32 708, i32 621, i32 574, i32 73, i32 654, i32 730, i32 472, i32 419, i32 436, i32 278, i32 496, i32 867, i32 210, i32 399, i32 680, i32 480, i32 51, i32 878, i32 465, i32 811, i32 169, i32 869, i32 675, i32 611, i32 697, i32 867, i32 561, i32 862, i32 687, i32 507, i32 283, i32 482, i32 129, i32 807, i32 591, i32 733, i32 623, i32 150, i32 238, i32 59, i32 379, i32 684, i32 877, i32 625, i32 169, i32 643, i32 105, i32 170, i32 607, i32 520, i32 932, i32 727, i32 476, i32 693, i32 425, i32 174, i32 647, i32 73, i32 122, i32 335, i32 530, i32 442, i32 853, i32 695, i32 249, i32 445, i32 515, i32 909, i32 545, i32 703, i32 919, i32 874, i32 474, i32 882, i32 500, i32 594, i32 612, i32 641, i32 801, i32 220, i32 162, i32 819, i32 984, i32 589, i32 513, i32 495, i32 799, i32 161, i32 604, i32 958, i32 533, i32 221, i32 400, i32 386, i32 867, i32 600, i32 782, i32 382, i32 596, i32 414, i32 171, i32 516, i32 375, i32 682, i32 485, i32 911, i32 276, i32 98, i32 553, i32 163, i32 354, i32 666, i32 933, i32 424, i32 341, i32 533, i32 870, i32 227, i32 730, i32 475, i32 186, i32 263, i32 647, i32 537, i32 686, i32 600, i32 224, i32 469, i32 68, i32 770, i32 919, i32 190, i32 373, i32 294, i32 822, i32 808, i32 206, i32 184, i32 943, i32 795, i32 384, i32 383, i32 461, i32 404, i32 758, i32 839, i32 887, i32 715, i32 67, i32 618, i32 276, i32 204, i32 918, i32 873, i32 777, i32 604, i32 560, i32 951, i32 160, i32 578, i32 722, i32 79, i32 804, i32 96, i32 409, i32 713, i32 940, i32 652, i32 934, i32 970, i32 447, i32 318, i32 353, i32 859, i32 672, i32 112, i32 785, i32 645, i32 863, i32 803, i32 350, i32 139, i32 93, i32 354, i32 99, i32 820, i32 908, i32 609, i32 772, i32 154, i32 274, i32 580, i32 184, i32 79, i32 626, i32 630, i32 742, i32 653, i32 282, i32 762, i32 623, i32 680, i32 81, i32 927, i32 626, i32 789, i32 125, i32 411, i32 521, i32 938, i32 300, i32 821, i32 78, i32 343, i32 175, i32 128, i32 250, i32 170, i32 774, i32 972, i32 275, i32 999, i32 639, i32 495, i32 78, i32 352, i32 126, i32 857, i32 956, i32 358, i32 619, i32 580, i32 124, i32 737, i32 594, i32 701, i32 612, i32 669, i32 112, i32 134, i32 694, i32 363, i32 992, i32 809, i32 743, i32 168, i32 974, i32 944, i32 375, i32 748, i32 52, i32 600, i32 747, i32 642, i32 182, i32 862, i32 81, i32 344, i32 805, i32 988, i32 739, i32 511, i32 655, i32 814, i32 334, i32 249, i32 515, i32 897, i32 955, i32 664, i32 981, i32 649, i32 113, i32 974, i32 459, i32 893, i32 228, i32 433, i32 837, i32 553, i32 268, i32 926, i32 240, i32 102, i32 654, i32 459, i32 51, i32 686, i32 754, i32 806, i32 760, i32 493, i32 403, i32 415, i32 394, i32 687, i32 700, i32 946, i32 670, i32 656, i32 610, i32 738, i32 392, i32 760, i32 799, i32 887, i32 653, i32 978, i32 321, i32 576, i32 617, i32 626, i32 502, i32 894, i32 679, i32 243, i32 440, i32 680, i32 879, i32 194, i32 572, i32 640, i32 724, i32 926, i32 56, i32 204, i32 700, i32 707, i32 151, i32 457, i32 449, i32 797, i32 195, i32 791, i32 558, i32 945, i32 679, i32 297, i32 59, i32 87, i32 824, i32 713, i32 663, i32 412, i32 693, i32 342, i32 606, i32 134, i32 108, i32 571, i32 364, i32 631, i32 212, i32 174, i32 643, i32 304, i32 329, i32 343, i32 97, i32 430, i32 751, i32 497, i32 314, i32 983, i32 374, i32 822, i32 928, i32 140, i32 206, i32 73, i32 263, i32 980, i32 736, i32 876, i32 478, i32 430, i32 305, i32 170, i32 514, i32 364, i32 692, i32 829, i32 82, i32 855, i32 953, i32 676, i32 246, i32 369, i32 970, i32 294, i32 750, i32 807, i32 827, i32 150, i32 790, i32 288, i32 923, i32 804, i32 378, i32 215, i32 828, i32 592, i32 281, i32 565, i32 555, i32 710, i32 82, i32 896, i32 831, i32 547, i32 261, i32 524, i32 462, i32 293, i32 465, i32 502, i32 56, i32 661, i32 821, i32 976, i32 991, i32 658, i32 869, i32 905, i32 758, i32 745, i32 193, i32 768, i32 550, i32 608, i32 933, i32 378, i32 286, i32 215, i32 979, i32 792, i32 961, i32 61, i32 688, i32 793, i32 644, i32 986, i32 403, i32 106, i32 366, i32 905, i32 644, i32 372, i32 567, i32 466, i32 434, i32 645, i32 210, i32 389, i32 550, i32 919, i32 135, i32 780, i32 773, i32 635, i32 389, i32 707, i32 100, i32 626, i32 958, i32 165, i32 504, i32 920, i32 176, i32 193, i32 713, i32 857, i32 265, i32 203, i32 50, i32 668, i32 108, i32 645, i32 990, i32 626, i32 197, i32 510, i32 357, i32 358, i32 850, i32 858, i32 364, i32 936, i32 638], align 16

; Function Attrs: nounwind uwtable
define i32 @nsis_BZ2_bzDecompressInit(%struct.nsis_bzstream* %strm, i32 %verbosity, i32 %small) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.nsis_bzstream*, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %s = alloca %struct.DState*, align 8
  store %struct.nsis_bzstream* %strm, %struct.nsis_bzstream** %strm.addr, align 8
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %small, i32* %small.addr, align 4
  %call = call i32 @bz_config_ok()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -9, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %cmp = icmp eq %struct.nsis_bzstream* %0, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %1 = load i32, i32* %small.addr, align 4
  %cmp3 = icmp ne i32 %1, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end.2
  %2 = load i32, i32* %small.addr, align 4
  %cmp4 = icmp ne i32 %2, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 -2, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end.2
  %3 = load i32, i32* %verbosity.addr, align 4
  %cmp7 = icmp slt i32 %3, 0
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %4 = load i32, i32* %verbosity.addr, align 4
  %cmp8 = icmp sgt i32 %4, 4
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.6
  store i32 -2, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %5 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %bzalloc = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %5, i32 0, i32 9
  %6 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8
  %cmp11 = icmp eq i8* (i8*, i32, i32)* %6, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %7 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %bzalloc13 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %7, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %8 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %8, i32 0, i32 10
  %9 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %cmp15 = icmp eq void (i8*, i8*)* %9, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %10 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %bzfree17 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %10, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %11 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %bzalloc19 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %11, i32 0, i32 9
  %12 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc19, align 8
  %13 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %13, i32 0, i32 11
  %14 = load i8*, i8** %opaque, align 8
  %call20 = call i8* %12(i8* %14, i32 64144, i32 1)
  %15 = bitcast i8* %call20 to %struct.DState*
  store %struct.DState* %15, %struct.DState** %s, align 8
  %16 = load %struct.DState*, %struct.DState** %s, align 8
  %cmp21 = icmp eq %struct.DState* %16, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 -3, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %17 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %18 = load %struct.DState*, %struct.DState** %s, align 8
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 0
  store %struct.nsis_bzstream* %17, %struct.nsis_bzstream** %strm24, align 8
  %19 = load %struct.DState*, %struct.DState** %s, align 8
  %20 = bitcast %struct.DState* %19 to i8*
  %21 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %21, i32 0, i32 8
  store i8* %20, i8** %state, align 8
  %22 = load %struct.DState*, %struct.DState** %s, align 8
  %state25 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 1
  store i32 10, i32* %state25, align 4
  %23 = load %struct.DState*, %struct.DState** %s, align 8
  %bsLive = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 8
  store i32 0, i32* %bsLive, align 4
  %24 = load %struct.DState*, %struct.DState** %s, align 8
  %bsBuff = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 7
  store i32 0, i32* %bsBuff, align 4
  %25 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 26
  store i32 0, i32* %calculatedCombinedCRC, align 4
  %26 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %total_in_lo32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %26, i32 0, i32 2
  store i32 0, i32* %total_in_lo32, align 4
  %27 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %total_in_hi32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %27, i32 0, i32 3
  store i32 0, i32* %total_in_hi32, align 4
  %28 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %total_out_lo32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %28, i32 0, i32 6
  store i32 0, i32* %total_out_lo32, align 4
  %29 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %total_out_hi32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %29, i32 0, i32 7
  store i32 0, i32* %total_out_hi32, align 4
  %30 = load i32, i32* %small.addr, align 4
  %conv = trunc i32 %30 to i8
  %31 = load %struct.DState*, %struct.DState** %s, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 10
  store i8 %conv, i8* %smallDecompress, align 1
  %32 = load %struct.DState*, %struct.DState** %s, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 22
  store i8* null, i8** %ll4, align 8
  %33 = load %struct.DState*, %struct.DState** %s, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 21
  store i16* null, i16** %ll16, align 8
  %34 = load %struct.DState*, %struct.DState** %s, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 20
  store i32* null, i32** %tt, align 8
  %35 = load %struct.DState*, %struct.DState** %s, align 8
  %currBlockNo = getelementptr inbounds %struct.DState, %struct.DState* %35, i32 0, i32 11
  store i32 0, i32* %currBlockNo, align 4
  %36 = load i32, i32* %verbosity.addr, align 4
  %37 = load %struct.DState*, %struct.DState** %s, align 8
  %verbosity26 = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 12
  store i32 %36, i32* %verbosity26, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.9, %if.then.5, %if.then.1, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @bz_config_ok() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i8* @default_bzalloc(i8* %opaque, i32 %items, i32 %size) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %v = alloca i8*, align 8
  store i8* %opaque, i8** %opaque.addr, align 8
  store i32 %items, i32* %items.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %items.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %call = call i8* @cli_malloc(i64 %conv)
  store i8* %call, i8** %v, align 8
  %2 = load i8*, i8** %v, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal void @default_bzfree(i8* %opaque, i8* %addr) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  store i8* %opaque, i8** %opaque.addr, align 8
  store i8* %addr, i8** %addr.addr, align 8
  %0 = load i8*, i8** %addr.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %addr.addr, align 8
  call void @free(i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @nsis_BZ2_bzDecompress(%struct.nsis_bzstream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.nsis_bzstream*, align 8
  %corrupt = alloca i8, align 1
  %s = alloca %struct.DState*, align 8
  %r = alloca i32, align 4
  store %struct.nsis_bzstream* %strm, %struct.nsis_bzstream** %strm.addr, align 8
  %0 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %cmp = icmp eq %struct.nsis_bzstream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.DState*
  store %struct.DState* %3, %struct.DState** %s, align 8
  %4 = load %struct.DState*, %struct.DState** %s, align 8
  %cmp1 = icmp eq %struct.DState* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.DState*, %struct.DState** %s, align 8
  %strm4 = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 0
  %6 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm4, align 8
  %7 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.nsis_bzstream* %6, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -2, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  br label %while.body

while.body:                                       ; preds = %if.end.7, %if.end.39
  %8 = load %struct.DState*, %struct.DState** %s, align 8
  %state8 = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 1
  %9 = load i32, i32* %state8, align 4
  %cmp9 = icmp eq i32 %9, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %while.body
  %10 = load %struct.DState*, %struct.DState** %s, align 8
  %state12 = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 1
  %11 = load i32, i32* %state12, align 4
  %cmp13 = icmp eq i32 %11, 2
  br i1 %cmp13, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %if.end.11
  %12 = load %struct.DState*, %struct.DState** %s, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 10
  %13 = load i8, i8* %smallDecompress, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.14
  %14 = load %struct.DState*, %struct.DState** %s, align 8
  %call = call zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %14)
  store i8 %call, i8* %corrupt, align 1
  br label %if.end.17

if.else:                                          ; preds = %if.then.14
  %15 = load %struct.DState*, %struct.DState** %s, align 8
  %call16 = call zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %15)
  store i8 %call16, i8* %corrupt, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  %16 = load i8, i8* %corrupt, align 1
  %tobool18 = icmp ne i8 %16, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  store i32 -4, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.17
  %17 = load %struct.DState*, %struct.DState** %s, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 17
  %18 = load i32, i32* %nblock_used, align 4
  %19 = load %struct.DState*, %struct.DState** %s, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 51
  %20 = load i32, i32* %save_nblock, align 4
  %add = add nsw i32 %20, 1
  %cmp21 = icmp eq i32 %18, %add
  br i1 %cmp21, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.end.20
  %21 = load %struct.DState*, %struct.DState** %s, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %21, i32 0, i32 3
  %22 = load i32, i32* %state_out_len, align 4
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %land.lhs.true
  %23 = load %struct.DState*, %struct.DState** %s, align 8
  %state24 = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 1
  store i32 14, i32* %state24, align 4
  br label %if.end.26

if.else.25:                                       ; preds = %land.lhs.true, %if.end.20
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.11
  %24 = load %struct.DState*, %struct.DState** %s, align 8
  %state28 = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 1
  %25 = load i32, i32* %state28, align 4
  %cmp29 = icmp sge i32 %25, 10
  br i1 %cmp29, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %if.end.27
  %26 = load %struct.DState*, %struct.DState** %s, align 8
  %call31 = call i32 @BZ2_decompress(%struct.DState* %26)
  store i32 %call31, i32* %r, align 4
  %27 = load i32, i32* %r, align 4
  %cmp32 = icmp eq i32 %27, 4
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.30
  %28 = load i32, i32* %r, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.30
  %29 = load %struct.DState*, %struct.DState** %s, align 8
  %state35 = getelementptr inbounds %struct.DState, %struct.DState* %29, i32 0, i32 1
  %30 = load i32, i32* %state35, align 4
  %cmp36 = icmp ne i32 %30, 2
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %31 = load i32, i32* %r, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.27
  br label %while.body

return:                                           ; preds = %if.then.37, %if.then.33, %if.else.25, %if.then.19, %if.then.10, %if.then.6, %if.then.2, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.DState*, align 8
  %k1 = alloca i8, align 1
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.then.51, %if.then.57, %if.then.93, %if.then.99, %if.then.135, %if.then.141, %if.end.144
  br label %while.body.2

while.body.2:                                     ; preds = %while.body, %if.end.20
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 0
  %1 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm, align 8
  %avail_out = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1, i32 0, i32 5
  %2 = load i32, i32* %avail_out, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.2
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %while.body.2
  %3 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %3, i32 0, i32 3
  %4 = load i32, i32* %state_out_len, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %while.end

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 2
  %6 = load i8, i8* %state_out_ch, align 1
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm6 = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 0
  %8 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm6, align 8
  %next_out = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %8, i32 0, i32 4
  %9 = load i8*, i8** %next_out, align 8
  store i8 %6, i8* %9, align 1
  %10 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len7 = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 3
  %11 = load i32, i32* %state_out_len7, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %state_out_len7, align 4
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm8 = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 0
  %13 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm8, align 8
  %next_out9 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %13, i32 0, i32 4
  %14 = load i8*, i8** %next_out9, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %next_out9, align 8
  %15 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm10 = getelementptr inbounds %struct.DState, %struct.DState* %15, i32 0, i32 0
  %16 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm10, align 8
  %avail_out11 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %16, i32 0, i32 5
  %17 = load i32, i32* %avail_out11, align 4
  %dec12 = add i32 %17, -1
  store i32 %dec12, i32* %avail_out11, align 4
  %18 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm13 = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 0
  %19 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm13, align 8
  %total_out_lo32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %19, i32 0, i32 6
  %20 = load i32, i32* %total_out_lo32, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %total_out_lo32, align 4
  %21 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm14 = getelementptr inbounds %struct.DState, %struct.DState* %21, i32 0, i32 0
  %22 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm14, align 8
  %total_out_lo3215 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %22, i32 0, i32 6
  %23 = load i32, i32* %total_out_lo3215, align 4
  %cmp16 = icmp eq i32 %23, 0
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.5
  %24 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm18 = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 0
  %25 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm18, align 8
  %total_out_hi32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %25, i32 0, i32 7
  %26 = load i32, i32* %total_out_hi32, align 4
  %inc19 = add i32 %26, 1
  store i32 %inc19, i32* %total_out_hi32, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.5
  br label %while.body.2

while.end:                                        ; preds = %if.then.4
  %27 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %27, i32 0, i32 17
  %28 = load i32, i32* %nblock_used, align 4
  %29 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %29, i32 0, i32 51
  %30 = load i32, i32* %save_nblock, align 4
  %add = add nsw i32 %30, 1
  %cmp21 = icmp eq i32 %28, %add
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.end
  store i8 0, i8* %retval
  br label %return

if.end.23:                                        ; preds = %while.end
  %31 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used24 = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 17
  %32 = load i32, i32* %nblock_used24, align 4
  %33 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock25 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 51
  %34 = load i32, i32* %save_nblock25, align 4
  %add26 = add nsw i32 %34, 1
  %cmp27 = icmp sgt i32 %32, %add26
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  store i8 1, i8* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.23
  %35 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len30 = getelementptr inbounds %struct.DState, %struct.DState* %35, i32 0, i32 3
  store i32 1, i32* %state_out_len30, align 4
  %36 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %36, i32 0, i32 15
  %37 = load i32, i32* %k0, align 4
  %conv = trunc i32 %37 to i8
  %38 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch31 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 2
  store i8 %conv, i8* %state_out_ch31, align 1
  %39 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 14
  %40 = load i32, i32* %tPos, align 4
  %41 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], [257 x i32]* %cftab, i32 0, i32 0
  %call = call i32 @indexIntoF(i32 %40, i32* %arraydecay)
  %conv32 = trunc i32 %call to i8
  store i8 %conv32, i8* %k1, align 1
  %42 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos33 = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 14
  %43 = load i32, i32* %tPos33, align 4
  %idxprom = zext i32 %43 to i64
  %44 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %44, i32 0, i32 21
  %45 = load i16*, i16** %ll16, align 8
  %arrayidx = getelementptr inbounds i16, i16* %45, i64 %idxprom
  %46 = load i16, i16* %arrayidx, align 2
  %conv34 = zext i16 %46 to i32
  %47 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos35 = getelementptr inbounds %struct.DState, %struct.DState* %47, i32 0, i32 14
  %48 = load i32, i32* %tPos35, align 4
  %shr = lshr i32 %48, 1
  %idxprom36 = zext i32 %shr to i64
  %49 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 22
  %50 = load i8*, i8** %ll4, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %50, i64 %idxprom36
  %51 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %51 to i32
  %52 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos39 = getelementptr inbounds %struct.DState, %struct.DState* %52, i32 0, i32 14
  %53 = load i32, i32* %tPos39, align 4
  %shl = shl i32 %53, 2
  %and = and i32 %shl, 4
  %shr40 = lshr i32 %conv38, %and
  %and41 = and i32 %shr40, 15
  %shl42 = shl i32 %and41, 16
  %or = or i32 %conv34, %shl42
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos43 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 14
  store i32 %or, i32* %tPos43, align 4
  %55 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used44 = getelementptr inbounds %struct.DState, %struct.DState* %55, i32 0, i32 17
  %56 = load i32, i32* %nblock_used44, align 4
  %inc45 = add nsw i32 %56, 1
  store i32 %inc45, i32* %nblock_used44, align 4
  %57 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used46 = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 17
  %58 = load i32, i32* %nblock_used46, align 4
  %59 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock47 = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 51
  %60 = load i32, i32* %save_nblock47, align 4
  %add48 = add nsw i32 %60, 1
  %cmp49 = icmp eq i32 %58, %add48
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.29
  br label %while.body

if.end.52:                                        ; preds = %if.end.29
  %61 = load i8, i8* %k1, align 1
  %conv53 = zext i8 %61 to i32
  %62 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k054 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 15
  %63 = load i32, i32* %k054, align 4
  %cmp55 = icmp ne i32 %conv53, %63
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.52
  %64 = load i8, i8* %k1, align 1
  %conv58 = zext i8 %64 to i32
  %65 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k059 = getelementptr inbounds %struct.DState, %struct.DState* %65, i32 0, i32 15
  store i32 %conv58, i32* %k059, align 4
  br label %while.body

if.end.60:                                        ; preds = %if.end.52
  %66 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len61 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 3
  store i32 2, i32* %state_out_len61, align 4
  %67 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos62 = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 14
  %68 = load i32, i32* %tPos62, align 4
  %69 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab63 = getelementptr inbounds %struct.DState, %struct.DState* %69, i32 0, i32 18
  %arraydecay64 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab63, i32 0, i32 0
  %call65 = call i32 @indexIntoF(i32 %68, i32* %arraydecay64)
  %conv66 = trunc i32 %call65 to i8
  store i8 %conv66, i8* %k1, align 1
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos67 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 14
  %71 = load i32, i32* %tPos67, align 4
  %idxprom68 = zext i32 %71 to i64
  %72 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll1669 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 21
  %73 = load i16*, i16** %ll1669, align 8
  %arrayidx70 = getelementptr inbounds i16, i16* %73, i64 %idxprom68
  %74 = load i16, i16* %arrayidx70, align 2
  %conv71 = zext i16 %74 to i32
  %75 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos72 = getelementptr inbounds %struct.DState, %struct.DState* %75, i32 0, i32 14
  %76 = load i32, i32* %tPos72, align 4
  %shr73 = lshr i32 %76, 1
  %idxprom74 = zext i32 %shr73 to i64
  %77 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll475 = getelementptr inbounds %struct.DState, %struct.DState* %77, i32 0, i32 22
  %78 = load i8*, i8** %ll475, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %78, i64 %idxprom74
  %79 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %79 to i32
  %80 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos78 = getelementptr inbounds %struct.DState, %struct.DState* %80, i32 0, i32 14
  %81 = load i32, i32* %tPos78, align 4
  %shl79 = shl i32 %81, 2
  %and80 = and i32 %shl79, 4
  %shr81 = lshr i32 %conv77, %and80
  %and82 = and i32 %shr81, 15
  %shl83 = shl i32 %and82, 16
  %or84 = or i32 %conv71, %shl83
  %82 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos85 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 14
  store i32 %or84, i32* %tPos85, align 4
  %83 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used86 = getelementptr inbounds %struct.DState, %struct.DState* %83, i32 0, i32 17
  %84 = load i32, i32* %nblock_used86, align 4
  %inc87 = add nsw i32 %84, 1
  store i32 %inc87, i32* %nblock_used86, align 4
  %85 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used88 = getelementptr inbounds %struct.DState, %struct.DState* %85, i32 0, i32 17
  %86 = load i32, i32* %nblock_used88, align 4
  %87 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock89 = getelementptr inbounds %struct.DState, %struct.DState* %87, i32 0, i32 51
  %88 = load i32, i32* %save_nblock89, align 4
  %add90 = add nsw i32 %88, 1
  %cmp91 = icmp eq i32 %86, %add90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.60
  br label %while.body

if.end.94:                                        ; preds = %if.end.60
  %89 = load i8, i8* %k1, align 1
  %conv95 = zext i8 %89 to i32
  %90 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k096 = getelementptr inbounds %struct.DState, %struct.DState* %90, i32 0, i32 15
  %91 = load i32, i32* %k096, align 4
  %cmp97 = icmp ne i32 %conv95, %91
  br i1 %cmp97, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %if.end.94
  %92 = load i8, i8* %k1, align 1
  %conv100 = zext i8 %92 to i32
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0101 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 15
  store i32 %conv100, i32* %k0101, align 4
  br label %while.body

if.end.102:                                       ; preds = %if.end.94
  %94 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len103 = getelementptr inbounds %struct.DState, %struct.DState* %94, i32 0, i32 3
  store i32 3, i32* %state_out_len103, align 4
  %95 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos104 = getelementptr inbounds %struct.DState, %struct.DState* %95, i32 0, i32 14
  %96 = load i32, i32* %tPos104, align 4
  %97 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab105 = getelementptr inbounds %struct.DState, %struct.DState* %97, i32 0, i32 18
  %arraydecay106 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab105, i32 0, i32 0
  %call107 = call i32 @indexIntoF(i32 %96, i32* %arraydecay106)
  %conv108 = trunc i32 %call107 to i8
  store i8 %conv108, i8* %k1, align 1
  %98 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos109 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 14
  %99 = load i32, i32* %tPos109, align 4
  %idxprom110 = zext i32 %99 to i64
  %100 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16111 = getelementptr inbounds %struct.DState, %struct.DState* %100, i32 0, i32 21
  %101 = load i16*, i16** %ll16111, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %101, i64 %idxprom110
  %102 = load i16, i16* %arrayidx112, align 2
  %conv113 = zext i16 %102 to i32
  %103 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos114 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 14
  %104 = load i32, i32* %tPos114, align 4
  %shr115 = lshr i32 %104, 1
  %idxprom116 = zext i32 %shr115 to i64
  %105 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4117 = getelementptr inbounds %struct.DState, %struct.DState* %105, i32 0, i32 22
  %106 = load i8*, i8** %ll4117, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %106, i64 %idxprom116
  %107 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %107 to i32
  %108 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos120 = getelementptr inbounds %struct.DState, %struct.DState* %108, i32 0, i32 14
  %109 = load i32, i32* %tPos120, align 4
  %shl121 = shl i32 %109, 2
  %and122 = and i32 %shl121, 4
  %shr123 = lshr i32 %conv119, %and122
  %and124 = and i32 %shr123, 15
  %shl125 = shl i32 %and124, 16
  %or126 = or i32 %conv113, %shl125
  %110 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos127 = getelementptr inbounds %struct.DState, %struct.DState* %110, i32 0, i32 14
  store i32 %or126, i32* %tPos127, align 4
  %111 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used128 = getelementptr inbounds %struct.DState, %struct.DState* %111, i32 0, i32 17
  %112 = load i32, i32* %nblock_used128, align 4
  %inc129 = add nsw i32 %112, 1
  store i32 %inc129, i32* %nblock_used128, align 4
  %113 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used130 = getelementptr inbounds %struct.DState, %struct.DState* %113, i32 0, i32 17
  %114 = load i32, i32* %nblock_used130, align 4
  %115 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock131 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 51
  %116 = load i32, i32* %save_nblock131, align 4
  %add132 = add nsw i32 %116, 1
  %cmp133 = icmp eq i32 %114, %add132
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.102
  br label %while.body

if.end.136:                                       ; preds = %if.end.102
  %117 = load i8, i8* %k1, align 1
  %conv137 = zext i8 %117 to i32
  %118 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0138 = getelementptr inbounds %struct.DState, %struct.DState* %118, i32 0, i32 15
  %119 = load i32, i32* %k0138, align 4
  %cmp139 = icmp ne i32 %conv137, %119
  br i1 %cmp139, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %if.end.136
  %120 = load i8, i8* %k1, align 1
  %conv142 = zext i8 %120 to i32
  %121 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0143 = getelementptr inbounds %struct.DState, %struct.DState* %121, i32 0, i32 15
  store i32 %conv142, i32* %k0143, align 4
  br label %while.body

if.end.144:                                       ; preds = %if.end.136
  %122 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos145 = getelementptr inbounds %struct.DState, %struct.DState* %122, i32 0, i32 14
  %123 = load i32, i32* %tPos145, align 4
  %124 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab146 = getelementptr inbounds %struct.DState, %struct.DState* %124, i32 0, i32 18
  %arraydecay147 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab146, i32 0, i32 0
  %call148 = call i32 @indexIntoF(i32 %123, i32* %arraydecay147)
  %conv149 = trunc i32 %call148 to i8
  store i8 %conv149, i8* %k1, align 1
  %125 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos150 = getelementptr inbounds %struct.DState, %struct.DState* %125, i32 0, i32 14
  %126 = load i32, i32* %tPos150, align 4
  %idxprom151 = zext i32 %126 to i64
  %127 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16152 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 21
  %128 = load i16*, i16** %ll16152, align 8
  %arrayidx153 = getelementptr inbounds i16, i16* %128, i64 %idxprom151
  %129 = load i16, i16* %arrayidx153, align 2
  %conv154 = zext i16 %129 to i32
  %130 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos155 = getelementptr inbounds %struct.DState, %struct.DState* %130, i32 0, i32 14
  %131 = load i32, i32* %tPos155, align 4
  %shr156 = lshr i32 %131, 1
  %idxprom157 = zext i32 %shr156 to i64
  %132 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4158 = getelementptr inbounds %struct.DState, %struct.DState* %132, i32 0, i32 22
  %133 = load i8*, i8** %ll4158, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %133, i64 %idxprom157
  %134 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %134 to i32
  %135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos161 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 14
  %136 = load i32, i32* %tPos161, align 4
  %shl162 = shl i32 %136, 2
  %and163 = and i32 %shl162, 4
  %shr164 = lshr i32 %conv160, %and163
  %and165 = and i32 %shr164, 15
  %shl166 = shl i32 %and165, 16
  %or167 = or i32 %conv154, %shl166
  %137 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos168 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 14
  store i32 %or167, i32* %tPos168, align 4
  %138 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used169 = getelementptr inbounds %struct.DState, %struct.DState* %138, i32 0, i32 17
  %139 = load i32, i32* %nblock_used169, align 4
  %inc170 = add nsw i32 %139, 1
  store i32 %inc170, i32* %nblock_used169, align 4
  %140 = load i8, i8* %k1, align 1
  %conv171 = zext i8 %140 to i32
  %add172 = add nsw i32 %conv171, 4
  %141 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len173 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 3
  store i32 %add172, i32* %state_out_len173, align 4
  %142 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos174 = getelementptr inbounds %struct.DState, %struct.DState* %142, i32 0, i32 14
  %143 = load i32, i32* %tPos174, align 4
  %144 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab175 = getelementptr inbounds %struct.DState, %struct.DState* %144, i32 0, i32 18
  %arraydecay176 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab175, i32 0, i32 0
  %call177 = call i32 @indexIntoF(i32 %143, i32* %arraydecay176)
  %145 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0178 = getelementptr inbounds %struct.DState, %struct.DState* %145, i32 0, i32 15
  store i32 %call177, i32* %k0178, align 4
  %146 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos179 = getelementptr inbounds %struct.DState, %struct.DState* %146, i32 0, i32 14
  %147 = load i32, i32* %tPos179, align 4
  %idxprom180 = zext i32 %147 to i64
  %148 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16181 = getelementptr inbounds %struct.DState, %struct.DState* %148, i32 0, i32 21
  %149 = load i16*, i16** %ll16181, align 8
  %arrayidx182 = getelementptr inbounds i16, i16* %149, i64 %idxprom180
  %150 = load i16, i16* %arrayidx182, align 2
  %conv183 = zext i16 %150 to i32
  %151 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos184 = getelementptr inbounds %struct.DState, %struct.DState* %151, i32 0, i32 14
  %152 = load i32, i32* %tPos184, align 4
  %shr185 = lshr i32 %152, 1
  %idxprom186 = zext i32 %shr185 to i64
  %153 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4187 = getelementptr inbounds %struct.DState, %struct.DState* %153, i32 0, i32 22
  %154 = load i8*, i8** %ll4187, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %154, i64 %idxprom186
  %155 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %155 to i32
  %156 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos190 = getelementptr inbounds %struct.DState, %struct.DState* %156, i32 0, i32 14
  %157 = load i32, i32* %tPos190, align 4
  %shl191 = shl i32 %157, 2
  %and192 = and i32 %shl191, 4
  %shr193 = lshr i32 %conv189, %and192
  %and194 = and i32 %shr193, 15
  %shl195 = shl i32 %and194, 16
  %or196 = or i32 %conv183, %shl195
  %158 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos197 = getelementptr inbounds %struct.DState, %struct.DState* %158, i32 0, i32 14
  store i32 %or196, i32* %tPos197, align 4
  %159 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used198 = getelementptr inbounds %struct.DState, %struct.DState* %159, i32 0, i32 17
  %160 = load i32, i32* %nblock_used198, align 4
  %inc199 = add nsw i32 %160, 1
  store i32 %inc199, i32* %nblock_used198, align 4
  br label %while.body

return:                                           ; preds = %if.then.28, %if.then.22, %if.then
  %161 = load i8, i8* %retval
  ret i8 %161
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.DState*, align 8
  %k1 = alloca i8, align 1
  %c_calculatedBlockCRC = alloca i32, align 4
  %c_state_out_ch = alloca i8, align 1
  %c_state_out_len = alloca i32, align 4
  %c_nblock_used = alloca i32, align 4
  %c_k0 = alloca i32, align 4
  %c_tt = alloca i32*, align 8
  %c_tPos = alloca i32, align 4
  %cs_next_out = alloca i8*, align 8
  %cs_avail_out = alloca i32, align 4
  %avail_out_INIT = alloca i32, align 4
  %s_save_nblockPP = alloca i32, align 4
  %total_out_lo32_old = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 25
  %1 = load i32, i32* %calculatedBlockCRC, align 4
  store i32 %1, i32* %c_calculatedBlockCRC, align 4
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 2
  %3 = load i8, i8* %state_out_ch, align 1
  store i8 %3, i8* %c_state_out_ch, align 1
  %4 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %4, i32 0, i32 3
  %5 = load i32, i32* %state_out_len, align 4
  store i32 %5, i32* %c_state_out_len, align 4
  %6 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %6, i32 0, i32 17
  %7 = load i32, i32* %nblock_used, align 4
  store i32 %7, i32* %c_nblock_used, align 4
  %8 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 15
  %9 = load i32, i32* %k0, align 4
  store i32 %9, i32* %c_k0, align 4
  %10 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 20
  %11 = load i32*, i32** %tt, align 8
  store i32* %11, i32** %c_tt, align 8
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 14
  %13 = load i32, i32* %tPos, align 4
  store i32 %13, i32* %c_tPos, align 4
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 0
  %15 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm, align 8
  %next_out = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %15, i32 0, i32 4
  %16 = load i8*, i8** %next_out, align 8
  store i8* %16, i8** %cs_next_out, align 8
  %17 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1 = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 0
  %18 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1, align 8
  %avail_out = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %18, i32 0, i32 5
  %19 = load i32, i32* %avail_out, align 4
  store i32 %19, i32* %cs_avail_out, align 4
  %20 = load i32, i32* %cs_avail_out, align 4
  store i32 %20, i32* %avail_out_INIT, align 4
  %21 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %21, i32 0, i32 51
  %22 = load i32, i32* %save_nblock, align 4
  %add = add nsw i32 %22, 1
  store i32 %add, i32* %s_save_nblockPP, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.then.51, %if.then.56, %if.then.73, %if.then.78, %if.end.100
  %23 = load i32, i32* %c_state_out_len, align 4
  %cmp = icmp sgt i32 %23, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %while.body
  br label %while.body.3

while.body.3:                                     ; preds = %if.then, %if.end.8
  %24 = load i32, i32* %cs_avail_out, align 4
  %cmp4 = icmp eq i32 %24, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.body.3
  br label %return_notr

if.end:                                           ; preds = %while.body.3
  %25 = load i32, i32* %c_state_out_len, align 4
  %cmp6 = icmp eq i32 %25, 1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %while.end

if.end.8:                                         ; preds = %if.end
  %26 = load i8, i8* %c_state_out_ch, align 1
  %27 = load i8*, i8** %cs_next_out, align 8
  store i8 %26, i8* %27, align 1
  %28 = load i32, i32* %c_state_out_len, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %c_state_out_len, align 4
  %29 = load i8*, i8** %cs_next_out, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %cs_next_out, align 8
  %30 = load i32, i32* %cs_avail_out, align 4
  %dec9 = add i32 %30, -1
  store i32 %dec9, i32* %cs_avail_out, align 4
  br label %while.body.3

while.end:                                        ; preds = %if.then.7
  br label %s_state_out_len_eq_one

s_state_out_len_eq_one:                           ; preds = %if.then.35, %if.then.30, %while.end
  %31 = load i32, i32* %cs_avail_out, align 4
  %cmp10 = icmp eq i32 %31, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %s_state_out_len_eq_one
  store i32 1, i32* %c_state_out_len, align 4
  br label %return_notr

if.end.12:                                        ; preds = %s_state_out_len_eq_one
  %32 = load i8, i8* %c_state_out_ch, align 1
  %33 = load i8*, i8** %cs_next_out, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8*, i8** %cs_next_out, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr13, i8** %cs_next_out, align 8
  %35 = load i32, i32* %cs_avail_out, align 4
  %dec14 = add i32 %35, -1
  store i32 %dec14, i32* %cs_avail_out, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.12, %while.body
  %36 = load i32, i32* %c_nblock_used, align 4
  %37 = load i32, i32* %s_save_nblockPP, align 4
  %cmp16 = icmp sgt i32 %36, %37
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store i8 1, i8* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.15
  %38 = load i32, i32* %c_nblock_used, align 4
  %39 = load i32, i32* %s_save_nblockPP, align 4
  %cmp19 = icmp eq i32 %38, %39
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  store i32 0, i32* %c_state_out_len, align 4
  br label %return_notr

if.end.21:                                        ; preds = %if.end.18
  %40 = load i32, i32* %c_k0, align 4
  %conv = trunc i32 %40 to i8
  store i8 %conv, i8* %c_state_out_ch, align 1
  %41 = load i32, i32* %c_tPos, align 4
  %42 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 9
  %43 = load i32, i32* %blockSize100k, align 4
  %mul = mul nsw i32 %43, 100000
  %cmp22 = icmp uge i32 %41, %mul
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store i8 1, i8* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  %44 = load i32, i32* %c_tPos, align 4
  %idxprom = zext i32 %44 to i64
  %45 = load i32*, i32** %c_tt, align 8
  %arrayidx = getelementptr inbounds i32, i32* %45, i64 %idxprom
  %46 = load i32, i32* %arrayidx, align 4
  store i32 %46, i32* %c_tPos, align 4
  %47 = load i32, i32* %c_tPos, align 4
  %and = and i32 %47, 255
  %conv26 = trunc i32 %and to i8
  store i8 %conv26, i8* %k1, align 1
  %48 = load i32, i32* %c_tPos, align 4
  %shr = lshr i32 %48, 8
  store i32 %shr, i32* %c_tPos, align 4
  %49 = load i32, i32* %c_nblock_used, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %c_nblock_used, align 4
  %50 = load i8, i8* %k1, align 1
  %conv27 = zext i8 %50 to i32
  %51 = load i32, i32* %c_k0, align 4
  %cmp28 = icmp ne i32 %conv27, %51
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.25
  %52 = load i8, i8* %k1, align 1
  %conv31 = zext i8 %52 to i32
  store i32 %conv31, i32* %c_k0, align 4
  br label %s_state_out_len_eq_one

if.end.32:                                        ; preds = %if.end.25
  %53 = load i32, i32* %c_nblock_used, align 4
  %54 = load i32, i32* %s_save_nblockPP, align 4
  %cmp33 = icmp eq i32 %53, %54
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  br label %s_state_out_len_eq_one

if.end.36:                                        ; preds = %if.end.32
  store i32 2, i32* %c_state_out_len, align 4
  %55 = load i32, i32* %c_tPos, align 4
  %56 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k37 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 9
  %57 = load i32, i32* %blockSize100k37, align 4
  %mul38 = mul nsw i32 %57, 100000
  %cmp39 = icmp uge i32 %55, %mul38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.36
  store i8 1, i8* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.36
  %58 = load i32, i32* %c_tPos, align 4
  %idxprom43 = zext i32 %58 to i64
  %59 = load i32*, i32** %c_tt, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %59, i64 %idxprom43
  %60 = load i32, i32* %arrayidx44, align 4
  store i32 %60, i32* %c_tPos, align 4
  %61 = load i32, i32* %c_tPos, align 4
  %and45 = and i32 %61, 255
  %conv46 = trunc i32 %and45 to i8
  store i8 %conv46, i8* %k1, align 1
  %62 = load i32, i32* %c_tPos, align 4
  %shr47 = lshr i32 %62, 8
  store i32 %shr47, i32* %c_tPos, align 4
  %63 = load i32, i32* %c_nblock_used, align 4
  %inc48 = add nsw i32 %63, 1
  store i32 %inc48, i32* %c_nblock_used, align 4
  %64 = load i32, i32* %c_nblock_used, align 4
  %65 = load i32, i32* %s_save_nblockPP, align 4
  %cmp49 = icmp eq i32 %64, %65
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.42
  br label %while.body

if.end.52:                                        ; preds = %if.end.42
  %66 = load i8, i8* %k1, align 1
  %conv53 = zext i8 %66 to i32
  %67 = load i32, i32* %c_k0, align 4
  %cmp54 = icmp ne i32 %conv53, %67
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.52
  %68 = load i8, i8* %k1, align 1
  %conv57 = zext i8 %68 to i32
  store i32 %conv57, i32* %c_k0, align 4
  br label %while.body

if.end.58:                                        ; preds = %if.end.52
  store i32 3, i32* %c_state_out_len, align 4
  %69 = load i32, i32* %c_tPos, align 4
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k59 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 9
  %71 = load i32, i32* %blockSize100k59, align 4
  %mul60 = mul nsw i32 %71, 100000
  %cmp61 = icmp uge i32 %69, %mul60
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.58
  store i8 1, i8* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.58
  %72 = load i32, i32* %c_tPos, align 4
  %idxprom65 = zext i32 %72 to i64
  %73 = load i32*, i32** %c_tt, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %73, i64 %idxprom65
  %74 = load i32, i32* %arrayidx66, align 4
  store i32 %74, i32* %c_tPos, align 4
  %75 = load i32, i32* %c_tPos, align 4
  %and67 = and i32 %75, 255
  %conv68 = trunc i32 %and67 to i8
  store i8 %conv68, i8* %k1, align 1
  %76 = load i32, i32* %c_tPos, align 4
  %shr69 = lshr i32 %76, 8
  store i32 %shr69, i32* %c_tPos, align 4
  %77 = load i32, i32* %c_nblock_used, align 4
  %inc70 = add nsw i32 %77, 1
  store i32 %inc70, i32* %c_nblock_used, align 4
  %78 = load i32, i32* %c_nblock_used, align 4
  %79 = load i32, i32* %s_save_nblockPP, align 4
  %cmp71 = icmp eq i32 %78, %79
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.64
  br label %while.body

if.end.74:                                        ; preds = %if.end.64
  %80 = load i8, i8* %k1, align 1
  %conv75 = zext i8 %80 to i32
  %81 = load i32, i32* %c_k0, align 4
  %cmp76 = icmp ne i32 %conv75, %81
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.74
  %82 = load i8, i8* %k1, align 1
  %conv79 = zext i8 %82 to i32
  store i32 %conv79, i32* %c_k0, align 4
  br label %while.body

if.end.80:                                        ; preds = %if.end.74
  %83 = load i32, i32* %c_tPos, align 4
  %84 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k81 = getelementptr inbounds %struct.DState, %struct.DState* %84, i32 0, i32 9
  %85 = load i32, i32* %blockSize100k81, align 4
  %mul82 = mul nsw i32 %85, 100000
  %cmp83 = icmp uge i32 %83, %mul82
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.80
  store i8 1, i8* %retval
  br label %return

if.end.86:                                        ; preds = %if.end.80
  %86 = load i32, i32* %c_tPos, align 4
  %idxprom87 = zext i32 %86 to i64
  %87 = load i32*, i32** %c_tt, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %87, i64 %idxprom87
  %88 = load i32, i32* %arrayidx88, align 4
  store i32 %88, i32* %c_tPos, align 4
  %89 = load i32, i32* %c_tPos, align 4
  %and89 = and i32 %89, 255
  %conv90 = trunc i32 %and89 to i8
  store i8 %conv90, i8* %k1, align 1
  %90 = load i32, i32* %c_tPos, align 4
  %shr91 = lshr i32 %90, 8
  store i32 %shr91, i32* %c_tPos, align 4
  %91 = load i32, i32* %c_nblock_used, align 4
  %inc92 = add nsw i32 %91, 1
  store i32 %inc92, i32* %c_nblock_used, align 4
  %92 = load i8, i8* %k1, align 1
  %conv93 = zext i8 %92 to i32
  %add94 = add nsw i32 %conv93, 4
  store i32 %add94, i32* %c_state_out_len, align 4
  %93 = load i32, i32* %c_tPos, align 4
  %94 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k95 = getelementptr inbounds %struct.DState, %struct.DState* %94, i32 0, i32 9
  %95 = load i32, i32* %blockSize100k95, align 4
  %mul96 = mul nsw i32 %95, 100000
  %cmp97 = icmp uge i32 %93, %mul96
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.86
  store i8 1, i8* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.86
  %96 = load i32, i32* %c_tPos, align 4
  %idxprom101 = zext i32 %96 to i64
  %97 = load i32*, i32** %c_tt, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %97, i64 %idxprom101
  %98 = load i32, i32* %arrayidx102, align 4
  store i32 %98, i32* %c_tPos, align 4
  %99 = load i32, i32* %c_tPos, align 4
  %and103 = and i32 %99, 255
  %conv104 = trunc i32 %and103 to i8
  %conv105 = zext i8 %conv104 to i32
  store i32 %conv105, i32* %c_k0, align 4
  %100 = load i32, i32* %c_tPos, align 4
  %shr106 = lshr i32 %100, 8
  store i32 %shr106, i32* %c_tPos, align 4
  %101 = load i32, i32* %c_nblock_used, align 4
  %inc107 = add nsw i32 %101, 1
  store i32 %inc107, i32* %c_nblock_used, align 4
  br label %while.body

return_notr:                                      ; preds = %if.then.20, %if.then.11, %if.then.5
  %102 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm108 = getelementptr inbounds %struct.DState, %struct.DState* %102, i32 0, i32 0
  %103 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm108, align 8
  %total_out_lo32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %103, i32 0, i32 6
  %104 = load i32, i32* %total_out_lo32, align 4
  store i32 %104, i32* %total_out_lo32_old, align 4
  %105 = load i32, i32* %avail_out_INIT, align 4
  %106 = load i32, i32* %cs_avail_out, align 4
  %sub = sub i32 %105, %106
  %107 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm109 = getelementptr inbounds %struct.DState, %struct.DState* %107, i32 0, i32 0
  %108 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm109, align 8
  %total_out_lo32110 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %108, i32 0, i32 6
  %109 = load i32, i32* %total_out_lo32110, align 4
  %add111 = add i32 %109, %sub
  store i32 %add111, i32* %total_out_lo32110, align 4
  %110 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm112 = getelementptr inbounds %struct.DState, %struct.DState* %110, i32 0, i32 0
  %111 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm112, align 8
  %total_out_lo32113 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %111, i32 0, i32 6
  %112 = load i32, i32* %total_out_lo32113, align 4
  %113 = load i32, i32* %total_out_lo32_old, align 4
  %cmp114 = icmp ult i32 %112, %113
  br i1 %cmp114, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %return_notr
  %114 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm117 = getelementptr inbounds %struct.DState, %struct.DState* %114, i32 0, i32 0
  %115 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm117, align 8
  %total_out_hi32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %115, i32 0, i32 7
  %116 = load i32, i32* %total_out_hi32, align 4
  %inc118 = add i32 %116, 1
  store i32 %inc118, i32* %total_out_hi32, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %return_notr
  %117 = load i32, i32* %c_calculatedBlockCRC, align 4
  %118 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC120 = getelementptr inbounds %struct.DState, %struct.DState* %118, i32 0, i32 25
  store i32 %117, i32* %calculatedBlockCRC120, align 4
  %119 = load i8, i8* %c_state_out_ch, align 1
  %120 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch121 = getelementptr inbounds %struct.DState, %struct.DState* %120, i32 0, i32 2
  store i8 %119, i8* %state_out_ch121, align 1
  %121 = load i32, i32* %c_state_out_len, align 4
  %122 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len122 = getelementptr inbounds %struct.DState, %struct.DState* %122, i32 0, i32 3
  store i32 %121, i32* %state_out_len122, align 4
  %123 = load i32, i32* %c_nblock_used, align 4
  %124 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used123 = getelementptr inbounds %struct.DState, %struct.DState* %124, i32 0, i32 17
  store i32 %123, i32* %nblock_used123, align 4
  %125 = load i32, i32* %c_k0, align 4
  %126 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0124 = getelementptr inbounds %struct.DState, %struct.DState* %126, i32 0, i32 15
  store i32 %125, i32* %k0124, align 4
  %127 = load i32*, i32** %c_tt, align 8
  %128 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt125 = getelementptr inbounds %struct.DState, %struct.DState* %128, i32 0, i32 20
  store i32* %127, i32** %tt125, align 8
  %129 = load i32, i32* %c_tPos, align 4
  %130 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos126 = getelementptr inbounds %struct.DState, %struct.DState* %130, i32 0, i32 14
  store i32 %129, i32* %tPos126, align 4
  %131 = load i8*, i8** %cs_next_out, align 8
  %132 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm127 = getelementptr inbounds %struct.DState, %struct.DState* %132, i32 0, i32 0
  %133 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm127, align 8
  %next_out128 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %133, i32 0, i32 4
  store i8* %131, i8** %next_out128, align 8
  %134 = load i32, i32* %cs_avail_out, align 4
  %135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm129 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 0
  %136 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm129, align 8
  %avail_out130 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %136, i32 0, i32 5
  store i32 %134, i32* %avail_out130, align 4
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end.119, %if.then.99, %if.then.85, %if.then.63, %if.then.41, %if.then.24, %if.then.17
  %137 = load i8, i8* %retval
  ret i8 %137
}

; Function Attrs: nounwind uwtable
define internal i32 @BZ2_decompress(%struct.DState* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.DState*, align 8
  %uc = alloca i8, align 1
  %retVal = alloca i32, align 4
  %minLen = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %strm = alloca %struct.nsis_bzstream*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %alphaSize = alloca i32, align 4
  %nGroups = alloca i32, align 4
  %nSelectors = alloca i32, align 4
  %EOB = alloca i32, align 4
  %groupNo = alloca i32, align 4
  %groupPos = alloca i32, align 4
  %nextSym = alloca i32, align 4
  %nblockMAX = alloca i32, align 4
  %nblock = alloca i32, align 4
  %es = alloca i32, align 4
  %N = alloca i32, align 4
  %curr = alloca i32, align 4
  %zt = alloca i32, align 4
  %zn = alloca i32, align 4
  %zvec = alloca i32, align 4
  %zj = alloca i32, align 4
  %gSel = alloca i32, align 4
  %gMinlen = alloca i32, align 4
  %gLimit = alloca i32*, align 8
  %gBase = alloca i32*, align 8
  %gPerm = alloca i32*, align 8
  %v = alloca i32, align 4
  %v113 = alloca i32, align 4
  %v169 = alloca i32, align 4
  %v225 = alloca i32, align 4
  %v296 = alloca i32, align 4
  %v379 = alloca i32, align 4
  %v453 = alloca i32, align 4
  %v510 = alloca i32, align 4
  %v570 = alloca i32, align 4
  %pos = alloca [6 x i8], align 1
  %tmp = alloca i8, align 1
  %v632 = alloca i8, align 1
  %v683 = alloca i32, align 4
  %v748 = alloca i32, align 4
  %v806 = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %v1008 = alloca i32, align 4
  %v1075 = alloca i32, align 4
  %v1203 = alloca i32, align 4
  %v1270 = alloca i32, align 4
  %ii1391 = alloca i32, align 4
  %jj1393 = alloca i32, align 4
  %kk1395 = alloca i32, align 4
  %pp = alloca i32, align 4
  %lno = alloca i32, align 4
  %off = alloca i32, align 4
  %nn = alloca i32, align 4
  %z = alloca i32, align 4
  %v1629 = alloca i32, align 4
  %v1696 = alloca i32, align 4
  %tmp1923 = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1 = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 0
  %1 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1, align 8
  store %struct.nsis_bzstream* %1, %struct.nsis_bzstream** %strm, align 8
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 1
  %3 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_i = getelementptr inbounds %struct.DState, %struct.DState* %4, i32 0, i32 40
  store i32 0, i32* %save_i, align 4
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_j = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 41
  store i32 0, i32* %save_j, align 4
  %6 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_t = getelementptr inbounds %struct.DState, %struct.DState* %6, i32 0, i32 42
  store i32 0, i32* %save_t, align 4
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_alphaSize = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 43
  store i32 0, i32* %save_alphaSize, align 4
  %8 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nGroups = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 44
  store i32 0, i32* %save_nGroups, align 4
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nSelectors = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 45
  store i32 0, i32* %save_nSelectors, align 4
  %10 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_EOB = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 46
  store i32 0, i32* %save_EOB, align 4
  %11 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupNo = getelementptr inbounds %struct.DState, %struct.DState* %11, i32 0, i32 47
  store i32 0, i32* %save_groupNo, align 4
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupPos = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 48
  store i32 0, i32* %save_groupPos, align 4
  %13 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nextSym = getelementptr inbounds %struct.DState, %struct.DState* %13, i32 0, i32 49
  store i32 0, i32* %save_nextSym, align 4
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblockMAX = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 50
  store i32 0, i32* %save_nblockMAX, align 4
  %15 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %15, i32 0, i32 51
  store i32 0, i32* %save_nblock, align 4
  %16 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_es = getelementptr inbounds %struct.DState, %struct.DState* %16, i32 0, i32 52
  store i32 0, i32* %save_es, align 4
  %17 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_N = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 53
  store i32 0, i32* %save_N, align 4
  %18 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_curr = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 54
  store i32 0, i32* %save_curr, align 4
  %19 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zt = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 55
  store i32 0, i32* %save_zt, align 4
  %20 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zn = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 56
  store i32 0, i32* %save_zn, align 4
  %21 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zvec = getelementptr inbounds %struct.DState, %struct.DState* %21, i32 0, i32 57
  store i32 0, i32* %save_zvec, align 4
  %22 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zj = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 58
  store i32 0, i32* %save_zj, align 4
  %23 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gSel = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 59
  store i32 0, i32* %save_gSel, align 4
  %24 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gMinlen = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 60
  store i32 0, i32* %save_gMinlen, align 4
  %25 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gLimit = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 61
  store i32* null, i32** %save_gLimit, align 8
  %26 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gBase = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 62
  store i32* null, i32** %save_gBase, align 8
  %27 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gPerm = getelementptr inbounds %struct.DState, %struct.DState* %27, i32 0, i32 63
  store i32* null, i32** %save_gPerm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_i2 = getelementptr inbounds %struct.DState, %struct.DState* %28, i32 0, i32 40
  %29 = load i32, i32* %save_i2, align 4
  store i32 %29, i32* %i, align 4
  %30 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_j3 = getelementptr inbounds %struct.DState, %struct.DState* %30, i32 0, i32 41
  %31 = load i32, i32* %save_j3, align 4
  store i32 %31, i32* %j, align 4
  %32 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_t4 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 42
  %33 = load i32, i32* %save_t4, align 4
  store i32 %33, i32* %t, align 4
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_alphaSize5 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 43
  %35 = load i32, i32* %save_alphaSize5, align 4
  store i32 %35, i32* %alphaSize, align 4
  %36 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nGroups6 = getelementptr inbounds %struct.DState, %struct.DState* %36, i32 0, i32 44
  %37 = load i32, i32* %save_nGroups6, align 4
  store i32 %37, i32* %nGroups, align 4
  %38 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nSelectors7 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 45
  %39 = load i32, i32* %save_nSelectors7, align 4
  store i32 %39, i32* %nSelectors, align 4
  %40 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_EOB8 = getelementptr inbounds %struct.DState, %struct.DState* %40, i32 0, i32 46
  %41 = load i32, i32* %save_EOB8, align 4
  store i32 %41, i32* %EOB, align 4
  %42 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupNo9 = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 47
  %43 = load i32, i32* %save_groupNo9, align 4
  store i32 %43, i32* %groupNo, align 4
  %44 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupPos10 = getelementptr inbounds %struct.DState, %struct.DState* %44, i32 0, i32 48
  %45 = load i32, i32* %save_groupPos10, align 4
  store i32 %45, i32* %groupPos, align 4
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nextSym11 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 49
  %47 = load i32, i32* %save_nextSym11, align 4
  store i32 %47, i32* %nextSym, align 4
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblockMAX12 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 50
  %49 = load i32, i32* %save_nblockMAX12, align 4
  store i32 %49, i32* %nblockMAX, align 4
  %50 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock13 = getelementptr inbounds %struct.DState, %struct.DState* %50, i32 0, i32 51
  %51 = load i32, i32* %save_nblock13, align 4
  store i32 %51, i32* %nblock, align 4
  %52 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_es14 = getelementptr inbounds %struct.DState, %struct.DState* %52, i32 0, i32 52
  %53 = load i32, i32* %save_es14, align 4
  store i32 %53, i32* %es, align 4
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_N15 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 53
  %55 = load i32, i32* %save_N15, align 4
  store i32 %55, i32* %N, align 4
  %56 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_curr16 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 54
  %57 = load i32, i32* %save_curr16, align 4
  store i32 %57, i32* %curr, align 4
  %58 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zt17 = getelementptr inbounds %struct.DState, %struct.DState* %58, i32 0, i32 55
  %59 = load i32, i32* %save_zt17, align 4
  store i32 %59, i32* %zt, align 4
  %60 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zn18 = getelementptr inbounds %struct.DState, %struct.DState* %60, i32 0, i32 56
  %61 = load i32, i32* %save_zn18, align 4
  store i32 %61, i32* %zn, align 4
  %62 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zvec19 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 57
  %63 = load i32, i32* %save_zvec19, align 4
  store i32 %63, i32* %zvec, align 4
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zj20 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 58
  %65 = load i32, i32* %save_zj20, align 4
  store i32 %65, i32* %zj, align 4
  %66 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gSel21 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 59
  %67 = load i32, i32* %save_gSel21, align 4
  store i32 %67, i32* %gSel, align 4
  %68 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gMinlen22 = getelementptr inbounds %struct.DState, %struct.DState* %68, i32 0, i32 60
  %69 = load i32, i32* %save_gMinlen22, align 4
  store i32 %69, i32* %gMinlen, align 4
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gLimit23 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 61
  %71 = load i32*, i32** %save_gLimit23, align 8
  store i32* %71, i32** %gLimit, align 8
  %72 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gBase24 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 62
  %73 = load i32*, i32** %save_gBase24, align 8
  store i32* %73, i32** %gBase, align 8
  %74 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gPerm25 = getelementptr inbounds %struct.DState, %struct.DState* %74, i32 0, i32 63
  %75 = load i32*, i32** %save_gPerm25, align 8
  store i32* %75, i32** %gPerm, align 8
  store i32 0, i32* %retVal, align 4
  %76 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state26 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 1
  %77 = load i32, i32* %state26, align 4
  switch i32 %77, label %sw.default [
    i32 10, label %sw.bb
    i32 14, label %sw.bb.61
    i32 25, label %sw.bb.106
    i32 26, label %sw.bb.162
    i32 27, label %sw.bb.218
    i32 28, label %sw.bb.289
    i32 29, label %sw.bb.372
    i32 30, label %sw.bb.446
    i32 31, label %sw.bb.503
    i32 32, label %sw.bb.562
    i32 33, label %sw.bb.674
    i32 34, label %sw.bb.739
    i32 35, label %sw.bb.797
    i32 36, label %sw.bb.999
    i32 37, label %sw.bb.1066
    i32 38, label %sw.bb.1194
    i32 39, label %sw.bb.1261
    i32 40, label %sw.bb.1620
    i32 41, label %sw.bb.1687
  ]

sw.bb:                                            ; preds = %if.end
  %78 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k = getelementptr inbounds %struct.DState, %struct.DState* %78, i32 0, i32 9
  store i32 9, i32* %blockSize100k, align 4
  %79 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %79, i32 0, i32 10
  %80 = load i8, i8* %smallDecompress, align 1
  %tobool = icmp ne i8 %80, 0
  br i1 %tobool, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %sw.bb
  %81 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm, align 8
  %bzalloc = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %81, i32 0, i32 9
  %82 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8
  %83 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm, align 8
  %opaque = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %83, i32 0, i32 11
  %84 = load i8*, i8** %opaque, align 8
  %85 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k28 = getelementptr inbounds %struct.DState, %struct.DState* %85, i32 0, i32 9
  %86 = load i32, i32* %blockSize100k28, align 4
  %mul = mul nsw i32 %86, 100000
  %conv = sext i32 %mul to i64
  %mul29 = mul i64 %conv, 2
  %conv30 = trunc i64 %mul29 to i32
  %call = call i8* %82(i8* %84, i32 %conv30, i32 1)
  %87 = bitcast i8* %call to i16*
  %88 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 21
  store i16* %87, i16** %ll16, align 8
  %89 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm, align 8
  %bzalloc31 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %89, i32 0, i32 9
  %90 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc31, align 8
  %91 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm, align 8
  %opaque32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %91, i32 0, i32 11
  %92 = load i8*, i8** %opaque32, align 8
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k33 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 9
  %94 = load i32, i32* %blockSize100k33, align 4
  %mul34 = mul nsw i32 %94, 100000
  %add = add nsw i32 1, %mul34
  %shr = ashr i32 %add, 1
  %conv35 = sext i32 %shr to i64
  %mul36 = mul i64 %conv35, 1
  %conv37 = trunc i64 %mul36 to i32
  %call38 = call i8* %90(i8* %92, i32 %conv37, i32 1)
  %95 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %95, i32 0, i32 22
  store i8* %call38, i8** %ll4, align 8
  %96 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll1639 = getelementptr inbounds %struct.DState, %struct.DState* %96, i32 0, i32 21
  %97 = load i16*, i16** %ll1639, align 8
  %cmp40 = icmp eq i16* %97, null
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.27
  %98 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll442 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 22
  %99 = load i8*, i8** %ll442, align 8
  %cmp43 = icmp eq i8* %99, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false, %if.then.27
  store i32 -3, i32* %retVal, align 4
  br label %save_state_and_return

if.end.46:                                        ; preds = %lor.lhs.false
  br label %if.end.60

if.else:                                          ; preds = %sw.bb
  %100 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm, align 8
  %bzalloc47 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %100, i32 0, i32 9
  %101 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc47, align 8
  %102 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm, align 8
  %opaque48 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %102, i32 0, i32 11
  %103 = load i8*, i8** %opaque48, align 8
  %104 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k49 = getelementptr inbounds %struct.DState, %struct.DState* %104, i32 0, i32 9
  %105 = load i32, i32* %blockSize100k49, align 4
  %mul50 = mul nsw i32 %105, 100000
  %conv51 = sext i32 %mul50 to i64
  %mul52 = mul i64 %conv51, 4
  %conv53 = trunc i64 %mul52 to i32
  %call54 = call i8* %101(i8* %103, i32 %conv53, i32 1)
  %106 = bitcast i8* %call54 to i32*
  %107 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %107, i32 0, i32 20
  store i32* %106, i32** %tt, align 8
  %108 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt55 = getelementptr inbounds %struct.DState, %struct.DState* %108, i32 0, i32 20
  %109 = load i32*, i32** %tt55, align 8
  %cmp56 = icmp eq i32* %109, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else
  store i32 -3, i32* %retVal, align 4
  br label %save_state_and_return

if.end.59:                                        ; preds = %if.else
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.46
  br label %sw.bb.61

sw.bb.61:                                         ; preds = %if.end, %if.end.60
  %110 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state62 = getelementptr inbounds %struct.DState, %struct.DState* %110, i32 0, i32 1
  store i32 14, i32* %state62, align 4
  br label %while.body

while.body:                                       ; preds = %sw.bb.61, %if.end.95
  %111 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive = getelementptr inbounds %struct.DState, %struct.DState* %111, i32 0, i32 8
  %112 = load i32, i32* %bsLive, align 4
  %cmp63 = icmp sge i32 %112, 8
  br i1 %cmp63, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %while.body
  %113 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff = getelementptr inbounds %struct.DState, %struct.DState* %113, i32 0, i32 7
  %114 = load i32, i32* %bsBuff, align 4
  %115 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive66 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 8
  %116 = load i32, i32* %bsLive66, align 4
  %sub = sub nsw i32 %116, 8
  %shr67 = lshr i32 %114, %sub
  %and = and i32 %shr67, 255
  store i32 %and, i32* %v, align 4
  %117 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive68 = getelementptr inbounds %struct.DState, %struct.DState* %117, i32 0, i32 8
  %118 = load i32, i32* %bsLive68, align 4
  %sub69 = sub nsw i32 %118, 8
  store i32 %sub69, i32* %bsLive68, align 4
  %119 = load i32, i32* %v, align 4
  %conv70 = trunc i32 %119 to i8
  store i8 %conv70, i8* %uc, align 1
  br label %while.end

if.end.71:                                        ; preds = %while.body
  %120 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm72 = getelementptr inbounds %struct.DState, %struct.DState* %120, i32 0, i32 0
  %121 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm72, align 8
  %avail_in = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %121, i32 0, i32 1
  %122 = load i32, i32* %avail_in, align 4
  %cmp73 = icmp eq i32 %122, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.76:                                        ; preds = %if.end.71
  %123 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff77 = getelementptr inbounds %struct.DState, %struct.DState* %123, i32 0, i32 7
  %124 = load i32, i32* %bsBuff77, align 4
  %shl = shl i32 %124, 8
  %125 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm78 = getelementptr inbounds %struct.DState, %struct.DState* %125, i32 0, i32 0
  %126 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm78, align 8
  %next_in = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %126, i32 0, i32 0
  %127 = load i8*, i8** %next_in, align 8
  %128 = load i8, i8* %127, align 1
  %conv79 = zext i8 %128 to i32
  %or = or i32 %shl, %conv79
  %129 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff80 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 7
  store i32 %or, i32* %bsBuff80, align 4
  %130 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive81 = getelementptr inbounds %struct.DState, %struct.DState* %130, i32 0, i32 8
  %131 = load i32, i32* %bsLive81, align 4
  %add82 = add nsw i32 %131, 8
  store i32 %add82, i32* %bsLive81, align 4
  %132 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm83 = getelementptr inbounds %struct.DState, %struct.DState* %132, i32 0, i32 0
  %133 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm83, align 8
  %next_in84 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %133, i32 0, i32 0
  %134 = load i8*, i8** %next_in84, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr, i8** %next_in84, align 8
  %135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm85 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 0
  %136 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm85, align 8
  %avail_in86 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %136, i32 0, i32 1
  %137 = load i32, i32* %avail_in86, align 4
  %dec = add i32 %137, -1
  store i32 %dec, i32* %avail_in86, align 4
  %138 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm87 = getelementptr inbounds %struct.DState, %struct.DState* %138, i32 0, i32 0
  %139 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm87, align 8
  %total_in_lo32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %139, i32 0, i32 2
  %140 = load i32, i32* %total_in_lo32, align 4
  %inc = add i32 %140, 1
  store i32 %inc, i32* %total_in_lo32, align 4
  %141 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm88 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 0
  %142 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm88, align 8
  %total_in_lo3289 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %142, i32 0, i32 2
  %143 = load i32, i32* %total_in_lo3289, align 4
  %cmp90 = icmp eq i32 %143, 0
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.end.76
  %144 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm93 = getelementptr inbounds %struct.DState, %struct.DState* %144, i32 0, i32 0
  %145 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm93, align 8
  %total_in_hi32 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %145, i32 0, i32 3
  %146 = load i32, i32* %total_in_hi32, align 4
  %inc94 = add i32 %146, 1
  store i32 %inc94, i32* %total_in_hi32, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %if.end.76
  br label %while.body

while.end:                                        ; preds = %if.then.65
  %147 = load i8, i8* %uc, align 1
  %conv96 = zext i8 %147 to i32
  %cmp97 = icmp eq i32 %conv96, 23
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %while.end
  br label %endhdr_2

if.end.100:                                       ; preds = %while.end
  %148 = load i8, i8* %uc, align 1
  %conv101 = zext i8 %148 to i32
  %cmp102 = icmp ne i32 %conv101, 49
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.100
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.105:                                       ; preds = %if.end.100
  %149 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr = getelementptr inbounds %struct.DState, %struct.DState* %149, i32 0, i32 13
  store i32 0, i32* %origPtr, align 4
  br label %sw.bb.106

sw.bb.106:                                        ; preds = %if.end, %if.end.105
  %150 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state107 = getelementptr inbounds %struct.DState, %struct.DState* %150, i32 0, i32 1
  store i32 25, i32* %state107, align 4
  br label %while.body.108

while.body.108:                                   ; preds = %sw.bb.106, %if.end.155
  %151 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive109 = getelementptr inbounds %struct.DState, %struct.DState* %151, i32 0, i32 8
  %152 = load i32, i32* %bsLive109, align 4
  %cmp110 = icmp sge i32 %152, 8
  br i1 %cmp110, label %if.then.112, label %if.end.122

if.then.112:                                      ; preds = %while.body.108
  %153 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff114 = getelementptr inbounds %struct.DState, %struct.DState* %153, i32 0, i32 7
  %154 = load i32, i32* %bsBuff114, align 4
  %155 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive115 = getelementptr inbounds %struct.DState, %struct.DState* %155, i32 0, i32 8
  %156 = load i32, i32* %bsLive115, align 4
  %sub116 = sub nsw i32 %156, 8
  %shr117 = lshr i32 %154, %sub116
  %and118 = and i32 %shr117, 255
  store i32 %and118, i32* %v113, align 4
  %157 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive119 = getelementptr inbounds %struct.DState, %struct.DState* %157, i32 0, i32 8
  %158 = load i32, i32* %bsLive119, align 4
  %sub120 = sub nsw i32 %158, 8
  store i32 %sub120, i32* %bsLive119, align 4
  %159 = load i32, i32* %v113, align 4
  %conv121 = trunc i32 %159 to i8
  store i8 %conv121, i8* %uc, align 1
  br label %while.end.156

if.end.122:                                       ; preds = %while.body.108
  %160 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm123 = getelementptr inbounds %struct.DState, %struct.DState* %160, i32 0, i32 0
  %161 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm123, align 8
  %avail_in124 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %161, i32 0, i32 1
  %162 = load i32, i32* %avail_in124, align 4
  %cmp125 = icmp eq i32 %162, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.122
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.128:                                       ; preds = %if.end.122
  %163 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff129 = getelementptr inbounds %struct.DState, %struct.DState* %163, i32 0, i32 7
  %164 = load i32, i32* %bsBuff129, align 4
  %shl130 = shl i32 %164, 8
  %165 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm131 = getelementptr inbounds %struct.DState, %struct.DState* %165, i32 0, i32 0
  %166 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm131, align 8
  %next_in132 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %166, i32 0, i32 0
  %167 = load i8*, i8** %next_in132, align 8
  %168 = load i8, i8* %167, align 1
  %conv133 = zext i8 %168 to i32
  %or134 = or i32 %shl130, %conv133
  %169 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff135 = getelementptr inbounds %struct.DState, %struct.DState* %169, i32 0, i32 7
  store i32 %or134, i32* %bsBuff135, align 4
  %170 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive136 = getelementptr inbounds %struct.DState, %struct.DState* %170, i32 0, i32 8
  %171 = load i32, i32* %bsLive136, align 4
  %add137 = add nsw i32 %171, 8
  store i32 %add137, i32* %bsLive136, align 4
  %172 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm138 = getelementptr inbounds %struct.DState, %struct.DState* %172, i32 0, i32 0
  %173 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm138, align 8
  %next_in139 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %173, i32 0, i32 0
  %174 = load i8*, i8** %next_in139, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr140, i8** %next_in139, align 8
  %175 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm141 = getelementptr inbounds %struct.DState, %struct.DState* %175, i32 0, i32 0
  %176 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm141, align 8
  %avail_in142 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %176, i32 0, i32 1
  %177 = load i32, i32* %avail_in142, align 4
  %dec143 = add i32 %177, -1
  store i32 %dec143, i32* %avail_in142, align 4
  %178 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm144 = getelementptr inbounds %struct.DState, %struct.DState* %178, i32 0, i32 0
  %179 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm144, align 8
  %total_in_lo32145 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %179, i32 0, i32 2
  %180 = load i32, i32* %total_in_lo32145, align 4
  %inc146 = add i32 %180, 1
  store i32 %inc146, i32* %total_in_lo32145, align 4
  %181 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm147 = getelementptr inbounds %struct.DState, %struct.DState* %181, i32 0, i32 0
  %182 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm147, align 8
  %total_in_lo32148 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %182, i32 0, i32 2
  %183 = load i32, i32* %total_in_lo32148, align 4
  %cmp149 = icmp eq i32 %183, 0
  br i1 %cmp149, label %if.then.151, label %if.end.155

if.then.151:                                      ; preds = %if.end.128
  %184 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm152 = getelementptr inbounds %struct.DState, %struct.DState* %184, i32 0, i32 0
  %185 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm152, align 8
  %total_in_hi32153 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %185, i32 0, i32 3
  %186 = load i32, i32* %total_in_hi32153, align 4
  %inc154 = add i32 %186, 1
  store i32 %inc154, i32* %total_in_hi32153, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.151, %if.end.128
  br label %while.body.108

while.end.156:                                    ; preds = %if.then.112
  %187 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr157 = getelementptr inbounds %struct.DState, %struct.DState* %187, i32 0, i32 13
  %188 = load i32, i32* %origPtr157, align 4
  %shl158 = shl i32 %188, 8
  %189 = load i8, i8* %uc, align 1
  %conv159 = zext i8 %189 to i32
  %or160 = or i32 %shl158, %conv159
  %190 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr161 = getelementptr inbounds %struct.DState, %struct.DState* %190, i32 0, i32 13
  store i32 %or160, i32* %origPtr161, align 4
  br label %sw.bb.162

sw.bb.162:                                        ; preds = %if.end, %while.end.156
  %191 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state163 = getelementptr inbounds %struct.DState, %struct.DState* %191, i32 0, i32 1
  store i32 26, i32* %state163, align 4
  br label %while.body.164

while.body.164:                                   ; preds = %sw.bb.162, %if.end.211
  %192 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive165 = getelementptr inbounds %struct.DState, %struct.DState* %192, i32 0, i32 8
  %193 = load i32, i32* %bsLive165, align 4
  %cmp166 = icmp sge i32 %193, 8
  br i1 %cmp166, label %if.then.168, label %if.end.178

if.then.168:                                      ; preds = %while.body.164
  %194 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff170 = getelementptr inbounds %struct.DState, %struct.DState* %194, i32 0, i32 7
  %195 = load i32, i32* %bsBuff170, align 4
  %196 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive171 = getelementptr inbounds %struct.DState, %struct.DState* %196, i32 0, i32 8
  %197 = load i32, i32* %bsLive171, align 4
  %sub172 = sub nsw i32 %197, 8
  %shr173 = lshr i32 %195, %sub172
  %and174 = and i32 %shr173, 255
  store i32 %and174, i32* %v169, align 4
  %198 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive175 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 8
  %199 = load i32, i32* %bsLive175, align 4
  %sub176 = sub nsw i32 %199, 8
  store i32 %sub176, i32* %bsLive175, align 4
  %200 = load i32, i32* %v169, align 4
  %conv177 = trunc i32 %200 to i8
  store i8 %conv177, i8* %uc, align 1
  br label %while.end.212

if.end.178:                                       ; preds = %while.body.164
  %201 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm179 = getelementptr inbounds %struct.DState, %struct.DState* %201, i32 0, i32 0
  %202 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm179, align 8
  %avail_in180 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %202, i32 0, i32 1
  %203 = load i32, i32* %avail_in180, align 4
  %cmp181 = icmp eq i32 %203, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.end.178
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.184:                                       ; preds = %if.end.178
  %204 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff185 = getelementptr inbounds %struct.DState, %struct.DState* %204, i32 0, i32 7
  %205 = load i32, i32* %bsBuff185, align 4
  %shl186 = shl i32 %205, 8
  %206 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm187 = getelementptr inbounds %struct.DState, %struct.DState* %206, i32 0, i32 0
  %207 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm187, align 8
  %next_in188 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %207, i32 0, i32 0
  %208 = load i8*, i8** %next_in188, align 8
  %209 = load i8, i8* %208, align 1
  %conv189 = zext i8 %209 to i32
  %or190 = or i32 %shl186, %conv189
  %210 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff191 = getelementptr inbounds %struct.DState, %struct.DState* %210, i32 0, i32 7
  store i32 %or190, i32* %bsBuff191, align 4
  %211 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive192 = getelementptr inbounds %struct.DState, %struct.DState* %211, i32 0, i32 8
  %212 = load i32, i32* %bsLive192, align 4
  %add193 = add nsw i32 %212, 8
  store i32 %add193, i32* %bsLive192, align 4
  %213 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm194 = getelementptr inbounds %struct.DState, %struct.DState* %213, i32 0, i32 0
  %214 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm194, align 8
  %next_in195 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %214, i32 0, i32 0
  %215 = load i8*, i8** %next_in195, align 8
  %incdec.ptr196 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %incdec.ptr196, i8** %next_in195, align 8
  %216 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm197 = getelementptr inbounds %struct.DState, %struct.DState* %216, i32 0, i32 0
  %217 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm197, align 8
  %avail_in198 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %217, i32 0, i32 1
  %218 = load i32, i32* %avail_in198, align 4
  %dec199 = add i32 %218, -1
  store i32 %dec199, i32* %avail_in198, align 4
  %219 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm200 = getelementptr inbounds %struct.DState, %struct.DState* %219, i32 0, i32 0
  %220 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm200, align 8
  %total_in_lo32201 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %220, i32 0, i32 2
  %221 = load i32, i32* %total_in_lo32201, align 4
  %inc202 = add i32 %221, 1
  store i32 %inc202, i32* %total_in_lo32201, align 4
  %222 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm203 = getelementptr inbounds %struct.DState, %struct.DState* %222, i32 0, i32 0
  %223 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm203, align 8
  %total_in_lo32204 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %223, i32 0, i32 2
  %224 = load i32, i32* %total_in_lo32204, align 4
  %cmp205 = icmp eq i32 %224, 0
  br i1 %cmp205, label %if.then.207, label %if.end.211

if.then.207:                                      ; preds = %if.end.184
  %225 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm208 = getelementptr inbounds %struct.DState, %struct.DState* %225, i32 0, i32 0
  %226 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm208, align 8
  %total_in_hi32209 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %226, i32 0, i32 3
  %227 = load i32, i32* %total_in_hi32209, align 4
  %inc210 = add i32 %227, 1
  store i32 %inc210, i32* %total_in_hi32209, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.207, %if.end.184
  br label %while.body.164

while.end.212:                                    ; preds = %if.then.168
  %228 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr213 = getelementptr inbounds %struct.DState, %struct.DState* %228, i32 0, i32 13
  %229 = load i32, i32* %origPtr213, align 4
  %shl214 = shl i32 %229, 8
  %230 = load i8, i8* %uc, align 1
  %conv215 = zext i8 %230 to i32
  %or216 = or i32 %shl214, %conv215
  %231 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr217 = getelementptr inbounds %struct.DState, %struct.DState* %231, i32 0, i32 13
  store i32 %or216, i32* %origPtr217, align 4
  br label %sw.bb.218

sw.bb.218:                                        ; preds = %if.end, %while.end.212
  %232 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state219 = getelementptr inbounds %struct.DState, %struct.DState* %232, i32 0, i32 1
  store i32 27, i32* %state219, align 4
  br label %while.body.220

while.body.220:                                   ; preds = %sw.bb.218, %if.end.267
  %233 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive221 = getelementptr inbounds %struct.DState, %struct.DState* %233, i32 0, i32 8
  %234 = load i32, i32* %bsLive221, align 4
  %cmp222 = icmp sge i32 %234, 8
  br i1 %cmp222, label %if.then.224, label %if.end.234

if.then.224:                                      ; preds = %while.body.220
  %235 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff226 = getelementptr inbounds %struct.DState, %struct.DState* %235, i32 0, i32 7
  %236 = load i32, i32* %bsBuff226, align 4
  %237 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive227 = getelementptr inbounds %struct.DState, %struct.DState* %237, i32 0, i32 8
  %238 = load i32, i32* %bsLive227, align 4
  %sub228 = sub nsw i32 %238, 8
  %shr229 = lshr i32 %236, %sub228
  %and230 = and i32 %shr229, 255
  store i32 %and230, i32* %v225, align 4
  %239 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive231 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 8
  %240 = load i32, i32* %bsLive231, align 4
  %sub232 = sub nsw i32 %240, 8
  store i32 %sub232, i32* %bsLive231, align 4
  %241 = load i32, i32* %v225, align 4
  %conv233 = trunc i32 %241 to i8
  store i8 %conv233, i8* %uc, align 1
  br label %while.end.268

if.end.234:                                       ; preds = %while.body.220
  %242 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm235 = getelementptr inbounds %struct.DState, %struct.DState* %242, i32 0, i32 0
  %243 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm235, align 8
  %avail_in236 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %243, i32 0, i32 1
  %244 = load i32, i32* %avail_in236, align 4
  %cmp237 = icmp eq i32 %244, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.end.234
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.240:                                       ; preds = %if.end.234
  %245 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff241 = getelementptr inbounds %struct.DState, %struct.DState* %245, i32 0, i32 7
  %246 = load i32, i32* %bsBuff241, align 4
  %shl242 = shl i32 %246, 8
  %247 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm243 = getelementptr inbounds %struct.DState, %struct.DState* %247, i32 0, i32 0
  %248 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm243, align 8
  %next_in244 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %248, i32 0, i32 0
  %249 = load i8*, i8** %next_in244, align 8
  %250 = load i8, i8* %249, align 1
  %conv245 = zext i8 %250 to i32
  %or246 = or i32 %shl242, %conv245
  %251 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff247 = getelementptr inbounds %struct.DState, %struct.DState* %251, i32 0, i32 7
  store i32 %or246, i32* %bsBuff247, align 4
  %252 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive248 = getelementptr inbounds %struct.DState, %struct.DState* %252, i32 0, i32 8
  %253 = load i32, i32* %bsLive248, align 4
  %add249 = add nsw i32 %253, 8
  store i32 %add249, i32* %bsLive248, align 4
  %254 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm250 = getelementptr inbounds %struct.DState, %struct.DState* %254, i32 0, i32 0
  %255 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm250, align 8
  %next_in251 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %255, i32 0, i32 0
  %256 = load i8*, i8** %next_in251, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %incdec.ptr252, i8** %next_in251, align 8
  %257 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm253 = getelementptr inbounds %struct.DState, %struct.DState* %257, i32 0, i32 0
  %258 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm253, align 8
  %avail_in254 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %258, i32 0, i32 1
  %259 = load i32, i32* %avail_in254, align 4
  %dec255 = add i32 %259, -1
  store i32 %dec255, i32* %avail_in254, align 4
  %260 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm256 = getelementptr inbounds %struct.DState, %struct.DState* %260, i32 0, i32 0
  %261 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm256, align 8
  %total_in_lo32257 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %261, i32 0, i32 2
  %262 = load i32, i32* %total_in_lo32257, align 4
  %inc258 = add i32 %262, 1
  store i32 %inc258, i32* %total_in_lo32257, align 4
  %263 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm259 = getelementptr inbounds %struct.DState, %struct.DState* %263, i32 0, i32 0
  %264 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm259, align 8
  %total_in_lo32260 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %264, i32 0, i32 2
  %265 = load i32, i32* %total_in_lo32260, align 4
  %cmp261 = icmp eq i32 %265, 0
  br i1 %cmp261, label %if.then.263, label %if.end.267

if.then.263:                                      ; preds = %if.end.240
  %266 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm264 = getelementptr inbounds %struct.DState, %struct.DState* %266, i32 0, i32 0
  %267 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm264, align 8
  %total_in_hi32265 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %267, i32 0, i32 3
  %268 = load i32, i32* %total_in_hi32265, align 4
  %inc266 = add i32 %268, 1
  store i32 %inc266, i32* %total_in_hi32265, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.263, %if.end.240
  br label %while.body.220

while.end.268:                                    ; preds = %if.then.224
  %269 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr269 = getelementptr inbounds %struct.DState, %struct.DState* %269, i32 0, i32 13
  %270 = load i32, i32* %origPtr269, align 4
  %shl270 = shl i32 %270, 8
  %271 = load i8, i8* %uc, align 1
  %conv271 = zext i8 %271 to i32
  %or272 = or i32 %shl270, %conv271
  %272 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr273 = getelementptr inbounds %struct.DState, %struct.DState* %272, i32 0, i32 13
  store i32 %or272, i32* %origPtr273, align 4
  %273 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr274 = getelementptr inbounds %struct.DState, %struct.DState* %273, i32 0, i32 13
  %274 = load i32, i32* %origPtr274, align 4
  %cmp275 = icmp slt i32 %274, 0
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %while.end.268
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.278:                                       ; preds = %while.end.268
  %275 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr279 = getelementptr inbounds %struct.DState, %struct.DState* %275, i32 0, i32 13
  %276 = load i32, i32* %origPtr279, align 4
  %277 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k280 = getelementptr inbounds %struct.DState, %struct.DState* %277, i32 0, i32 9
  %278 = load i32, i32* %blockSize100k280, align 4
  %mul281 = mul nsw i32 100000, %278
  %add282 = add nsw i32 10, %mul281
  %cmp283 = icmp sgt i32 %276, %add282
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %if.end.278
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.286:                                       ; preds = %if.end.278
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.286
  %279 = load i32, i32* %i, align 4
  %cmp287 = icmp slt i32 %279, 16
  br i1 %cmp287, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %sw.bb.289

sw.bb.289:                                        ; preds = %if.end, %for.body
  %280 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state290 = getelementptr inbounds %struct.DState, %struct.DState* %280, i32 0, i32 1
  store i32 28, i32* %state290, align 4
  br label %while.body.291

while.body.291:                                   ; preds = %sw.bb.289, %if.end.338
  %281 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive292 = getelementptr inbounds %struct.DState, %struct.DState* %281, i32 0, i32 8
  %282 = load i32, i32* %bsLive292, align 4
  %cmp293 = icmp sge i32 %282, 1
  br i1 %cmp293, label %if.then.295, label %if.end.305

if.then.295:                                      ; preds = %while.body.291
  %283 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff297 = getelementptr inbounds %struct.DState, %struct.DState* %283, i32 0, i32 7
  %284 = load i32, i32* %bsBuff297, align 4
  %285 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive298 = getelementptr inbounds %struct.DState, %struct.DState* %285, i32 0, i32 8
  %286 = load i32, i32* %bsLive298, align 4
  %sub299 = sub nsw i32 %286, 1
  %shr300 = lshr i32 %284, %sub299
  %and301 = and i32 %shr300, 1
  store i32 %and301, i32* %v296, align 4
  %287 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive302 = getelementptr inbounds %struct.DState, %struct.DState* %287, i32 0, i32 8
  %288 = load i32, i32* %bsLive302, align 4
  %sub303 = sub nsw i32 %288, 1
  store i32 %sub303, i32* %bsLive302, align 4
  %289 = load i32, i32* %v296, align 4
  %conv304 = trunc i32 %289 to i8
  store i8 %conv304, i8* %uc, align 1
  br label %while.end.339

if.end.305:                                       ; preds = %while.body.291
  %290 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm306 = getelementptr inbounds %struct.DState, %struct.DState* %290, i32 0, i32 0
  %291 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm306, align 8
  %avail_in307 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %291, i32 0, i32 1
  %292 = load i32, i32* %avail_in307, align 4
  %cmp308 = icmp eq i32 %292, 0
  br i1 %cmp308, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %if.end.305
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.311:                                       ; preds = %if.end.305
  %293 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff312 = getelementptr inbounds %struct.DState, %struct.DState* %293, i32 0, i32 7
  %294 = load i32, i32* %bsBuff312, align 4
  %shl313 = shl i32 %294, 8
  %295 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm314 = getelementptr inbounds %struct.DState, %struct.DState* %295, i32 0, i32 0
  %296 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm314, align 8
  %next_in315 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %296, i32 0, i32 0
  %297 = load i8*, i8** %next_in315, align 8
  %298 = load i8, i8* %297, align 1
  %conv316 = zext i8 %298 to i32
  %or317 = or i32 %shl313, %conv316
  %299 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff318 = getelementptr inbounds %struct.DState, %struct.DState* %299, i32 0, i32 7
  store i32 %or317, i32* %bsBuff318, align 4
  %300 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive319 = getelementptr inbounds %struct.DState, %struct.DState* %300, i32 0, i32 8
  %301 = load i32, i32* %bsLive319, align 4
  %add320 = add nsw i32 %301, 8
  store i32 %add320, i32* %bsLive319, align 4
  %302 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm321 = getelementptr inbounds %struct.DState, %struct.DState* %302, i32 0, i32 0
  %303 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm321, align 8
  %next_in322 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %303, i32 0, i32 0
  %304 = load i8*, i8** %next_in322, align 8
  %incdec.ptr323 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %incdec.ptr323, i8** %next_in322, align 8
  %305 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm324 = getelementptr inbounds %struct.DState, %struct.DState* %305, i32 0, i32 0
  %306 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm324, align 8
  %avail_in325 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %306, i32 0, i32 1
  %307 = load i32, i32* %avail_in325, align 4
  %dec326 = add i32 %307, -1
  store i32 %dec326, i32* %avail_in325, align 4
  %308 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm327 = getelementptr inbounds %struct.DState, %struct.DState* %308, i32 0, i32 0
  %309 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm327, align 8
  %total_in_lo32328 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %309, i32 0, i32 2
  %310 = load i32, i32* %total_in_lo32328, align 4
  %inc329 = add i32 %310, 1
  store i32 %inc329, i32* %total_in_lo32328, align 4
  %311 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm330 = getelementptr inbounds %struct.DState, %struct.DState* %311, i32 0, i32 0
  %312 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm330, align 8
  %total_in_lo32331 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %312, i32 0, i32 2
  %313 = load i32, i32* %total_in_lo32331, align 4
  %cmp332 = icmp eq i32 %313, 0
  br i1 %cmp332, label %if.then.334, label %if.end.338

if.then.334:                                      ; preds = %if.end.311
  %314 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm335 = getelementptr inbounds %struct.DState, %struct.DState* %314, i32 0, i32 0
  %315 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm335, align 8
  %total_in_hi32336 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %315, i32 0, i32 3
  %316 = load i32, i32* %total_in_hi32336, align 4
  %inc337 = add i32 %316, 1
  store i32 %inc337, i32* %total_in_hi32336, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.334, %if.end.311
  br label %while.body.291

while.end.339:                                    ; preds = %if.then.295
  %317 = load i8, i8* %uc, align 1
  %conv340 = zext i8 %317 to i32
  %cmp341 = icmp eq i32 %conv340, 1
  br i1 %cmp341, label %if.then.343, label %if.else.344

if.then.343:                                      ; preds = %while.end.339
  %318 = load i32, i32* %i, align 4
  %idxprom = sext i32 %318 to i64
  %319 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse16 = getelementptr inbounds %struct.DState, %struct.DState* %319, i32 0, i32 29
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %inUse16, i32 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %if.end.348

if.else.344:                                      ; preds = %while.end.339
  %320 = load i32, i32* %i, align 4
  %idxprom345 = sext i32 %320 to i64
  %321 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse16346 = getelementptr inbounds %struct.DState, %struct.DState* %321, i32 0, i32 29
  %arrayidx347 = getelementptr inbounds [16 x i8], [16 x i8]* %inUse16346, i32 0, i64 %idxprom345
  store i8 0, i8* %arrayidx347, align 1
  br label %if.end.348

if.end.348:                                       ; preds = %if.else.344, %if.then.343
  br label %for.inc

for.inc:                                          ; preds = %if.end.348
  %322 = load i32, i32* %i, align 4
  %inc349 = add nsw i32 %322, 1
  store i32 %inc349, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.350

for.cond.350:                                     ; preds = %for.inc.356, %for.end
  %323 = load i32, i32* %i, align 4
  %cmp351 = icmp slt i32 %323, 256
  br i1 %cmp351, label %for.body.353, label %for.end.358

for.body.353:                                     ; preds = %for.cond.350
  %324 = load i32, i32* %i, align 4
  %idxprom354 = sext i32 %324 to i64
  %325 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.DState, %struct.DState* %325, i32 0, i32 28
  %arrayidx355 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i32 0, i64 %idxprom354
  store i8 0, i8* %arrayidx355, align 1
  br label %for.inc.356

for.inc.356:                                      ; preds = %for.body.353
  %326 = load i32, i32* %i, align 4
  %inc357 = add nsw i32 %326, 1
  store i32 %inc357, i32* %i, align 4
  br label %for.cond.350

for.end.358:                                      ; preds = %for.cond.350
  store i32 0, i32* %i, align 4
  br label %for.cond.359

for.cond.359:                                     ; preds = %for.inc.437, %for.end.358
  %327 = load i32, i32* %i, align 4
  %cmp360 = icmp slt i32 %327, 16
  br i1 %cmp360, label %for.body.362, label %for.end.439

for.body.362:                                     ; preds = %for.cond.359
  %328 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %328 to i64
  %329 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse16364 = getelementptr inbounds %struct.DState, %struct.DState* %329, i32 0, i32 29
  %arrayidx365 = getelementptr inbounds [16 x i8], [16 x i8]* %inUse16364, i32 0, i64 %idxprom363
  %330 = load i8, i8* %arrayidx365, align 1
  %tobool366 = icmp ne i8 %330, 0
  br i1 %tobool366, label %if.then.367, label %if.end.436

if.then.367:                                      ; preds = %for.body.362
  store i32 0, i32* %j, align 4
  br label %for.cond.368

for.cond.368:                                     ; preds = %for.inc.433, %if.then.367
  %331 = load i32, i32* %j, align 4
  %cmp369 = icmp slt i32 %331, 16
  br i1 %cmp369, label %for.body.371, label %for.end.435

for.body.371:                                     ; preds = %for.cond.368
  br label %sw.bb.372

sw.bb.372:                                        ; preds = %if.end, %for.body.371
  %332 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state373 = getelementptr inbounds %struct.DState, %struct.DState* %332, i32 0, i32 1
  store i32 29, i32* %state373, align 4
  br label %while.body.374

while.body.374:                                   ; preds = %sw.bb.372, %if.end.421
  %333 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive375 = getelementptr inbounds %struct.DState, %struct.DState* %333, i32 0, i32 8
  %334 = load i32, i32* %bsLive375, align 4
  %cmp376 = icmp sge i32 %334, 1
  br i1 %cmp376, label %if.then.378, label %if.end.388

if.then.378:                                      ; preds = %while.body.374
  %335 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff380 = getelementptr inbounds %struct.DState, %struct.DState* %335, i32 0, i32 7
  %336 = load i32, i32* %bsBuff380, align 4
  %337 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive381 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 8
  %338 = load i32, i32* %bsLive381, align 4
  %sub382 = sub nsw i32 %338, 1
  %shr383 = lshr i32 %336, %sub382
  %and384 = and i32 %shr383, 1
  store i32 %and384, i32* %v379, align 4
  %339 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive385 = getelementptr inbounds %struct.DState, %struct.DState* %339, i32 0, i32 8
  %340 = load i32, i32* %bsLive385, align 4
  %sub386 = sub nsw i32 %340, 1
  store i32 %sub386, i32* %bsLive385, align 4
  %341 = load i32, i32* %v379, align 4
  %conv387 = trunc i32 %341 to i8
  store i8 %conv387, i8* %uc, align 1
  br label %while.end.422

if.end.388:                                       ; preds = %while.body.374
  %342 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm389 = getelementptr inbounds %struct.DState, %struct.DState* %342, i32 0, i32 0
  %343 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm389, align 8
  %avail_in390 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %343, i32 0, i32 1
  %344 = load i32, i32* %avail_in390, align 4
  %cmp391 = icmp eq i32 %344, 0
  br i1 %cmp391, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %if.end.388
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.394:                                       ; preds = %if.end.388
  %345 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff395 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 7
  %346 = load i32, i32* %bsBuff395, align 4
  %shl396 = shl i32 %346, 8
  %347 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm397 = getelementptr inbounds %struct.DState, %struct.DState* %347, i32 0, i32 0
  %348 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm397, align 8
  %next_in398 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %348, i32 0, i32 0
  %349 = load i8*, i8** %next_in398, align 8
  %350 = load i8, i8* %349, align 1
  %conv399 = zext i8 %350 to i32
  %or400 = or i32 %shl396, %conv399
  %351 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff401 = getelementptr inbounds %struct.DState, %struct.DState* %351, i32 0, i32 7
  store i32 %or400, i32* %bsBuff401, align 4
  %352 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive402 = getelementptr inbounds %struct.DState, %struct.DState* %352, i32 0, i32 8
  %353 = load i32, i32* %bsLive402, align 4
  %add403 = add nsw i32 %353, 8
  store i32 %add403, i32* %bsLive402, align 4
  %354 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm404 = getelementptr inbounds %struct.DState, %struct.DState* %354, i32 0, i32 0
  %355 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm404, align 8
  %next_in405 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %355, i32 0, i32 0
  %356 = load i8*, i8** %next_in405, align 8
  %incdec.ptr406 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %incdec.ptr406, i8** %next_in405, align 8
  %357 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm407 = getelementptr inbounds %struct.DState, %struct.DState* %357, i32 0, i32 0
  %358 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm407, align 8
  %avail_in408 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %358, i32 0, i32 1
  %359 = load i32, i32* %avail_in408, align 4
  %dec409 = add i32 %359, -1
  store i32 %dec409, i32* %avail_in408, align 4
  %360 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm410 = getelementptr inbounds %struct.DState, %struct.DState* %360, i32 0, i32 0
  %361 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm410, align 8
  %total_in_lo32411 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %361, i32 0, i32 2
  %362 = load i32, i32* %total_in_lo32411, align 4
  %inc412 = add i32 %362, 1
  store i32 %inc412, i32* %total_in_lo32411, align 4
  %363 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm413 = getelementptr inbounds %struct.DState, %struct.DState* %363, i32 0, i32 0
  %364 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm413, align 8
  %total_in_lo32414 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %364, i32 0, i32 2
  %365 = load i32, i32* %total_in_lo32414, align 4
  %cmp415 = icmp eq i32 %365, 0
  br i1 %cmp415, label %if.then.417, label %if.end.421

if.then.417:                                      ; preds = %if.end.394
  %366 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm418 = getelementptr inbounds %struct.DState, %struct.DState* %366, i32 0, i32 0
  %367 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm418, align 8
  %total_in_hi32419 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %367, i32 0, i32 3
  %368 = load i32, i32* %total_in_hi32419, align 4
  %inc420 = add i32 %368, 1
  store i32 %inc420, i32* %total_in_hi32419, align 4
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.417, %if.end.394
  br label %while.body.374

while.end.422:                                    ; preds = %if.then.378
  %369 = load i8, i8* %uc, align 1
  %conv423 = zext i8 %369 to i32
  %cmp424 = icmp eq i32 %conv423, 1
  br i1 %cmp424, label %if.then.426, label %if.end.432

if.then.426:                                      ; preds = %while.end.422
  %370 = load i32, i32* %i, align 4
  %mul427 = mul nsw i32 %370, 16
  %371 = load i32, i32* %j, align 4
  %add428 = add nsw i32 %mul427, %371
  %idxprom429 = sext i32 %add428 to i64
  %372 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse430 = getelementptr inbounds %struct.DState, %struct.DState* %372, i32 0, i32 28
  %arrayidx431 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse430, i32 0, i64 %idxprom429
  store i8 1, i8* %arrayidx431, align 1
  br label %if.end.432

if.end.432:                                       ; preds = %if.then.426, %while.end.422
  br label %for.inc.433

for.inc.433:                                      ; preds = %if.end.432
  %373 = load i32, i32* %j, align 4
  %inc434 = add nsw i32 %373, 1
  store i32 %inc434, i32* %j, align 4
  br label %for.cond.368

for.end.435:                                      ; preds = %for.cond.368
  br label %if.end.436

if.end.436:                                       ; preds = %for.end.435, %for.body.362
  br label %for.inc.437

for.inc.437:                                      ; preds = %if.end.436
  %374 = load i32, i32* %i, align 4
  %inc438 = add nsw i32 %374, 1
  store i32 %inc438, i32* %i, align 4
  br label %for.cond.359

for.end.439:                                      ; preds = %for.cond.359
  %375 = load %struct.DState*, %struct.DState** %s.addr, align 8
  call void @makeMaps_d(%struct.DState* %375)
  %376 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, %struct.DState* %376, i32 0, i32 27
  %377 = load i32, i32* %nInUse, align 4
  %cmp440 = icmp eq i32 %377, 0
  br i1 %cmp440, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %for.end.439
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.443:                                       ; preds = %for.end.439
  %378 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse444 = getelementptr inbounds %struct.DState, %struct.DState* %378, i32 0, i32 27
  %379 = load i32, i32* %nInUse444, align 4
  %add445 = add nsw i32 %379, 2
  store i32 %add445, i32* %alphaSize, align 4
  br label %sw.bb.446

sw.bb.446:                                        ; preds = %if.end, %if.end.443
  %380 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state447 = getelementptr inbounds %struct.DState, %struct.DState* %380, i32 0, i32 1
  store i32 30, i32* %state447, align 4
  br label %while.body.448

while.body.448:                                   ; preds = %sw.bb.446, %if.end.494
  %381 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive449 = getelementptr inbounds %struct.DState, %struct.DState* %381, i32 0, i32 8
  %382 = load i32, i32* %bsLive449, align 4
  %cmp450 = icmp sge i32 %382, 3
  br i1 %cmp450, label %if.then.452, label %if.end.461

if.then.452:                                      ; preds = %while.body.448
  %383 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff454 = getelementptr inbounds %struct.DState, %struct.DState* %383, i32 0, i32 7
  %384 = load i32, i32* %bsBuff454, align 4
  %385 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive455 = getelementptr inbounds %struct.DState, %struct.DState* %385, i32 0, i32 8
  %386 = load i32, i32* %bsLive455, align 4
  %sub456 = sub nsw i32 %386, 3
  %shr457 = lshr i32 %384, %sub456
  %and458 = and i32 %shr457, 7
  store i32 %and458, i32* %v453, align 4
  %387 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive459 = getelementptr inbounds %struct.DState, %struct.DState* %387, i32 0, i32 8
  %388 = load i32, i32* %bsLive459, align 4
  %sub460 = sub nsw i32 %388, 3
  store i32 %sub460, i32* %bsLive459, align 4
  %389 = load i32, i32* %v453, align 4
  store i32 %389, i32* %nGroups, align 4
  br label %while.end.495

if.end.461:                                       ; preds = %while.body.448
  %390 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm462 = getelementptr inbounds %struct.DState, %struct.DState* %390, i32 0, i32 0
  %391 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm462, align 8
  %avail_in463 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %391, i32 0, i32 1
  %392 = load i32, i32* %avail_in463, align 4
  %cmp464 = icmp eq i32 %392, 0
  br i1 %cmp464, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.end.461
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.467:                                       ; preds = %if.end.461
  %393 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff468 = getelementptr inbounds %struct.DState, %struct.DState* %393, i32 0, i32 7
  %394 = load i32, i32* %bsBuff468, align 4
  %shl469 = shl i32 %394, 8
  %395 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm470 = getelementptr inbounds %struct.DState, %struct.DState* %395, i32 0, i32 0
  %396 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm470, align 8
  %next_in471 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %396, i32 0, i32 0
  %397 = load i8*, i8** %next_in471, align 8
  %398 = load i8, i8* %397, align 1
  %conv472 = zext i8 %398 to i32
  %or473 = or i32 %shl469, %conv472
  %399 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff474 = getelementptr inbounds %struct.DState, %struct.DState* %399, i32 0, i32 7
  store i32 %or473, i32* %bsBuff474, align 4
  %400 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive475 = getelementptr inbounds %struct.DState, %struct.DState* %400, i32 0, i32 8
  %401 = load i32, i32* %bsLive475, align 4
  %add476 = add nsw i32 %401, 8
  store i32 %add476, i32* %bsLive475, align 4
  %402 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm477 = getelementptr inbounds %struct.DState, %struct.DState* %402, i32 0, i32 0
  %403 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm477, align 8
  %next_in478 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %403, i32 0, i32 0
  %404 = load i8*, i8** %next_in478, align 8
  %incdec.ptr479 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %incdec.ptr479, i8** %next_in478, align 8
  %405 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm480 = getelementptr inbounds %struct.DState, %struct.DState* %405, i32 0, i32 0
  %406 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm480, align 8
  %avail_in481 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %406, i32 0, i32 1
  %407 = load i32, i32* %avail_in481, align 4
  %dec482 = add i32 %407, -1
  store i32 %dec482, i32* %avail_in481, align 4
  %408 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm483 = getelementptr inbounds %struct.DState, %struct.DState* %408, i32 0, i32 0
  %409 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm483, align 8
  %total_in_lo32484 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %409, i32 0, i32 2
  %410 = load i32, i32* %total_in_lo32484, align 4
  %inc485 = add i32 %410, 1
  store i32 %inc485, i32* %total_in_lo32484, align 4
  %411 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm486 = getelementptr inbounds %struct.DState, %struct.DState* %411, i32 0, i32 0
  %412 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm486, align 8
  %total_in_lo32487 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %412, i32 0, i32 2
  %413 = load i32, i32* %total_in_lo32487, align 4
  %cmp488 = icmp eq i32 %413, 0
  br i1 %cmp488, label %if.then.490, label %if.end.494

if.then.490:                                      ; preds = %if.end.467
  %414 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm491 = getelementptr inbounds %struct.DState, %struct.DState* %414, i32 0, i32 0
  %415 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm491, align 8
  %total_in_hi32492 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %415, i32 0, i32 3
  %416 = load i32, i32* %total_in_hi32492, align 4
  %inc493 = add i32 %416, 1
  store i32 %inc493, i32* %total_in_hi32492, align 4
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.490, %if.end.467
  br label %while.body.448

while.end.495:                                    ; preds = %if.then.452
  %417 = load i32, i32* %nGroups, align 4
  %cmp496 = icmp slt i32 %417, 2
  br i1 %cmp496, label %if.then.501, label %lor.lhs.false.498

lor.lhs.false.498:                                ; preds = %while.end.495
  %418 = load i32, i32* %nGroups, align 4
  %cmp499 = icmp sgt i32 %418, 6
  br i1 %cmp499, label %if.then.501, label %if.end.502

if.then.501:                                      ; preds = %lor.lhs.false.498, %while.end.495
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.502:                                       ; preds = %lor.lhs.false.498
  br label %sw.bb.503

sw.bb.503:                                        ; preds = %if.end, %if.end.502
  %419 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state504 = getelementptr inbounds %struct.DState, %struct.DState* %419, i32 0, i32 1
  store i32 31, i32* %state504, align 4
  br label %while.body.505

while.body.505:                                   ; preds = %sw.bb.503, %if.end.551
  %420 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive506 = getelementptr inbounds %struct.DState, %struct.DState* %420, i32 0, i32 8
  %421 = load i32, i32* %bsLive506, align 4
  %cmp507 = icmp sge i32 %421, 15
  br i1 %cmp507, label %if.then.509, label %if.end.518

if.then.509:                                      ; preds = %while.body.505
  %422 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff511 = getelementptr inbounds %struct.DState, %struct.DState* %422, i32 0, i32 7
  %423 = load i32, i32* %bsBuff511, align 4
  %424 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive512 = getelementptr inbounds %struct.DState, %struct.DState* %424, i32 0, i32 8
  %425 = load i32, i32* %bsLive512, align 4
  %sub513 = sub nsw i32 %425, 15
  %shr514 = lshr i32 %423, %sub513
  %and515 = and i32 %shr514, 32767
  store i32 %and515, i32* %v510, align 4
  %426 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive516 = getelementptr inbounds %struct.DState, %struct.DState* %426, i32 0, i32 8
  %427 = load i32, i32* %bsLive516, align 4
  %sub517 = sub nsw i32 %427, 15
  store i32 %sub517, i32* %bsLive516, align 4
  %428 = load i32, i32* %v510, align 4
  store i32 %428, i32* %nSelectors, align 4
  br label %while.end.552

if.end.518:                                       ; preds = %while.body.505
  %429 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm519 = getelementptr inbounds %struct.DState, %struct.DState* %429, i32 0, i32 0
  %430 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm519, align 8
  %avail_in520 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %430, i32 0, i32 1
  %431 = load i32, i32* %avail_in520, align 4
  %cmp521 = icmp eq i32 %431, 0
  br i1 %cmp521, label %if.then.523, label %if.end.524

if.then.523:                                      ; preds = %if.end.518
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.524:                                       ; preds = %if.end.518
  %432 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff525 = getelementptr inbounds %struct.DState, %struct.DState* %432, i32 0, i32 7
  %433 = load i32, i32* %bsBuff525, align 4
  %shl526 = shl i32 %433, 8
  %434 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm527 = getelementptr inbounds %struct.DState, %struct.DState* %434, i32 0, i32 0
  %435 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm527, align 8
  %next_in528 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %435, i32 0, i32 0
  %436 = load i8*, i8** %next_in528, align 8
  %437 = load i8, i8* %436, align 1
  %conv529 = zext i8 %437 to i32
  %or530 = or i32 %shl526, %conv529
  %438 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff531 = getelementptr inbounds %struct.DState, %struct.DState* %438, i32 0, i32 7
  store i32 %or530, i32* %bsBuff531, align 4
  %439 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive532 = getelementptr inbounds %struct.DState, %struct.DState* %439, i32 0, i32 8
  %440 = load i32, i32* %bsLive532, align 4
  %add533 = add nsw i32 %440, 8
  store i32 %add533, i32* %bsLive532, align 4
  %441 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm534 = getelementptr inbounds %struct.DState, %struct.DState* %441, i32 0, i32 0
  %442 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm534, align 8
  %next_in535 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %442, i32 0, i32 0
  %443 = load i8*, i8** %next_in535, align 8
  %incdec.ptr536 = getelementptr inbounds i8, i8* %443, i32 1
  store i8* %incdec.ptr536, i8** %next_in535, align 8
  %444 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm537 = getelementptr inbounds %struct.DState, %struct.DState* %444, i32 0, i32 0
  %445 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm537, align 8
  %avail_in538 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %445, i32 0, i32 1
  %446 = load i32, i32* %avail_in538, align 4
  %dec539 = add i32 %446, -1
  store i32 %dec539, i32* %avail_in538, align 4
  %447 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm540 = getelementptr inbounds %struct.DState, %struct.DState* %447, i32 0, i32 0
  %448 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm540, align 8
  %total_in_lo32541 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %448, i32 0, i32 2
  %449 = load i32, i32* %total_in_lo32541, align 4
  %inc542 = add i32 %449, 1
  store i32 %inc542, i32* %total_in_lo32541, align 4
  %450 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm543 = getelementptr inbounds %struct.DState, %struct.DState* %450, i32 0, i32 0
  %451 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm543, align 8
  %total_in_lo32544 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %451, i32 0, i32 2
  %452 = load i32, i32* %total_in_lo32544, align 4
  %cmp545 = icmp eq i32 %452, 0
  br i1 %cmp545, label %if.then.547, label %if.end.551

if.then.547:                                      ; preds = %if.end.524
  %453 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm548 = getelementptr inbounds %struct.DState, %struct.DState* %453, i32 0, i32 0
  %454 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm548, align 8
  %total_in_hi32549 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %454, i32 0, i32 3
  %455 = load i32, i32* %total_in_hi32549, align 4
  %inc550 = add i32 %455, 1
  store i32 %inc550, i32* %total_in_hi32549, align 4
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.547, %if.end.524
  br label %while.body.505

while.end.552:                                    ; preds = %if.then.509
  %456 = load i32, i32* %nSelectors, align 4
  %cmp553 = icmp slt i32 %456, 1
  br i1 %cmp553, label %if.then.555, label %if.end.556

if.then.555:                                      ; preds = %while.end.552
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.556:                                       ; preds = %while.end.552
  store i32 0, i32* %i, align 4
  br label %for.cond.557

for.cond.557:                                     ; preds = %for.inc.628, %if.end.556
  %457 = load i32, i32* %i, align 4
  %458 = load i32, i32* %nSelectors, align 4
  %cmp558 = icmp slt i32 %457, %458
  br i1 %cmp558, label %for.body.560, label %for.end.630

for.body.560:                                     ; preds = %for.cond.557
  store i32 0, i32* %j, align 4
  br label %while.body.561

while.body.561:                                   ; preds = %for.body.560, %if.end.623
  br label %sw.bb.562

sw.bb.562:                                        ; preds = %if.end, %while.body.561
  %459 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state563 = getelementptr inbounds %struct.DState, %struct.DState* %459, i32 0, i32 1
  store i32 32, i32* %state563, align 4
  br label %while.body.565

while.body.565:                                   ; preds = %sw.bb.562, %if.end.612
  %460 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive566 = getelementptr inbounds %struct.DState, %struct.DState* %460, i32 0, i32 8
  %461 = load i32, i32* %bsLive566, align 4
  %cmp567 = icmp sge i32 %461, 1
  br i1 %cmp567, label %if.then.569, label %if.end.579

if.then.569:                                      ; preds = %while.body.565
  %462 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff571 = getelementptr inbounds %struct.DState, %struct.DState* %462, i32 0, i32 7
  %463 = load i32, i32* %bsBuff571, align 4
  %464 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive572 = getelementptr inbounds %struct.DState, %struct.DState* %464, i32 0, i32 8
  %465 = load i32, i32* %bsLive572, align 4
  %sub573 = sub nsw i32 %465, 1
  %shr574 = lshr i32 %463, %sub573
  %and575 = and i32 %shr574, 1
  store i32 %and575, i32* %v570, align 4
  %466 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive576 = getelementptr inbounds %struct.DState, %struct.DState* %466, i32 0, i32 8
  %467 = load i32, i32* %bsLive576, align 4
  %sub577 = sub nsw i32 %467, 1
  store i32 %sub577, i32* %bsLive576, align 4
  %468 = load i32, i32* %v570, align 4
  %conv578 = trunc i32 %468 to i8
  store i8 %conv578, i8* %uc, align 1
  br label %while.end.613

if.end.579:                                       ; preds = %while.body.565
  %469 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm580 = getelementptr inbounds %struct.DState, %struct.DState* %469, i32 0, i32 0
  %470 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm580, align 8
  %avail_in581 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %470, i32 0, i32 1
  %471 = load i32, i32* %avail_in581, align 4
  %cmp582 = icmp eq i32 %471, 0
  br i1 %cmp582, label %if.then.584, label %if.end.585

if.then.584:                                      ; preds = %if.end.579
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.585:                                       ; preds = %if.end.579
  %472 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff586 = getelementptr inbounds %struct.DState, %struct.DState* %472, i32 0, i32 7
  %473 = load i32, i32* %bsBuff586, align 4
  %shl587 = shl i32 %473, 8
  %474 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm588 = getelementptr inbounds %struct.DState, %struct.DState* %474, i32 0, i32 0
  %475 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm588, align 8
  %next_in589 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %475, i32 0, i32 0
  %476 = load i8*, i8** %next_in589, align 8
  %477 = load i8, i8* %476, align 1
  %conv590 = zext i8 %477 to i32
  %or591 = or i32 %shl587, %conv590
  %478 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff592 = getelementptr inbounds %struct.DState, %struct.DState* %478, i32 0, i32 7
  store i32 %or591, i32* %bsBuff592, align 4
  %479 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive593 = getelementptr inbounds %struct.DState, %struct.DState* %479, i32 0, i32 8
  %480 = load i32, i32* %bsLive593, align 4
  %add594 = add nsw i32 %480, 8
  store i32 %add594, i32* %bsLive593, align 4
  %481 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm595 = getelementptr inbounds %struct.DState, %struct.DState* %481, i32 0, i32 0
  %482 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm595, align 8
  %next_in596 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %482, i32 0, i32 0
  %483 = load i8*, i8** %next_in596, align 8
  %incdec.ptr597 = getelementptr inbounds i8, i8* %483, i32 1
  store i8* %incdec.ptr597, i8** %next_in596, align 8
  %484 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm598 = getelementptr inbounds %struct.DState, %struct.DState* %484, i32 0, i32 0
  %485 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm598, align 8
  %avail_in599 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %485, i32 0, i32 1
  %486 = load i32, i32* %avail_in599, align 4
  %dec600 = add i32 %486, -1
  store i32 %dec600, i32* %avail_in599, align 4
  %487 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm601 = getelementptr inbounds %struct.DState, %struct.DState* %487, i32 0, i32 0
  %488 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm601, align 8
  %total_in_lo32602 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %488, i32 0, i32 2
  %489 = load i32, i32* %total_in_lo32602, align 4
  %inc603 = add i32 %489, 1
  store i32 %inc603, i32* %total_in_lo32602, align 4
  %490 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm604 = getelementptr inbounds %struct.DState, %struct.DState* %490, i32 0, i32 0
  %491 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm604, align 8
  %total_in_lo32605 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %491, i32 0, i32 2
  %492 = load i32, i32* %total_in_lo32605, align 4
  %cmp606 = icmp eq i32 %492, 0
  br i1 %cmp606, label %if.then.608, label %if.end.612

if.then.608:                                      ; preds = %if.end.585
  %493 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm609 = getelementptr inbounds %struct.DState, %struct.DState* %493, i32 0, i32 0
  %494 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm609, align 8
  %total_in_hi32610 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %494, i32 0, i32 3
  %495 = load i32, i32* %total_in_hi32610, align 4
  %inc611 = add i32 %495, 1
  store i32 %inc611, i32* %total_in_hi32610, align 4
  br label %if.end.612

if.end.612:                                       ; preds = %if.then.608, %if.end.585
  br label %while.body.565

while.end.613:                                    ; preds = %if.then.569
  %496 = load i8, i8* %uc, align 1
  %conv614 = zext i8 %496 to i32
  %cmp615 = icmp eq i32 %conv614, 0
  br i1 %cmp615, label %if.then.617, label %if.end.618

if.then.617:                                      ; preds = %while.end.613
  br label %while.end.624

if.end.618:                                       ; preds = %while.end.613
  %497 = load i32, i32* %j, align 4
  %inc619 = add nsw i32 %497, 1
  store i32 %inc619, i32* %j, align 4
  %498 = load i32, i32* %j, align 4
  %499 = load i32, i32* %nGroups, align 4
  %cmp620 = icmp sge i32 %498, %499
  br i1 %cmp620, label %if.then.622, label %if.end.623

if.then.622:                                      ; preds = %if.end.618
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.623:                                       ; preds = %if.end.618
  br label %while.body.561

while.end.624:                                    ; preds = %if.then.617
  %500 = load i32, i32* %j, align 4
  %conv625 = trunc i32 %500 to i8
  %501 = load i32, i32* %i, align 4
  %idxprom626 = sext i32 %501 to i64
  %502 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selectorMtf = getelementptr inbounds %struct.DState, %struct.DState* %502, i32 0, i32 34
  %arrayidx627 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selectorMtf, i32 0, i64 %idxprom626
  store i8 %conv625, i8* %arrayidx627, align 1
  br label %for.inc.628

for.inc.628:                                      ; preds = %while.end.624
  %503 = load i32, i32* %i, align 4
  %inc629 = add nsw i32 %503, 1
  store i32 %inc629, i32* %i, align 4
  br label %for.cond.557

for.end.630:                                      ; preds = %for.cond.557
  store i8 0, i8* %v632, align 1
  br label %for.cond.633

for.cond.633:                                     ; preds = %for.inc.640, %for.end.630
  %504 = load i8, i8* %v632, align 1
  %conv634 = zext i8 %504 to i32
  %505 = load i32, i32* %nGroups, align 4
  %cmp635 = icmp slt i32 %conv634, %505
  br i1 %cmp635, label %for.body.637, label %for.end.642

for.body.637:                                     ; preds = %for.cond.633
  %506 = load i8, i8* %v632, align 1
  %507 = load i8, i8* %v632, align 1
  %idxprom638 = zext i8 %507 to i64
  %arrayidx639 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 %idxprom638
  store i8 %506, i8* %arrayidx639, align 1
  br label %for.inc.640

for.inc.640:                                      ; preds = %for.body.637
  %508 = load i8, i8* %v632, align 1
  %inc641 = add i8 %508, 1
  store i8 %inc641, i8* %v632, align 1
  br label %for.cond.633

for.end.642:                                      ; preds = %for.cond.633
  store i32 0, i32* %i, align 4
  br label %for.cond.643

for.cond.643:                                     ; preds = %for.inc.667, %for.end.642
  %509 = load i32, i32* %i, align 4
  %510 = load i32, i32* %nSelectors, align 4
  %cmp644 = icmp slt i32 %509, %510
  br i1 %cmp644, label %for.body.646, label %for.end.669

for.body.646:                                     ; preds = %for.cond.643
  %511 = load i32, i32* %i, align 4
  %idxprom647 = sext i32 %511 to i64
  %512 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selectorMtf648 = getelementptr inbounds %struct.DState, %struct.DState* %512, i32 0, i32 34
  %arrayidx649 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selectorMtf648, i32 0, i64 %idxprom647
  %513 = load i8, i8* %arrayidx649, align 1
  store i8 %513, i8* %v632, align 1
  %514 = load i8, i8* %v632, align 1
  %idxprom650 = zext i8 %514 to i64
  %arrayidx651 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 %idxprom650
  %515 = load i8, i8* %arrayidx651, align 1
  store i8 %515, i8* %tmp, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.655, %for.body.646
  %516 = load i8, i8* %v632, align 1
  %conv652 = zext i8 %516 to i32
  %cmp653 = icmp sgt i32 %conv652, 0
  br i1 %cmp653, label %while.body.655, label %while.end.663

while.body.655:                                   ; preds = %while.cond
  %517 = load i8, i8* %v632, align 1
  %conv656 = zext i8 %517 to i32
  %sub657 = sub nsw i32 %conv656, 1
  %idxprom658 = sext i32 %sub657 to i64
  %arrayidx659 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 %idxprom658
  %518 = load i8, i8* %arrayidx659, align 1
  %519 = load i8, i8* %v632, align 1
  %idxprom660 = zext i8 %519 to i64
  %arrayidx661 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 %idxprom660
  store i8 %518, i8* %arrayidx661, align 1
  %520 = load i8, i8* %v632, align 1
  %dec662 = add i8 %520, -1
  store i8 %dec662, i8* %v632, align 1
  br label %while.cond

while.end.663:                                    ; preds = %while.cond
  %521 = load i8, i8* %tmp, align 1
  %arrayidx664 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i32 0, i64 0
  store i8 %521, i8* %arrayidx664, align 1
  %522 = load i8, i8* %tmp, align 1
  %523 = load i32, i32* %i, align 4
  %idxprom665 = sext i32 %523 to i64
  %524 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector = getelementptr inbounds %struct.DState, %struct.DState* %524, i32 0, i32 33
  %arrayidx666 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector, i32 0, i64 %idxprom665
  store i8 %522, i8* %arrayidx666, align 1
  br label %for.inc.667

for.inc.667:                                      ; preds = %while.end.663
  %525 = load i32, i32* %i, align 4
  %inc668 = add nsw i32 %525, 1
  store i32 %inc668, i32* %i, align 4
  br label %for.cond.643

for.end.669:                                      ; preds = %for.cond.643
  store i32 0, i32* %t, align 4
  br label %for.cond.670

for.cond.670:                                     ; preds = %for.inc.867, %for.end.669
  %526 = load i32, i32* %t, align 4
  %527 = load i32, i32* %nGroups, align 4
  %cmp671 = icmp slt i32 %526, %527
  br i1 %cmp671, label %for.body.673, label %for.end.869

for.body.673:                                     ; preds = %for.cond.670
  br label %sw.bb.674

sw.bb.674:                                        ; preds = %if.end, %for.body.673
  %528 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state675 = getelementptr inbounds %struct.DState, %struct.DState* %528, i32 0, i32 1
  store i32 33, i32* %state675, align 4
  br label %while.body.677

while.body.677:                                   ; preds = %sw.bb.674, %if.end.724
  %529 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive678 = getelementptr inbounds %struct.DState, %struct.DState* %529, i32 0, i32 8
  %530 = load i32, i32* %bsLive678, align 4
  %cmp679 = icmp sge i32 %530, 5
  br i1 %cmp679, label %if.then.681, label %if.end.691

if.then.681:                                      ; preds = %while.body.677
  %531 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff684 = getelementptr inbounds %struct.DState, %struct.DState* %531, i32 0, i32 7
  %532 = load i32, i32* %bsBuff684, align 4
  %533 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive685 = getelementptr inbounds %struct.DState, %struct.DState* %533, i32 0, i32 8
  %534 = load i32, i32* %bsLive685, align 4
  %sub686 = sub nsw i32 %534, 5
  %shr687 = lshr i32 %532, %sub686
  %and688 = and i32 %shr687, 31
  store i32 %and688, i32* %v683, align 4
  %535 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive689 = getelementptr inbounds %struct.DState, %struct.DState* %535, i32 0, i32 8
  %536 = load i32, i32* %bsLive689, align 4
  %sub690 = sub nsw i32 %536, 5
  store i32 %sub690, i32* %bsLive689, align 4
  %537 = load i32, i32* %v683, align 4
  store i32 %537, i32* %curr, align 4
  br label %while.end.725

if.end.691:                                       ; preds = %while.body.677
  %538 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm692 = getelementptr inbounds %struct.DState, %struct.DState* %538, i32 0, i32 0
  %539 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm692, align 8
  %avail_in693 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %539, i32 0, i32 1
  %540 = load i32, i32* %avail_in693, align 4
  %cmp694 = icmp eq i32 %540, 0
  br i1 %cmp694, label %if.then.696, label %if.end.697

if.then.696:                                      ; preds = %if.end.691
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.697:                                       ; preds = %if.end.691
  %541 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff698 = getelementptr inbounds %struct.DState, %struct.DState* %541, i32 0, i32 7
  %542 = load i32, i32* %bsBuff698, align 4
  %shl699 = shl i32 %542, 8
  %543 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm700 = getelementptr inbounds %struct.DState, %struct.DState* %543, i32 0, i32 0
  %544 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm700, align 8
  %next_in701 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %544, i32 0, i32 0
  %545 = load i8*, i8** %next_in701, align 8
  %546 = load i8, i8* %545, align 1
  %conv702 = zext i8 %546 to i32
  %or703 = or i32 %shl699, %conv702
  %547 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff704 = getelementptr inbounds %struct.DState, %struct.DState* %547, i32 0, i32 7
  store i32 %or703, i32* %bsBuff704, align 4
  %548 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive705 = getelementptr inbounds %struct.DState, %struct.DState* %548, i32 0, i32 8
  %549 = load i32, i32* %bsLive705, align 4
  %add706 = add nsw i32 %549, 8
  store i32 %add706, i32* %bsLive705, align 4
  %550 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm707 = getelementptr inbounds %struct.DState, %struct.DState* %550, i32 0, i32 0
  %551 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm707, align 8
  %next_in708 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %551, i32 0, i32 0
  %552 = load i8*, i8** %next_in708, align 8
  %incdec.ptr709 = getelementptr inbounds i8, i8* %552, i32 1
  store i8* %incdec.ptr709, i8** %next_in708, align 8
  %553 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm710 = getelementptr inbounds %struct.DState, %struct.DState* %553, i32 0, i32 0
  %554 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm710, align 8
  %avail_in711 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %554, i32 0, i32 1
  %555 = load i32, i32* %avail_in711, align 4
  %dec712 = add i32 %555, -1
  store i32 %dec712, i32* %avail_in711, align 4
  %556 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm713 = getelementptr inbounds %struct.DState, %struct.DState* %556, i32 0, i32 0
  %557 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm713, align 8
  %total_in_lo32714 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %557, i32 0, i32 2
  %558 = load i32, i32* %total_in_lo32714, align 4
  %inc715 = add i32 %558, 1
  store i32 %inc715, i32* %total_in_lo32714, align 4
  %559 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm716 = getelementptr inbounds %struct.DState, %struct.DState* %559, i32 0, i32 0
  %560 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm716, align 8
  %total_in_lo32717 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %560, i32 0, i32 2
  %561 = load i32, i32* %total_in_lo32717, align 4
  %cmp718 = icmp eq i32 %561, 0
  br i1 %cmp718, label %if.then.720, label %if.end.724

if.then.720:                                      ; preds = %if.end.697
  %562 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm721 = getelementptr inbounds %struct.DState, %struct.DState* %562, i32 0, i32 0
  %563 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm721, align 8
  %total_in_hi32722 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %563, i32 0, i32 3
  %564 = load i32, i32* %total_in_hi32722, align 4
  %inc723 = add i32 %564, 1
  store i32 %inc723, i32* %total_in_hi32722, align 4
  br label %if.end.724

if.end.724:                                       ; preds = %if.then.720, %if.end.697
  br label %while.body.677

while.end.725:                                    ; preds = %if.then.681
  store i32 0, i32* %i, align 4
  br label %for.cond.726

for.cond.726:                                     ; preds = %for.inc.864, %while.end.725
  %565 = load i32, i32* %i, align 4
  %566 = load i32, i32* %alphaSize, align 4
  %cmp727 = icmp slt i32 %565, %566
  br i1 %cmp727, label %for.body.729, label %for.end.866

for.body.729:                                     ; preds = %for.cond.726
  br label %while.body.731

while.body.731:                                   ; preds = %for.body.729, %if.end.857
  %567 = load i32, i32* %curr, align 4
  %cmp732 = icmp slt i32 %567, 1
  br i1 %cmp732, label %if.then.737, label %lor.lhs.false.734

lor.lhs.false.734:                                ; preds = %while.body.731
  %568 = load i32, i32* %curr, align 4
  %cmp735 = icmp sgt i32 %568, 20
  br i1 %cmp735, label %if.then.737, label %if.end.738

if.then.737:                                      ; preds = %lor.lhs.false.734, %while.body.731
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.738:                                       ; preds = %lor.lhs.false.734
  br label %sw.bb.739

sw.bb.739:                                        ; preds = %if.end, %if.end.738
  %569 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state740 = getelementptr inbounds %struct.DState, %struct.DState* %569, i32 0, i32 1
  store i32 34, i32* %state740, align 4
  br label %while.body.742

while.body.742:                                   ; preds = %sw.bb.739, %if.end.790
  %570 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive743 = getelementptr inbounds %struct.DState, %struct.DState* %570, i32 0, i32 8
  %571 = load i32, i32* %bsLive743, align 4
  %cmp744 = icmp sge i32 %571, 1
  br i1 %cmp744, label %if.then.746, label %if.end.757

if.then.746:                                      ; preds = %while.body.742
  %572 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff749 = getelementptr inbounds %struct.DState, %struct.DState* %572, i32 0, i32 7
  %573 = load i32, i32* %bsBuff749, align 4
  %574 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive750 = getelementptr inbounds %struct.DState, %struct.DState* %574, i32 0, i32 8
  %575 = load i32, i32* %bsLive750, align 4
  %sub751 = sub nsw i32 %575, 1
  %shr752 = lshr i32 %573, %sub751
  %and753 = and i32 %shr752, 1
  store i32 %and753, i32* %v748, align 4
  %576 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive754 = getelementptr inbounds %struct.DState, %struct.DState* %576, i32 0, i32 8
  %577 = load i32, i32* %bsLive754, align 4
  %sub755 = sub nsw i32 %577, 1
  store i32 %sub755, i32* %bsLive754, align 4
  %578 = load i32, i32* %v748, align 4
  %conv756 = trunc i32 %578 to i8
  store i8 %conv756, i8* %uc, align 1
  br label %while.end.791

if.end.757:                                       ; preds = %while.body.742
  %579 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm758 = getelementptr inbounds %struct.DState, %struct.DState* %579, i32 0, i32 0
  %580 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm758, align 8
  %avail_in759 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %580, i32 0, i32 1
  %581 = load i32, i32* %avail_in759, align 4
  %cmp760 = icmp eq i32 %581, 0
  br i1 %cmp760, label %if.then.762, label %if.end.763

if.then.762:                                      ; preds = %if.end.757
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.763:                                       ; preds = %if.end.757
  %582 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff764 = getelementptr inbounds %struct.DState, %struct.DState* %582, i32 0, i32 7
  %583 = load i32, i32* %bsBuff764, align 4
  %shl765 = shl i32 %583, 8
  %584 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm766 = getelementptr inbounds %struct.DState, %struct.DState* %584, i32 0, i32 0
  %585 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm766, align 8
  %next_in767 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %585, i32 0, i32 0
  %586 = load i8*, i8** %next_in767, align 8
  %587 = load i8, i8* %586, align 1
  %conv768 = zext i8 %587 to i32
  %or769 = or i32 %shl765, %conv768
  %588 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff770 = getelementptr inbounds %struct.DState, %struct.DState* %588, i32 0, i32 7
  store i32 %or769, i32* %bsBuff770, align 4
  %589 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive771 = getelementptr inbounds %struct.DState, %struct.DState* %589, i32 0, i32 8
  %590 = load i32, i32* %bsLive771, align 4
  %add772 = add nsw i32 %590, 8
  store i32 %add772, i32* %bsLive771, align 4
  %591 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm773 = getelementptr inbounds %struct.DState, %struct.DState* %591, i32 0, i32 0
  %592 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm773, align 8
  %next_in774 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %592, i32 0, i32 0
  %593 = load i8*, i8** %next_in774, align 8
  %incdec.ptr775 = getelementptr inbounds i8, i8* %593, i32 1
  store i8* %incdec.ptr775, i8** %next_in774, align 8
  %594 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm776 = getelementptr inbounds %struct.DState, %struct.DState* %594, i32 0, i32 0
  %595 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm776, align 8
  %avail_in777 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %595, i32 0, i32 1
  %596 = load i32, i32* %avail_in777, align 4
  %dec778 = add i32 %596, -1
  store i32 %dec778, i32* %avail_in777, align 4
  %597 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm779 = getelementptr inbounds %struct.DState, %struct.DState* %597, i32 0, i32 0
  %598 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm779, align 8
  %total_in_lo32780 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %598, i32 0, i32 2
  %599 = load i32, i32* %total_in_lo32780, align 4
  %inc781 = add i32 %599, 1
  store i32 %inc781, i32* %total_in_lo32780, align 4
  %600 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm782 = getelementptr inbounds %struct.DState, %struct.DState* %600, i32 0, i32 0
  %601 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm782, align 8
  %total_in_lo32783 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %601, i32 0, i32 2
  %602 = load i32, i32* %total_in_lo32783, align 4
  %cmp784 = icmp eq i32 %602, 0
  br i1 %cmp784, label %if.then.786, label %if.end.790

if.then.786:                                      ; preds = %if.end.763
  %603 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm787 = getelementptr inbounds %struct.DState, %struct.DState* %603, i32 0, i32 0
  %604 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm787, align 8
  %total_in_hi32788 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %604, i32 0, i32 3
  %605 = load i32, i32* %total_in_hi32788, align 4
  %inc789 = add i32 %605, 1
  store i32 %inc789, i32* %total_in_hi32788, align 4
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.786, %if.end.763
  br label %while.body.742

while.end.791:                                    ; preds = %if.then.746
  %606 = load i8, i8* %uc, align 1
  %conv792 = zext i8 %606 to i32
  %cmp793 = icmp eq i32 %conv792, 0
  br i1 %cmp793, label %if.then.795, label %if.end.796

if.then.795:                                      ; preds = %while.end.791
  br label %while.end.858

if.end.796:                                       ; preds = %while.end.791
  br label %sw.bb.797

sw.bb.797:                                        ; preds = %if.end, %if.end.796
  %607 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state798 = getelementptr inbounds %struct.DState, %struct.DState* %607, i32 0, i32 1
  store i32 35, i32* %state798, align 4
  br label %while.body.800

while.body.800:                                   ; preds = %sw.bb.797, %if.end.848
  %608 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive801 = getelementptr inbounds %struct.DState, %struct.DState* %608, i32 0, i32 8
  %609 = load i32, i32* %bsLive801, align 4
  %cmp802 = icmp sge i32 %609, 1
  br i1 %cmp802, label %if.then.804, label %if.end.815

if.then.804:                                      ; preds = %while.body.800
  %610 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff807 = getelementptr inbounds %struct.DState, %struct.DState* %610, i32 0, i32 7
  %611 = load i32, i32* %bsBuff807, align 4
  %612 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive808 = getelementptr inbounds %struct.DState, %struct.DState* %612, i32 0, i32 8
  %613 = load i32, i32* %bsLive808, align 4
  %sub809 = sub nsw i32 %613, 1
  %shr810 = lshr i32 %611, %sub809
  %and811 = and i32 %shr810, 1
  store i32 %and811, i32* %v806, align 4
  %614 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive812 = getelementptr inbounds %struct.DState, %struct.DState* %614, i32 0, i32 8
  %615 = load i32, i32* %bsLive812, align 4
  %sub813 = sub nsw i32 %615, 1
  store i32 %sub813, i32* %bsLive812, align 4
  %616 = load i32, i32* %v806, align 4
  %conv814 = trunc i32 %616 to i8
  store i8 %conv814, i8* %uc, align 1
  br label %while.end.849

if.end.815:                                       ; preds = %while.body.800
  %617 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm816 = getelementptr inbounds %struct.DState, %struct.DState* %617, i32 0, i32 0
  %618 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm816, align 8
  %avail_in817 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %618, i32 0, i32 1
  %619 = load i32, i32* %avail_in817, align 4
  %cmp818 = icmp eq i32 %619, 0
  br i1 %cmp818, label %if.then.820, label %if.end.821

if.then.820:                                      ; preds = %if.end.815
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.821:                                       ; preds = %if.end.815
  %620 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff822 = getelementptr inbounds %struct.DState, %struct.DState* %620, i32 0, i32 7
  %621 = load i32, i32* %bsBuff822, align 4
  %shl823 = shl i32 %621, 8
  %622 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm824 = getelementptr inbounds %struct.DState, %struct.DState* %622, i32 0, i32 0
  %623 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm824, align 8
  %next_in825 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %623, i32 0, i32 0
  %624 = load i8*, i8** %next_in825, align 8
  %625 = load i8, i8* %624, align 1
  %conv826 = zext i8 %625 to i32
  %or827 = or i32 %shl823, %conv826
  %626 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff828 = getelementptr inbounds %struct.DState, %struct.DState* %626, i32 0, i32 7
  store i32 %or827, i32* %bsBuff828, align 4
  %627 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive829 = getelementptr inbounds %struct.DState, %struct.DState* %627, i32 0, i32 8
  %628 = load i32, i32* %bsLive829, align 4
  %add830 = add nsw i32 %628, 8
  store i32 %add830, i32* %bsLive829, align 4
  %629 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm831 = getelementptr inbounds %struct.DState, %struct.DState* %629, i32 0, i32 0
  %630 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm831, align 8
  %next_in832 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %630, i32 0, i32 0
  %631 = load i8*, i8** %next_in832, align 8
  %incdec.ptr833 = getelementptr inbounds i8, i8* %631, i32 1
  store i8* %incdec.ptr833, i8** %next_in832, align 8
  %632 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm834 = getelementptr inbounds %struct.DState, %struct.DState* %632, i32 0, i32 0
  %633 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm834, align 8
  %avail_in835 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %633, i32 0, i32 1
  %634 = load i32, i32* %avail_in835, align 4
  %dec836 = add i32 %634, -1
  store i32 %dec836, i32* %avail_in835, align 4
  %635 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm837 = getelementptr inbounds %struct.DState, %struct.DState* %635, i32 0, i32 0
  %636 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm837, align 8
  %total_in_lo32838 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %636, i32 0, i32 2
  %637 = load i32, i32* %total_in_lo32838, align 4
  %inc839 = add i32 %637, 1
  store i32 %inc839, i32* %total_in_lo32838, align 4
  %638 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm840 = getelementptr inbounds %struct.DState, %struct.DState* %638, i32 0, i32 0
  %639 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm840, align 8
  %total_in_lo32841 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %639, i32 0, i32 2
  %640 = load i32, i32* %total_in_lo32841, align 4
  %cmp842 = icmp eq i32 %640, 0
  br i1 %cmp842, label %if.then.844, label %if.end.848

if.then.844:                                      ; preds = %if.end.821
  %641 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm845 = getelementptr inbounds %struct.DState, %struct.DState* %641, i32 0, i32 0
  %642 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm845, align 8
  %total_in_hi32846 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %642, i32 0, i32 3
  %643 = load i32, i32* %total_in_hi32846, align 4
  %inc847 = add i32 %643, 1
  store i32 %inc847, i32* %total_in_hi32846, align 4
  br label %if.end.848

if.end.848:                                       ; preds = %if.then.844, %if.end.821
  br label %while.body.800

while.end.849:                                    ; preds = %if.then.804
  %644 = load i8, i8* %uc, align 1
  %conv850 = zext i8 %644 to i32
  %cmp851 = icmp eq i32 %conv850, 0
  br i1 %cmp851, label %if.then.853, label %if.else.855

if.then.853:                                      ; preds = %while.end.849
  %645 = load i32, i32* %curr, align 4
  %inc854 = add nsw i32 %645, 1
  store i32 %inc854, i32* %curr, align 4
  br label %if.end.857

if.else.855:                                      ; preds = %while.end.849
  %646 = load i32, i32* %curr, align 4
  %dec856 = add nsw i32 %646, -1
  store i32 %dec856, i32* %curr, align 4
  br label %if.end.857

if.end.857:                                       ; preds = %if.else.855, %if.then.853
  br label %while.body.731

while.end.858:                                    ; preds = %if.then.795
  %647 = load i32, i32* %curr, align 4
  %conv859 = trunc i32 %647 to i8
  %648 = load i32, i32* %i, align 4
  %idxprom860 = sext i32 %648 to i64
  %649 = load i32, i32* %t, align 4
  %idxprom861 = sext i32 %649 to i64
  %650 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len = getelementptr inbounds %struct.DState, %struct.DState* %650, i32 0, i32 35
  %arrayidx862 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len, i32 0, i64 %idxprom861
  %arrayidx863 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx862, i32 0, i64 %idxprom860
  store i8 %conv859, i8* %arrayidx863, align 1
  br label %for.inc.864

for.inc.864:                                      ; preds = %while.end.858
  %651 = load i32, i32* %i, align 4
  %inc865 = add nsw i32 %651, 1
  store i32 %inc865, i32* %i, align 4
  br label %for.cond.726

for.end.866:                                      ; preds = %for.cond.726
  br label %for.inc.867

for.inc.867:                                      ; preds = %for.end.866
  %652 = load i32, i32* %t, align 4
  %inc868 = add nsw i32 %652, 1
  store i32 %inc868, i32* %t, align 4
  br label %for.cond.670

for.end.869:                                      ; preds = %for.cond.670
  store i32 0, i32* %t, align 4
  br label %for.cond.870

for.cond.870:                                     ; preds = %for.inc.928, %for.end.869
  %653 = load i32, i32* %t, align 4
  %654 = load i32, i32* %nGroups, align 4
  %cmp871 = icmp slt i32 %653, %654
  br i1 %cmp871, label %for.body.873, label %for.end.930

for.body.873:                                     ; preds = %for.cond.870
  store i32 32, i32* %minLen, align 4
  store i32 0, i32* %maxLen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.874

for.cond.874:                                     ; preds = %for.inc.910, %for.body.873
  %655 = load i32, i32* %i, align 4
  %656 = load i32, i32* %alphaSize, align 4
  %cmp875 = icmp slt i32 %655, %656
  br i1 %cmp875, label %for.body.877, label %for.end.912

for.body.877:                                     ; preds = %for.cond.874
  %657 = load i32, i32* %i, align 4
  %idxprom878 = sext i32 %657 to i64
  %658 = load i32, i32* %t, align 4
  %idxprom879 = sext i32 %658 to i64
  %659 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len880 = getelementptr inbounds %struct.DState, %struct.DState* %659, i32 0, i32 35
  %arrayidx881 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len880, i32 0, i64 %idxprom879
  %arrayidx882 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx881, i32 0, i64 %idxprom878
  %660 = load i8, i8* %arrayidx882, align 1
  %conv883 = zext i8 %660 to i32
  %661 = load i32, i32* %maxLen, align 4
  %cmp884 = icmp sgt i32 %conv883, %661
  br i1 %cmp884, label %if.then.886, label %if.end.893

if.then.886:                                      ; preds = %for.body.877
  %662 = load i32, i32* %i, align 4
  %idxprom887 = sext i32 %662 to i64
  %663 = load i32, i32* %t, align 4
  %idxprom888 = sext i32 %663 to i64
  %664 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len889 = getelementptr inbounds %struct.DState, %struct.DState* %664, i32 0, i32 35
  %arrayidx890 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len889, i32 0, i64 %idxprom888
  %arrayidx891 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx890, i32 0, i64 %idxprom887
  %665 = load i8, i8* %arrayidx891, align 1
  %conv892 = zext i8 %665 to i32
  store i32 %conv892, i32* %maxLen, align 4
  br label %if.end.893

if.end.893:                                       ; preds = %if.then.886, %for.body.877
  %666 = load i32, i32* %i, align 4
  %idxprom894 = sext i32 %666 to i64
  %667 = load i32, i32* %t, align 4
  %idxprom895 = sext i32 %667 to i64
  %668 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len896 = getelementptr inbounds %struct.DState, %struct.DState* %668, i32 0, i32 35
  %arrayidx897 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len896, i32 0, i64 %idxprom895
  %arrayidx898 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx897, i32 0, i64 %idxprom894
  %669 = load i8, i8* %arrayidx898, align 1
  %conv899 = zext i8 %669 to i32
  %670 = load i32, i32* %minLen, align 4
  %cmp900 = icmp slt i32 %conv899, %670
  br i1 %cmp900, label %if.then.902, label %if.end.909

if.then.902:                                      ; preds = %if.end.893
  %671 = load i32, i32* %i, align 4
  %idxprom903 = sext i32 %671 to i64
  %672 = load i32, i32* %t, align 4
  %idxprom904 = sext i32 %672 to i64
  %673 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len905 = getelementptr inbounds %struct.DState, %struct.DState* %673, i32 0, i32 35
  %arrayidx906 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len905, i32 0, i64 %idxprom904
  %arrayidx907 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx906, i32 0, i64 %idxprom903
  %674 = load i8, i8* %arrayidx907, align 1
  %conv908 = zext i8 %674 to i32
  store i32 %conv908, i32* %minLen, align 4
  br label %if.end.909

if.end.909:                                       ; preds = %if.then.902, %if.end.893
  br label %for.inc.910

for.inc.910:                                      ; preds = %if.end.909
  %675 = load i32, i32* %i, align 4
  %inc911 = add nsw i32 %675, 1
  store i32 %inc911, i32* %i, align 4
  br label %for.cond.874

for.end.912:                                      ; preds = %for.cond.874
  %676 = load i32, i32* %t, align 4
  %idxprom913 = sext i32 %676 to i64
  %677 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit = getelementptr inbounds %struct.DState, %struct.DState* %677, i32 0, i32 36
  %arrayidx914 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit, i32 0, i64 %idxprom913
  %arrayidx915 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx914, i32 0, i64 0
  %678 = load i32, i32* %t, align 4
  %idxprom916 = sext i32 %678 to i64
  %679 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base = getelementptr inbounds %struct.DState, %struct.DState* %679, i32 0, i32 37
  %arrayidx917 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base, i32 0, i64 %idxprom916
  %arrayidx918 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx917, i32 0, i64 0
  %680 = load i32, i32* %t, align 4
  %idxprom919 = sext i32 %680 to i64
  %681 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm = getelementptr inbounds %struct.DState, %struct.DState* %681, i32 0, i32 38
  %arrayidx920 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm, i32 0, i64 %idxprom919
  %arrayidx921 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx920, i32 0, i64 0
  %682 = load i32, i32* %t, align 4
  %idxprom922 = sext i32 %682 to i64
  %683 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len923 = getelementptr inbounds %struct.DState, %struct.DState* %683, i32 0, i32 35
  %arrayidx924 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len923, i32 0, i64 %idxprom922
  %arrayidx925 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx924, i32 0, i64 0
  %684 = load i32, i32* %minLen, align 4
  %685 = load i32, i32* %maxLen, align 4
  %686 = load i32, i32* %alphaSize, align 4
  call void @CreateDecodeTables(i32* %arrayidx915, i32* %arrayidx918, i32* %arrayidx921, i8* %arrayidx925, i32 %684, i32 %685, i32 %686)
  %687 = load i32, i32* %minLen, align 4
  %688 = load i32, i32* %t, align 4
  %idxprom926 = sext i32 %688 to i64
  %689 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens = getelementptr inbounds %struct.DState, %struct.DState* %689, i32 0, i32 39
  %arrayidx927 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens, i32 0, i64 %idxprom926
  store i32 %687, i32* %arrayidx927, align 4
  br label %for.inc.928

for.inc.928:                                      ; preds = %for.end.912
  %690 = load i32, i32* %t, align 4
  %inc929 = add nsw i32 %690, 1
  store i32 %inc929, i32* %t, align 4
  br label %for.cond.870

for.end.930:                                      ; preds = %for.cond.870
  %691 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse931 = getelementptr inbounds %struct.DState, %struct.DState* %691, i32 0, i32 27
  %692 = load i32, i32* %nInUse931, align 4
  %add932 = add nsw i32 %692, 1
  store i32 %add932, i32* %EOB, align 4
  %693 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k933 = getelementptr inbounds %struct.DState, %struct.DState* %693, i32 0, i32 9
  %694 = load i32, i32* %blockSize100k933, align 4
  %mul934 = mul nsw i32 100000, %694
  store i32 %mul934, i32* %nblockMAX, align 4
  store i32 -1, i32* %groupNo, align 4
  store i32 0, i32* %groupPos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.935

for.cond.935:                                     ; preds = %for.inc.941, %for.end.930
  %695 = load i32, i32* %i, align 4
  %cmp936 = icmp sle i32 %695, 255
  br i1 %cmp936, label %for.body.938, label %for.end.943

for.body.938:                                     ; preds = %for.cond.935
  %696 = load i32, i32* %i, align 4
  %idxprom939 = sext i32 %696 to i64
  %697 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab = getelementptr inbounds %struct.DState, %struct.DState* %697, i32 0, i32 16
  %arrayidx940 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab, i32 0, i64 %idxprom939
  store i32 0, i32* %arrayidx940, align 4
  br label %for.inc.941

for.inc.941:                                      ; preds = %for.body.938
  %698 = load i32, i32* %i, align 4
  %inc942 = add nsw i32 %698, 1
  store i32 %inc942, i32* %i, align 4
  br label %for.cond.935

for.end.943:                                      ; preds = %for.cond.935
  store i32 4095, i32* %kk, align 4
  store i32 15, i32* %ii, align 4
  br label %for.cond.947

for.cond.947:                                     ; preds = %for.inc.967, %for.end.943
  %699 = load i32, i32* %ii, align 4
  %cmp948 = icmp sge i32 %699, 0
  br i1 %cmp948, label %for.body.950, label %for.end.969

for.body.950:                                     ; preds = %for.cond.947
  store i32 15, i32* %jj, align 4
  br label %for.cond.951

for.cond.951:                                     ; preds = %for.inc.961, %for.body.950
  %700 = load i32, i32* %jj, align 4
  %cmp952 = icmp sge i32 %700, 0
  br i1 %cmp952, label %for.body.954, label %for.end.963

for.body.954:                                     ; preds = %for.cond.951
  %701 = load i32, i32* %ii, align 4
  %mul955 = mul nsw i32 %701, 16
  %702 = load i32, i32* %jj, align 4
  %add956 = add nsw i32 %mul955, %702
  %conv957 = trunc i32 %add956 to i8
  %703 = load i32, i32* %kk, align 4
  %idxprom958 = sext i32 %703 to i64
  %704 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa = getelementptr inbounds %struct.DState, %struct.DState* %704, i32 0, i32 31
  %arrayidx959 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa, i32 0, i64 %idxprom958
  store i8 %conv957, i8* %arrayidx959, align 1
  %705 = load i32, i32* %kk, align 4
  %dec960 = add nsw i32 %705, -1
  store i32 %dec960, i32* %kk, align 4
  br label %for.inc.961

for.inc.961:                                      ; preds = %for.body.954
  %706 = load i32, i32* %jj, align 4
  %dec962 = add nsw i32 %706, -1
  store i32 %dec962, i32* %jj, align 4
  br label %for.cond.951

for.end.963:                                      ; preds = %for.cond.951
  %707 = load i32, i32* %kk, align 4
  %add964 = add nsw i32 %707, 1
  %708 = load i32, i32* %ii, align 4
  %idxprom965 = sext i32 %708 to i64
  %709 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase = getelementptr inbounds %struct.DState, %struct.DState* %709, i32 0, i32 32
  %arrayidx966 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase, i32 0, i64 %idxprom965
  store i32 %add964, i32* %arrayidx966, align 4
  br label %for.inc.967

for.inc.967:                                      ; preds = %for.end.963
  %710 = load i32, i32* %ii, align 4
  %dec968 = add nsw i32 %710, -1
  store i32 %dec968, i32* %ii, align 4
  br label %for.cond.947

for.end.969:                                      ; preds = %for.cond.947
  store i32 0, i32* %nblock, align 4
  %711 = load i32, i32* %groupPos, align 4
  %cmp970 = icmp eq i32 %711, 0
  br i1 %cmp970, label %if.then.972, label %if.end.997

if.then.972:                                      ; preds = %for.end.969
  %712 = load i32, i32* %groupNo, align 4
  %inc973 = add nsw i32 %712, 1
  store i32 %inc973, i32* %groupNo, align 4
  %713 = load i32, i32* %groupNo, align 4
  %714 = load i32, i32* %nSelectors, align 4
  %cmp974 = icmp sge i32 %713, %714
  br i1 %cmp974, label %if.then.976, label %if.end.977

if.then.976:                                      ; preds = %if.then.972
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.977:                                       ; preds = %if.then.972
  store i32 50, i32* %groupPos, align 4
  %715 = load i32, i32* %groupNo, align 4
  %idxprom978 = sext i32 %715 to i64
  %716 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector979 = getelementptr inbounds %struct.DState, %struct.DState* %716, i32 0, i32 33
  %arrayidx980 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector979, i32 0, i64 %idxprom978
  %717 = load i8, i8* %arrayidx980, align 1
  %conv981 = zext i8 %717 to i32
  store i32 %conv981, i32* %gSel, align 4
  %718 = load i32, i32* %gSel, align 4
  %idxprom982 = sext i32 %718 to i64
  %719 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens983 = getelementptr inbounds %struct.DState, %struct.DState* %719, i32 0, i32 39
  %arrayidx984 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens983, i32 0, i64 %idxprom982
  %720 = load i32, i32* %arrayidx984, align 4
  store i32 %720, i32* %gMinlen, align 4
  %721 = load i32, i32* %gSel, align 4
  %idxprom985 = sext i32 %721 to i64
  %722 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit986 = getelementptr inbounds %struct.DState, %struct.DState* %722, i32 0, i32 36
  %arrayidx987 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit986, i32 0, i64 %idxprom985
  %arrayidx988 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx987, i32 0, i64 0
  store i32* %arrayidx988, i32** %gLimit, align 8
  %723 = load i32, i32* %gSel, align 4
  %idxprom989 = sext i32 %723 to i64
  %724 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm990 = getelementptr inbounds %struct.DState, %struct.DState* %724, i32 0, i32 38
  %arrayidx991 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm990, i32 0, i64 %idxprom989
  %arrayidx992 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx991, i32 0, i64 0
  store i32* %arrayidx992, i32** %gPerm, align 8
  %725 = load i32, i32* %gSel, align 4
  %idxprom993 = sext i32 %725 to i64
  %726 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base994 = getelementptr inbounds %struct.DState, %struct.DState* %726, i32 0, i32 37
  %arrayidx995 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base994, i32 0, i64 %idxprom993
  %arrayidx996 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx995, i32 0, i64 0
  store i32* %arrayidx996, i32** %gBase, align 8
  br label %if.end.997

if.end.997:                                       ; preds = %if.end.977, %for.end.969
  %727 = load i32, i32* %groupPos, align 4
  %dec998 = add nsw i32 %727, -1
  store i32 %dec998, i32* %groupPos, align 4
  %728 = load i32, i32* %gMinlen, align 4
  store i32 %728, i32* %zn, align 4
  br label %sw.bb.999

sw.bb.999:                                        ; preds = %if.end, %if.end.997
  %729 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1000 = getelementptr inbounds %struct.DState, %struct.DState* %729, i32 0, i32 1
  store i32 36, i32* %state1000, align 4
  br label %while.body.1002

while.body.1002:                                  ; preds = %sw.bb.999, %if.end.1051
  %730 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1003 = getelementptr inbounds %struct.DState, %struct.DState* %730, i32 0, i32 8
  %731 = load i32, i32* %bsLive1003, align 4
  %732 = load i32, i32* %zn, align 4
  %cmp1004 = icmp sge i32 %731, %732
  br i1 %cmp1004, label %if.then.1006, label %if.end.1018

if.then.1006:                                     ; preds = %while.body.1002
  %733 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1009 = getelementptr inbounds %struct.DState, %struct.DState* %733, i32 0, i32 7
  %734 = load i32, i32* %bsBuff1009, align 4
  %735 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1010 = getelementptr inbounds %struct.DState, %struct.DState* %735, i32 0, i32 8
  %736 = load i32, i32* %bsLive1010, align 4
  %737 = load i32, i32* %zn, align 4
  %sub1011 = sub nsw i32 %736, %737
  %shr1012 = lshr i32 %734, %sub1011
  %738 = load i32, i32* %zn, align 4
  %shl1013 = shl i32 1, %738
  %sub1014 = sub nsw i32 %shl1013, 1
  %and1015 = and i32 %shr1012, %sub1014
  store i32 %and1015, i32* %v1008, align 4
  %739 = load i32, i32* %zn, align 4
  %740 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1016 = getelementptr inbounds %struct.DState, %struct.DState* %740, i32 0, i32 8
  %741 = load i32, i32* %bsLive1016, align 4
  %sub1017 = sub nsw i32 %741, %739
  store i32 %sub1017, i32* %bsLive1016, align 4
  %742 = load i32, i32* %v1008, align 4
  store i32 %742, i32* %zvec, align 4
  br label %while.end.1052

if.end.1018:                                      ; preds = %while.body.1002
  %743 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1019 = getelementptr inbounds %struct.DState, %struct.DState* %743, i32 0, i32 0
  %744 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1019, align 8
  %avail_in1020 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %744, i32 0, i32 1
  %745 = load i32, i32* %avail_in1020, align 4
  %cmp1021 = icmp eq i32 %745, 0
  br i1 %cmp1021, label %if.then.1023, label %if.end.1024

if.then.1023:                                     ; preds = %if.end.1018
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1024:                                      ; preds = %if.end.1018
  %746 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1025 = getelementptr inbounds %struct.DState, %struct.DState* %746, i32 0, i32 7
  %747 = load i32, i32* %bsBuff1025, align 4
  %shl1026 = shl i32 %747, 8
  %748 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1027 = getelementptr inbounds %struct.DState, %struct.DState* %748, i32 0, i32 0
  %749 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1027, align 8
  %next_in1028 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %749, i32 0, i32 0
  %750 = load i8*, i8** %next_in1028, align 8
  %751 = load i8, i8* %750, align 1
  %conv1029 = zext i8 %751 to i32
  %or1030 = or i32 %shl1026, %conv1029
  %752 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1031 = getelementptr inbounds %struct.DState, %struct.DState* %752, i32 0, i32 7
  store i32 %or1030, i32* %bsBuff1031, align 4
  %753 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1032 = getelementptr inbounds %struct.DState, %struct.DState* %753, i32 0, i32 8
  %754 = load i32, i32* %bsLive1032, align 4
  %add1033 = add nsw i32 %754, 8
  store i32 %add1033, i32* %bsLive1032, align 4
  %755 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1034 = getelementptr inbounds %struct.DState, %struct.DState* %755, i32 0, i32 0
  %756 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1034, align 8
  %next_in1035 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %756, i32 0, i32 0
  %757 = load i8*, i8** %next_in1035, align 8
  %incdec.ptr1036 = getelementptr inbounds i8, i8* %757, i32 1
  store i8* %incdec.ptr1036, i8** %next_in1035, align 8
  %758 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1037 = getelementptr inbounds %struct.DState, %struct.DState* %758, i32 0, i32 0
  %759 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1037, align 8
  %avail_in1038 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %759, i32 0, i32 1
  %760 = load i32, i32* %avail_in1038, align 4
  %dec1039 = add i32 %760, -1
  store i32 %dec1039, i32* %avail_in1038, align 4
  %761 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1040 = getelementptr inbounds %struct.DState, %struct.DState* %761, i32 0, i32 0
  %762 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1040, align 8
  %total_in_lo321041 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %762, i32 0, i32 2
  %763 = load i32, i32* %total_in_lo321041, align 4
  %inc1042 = add i32 %763, 1
  store i32 %inc1042, i32* %total_in_lo321041, align 4
  %764 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1043 = getelementptr inbounds %struct.DState, %struct.DState* %764, i32 0, i32 0
  %765 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1043, align 8
  %total_in_lo321044 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %765, i32 0, i32 2
  %766 = load i32, i32* %total_in_lo321044, align 4
  %cmp1045 = icmp eq i32 %766, 0
  br i1 %cmp1045, label %if.then.1047, label %if.end.1051

if.then.1047:                                     ; preds = %if.end.1024
  %767 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1048 = getelementptr inbounds %struct.DState, %struct.DState* %767, i32 0, i32 0
  %768 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1048, align 8
  %total_in_hi321049 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %768, i32 0, i32 3
  %769 = load i32, i32* %total_in_hi321049, align 4
  %inc1050 = add i32 %769, 1
  store i32 %inc1050, i32* %total_in_hi321049, align 4
  br label %if.end.1051

if.end.1051:                                      ; preds = %if.then.1047, %if.end.1024
  br label %while.body.1002

while.end.1052:                                   ; preds = %if.then.1006
  br label %while.body.1054

while.body.1054:                                  ; preds = %while.end.1052, %while.end.1117
  %770 = load i32, i32* %zn, align 4
  %cmp1055 = icmp sgt i32 %770, 20
  br i1 %cmp1055, label %if.then.1057, label %if.end.1058

if.then.1057:                                     ; preds = %while.body.1054
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1058:                                      ; preds = %while.body.1054
  %771 = load i32, i32* %zvec, align 4
  %772 = load i32, i32* %zn, align 4
  %idxprom1059 = sext i32 %772 to i64
  %773 = load i32*, i32** %gLimit, align 8
  %arrayidx1060 = getelementptr inbounds i32, i32* %773, i64 %idxprom1059
  %774 = load i32, i32* %arrayidx1060, align 4
  %cmp1061 = icmp sle i32 %771, %774
  br i1 %cmp1061, label %if.then.1063, label %if.end.1064

if.then.1063:                                     ; preds = %if.end.1058
  br label %while.end.1120

if.end.1064:                                      ; preds = %if.end.1058
  %775 = load i32, i32* %zn, align 4
  %inc1065 = add nsw i32 %775, 1
  store i32 %inc1065, i32* %zn, align 4
  br label %sw.bb.1066

sw.bb.1066:                                       ; preds = %if.end, %if.end.1064
  %776 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1067 = getelementptr inbounds %struct.DState, %struct.DState* %776, i32 0, i32 1
  store i32 37, i32* %state1067, align 4
  br label %while.body.1069

while.body.1069:                                  ; preds = %sw.bb.1066, %if.end.1116
  %777 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1070 = getelementptr inbounds %struct.DState, %struct.DState* %777, i32 0, i32 8
  %778 = load i32, i32* %bsLive1070, align 4
  %cmp1071 = icmp sge i32 %778, 1
  br i1 %cmp1071, label %if.then.1073, label %if.end.1083

if.then.1073:                                     ; preds = %while.body.1069
  %779 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1076 = getelementptr inbounds %struct.DState, %struct.DState* %779, i32 0, i32 7
  %780 = load i32, i32* %bsBuff1076, align 4
  %781 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1077 = getelementptr inbounds %struct.DState, %struct.DState* %781, i32 0, i32 8
  %782 = load i32, i32* %bsLive1077, align 4
  %sub1078 = sub nsw i32 %782, 1
  %shr1079 = lshr i32 %780, %sub1078
  %and1080 = and i32 %shr1079, 1
  store i32 %and1080, i32* %v1075, align 4
  %783 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1081 = getelementptr inbounds %struct.DState, %struct.DState* %783, i32 0, i32 8
  %784 = load i32, i32* %bsLive1081, align 4
  %sub1082 = sub nsw i32 %784, 1
  store i32 %sub1082, i32* %bsLive1081, align 4
  %785 = load i32, i32* %v1075, align 4
  store i32 %785, i32* %zj, align 4
  br label %while.end.1117

if.end.1083:                                      ; preds = %while.body.1069
  %786 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1084 = getelementptr inbounds %struct.DState, %struct.DState* %786, i32 0, i32 0
  %787 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1084, align 8
  %avail_in1085 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %787, i32 0, i32 1
  %788 = load i32, i32* %avail_in1085, align 4
  %cmp1086 = icmp eq i32 %788, 0
  br i1 %cmp1086, label %if.then.1088, label %if.end.1089

if.then.1088:                                     ; preds = %if.end.1083
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1089:                                      ; preds = %if.end.1083
  %789 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1090 = getelementptr inbounds %struct.DState, %struct.DState* %789, i32 0, i32 7
  %790 = load i32, i32* %bsBuff1090, align 4
  %shl1091 = shl i32 %790, 8
  %791 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1092 = getelementptr inbounds %struct.DState, %struct.DState* %791, i32 0, i32 0
  %792 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1092, align 8
  %next_in1093 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %792, i32 0, i32 0
  %793 = load i8*, i8** %next_in1093, align 8
  %794 = load i8, i8* %793, align 1
  %conv1094 = zext i8 %794 to i32
  %or1095 = or i32 %shl1091, %conv1094
  %795 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1096 = getelementptr inbounds %struct.DState, %struct.DState* %795, i32 0, i32 7
  store i32 %or1095, i32* %bsBuff1096, align 4
  %796 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1097 = getelementptr inbounds %struct.DState, %struct.DState* %796, i32 0, i32 8
  %797 = load i32, i32* %bsLive1097, align 4
  %add1098 = add nsw i32 %797, 8
  store i32 %add1098, i32* %bsLive1097, align 4
  %798 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1099 = getelementptr inbounds %struct.DState, %struct.DState* %798, i32 0, i32 0
  %799 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1099, align 8
  %next_in1100 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %799, i32 0, i32 0
  %800 = load i8*, i8** %next_in1100, align 8
  %incdec.ptr1101 = getelementptr inbounds i8, i8* %800, i32 1
  store i8* %incdec.ptr1101, i8** %next_in1100, align 8
  %801 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1102 = getelementptr inbounds %struct.DState, %struct.DState* %801, i32 0, i32 0
  %802 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1102, align 8
  %avail_in1103 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %802, i32 0, i32 1
  %803 = load i32, i32* %avail_in1103, align 4
  %dec1104 = add i32 %803, -1
  store i32 %dec1104, i32* %avail_in1103, align 4
  %804 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1105 = getelementptr inbounds %struct.DState, %struct.DState* %804, i32 0, i32 0
  %805 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1105, align 8
  %total_in_lo321106 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %805, i32 0, i32 2
  %806 = load i32, i32* %total_in_lo321106, align 4
  %inc1107 = add i32 %806, 1
  store i32 %inc1107, i32* %total_in_lo321106, align 4
  %807 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1108 = getelementptr inbounds %struct.DState, %struct.DState* %807, i32 0, i32 0
  %808 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1108, align 8
  %total_in_lo321109 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %808, i32 0, i32 2
  %809 = load i32, i32* %total_in_lo321109, align 4
  %cmp1110 = icmp eq i32 %809, 0
  br i1 %cmp1110, label %if.then.1112, label %if.end.1116

if.then.1112:                                     ; preds = %if.end.1089
  %810 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1113 = getelementptr inbounds %struct.DState, %struct.DState* %810, i32 0, i32 0
  %811 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1113, align 8
  %total_in_hi321114 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %811, i32 0, i32 3
  %812 = load i32, i32* %total_in_hi321114, align 4
  %inc1115 = add i32 %812, 1
  store i32 %inc1115, i32* %total_in_hi321114, align 4
  br label %if.end.1116

if.end.1116:                                      ; preds = %if.then.1112, %if.end.1089
  br label %while.body.1069

while.end.1117:                                   ; preds = %if.then.1073
  %813 = load i32, i32* %zvec, align 4
  %shl1118 = shl i32 %813, 1
  %814 = load i32, i32* %zj, align 4
  %or1119 = or i32 %shl1118, %814
  store i32 %or1119, i32* %zvec, align 4
  br label %while.body.1054

while.end.1120:                                   ; preds = %if.then.1063
  %815 = load i32, i32* %zvec, align 4
  %816 = load i32, i32* %zn, align 4
  %idxprom1121 = sext i32 %816 to i64
  %817 = load i32*, i32** %gBase, align 8
  %arrayidx1122 = getelementptr inbounds i32, i32* %817, i64 %idxprom1121
  %818 = load i32, i32* %arrayidx1122, align 4
  %sub1123 = sub nsw i32 %815, %818
  %cmp1124 = icmp slt i32 %sub1123, 0
  br i1 %cmp1124, label %if.then.1132, label %lor.lhs.false.1126

lor.lhs.false.1126:                               ; preds = %while.end.1120
  %819 = load i32, i32* %zvec, align 4
  %820 = load i32, i32* %zn, align 4
  %idxprom1127 = sext i32 %820 to i64
  %821 = load i32*, i32** %gBase, align 8
  %arrayidx1128 = getelementptr inbounds i32, i32* %821, i64 %idxprom1127
  %822 = load i32, i32* %arrayidx1128, align 4
  %sub1129 = sub nsw i32 %819, %822
  %cmp1130 = icmp sge i32 %sub1129, 258
  br i1 %cmp1130, label %if.then.1132, label %if.end.1133

if.then.1132:                                     ; preds = %lor.lhs.false.1126, %while.end.1120
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1133:                                      ; preds = %lor.lhs.false.1126
  %823 = load i32, i32* %zvec, align 4
  %824 = load i32, i32* %zn, align 4
  %idxprom1134 = sext i32 %824 to i64
  %825 = load i32*, i32** %gBase, align 8
  %arrayidx1135 = getelementptr inbounds i32, i32* %825, i64 %idxprom1134
  %826 = load i32, i32* %arrayidx1135, align 4
  %sub1136 = sub nsw i32 %823, %826
  %idxprom1137 = sext i32 %sub1136 to i64
  %827 = load i32*, i32** %gPerm, align 8
  %arrayidx1138 = getelementptr inbounds i32, i32* %827, i64 %idxprom1137
  %828 = load i32, i32* %arrayidx1138, align 4
  store i32 %828, i32* %nextSym, align 4
  br label %while.body.1140

while.body.1140:                                  ; preds = %if.end.1133, %if.end.1384, %if.end.1754
  %829 = load i32, i32* %nextSym, align 4
  %830 = load i32, i32* %EOB, align 4
  %cmp1141 = icmp eq i32 %829, %830
  br i1 %cmp1141, label %if.then.1143, label %if.end.1144

if.then.1143:                                     ; preds = %while.body.1140
  br label %while.end.1760

if.end.1144:                                      ; preds = %while.body.1140
  %831 = load i32, i32* %nextSym, align 4
  %cmp1145 = icmp eq i32 %831, 0
  br i1 %cmp1145, label %if.then.1150, label %lor.lhs.false.1147

lor.lhs.false.1147:                               ; preds = %if.end.1144
  %832 = load i32, i32* %nextSym, align 4
  %cmp1148 = icmp eq i32 %832, 1
  br i1 %cmp1148, label %if.then.1150, label %if.else.1385

if.then.1150:                                     ; preds = %lor.lhs.false.1147, %if.end.1144
  store i32 -1, i32* %es, align 4
  store i32 1, i32* %N, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then.1150
  %833 = load i32, i32* %nextSym, align 4
  %cmp1151 = icmp eq i32 %833, 0
  br i1 %cmp1151, label %if.then.1153, label %if.else.1156

if.then.1153:                                     ; preds = %do.body
  %834 = load i32, i32* %es, align 4
  %835 = load i32, i32* %N, align 4
  %mul1154 = mul nsw i32 1, %835
  %add1155 = add nsw i32 %834, %mul1154
  store i32 %add1155, i32* %es, align 4
  br label %if.end.1163

if.else.1156:                                     ; preds = %do.body
  %836 = load i32, i32* %nextSym, align 4
  %cmp1157 = icmp eq i32 %836, 1
  br i1 %cmp1157, label %if.then.1159, label %if.end.1162

if.then.1159:                                     ; preds = %if.else.1156
  %837 = load i32, i32* %es, align 4
  %838 = load i32, i32* %N, align 4
  %mul1160 = mul nsw i32 2, %838
  %add1161 = add nsw i32 %837, %mul1160
  store i32 %add1161, i32* %es, align 4
  br label %if.end.1162

if.end.1162:                                      ; preds = %if.then.1159, %if.else.1156
  br label %if.end.1163

if.end.1163:                                      ; preds = %if.end.1162, %if.then.1153
  %839 = load i32, i32* %N, align 4
  %mul1164 = mul nsw i32 %839, 2
  store i32 %mul1164, i32* %N, align 4
  %840 = load i32, i32* %groupPos, align 4
  %cmp1165 = icmp eq i32 %840, 0
  br i1 %cmp1165, label %if.then.1167, label %if.end.1192

if.then.1167:                                     ; preds = %if.end.1163
  %841 = load i32, i32* %groupNo, align 4
  %inc1168 = add nsw i32 %841, 1
  store i32 %inc1168, i32* %groupNo, align 4
  %842 = load i32, i32* %groupNo, align 4
  %843 = load i32, i32* %nSelectors, align 4
  %cmp1169 = icmp sge i32 %842, %843
  br i1 %cmp1169, label %if.then.1171, label %if.end.1172

if.then.1171:                                     ; preds = %if.then.1167
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1172:                                      ; preds = %if.then.1167
  store i32 50, i32* %groupPos, align 4
  %844 = load i32, i32* %groupNo, align 4
  %idxprom1173 = sext i32 %844 to i64
  %845 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector1174 = getelementptr inbounds %struct.DState, %struct.DState* %845, i32 0, i32 33
  %arrayidx1175 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector1174, i32 0, i64 %idxprom1173
  %846 = load i8, i8* %arrayidx1175, align 1
  %conv1176 = zext i8 %846 to i32
  store i32 %conv1176, i32* %gSel, align 4
  %847 = load i32, i32* %gSel, align 4
  %idxprom1177 = sext i32 %847 to i64
  %848 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens1178 = getelementptr inbounds %struct.DState, %struct.DState* %848, i32 0, i32 39
  %arrayidx1179 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens1178, i32 0, i64 %idxprom1177
  %849 = load i32, i32* %arrayidx1179, align 4
  store i32 %849, i32* %gMinlen, align 4
  %850 = load i32, i32* %gSel, align 4
  %idxprom1180 = sext i32 %850 to i64
  %851 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit1181 = getelementptr inbounds %struct.DState, %struct.DState* %851, i32 0, i32 36
  %arrayidx1182 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit1181, i32 0, i64 %idxprom1180
  %arrayidx1183 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1182, i32 0, i64 0
  store i32* %arrayidx1183, i32** %gLimit, align 8
  %852 = load i32, i32* %gSel, align 4
  %idxprom1184 = sext i32 %852 to i64
  %853 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm1185 = getelementptr inbounds %struct.DState, %struct.DState* %853, i32 0, i32 38
  %arrayidx1186 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm1185, i32 0, i64 %idxprom1184
  %arrayidx1187 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1186, i32 0, i64 0
  store i32* %arrayidx1187, i32** %gPerm, align 8
  %854 = load i32, i32* %gSel, align 4
  %idxprom1188 = sext i32 %854 to i64
  %855 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base1189 = getelementptr inbounds %struct.DState, %struct.DState* %855, i32 0, i32 37
  %arrayidx1190 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base1189, i32 0, i64 %idxprom1188
  %arrayidx1191 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1190, i32 0, i64 0
  store i32* %arrayidx1191, i32** %gBase, align 8
  br label %if.end.1192

if.end.1192:                                      ; preds = %if.end.1172, %if.end.1163
  %856 = load i32, i32* %groupPos, align 4
  %dec1193 = add nsw i32 %856, -1
  store i32 %dec1193, i32* %groupPos, align 4
  %857 = load i32, i32* %gMinlen, align 4
  store i32 %857, i32* %zn, align 4
  br label %sw.bb.1194

sw.bb.1194:                                       ; preds = %if.end, %if.end.1192
  %858 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1195 = getelementptr inbounds %struct.DState, %struct.DState* %858, i32 0, i32 1
  store i32 38, i32* %state1195, align 4
  br label %while.body.1197

while.body.1197:                                  ; preds = %sw.bb.1194, %if.end.1246
  %859 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1198 = getelementptr inbounds %struct.DState, %struct.DState* %859, i32 0, i32 8
  %860 = load i32, i32* %bsLive1198, align 4
  %861 = load i32, i32* %zn, align 4
  %cmp1199 = icmp sge i32 %860, %861
  br i1 %cmp1199, label %if.then.1201, label %if.end.1213

if.then.1201:                                     ; preds = %while.body.1197
  %862 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1204 = getelementptr inbounds %struct.DState, %struct.DState* %862, i32 0, i32 7
  %863 = load i32, i32* %bsBuff1204, align 4
  %864 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1205 = getelementptr inbounds %struct.DState, %struct.DState* %864, i32 0, i32 8
  %865 = load i32, i32* %bsLive1205, align 4
  %866 = load i32, i32* %zn, align 4
  %sub1206 = sub nsw i32 %865, %866
  %shr1207 = lshr i32 %863, %sub1206
  %867 = load i32, i32* %zn, align 4
  %shl1208 = shl i32 1, %867
  %sub1209 = sub nsw i32 %shl1208, 1
  %and1210 = and i32 %shr1207, %sub1209
  store i32 %and1210, i32* %v1203, align 4
  %868 = load i32, i32* %zn, align 4
  %869 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1211 = getelementptr inbounds %struct.DState, %struct.DState* %869, i32 0, i32 8
  %870 = load i32, i32* %bsLive1211, align 4
  %sub1212 = sub nsw i32 %870, %868
  store i32 %sub1212, i32* %bsLive1211, align 4
  %871 = load i32, i32* %v1203, align 4
  store i32 %871, i32* %zvec, align 4
  br label %while.end.1247

if.end.1213:                                      ; preds = %while.body.1197
  %872 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1214 = getelementptr inbounds %struct.DState, %struct.DState* %872, i32 0, i32 0
  %873 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1214, align 8
  %avail_in1215 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %873, i32 0, i32 1
  %874 = load i32, i32* %avail_in1215, align 4
  %cmp1216 = icmp eq i32 %874, 0
  br i1 %cmp1216, label %if.then.1218, label %if.end.1219

if.then.1218:                                     ; preds = %if.end.1213
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1219:                                      ; preds = %if.end.1213
  %875 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1220 = getelementptr inbounds %struct.DState, %struct.DState* %875, i32 0, i32 7
  %876 = load i32, i32* %bsBuff1220, align 4
  %shl1221 = shl i32 %876, 8
  %877 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1222 = getelementptr inbounds %struct.DState, %struct.DState* %877, i32 0, i32 0
  %878 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1222, align 8
  %next_in1223 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %878, i32 0, i32 0
  %879 = load i8*, i8** %next_in1223, align 8
  %880 = load i8, i8* %879, align 1
  %conv1224 = zext i8 %880 to i32
  %or1225 = or i32 %shl1221, %conv1224
  %881 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1226 = getelementptr inbounds %struct.DState, %struct.DState* %881, i32 0, i32 7
  store i32 %or1225, i32* %bsBuff1226, align 4
  %882 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1227 = getelementptr inbounds %struct.DState, %struct.DState* %882, i32 0, i32 8
  %883 = load i32, i32* %bsLive1227, align 4
  %add1228 = add nsw i32 %883, 8
  store i32 %add1228, i32* %bsLive1227, align 4
  %884 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1229 = getelementptr inbounds %struct.DState, %struct.DState* %884, i32 0, i32 0
  %885 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1229, align 8
  %next_in1230 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %885, i32 0, i32 0
  %886 = load i8*, i8** %next_in1230, align 8
  %incdec.ptr1231 = getelementptr inbounds i8, i8* %886, i32 1
  store i8* %incdec.ptr1231, i8** %next_in1230, align 8
  %887 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1232 = getelementptr inbounds %struct.DState, %struct.DState* %887, i32 0, i32 0
  %888 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1232, align 8
  %avail_in1233 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %888, i32 0, i32 1
  %889 = load i32, i32* %avail_in1233, align 4
  %dec1234 = add i32 %889, -1
  store i32 %dec1234, i32* %avail_in1233, align 4
  %890 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1235 = getelementptr inbounds %struct.DState, %struct.DState* %890, i32 0, i32 0
  %891 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1235, align 8
  %total_in_lo321236 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %891, i32 0, i32 2
  %892 = load i32, i32* %total_in_lo321236, align 4
  %inc1237 = add i32 %892, 1
  store i32 %inc1237, i32* %total_in_lo321236, align 4
  %893 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1238 = getelementptr inbounds %struct.DState, %struct.DState* %893, i32 0, i32 0
  %894 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1238, align 8
  %total_in_lo321239 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %894, i32 0, i32 2
  %895 = load i32, i32* %total_in_lo321239, align 4
  %cmp1240 = icmp eq i32 %895, 0
  br i1 %cmp1240, label %if.then.1242, label %if.end.1246

if.then.1242:                                     ; preds = %if.end.1219
  %896 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1243 = getelementptr inbounds %struct.DState, %struct.DState* %896, i32 0, i32 0
  %897 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1243, align 8
  %total_in_hi321244 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %897, i32 0, i32 3
  %898 = load i32, i32* %total_in_hi321244, align 4
  %inc1245 = add i32 %898, 1
  store i32 %inc1245, i32* %total_in_hi321244, align 4
  br label %if.end.1246

if.end.1246:                                      ; preds = %if.then.1242, %if.end.1219
  br label %while.body.1197

while.end.1247:                                   ; preds = %if.then.1201
  br label %while.body.1249

while.body.1249:                                  ; preds = %while.end.1247, %while.end.1312
  %899 = load i32, i32* %zn, align 4
  %cmp1250 = icmp sgt i32 %899, 20
  br i1 %cmp1250, label %if.then.1252, label %if.end.1253

if.then.1252:                                     ; preds = %while.body.1249
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1253:                                      ; preds = %while.body.1249
  %900 = load i32, i32* %zvec, align 4
  %901 = load i32, i32* %zn, align 4
  %idxprom1254 = sext i32 %901 to i64
  %902 = load i32*, i32** %gLimit, align 8
  %arrayidx1255 = getelementptr inbounds i32, i32* %902, i64 %idxprom1254
  %903 = load i32, i32* %arrayidx1255, align 4
  %cmp1256 = icmp sle i32 %900, %903
  br i1 %cmp1256, label %if.then.1258, label %if.end.1259

if.then.1258:                                     ; preds = %if.end.1253
  br label %while.end.1315

if.end.1259:                                      ; preds = %if.end.1253
  %904 = load i32, i32* %zn, align 4
  %inc1260 = add nsw i32 %904, 1
  store i32 %inc1260, i32* %zn, align 4
  br label %sw.bb.1261

sw.bb.1261:                                       ; preds = %if.end, %if.end.1259
  %905 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1262 = getelementptr inbounds %struct.DState, %struct.DState* %905, i32 0, i32 1
  store i32 39, i32* %state1262, align 4
  br label %while.body.1264

while.body.1264:                                  ; preds = %sw.bb.1261, %if.end.1311
  %906 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1265 = getelementptr inbounds %struct.DState, %struct.DState* %906, i32 0, i32 8
  %907 = load i32, i32* %bsLive1265, align 4
  %cmp1266 = icmp sge i32 %907, 1
  br i1 %cmp1266, label %if.then.1268, label %if.end.1278

if.then.1268:                                     ; preds = %while.body.1264
  %908 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1271 = getelementptr inbounds %struct.DState, %struct.DState* %908, i32 0, i32 7
  %909 = load i32, i32* %bsBuff1271, align 4
  %910 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1272 = getelementptr inbounds %struct.DState, %struct.DState* %910, i32 0, i32 8
  %911 = load i32, i32* %bsLive1272, align 4
  %sub1273 = sub nsw i32 %911, 1
  %shr1274 = lshr i32 %909, %sub1273
  %and1275 = and i32 %shr1274, 1
  store i32 %and1275, i32* %v1270, align 4
  %912 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1276 = getelementptr inbounds %struct.DState, %struct.DState* %912, i32 0, i32 8
  %913 = load i32, i32* %bsLive1276, align 4
  %sub1277 = sub nsw i32 %913, 1
  store i32 %sub1277, i32* %bsLive1276, align 4
  %914 = load i32, i32* %v1270, align 4
  store i32 %914, i32* %zj, align 4
  br label %while.end.1312

if.end.1278:                                      ; preds = %while.body.1264
  %915 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1279 = getelementptr inbounds %struct.DState, %struct.DState* %915, i32 0, i32 0
  %916 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1279, align 8
  %avail_in1280 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %916, i32 0, i32 1
  %917 = load i32, i32* %avail_in1280, align 4
  %cmp1281 = icmp eq i32 %917, 0
  br i1 %cmp1281, label %if.then.1283, label %if.end.1284

if.then.1283:                                     ; preds = %if.end.1278
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1284:                                      ; preds = %if.end.1278
  %918 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1285 = getelementptr inbounds %struct.DState, %struct.DState* %918, i32 0, i32 7
  %919 = load i32, i32* %bsBuff1285, align 4
  %shl1286 = shl i32 %919, 8
  %920 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1287 = getelementptr inbounds %struct.DState, %struct.DState* %920, i32 0, i32 0
  %921 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1287, align 8
  %next_in1288 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %921, i32 0, i32 0
  %922 = load i8*, i8** %next_in1288, align 8
  %923 = load i8, i8* %922, align 1
  %conv1289 = zext i8 %923 to i32
  %or1290 = or i32 %shl1286, %conv1289
  %924 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1291 = getelementptr inbounds %struct.DState, %struct.DState* %924, i32 0, i32 7
  store i32 %or1290, i32* %bsBuff1291, align 4
  %925 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1292 = getelementptr inbounds %struct.DState, %struct.DState* %925, i32 0, i32 8
  %926 = load i32, i32* %bsLive1292, align 4
  %add1293 = add nsw i32 %926, 8
  store i32 %add1293, i32* %bsLive1292, align 4
  %927 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1294 = getelementptr inbounds %struct.DState, %struct.DState* %927, i32 0, i32 0
  %928 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1294, align 8
  %next_in1295 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %928, i32 0, i32 0
  %929 = load i8*, i8** %next_in1295, align 8
  %incdec.ptr1296 = getelementptr inbounds i8, i8* %929, i32 1
  store i8* %incdec.ptr1296, i8** %next_in1295, align 8
  %930 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1297 = getelementptr inbounds %struct.DState, %struct.DState* %930, i32 0, i32 0
  %931 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1297, align 8
  %avail_in1298 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %931, i32 0, i32 1
  %932 = load i32, i32* %avail_in1298, align 4
  %dec1299 = add i32 %932, -1
  store i32 %dec1299, i32* %avail_in1298, align 4
  %933 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1300 = getelementptr inbounds %struct.DState, %struct.DState* %933, i32 0, i32 0
  %934 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1300, align 8
  %total_in_lo321301 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %934, i32 0, i32 2
  %935 = load i32, i32* %total_in_lo321301, align 4
  %inc1302 = add i32 %935, 1
  store i32 %inc1302, i32* %total_in_lo321301, align 4
  %936 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1303 = getelementptr inbounds %struct.DState, %struct.DState* %936, i32 0, i32 0
  %937 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1303, align 8
  %total_in_lo321304 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %937, i32 0, i32 2
  %938 = load i32, i32* %total_in_lo321304, align 4
  %cmp1305 = icmp eq i32 %938, 0
  br i1 %cmp1305, label %if.then.1307, label %if.end.1311

if.then.1307:                                     ; preds = %if.end.1284
  %939 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1308 = getelementptr inbounds %struct.DState, %struct.DState* %939, i32 0, i32 0
  %940 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1308, align 8
  %total_in_hi321309 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %940, i32 0, i32 3
  %941 = load i32, i32* %total_in_hi321309, align 4
  %inc1310 = add i32 %941, 1
  store i32 %inc1310, i32* %total_in_hi321309, align 4
  br label %if.end.1311

if.end.1311:                                      ; preds = %if.then.1307, %if.end.1284
  br label %while.body.1264

while.end.1312:                                   ; preds = %if.then.1268
  %942 = load i32, i32* %zvec, align 4
  %shl1313 = shl i32 %942, 1
  %943 = load i32, i32* %zj, align 4
  %or1314 = or i32 %shl1313, %943
  store i32 %or1314, i32* %zvec, align 4
  br label %while.body.1249

while.end.1315:                                   ; preds = %if.then.1258
  %944 = load i32, i32* %zvec, align 4
  %945 = load i32, i32* %zn, align 4
  %idxprom1316 = sext i32 %945 to i64
  %946 = load i32*, i32** %gBase, align 8
  %arrayidx1317 = getelementptr inbounds i32, i32* %946, i64 %idxprom1316
  %947 = load i32, i32* %arrayidx1317, align 4
  %sub1318 = sub nsw i32 %944, %947
  %cmp1319 = icmp slt i32 %sub1318, 0
  br i1 %cmp1319, label %if.then.1327, label %lor.lhs.false.1321

lor.lhs.false.1321:                               ; preds = %while.end.1315
  %948 = load i32, i32* %zvec, align 4
  %949 = load i32, i32* %zn, align 4
  %idxprom1322 = sext i32 %949 to i64
  %950 = load i32*, i32** %gBase, align 8
  %arrayidx1323 = getelementptr inbounds i32, i32* %950, i64 %idxprom1322
  %951 = load i32, i32* %arrayidx1323, align 4
  %sub1324 = sub nsw i32 %948, %951
  %cmp1325 = icmp sge i32 %sub1324, 258
  br i1 %cmp1325, label %if.then.1327, label %if.end.1328

if.then.1327:                                     ; preds = %lor.lhs.false.1321, %while.end.1315
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1328:                                      ; preds = %lor.lhs.false.1321
  %952 = load i32, i32* %zvec, align 4
  %953 = load i32, i32* %zn, align 4
  %idxprom1329 = sext i32 %953 to i64
  %954 = load i32*, i32** %gBase, align 8
  %arrayidx1330 = getelementptr inbounds i32, i32* %954, i64 %idxprom1329
  %955 = load i32, i32* %arrayidx1330, align 4
  %sub1331 = sub nsw i32 %952, %955
  %idxprom1332 = sext i32 %sub1331 to i64
  %956 = load i32*, i32** %gPerm, align 8
  %arrayidx1333 = getelementptr inbounds i32, i32* %956, i64 %idxprom1332
  %957 = load i32, i32* %arrayidx1333, align 4
  store i32 %957, i32* %nextSym, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.1328
  %958 = load i32, i32* %nextSym, align 4
  %cmp1334 = icmp eq i32 %958, 0
  br i1 %cmp1334, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %959 = load i32, i32* %nextSym, align 4
  %cmp1336 = icmp eq i32 %959, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %960 = phi i1 [ true, %do.cond ], [ %cmp1336, %lor.rhs ]
  br i1 %960, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %961 = load i32, i32* %es, align 4
  %inc1338 = add nsw i32 %961, 1
  store i32 %inc1338, i32* %es, align 4
  %962 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1339 = getelementptr inbounds %struct.DState, %struct.DState* %962, i32 0, i32 32
  %arrayidx1340 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1339, i32 0, i64 0
  %963 = load i32, i32* %arrayidx1340, align 4
  %idxprom1341 = sext i32 %963 to i64
  %964 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1342 = getelementptr inbounds %struct.DState, %struct.DState* %964, i32 0, i32 31
  %arrayidx1343 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1342, i32 0, i64 %idxprom1341
  %965 = load i8, i8* %arrayidx1343, align 1
  %idxprom1344 = zext i8 %965 to i64
  %966 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq = getelementptr inbounds %struct.DState, %struct.DState* %966, i32 0, i32 30
  %arrayidx1345 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq, i32 0, i64 %idxprom1344
  %967 = load i8, i8* %arrayidx1345, align 1
  store i8 %967, i8* %uc, align 1
  %968 = load i32, i32* %es, align 4
  %969 = load i8, i8* %uc, align 1
  %idxprom1346 = zext i8 %969 to i64
  %970 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab1347 = getelementptr inbounds %struct.DState, %struct.DState* %970, i32 0, i32 16
  %arrayidx1348 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab1347, i32 0, i64 %idxprom1346
  %971 = load i32, i32* %arrayidx1348, align 4
  %add1349 = add nsw i32 %971, %968
  store i32 %add1349, i32* %arrayidx1348, align 4
  %972 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress1350 = getelementptr inbounds %struct.DState, %struct.DState* %972, i32 0, i32 10
  %973 = load i8, i8* %smallDecompress1350, align 1
  %tobool1351 = icmp ne i8 %973, 0
  br i1 %tobool1351, label %if.then.1352, label %if.else.1368

if.then.1352:                                     ; preds = %do.end
  br label %while.cond.1353

while.cond.1353:                                  ; preds = %if.end.1360, %if.then.1352
  %974 = load i32, i32* %es, align 4
  %cmp1354 = icmp sgt i32 %974, 0
  br i1 %cmp1354, label %while.body.1356, label %while.end.1367

while.body.1356:                                  ; preds = %while.cond.1353
  %975 = load i32, i32* %nblock, align 4
  %976 = load i32, i32* %nblockMAX, align 4
  %cmp1357 = icmp sge i32 %975, %976
  br i1 %cmp1357, label %if.then.1359, label %if.end.1360

if.then.1359:                                     ; preds = %while.body.1356
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1360:                                      ; preds = %while.body.1356
  %977 = load i8, i8* %uc, align 1
  %conv1361 = zext i8 %977 to i16
  %978 = load i32, i32* %nblock, align 4
  %idxprom1362 = sext i32 %978 to i64
  %979 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll161363 = getelementptr inbounds %struct.DState, %struct.DState* %979, i32 0, i32 21
  %980 = load i16*, i16** %ll161363, align 8
  %arrayidx1364 = getelementptr inbounds i16, i16* %980, i64 %idxprom1362
  store i16 %conv1361, i16* %arrayidx1364, align 2
  %981 = load i32, i32* %nblock, align 4
  %inc1365 = add nsw i32 %981, 1
  store i32 %inc1365, i32* %nblock, align 4
  %982 = load i32, i32* %es, align 4
  %dec1366 = add nsw i32 %982, -1
  store i32 %dec1366, i32* %es, align 4
  br label %while.cond.1353

while.end.1367:                                   ; preds = %while.cond.1353
  br label %if.end.1384

if.else.1368:                                     ; preds = %do.end
  br label %while.cond.1369

while.cond.1369:                                  ; preds = %if.end.1376, %if.else.1368
  %983 = load i32, i32* %es, align 4
  %cmp1370 = icmp sgt i32 %983, 0
  br i1 %cmp1370, label %while.body.1372, label %while.end.1383

while.body.1372:                                  ; preds = %while.cond.1369
  %984 = load i32, i32* %nblock, align 4
  %985 = load i32, i32* %nblockMAX, align 4
  %cmp1373 = icmp sge i32 %984, %985
  br i1 %cmp1373, label %if.then.1375, label %if.end.1376

if.then.1375:                                     ; preds = %while.body.1372
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1376:                                      ; preds = %while.body.1372
  %986 = load i8, i8* %uc, align 1
  %conv1377 = zext i8 %986 to i32
  %987 = load i32, i32* %nblock, align 4
  %idxprom1378 = sext i32 %987 to i64
  %988 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt1379 = getelementptr inbounds %struct.DState, %struct.DState* %988, i32 0, i32 20
  %989 = load i32*, i32** %tt1379, align 8
  %arrayidx1380 = getelementptr inbounds i32, i32* %989, i64 %idxprom1378
  store i32 %conv1377, i32* %arrayidx1380, align 4
  %990 = load i32, i32* %nblock, align 4
  %inc1381 = add nsw i32 %990, 1
  store i32 %inc1381, i32* %nblock, align 4
  %991 = load i32, i32* %es, align 4
  %dec1382 = add nsw i32 %991, -1
  store i32 %dec1382, i32* %es, align 4
  br label %while.cond.1369

while.end.1383:                                   ; preds = %while.cond.1369
  br label %if.end.1384

if.end.1384:                                      ; preds = %while.end.1383, %while.end.1367
  br label %while.body.1140

if.else.1385:                                     ; preds = %lor.lhs.false.1147
  %992 = load i32, i32* %nblock, align 4
  %993 = load i32, i32* %nblockMAX, align 4
  %cmp1386 = icmp sge i32 %992, %993
  br i1 %cmp1386, label %if.then.1388, label %if.end.1389

if.then.1388:                                     ; preds = %if.else.1385
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1389:                                      ; preds = %if.else.1385
  %994 = load i32, i32* %nextSym, align 4
  %sub1400 = sub nsw i32 %994, 1
  store i32 %sub1400, i32* %nn, align 4
  %995 = load i32, i32* %nn, align 4
  %cmp1401 = icmp ult i32 %995, 16
  br i1 %cmp1401, label %if.then.1403, label %if.else.1467

if.then.1403:                                     ; preds = %if.end.1389
  %996 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1404 = getelementptr inbounds %struct.DState, %struct.DState* %996, i32 0, i32 32
  %arrayidx1405 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1404, i32 0, i64 0
  %997 = load i32, i32* %arrayidx1405, align 4
  store i32 %997, i32* %pp, align 4
  %998 = load i32, i32* %pp, align 4
  %999 = load i32, i32* %nn, align 4
  %add1406 = add i32 %998, %999
  %idxprom1407 = zext i32 %add1406 to i64
  %1000 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1408 = getelementptr inbounds %struct.DState, %struct.DState* %1000, i32 0, i32 31
  %arrayidx1409 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1408, i32 0, i64 %idxprom1407
  %1001 = load i8, i8* %arrayidx1409, align 1
  store i8 %1001, i8* %uc, align 1
  br label %while.cond.1410

while.cond.1410:                                  ; preds = %while.body.1413, %if.then.1403
  %1002 = load i32, i32* %nn, align 4
  %cmp1411 = icmp ugt i32 %1002, 3
  br i1 %cmp1411, label %while.body.1413, label %while.end.1448

while.body.1413:                                  ; preds = %while.cond.1410
  %1003 = load i32, i32* %pp, align 4
  %1004 = load i32, i32* %nn, align 4
  %add1415 = add i32 %1003, %1004
  store i32 %add1415, i32* %z, align 4
  %1005 = load i32, i32* %z, align 4
  %sub1416 = sub nsw i32 %1005, 1
  %idxprom1417 = sext i32 %sub1416 to i64
  %1006 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1418 = getelementptr inbounds %struct.DState, %struct.DState* %1006, i32 0, i32 31
  %arrayidx1419 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1418, i32 0, i64 %idxprom1417
  %1007 = load i8, i8* %arrayidx1419, align 1
  %1008 = load i32, i32* %z, align 4
  %idxprom1420 = sext i32 %1008 to i64
  %1009 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1421 = getelementptr inbounds %struct.DState, %struct.DState* %1009, i32 0, i32 31
  %arrayidx1422 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1421, i32 0, i64 %idxprom1420
  store i8 %1007, i8* %arrayidx1422, align 1
  %1010 = load i32, i32* %z, align 4
  %sub1423 = sub nsw i32 %1010, 2
  %idxprom1424 = sext i32 %sub1423 to i64
  %1011 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1425 = getelementptr inbounds %struct.DState, %struct.DState* %1011, i32 0, i32 31
  %arrayidx1426 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1425, i32 0, i64 %idxprom1424
  %1012 = load i8, i8* %arrayidx1426, align 1
  %1013 = load i32, i32* %z, align 4
  %sub1427 = sub nsw i32 %1013, 1
  %idxprom1428 = sext i32 %sub1427 to i64
  %1014 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1429 = getelementptr inbounds %struct.DState, %struct.DState* %1014, i32 0, i32 31
  %arrayidx1430 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1429, i32 0, i64 %idxprom1428
  store i8 %1012, i8* %arrayidx1430, align 1
  %1015 = load i32, i32* %z, align 4
  %sub1431 = sub nsw i32 %1015, 3
  %idxprom1432 = sext i32 %sub1431 to i64
  %1016 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1433 = getelementptr inbounds %struct.DState, %struct.DState* %1016, i32 0, i32 31
  %arrayidx1434 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1433, i32 0, i64 %idxprom1432
  %1017 = load i8, i8* %arrayidx1434, align 1
  %1018 = load i32, i32* %z, align 4
  %sub1435 = sub nsw i32 %1018, 2
  %idxprom1436 = sext i32 %sub1435 to i64
  %1019 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1437 = getelementptr inbounds %struct.DState, %struct.DState* %1019, i32 0, i32 31
  %arrayidx1438 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1437, i32 0, i64 %idxprom1436
  store i8 %1017, i8* %arrayidx1438, align 1
  %1020 = load i32, i32* %z, align 4
  %sub1439 = sub nsw i32 %1020, 4
  %idxprom1440 = sext i32 %sub1439 to i64
  %1021 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1441 = getelementptr inbounds %struct.DState, %struct.DState* %1021, i32 0, i32 31
  %arrayidx1442 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1441, i32 0, i64 %idxprom1440
  %1022 = load i8, i8* %arrayidx1442, align 1
  %1023 = load i32, i32* %z, align 4
  %sub1443 = sub nsw i32 %1023, 3
  %idxprom1444 = sext i32 %sub1443 to i64
  %1024 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1445 = getelementptr inbounds %struct.DState, %struct.DState* %1024, i32 0, i32 31
  %arrayidx1446 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1445, i32 0, i64 %idxprom1444
  store i8 %1022, i8* %arrayidx1446, align 1
  %1025 = load i32, i32* %nn, align 4
  %sub1447 = sub i32 %1025, 4
  store i32 %sub1447, i32* %nn, align 4
  br label %while.cond.1410

while.end.1448:                                   ; preds = %while.cond.1410
  br label %while.cond.1449

while.cond.1449:                                  ; preds = %while.body.1452, %while.end.1448
  %1026 = load i32, i32* %nn, align 4
  %cmp1450 = icmp ugt i32 %1026, 0
  br i1 %cmp1450, label %while.body.1452, label %while.end.1463

while.body.1452:                                  ; preds = %while.cond.1449
  %1027 = load i32, i32* %pp, align 4
  %1028 = load i32, i32* %nn, align 4
  %add1453 = add i32 %1027, %1028
  %sub1454 = sub i32 %add1453, 1
  %idxprom1455 = zext i32 %sub1454 to i64
  %1029 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1456 = getelementptr inbounds %struct.DState, %struct.DState* %1029, i32 0, i32 31
  %arrayidx1457 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1456, i32 0, i64 %idxprom1455
  %1030 = load i8, i8* %arrayidx1457, align 1
  %1031 = load i32, i32* %pp, align 4
  %1032 = load i32, i32* %nn, align 4
  %add1458 = add i32 %1031, %1032
  %idxprom1459 = zext i32 %add1458 to i64
  %1033 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1460 = getelementptr inbounds %struct.DState, %struct.DState* %1033, i32 0, i32 31
  %arrayidx1461 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1460, i32 0, i64 %idxprom1459
  store i8 %1030, i8* %arrayidx1461, align 1
  %1034 = load i32, i32* %nn, align 4
  %dec1462 = add i32 %1034, -1
  store i32 %dec1462, i32* %nn, align 4
  br label %while.cond.1449

while.end.1463:                                   ; preds = %while.cond.1449
  %1035 = load i8, i8* %uc, align 1
  %1036 = load i32, i32* %pp, align 4
  %idxprom1464 = sext i32 %1036 to i64
  %1037 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1465 = getelementptr inbounds %struct.DState, %struct.DState* %1037, i32 0, i32 31
  %arrayidx1466 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1465, i32 0, i64 %idxprom1464
  store i8 %1035, i8* %arrayidx1466, align 1
  br label %if.end.1563

if.else.1467:                                     ; preds = %if.end.1389
  %1038 = load i32, i32* %nn, align 4
  %div = udiv i32 %1038, 16
  store i32 %div, i32* %lno, align 4
  %1039 = load i32, i32* %nn, align 4
  %rem = urem i32 %1039, 16
  store i32 %rem, i32* %off, align 4
  %1040 = load i32, i32* %lno, align 4
  %idxprom1468 = sext i32 %1040 to i64
  %1041 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1469 = getelementptr inbounds %struct.DState, %struct.DState* %1041, i32 0, i32 32
  %arrayidx1470 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1469, i32 0, i64 %idxprom1468
  %1042 = load i32, i32* %arrayidx1470, align 4
  %1043 = load i32, i32* %off, align 4
  %add1471 = add nsw i32 %1042, %1043
  store i32 %add1471, i32* %pp, align 4
  %1044 = load i32, i32* %pp, align 4
  %idxprom1472 = sext i32 %1044 to i64
  %1045 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1473 = getelementptr inbounds %struct.DState, %struct.DState* %1045, i32 0, i32 31
  %arrayidx1474 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1473, i32 0, i64 %idxprom1472
  %1046 = load i8, i8* %arrayidx1474, align 1
  store i8 %1046, i8* %uc, align 1
  br label %while.cond.1475

while.cond.1475:                                  ; preds = %while.body.1481, %if.else.1467
  %1047 = load i32, i32* %pp, align 4
  %1048 = load i32, i32* %lno, align 4
  %idxprom1476 = sext i32 %1048 to i64
  %1049 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1477 = getelementptr inbounds %struct.DState, %struct.DState* %1049, i32 0, i32 32
  %arrayidx1478 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1477, i32 0, i64 %idxprom1476
  %1050 = load i32, i32* %arrayidx1478, align 4
  %cmp1479 = icmp sgt i32 %1047, %1050
  br i1 %cmp1479, label %while.body.1481, label %while.end.1490

while.body.1481:                                  ; preds = %while.cond.1475
  %1051 = load i32, i32* %pp, align 4
  %sub1482 = sub nsw i32 %1051, 1
  %idxprom1483 = sext i32 %sub1482 to i64
  %1052 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1484 = getelementptr inbounds %struct.DState, %struct.DState* %1052, i32 0, i32 31
  %arrayidx1485 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1484, i32 0, i64 %idxprom1483
  %1053 = load i8, i8* %arrayidx1485, align 1
  %1054 = load i32, i32* %pp, align 4
  %idxprom1486 = sext i32 %1054 to i64
  %1055 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1487 = getelementptr inbounds %struct.DState, %struct.DState* %1055, i32 0, i32 31
  %arrayidx1488 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1487, i32 0, i64 %idxprom1486
  store i8 %1053, i8* %arrayidx1488, align 1
  %1056 = load i32, i32* %pp, align 4
  %dec1489 = add nsw i32 %1056, -1
  store i32 %dec1489, i32* %pp, align 4
  br label %while.cond.1475

while.end.1490:                                   ; preds = %while.cond.1475
  %1057 = load i32, i32* %lno, align 4
  %idxprom1491 = sext i32 %1057 to i64
  %1058 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1492 = getelementptr inbounds %struct.DState, %struct.DState* %1058, i32 0, i32 32
  %arrayidx1493 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1492, i32 0, i64 %idxprom1491
  %1059 = load i32, i32* %arrayidx1493, align 4
  %inc1494 = add nsw i32 %1059, 1
  store i32 %inc1494, i32* %arrayidx1493, align 4
  br label %while.cond.1495

while.cond.1495:                                  ; preds = %while.body.1498, %while.end.1490
  %1060 = load i32, i32* %lno, align 4
  %cmp1496 = icmp sgt i32 %1060, 0
  br i1 %cmp1496, label %while.body.1498, label %while.end.1519

while.body.1498:                                  ; preds = %while.cond.1495
  %1061 = load i32, i32* %lno, align 4
  %idxprom1499 = sext i32 %1061 to i64
  %1062 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1500 = getelementptr inbounds %struct.DState, %struct.DState* %1062, i32 0, i32 32
  %arrayidx1501 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1500, i32 0, i64 %idxprom1499
  %1063 = load i32, i32* %arrayidx1501, align 4
  %dec1502 = add nsw i32 %1063, -1
  store i32 %dec1502, i32* %arrayidx1501, align 4
  %1064 = load i32, i32* %lno, align 4
  %sub1503 = sub nsw i32 %1064, 1
  %idxprom1504 = sext i32 %sub1503 to i64
  %1065 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1505 = getelementptr inbounds %struct.DState, %struct.DState* %1065, i32 0, i32 32
  %arrayidx1506 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1505, i32 0, i64 %idxprom1504
  %1066 = load i32, i32* %arrayidx1506, align 4
  %add1507 = add nsw i32 %1066, 16
  %sub1508 = sub nsw i32 %add1507, 1
  %idxprom1509 = sext i32 %sub1508 to i64
  %1067 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1510 = getelementptr inbounds %struct.DState, %struct.DState* %1067, i32 0, i32 31
  %arrayidx1511 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1510, i32 0, i64 %idxprom1509
  %1068 = load i8, i8* %arrayidx1511, align 1
  %1069 = load i32, i32* %lno, align 4
  %idxprom1512 = sext i32 %1069 to i64
  %1070 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1513 = getelementptr inbounds %struct.DState, %struct.DState* %1070, i32 0, i32 32
  %arrayidx1514 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1513, i32 0, i64 %idxprom1512
  %1071 = load i32, i32* %arrayidx1514, align 4
  %idxprom1515 = sext i32 %1071 to i64
  %1072 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1516 = getelementptr inbounds %struct.DState, %struct.DState* %1072, i32 0, i32 31
  %arrayidx1517 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1516, i32 0, i64 %idxprom1515
  store i8 %1068, i8* %arrayidx1517, align 1
  %1073 = load i32, i32* %lno, align 4
  %dec1518 = add nsw i32 %1073, -1
  store i32 %dec1518, i32* %lno, align 4
  br label %while.cond.1495

while.end.1519:                                   ; preds = %while.cond.1495
  %1074 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1520 = getelementptr inbounds %struct.DState, %struct.DState* %1074, i32 0, i32 32
  %arrayidx1521 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1520, i32 0, i64 0
  %1075 = load i32, i32* %arrayidx1521, align 4
  %dec1522 = add nsw i32 %1075, -1
  store i32 %dec1522, i32* %arrayidx1521, align 4
  %1076 = load i8, i8* %uc, align 1
  %1077 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1523 = getelementptr inbounds %struct.DState, %struct.DState* %1077, i32 0, i32 32
  %arrayidx1524 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1523, i32 0, i64 0
  %1078 = load i32, i32* %arrayidx1524, align 4
  %idxprom1525 = sext i32 %1078 to i64
  %1079 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1526 = getelementptr inbounds %struct.DState, %struct.DState* %1079, i32 0, i32 31
  %arrayidx1527 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1526, i32 0, i64 %idxprom1525
  store i8 %1076, i8* %arrayidx1527, align 1
  %1080 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1528 = getelementptr inbounds %struct.DState, %struct.DState* %1080, i32 0, i32 32
  %arrayidx1529 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1528, i32 0, i64 0
  %1081 = load i32, i32* %arrayidx1529, align 4
  %cmp1530 = icmp eq i32 %1081, 0
  br i1 %cmp1530, label %if.then.1532, label %if.end.1562

if.then.1532:                                     ; preds = %while.end.1519
  store i32 4095, i32* %kk1395, align 4
  store i32 15, i32* %ii1391, align 4
  br label %for.cond.1533

for.cond.1533:                                    ; preds = %for.inc.1559, %if.then.1532
  %1082 = load i32, i32* %ii1391, align 4
  %cmp1534 = icmp sge i32 %1082, 0
  br i1 %cmp1534, label %for.body.1536, label %for.end.1561

for.body.1536:                                    ; preds = %for.cond.1533
  store i32 15, i32* %jj1393, align 4
  br label %for.cond.1537

for.cond.1537:                                    ; preds = %for.inc.1552, %for.body.1536
  %1083 = load i32, i32* %jj1393, align 4
  %cmp1538 = icmp sge i32 %1083, 0
  br i1 %cmp1538, label %for.body.1540, label %for.end.1554

for.body.1540:                                    ; preds = %for.cond.1537
  %1084 = load i32, i32* %ii1391, align 4
  %idxprom1541 = sext i32 %1084 to i64
  %1085 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1542 = getelementptr inbounds %struct.DState, %struct.DState* %1085, i32 0, i32 32
  %arrayidx1543 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1542, i32 0, i64 %idxprom1541
  %1086 = load i32, i32* %arrayidx1543, align 4
  %1087 = load i32, i32* %jj1393, align 4
  %add1544 = add nsw i32 %1086, %1087
  %idxprom1545 = sext i32 %add1544 to i64
  %1088 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1546 = getelementptr inbounds %struct.DState, %struct.DState* %1088, i32 0, i32 31
  %arrayidx1547 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1546, i32 0, i64 %idxprom1545
  %1089 = load i8, i8* %arrayidx1547, align 1
  %1090 = load i32, i32* %kk1395, align 4
  %idxprom1548 = sext i32 %1090 to i64
  %1091 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa1549 = getelementptr inbounds %struct.DState, %struct.DState* %1091, i32 0, i32 31
  %arrayidx1550 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa1549, i32 0, i64 %idxprom1548
  store i8 %1089, i8* %arrayidx1550, align 1
  %1092 = load i32, i32* %kk1395, align 4
  %dec1551 = add nsw i32 %1092, -1
  store i32 %dec1551, i32* %kk1395, align 4
  br label %for.inc.1552

for.inc.1552:                                     ; preds = %for.body.1540
  %1093 = load i32, i32* %jj1393, align 4
  %dec1553 = add nsw i32 %1093, -1
  store i32 %dec1553, i32* %jj1393, align 4
  br label %for.cond.1537

for.end.1554:                                     ; preds = %for.cond.1537
  %1094 = load i32, i32* %kk1395, align 4
  %add1555 = add nsw i32 %1094, 1
  %1095 = load i32, i32* %ii1391, align 4
  %idxprom1556 = sext i32 %1095 to i64
  %1096 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase1557 = getelementptr inbounds %struct.DState, %struct.DState* %1096, i32 0, i32 32
  %arrayidx1558 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase1557, i32 0, i64 %idxprom1556
  store i32 %add1555, i32* %arrayidx1558, align 4
  br label %for.inc.1559

for.inc.1559:                                     ; preds = %for.end.1554
  %1097 = load i32, i32* %ii1391, align 4
  %dec1560 = add nsw i32 %1097, -1
  store i32 %dec1560, i32* %ii1391, align 4
  br label %for.cond.1533

for.end.1561:                                     ; preds = %for.cond.1533
  br label %if.end.1562

if.end.1562:                                      ; preds = %for.end.1561, %while.end.1519
  br label %if.end.1563

if.end.1563:                                      ; preds = %if.end.1562, %while.end.1463
  %1098 = load i8, i8* %uc, align 1
  %idxprom1564 = zext i8 %1098 to i64
  %1099 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq1565 = getelementptr inbounds %struct.DState, %struct.DState* %1099, i32 0, i32 30
  %arrayidx1566 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq1565, i32 0, i64 %idxprom1564
  %1100 = load i8, i8* %arrayidx1566, align 1
  %idxprom1567 = zext i8 %1100 to i64
  %1101 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab1568 = getelementptr inbounds %struct.DState, %struct.DState* %1101, i32 0, i32 16
  %arrayidx1569 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab1568, i32 0, i64 %idxprom1567
  %1102 = load i32, i32* %arrayidx1569, align 4
  %inc1570 = add nsw i32 %1102, 1
  store i32 %inc1570, i32* %arrayidx1569, align 4
  %1103 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress1571 = getelementptr inbounds %struct.DState, %struct.DState* %1103, i32 0, i32 10
  %1104 = load i8, i8* %smallDecompress1571, align 1
  %tobool1572 = icmp ne i8 %1104, 0
  br i1 %tobool1572, label %if.then.1573, label %if.else.1581

if.then.1573:                                     ; preds = %if.end.1563
  %1105 = load i8, i8* %uc, align 1
  %idxprom1574 = zext i8 %1105 to i64
  %1106 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq1575 = getelementptr inbounds %struct.DState, %struct.DState* %1106, i32 0, i32 30
  %arrayidx1576 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq1575, i32 0, i64 %idxprom1574
  %1107 = load i8, i8* %arrayidx1576, align 1
  %conv1577 = zext i8 %1107 to i16
  %1108 = load i32, i32* %nblock, align 4
  %idxprom1578 = sext i32 %1108 to i64
  %1109 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll161579 = getelementptr inbounds %struct.DState, %struct.DState* %1109, i32 0, i32 21
  %1110 = load i16*, i16** %ll161579, align 8
  %arrayidx1580 = getelementptr inbounds i16, i16* %1110, i64 %idxprom1578
  store i16 %conv1577, i16* %arrayidx1580, align 2
  br label %if.end.1589

if.else.1581:                                     ; preds = %if.end.1563
  %1111 = load i8, i8* %uc, align 1
  %idxprom1582 = zext i8 %1111 to i64
  %1112 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq1583 = getelementptr inbounds %struct.DState, %struct.DState* %1112, i32 0, i32 30
  %arrayidx1584 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq1583, i32 0, i64 %idxprom1582
  %1113 = load i8, i8* %arrayidx1584, align 1
  %conv1585 = zext i8 %1113 to i32
  %1114 = load i32, i32* %nblock, align 4
  %idxprom1586 = sext i32 %1114 to i64
  %1115 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt1587 = getelementptr inbounds %struct.DState, %struct.DState* %1115, i32 0, i32 20
  %1116 = load i32*, i32** %tt1587, align 8
  %arrayidx1588 = getelementptr inbounds i32, i32* %1116, i64 %idxprom1586
  store i32 %conv1585, i32* %arrayidx1588, align 4
  br label %if.end.1589

if.end.1589:                                      ; preds = %if.else.1581, %if.then.1573
  %1117 = load i32, i32* %nblock, align 4
  %inc1590 = add nsw i32 %1117, 1
  store i32 %inc1590, i32* %nblock, align 4
  %1118 = load i32, i32* %groupPos, align 4
  %cmp1591 = icmp eq i32 %1118, 0
  br i1 %cmp1591, label %if.then.1593, label %if.end.1618

if.then.1593:                                     ; preds = %if.end.1589
  %1119 = load i32, i32* %groupNo, align 4
  %inc1594 = add nsw i32 %1119, 1
  store i32 %inc1594, i32* %groupNo, align 4
  %1120 = load i32, i32* %groupNo, align 4
  %1121 = load i32, i32* %nSelectors, align 4
  %cmp1595 = icmp sge i32 %1120, %1121
  br i1 %cmp1595, label %if.then.1597, label %if.end.1598

if.then.1597:                                     ; preds = %if.then.1593
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1598:                                      ; preds = %if.then.1593
  store i32 50, i32* %groupPos, align 4
  %1122 = load i32, i32* %groupNo, align 4
  %idxprom1599 = sext i32 %1122 to i64
  %1123 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector1600 = getelementptr inbounds %struct.DState, %struct.DState* %1123, i32 0, i32 33
  %arrayidx1601 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector1600, i32 0, i64 %idxprom1599
  %1124 = load i8, i8* %arrayidx1601, align 1
  %conv1602 = zext i8 %1124 to i32
  store i32 %conv1602, i32* %gSel, align 4
  %1125 = load i32, i32* %gSel, align 4
  %idxprom1603 = sext i32 %1125 to i64
  %1126 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens1604 = getelementptr inbounds %struct.DState, %struct.DState* %1126, i32 0, i32 39
  %arrayidx1605 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens1604, i32 0, i64 %idxprom1603
  %1127 = load i32, i32* %arrayidx1605, align 4
  store i32 %1127, i32* %gMinlen, align 4
  %1128 = load i32, i32* %gSel, align 4
  %idxprom1606 = sext i32 %1128 to i64
  %1129 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit1607 = getelementptr inbounds %struct.DState, %struct.DState* %1129, i32 0, i32 36
  %arrayidx1608 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit1607, i32 0, i64 %idxprom1606
  %arrayidx1609 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1608, i32 0, i64 0
  store i32* %arrayidx1609, i32** %gLimit, align 8
  %1130 = load i32, i32* %gSel, align 4
  %idxprom1610 = sext i32 %1130 to i64
  %1131 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm1611 = getelementptr inbounds %struct.DState, %struct.DState* %1131, i32 0, i32 38
  %arrayidx1612 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm1611, i32 0, i64 %idxprom1610
  %arrayidx1613 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1612, i32 0, i64 0
  store i32* %arrayidx1613, i32** %gPerm, align 8
  %1132 = load i32, i32* %gSel, align 4
  %idxprom1614 = sext i32 %1132 to i64
  %1133 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base1615 = getelementptr inbounds %struct.DState, %struct.DState* %1133, i32 0, i32 37
  %arrayidx1616 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base1615, i32 0, i64 %idxprom1614
  %arrayidx1617 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1616, i32 0, i64 0
  store i32* %arrayidx1617, i32** %gBase, align 8
  br label %if.end.1618

if.end.1618:                                      ; preds = %if.end.1598, %if.end.1589
  %1134 = load i32, i32* %groupPos, align 4
  %dec1619 = add nsw i32 %1134, -1
  store i32 %dec1619, i32* %groupPos, align 4
  %1135 = load i32, i32* %gMinlen, align 4
  store i32 %1135, i32* %zn, align 4
  br label %sw.bb.1620

sw.bb.1620:                                       ; preds = %if.end, %if.end.1618
  %1136 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1621 = getelementptr inbounds %struct.DState, %struct.DState* %1136, i32 0, i32 1
  store i32 40, i32* %state1621, align 4
  br label %while.body.1623

while.body.1623:                                  ; preds = %sw.bb.1620, %if.end.1672
  %1137 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1624 = getelementptr inbounds %struct.DState, %struct.DState* %1137, i32 0, i32 8
  %1138 = load i32, i32* %bsLive1624, align 4
  %1139 = load i32, i32* %zn, align 4
  %cmp1625 = icmp sge i32 %1138, %1139
  br i1 %cmp1625, label %if.then.1627, label %if.end.1639

if.then.1627:                                     ; preds = %while.body.1623
  %1140 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1630 = getelementptr inbounds %struct.DState, %struct.DState* %1140, i32 0, i32 7
  %1141 = load i32, i32* %bsBuff1630, align 4
  %1142 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1631 = getelementptr inbounds %struct.DState, %struct.DState* %1142, i32 0, i32 8
  %1143 = load i32, i32* %bsLive1631, align 4
  %1144 = load i32, i32* %zn, align 4
  %sub1632 = sub nsw i32 %1143, %1144
  %shr1633 = lshr i32 %1141, %sub1632
  %1145 = load i32, i32* %zn, align 4
  %shl1634 = shl i32 1, %1145
  %sub1635 = sub nsw i32 %shl1634, 1
  %and1636 = and i32 %shr1633, %sub1635
  store i32 %and1636, i32* %v1629, align 4
  %1146 = load i32, i32* %zn, align 4
  %1147 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1637 = getelementptr inbounds %struct.DState, %struct.DState* %1147, i32 0, i32 8
  %1148 = load i32, i32* %bsLive1637, align 4
  %sub1638 = sub nsw i32 %1148, %1146
  store i32 %sub1638, i32* %bsLive1637, align 4
  %1149 = load i32, i32* %v1629, align 4
  store i32 %1149, i32* %zvec, align 4
  br label %while.end.1673

if.end.1639:                                      ; preds = %while.body.1623
  %1150 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1640 = getelementptr inbounds %struct.DState, %struct.DState* %1150, i32 0, i32 0
  %1151 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1640, align 8
  %avail_in1641 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1151, i32 0, i32 1
  %1152 = load i32, i32* %avail_in1641, align 4
  %cmp1642 = icmp eq i32 %1152, 0
  br i1 %cmp1642, label %if.then.1644, label %if.end.1645

if.then.1644:                                     ; preds = %if.end.1639
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1645:                                      ; preds = %if.end.1639
  %1153 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1646 = getelementptr inbounds %struct.DState, %struct.DState* %1153, i32 0, i32 7
  %1154 = load i32, i32* %bsBuff1646, align 4
  %shl1647 = shl i32 %1154, 8
  %1155 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1648 = getelementptr inbounds %struct.DState, %struct.DState* %1155, i32 0, i32 0
  %1156 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1648, align 8
  %next_in1649 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1156, i32 0, i32 0
  %1157 = load i8*, i8** %next_in1649, align 8
  %1158 = load i8, i8* %1157, align 1
  %conv1650 = zext i8 %1158 to i32
  %or1651 = or i32 %shl1647, %conv1650
  %1159 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1652 = getelementptr inbounds %struct.DState, %struct.DState* %1159, i32 0, i32 7
  store i32 %or1651, i32* %bsBuff1652, align 4
  %1160 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1653 = getelementptr inbounds %struct.DState, %struct.DState* %1160, i32 0, i32 8
  %1161 = load i32, i32* %bsLive1653, align 4
  %add1654 = add nsw i32 %1161, 8
  store i32 %add1654, i32* %bsLive1653, align 4
  %1162 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1655 = getelementptr inbounds %struct.DState, %struct.DState* %1162, i32 0, i32 0
  %1163 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1655, align 8
  %next_in1656 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1163, i32 0, i32 0
  %1164 = load i8*, i8** %next_in1656, align 8
  %incdec.ptr1657 = getelementptr inbounds i8, i8* %1164, i32 1
  store i8* %incdec.ptr1657, i8** %next_in1656, align 8
  %1165 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1658 = getelementptr inbounds %struct.DState, %struct.DState* %1165, i32 0, i32 0
  %1166 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1658, align 8
  %avail_in1659 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1166, i32 0, i32 1
  %1167 = load i32, i32* %avail_in1659, align 4
  %dec1660 = add i32 %1167, -1
  store i32 %dec1660, i32* %avail_in1659, align 4
  %1168 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1661 = getelementptr inbounds %struct.DState, %struct.DState* %1168, i32 0, i32 0
  %1169 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1661, align 8
  %total_in_lo321662 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1169, i32 0, i32 2
  %1170 = load i32, i32* %total_in_lo321662, align 4
  %inc1663 = add i32 %1170, 1
  store i32 %inc1663, i32* %total_in_lo321662, align 4
  %1171 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1664 = getelementptr inbounds %struct.DState, %struct.DState* %1171, i32 0, i32 0
  %1172 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1664, align 8
  %total_in_lo321665 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1172, i32 0, i32 2
  %1173 = load i32, i32* %total_in_lo321665, align 4
  %cmp1666 = icmp eq i32 %1173, 0
  br i1 %cmp1666, label %if.then.1668, label %if.end.1672

if.then.1668:                                     ; preds = %if.end.1645
  %1174 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1669 = getelementptr inbounds %struct.DState, %struct.DState* %1174, i32 0, i32 0
  %1175 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1669, align 8
  %total_in_hi321670 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1175, i32 0, i32 3
  %1176 = load i32, i32* %total_in_hi321670, align 4
  %inc1671 = add i32 %1176, 1
  store i32 %inc1671, i32* %total_in_hi321670, align 4
  br label %if.end.1672

if.end.1672:                                      ; preds = %if.then.1668, %if.end.1645
  br label %while.body.1623

while.end.1673:                                   ; preds = %if.then.1627
  br label %while.body.1675

while.body.1675:                                  ; preds = %while.end.1673, %while.end.1738
  %1177 = load i32, i32* %zn, align 4
  %cmp1676 = icmp sgt i32 %1177, 20
  br i1 %cmp1676, label %if.then.1678, label %if.end.1679

if.then.1678:                                     ; preds = %while.body.1675
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1679:                                      ; preds = %while.body.1675
  %1178 = load i32, i32* %zvec, align 4
  %1179 = load i32, i32* %zn, align 4
  %idxprom1680 = sext i32 %1179 to i64
  %1180 = load i32*, i32** %gLimit, align 8
  %arrayidx1681 = getelementptr inbounds i32, i32* %1180, i64 %idxprom1680
  %1181 = load i32, i32* %arrayidx1681, align 4
  %cmp1682 = icmp sle i32 %1178, %1181
  br i1 %cmp1682, label %if.then.1684, label %if.end.1685

if.then.1684:                                     ; preds = %if.end.1679
  br label %while.end.1741

if.end.1685:                                      ; preds = %if.end.1679
  %1182 = load i32, i32* %zn, align 4
  %inc1686 = add nsw i32 %1182, 1
  store i32 %inc1686, i32* %zn, align 4
  br label %sw.bb.1687

sw.bb.1687:                                       ; preds = %if.end, %if.end.1685
  %1183 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1688 = getelementptr inbounds %struct.DState, %struct.DState* %1183, i32 0, i32 1
  store i32 41, i32* %state1688, align 4
  br label %while.body.1690

while.body.1690:                                  ; preds = %sw.bb.1687, %if.end.1737
  %1184 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1691 = getelementptr inbounds %struct.DState, %struct.DState* %1184, i32 0, i32 8
  %1185 = load i32, i32* %bsLive1691, align 4
  %cmp1692 = icmp sge i32 %1185, 1
  br i1 %cmp1692, label %if.then.1694, label %if.end.1704

if.then.1694:                                     ; preds = %while.body.1690
  %1186 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1697 = getelementptr inbounds %struct.DState, %struct.DState* %1186, i32 0, i32 7
  %1187 = load i32, i32* %bsBuff1697, align 4
  %1188 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1698 = getelementptr inbounds %struct.DState, %struct.DState* %1188, i32 0, i32 8
  %1189 = load i32, i32* %bsLive1698, align 4
  %sub1699 = sub nsw i32 %1189, 1
  %shr1700 = lshr i32 %1187, %sub1699
  %and1701 = and i32 %shr1700, 1
  store i32 %and1701, i32* %v1696, align 4
  %1190 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1702 = getelementptr inbounds %struct.DState, %struct.DState* %1190, i32 0, i32 8
  %1191 = load i32, i32* %bsLive1702, align 4
  %sub1703 = sub nsw i32 %1191, 1
  store i32 %sub1703, i32* %bsLive1702, align 4
  %1192 = load i32, i32* %v1696, align 4
  store i32 %1192, i32* %zj, align 4
  br label %while.end.1738

if.end.1704:                                      ; preds = %while.body.1690
  %1193 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1705 = getelementptr inbounds %struct.DState, %struct.DState* %1193, i32 0, i32 0
  %1194 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1705, align 8
  %avail_in1706 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1194, i32 0, i32 1
  %1195 = load i32, i32* %avail_in1706, align 4
  %cmp1707 = icmp eq i32 %1195, 0
  br i1 %cmp1707, label %if.then.1709, label %if.end.1710

if.then.1709:                                     ; preds = %if.end.1704
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1710:                                      ; preds = %if.end.1704
  %1196 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1711 = getelementptr inbounds %struct.DState, %struct.DState* %1196, i32 0, i32 7
  %1197 = load i32, i32* %bsBuff1711, align 4
  %shl1712 = shl i32 %1197, 8
  %1198 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1713 = getelementptr inbounds %struct.DState, %struct.DState* %1198, i32 0, i32 0
  %1199 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1713, align 8
  %next_in1714 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1199, i32 0, i32 0
  %1200 = load i8*, i8** %next_in1714, align 8
  %1201 = load i8, i8* %1200, align 1
  %conv1715 = zext i8 %1201 to i32
  %or1716 = or i32 %shl1712, %conv1715
  %1202 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1717 = getelementptr inbounds %struct.DState, %struct.DState* %1202, i32 0, i32 7
  store i32 %or1716, i32* %bsBuff1717, align 4
  %1203 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1718 = getelementptr inbounds %struct.DState, %struct.DState* %1203, i32 0, i32 8
  %1204 = load i32, i32* %bsLive1718, align 4
  %add1719 = add nsw i32 %1204, 8
  store i32 %add1719, i32* %bsLive1718, align 4
  %1205 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1720 = getelementptr inbounds %struct.DState, %struct.DState* %1205, i32 0, i32 0
  %1206 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1720, align 8
  %next_in1721 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1206, i32 0, i32 0
  %1207 = load i8*, i8** %next_in1721, align 8
  %incdec.ptr1722 = getelementptr inbounds i8, i8* %1207, i32 1
  store i8* %incdec.ptr1722, i8** %next_in1721, align 8
  %1208 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1723 = getelementptr inbounds %struct.DState, %struct.DState* %1208, i32 0, i32 0
  %1209 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1723, align 8
  %avail_in1724 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1209, i32 0, i32 1
  %1210 = load i32, i32* %avail_in1724, align 4
  %dec1725 = add i32 %1210, -1
  store i32 %dec1725, i32* %avail_in1724, align 4
  %1211 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1726 = getelementptr inbounds %struct.DState, %struct.DState* %1211, i32 0, i32 0
  %1212 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1726, align 8
  %total_in_lo321727 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1212, i32 0, i32 2
  %1213 = load i32, i32* %total_in_lo321727, align 4
  %inc1728 = add i32 %1213, 1
  store i32 %inc1728, i32* %total_in_lo321727, align 4
  %1214 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1729 = getelementptr inbounds %struct.DState, %struct.DState* %1214, i32 0, i32 0
  %1215 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1729, align 8
  %total_in_lo321730 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1215, i32 0, i32 2
  %1216 = load i32, i32* %total_in_lo321730, align 4
  %cmp1731 = icmp eq i32 %1216, 0
  br i1 %cmp1731, label %if.then.1733, label %if.end.1737

if.then.1733:                                     ; preds = %if.end.1710
  %1217 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1734 = getelementptr inbounds %struct.DState, %struct.DState* %1217, i32 0, i32 0
  %1218 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm1734, align 8
  %total_in_hi321735 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1218, i32 0, i32 3
  %1219 = load i32, i32* %total_in_hi321735, align 4
  %inc1736 = add i32 %1219, 1
  store i32 %inc1736, i32* %total_in_hi321735, align 4
  br label %if.end.1737

if.end.1737:                                      ; preds = %if.then.1733, %if.end.1710
  br label %while.body.1690

while.end.1738:                                   ; preds = %if.then.1694
  %1220 = load i32, i32* %zvec, align 4
  %shl1739 = shl i32 %1220, 1
  %1221 = load i32, i32* %zj, align 4
  %or1740 = or i32 %shl1739, %1221
  store i32 %or1740, i32* %zvec, align 4
  br label %while.body.1675

while.end.1741:                                   ; preds = %if.then.1684
  %1222 = load i32, i32* %zvec, align 4
  %1223 = load i32, i32* %zn, align 4
  %idxprom1742 = sext i32 %1223 to i64
  %1224 = load i32*, i32** %gBase, align 8
  %arrayidx1743 = getelementptr inbounds i32, i32* %1224, i64 %idxprom1742
  %1225 = load i32, i32* %arrayidx1743, align 4
  %sub1744 = sub nsw i32 %1222, %1225
  %cmp1745 = icmp slt i32 %sub1744, 0
  br i1 %cmp1745, label %if.then.1753, label %lor.lhs.false.1747

lor.lhs.false.1747:                               ; preds = %while.end.1741
  %1226 = load i32, i32* %zvec, align 4
  %1227 = load i32, i32* %zn, align 4
  %idxprom1748 = sext i32 %1227 to i64
  %1228 = load i32*, i32** %gBase, align 8
  %arrayidx1749 = getelementptr inbounds i32, i32* %1228, i64 %idxprom1748
  %1229 = load i32, i32* %arrayidx1749, align 4
  %sub1750 = sub nsw i32 %1226, %1229
  %cmp1751 = icmp sge i32 %sub1750, 258
  br i1 %cmp1751, label %if.then.1753, label %if.end.1754

if.then.1753:                                     ; preds = %lor.lhs.false.1747, %while.end.1741
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1754:                                      ; preds = %lor.lhs.false.1747
  %1230 = load i32, i32* %zvec, align 4
  %1231 = load i32, i32* %zn, align 4
  %idxprom1755 = sext i32 %1231 to i64
  %1232 = load i32*, i32** %gBase, align 8
  %arrayidx1756 = getelementptr inbounds i32, i32* %1232, i64 %idxprom1755
  %1233 = load i32, i32* %arrayidx1756, align 4
  %sub1757 = sub nsw i32 %1230, %1233
  %idxprom1758 = sext i32 %sub1757 to i64
  %1234 = load i32*, i32** %gPerm, align 8
  %arrayidx1759 = getelementptr inbounds i32, i32* %1234, i64 %idxprom1758
  %1235 = load i32, i32* %arrayidx1759, align 4
  store i32 %1235, i32* %nextSym, align 4
  br label %while.body.1140

while.end.1760:                                   ; preds = %if.then.1143
  %1236 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1761 = getelementptr inbounds %struct.DState, %struct.DState* %1236, i32 0, i32 13
  %1237 = load i32, i32* %origPtr1761, align 4
  %cmp1762 = icmp slt i32 %1237, 0
  br i1 %cmp1762, label %if.then.1768, label %lor.lhs.false.1764

lor.lhs.false.1764:                               ; preds = %while.end.1760
  %1238 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1765 = getelementptr inbounds %struct.DState, %struct.DState* %1238, i32 0, i32 13
  %1239 = load i32, i32* %origPtr1765, align 4
  %1240 = load i32, i32* %nblock, align 4
  %cmp1766 = icmp sge i32 %1239, %1240
  br i1 %cmp1766, label %if.then.1768, label %if.end.1769

if.then.1768:                                     ; preds = %lor.lhs.false.1764, %while.end.1760
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1769:                                      ; preds = %lor.lhs.false.1764
  %1241 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab = getelementptr inbounds %struct.DState, %struct.DState* %1241, i32 0, i32 18
  %arrayidx1770 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab, i32 0, i64 0
  store i32 0, i32* %arrayidx1770, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.1771

for.cond.1771:                                    ; preds = %for.inc.1782, %if.end.1769
  %1242 = load i32, i32* %i, align 4
  %cmp1772 = icmp sle i32 %1242, 256
  br i1 %cmp1772, label %for.body.1774, label %for.end.1784

for.body.1774:                                    ; preds = %for.cond.1771
  %1243 = load i32, i32* %i, align 4
  %sub1775 = sub nsw i32 %1243, 1
  %idxprom1776 = sext i32 %sub1775 to i64
  %1244 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab1777 = getelementptr inbounds %struct.DState, %struct.DState* %1244, i32 0, i32 16
  %arrayidx1778 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab1777, i32 0, i64 %idxprom1776
  %1245 = load i32, i32* %arrayidx1778, align 4
  %1246 = load i32, i32* %i, align 4
  %idxprom1779 = sext i32 %1246 to i64
  %1247 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab1780 = getelementptr inbounds %struct.DState, %struct.DState* %1247, i32 0, i32 18
  %arrayidx1781 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab1780, i32 0, i64 %idxprom1779
  store i32 %1245, i32* %arrayidx1781, align 4
  br label %for.inc.1782

for.inc.1782:                                     ; preds = %for.body.1774
  %1248 = load i32, i32* %i, align 4
  %inc1783 = add nsw i32 %1248, 1
  store i32 %inc1783, i32* %i, align 4
  br label %for.cond.1771

for.end.1784:                                     ; preds = %for.cond.1771
  store i32 1, i32* %i, align 4
  br label %for.cond.1785

for.cond.1785:                                    ; preds = %for.inc.1797, %for.end.1784
  %1249 = load i32, i32* %i, align 4
  %cmp1786 = icmp sle i32 %1249, 256
  br i1 %cmp1786, label %for.body.1788, label %for.end.1799

for.body.1788:                                    ; preds = %for.cond.1785
  %1250 = load i32, i32* %i, align 4
  %sub1789 = sub nsw i32 %1250, 1
  %idxprom1790 = sext i32 %sub1789 to i64
  %1251 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab1791 = getelementptr inbounds %struct.DState, %struct.DState* %1251, i32 0, i32 18
  %arrayidx1792 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab1791, i32 0, i64 %idxprom1790
  %1252 = load i32, i32* %arrayidx1792, align 4
  %1253 = load i32, i32* %i, align 4
  %idxprom1793 = sext i32 %1253 to i64
  %1254 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab1794 = getelementptr inbounds %struct.DState, %struct.DState* %1254, i32 0, i32 18
  %arrayidx1795 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab1794, i32 0, i64 %idxprom1793
  %1255 = load i32, i32* %arrayidx1795, align 4
  %add1796 = add nsw i32 %1255, %1252
  store i32 %add1796, i32* %arrayidx1795, align 4
  br label %for.inc.1797

for.inc.1797:                                     ; preds = %for.body.1788
  %1256 = load i32, i32* %i, align 4
  %inc1798 = add nsw i32 %1256, 1
  store i32 %inc1798, i32* %i, align 4
  br label %for.cond.1785

for.end.1799:                                     ; preds = %for.cond.1785
  store i32 0, i32* %i, align 4
  br label %for.cond.1800

for.cond.1800:                                    ; preds = %for.inc.1817, %for.end.1799
  %1257 = load i32, i32* %i, align 4
  %cmp1801 = icmp sle i32 %1257, 256
  br i1 %cmp1801, label %for.body.1803, label %for.end.1819

for.body.1803:                                    ; preds = %for.cond.1800
  %1258 = load i32, i32* %i, align 4
  %idxprom1804 = sext i32 %1258 to i64
  %1259 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab1805 = getelementptr inbounds %struct.DState, %struct.DState* %1259, i32 0, i32 18
  %arrayidx1806 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab1805, i32 0, i64 %idxprom1804
  %1260 = load i32, i32* %arrayidx1806, align 4
  %cmp1807 = icmp slt i32 %1260, 0
  br i1 %cmp1807, label %if.then.1815, label %lor.lhs.false.1809

lor.lhs.false.1809:                               ; preds = %for.body.1803
  %1261 = load i32, i32* %i, align 4
  %idxprom1810 = sext i32 %1261 to i64
  %1262 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab1811 = getelementptr inbounds %struct.DState, %struct.DState* %1262, i32 0, i32 18
  %arrayidx1812 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab1811, i32 0, i64 %idxprom1810
  %1263 = load i32, i32* %arrayidx1812, align 4
  %1264 = load i32, i32* %nblock, align 4
  %cmp1813 = icmp sgt i32 %1263, %1264
  br i1 %cmp1813, label %if.then.1815, label %if.end.1816

if.then.1815:                                     ; preds = %lor.lhs.false.1809, %for.body.1803
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end.1816:                                      ; preds = %lor.lhs.false.1809
  br label %for.inc.1817

for.inc.1817:                                     ; preds = %if.end.1816
  %1265 = load i32, i32* %i, align 4
  %inc1818 = add nsw i32 %1265, 1
  store i32 %inc1818, i32* %i, align 4
  br label %for.cond.1800

for.end.1819:                                     ; preds = %for.cond.1800
  %1266 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %1266, i32 0, i32 3
  store i32 0, i32* %state_out_len, align 4
  %1267 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %1267, i32 0, i32 2
  store i8 0, i8* %state_out_ch, align 1
  %1268 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1820 = getelementptr inbounds %struct.DState, %struct.DState* %1268, i32 0, i32 1
  store i32 2, i32* %state1820, align 4
  %1269 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %verbosity = getelementptr inbounds %struct.DState, %struct.DState* %1269, i32 0, i32 12
  %1270 = load i32, i32* %verbosity, align 4
  %cmp1821 = icmp sge i32 %1270, 2
  br i1 %cmp1821, label %if.then.1823, label %if.end.1827

if.then.1823:                                     ; preds = %for.end.1819
  br label %do.body.1824

do.body.1824:                                     ; preds = %if.then.1823
  br label %do.end.1826

do.end.1826:                                      ; preds = %do.body.1824
  br label %if.end.1827

if.end.1827:                                      ; preds = %do.end.1826, %for.end.1819
  %1271 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress1828 = getelementptr inbounds %struct.DState, %struct.DState* %1271, i32 0, i32 10
  %1272 = load i8, i8* %smallDecompress1828, align 1
  %tobool1829 = icmp ne i8 %1272, 0
  br i1 %tobool1829, label %if.then.1830, label %if.else.2007

if.then.1830:                                     ; preds = %if.end.1827
  store i32 0, i32* %i, align 4
  br label %for.cond.1831

for.cond.1831:                                    ; preds = %for.inc.1840, %if.then.1830
  %1273 = load i32, i32* %i, align 4
  %cmp1832 = icmp sle i32 %1273, 256
  br i1 %cmp1832, label %for.body.1834, label %for.end.1842

for.body.1834:                                    ; preds = %for.cond.1831
  %1274 = load i32, i32* %i, align 4
  %idxprom1835 = sext i32 %1274 to i64
  %1275 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab1836 = getelementptr inbounds %struct.DState, %struct.DState* %1275, i32 0, i32 18
  %arrayidx1837 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab1836, i32 0, i64 %idxprom1835
  %1276 = load i32, i32* %arrayidx1837, align 4
  %1277 = load i32, i32* %i, align 4
  %idxprom1838 = sext i32 %1277 to i64
  %1278 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy = getelementptr inbounds %struct.DState, %struct.DState* %1278, i32 0, i32 19
  %arrayidx1839 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy, i32 0, i64 %idxprom1838
  store i32 %1276, i32* %arrayidx1839, align 4
  br label %for.inc.1840

for.inc.1840:                                     ; preds = %for.body.1834
  %1279 = load i32, i32* %i, align 4
  %inc1841 = add nsw i32 %1279, 1
  store i32 %inc1841, i32* %i, align 4
  br label %for.cond.1831

for.end.1842:                                     ; preds = %for.cond.1831
  store i32 0, i32* %i, align 4
  br label %for.cond.1843

for.cond.1843:                                    ; preds = %for.inc.1902, %for.end.1842
  %1280 = load i32, i32* %i, align 4
  %1281 = load i32, i32* %nblock, align 4
  %cmp1844 = icmp slt i32 %1280, %1281
  br i1 %cmp1844, label %for.body.1846, label %for.end.1904

for.body.1846:                                    ; preds = %for.cond.1843
  %1282 = load i32, i32* %i, align 4
  %idxprom1847 = sext i32 %1282 to i64
  %1283 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll161848 = getelementptr inbounds %struct.DState, %struct.DState* %1283, i32 0, i32 21
  %1284 = load i16*, i16** %ll161848, align 8
  %arrayidx1849 = getelementptr inbounds i16, i16* %1284, i64 %idxprom1847
  %1285 = load i16, i16* %arrayidx1849, align 2
  %conv1850 = trunc i16 %1285 to i8
  store i8 %conv1850, i8* %uc, align 1
  %1286 = load i8, i8* %uc, align 1
  %idxprom1851 = zext i8 %1286 to i64
  %1287 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy1852 = getelementptr inbounds %struct.DState, %struct.DState* %1287, i32 0, i32 19
  %arrayidx1853 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy1852, i32 0, i64 %idxprom1851
  %1288 = load i32, i32* %arrayidx1853, align 4
  %and1854 = and i32 %1288, 65535
  %conv1855 = trunc i32 %and1854 to i16
  %1289 = load i32, i32* %i, align 4
  %idxprom1856 = sext i32 %1289 to i64
  %1290 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll161857 = getelementptr inbounds %struct.DState, %struct.DState* %1290, i32 0, i32 21
  %1291 = load i16*, i16** %ll161857, align 8
  %arrayidx1858 = getelementptr inbounds i16, i16* %1291, i64 %idxprom1856
  store i16 %conv1855, i16* %arrayidx1858, align 2
  %1292 = load i32, i32* %i, align 4
  %and1859 = and i32 %1292, 1
  %cmp1860 = icmp eq i32 %and1859, 0
  br i1 %cmp1860, label %if.then.1862, label %if.else.1879

if.then.1862:                                     ; preds = %for.body.1846
  %1293 = load i32, i32* %i, align 4
  %shr1863 = ashr i32 %1293, 1
  %idxprom1864 = sext i32 %shr1863 to i64
  %1294 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41865 = getelementptr inbounds %struct.DState, %struct.DState* %1294, i32 0, i32 22
  %1295 = load i8*, i8** %ll41865, align 8
  %arrayidx1866 = getelementptr inbounds i8, i8* %1295, i64 %idxprom1864
  %1296 = load i8, i8* %arrayidx1866, align 1
  %conv1867 = zext i8 %1296 to i32
  %and1868 = and i32 %conv1867, 240
  %1297 = load i8, i8* %uc, align 1
  %idxprom1869 = zext i8 %1297 to i64
  %1298 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy1870 = getelementptr inbounds %struct.DState, %struct.DState* %1298, i32 0, i32 19
  %arrayidx1871 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy1870, i32 0, i64 %idxprom1869
  %1299 = load i32, i32* %arrayidx1871, align 4
  %shr1872 = ashr i32 %1299, 16
  %or1873 = or i32 %and1868, %shr1872
  %conv1874 = trunc i32 %or1873 to i8
  %1300 = load i32, i32* %i, align 4
  %shr1875 = ashr i32 %1300, 1
  %idxprom1876 = sext i32 %shr1875 to i64
  %1301 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41877 = getelementptr inbounds %struct.DState, %struct.DState* %1301, i32 0, i32 22
  %1302 = load i8*, i8** %ll41877, align 8
  %arrayidx1878 = getelementptr inbounds i8, i8* %1302, i64 %idxprom1876
  store i8 %conv1874, i8* %arrayidx1878, align 1
  br label %if.end.1897

if.else.1879:                                     ; preds = %for.body.1846
  %1303 = load i32, i32* %i, align 4
  %shr1880 = ashr i32 %1303, 1
  %idxprom1881 = sext i32 %shr1880 to i64
  %1304 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41882 = getelementptr inbounds %struct.DState, %struct.DState* %1304, i32 0, i32 22
  %1305 = load i8*, i8** %ll41882, align 8
  %arrayidx1883 = getelementptr inbounds i8, i8* %1305, i64 %idxprom1881
  %1306 = load i8, i8* %arrayidx1883, align 1
  %conv1884 = zext i8 %1306 to i32
  %and1885 = and i32 %conv1884, 15
  %1307 = load i8, i8* %uc, align 1
  %idxprom1886 = zext i8 %1307 to i64
  %1308 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy1887 = getelementptr inbounds %struct.DState, %struct.DState* %1308, i32 0, i32 19
  %arrayidx1888 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy1887, i32 0, i64 %idxprom1886
  %1309 = load i32, i32* %arrayidx1888, align 4
  %shr1889 = ashr i32 %1309, 16
  %shl1890 = shl i32 %shr1889, 4
  %or1891 = or i32 %and1885, %shl1890
  %conv1892 = trunc i32 %or1891 to i8
  %1310 = load i32, i32* %i, align 4
  %shr1893 = ashr i32 %1310, 1
  %idxprom1894 = sext i32 %shr1893 to i64
  %1311 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41895 = getelementptr inbounds %struct.DState, %struct.DState* %1311, i32 0, i32 22
  %1312 = load i8*, i8** %ll41895, align 8
  %arrayidx1896 = getelementptr inbounds i8, i8* %1312, i64 %idxprom1894
  store i8 %conv1892, i8* %arrayidx1896, align 1
  br label %if.end.1897

if.end.1897:                                      ; preds = %if.else.1879, %if.then.1862
  %1313 = load i8, i8* %uc, align 1
  %idxprom1898 = zext i8 %1313 to i64
  %1314 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy1899 = getelementptr inbounds %struct.DState, %struct.DState* %1314, i32 0, i32 19
  %arrayidx1900 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy1899, i32 0, i64 %idxprom1898
  %1315 = load i32, i32* %arrayidx1900, align 4
  %inc1901 = add nsw i32 %1315, 1
  store i32 %inc1901, i32* %arrayidx1900, align 4
  br label %for.inc.1902

for.inc.1902:                                     ; preds = %if.end.1897
  %1316 = load i32, i32* %i, align 4
  %inc1903 = add nsw i32 %1316, 1
  store i32 %inc1903, i32* %i, align 4
  br label %for.cond.1843

for.end.1904:                                     ; preds = %for.cond.1843
  %1317 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1905 = getelementptr inbounds %struct.DState, %struct.DState* %1317, i32 0, i32 13
  %1318 = load i32, i32* %origPtr1905, align 4
  store i32 %1318, i32* %i, align 4
  %1319 = load i32, i32* %i, align 4
  %idxprom1906 = sext i32 %1319 to i64
  %1320 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll161907 = getelementptr inbounds %struct.DState, %struct.DState* %1320, i32 0, i32 21
  %1321 = load i16*, i16** %ll161907, align 8
  %arrayidx1908 = getelementptr inbounds i16, i16* %1321, i64 %idxprom1906
  %1322 = load i16, i16* %arrayidx1908, align 2
  %conv1909 = zext i16 %1322 to i32
  %1323 = load i32, i32* %i, align 4
  %shr1910 = ashr i32 %1323, 1
  %idxprom1911 = sext i32 %shr1910 to i64
  %1324 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41912 = getelementptr inbounds %struct.DState, %struct.DState* %1324, i32 0, i32 22
  %1325 = load i8*, i8** %ll41912, align 8
  %arrayidx1913 = getelementptr inbounds i8, i8* %1325, i64 %idxprom1911
  %1326 = load i8, i8* %arrayidx1913, align 1
  %conv1914 = zext i8 %1326 to i32
  %1327 = load i32, i32* %i, align 4
  %shl1915 = shl i32 %1327, 2
  %and1916 = and i32 %shl1915, 4
  %shr1917 = lshr i32 %conv1914, %and1916
  %and1918 = and i32 %shr1917, 15
  %shl1919 = shl i32 %and1918, 16
  %or1920 = or i32 %conv1909, %shl1919
  store i32 %or1920, i32* %j, align 4
  br label %do.body.1921

do.body.1921:                                     ; preds = %do.cond.1977, %for.end.1904
  %1328 = load i32, i32* %j, align 4
  %idxprom1924 = sext i32 %1328 to i64
  %1329 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll161925 = getelementptr inbounds %struct.DState, %struct.DState* %1329, i32 0, i32 21
  %1330 = load i16*, i16** %ll161925, align 8
  %arrayidx1926 = getelementptr inbounds i16, i16* %1330, i64 %idxprom1924
  %1331 = load i16, i16* %arrayidx1926, align 2
  %conv1927 = zext i16 %1331 to i32
  %1332 = load i32, i32* %j, align 4
  %shr1928 = ashr i32 %1332, 1
  %idxprom1929 = sext i32 %shr1928 to i64
  %1333 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41930 = getelementptr inbounds %struct.DState, %struct.DState* %1333, i32 0, i32 22
  %1334 = load i8*, i8** %ll41930, align 8
  %arrayidx1931 = getelementptr inbounds i8, i8* %1334, i64 %idxprom1929
  %1335 = load i8, i8* %arrayidx1931, align 1
  %conv1932 = zext i8 %1335 to i32
  %1336 = load i32, i32* %j, align 4
  %shl1933 = shl i32 %1336, 2
  %and1934 = and i32 %shl1933, 4
  %shr1935 = lshr i32 %conv1932, %and1934
  %and1936 = and i32 %shr1935, 15
  %shl1937 = shl i32 %and1936, 16
  %or1938 = or i32 %conv1927, %shl1937
  store i32 %or1938, i32* %tmp1923, align 4
  %1337 = load i32, i32* %i, align 4
  %and1939 = and i32 %1337, 65535
  %conv1940 = trunc i32 %and1939 to i16
  %1338 = load i32, i32* %j, align 4
  %idxprom1941 = sext i32 %1338 to i64
  %1339 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll161942 = getelementptr inbounds %struct.DState, %struct.DState* %1339, i32 0, i32 21
  %1340 = load i16*, i16** %ll161942, align 8
  %arrayidx1943 = getelementptr inbounds i16, i16* %1340, i64 %idxprom1941
  store i16 %conv1940, i16* %arrayidx1943, align 2
  %1341 = load i32, i32* %j, align 4
  %and1944 = and i32 %1341, 1
  %cmp1945 = icmp eq i32 %and1944, 0
  br i1 %cmp1945, label %if.then.1947, label %if.else.1961

if.then.1947:                                     ; preds = %do.body.1921
  %1342 = load i32, i32* %j, align 4
  %shr1948 = ashr i32 %1342, 1
  %idxprom1949 = sext i32 %shr1948 to i64
  %1343 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41950 = getelementptr inbounds %struct.DState, %struct.DState* %1343, i32 0, i32 22
  %1344 = load i8*, i8** %ll41950, align 8
  %arrayidx1951 = getelementptr inbounds i8, i8* %1344, i64 %idxprom1949
  %1345 = load i8, i8* %arrayidx1951, align 1
  %conv1952 = zext i8 %1345 to i32
  %and1953 = and i32 %conv1952, 240
  %1346 = load i32, i32* %i, align 4
  %shr1954 = ashr i32 %1346, 16
  %or1955 = or i32 %and1953, %shr1954
  %conv1956 = trunc i32 %or1955 to i8
  %1347 = load i32, i32* %j, align 4
  %shr1957 = ashr i32 %1347, 1
  %idxprom1958 = sext i32 %shr1957 to i64
  %1348 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41959 = getelementptr inbounds %struct.DState, %struct.DState* %1348, i32 0, i32 22
  %1349 = load i8*, i8** %ll41959, align 8
  %arrayidx1960 = getelementptr inbounds i8, i8* %1349, i64 %idxprom1958
  store i8 %conv1956, i8* %arrayidx1960, align 1
  br label %if.end.1976

if.else.1961:                                     ; preds = %do.body.1921
  %1350 = load i32, i32* %j, align 4
  %shr1962 = ashr i32 %1350, 1
  %idxprom1963 = sext i32 %shr1962 to i64
  %1351 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41964 = getelementptr inbounds %struct.DState, %struct.DState* %1351, i32 0, i32 22
  %1352 = load i8*, i8** %ll41964, align 8
  %arrayidx1965 = getelementptr inbounds i8, i8* %1352, i64 %idxprom1963
  %1353 = load i8, i8* %arrayidx1965, align 1
  %conv1966 = zext i8 %1353 to i32
  %and1967 = and i32 %conv1966, 15
  %1354 = load i32, i32* %i, align 4
  %shr1968 = ashr i32 %1354, 16
  %shl1969 = shl i32 %shr1968, 4
  %or1970 = or i32 %and1967, %shl1969
  %conv1971 = trunc i32 %or1970 to i8
  %1355 = load i32, i32* %j, align 4
  %shr1972 = ashr i32 %1355, 1
  %idxprom1973 = sext i32 %shr1972 to i64
  %1356 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41974 = getelementptr inbounds %struct.DState, %struct.DState* %1356, i32 0, i32 22
  %1357 = load i8*, i8** %ll41974, align 8
  %arrayidx1975 = getelementptr inbounds i8, i8* %1357, i64 %idxprom1973
  store i8 %conv1971, i8* %arrayidx1975, align 1
  br label %if.end.1976

if.end.1976:                                      ; preds = %if.else.1961, %if.then.1947
  %1358 = load i32, i32* %j, align 4
  store i32 %1358, i32* %i, align 4
  %1359 = load i32, i32* %tmp1923, align 4
  store i32 %1359, i32* %j, align 4
  br label %do.cond.1977

do.cond.1977:                                     ; preds = %if.end.1976
  %1360 = load i32, i32* %i, align 4
  %1361 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1978 = getelementptr inbounds %struct.DState, %struct.DState* %1361, i32 0, i32 13
  %1362 = load i32, i32* %origPtr1978, align 4
  %cmp1979 = icmp ne i32 %1360, %1362
  br i1 %cmp1979, label %do.body.1921, label %do.end.1981

do.end.1981:                                      ; preds = %do.cond.1977
  %1363 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1982 = getelementptr inbounds %struct.DState, %struct.DState* %1363, i32 0, i32 13
  %1364 = load i32, i32* %origPtr1982, align 4
  %1365 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %1365, i32 0, i32 14
  store i32 %1364, i32* %tPos, align 4
  %1366 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %1366, i32 0, i32 17
  store i32 0, i32* %nblock_used, align 4
  %1367 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos1983 = getelementptr inbounds %struct.DState, %struct.DState* %1367, i32 0, i32 14
  %1368 = load i32, i32* %tPos1983, align 4
  %1369 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab1984 = getelementptr inbounds %struct.DState, %struct.DState* %1369, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], [257 x i32]* %cftab1984, i32 0, i32 0
  %call1985 = call i32 @indexIntoF(i32 %1368, i32* %arraydecay)
  %1370 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %1370, i32 0, i32 15
  store i32 %call1985, i32* %k0, align 4
  %1371 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos1986 = getelementptr inbounds %struct.DState, %struct.DState* %1371, i32 0, i32 14
  %1372 = load i32, i32* %tPos1986, align 4
  %idxprom1987 = zext i32 %1372 to i64
  %1373 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll161988 = getelementptr inbounds %struct.DState, %struct.DState* %1373, i32 0, i32 21
  %1374 = load i16*, i16** %ll161988, align 8
  %arrayidx1989 = getelementptr inbounds i16, i16* %1374, i64 %idxprom1987
  %1375 = load i16, i16* %arrayidx1989, align 2
  %conv1990 = zext i16 %1375 to i32
  %1376 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos1991 = getelementptr inbounds %struct.DState, %struct.DState* %1376, i32 0, i32 14
  %1377 = load i32, i32* %tPos1991, align 4
  %shr1992 = lshr i32 %1377, 1
  %idxprom1993 = zext i32 %shr1992 to i64
  %1378 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll41994 = getelementptr inbounds %struct.DState, %struct.DState* %1378, i32 0, i32 22
  %1379 = load i8*, i8** %ll41994, align 8
  %arrayidx1995 = getelementptr inbounds i8, i8* %1379, i64 %idxprom1993
  %1380 = load i8, i8* %arrayidx1995, align 1
  %conv1996 = zext i8 %1380 to i32
  %1381 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos1997 = getelementptr inbounds %struct.DState, %struct.DState* %1381, i32 0, i32 14
  %1382 = load i32, i32* %tPos1997, align 4
  %shl1998 = shl i32 %1382, 2
  %and1999 = and i32 %shl1998, 4
  %shr2000 = lshr i32 %conv1996, %and1999
  %and2001 = and i32 %shr2000, 15
  %shl2002 = shl i32 %and2001, 16
  %or2003 = or i32 %conv1990, %shl2002
  %1383 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2004 = getelementptr inbounds %struct.DState, %struct.DState* %1383, i32 0, i32 14
  store i32 %or2003, i32* %tPos2004, align 4
  %1384 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2005 = getelementptr inbounds %struct.DState, %struct.DState* %1384, i32 0, i32 17
  %1385 = load i32, i32* %nblock_used2005, align 4
  %inc2006 = add nsw i32 %1385, 1
  store i32 %inc2006, i32* %nblock_used2005, align 4
  br label %if.end.2060

if.else.2007:                                     ; preds = %if.end.1827
  store i32 0, i32* %i, align 4
  br label %for.cond.2008

for.cond.2008:                                    ; preds = %for.inc.2029, %if.else.2007
  %1386 = load i32, i32* %i, align 4
  %1387 = load i32, i32* %nblock, align 4
  %cmp2009 = icmp slt i32 %1386, %1387
  br i1 %cmp2009, label %for.body.2011, label %for.end.2031

for.body.2011:                                    ; preds = %for.cond.2008
  %1388 = load i32, i32* %i, align 4
  %idxprom2012 = sext i32 %1388 to i64
  %1389 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2013 = getelementptr inbounds %struct.DState, %struct.DState* %1389, i32 0, i32 20
  %1390 = load i32*, i32** %tt2013, align 8
  %arrayidx2014 = getelementptr inbounds i32, i32* %1390, i64 %idxprom2012
  %1391 = load i32, i32* %arrayidx2014, align 4
  %and2015 = and i32 %1391, 255
  %conv2016 = trunc i32 %and2015 to i8
  store i8 %conv2016, i8* %uc, align 1
  %1392 = load i32, i32* %i, align 4
  %shl2017 = shl i32 %1392, 8
  %1393 = load i8, i8* %uc, align 1
  %idxprom2018 = zext i8 %1393 to i64
  %1394 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2019 = getelementptr inbounds %struct.DState, %struct.DState* %1394, i32 0, i32 18
  %arrayidx2020 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2019, i32 0, i64 %idxprom2018
  %1395 = load i32, i32* %arrayidx2020, align 4
  %idxprom2021 = sext i32 %1395 to i64
  %1396 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2022 = getelementptr inbounds %struct.DState, %struct.DState* %1396, i32 0, i32 20
  %1397 = load i32*, i32** %tt2022, align 8
  %arrayidx2023 = getelementptr inbounds i32, i32* %1397, i64 %idxprom2021
  %1398 = load i32, i32* %arrayidx2023, align 4
  %or2024 = or i32 %1398, %shl2017
  store i32 %or2024, i32* %arrayidx2023, align 4
  %1399 = load i8, i8* %uc, align 1
  %idxprom2025 = zext i8 %1399 to i64
  %1400 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2026 = getelementptr inbounds %struct.DState, %struct.DState* %1400, i32 0, i32 18
  %arrayidx2027 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2026, i32 0, i64 %idxprom2025
  %1401 = load i32, i32* %arrayidx2027, align 4
  %inc2028 = add nsw i32 %1401, 1
  store i32 %inc2028, i32* %arrayidx2027, align 4
  br label %for.inc.2029

for.inc.2029:                                     ; preds = %for.body.2011
  %1402 = load i32, i32* %i, align 4
  %inc2030 = add nsw i32 %1402, 1
  store i32 %inc2030, i32* %i, align 4
  br label %for.cond.2008

for.end.2031:                                     ; preds = %for.cond.2008
  %1403 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2032 = getelementptr inbounds %struct.DState, %struct.DState* %1403, i32 0, i32 13
  %1404 = load i32, i32* %origPtr2032, align 4
  %idxprom2033 = sext i32 %1404 to i64
  %1405 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2034 = getelementptr inbounds %struct.DState, %struct.DState* %1405, i32 0, i32 20
  %1406 = load i32*, i32** %tt2034, align 8
  %arrayidx2035 = getelementptr inbounds i32, i32* %1406, i64 %idxprom2033
  %1407 = load i32, i32* %arrayidx2035, align 4
  %shr2036 = lshr i32 %1407, 8
  %1408 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2037 = getelementptr inbounds %struct.DState, %struct.DState* %1408, i32 0, i32 14
  store i32 %shr2036, i32* %tPos2037, align 4
  %1409 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2038 = getelementptr inbounds %struct.DState, %struct.DState* %1409, i32 0, i32 17
  store i32 0, i32* %nblock_used2038, align 4
  %1410 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2039 = getelementptr inbounds %struct.DState, %struct.DState* %1410, i32 0, i32 14
  %1411 = load i32, i32* %tPos2039, align 4
  %1412 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k2040 = getelementptr inbounds %struct.DState, %struct.DState* %1412, i32 0, i32 9
  %1413 = load i32, i32* %blockSize100k2040, align 4
  %mul2041 = mul nsw i32 %1413, 100000
  %cmp2042 = icmp uge i32 %1411, %mul2041
  br i1 %cmp2042, label %if.then.2044, label %if.end.2045

if.then.2044:                                     ; preds = %for.end.2031
  store i32 1, i32* %retval
  br label %return

if.end.2045:                                      ; preds = %for.end.2031
  %1414 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2046 = getelementptr inbounds %struct.DState, %struct.DState* %1414, i32 0, i32 14
  %1415 = load i32, i32* %tPos2046, align 4
  %idxprom2047 = zext i32 %1415 to i64
  %1416 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2048 = getelementptr inbounds %struct.DState, %struct.DState* %1416, i32 0, i32 20
  %1417 = load i32*, i32** %tt2048, align 8
  %arrayidx2049 = getelementptr inbounds i32, i32* %1417, i64 %idxprom2047
  %1418 = load i32, i32* %arrayidx2049, align 4
  %1419 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2050 = getelementptr inbounds %struct.DState, %struct.DState* %1419, i32 0, i32 14
  store i32 %1418, i32* %tPos2050, align 4
  %1420 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2051 = getelementptr inbounds %struct.DState, %struct.DState* %1420, i32 0, i32 14
  %1421 = load i32, i32* %tPos2051, align 4
  %and2052 = and i32 %1421, 255
  %conv2053 = trunc i32 %and2052 to i8
  %conv2054 = zext i8 %conv2053 to i32
  %1422 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02055 = getelementptr inbounds %struct.DState, %struct.DState* %1422, i32 0, i32 15
  store i32 %conv2054, i32* %k02055, align 4
  %1423 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2056 = getelementptr inbounds %struct.DState, %struct.DState* %1423, i32 0, i32 14
  %1424 = load i32, i32* %tPos2056, align 4
  %shr2057 = lshr i32 %1424, 8
  store i32 %shr2057, i32* %tPos2056, align 4
  %1425 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2058 = getelementptr inbounds %struct.DState, %struct.DState* %1425, i32 0, i32 17
  %1426 = load i32, i32* %nblock_used2058, align 4
  %inc2059 = add nsw i32 %1426, 1
  store i32 %inc2059, i32* %nblock_used2058, align 4
  br label %if.end.2060

if.end.2060:                                      ; preds = %if.end.2045, %do.end.1981
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

endhdr_2:                                         ; preds = %if.then.99
  %1427 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2061 = getelementptr inbounds %struct.DState, %struct.DState* %1427, i32 0, i32 1
  store i32 1, i32* %state2061, align 4
  store i32 4, i32* %retVal, align 4
  br label %save_state_and_return

sw.default:                                       ; preds = %if.end
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

save_state_and_return:                            ; preds = %sw.default, %endhdr_2, %if.end.2060, %if.then.1815, %if.then.1768, %if.then.1753, %if.then.1709, %if.then.1678, %if.then.1644, %if.then.1597, %if.then.1388, %if.then.1375, %if.then.1359, %if.then.1327, %if.then.1283, %if.then.1252, %if.then.1218, %if.then.1171, %if.then.1132, %if.then.1088, %if.then.1057, %if.then.1023, %if.then.976, %if.then.820, %if.then.762, %if.then.737, %if.then.696, %if.then.622, %if.then.584, %if.then.555, %if.then.523, %if.then.501, %if.then.466, %if.then.442, %if.then.393, %if.then.310, %if.then.285, %if.then.277, %if.then.239, %if.then.183, %if.then.127, %if.then.104, %if.then.75, %if.then.58, %if.then.45
  %1428 = load i32, i32* %i, align 4
  %1429 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_i2062 = getelementptr inbounds %struct.DState, %struct.DState* %1429, i32 0, i32 40
  store i32 %1428, i32* %save_i2062, align 4
  %1430 = load i32, i32* %j, align 4
  %1431 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_j2063 = getelementptr inbounds %struct.DState, %struct.DState* %1431, i32 0, i32 41
  store i32 %1430, i32* %save_j2063, align 4
  %1432 = load i32, i32* %t, align 4
  %1433 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_t2064 = getelementptr inbounds %struct.DState, %struct.DState* %1433, i32 0, i32 42
  store i32 %1432, i32* %save_t2064, align 4
  %1434 = load i32, i32* %alphaSize, align 4
  %1435 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_alphaSize2065 = getelementptr inbounds %struct.DState, %struct.DState* %1435, i32 0, i32 43
  store i32 %1434, i32* %save_alphaSize2065, align 4
  %1436 = load i32, i32* %nGroups, align 4
  %1437 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nGroups2066 = getelementptr inbounds %struct.DState, %struct.DState* %1437, i32 0, i32 44
  store i32 %1436, i32* %save_nGroups2066, align 4
  %1438 = load i32, i32* %nSelectors, align 4
  %1439 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nSelectors2067 = getelementptr inbounds %struct.DState, %struct.DState* %1439, i32 0, i32 45
  store i32 %1438, i32* %save_nSelectors2067, align 4
  %1440 = load i32, i32* %EOB, align 4
  %1441 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_EOB2068 = getelementptr inbounds %struct.DState, %struct.DState* %1441, i32 0, i32 46
  store i32 %1440, i32* %save_EOB2068, align 4
  %1442 = load i32, i32* %groupNo, align 4
  %1443 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupNo2069 = getelementptr inbounds %struct.DState, %struct.DState* %1443, i32 0, i32 47
  store i32 %1442, i32* %save_groupNo2069, align 4
  %1444 = load i32, i32* %groupPos, align 4
  %1445 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupPos2070 = getelementptr inbounds %struct.DState, %struct.DState* %1445, i32 0, i32 48
  store i32 %1444, i32* %save_groupPos2070, align 4
  %1446 = load i32, i32* %nextSym, align 4
  %1447 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nextSym2071 = getelementptr inbounds %struct.DState, %struct.DState* %1447, i32 0, i32 49
  store i32 %1446, i32* %save_nextSym2071, align 4
  %1448 = load i32, i32* %nblockMAX, align 4
  %1449 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblockMAX2072 = getelementptr inbounds %struct.DState, %struct.DState* %1449, i32 0, i32 50
  store i32 %1448, i32* %save_nblockMAX2072, align 4
  %1450 = load i32, i32* %nblock, align 4
  %1451 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock2073 = getelementptr inbounds %struct.DState, %struct.DState* %1451, i32 0, i32 51
  store i32 %1450, i32* %save_nblock2073, align 4
  %1452 = load i32, i32* %es, align 4
  %1453 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_es2074 = getelementptr inbounds %struct.DState, %struct.DState* %1453, i32 0, i32 52
  store i32 %1452, i32* %save_es2074, align 4
  %1454 = load i32, i32* %N, align 4
  %1455 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_N2075 = getelementptr inbounds %struct.DState, %struct.DState* %1455, i32 0, i32 53
  store i32 %1454, i32* %save_N2075, align 4
  %1456 = load i32, i32* %curr, align 4
  %1457 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_curr2076 = getelementptr inbounds %struct.DState, %struct.DState* %1457, i32 0, i32 54
  store i32 %1456, i32* %save_curr2076, align 4
  %1458 = load i32, i32* %zt, align 4
  %1459 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zt2077 = getelementptr inbounds %struct.DState, %struct.DState* %1459, i32 0, i32 55
  store i32 %1458, i32* %save_zt2077, align 4
  %1460 = load i32, i32* %zn, align 4
  %1461 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zn2078 = getelementptr inbounds %struct.DState, %struct.DState* %1461, i32 0, i32 56
  store i32 %1460, i32* %save_zn2078, align 4
  %1462 = load i32, i32* %zvec, align 4
  %1463 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zvec2079 = getelementptr inbounds %struct.DState, %struct.DState* %1463, i32 0, i32 57
  store i32 %1462, i32* %save_zvec2079, align 4
  %1464 = load i32, i32* %zj, align 4
  %1465 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zj2080 = getelementptr inbounds %struct.DState, %struct.DState* %1465, i32 0, i32 58
  store i32 %1464, i32* %save_zj2080, align 4
  %1466 = load i32, i32* %gSel, align 4
  %1467 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gSel2081 = getelementptr inbounds %struct.DState, %struct.DState* %1467, i32 0, i32 59
  store i32 %1466, i32* %save_gSel2081, align 4
  %1468 = load i32, i32* %gMinlen, align 4
  %1469 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gMinlen2082 = getelementptr inbounds %struct.DState, %struct.DState* %1469, i32 0, i32 60
  store i32 %1468, i32* %save_gMinlen2082, align 4
  %1470 = load i32*, i32** %gLimit, align 8
  %1471 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gLimit2083 = getelementptr inbounds %struct.DState, %struct.DState* %1471, i32 0, i32 61
  store i32* %1470, i32** %save_gLimit2083, align 8
  %1472 = load i32*, i32** %gBase, align 8
  %1473 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gBase2084 = getelementptr inbounds %struct.DState, %struct.DState* %1473, i32 0, i32 62
  store i32* %1472, i32** %save_gBase2084, align 8
  %1474 = load i32*, i32** %gPerm, align 8
  %1475 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gPerm2085 = getelementptr inbounds %struct.DState, %struct.DState* %1475, i32 0, i32 63
  store i32* %1474, i32** %save_gPerm2085, align 8
  %1476 = load i32, i32* %retVal, align 4
  store i32 %1476, i32* %retval
  br label %return

return:                                           ; preds = %save_state_and_return, %if.then.2044
  %1477 = load i32, i32* %retval
  ret i32 %1477
}

; Function Attrs: nounwind uwtable
define i32 @nsis_BZ2_bzDecompressEnd(%struct.nsis_bzstream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.nsis_bzstream*, align 8
  %s = alloca %struct.DState*, align 8
  store %struct.nsis_bzstream* %strm, %struct.nsis_bzstream** %strm.addr, align 8
  %0 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %cmp = icmp eq %struct.nsis_bzstream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.DState*
  store %struct.DState* %3, %struct.DState** %s, align 8
  %4 = load %struct.DState*, %struct.DState** %s, align 8
  %cmp1 = icmp eq %struct.DState* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.DState*, %struct.DState** %s, align 8
  %strm4 = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 0
  %6 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm4, align 8
  %7 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.nsis_bzstream* %6, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -2, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.DState*, %struct.DState** %s, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 20
  %9 = load i32*, i32** %tt, align 8
  %cmp8 = icmp ne i32* %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %10 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %10, i32 0, i32 10
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %12 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %12, i32 0, i32 11
  %13 = load i8*, i8** %opaque, align 8
  %14 = load %struct.DState*, %struct.DState** %s, align 8
  %tt10 = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 20
  %15 = load i32*, i32** %tt10, align 8
  %16 = bitcast i32* %15 to i8*
  call void %11(i8* %13, i8* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %17 = load %struct.DState*, %struct.DState** %s, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 21
  %18 = load i16*, i16** %ll16, align 8
  %cmp12 = icmp ne i16* %18, null
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %19 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %bzfree14 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %19, i32 0, i32 10
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree14, align 8
  %21 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %opaque15 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %21, i32 0, i32 11
  %22 = load i8*, i8** %opaque15, align 8
  %23 = load %struct.DState*, %struct.DState** %s, align 8
  %ll1616 = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 21
  %24 = load i16*, i16** %ll1616, align 8
  %25 = bitcast i16* %24 to i8*
  call void %20(i8* %22, i8* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  %26 = load %struct.DState*, %struct.DState** %s, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 22
  %27 = load i8*, i8** %ll4, align 8
  %cmp18 = icmp ne i8* %27, null
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.17
  %28 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %bzfree20 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %28, i32 0, i32 10
  %29 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree20, align 8
  %30 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %opaque21 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %30, i32 0, i32 11
  %31 = load i8*, i8** %opaque21, align 8
  %32 = load %struct.DState*, %struct.DState** %s, align 8
  %ll422 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 22
  %33 = load i8*, i8** %ll422, align 8
  call void %29(i8* %31, i8* %33)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.17
  %34 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %bzfree24 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %34, i32 0, i32 10
  %35 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree24, align 8
  %36 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %opaque25 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %36, i32 0, i32 11
  %37 = load i8*, i8** %opaque25, align 8
  %38 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %state26 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %38, i32 0, i32 8
  %39 = load i8*, i8** %state26, align 8
  call void %35(i8* %37, i8* %39)
  %40 = load %struct.nsis_bzstream*, %struct.nsis_bzstream** %strm.addr, align 8
  %state27 = getelementptr inbounds %struct.nsis_bzstream, %struct.nsis_bzstream* %40, i32 0, i32 8
  store i8* null, i8** %state27, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.6, %if.then.2, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @indexIntoF(i32 %indx, i32* %cftab) #3 {
entry:
  %indx.addr = alloca i32, align 4
  %cftab.addr = alloca i32*, align 8
  %nb = alloca i32, align 4
  %na = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %indx, i32* %indx.addr, align 4
  store i32* %cftab, i32** %cftab.addr, align 8
  store i32 0, i32* %nb, align 4
  store i32 256, i32* %na, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %nb, align 4
  %1 = load i32, i32* %na, align 4
  %add = add nsw i32 %0, %1
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %mid, align 4
  %2 = load i32, i32* %indx.addr, align 4
  %3 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %cftab.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sge i32 %2, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %mid, align 4
  store i32 %6, i32* %nb, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load i32, i32* %mid, align 4
  store i32 %7, i32* %na, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, i32* %na, align 4
  %9 = load i32, i32* %nb, align 4
  %sub = sub nsw i32 %8, %9
  %cmp1 = icmp ne i32 %sub, 1
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load i32, i32* %nb, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @makeMaps_d(%struct.DState* %s) #0 {
entry:
  %s.addr = alloca %struct.DState*, align 8
  %i = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 27
  store i32 0, i32* %nInUse, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.DState, %struct.DState* %3, i32 0, i32 28
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %conv = trunc i32 %5 to i8
  %6 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse1 = getelementptr inbounds %struct.DState, %struct.DState* %6, i32 0, i32 27
  %7 = load i32, i32* %nInUse1, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 30
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq, i32 0, i64 %idxprom2
  store i8 %conv, i8* %arrayidx3, align 1
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse4 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 27
  %10 = load i32, i32* %nInUse4, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %nInUse4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CreateDecodeTables(i32* %limit, i32* %base, i32* %perm, i8* %length, i32 %minLen, i32 %maxLen, i32 %alphaSize) #0 {
entry:
  %limit.addr = alloca i32*, align 8
  %base.addr = alloca i32*, align 8
  %perm.addr = alloca i32*, align 8
  %length.addr = alloca i8*, align 8
  %minLen.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %alphaSize.addr = alloca i32, align 4
  %pp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %vec = alloca i32, align 4
  store i32* %limit, i32** %limit.addr, align 8
  store i32* %base, i32** %base.addr, align 8
  store i32* %perm, i32** %perm.addr, align 8
  store i8* %length, i8** %length.addr, align 8
  store i32 %minLen, i32* %minLen.addr, align 4
  store i32 %maxLen, i32* %maxLen.addr, align 4
  store i32 %alphaSize, i32* %alphaSize.addr, align 4
  store i32 0, i32* %pp, align 4
  %0 = load i32, i32* %minLen.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %maxLen.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %alphaSize.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %length.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %conv, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %pp, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %perm.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  store i32 %9, i32* %arrayidx7, align 4
  %12 = load i32, i32* %pp, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %pp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %for.end.11
  %15 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %15, 23
  br i1 %cmp13, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.12
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load i32*, i32** %base.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %17, i64 %idxprom16
  store i32 0, i32* %arrayidx17, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %18 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.12

for.end.20:                                       ; preds = %for.cond.12
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.31, %for.end.20
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %alphaSize.addr, align 4
  %cmp22 = icmp slt i32 %19, %20
  br i1 %cmp22, label %for.body.24, label %for.end.33

for.body.24:                                      ; preds = %for.cond.21
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i8*, i8** %length.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %22, i64 %idxprom25
  %23 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %23 to i32
  %add = add nsw i32 %conv27, 1
  %idxprom28 = sext i32 %add to i64
  %24 = load i32*, i32** %base.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %24, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, i32* %arrayidx29, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.24
  %26 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.21

for.end.33:                                       ; preds = %for.cond.21
  store i32 1, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.43, %for.end.33
  %27 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %27, 23
  br i1 %cmp35, label %for.body.37, label %for.end.45

for.body.37:                                      ; preds = %for.cond.34
  %28 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %28, 1
  %idxprom38 = sext i32 %sub to i64
  %29 = load i32*, i32** %base.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %29, i64 %idxprom38
  %30 = load i32, i32* %arrayidx39, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %31 to i64
  %32 = load i32*, i32** %base.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %32, i64 %idxprom40
  %33 = load i32, i32* %arrayidx41, align 4
  %add42 = add nsw i32 %33, %30
  store i32 %add42, i32* %arrayidx41, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.37
  %34 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.34

for.end.45:                                       ; preds = %for.cond.34
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.52, %for.end.45
  %35 = load i32, i32* %i, align 4
  %cmp47 = icmp slt i32 %35, 23
  br i1 %cmp47, label %for.body.49, label %for.end.54

for.body.49:                                      ; preds = %for.cond.46
  %36 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %36 to i64
  %37 = load i32*, i32** %limit.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %37, i64 %idxprom50
  store i32 0, i32* %arrayidx51, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.49
  %38 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %38, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.46

for.end.54:                                       ; preds = %for.cond.46
  store i32 0, i32* %vec, align 4
  %39 = load i32, i32* %minLen.addr, align 4
  store i32 %39, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.69, %for.end.54
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %maxLen.addr, align 4
  %cmp56 = icmp sle i32 %40, %41
  br i1 %cmp56, label %for.body.58, label %for.end.71

for.body.58:                                      ; preds = %for.cond.55
  %42 = load i32, i32* %i, align 4
  %add59 = add nsw i32 %42, 1
  %idxprom60 = sext i32 %add59 to i64
  %43 = load i32*, i32** %base.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %43, i64 %idxprom60
  %44 = load i32, i32* %arrayidx61, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %45 to i64
  %46 = load i32*, i32** %base.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %46, i64 %idxprom62
  %47 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub nsw i32 %44, %47
  %48 = load i32, i32* %vec, align 4
  %add65 = add nsw i32 %48, %sub64
  store i32 %add65, i32* %vec, align 4
  %49 = load i32, i32* %vec, align 4
  %sub66 = sub nsw i32 %49, 1
  %50 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %50 to i64
  %51 = load i32*, i32** %limit.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %51, i64 %idxprom67
  store i32 %sub66, i32* %arrayidx68, align 4
  %52 = load i32, i32* %vec, align 4
  %shl = shl i32 %52, 1
  store i32 %shl, i32* %vec, align 4
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.58
  %53 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %53, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.55

for.end.71:                                       ; preds = %for.cond.55
  %54 = load i32, i32* %minLen.addr, align 4
  %add72 = add nsw i32 %54, 1
  store i32 %add72, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.87, %for.end.71
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %maxLen.addr, align 4
  %cmp74 = icmp sle i32 %55, %56
  br i1 %cmp74, label %for.body.76, label %for.end.89

for.body.76:                                      ; preds = %for.cond.73
  %57 = load i32, i32* %i, align 4
  %sub77 = sub nsw i32 %57, 1
  %idxprom78 = sext i32 %sub77 to i64
  %58 = load i32*, i32** %limit.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %58, i64 %idxprom78
  %59 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %59, 1
  %shl81 = shl i32 %add80, 1
  %60 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %60 to i64
  %61 = load i32*, i32** %base.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %61, i64 %idxprom82
  %62 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %shl81, %62
  %63 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %63 to i64
  %64 = load i32*, i32** %base.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %64, i64 %idxprom85
  store i32 %sub84, i32* %arrayidx86, align 4
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.76
  %65 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %65, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.73

for.end.89:                                       ; preds = %for.cond.73
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
