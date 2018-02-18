; ModuleID = '00223.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_21 = internal global [7 x [2 x i32]] [[2 x i32] [i32 -1520498745, i32 -1530321739], [2 x i32] [i32 -1, i32 -1520498745], [2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 -1520498745], [2 x i32] [i32 -1, i32 -1530321739], [2 x i32] [i32 -1520498745, i32 -1530321739], [2 x i32] [i32 -1, i32 -1520498745]], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"g_21[i][j]\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_50 = internal global [8 x i64] [i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"g_50[i]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_56 = internal global i16 -1, align 2
@.str.5 = private unnamed_addr constant [5 x i8] c"g_56\00", align 1
@g_64 = internal global i16 5721, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_64\00", align 1
@g_77 = internal global i8 -7, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_77\00", align 1
@g_85 = internal global i8 -123, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"g_85\00", align 1
@g_95 = internal global i32 -1618108884, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_95\00", align 1
@g_106 = internal global i32 -1, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_106\00", align 1
@g_108 = internal global i16 -25229, align 2
@.str.11 = private unnamed_addr constant [6 x i8] c"g_108\00", align 1
@g_113 = internal global i8 2, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_113\00", align 1
@g_117 = internal global i32 1, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_117\00", align 1
@g_121 = internal global [2 x [6 x i64]] [[6 x i64] [i64 0, i64 8, i64 8, i64 0, i64 6073431233093882834, i64 0], [6 x i64] [i64 0, i64 6073431233093882834, i64 0, i64 8, i64 8, i64 0]], align 16
@.str.14 = private unnamed_addr constant [12 x i8] c"g_121[i][j]\00", align 1
@g_130 = internal global [3 x [8 x [6 x i64]]] [[8 x [6 x i64]] [[6 x i64] [i64 0, i64 -3225445627515354913, i64 1, i64 1, i64 1, i64 -3225445627515354913], [6 x i64] [i64 -8566779381145168650, i64 -1, i64 -1, i64 1162444523598485736, i64 -1, i64 -8566779381145168650], [6 x i64] [i64 9, i64 5, i64 -1, i64 6, i64 -8566779381145168650, i64 7273167361538074006], [6 x i64] [i64 -1, i64 5, i64 -6778032243420986992, i64 -2, i64 -9145061408487275779, i64 -1], [6 x i64] [i64 1162444523598485736, i64 0, i64 -2, i64 6800924355653645957, i64 6800924355653645957, i64 -2], [6 x i64] [i64 -8566779381145168650, i64 -8566779381145168650, i64 3, i64 0, i64 6, i64 1], [6 x i64] [i64 3, i64 3, i64 -1, i64 -1, i64 -7308560010961931526, i64 3], [6 x i64] [i64 7273167361538074006, i64 3, i64 -1, i64 -6778032243420986992, i64 -8566779381145168650, i64 1]], [8 x [6 x i64]] [[6 x i64] [i64 -1, i64 -6778032243420986992, i64 3, i64 -2, i64 -3225445627515354913, i64 -2], [6 x i64] [i64 -2, i64 -3225445627515354913, i64 -2, i64 3, i64 -6778032243420986992, i64 -1], [6 x i64] [i64 1, i64 -8566779381145168650, i64 -6778032243420986992, i64 -1, i64 3, i64 7273167361538074006], [6 x i64] [i64 3, i64 -7308560010961931526, i64 -1, i64 -1, i64 3, i64 3], [6 x i64] [i64 1, i64 6, i64 0, i64 3, i64 -8566779381145168650, i64 -8566779381145168650], [6 x i64] [i64 -2, i64 6800924355653645957, i64 6800924355653645957, i64 -2, i64 0, i64 1162444523598485736], [6 x i64] [i64 -1, i64 -9145061408487275779, i64 -2, i64 -6778032243420986992, i64 5, i64 -1], [6 x i64] [i64 7273167361538074006, i64 -8566779381145168650, i64 6, i64 -1, i64 5, i64 9]], [8 x [6 x i64]] [[6 x i64] [i64 3, i64 -9145061408487275779, i64 -2081675256847453722, i64 0, i64 0, i64 3], [6 x i64] [i64 -8566779381145168650, i64 6800924355653645957, i64 -7045468741040318666, i64 6800924355653645957, i64 -8566779381145168650, i64 0], [6 x i64] [i64 1162444523598485736, i64 6, i64 5, i64 -2, i64 3, i64 1], [6 x i64] [i64 -1, i64 -7308560010961931526, i64 -2, i64 6, i64 3, i64 1], [6 x i64] [i64 9, i64 -8566779381145168650, i64 5, i64 -2081675256847453722, i64 -6778032243420986992, i64 0], [6 x i64] [i64 3, i64 -3225445627515354913, i64 -7045468741040318666, i64 -7045468741040318666, i64 -3225445627515354913, i64 3], [6 x i64] [i64 0, i64 -6778032243420986992, i64 -2081675256847453722, i64 5, i64 -8566779381145168650, i64 9], [6 x i64] [i64 1, i64 3, i64 6, i64 -2, i64 -7308560010961931526, i64 -1]]], align 16
@.str.15 = private unnamed_addr constant [15 x i8] c"g_130[i][j][k]\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_163 = internal global i32 3, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_163\00", align 1
@g_166 = internal global [2 x [3 x i64]] [[3 x i64] [i64 6, i64 6, i64 6], [3 x i64] [i64 6, i64 6, i64 6]], align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"g_166[i][j]\00", align 1
@g_227 = internal global [5 x [4 x [5 x i64]]] [[4 x [5 x i64]] [[5 x i64] [i64 -294516038290664354, i64 -1, i64 1, i64 -1, i64 1], [5 x i64] [i64 -8574331652965992149, i64 -8574331652965992149, i64 1374819635612422634, i64 2982188552217866401, i64 1], [5 x i64] [i64 -1, i64 -294516038290664354, i64 -294516038290664354, i64 -1, i64 1], [5 x i64] [i64 1, i64 2982188552217866401, i64 6893773819593962931, i64 6893773819593962931, i64 2982188552217866401]], [4 x [5 x i64]] [[5 x i64] [i64 1, i64 -294516038290664354, i64 7, i64 3372360318110932392, i64 3372360318110932392], [5 x i64] [i64 2, i64 -8574331652965992149, i64 2, i64 6893773819593962931, i64 1374819635612422634], [5 x i64] [i64 -1, i64 -1, i64 3372360318110932392, i64 -1, i64 -1], [5 x i64] [i64 2, i64 1, i64 -8574331652965992149, i64 2982188552217866401, i64 -8574331652965992149]], [4 x [5 x i64]] [[5 x i64] [i64 1, i64 1, i64 3372360318110932392, i64 -1, i64 3195820386267519995], [5 x i64] [i64 1, i64 2, i64 2, i64 1, i64 -8574331652965992149], [5 x i64] [i64 -1, i64 7, i64 3372360318110932392, i64 3372360318110932392, i64 7], [5 x i64] [i64 1, i64 2982188552217866401, i64 1374819635612422634, i64 -8574331652965992149, i64 -8574331652965992149]], [4 x [5 x i64]] [[5 x i64] [i64 -1, i64 3195820386267519995, i64 -1, i64 3372360318110932392, i64 1], [5 x i64] [i64 6893773819593962931, i64 2, i64 -8574331652965992149, i64 2, i64 6893773819593962931], [5 x i64] [i64 -1, i64 -294516038290664354, i64 3195820386267519995, i64 7, i64 3195820386267519995], [5 x i64] [i64 1, i64 1, i64 -8574331652965992149, i64 6893773819593962931, i64 1]], [4 x [5 x i64]] [[5 x i64] [i64 -294516038290664354, i64 -1, i64 -1, i64 -294516038290664354, i64 3195820386267519995], [5 x i64] [i64 2, i64 6893773819593962931, i64 1374819635612422634, i64 1374819635612422634, i64 6893773819593962931], [5 x i64] [i64 3195820386267519995, i64 -1, i64 3372360318110932392, i64 1, i64 1], [5 x i64] [i64 2982188552217866401, i64 1, i64 2982188552217866401, i64 1374819635612422634, i64 -8574331652965992149]]], align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"g_227[i][j][k]\00", align 1
@g_268 = internal global i16 -11433, align 2
@.str.20 = private unnamed_addr constant [6 x i8] c"g_268\00", align 1
@g_377 = internal global i8 -1, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_377\00", align 1
@g_460 = internal global [3 x [2 x i8]] [[2 x i8] c"\F6\F6", [2 x i8] c"\F6\F6", [2 x i8] c"\F6\F6"], align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"g_460[i][j]\00", align 1
@g_471 = internal global i64 -6783653746824628367, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_471\00", align 1
@g_501 = internal global [4 x [10 x i32]] [[10 x i32] [i32 -9, i32 -443480432, i32 -1394588071, i32 5, i32 0, i32 5, i32 -1394588071, i32 -443480432, i32 -9, i32 -1815750007], [10 x i32] [i32 -9, i32 454717092, i32 -1, i32 -7, i32 5, i32 -1815750007, i32 -1815750007, i32 5, i32 -7, i32 -1], [10 x i32] [i32 -1815750007, i32 -1815750007, i32 5, i32 -7, i32 -1, i32 454717092, i32 -9, i32 0, i32 -9, i32 454717092], [10 x i32] [i32 -1394588071, i32 5, i32 0, i32 5, i32 -1394588071, i32 -443480432, i32 -9, i32 -1815750007, i32 1715646618, i32 1715646618]], align 16
@.str.24 = private unnamed_addr constant [12 x i8] c"g_501[i][j]\00", align 1
@g_615 = internal constant [4 x i16] zeroinitializer, align 2
@.str.25 = private unnamed_addr constant [9 x i8] c"g_615[i]\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_711\00", align 1
@g_786 = internal global i8 -108, align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_786\00", align 1
@g_857 = internal global [9 x i32] [i32 0, i32 -765741555, i32 -765741555, i32 0, i32 -765741555, i32 -765741555, i32 0, i32 -765741555, i32 -765741555], align 16
@.str.28 = private unnamed_addr constant [9 x i8] c"g_857[i]\00", align 1
@g_1067 = internal global i16 1, align 2
@.str.29 = private unnamed_addr constant [7 x i8] c"g_1067\00", align 1
@g_1144 = internal global i32 790870177, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1144\00", align 1
@g_1388 = internal global i8 8, align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1388\00", align 1
@g_1486 = internal global i32 -644055833, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1486\00", align 1
@g_1521 = internal global i32 -125237661, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1521\00", align 1
@g_1523 = internal global i16 0, align 2
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1523\00", align 1
@g_1620 = internal global i32 -1624006226, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1620\00", align 1
@g_1686 = internal global i64 0, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1686\00", align 1
@g_1702 = internal global i32 -1394635902, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1702\00", align 1
@g_1886 = internal global [2 x [9 x i8]] [[9 x i8] c"\FB\FB\FF\FB\FB\FF\FB\FB\FF", [9 x i8] c"\CF\CF\00\CF\CF\00\CF\CF\00"], align 16
@.str.38 = private unnamed_addr constant [13 x i8] c"g_1886[i][j]\00", align 1
@g_2286 = internal global [5 x i32] [i32 -10, i32 -10, i32 -10, i32 -10, i32 -10], align 16
@.str.39 = private unnamed_addr constant [10 x i8] c"g_2286[i]\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"g_2338\00", align 1
@g_2423 = internal global i16 -26759, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_2423\00", align 1
@g_2496 = internal global i8 104, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_2496\00", align 1
@g_2653 = internal global i32 5, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2653\00", align 1
@g_2842 = internal global i64 7, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"g_2842\00", align 1
@g_2935 = internal global i16 -14642, align 2
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2935\00", align 1
@g_3182 = internal global i32 1903196995, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_3182\00", align 1
@g_3193 = internal global i8 65, align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"g_3193\00", align 1
@g_3274 = internal global i16 -32633, align 2
@.str.48 = private unnamed_addr constant [7 x i8] c"g_3274\00", align 1
@g_3340 = internal global i32 -1865570161, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"g_3340\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_770 = internal global [5 x i64**] zeroinitializer, align 16
@func_1.l_3155 = private unnamed_addr constant [5 x [5 x i32]] [[5 x i32] [i32 2045702789, i32 -1, i32 -419117212, i32 -419117212, i32 -1], [5 x i32] [i32 1, i32 -4, i32 -663359726, i32 -663359726, i32 -4], [5 x i32] [i32 2045702789, i32 -1, i32 -419117212, i32 -419117212, i32 -1], [5 x i32] [i32 1, i32 -4, i32 -663359726, i32 -663359726, i32 -4], [5 x i32] [i32 2045702789, i32 -1, i32 -419117212, i32 -419117212, i32 -1]], align 16
@g_91 = internal global i8* @g_77, align 8
@func_1.l_3285 = private unnamed_addr constant [2 x [9 x [2 x i8**]]] [[9 x [2 x i8**]] [[2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91]], [9 x [2 x i8**]] [[2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91], [2 x i8**] [i8** @g_91, i8** @g_91]]], align 16
@g_976 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [10 x i32]]* @g_501 to i8*), i64 88) to i32*), align 8
@.str.50 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %4 = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %89

; <label>:12                                      ; preds = %0
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %15, label %77

; <label>:15                                      ; preds = %12
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %77

; <label>:18                                      ; preds = %15
  %19 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8**, i8*** %3, align 8, !tbaa !5
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8, !tbaa !5
  store i8* %22, i8** %__s1, align 8, !tbaa !5
  %23 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i8*, i8** %__s1, align 8, !tbaa !5
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %__result, align 4, !tbaa !1
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %72

; <label>:33                                      ; preds = %18
  %34 = load i32, i32* %__result, align 4, !tbaa !1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

; <label>:36                                      ; preds = %33
  %37 = load i8*, i8** %__s1, align 8, !tbaa !5
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %40, %42
  store i32 %43, i32* %__result, align 4, !tbaa !1
  %44 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %71

; <label>:46                                      ; preds = %36
  %47 = load i32, i32* %__result, align 4, !tbaa !1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %71

; <label>:49                                      ; preds = %46
  %50 = load i8*, i8** %__s1, align 8, !tbaa !5
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %53, %55
  store i32 %56, i32* %__result, align 4, !tbaa !1
  %57 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %58 = icmp ugt i64 %57, 2
  br i1 %58, label %59, label %70

; <label>:59                                      ; preds = %49
  %60 = load i32, i32* %__result, align 4, !tbaa !1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

; <label>:62                                      ; preds = %59
  %63 = load i8*, i8** %__s1, align 8, !tbaa !5
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %__result, align 4, !tbaa !1
  br label %70

; <label>:70                                      ; preds = %62, %59, %49
  br label %71

; <label>:71                                      ; preds = %70, %46, %36
  br label %72

; <label>:72                                      ; preds = %71, %33, %18
  %73 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %73, i32* %5, !tbaa !1
  %74 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %5, !tbaa !1
  br label %82

; <label>:77                                      ; preds = %15, %12
  %78 = load i8**, i8*** %3, align 8, !tbaa !5
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8, !tbaa !5
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %82

; <label>:82                                      ; preds = %77, %72
  %83 = phi i32 [ %76, %72 ], [ %81, %77 ]
  store i32 %83, i32* %4, !tbaa !1
  %84 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %4, !tbaa !1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %82
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %88, %82, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %90 = call i32 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %119, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 7
  br i1 %93, label %94, label %122

; <label>:94                                      ; preds = %91
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %115, %94
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 2
  br i1 %97, label %98, label %118

; <label>:98                                      ; preds = %95
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* @g_21, i32 0, i64 %102
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i32 0, i64 %100
  %105 = load i32, i32* %104, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %107)
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

; <label>:110                                     ; preds = %98
  %111 = load i32, i32* %i, align 4, !tbaa !1
  %112 = load i32, i32* %j, align 4, !tbaa !1
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %111, i32 %112)
  br label %114

; <label>:114                                     ; preds = %110, %98
  br label %115

; <label>:115                                     ; preds = %114
  %116 = load i32, i32* %j, align 4, !tbaa !1
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:118                                     ; preds = %95
  br label %119

; <label>:119                                     ; preds = %118
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:122                                     ; preds = %91
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:123                                     ; preds = %138, %122
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = icmp slt i32 %124, 8
  br i1 %125, label %126, label %141

; <label>:126                                     ; preds = %123
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [8 x i64], [8 x i64]* @g_50, i32 0, i64 %128
  %130 = load volatile i64, i64* %129, align 8, !tbaa !7
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %131)
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

; <label>:134                                     ; preds = %126
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %135)
  br label %137

; <label>:137                                     ; preds = %134, %126
  br label %138

; <label>:138                                     ; preds = %137
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:141                                     ; preds = %123
  %142 = load i16, i16* @g_56, align 2, !tbaa !10
  %143 = zext i16 %142 to i64
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %144)
  %145 = load i16, i16* @g_64, align 2, !tbaa !10
  %146 = zext i16 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %147)
  %148 = load i8, i8* @g_77, align 1, !tbaa !9
  %149 = sext i8 %148 to i64
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %150)
  %151 = load i8, i8* @g_85, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %153)
  %154 = load i32, i32* @g_95, align 4, !tbaa !1
  %155 = zext i32 %154 to i64
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %156)
  %157 = load i32, i32* @g_106, align 4, !tbaa !1
  %158 = zext i32 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %159)
  %160 = load i16, i16* @g_108, align 2, !tbaa !10
  %161 = sext i16 %160 to i64
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %162)
  %163 = load i8, i8* @g_113, align 1, !tbaa !9
  %164 = zext i8 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %165)
  %166 = load i32, i32* @g_117, align 4, !tbaa !1
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %168)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %169

; <label>:169                                     ; preds = %196, %141
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %171 = icmp slt i32 %170, 2
  br i1 %171, label %172, label %199

; <label>:172                                     ; preds = %169
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %173

; <label>:173                                     ; preds = %192, %172
  %174 = load i32, i32* %j, align 4, !tbaa !1
  %175 = icmp slt i32 %174, 6
  br i1 %175, label %176, label %195

; <label>:176                                     ; preds = %173
  %177 = load i32, i32* %j, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2 x [6 x i64]], [2 x [6 x i64]]* @g_121, i32 0, i64 %180
  %182 = getelementptr inbounds [6 x i64], [6 x i64]* %181, i32 0, i64 %178
  %183 = load i64, i64* %182, align 8, !tbaa !7
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %184)
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

; <label>:187                                     ; preds = %176
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = load i32, i32* %j, align 4, !tbaa !1
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %188, i32 %189)
  br label %191

; <label>:191                                     ; preds = %187, %176
  br label %192

; <label>:192                                     ; preds = %191
  %193 = load i32, i32* %j, align 4, !tbaa !1
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %j, align 4, !tbaa !1
  br label %173

; <label>:195                                     ; preds = %173
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %i, align 4, !tbaa !1
  br label %169

; <label>:199                                     ; preds = %169
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %200

; <label>:200                                     ; preds = %239, %199
  %201 = load i32, i32* %i, align 4, !tbaa !1
  %202 = icmp slt i32 %201, 3
  br i1 %202, label %203, label %242

; <label>:203                                     ; preds = %200
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %204

; <label>:204                                     ; preds = %235, %203
  %205 = load i32, i32* %j, align 4, !tbaa !1
  %206 = icmp slt i32 %205, 8
  br i1 %206, label %207, label %238

; <label>:207                                     ; preds = %204
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %208

; <label>:208                                     ; preds = %231, %207
  %209 = load i32, i32* %k, align 4, !tbaa !1
  %210 = icmp slt i32 %209, 6
  br i1 %210, label %211, label %234

; <label>:211                                     ; preds = %208
  %212 = load i32, i32* %k, align 4, !tbaa !1
  %213 = sext i32 %212 to i64
  %214 = load i32, i32* %j, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = load i32, i32* %i, align 4, !tbaa !1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [3 x [8 x [6 x i64]]], [3 x [8 x [6 x i64]]]* @g_130, i32 0, i64 %217
  %219 = getelementptr inbounds [8 x [6 x i64]], [8 x [6 x i64]]* %218, i32 0, i64 %215
  %220 = getelementptr inbounds [6 x i64], [6 x i64]* %219, i32 0, i64 %213
  %221 = load i64, i64* %220, align 8, !tbaa !7
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %222)
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

; <label>:225                                     ; preds = %211
  %226 = load i32, i32* %i, align 4, !tbaa !1
  %227 = load i32, i32* %j, align 4, !tbaa !1
  %228 = load i32, i32* %k, align 4, !tbaa !1
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %226, i32 %227, i32 %228)
  br label %230

; <label>:230                                     ; preds = %225, %211
  br label %231

; <label>:231                                     ; preds = %230
  %232 = load i32, i32* %k, align 4, !tbaa !1
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %k, align 4, !tbaa !1
  br label %208

; <label>:234                                     ; preds = %208
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i32, i32* %j, align 4, !tbaa !1
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %j, align 4, !tbaa !1
  br label %204

; <label>:238                                     ; preds = %204
  br label %239

; <label>:239                                     ; preds = %238
  %240 = load i32, i32* %i, align 4, !tbaa !1
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %i, align 4, !tbaa !1
  br label %200

; <label>:242                                     ; preds = %200
  %243 = load i32, i32* @g_163, align 4, !tbaa !1
  %244 = sext i32 %243 to i64
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %245)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %246

; <label>:246                                     ; preds = %273, %242
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = icmp slt i32 %247, 2
  br i1 %248, label %249, label %276

; <label>:249                                     ; preds = %246
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %250

; <label>:250                                     ; preds = %269, %249
  %251 = load i32, i32* %j, align 4, !tbaa !1
  %252 = icmp slt i32 %251, 3
  br i1 %252, label %253, label %272

; <label>:253                                     ; preds = %250
  %254 = load i32, i32* %j, align 4, !tbaa !1
  %255 = sext i32 %254 to i64
  %256 = load i32, i32* %i, align 4, !tbaa !1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [2 x [3 x i64]], [2 x [3 x i64]]* @g_166, i32 0, i64 %257
  %259 = getelementptr inbounds [3 x i64], [3 x i64]* %258, i32 0, i64 %255
  %260 = load i64, i64* %259, align 8, !tbaa !7
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %261)
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

; <label>:264                                     ; preds = %253
  %265 = load i32, i32* %i, align 4, !tbaa !1
  %266 = load i32, i32* %j, align 4, !tbaa !1
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %265, i32 %266)
  br label %268

; <label>:268                                     ; preds = %264, %253
  br label %269

; <label>:269                                     ; preds = %268
  %270 = load i32, i32* %j, align 4, !tbaa !1
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %j, align 4, !tbaa !1
  br label %250

; <label>:272                                     ; preds = %250
  br label %273

; <label>:273                                     ; preds = %272
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %i, align 4, !tbaa !1
  br label %246

; <label>:276                                     ; preds = %246
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %277

; <label>:277                                     ; preds = %316, %276
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %279 = icmp slt i32 %278, 5
  br i1 %279, label %280, label %319

; <label>:280                                     ; preds = %277
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %281

; <label>:281                                     ; preds = %312, %280
  %282 = load i32, i32* %j, align 4, !tbaa !1
  %283 = icmp slt i32 %282, 4
  br i1 %283, label %284, label %315

; <label>:284                                     ; preds = %281
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %285

; <label>:285                                     ; preds = %308, %284
  %286 = load i32, i32* %k, align 4, !tbaa !1
  %287 = icmp slt i32 %286, 5
  br i1 %287, label %288, label %311

; <label>:288                                     ; preds = %285
  %289 = load i32, i32* %k, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %j, align 4, !tbaa !1
  %292 = sext i32 %291 to i64
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [5 x [4 x [5 x i64]]], [5 x [4 x [5 x i64]]]* @g_227, i32 0, i64 %294
  %296 = getelementptr inbounds [4 x [5 x i64]], [4 x [5 x i64]]* %295, i32 0, i64 %292
  %297 = getelementptr inbounds [5 x i64], [5 x i64]* %296, i32 0, i64 %290
  %298 = load i64, i64* %297, align 8, !tbaa !7
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %299)
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

; <label>:302                                     ; preds = %288
  %303 = load i32, i32* %i, align 4, !tbaa !1
  %304 = load i32, i32* %j, align 4, !tbaa !1
  %305 = load i32, i32* %k, align 4, !tbaa !1
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %303, i32 %304, i32 %305)
  br label %307

; <label>:307                                     ; preds = %302, %288
  br label %308

; <label>:308                                     ; preds = %307
  %309 = load i32, i32* %k, align 4, !tbaa !1
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %k, align 4, !tbaa !1
  br label %285

; <label>:311                                     ; preds = %285
  br label %312

; <label>:312                                     ; preds = %311
  %313 = load i32, i32* %j, align 4, !tbaa !1
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %j, align 4, !tbaa !1
  br label %281

; <label>:315                                     ; preds = %281
  br label %316

; <label>:316                                     ; preds = %315
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %i, align 4, !tbaa !1
  br label %277

; <label>:319                                     ; preds = %277
  %320 = load i16, i16* @g_268, align 2, !tbaa !10
  %321 = sext i16 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %322)
  %323 = load i8, i8* @g_377, align 1, !tbaa !9
  %324 = zext i8 %323 to i64
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %325)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %326

; <label>:326                                     ; preds = %354, %319
  %327 = load i32, i32* %i, align 4, !tbaa !1
  %328 = icmp slt i32 %327, 3
  br i1 %328, label %329, label %357

; <label>:329                                     ; preds = %326
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %330

; <label>:330                                     ; preds = %350, %329
  %331 = load i32, i32* %j, align 4, !tbaa !1
  %332 = icmp slt i32 %331, 2
  br i1 %332, label %333, label %353

; <label>:333                                     ; preds = %330
  %334 = load i32, i32* %j, align 4, !tbaa !1
  %335 = sext i32 %334 to i64
  %336 = load i32, i32* %i, align 4, !tbaa !1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [3 x [2 x i8]], [3 x [2 x i8]]* @g_460, i32 0, i64 %337
  %339 = getelementptr inbounds [2 x i8], [2 x i8]* %338, i32 0, i64 %335
  %340 = load volatile i8, i8* %339, align 1, !tbaa !9
  %341 = sext i8 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 %342)
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %349

; <label>:345                                     ; preds = %333
  %346 = load i32, i32* %i, align 4, !tbaa !1
  %347 = load i32, i32* %j, align 4, !tbaa !1
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %346, i32 %347)
  br label %349

; <label>:349                                     ; preds = %345, %333
  br label %350

; <label>:350                                     ; preds = %349
  %351 = load i32, i32* %j, align 4, !tbaa !1
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %j, align 4, !tbaa !1
  br label %330

; <label>:353                                     ; preds = %330
  br label %354

; <label>:354                                     ; preds = %353
  %355 = load i32, i32* %i, align 4, !tbaa !1
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %i, align 4, !tbaa !1
  br label %326

; <label>:357                                     ; preds = %326
  %358 = load i64, i64* @g_471, align 8, !tbaa !7
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %359)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %360

; <label>:360                                     ; preds = %388, %357
  %361 = load i32, i32* %i, align 4, !tbaa !1
  %362 = icmp slt i32 %361, 4
  br i1 %362, label %363, label %391

; <label>:363                                     ; preds = %360
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %364

; <label>:364                                     ; preds = %384, %363
  %365 = load i32, i32* %j, align 4, !tbaa !1
  %366 = icmp slt i32 %365, 10
  br i1 %366, label %367, label %387

; <label>:367                                     ; preds = %364
  %368 = load i32, i32* %j, align 4, !tbaa !1
  %369 = sext i32 %368 to i64
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [4 x [10 x i32]], [4 x [10 x i32]]* @g_501, i32 0, i64 %371
  %373 = getelementptr inbounds [10 x i32], [10 x i32]* %372, i32 0, i64 %369
  %374 = load i32, i32* %373, align 4, !tbaa !1
  %375 = zext i32 %374 to i64
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %375, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %376)
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %383

; <label>:379                                     ; preds = %367
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = load i32, i32* %j, align 4, !tbaa !1
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %380, i32 %381)
  br label %383

; <label>:383                                     ; preds = %379, %367
  br label %384

; <label>:384                                     ; preds = %383
  %385 = load i32, i32* %j, align 4, !tbaa !1
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %j, align 4, !tbaa !1
  br label %364

; <label>:387                                     ; preds = %364
  br label %388

; <label>:388                                     ; preds = %387
  %389 = load i32, i32* %i, align 4, !tbaa !1
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %i, align 4, !tbaa !1
  br label %360

; <label>:391                                     ; preds = %360
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %392

; <label>:392                                     ; preds = %408, %391
  %393 = load i32, i32* %i, align 4, !tbaa !1
  %394 = icmp slt i32 %393, 4
  br i1 %394, label %395, label %411

; <label>:395                                     ; preds = %392
  %396 = load i32, i32* %i, align 4, !tbaa !1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [4 x i16], [4 x i16]* @g_615, i32 0, i64 %397
  %399 = load volatile i16, i16* %398, align 2, !tbaa !10
  %400 = zext i16 %399 to i64
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %401)
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %407

; <label>:404                                     ; preds = %395
  %405 = load i32, i32* %i, align 4, !tbaa !1
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %405)
  br label %407

; <label>:407                                     ; preds = %404, %395
  br label %408

; <label>:408                                     ; preds = %407
  %409 = load i32, i32* %i, align 4, !tbaa !1
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %i, align 4, !tbaa !1
  br label %392

; <label>:411                                     ; preds = %392
  %412 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %412)
  %413 = load i8, i8* @g_786, align 1, !tbaa !9
  %414 = sext i8 %413 to i64
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %414, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %415)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %416

; <label>:416                                     ; preds = %432, %411
  %417 = load i32, i32* %i, align 4, !tbaa !1
  %418 = icmp slt i32 %417, 9
  br i1 %418, label %419, label %435

; <label>:419                                     ; preds = %416
  %420 = load i32, i32* %i, align 4, !tbaa !1
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [9 x i32], [9 x i32]* @g_857, i32 0, i64 %421
  %423 = load i32, i32* %422, align 4, !tbaa !1
  %424 = sext i32 %423 to i64
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %425)
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

; <label>:428                                     ; preds = %419
  %429 = load i32, i32* %i, align 4, !tbaa !1
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %429)
  br label %431

; <label>:431                                     ; preds = %428, %419
  br label %432

; <label>:432                                     ; preds = %431
  %433 = load i32, i32* %i, align 4, !tbaa !1
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %i, align 4, !tbaa !1
  br label %416

; <label>:435                                     ; preds = %416
  %436 = load i16, i16* @g_1067, align 2, !tbaa !10
  %437 = zext i16 %436 to i64
  %438 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %437, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %438)
  %439 = load i32, i32* @g_1144, align 4, !tbaa !1
  %440 = zext i32 %439 to i64
  %441 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %440, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %441)
  %442 = load volatile i8, i8* @g_1388, align 1, !tbaa !9
  %443 = zext i8 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %444)
  %445 = load i32, i32* @g_1486, align 4, !tbaa !1
  %446 = sext i32 %445 to i64
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %447)
  %448 = load i32, i32* @g_1521, align 4, !tbaa !1
  %449 = sext i32 %448 to i64
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %449, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %450)
  %451 = load i16, i16* @g_1523, align 2, !tbaa !10
  %452 = zext i16 %451 to i64
  %453 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %452, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %453)
  %454 = load i32, i32* @g_1620, align 4, !tbaa !1
  %455 = zext i32 %454 to i64
  %456 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %455, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %456)
  %457 = load volatile i64, i64* @g_1686, align 8, !tbaa !7
  %458 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %457, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %458)
  %459 = load volatile i32, i32* @g_1702, align 4, !tbaa !1
  %460 = sext i32 %459 to i64
  %461 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %460, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %461)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %462

; <label>:462                                     ; preds = %490, %435
  %463 = load i32, i32* %i, align 4, !tbaa !1
  %464 = icmp slt i32 %463, 2
  br i1 %464, label %465, label %493

; <label>:465                                     ; preds = %462
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %466

; <label>:466                                     ; preds = %486, %465
  %467 = load i32, i32* %j, align 4, !tbaa !1
  %468 = icmp slt i32 %467, 9
  br i1 %468, label %469, label %489

; <label>:469                                     ; preds = %466
  %470 = load i32, i32* %j, align 4, !tbaa !1
  %471 = sext i32 %470 to i64
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [2 x [9 x i8]], [2 x [9 x i8]]* @g_1886, i32 0, i64 %473
  %475 = getelementptr inbounds [9 x i8], [9 x i8]* %474, i32 0, i64 %471
  %476 = load i8, i8* %475, align 1, !tbaa !9
  %477 = sext i8 %476 to i64
  %478 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %477, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32 %478)
  %479 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %485

; <label>:481                                     ; preds = %469
  %482 = load i32, i32* %i, align 4, !tbaa !1
  %483 = load i32, i32* %j, align 4, !tbaa !1
  %484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %482, i32 %483)
  br label %485

; <label>:485                                     ; preds = %481, %469
  br label %486

; <label>:486                                     ; preds = %485
  %487 = load i32, i32* %j, align 4, !tbaa !1
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %j, align 4, !tbaa !1
  br label %466

; <label>:489                                     ; preds = %466
  br label %490

; <label>:490                                     ; preds = %489
  %491 = load i32, i32* %i, align 4, !tbaa !1
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %i, align 4, !tbaa !1
  br label %462

; <label>:493                                     ; preds = %462
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %494

; <label>:494                                     ; preds = %510, %493
  %495 = load i32, i32* %i, align 4, !tbaa !1
  %496 = icmp slt i32 %495, 5
  br i1 %496, label %497, label %513

; <label>:497                                     ; preds = %494
  %498 = load i32, i32* %i, align 4, !tbaa !1
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [5 x i32], [5 x i32]* @g_2286, i32 0, i64 %499
  %501 = load i32, i32* %500, align 4, !tbaa !1
  %502 = sext i32 %501 to i64
  %503 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %502, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 %503)
  %504 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %509

; <label>:506                                     ; preds = %497
  %507 = load i32, i32* %i, align 4, !tbaa !1
  %508 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %507)
  br label %509

; <label>:509                                     ; preds = %506, %497
  br label %510

; <label>:510                                     ; preds = %509
  %511 = load i32, i32* %i, align 4, !tbaa !1
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %i, align 4, !tbaa !1
  br label %494

; <label>:513                                     ; preds = %494
  %514 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %514)
  %515 = load volatile i16, i16* @g_2423, align 2, !tbaa !10
  %516 = sext i16 %515 to i64
  %517 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %517)
  %518 = load volatile i8, i8* @g_2496, align 1, !tbaa !9
  %519 = zext i8 %518 to i64
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %519, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %520)
  %521 = load i32, i32* @g_2653, align 4, !tbaa !1
  %522 = sext i32 %521 to i64
  %523 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %522, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %523)
  %524 = load volatile i64, i64* @g_2842, align 8, !tbaa !7
  %525 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %524, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %525)
  %526 = load volatile i16, i16* @g_2935, align 2, !tbaa !10
  %527 = zext i16 %526 to i64
  %528 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %527, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %528)
  %529 = load i32, i32* @g_3182, align 4, !tbaa !1
  %530 = zext i32 %529 to i64
  %531 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %530, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %531)
  %532 = load i8, i8* @g_3193, align 1, !tbaa !9
  %533 = sext i8 %532 to i64
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %533, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %534)
  %535 = load i16, i16* @g_3274, align 2, !tbaa !10
  %536 = sext i16 %535 to i64
  %537 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %536, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %537)
  %538 = load volatile i32, i32* @g_3340, align 4, !tbaa !1
  %539 = zext i32 %538 to i64
  %540 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %539, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %540)
  %541 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %542 = zext i32 %541 to i64
  %543 = xor i64 %542, 4294967295
  %544 = trunc i64 %543 to i32
  %545 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %544, i32 %545)
  %546 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %546) #1
  %547 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  %549 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %549) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_gentab() #0 {
  %crc = alloca i32, align 4
  %poly = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -306674912, i32* %poly, align 4, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %33, %0
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %36

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %i, align 4, !tbaa !1
  store i32 %9, i32* %crc, align 4, !tbaa !1
  store i32 8, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:10                                      ; preds = %25, %8
  %11 = load i32, i32* %j, align 4, !tbaa !1
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %crc, align 4, !tbaa !1
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %crc, align 4, !tbaa !1
  %19 = lshr i32 %18, 1
  %20 = xor i32 %19, -306674912
  store i32 %20, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %crc, align 4, !tbaa !1
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %21, %17
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32, i32* %j, align 4, !tbaa !1
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:28                                      ; preds = %10
  %29 = load i32, i32* %crc, align 4, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %31
  store i32 %29, i32* %32, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %28
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:36                                      ; preds = %5
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @func_1() #0 {
  %l_12 = alloca i32, align 4
  %l_2111 = alloca i16, align 2
  %l_2116 = alloca i8, align 1
  %l_2117 = alloca i32, align 4
  %l_2118 = alloca i32, align 4
  %l_2687 = alloca i32, align 4
  %l_2840 = alloca i64***, align 8
  %l_2851 = alloca i32, align 4
  %l_2863 = alloca i16*****, align 8
  %l_2874 = alloca i32***, align 8
  %l_2973 = alloca i16, align 2
  %l_3035 = alloca i64*, align 8
  %l_3042 = alloca i32*, align 8
  %l_3061 = alloca i16, align 2
  %l_3078 = alloca i16, align 2
  %l_3090 = alloca [9 x i8*], align 16
  %l_3100 = alloca i32*, align 8
  %l_3118 = alloca [1 x i16], align 2
  %l_3155 = alloca [5 x [5 x i32]], align 16
  %l_3235 = alloca i32, align 4
  %l_3280 = alloca [6 x i32], align 16
  %l_3284 = alloca [8 x [5 x i32*]], align 16
  %l_3285 = alloca [2 x [9 x [2 x i8**]]], align 16
  %l_3305 = alloca i8*, align 8
  %l_3304 = alloca i8**, align 8
  %l_3303 = alloca i8***, align 8
  %l_3302 = alloca i8****, align 8
  %l_3308 = alloca i8*, align 8
  %l_3307 = alloca i8**, align 8
  %l_3306 = alloca i8***, align 8
  %l_3309 = alloca i32, align 4
  %l_3310 = alloca i8, align 1
  %l_3311 = alloca i64*, align 8
  %l_3315 = alloca i8, align 1
  %l_3376 = alloca i8, align 1
  %l_3383 = alloca i16, align 2
  %l_3422 = alloca [9 x [3 x [1 x i32]]], align 16
  %l_3435 = alloca i32, align 4
  %l_3444 = alloca i32, align 4
  %l_3445 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32* %l_12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1263455615, i32* %l_12, align 4, !tbaa !1
  %2 = bitcast i16* %l_2111 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  store i16 8, i16* %l_2111, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_2116) #1
  store i8 -112, i8* %l_2116, align 1, !tbaa !9
  %3 = bitcast i32* %l_2117 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -1, i32* %l_2117, align 4, !tbaa !1
  %4 = bitcast i32* %l_2118 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -417265844, i32* %l_2118, align 4, !tbaa !1
  %5 = bitcast i32* %l_2687 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1078132312, i32* %l_2687, align 4, !tbaa !1
  %6 = bitcast i64**** %l_2840 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64*** getelementptr inbounds ([5 x i64**], [5 x i64**]* @g_770, i32 0, i64 4), i64**** %l_2840, align 8, !tbaa !5
  %7 = bitcast i32* %l_2851 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1516805554, i32* %l_2851, align 4, !tbaa !1
  %8 = bitcast i16****** %l_2863 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16***** null, i16****** %l_2863, align 8, !tbaa !5
  %9 = bitcast i32**** %l_2874 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32*** null, i32**** %l_2874, align 8, !tbaa !5
  %10 = bitcast i16* %l_2973 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  store i16 -3, i16* %l_2973, align 2, !tbaa !10
  %11 = bitcast i64** %l_3035 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64* null, i64** %l_3035, align 8, !tbaa !5
  %12 = bitcast i32** %l_3042 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* null, i32** %l_3042, align 8, !tbaa !5
  %13 = bitcast i16* %l_3061 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 1, i16* %l_3061, align 2, !tbaa !10
  %14 = bitcast i16* %l_3078 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  store i16 579, i16* %l_3078, align 2, !tbaa !10
  %15 = bitcast [9 x i8*]* %l_3090 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %15) #1
  %16 = bitcast i32** %l_3100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* @g_95, i32** %l_3100, align 8, !tbaa !5
  %17 = bitcast [1 x i16]* %l_3118 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  %18 = bitcast [5 x [5 x i32]]* %l_3155 to i8*
  call void @llvm.lifetime.start(i64 100, i8* %18) #1
  %19 = bitcast [5 x [5 x i32]]* %l_3155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([5 x [5 x i32]]* @func_1.l_3155 to i8*), i64 100, i32 16, i1 false)
  %20 = bitcast i32* %l_3235 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 1, i32* %l_3235, align 4, !tbaa !1
  %21 = bitcast [6 x i32]* %l_3280 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %21) #1
  %22 = bitcast [8 x [5 x i32*]]* %l_3284 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %22) #1
  %23 = getelementptr inbounds [8 x [5 x i32*]], [8 x [5 x i32*]]* %l_3284, i64 0, i64 0
  %24 = getelementptr inbounds [5 x i32*], [5 x i32*]* %23, i64 0, i64 0
  store i32* %l_2117, i32** %24, !tbaa !5
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  store i32* %l_2118, i32** %25, !tbaa !5
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %l_3155, i32 0, i64 2
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %27, i32 0, i64 2
  store i32* %28, i32** %26, !tbaa !5
  %29 = getelementptr inbounds i32*, i32** %26, i64 1
  %30 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %l_3155, i32 0, i64 2
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %30, i32 0, i64 2
  store i32* %31, i32** %29, !tbaa !5
  %32 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* %l_2118, i32** %32, !tbaa !5
  %33 = getelementptr inbounds [5 x i32*], [5 x i32*]* %23, i64 1
  %34 = getelementptr inbounds [5 x i32*], [5 x i32*]* %33, i64 0, i64 0
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_2286, i32 0, i64 1), i32** %34, !tbaa !5
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  store i32* null, i32** %35, !tbaa !5
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  store i32* getelementptr inbounds ([7 x [2 x i32]], [7 x [2 x i32]]* @g_21, i32 0, i64 3, i64 1), i32** %36, !tbaa !5
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  store i32* %l_2851, i32** %37, !tbaa !5
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  store i32* null, i32** %38, !tbaa !5
  %39 = getelementptr inbounds [5 x i32*], [5 x i32*]* %33, i64 1
  %40 = getelementptr inbounds [5 x i32*], [5 x i32*]* %39, i64 0, i64 0
  store i32* %l_2117, i32** %40, !tbaa !5
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  store i32* %l_2118, i32** %41, !tbaa !5
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  %43 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %l_3155, i32 0, i64 2
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %43, i32 0, i64 2
  store i32* %44, i32** %42, !tbaa !5
  %45 = getelementptr inbounds i32*, i32** %42, i64 1
  %46 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %l_3155, i32 0, i64 2
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i32 0, i64 2
  store i32* %47, i32** %45, !tbaa !5
  %48 = getelementptr inbounds i32*, i32** %45, i64 1
  store i32* %l_2118, i32** %48, !tbaa !5
  %49 = getelementptr inbounds [5 x i32*], [5 x i32*]* %39, i64 1
  %50 = getelementptr inbounds [5 x i32*], [5 x i32*]* %49, i64 0, i64 0
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_2286, i32 0, i64 1), i32** %50, !tbaa !5
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  store i32* null, i32** %51, !tbaa !5
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  store i32* getelementptr inbounds ([7 x [2 x i32]], [7 x [2 x i32]]* @g_21, i32 0, i64 3, i64 1), i32** %52, !tbaa !5
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  store i32* %l_2851, i32** %53, !tbaa !5
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  store i32* null, i32** %54, !tbaa !5
  %55 = getelementptr inbounds [5 x i32*], [5 x i32*]* %49, i64 1
  %56 = getelementptr inbounds [5 x i32*], [5 x i32*]* %55, i64 0, i64 0
  store i32* %l_2117, i32** %56, !tbaa !5
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  store i32* %l_2118, i32** %57, !tbaa !5
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  %59 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %l_3155, i32 0, i64 2
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %59, i32 0, i64 2
  store i32* %60, i32** %58, !tbaa !5
  %61 = getelementptr inbounds i32*, i32** %58, i64 1
  %62 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %l_3155, i32 0, i64 2
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %62, i32 0, i64 2
  store i32* %63, i32** %61, !tbaa !5
  %64 = getelementptr inbounds i32*, i32** %61, i64 1
  store i32* %l_2118, i32** %64, !tbaa !5
  %65 = getelementptr inbounds [5 x i32*], [5 x i32*]* %55, i64 1
  %66 = getelementptr inbounds [5 x i32*], [5 x i32*]* %65, i64 0, i64 0
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_2286, i32 0, i64 1), i32** %66, !tbaa !5
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  store i32* null, i32** %67, !tbaa !5
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  store i32* getelementptr inbounds ([7 x [2 x i32]], [7 x [2 x i32]]* @g_21, i32 0, i64 3, i64 1), i32** %68, !tbaa !5
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  store i32* %l_2851, i32** %69, !tbaa !5
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  store i32* null, i32** %70, !tbaa !5
  %71 = getelementptr inbounds [5 x i32*], [5 x i32*]* %65, i64 1
  %72 = getelementptr inbounds [5 x i32*], [5 x i32*]* %71, i64 0, i64 0
  store i32* @g_2653, i32** %72, !tbaa !5
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  store i32* null, i32** %73, !tbaa !5
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  store i32* %l_2118, i32** %74, !tbaa !5
  %75 = getelementptr inbounds i32*, i32** %74, i64 1
  store i32* %l_2118, i32** %75, !tbaa !5
  %76 = getelementptr inbounds i32*, i32** %75, i64 1
  store i32* null, i32** %76, !tbaa !5
  %77 = getelementptr inbounds [5 x i32*], [5 x i32*]* %71, i64 1
  %78 = getelementptr inbounds [5 x i32*], [5 x i32*]* %77, i64 0, i64 0
  %79 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %l_3155, i32 0, i64 2
  %80 = getelementptr inbounds [5 x i32], [5 x i32]* %79, i32 0, i64 2
  store i32* %80, i32** %78, !tbaa !5
  %81 = getelementptr inbounds i32*, i32** %78, i64 1
  store i32* %l_2851, i32** %81, !tbaa !5
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  store i32* null, i32** %82, !tbaa !5
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  store i32* null, i32** %83, !tbaa !5
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  %85 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %l_3155, i32 0, i64 2
  %86 = getelementptr inbounds [5 x i32], [5 x i32]* %85, i32 0, i64 2
  store i32* %86, i32** %84, !tbaa !5
  %87 = bitcast [2 x [9 x [2 x i8**]]]* %l_3285 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %87) #1
  %88 = bitcast [2 x [9 x [2 x i8**]]]* %l_3285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* bitcast ([2 x [9 x [2 x i8**]]]* @func_1.l_3285 to i8*), i64 288, i32 16, i1 false)
  %89 = bitcast i8** %l_3305 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  store i8* %l_2116, i8** %l_3305, align 8, !tbaa !5
  %90 = bitcast i8*** %l_3304 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  store i8** %l_3305, i8*** %l_3304, align 8, !tbaa !5
  %91 = bitcast i8**** %l_3303 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  store i8*** %l_3304, i8**** %l_3303, align 8, !tbaa !5
  %92 = bitcast i8***** %l_3302 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  store i8**** %l_3303, i8***** %l_3302, align 8, !tbaa !5
  %93 = bitcast i8** %l_3308 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  store i8* @g_85, i8** %l_3308, align 8, !tbaa !5
  %94 = bitcast i8*** %l_3307 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  store i8** %l_3308, i8*** %l_3307, align 8, !tbaa !5
  %95 = bitcast i8**** %l_3306 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  store i8*** %l_3307, i8**** %l_3306, align 8, !tbaa !5
  %96 = bitcast i32* %l_3309 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  store i32 1, i32* %l_3309, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3310) #1
  store i8 -7, i8* %l_3310, align 1, !tbaa !9
  %97 = bitcast i64** %l_3311 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  store i64* getelementptr inbounds ([2 x [6 x i64]], [2 x [6 x i64]]* @g_121, i32 0, i64 0, i64 2), i64** %l_3311, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_3315) #1
  store i8 7, i8* %l_3315, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_3376) #1
  store i8 23, i8* %l_3376, align 1, !tbaa !9
  %98 = bitcast i16* %l_3383 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %98) #1
  store i16 -21740, i16* %l_3383, align 2, !tbaa !10
  %99 = bitcast [9 x [3 x [1 x i32]]]* %l_3422 to i8*
  call void @llvm.lifetime.start(i64 108, i8* %99) #1
  %100 = bitcast i32* %l_3435 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  store i32 531405897, i32* %l_3435, align 4, !tbaa !1
  %101 = bitcast i32* %l_3444 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  store i32 8, i32* %l_3444, align 4, !tbaa !1
  %102 = bitcast i16* %l_3445 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %102) #1
  store i16 -6381, i16* %l_3445, align 2, !tbaa !10
  %103 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %106

; <label>:106                                     ; preds = %113, %0
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = icmp slt i32 %107, 9
  br i1 %108, label %109, label %116

; <label>:109                                     ; preds = %106
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [9 x i8*], [9 x i8*]* %l_3090, i32 0, i64 %111
  store i8* @g_113, i8** %112, align 8, !tbaa !5
  br label %113

; <label>:113                                     ; preds = %109
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %i, align 4, !tbaa !1
  br label %106

; <label>:116                                     ; preds = %106
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %117

; <label>:117                                     ; preds = %124, %116
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %127

; <label>:120                                     ; preds = %117
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [1 x i16], [1 x i16]* %l_3118, i32 0, i64 %122
  store i16 22142, i16* %123, align 2, !tbaa !10
  br label %124

; <label>:124                                     ; preds = %120
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %i, align 4, !tbaa !1
  br label %117

; <label>:127                                     ; preds = %117
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %128

; <label>:128                                     ; preds = %135, %127
  %129 = load i32, i32* %i, align 4, !tbaa !1
  %130 = icmp slt i32 %129, 6
  br i1 %130, label %131, label %138

; <label>:131                                     ; preds = %128
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [6 x i32], [6 x i32]* %l_3280, i32 0, i64 %133
  store i32 -2113234111, i32* %134, align 4, !tbaa !1
  br label %135

; <label>:135                                     ; preds = %131
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %i, align 4, !tbaa !1
  br label %128

; <label>:138                                     ; preds = %128
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %139

; <label>:139                                     ; preds = %168, %138
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = icmp slt i32 %140, 9
  br i1 %141, label %142, label %171

; <label>:142                                     ; preds = %139
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %143

; <label>:143                                     ; preds = %164, %142
  %144 = load i32, i32* %j, align 4, !tbaa !1
  %145 = icmp slt i32 %144, 3
  br i1 %145, label %146, label %167

; <label>:146                                     ; preds = %143
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %147

; <label>:147                                     ; preds = %160, %146
  %148 = load i32, i32* %k, align 4, !tbaa !1
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %150, label %163

; <label>:150                                     ; preds = %147
  %151 = load i32, i32* %k, align 4, !tbaa !1
  %152 = sext i32 %151 to i64
  %153 = load i32, i32* %j, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %i, align 4, !tbaa !1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [9 x [3 x [1 x i32]]], [9 x [3 x [1 x i32]]]* %l_3422, i32 0, i64 %156
  %158 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %157, i32 0, i64 %154
  %159 = getelementptr inbounds [1 x i32], [1 x i32]* %158, i32 0, i64 %152
  store i32 439285975, i32* %159, align 4, !tbaa !1
  br label %160

; <label>:160                                     ; preds = %150
  %161 = load i32, i32* %k, align 4, !tbaa !1
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %k, align 4, !tbaa !1
  br label %147

; <label>:163                                     ; preds = %147
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load i32, i32* %j, align 4, !tbaa !1
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %j, align 4, !tbaa !1
  br label %143

; <label>:167                                     ; preds = %143
  br label %168

; <label>:168                                     ; preds = %167
  %169 = load i32, i32* %i, align 4, !tbaa !1
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %i, align 4, !tbaa !1
  br label %139

; <label>:171                                     ; preds = %139
  %172 = load i32*, i32** @g_976, align 8, !tbaa !5
  %173 = load i32, i32* %172, align 4, !tbaa !1
  %174 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i16* %l_3445 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %177) #1
  %178 = bitcast i32* %l_3444 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %l_3435 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast [9 x [3 x [1 x i32]]]* %l_3422 to i8*
  call void @llvm.lifetime.end(i64 108, i8* %180) #1
  %181 = bitcast i16* %l_3383 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %181) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3376) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3315) #1
  %182 = bitcast i64** %l_3311 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3310) #1
  %183 = bitcast i32* %l_3309 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i8**** %l_3306 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast i8*** %l_3307 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast i8** %l_3308 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i8***** %l_3302 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast i8**** %l_3303 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast i8*** %l_3304 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i8** %l_3305 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast [2 x [9 x [2 x i8**]]]* %l_3285 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %191) #1
  %192 = bitcast [8 x [5 x i32*]]* %l_3284 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %192) #1
  %193 = bitcast [6 x i32]* %l_3280 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %193) #1
  %194 = bitcast i32* %l_3235 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast [5 x [5 x i32]]* %l_3155 to i8*
  call void @llvm.lifetime.end(i64 100, i8* %195) #1
  %196 = bitcast [1 x i16]* %l_3118 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %196) #1
  %197 = bitcast i32** %l_3100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast [9 x i8*]* %l_3090 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %198) #1
  %199 = bitcast i16* %l_3078 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %199) #1
  %200 = bitcast i16* %l_3061 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %200) #1
  %201 = bitcast i32** %l_3042 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i64** %l_3035 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast i16* %l_2973 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %203) #1
  %204 = bitcast i32**** %l_2874 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i16****** %l_2863 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %l_2851 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i64**** %l_2840 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i32* %l_2687 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %l_2118 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %l_2117 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2116) #1
  %211 = bitcast i16* %l_2111 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %211) #1
  %212 = bitcast i32* %l_12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  ret i32 %173
}

; Function Attrs: nounwind uwtable
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i64 %val, i64* %1, align 8, !tbaa !7
  store i8* %vname, i8** %2, align 8, !tbaa !5
  store i32 %flag, i32* %3, align 4, !tbaa !1
  %4 = load i64, i64* %1, align 8, !tbaa !7
  call void @crc32_8bytes(i64 %4)
  %5 = load i32, i32* %3, align 4, !tbaa !1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %2, align 8, !tbaa !5
  %9 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %10 = zext i32 %9 to i64
  %11 = xor i64 %10, 4294967295
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i32 0, i32 0), i8* %8, i64 %11)
  br label %13

; <label>:13                                      ; preds = %7, %0
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4, !tbaa !1
  store i32 %flag, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = alloca i64, align 8
  store i64 %val, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = lshr i64 %2, 0
  %4 = and i64 %3, 255
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5)
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = lshr i64 %6, 8
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9)
  %10 = load i64, i64* %1, align 8, !tbaa !7
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13)
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = lshr i64 %14, 24
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i8
  call void @crc32_byte(i8 zeroext %17)
  %18 = load i64, i64* %1, align 8, !tbaa !7
  %19 = lshr i64 %18, 32
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21)
  %22 = load i64, i64* %1, align 8, !tbaa !7
  %23 = lshr i64 %22, 40
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i8
  call void @crc32_byte(i8 zeroext %25)
  %26 = load i64, i64* %1, align 8, !tbaa !7
  %27 = lshr i64 %26, 48
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  call void @crc32_byte(i8 zeroext %29)
  %30 = load i64, i64* %1, align 8, !tbaa !7
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  call void @crc32_byte(i8 zeroext %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_byte(i8 zeroext %b) #0 {
  %1 = alloca i8, align 1
  store i8 %b, i8* %1, align 1, !tbaa !9
  %2 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 16777215
  %5 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = xor i32 %5, %7
  %9 = and i32 %8, 255
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !1
  %13 = xor i32 %4, %12
  store i32 %13, i32* @crc32_context, align 4, !tbaa !1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
