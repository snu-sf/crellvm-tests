; ModuleID = '00550.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -1978434792, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global i32 2016024630, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_5 = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_6 = internal global i32 -6, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_7 = internal global i32 488788187, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_8 = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_15 = internal global i32 -1856963861, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_15\00", align 1
@g_22 = internal global i32 517807835, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_22\00", align 1
@g_42 = internal global i16 18555, align 2
@.str.9 = private unnamed_addr constant [5 x i8] c"g_42\00", align 1
@g_46 = internal global i16 0, align 2
@.str.10 = private unnamed_addr constant [5 x i8] c"g_46\00", align 1
@g_87 = internal global i8 1, align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"g_87\00", align 1
@g_89 = internal global [3 x [6 x [9 x i64]]] [[6 x [9 x i64]] [[9 x i64] [i64 -7, i64 7506801208718896275, i64 462713570863539684, i64 0, i64 -1, i64 2862583570039533832, i64 -2702970103600620369, i64 -6, i64 -1135377949666212416], [9 x i64] [i64 8637118669633773824, i64 -496615848849383324, i64 1, i64 6764822870933675874, i64 1, i64 1, i64 6764822870933675874, i64 1, i64 -496615848849383324], [9 x i64] [i64 -6, i64 6, i64 -2, i64 -4, i64 -7244028471489237991, i64 -1505582173715311196, i64 8715076271202142616, i64 4812956732056206525, i64 3081969668017512520], [9 x i64] [i64 1, i64 963285506963886633, i64 -4669976902027076008, i64 4798376806598056244, i64 -5427043666604380329, i64 5, i64 -843911122734106522, i64 8715076271202142616, i64 7506801208718896275], [9 x i64] [i64 -9, i64 6, i64 6, i64 462713570863539684, i64 1748534405506277003, i64 4, i64 3480963416806888971, i64 8637118669633773824, i64 1], [9 x i64] [i64 1, i64 -496615848849383324, i64 3480963416806888971, i64 -4669976902027076008, i64 6764822870933675874, i64 -7244028471489237991, i64 6, i64 -2319618501229235018, i64 1]], [6 x [9 x i64]] [[9 x i64] [i64 -4159834448064973642, i64 7506801208718896275, i64 -1, i64 8015068509192071874, i64 -7, i64 -7244028471489237991, i64 -6, i64 -5552324952616235876, i64 -2], [9 x i64] [i64 -5552324952616235876, i64 -4669976902027076008, i64 5, i64 4, i64 -496615848849383324, i64 4, i64 5, i64 -4669976902027076008, i64 -5552324952616235876], [9 x i64] [i64 1748534405506277003, i64 -7, i64 -4159834448064973642, i64 -5427043666604380329, i64 1, i64 5, i64 -5552324952616235876, i64 3480963416806888971, i64 8715076271202142616], [9 x i64] [i64 0, i64 -843911122734106522, i64 1, i64 -8212802830839329900, i64 -5552324952616235876, i64 -1505582173715311196, i64 -1, i64 -7244028471489237991, i64 -2319618501229235018], [9 x i64] [i64 1748534405506277003, i64 1, i64 -5552324952616235876, i64 1, i64 0, i64 1, i64 -1, i64 963285506963886633, i64 -1], [9 x i64] [i64 -5552324952616235876, i64 -9, i64 4798376806598056244, i64 -1, i64 -8437780634292759403, i64 2862583570039533832, i64 8637118669633773824, i64 6, i64 -5427043666604380329]], [6 x [9 x i64]] [[9 x i64] [i64 1710514247436122466, i64 963285506963886633, i64 1, i64 -7244028471489237991, i64 7506801208718896275, i64 -6, i64 -3, i64 462713570863539684, i64 4], [9 x i64] [i64 5, i64 -2319618501229235018, i64 1, i64 -9, i64 -9, i64 1, i64 -2319618501229235018, i64 5, i64 1710514247436122466], [9 x i64] [i64 -843911122734106522, i64 1748534405506277003, i64 6, i64 -5427043666604380329, i64 1, i64 4812956732056206525, i64 -4, i64 -7, i64 -2319618501229235018], [9 x i64] [i64 -4, i64 -1, i64 -9, i64 8637118669633773824, i64 -7244028471489237991, i64 8715076271202142616, i64 -2702970103600620369, i64 -5427043666604380329, i64 1710514247436122466], [9 x i64] [i64 0, i64 -6, i64 -4159834448064973642, i64 -3, i64 6, i64 8637118669633773824, i64 -5427043666604380329, i64 -4, i64 4], [9 x i64] [i64 1, i64 7506801208718896275, i64 6, i64 3480963416806888971, i64 0, i64 -2319618501229235018, i64 -8437780634292759403, i64 1748534405506277003, i64 -1]]], align 16
@.str.12 = private unnamed_addr constant [14 x i8] c"g_89[i][j][k]\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_134 = internal global i16 -17185, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_134\00", align 1
@g_162 = internal global i8 0, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_162\00", align 1
@g_169 = internal global i8 -9, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_169\00", align 1
@g_173 = internal global i8 0, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_173\00", align 1
@g_219 = internal global [8 x i32] [i32 0, i32 6, i32 0, i32 6, i32 0, i32 6, i32 0, i32 6], align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"g_219[i]\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_243 = internal global i32 1, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_243\00", align 1
@g_284 = internal global i16 3, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_284\00", align 1
@g_291 = internal global i16 -21250, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_291\00", align 1
@g_313 = internal global i64 -7986913826209469562, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_313\00", align 1
@g_386 = internal global [8 x [2 x [4 x i8]]] [[2 x [4 x i8]] [[4 x i8] c"\F8\07\DC\01", [4 x i8] c"n\07}\F8"], [2 x [4 x i8]] [[4 x i8] c"\07\00\09\00", [4 x i8] c"\D4\DC\04\A8"], [2 x [4 x i8]] [[4 x i8] c"\09\01\FF\C0", [4 x i8] c"\A8\FF\07\04"], [2 x [4 x i8]] [[4 x i8] c"\A8#\FF%", [4 x i8] c"\09\04\04\09"], [2 x [4 x i8]] [[4 x i8] c"\D4\F8\09\00", [4 x i8] c"\07%}\00"], [2 x [4 x i8]] [[4 x i8] c"n\C0\DC\00", [4 x i8] c"\F8%\01\00"], [2 x [4 x i8]] [[4 x i8] c"#\F8#\09", [4 x i8] c"\DC\04\A8%"], [2 x [4 x i8]] [[4 x i8] c"\00#\00\04", [4 x i8] c"\00\FF\00\C0"]], align 16
@.str.24 = private unnamed_addr constant [15 x i8] c"g_386[i][j][k]\00", align 1
@g_406 = internal global i8 -4, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_406\00", align 1
@g_533 = internal global i64 5, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_533\00", align 1
@g_556 = internal global [1 x i64] [i64 2], align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"g_556[i]\00", align 1
@g_557 = internal global i32 5, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_557\00", align 1
@g_618 = internal global i32 601833628, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_618\00", align 1
@g_638 = internal global i32 1, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_638\00", align 1
@g_704 = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_704\00", align 1
@g_743 = internal global i16 0, align 2
@.str.32 = private unnamed_addr constant [6 x i8] c"g_743\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_772\00", align 1
@g_804 = internal global [8 x i64] [i64 -7102860289691564603, i64 -7102860289691564603, i64 -7102860289691564603, i64 -7102860289691564603, i64 -7102860289691564603, i64 -7102860289691564603, i64 -7102860289691564603, i64 -7102860289691564603], align 16
@.str.34 = private unnamed_addr constant [9 x i8] c"g_804[i]\00", align 1
@g_881 = internal global i32 -1, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_881\00", align 1
@g_897 = internal global i8 -88, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_897\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"g_914\00", align 1
@g_970 = internal global i16 -32142, align 2
@.str.38 = private unnamed_addr constant [6 x i8] c"g_970\00", align 1
@g_991 = internal global i32 1084266748, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_991\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1319\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1321\00", align 1
@g_1322 = internal global i32 -1, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1322\00", align 1
@g_1343 = internal global i16 -1, align 2
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1343\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [7 x i64] [i64 1, i64 1, i64 -6, i64 1, i64 1, i64 -6, i64 1], align 16
@g_1321 = internal constant i16 -10, align 2
@func_1.l_1340 = private unnamed_addr constant [3 x [7 x [7 x i32]]] [[7 x [7 x i32]] [[7 x i32] [i32 137052986, i32 1, i32 0, i32 137052986, i32 0, i32 0, i32 137052986], [7 x i32] [i32 0, i32 3, i32 0, i32 0, i32 3, i32 1, i32 1], [7 x i32] [i32 3, i32 137052986, i32 -1, i32 137052986, i32 3, i32 -1, i32 6], [7 x i32] [i32 6, i32 1, i32 0, i32 6, i32 0, i32 1, i32 6], [7 x i32] [i32 0, i32 6, i32 1, i32 0, i32 6, i32 0, i32 1], [7 x i32] [i32 6, i32 6, i32 -1, i32 3, i32 137052986, i32 -1, i32 137052986], [7 x i32] [i32 3, i32 1, i32 1, i32 3, i32 0, i32 0, i32 3]], [7 x [7 x i32]] [[7 x i32] [i32 0, i32 137052986, i32 0, i32 0, i32 137052986, i32 0, i32 1], [7 x i32] [i32 137052986, i32 3, i32 -1, i32 6, i32 6, i32 -1, i32 3], [7 x i32] [i32 137052986, i32 1, i32 0, i32 137052986, i32 0, i32 0, i32 137052986], [7 x i32] [i32 0, i32 3, i32 0, i32 0, i32 3, i32 1, i32 1], [7 x i32] [i32 3, i32 137052986, i32 -1, i32 137052986, i32 3, i32 -1, i32 6], [7 x i32] [i32 6, i32 1, i32 0, i32 6, i32 0, i32 1, i32 6], [7 x i32] [i32 0, i32 6, i32 1, i32 0, i32 6, i32 0, i32 1]], [7 x [7 x i32]] [[7 x i32] [i32 6, i32 6, i32 -1, i32 3, i32 137052986, i32 -1, i32 137052986], [7 x i32] [i32 1, i32 -1, i32 -1, i32 1, i32 -396652691, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 -396652691, i32 -396652691, i32 0, i32 1, i32 -1], [7 x i32] [i32 0, i32 1, i32 6, i32 0, i32 0, i32 6, i32 1], [7 x i32] [i32 0, i32 -1, i32 1, i32 0, i32 -396652691, i32 -396652691, i32 0], [7 x i32] [i32 1, i32 1, i32 1, i32 -396652691, i32 1, i32 -1, i32 -1], [7 x i32] [i32 1, i32 0, i32 6, i32 0, i32 1, i32 6, i32 0]]], align 16
@g_45 = internal global [7 x [2 x [9 x i16*]]] [[2 x [9 x i16*]] [[9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* null, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46], [9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46]], [2 x [9 x i16*]] [[9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* null, i16* null, i16* @g_46, i16* @g_46, i16* null], [9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46]], [2 x [9 x i16*]] [[9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46], [9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* null]], [2 x [9 x i16*]] [[9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46], [9 x i16*] [i16* @g_46, i16* null, i16* @g_46, i16* @g_46, i16* @g_46, i16* null, i16* @g_46, i16* @g_46, i16* @g_46]], [2 x [9 x i16*]] [[9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* null, i16* @g_46], [9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* null, i16* null, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46]], [2 x [9 x i16*]] [[9 x i16*] [i16* null, i16* @g_46, i16* @g_46, i16* null, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46], [9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* null, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46]], [2 x [9 x i16*]] [[9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* null, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46], [9 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46]]], align 16
@func_1.l_1345 = private unnamed_addr constant [4 x i8] c"\09\09\09\09", align 1
@func_1.l_21 = private unnamed_addr constant [6 x i32*] [i32* @g_22, i32* @g_22, i32* @g_22, i32* @g_22, i32* @g_22, i32* @g_22], align 16
@func_1.l_1289 = private unnamed_addr constant [2 x [5 x i8]] [[5 x i8] c"&&&&&", [5 x i8] c"\E7\E7\E7\E7\E7"], align 1
@func_1.l_1276 = private unnamed_addr constant [4 x i32] [i32 -1320311065, i32 -1320311065, i32 -1320311065, i32 -1320311065], align 16
@g_14 = internal global i32* @g_15, align 8
@g_679 = internal global i64** @g_680, align 8
@g_680 = internal global i64* @g_533, align 8
@.str.44 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call i64 @func_1()
  %91 = load volatile i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_4, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i32, i32* @g_6, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* @g_7, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i32, i32* @g_8, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* @g_15, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* @g_22, align 4, !tbaa !1
  %113 = zext i32 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %114)
  %115 = load i16, i16* @g_42, align 2, !tbaa !10
  %116 = zext i16 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %117)
  %118 = load i16, i16* @g_46, align 2, !tbaa !10
  %119 = zext i16 %118 to i64
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %120)
  %121 = load i8, i8* @g_87, align 1, !tbaa !9
  %122 = sext i8 %121 to i64
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %123)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %124

; <label>:124                                     ; preds = %163, %89
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = icmp slt i32 %125, 3
  br i1 %126, label %127, label %166

; <label>:127                                     ; preds = %124
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %128

; <label>:128                                     ; preds = %159, %127
  %129 = load i32, i32* %j, align 4, !tbaa !1
  %130 = icmp slt i32 %129, 6
  br i1 %130, label %131, label %162

; <label>:131                                     ; preds = %128
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %132

; <label>:132                                     ; preds = %155, %131
  %133 = load i32, i32* %k, align 4, !tbaa !1
  %134 = icmp slt i32 %133, 9
  br i1 %134, label %135, label %158

; <label>:135                                     ; preds = %132
  %136 = load i32, i32* %k, align 4, !tbaa !1
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %j, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [3 x [6 x [9 x i64]]], [3 x [6 x [9 x i64]]]* @g_89, i32 0, i64 %141
  %143 = getelementptr inbounds [6 x [9 x i64]], [6 x [9 x i64]]* %142, i32 0, i64 %139
  %144 = getelementptr inbounds [9 x i64], [9 x i64]* %143, i32 0, i64 %137
  %145 = load i64, i64* %144, align 8, !tbaa !7
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %146)
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

; <label>:149                                     ; preds = %135
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = load i32, i32* %j, align 4, !tbaa !1
  %152 = load i32, i32* %k, align 4, !tbaa !1
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 %150, i32 %151, i32 %152)
  br label %154

; <label>:154                                     ; preds = %149, %135
  br label %155

; <label>:155                                     ; preds = %154
  %156 = load i32, i32* %k, align 4, !tbaa !1
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %k, align 4, !tbaa !1
  br label %132

; <label>:158                                     ; preds = %132
  br label %159

; <label>:159                                     ; preds = %158
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %j, align 4, !tbaa !1
  br label %128

; <label>:162                                     ; preds = %128
  br label %163

; <label>:163                                     ; preds = %162
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %i, align 4, !tbaa !1
  br label %124

; <label>:166                                     ; preds = %124
  %167 = load i16, i16* @g_134, align 2, !tbaa !10
  %168 = sext i16 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %169)
  %170 = load i8, i8* @g_162, align 1, !tbaa !9
  %171 = sext i8 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %172)
  %173 = load i8, i8* @g_169, align 1, !tbaa !9
  %174 = zext i8 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %175)
  %176 = load volatile i8, i8* @g_173, align 1, !tbaa !9
  %177 = sext i8 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %178)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %179

; <label>:179                                     ; preds = %195, %166
  %180 = load i32, i32* %i, align 4, !tbaa !1
  %181 = icmp slt i32 %180, 8
  br i1 %181, label %182, label %198

; <label>:182                                     ; preds = %179
  %183 = load i32, i32* %i, align 4, !tbaa !1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* @g_219, i32 0, i64 %184
  %186 = load volatile i32, i32* %185, align 4, !tbaa !1
  %187 = zext i32 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %188)
  %189 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

; <label>:191                                     ; preds = %182
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %192)
  br label %194

; <label>:194                                     ; preds = %191, %182
  br label %195

; <label>:195                                     ; preds = %194
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %i, align 4, !tbaa !1
  br label %179

; <label>:198                                     ; preds = %179
  %199 = load i32, i32* @g_243, align 4, !tbaa !1
  %200 = zext i32 %199 to i64
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %201)
  %202 = load i16, i16* @g_284, align 2, !tbaa !10
  %203 = zext i16 %202 to i64
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %204)
  %205 = load i16, i16* @g_291, align 2, !tbaa !10
  %206 = sext i16 %205 to i64
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %207)
  %208 = load i64, i64* @g_313, align 8, !tbaa !7
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %209)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:210                                     ; preds = %250, %198
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = icmp slt i32 %211, 8
  br i1 %212, label %213, label %253

; <label>:213                                     ; preds = %210
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %214

; <label>:214                                     ; preds = %246, %213
  %215 = load i32, i32* %j, align 4, !tbaa !1
  %216 = icmp slt i32 %215, 2
  br i1 %216, label %217, label %249

; <label>:217                                     ; preds = %214
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %218

; <label>:218                                     ; preds = %242, %217
  %219 = load i32, i32* %k, align 4, !tbaa !1
  %220 = icmp slt i32 %219, 4
  br i1 %220, label %221, label %245

; <label>:221                                     ; preds = %218
  %222 = load i32, i32* %k, align 4, !tbaa !1
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* %j, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = load i32, i32* %i, align 4, !tbaa !1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [8 x [2 x [4 x i8]]], [8 x [2 x [4 x i8]]]* @g_386, i32 0, i64 %227
  %229 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %228, i32 0, i64 %225
  %230 = getelementptr inbounds [4 x i8], [4 x i8]* %229, i32 0, i64 %223
  %231 = load i8, i8* %230, align 1, !tbaa !9
  %232 = sext i8 %231 to i64
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 %233)
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

; <label>:236                                     ; preds = %221
  %237 = load i32, i32* %i, align 4, !tbaa !1
  %238 = load i32, i32* %j, align 4, !tbaa !1
  %239 = load i32, i32* %k, align 4, !tbaa !1
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 %237, i32 %238, i32 %239)
  br label %241

; <label>:241                                     ; preds = %236, %221
  br label %242

; <label>:242                                     ; preds = %241
  %243 = load i32, i32* %k, align 4, !tbaa !1
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %k, align 4, !tbaa !1
  br label %218

; <label>:245                                     ; preds = %218
  br label %246

; <label>:246                                     ; preds = %245
  %247 = load i32, i32* %j, align 4, !tbaa !1
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %j, align 4, !tbaa !1
  br label %214

; <label>:249                                     ; preds = %214
  br label %250

; <label>:250                                     ; preds = %249
  %251 = load i32, i32* %i, align 4, !tbaa !1
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:253                                     ; preds = %210
  %254 = load volatile i8, i8* @g_406, align 1, !tbaa !9
  %255 = zext i8 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %256)
  %257 = load i64, i64* @g_533, align 8, !tbaa !7
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %258)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %259

; <label>:259                                     ; preds = %274, %253
  %260 = load i32, i32* %i, align 4, !tbaa !1
  %261 = icmp slt i32 %260, 1
  br i1 %261, label %262, label %277

; <label>:262                                     ; preds = %259
  %263 = load i32, i32* %i, align 4, !tbaa !1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [1 x i64], [1 x i64]* @g_556, i32 0, i64 %264
  %266 = load i64, i64* %265, align 8, !tbaa !7
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %267)
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

; <label>:270                                     ; preds = %262
  %271 = load i32, i32* %i, align 4, !tbaa !1
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %271)
  br label %273

; <label>:273                                     ; preds = %270, %262
  br label %274

; <label>:274                                     ; preds = %273
  %275 = load i32, i32* %i, align 4, !tbaa !1
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %i, align 4, !tbaa !1
  br label %259

; <label>:277                                     ; preds = %259
  %278 = load i32, i32* @g_557, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %280)
  %281 = load i32, i32* @g_618, align 4, !tbaa !1
  %282 = zext i32 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %283)
  %284 = load i32, i32* @g_638, align 4, !tbaa !1
  %285 = sext i32 %284 to i64
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %286)
  %287 = load volatile i32, i32* @g_704, align 4, !tbaa !1
  %288 = zext i32 %287 to i64
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %289)
  %290 = load i16, i16* @g_743, align 2, !tbaa !10
  %291 = zext i16 %290 to i64
  %292 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %292)
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %293)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:294                                     ; preds = %309, %277
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %296 = icmp slt i32 %295, 8
  br i1 %296, label %297, label %312

; <label>:297                                     ; preds = %294
  %298 = load i32, i32* %i, align 4, !tbaa !1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [8 x i64], [8 x i64]* @g_804, i32 0, i64 %299
  %301 = load volatile i64, i64* %300, align 8, !tbaa !7
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %302)
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

; <label>:305                                     ; preds = %297
  %306 = load i32, i32* %i, align 4, !tbaa !1
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %306)
  br label %308

; <label>:308                                     ; preds = %305, %297
  br label %309

; <label>:309                                     ; preds = %308
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:312                                     ; preds = %294
  %313 = load i32, i32* @g_881, align 4, !tbaa !1
  %314 = zext i32 %313 to i64
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %315)
  %316 = load i8, i8* @g_897, align 1, !tbaa !9
  %317 = zext i8 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %318)
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1425869469, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %319)
  %320 = load volatile i16, i16* @g_970, align 2, !tbaa !10
  %321 = sext i16 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %322)
  %323 = load i32, i32* @g_991, align 4, !tbaa !1
  %324 = sext i32 %323 to i64
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %325)
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %326)
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 65526, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %327)
  %328 = load volatile i32, i32* @g_1322, align 4, !tbaa !1
  %329 = zext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %330)
  %331 = load volatile i16, i16* @g_1343, align 2, !tbaa !10
  %332 = sext i16 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %333)
  %334 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %335 = zext i32 %334 to i64
  %336 = xor i64 %335, 4294967295
  %337 = trunc i64 %336 to i32
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %337, i32 %338)
  %339 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #1
  %340 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #1
  %341 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
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
define internal i64 @func_1() #0 {
  %l_2 = alloca [7 x i64], align 16
  %l_31 = alloca i32**, align 8
  %l_1288 = alloca i16**, align 8
  %l_1295 = alloca i64***, align 8
  %l_1320 = alloca i16*, align 8
  %l_1329 = alloca [8 x i32], align 16
  %l_1340 = alloca [3 x [7 x [7 x i32]]], align 16
  %l_1344 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_64 = alloca [1 x i32], align 4
  %l_1324 = alloca i32, align 4
  %l_1328 = alloca i16**, align 8
  %l_1327 = alloca [1 x [3 x [9 x i16***]]], align 16
  %l_1334 = alloca i32*, align 8
  %l_1335 = alloca i32*, align 8
  %l_1336 = alloca i32*, align 8
  %l_1337 = alloca i32, align 4
  %l_1338 = alloca i32*, align 8
  %l_1339 = alloca [4 x i32*], align 16
  %l_1341 = alloca i32, align 4
  %l_1342 = alloca i32, align 4
  %l_1345 = alloca [4 x i8], align 1
  %l_1346 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_21 = alloca [6 x i32*], align 16
  %l_34 = alloca i64, align 8
  %l_63 = alloca i32, align 4
  %l_1277 = alloca i32, align 4
  %l_1280 = alloca i8, align 1
  %l_1289 = alloca [2 x [5 x i8]], align 1
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %l_11 = alloca i32, align 4
  %l_1274 = alloca i16*, align 8
  %l_1276 = alloca [4 x i32], align 16
  %l_1294 = alloca i32, align 4
  %l_1326 = alloca i16**, align 8
  %l_1325 = alloca i16***, align 8
  %i6 = alloca i32, align 4
  %l_12 = alloca i32*, align 8
  %i7 = alloca i32, align 4
  %1 = bitcast [7 x i64]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #1
  %2 = bitcast [7 x i64]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([7 x i64]* @func_1.l_2 to i8*), i64 56, i32 16, i1 false)
  %3 = bitcast i32*** %l_31 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32** null, i32*** %l_31, align 8, !tbaa !5
  %4 = bitcast i16*** %l_1288 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16** null, i16*** %l_1288, align 8, !tbaa !5
  %5 = bitcast i64**** %l_1295 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64*** null, i64**** %l_1295, align 8, !tbaa !5
  %6 = bitcast i16** %l_1320 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* @g_1321, i16** %l_1320, align 8, !tbaa !5
  %7 = bitcast [8 x i32]* %l_1329 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast [3 x [7 x [7 x i32]]]* %l_1340 to i8*
  call void @llvm.lifetime.start(i64 588, i8* %8) #1
  %9 = bitcast [3 x [7 x [7 x i32]]]* %l_1340 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([3 x [7 x [7 x i32]]]* @func_1.l_1340 to i8*), i64 588, i32 16, i1 false)
  %10 = bitcast i64* %l_1344 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 4123601972824047715, i64* %l_1344, align 8, !tbaa !7
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %14

; <label>:14                                      ; preds = %21, %0
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %24

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1329, i32 0, i64 %19
  store i32 -488254165, i32* %20, align 4, !tbaa !1
  br label %21

; <label>:21                                      ; preds = %17
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4, !tbaa !1
  br label %14

; <label>:24                                      ; preds = %14
  store i32 6, i32* @g_4, align 4, !tbaa !1
  br label %25

; <label>:25                                      ; preds = %204, %24
  %26 = load i32, i32* @g_4, align 4, !tbaa !1
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %207

; <label>:28                                      ; preds = %25
  %29 = bitcast [1 x i32]* %l_64 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %l_1324 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 1, i32* %l_1324, align 4, !tbaa !1
  %31 = bitcast i16*** %l_1328 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i16** getelementptr inbounds ([7 x [2 x [9 x i16*]]], [7 x [2 x [9 x i16*]]]* @g_45, i32 0, i64 5, i64 1, i64 1), i16*** %l_1328, align 8, !tbaa !5
  %32 = bitcast [1 x [3 x [9 x i16***]]]* %l_1327 to i8*
  call void @llvm.lifetime.start(i64 216, i8* %32) #1
  %33 = getelementptr inbounds [1 x [3 x [9 x i16***]]], [1 x [3 x [9 x i16***]]]* %l_1327, i64 0, i64 0
  %34 = getelementptr inbounds [3 x [9 x i16***]], [3 x [9 x i16***]]* %33, i64 0, i64 0
  %35 = getelementptr inbounds [9 x i16***], [9 x i16***]* %34, i64 0, i64 0
  store i16*** %l_1328, i16**** %35, !tbaa !5
  %36 = getelementptr inbounds i16***, i16**** %35, i64 1
  store i16*** %l_1328, i16**** %36, !tbaa !5
  %37 = getelementptr inbounds i16***, i16**** %36, i64 1
  store i16*** %l_1328, i16**** %37, !tbaa !5
  %38 = getelementptr inbounds i16***, i16**** %37, i64 1
  store i16*** %l_1328, i16**** %38, !tbaa !5
  %39 = getelementptr inbounds i16***, i16**** %38, i64 1
  store i16*** %l_1328, i16**** %39, !tbaa !5
  %40 = getelementptr inbounds i16***, i16**** %39, i64 1
  store i16*** %l_1328, i16**** %40, !tbaa !5
  %41 = getelementptr inbounds i16***, i16**** %40, i64 1
  store i16*** %l_1328, i16**** %41, !tbaa !5
  %42 = getelementptr inbounds i16***, i16**** %41, i64 1
  store i16*** %l_1328, i16**** %42, !tbaa !5
  %43 = getelementptr inbounds i16***, i16**** %42, i64 1
  store i16*** %l_1328, i16**** %43, !tbaa !5
  %44 = getelementptr inbounds [9 x i16***], [9 x i16***]* %34, i64 1
  %45 = getelementptr inbounds [9 x i16***], [9 x i16***]* %44, i64 0, i64 0
  store i16*** %l_1328, i16**** %45, !tbaa !5
  %46 = getelementptr inbounds i16***, i16**** %45, i64 1
  store i16*** %l_1328, i16**** %46, !tbaa !5
  %47 = getelementptr inbounds i16***, i16**** %46, i64 1
  store i16*** %l_1328, i16**** %47, !tbaa !5
  %48 = getelementptr inbounds i16***, i16**** %47, i64 1
  store i16*** %l_1328, i16**** %48, !tbaa !5
  %49 = getelementptr inbounds i16***, i16**** %48, i64 1
  store i16*** %l_1328, i16**** %49, !tbaa !5
  %50 = getelementptr inbounds i16***, i16**** %49, i64 1
  store i16*** %l_1328, i16**** %50, !tbaa !5
  %51 = getelementptr inbounds i16***, i16**** %50, i64 1
  store i16*** %l_1328, i16**** %51, !tbaa !5
  %52 = getelementptr inbounds i16***, i16**** %51, i64 1
  store i16*** %l_1328, i16**** %52, !tbaa !5
  %53 = getelementptr inbounds i16***, i16**** %52, i64 1
  store i16*** %l_1328, i16**** %53, !tbaa !5
  %54 = getelementptr inbounds [9 x i16***], [9 x i16***]* %44, i64 1
  %55 = getelementptr inbounds [9 x i16***], [9 x i16***]* %54, i64 0, i64 0
  store i16*** %l_1328, i16**** %55, !tbaa !5
  %56 = getelementptr inbounds i16***, i16**** %55, i64 1
  store i16*** %l_1328, i16**** %56, !tbaa !5
  %57 = getelementptr inbounds i16***, i16**** %56, i64 1
  store i16*** %l_1328, i16**** %57, !tbaa !5
  %58 = getelementptr inbounds i16***, i16**** %57, i64 1
  store i16*** %l_1328, i16**** %58, !tbaa !5
  %59 = getelementptr inbounds i16***, i16**** %58, i64 1
  store i16*** %l_1328, i16**** %59, !tbaa !5
  %60 = getelementptr inbounds i16***, i16**** %59, i64 1
  store i16*** %l_1328, i16**** %60, !tbaa !5
  %61 = getelementptr inbounds i16***, i16**** %60, i64 1
  store i16*** %l_1328, i16**** %61, !tbaa !5
  %62 = getelementptr inbounds i16***, i16**** %61, i64 1
  store i16*** %l_1328, i16**** %62, !tbaa !5
  %63 = getelementptr inbounds i16***, i16**** %62, i64 1
  store i16*** %l_1328, i16**** %63, !tbaa !5
  %64 = bitcast i32** %l_1334 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  store i32* @g_7, i32** %l_1334, align 8, !tbaa !5
  %65 = bitcast i32** %l_1335 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  store i32* null, i32** %l_1335, align 8, !tbaa !5
  %66 = bitcast i32** %l_1336 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  store i32* @g_8, i32** %l_1336, align 8, !tbaa !5
  %67 = bitcast i32* %l_1337 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  store i32 8, i32* %l_1337, align 4, !tbaa !1
  %68 = bitcast i32** %l_1338 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  store i32* @g_557, i32** %l_1338, align 8, !tbaa !5
  %69 = bitcast [4 x i32*]* %l_1339 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %69) #1
  %70 = bitcast i32* %l_1341 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  store i32 0, i32* %l_1341, align 4, !tbaa !1
  %71 = bitcast i32* %l_1342 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 -1275905190, i32* %l_1342, align 4, !tbaa !1
  %72 = bitcast [4 x i8]* %l_1345 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = bitcast [4 x i8]* %l_1345 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @func_1.l_1345, i32 0, i32 0), i64 4, i32 1, i1 false)
  %74 = bitcast i32* %l_1346 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  store i32 612756933, i32* %l_1346, align 4, !tbaa !1
  %75 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %78

; <label>:78                                      ; preds = %85, %28
  %79 = load i32, i32* %i1, align 4, !tbaa !1
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %88

; <label>:81                                      ; preds = %78
  %82 = load i32, i32* %i1, align 4, !tbaa !1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1 x i32], [1 x i32]* %l_64, i32 0, i64 %83
  store i32 1, i32* %84, align 4, !tbaa !1
  br label %85

; <label>:85                                      ; preds = %81
  %86 = load i32, i32* %i1, align 4, !tbaa !1
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %i1, align 4, !tbaa !1
  br label %78

; <label>:88                                      ; preds = %78
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %96, %88
  %90 = load i32, i32* %i1, align 4, !tbaa !1
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %92, label %99

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* %i1, align 4, !tbaa !1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_1339, i32 0, i64 %94
  store i32* %l_1337, i32** %95, align 8, !tbaa !5
  br label %96

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* %i1, align 4, !tbaa !1
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %i1, align 4, !tbaa !1
  br label %89

; <label>:99                                      ; preds = %89
  store i32 6, i32* @g_6, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %181, %99
  %101 = load i32, i32* @g_6, align 4, !tbaa !1
  %102 = icmp sge i32 %101, 2
  br i1 %102, label %103, label %184

; <label>:103                                     ; preds = %100
  %104 = bitcast [6 x i32*]* %l_21 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %104) #1
  %105 = bitcast [6 x i32*]* %l_21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* bitcast ([6 x i32*]* @func_1.l_21 to i8*), i64 48, i32 16, i1 false)
  %106 = bitcast i64* %l_34 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  store i64 1, i64* %l_34, align 8, !tbaa !7
  %107 = bitcast i32* %l_63 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  store i32 -1687903116, i32* %l_63, align 4, !tbaa !1
  %108 = bitcast i32* %l_1277 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  store i32 1517116032, i32* %l_1277, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1280) #1
  store i8 -1, i8* %l_1280, align 1, !tbaa !9
  %109 = bitcast [2 x [5 x i8]]* %l_1289 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %109) #1
  %110 = bitcast [2 x [5 x i8]]* %l_1289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* getelementptr inbounds ([2 x [5 x i8]], [2 x [5 x i8]]* @func_1.l_1289, i32 0, i32 0, i32 0), i64 10, i32 1, i1 false)
  %111 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  store i32 0, i32* @g_7, align 4, !tbaa !1
  br label %113

; <label>:113                                     ; preds = %170, %103
  %114 = load i32, i32* @g_7, align 4, !tbaa !1
  %115 = icmp sle i32 %114, 6
  br i1 %115, label %116, label %173

; <label>:116                                     ; preds = %113
  %117 = bitcast i32* %l_11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  store i32 -9, i32* %l_11, align 4, !tbaa !1
  %118 = bitcast i16** %l_1274 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #1
  store i16* @g_284, i16** %l_1274, align 8, !tbaa !5
  %119 = bitcast [4 x i32]* %l_1276 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %119) #1
  %120 = bitcast [4 x i32]* %l_1276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* bitcast ([4 x i32]* @func_1.l_1276 to i8*), i64 16, i32 16, i1 false)
  %121 = bitcast i32* %l_1294 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  store i32 -1025432828, i32* %l_1294, align 4, !tbaa !1
  %122 = bitcast i16*** %l_1326 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %122) #1
  store i16** getelementptr inbounds ([7 x [2 x [9 x i16*]]], [7 x [2 x [9 x i16*]]]* @g_45, i32 0, i64 0, i64 0, i64 8), i16*** %l_1326, align 8, !tbaa !5
  %123 = bitcast i16**** %l_1325 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  store i16*** %l_1326, i16**** %l_1325, align 8, !tbaa !5
  %124 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  store i32 2, i32* @g_8, align 4, !tbaa !1
  br label %125

; <label>:125                                     ; preds = %159, %116
  %126 = load i32, i32* @g_8, align 4, !tbaa !1
  %127 = icmp sle i32 %126, 6
  br i1 %127, label %128, label %162

; <label>:128                                     ; preds = %125
  %129 = bitcast i32** %l_12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  store i32* %l_11, i32** %l_12, align 8, !tbaa !5
  %130 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  %131 = load i32, i32* @g_6, align 4, !tbaa !1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [7 x i64], [7 x i64]* %l_2, i32 0, i64 %132
  %134 = load i64, i64* %133, align 8, !tbaa !7
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

; <label>:136                                     ; preds = %128
  %137 = load i32, i32* @g_4, align 4, !tbaa !1
  %138 = load i32, i32* %l_11, align 4, !tbaa !1
  %139 = load i32*, i32** %l_12, align 8, !tbaa !5
  store i32 %138, i32* %139, align 4, !tbaa !1
  %140 = xor i32 %137, %138
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

; <label>:142                                     ; preds = %136, %128
  %143 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %144 = load i32, i32* @g_8, align 4, !tbaa !1
  %145 = sext i32 %144 to i64
  %146 = icmp sgt i64 42, %145
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* @g_8, align 4, !tbaa !1
  %149 = icmp ne i32 %148, 0
  br label %150

; <label>:150                                     ; preds = %142, %136
  %151 = phi i1 [ true, %136 ], [ %149, %142 ]
  %152 = zext i1 %151 to i32
  %153 = trunc i32 %152 to i16
  %154 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %153, i32 14)
  %155 = sext i16 %154 to i32
  %156 = load volatile i32*, i32** @g_14, align 8, !tbaa !5
  store i32 %155, i32* %156, align 4, !tbaa !1
  %157 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32** %l_12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  br label %159

; <label>:159                                     ; preds = %150
  %160 = load i32, i32* @g_8, align 4, !tbaa !1
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* @g_8, align 4, !tbaa !1
  br label %125

; <label>:162                                     ; preds = %125
  %163 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i16**** %l_1325 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast i16*** %l_1326 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i32* %l_1294 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast [4 x i32]* %l_1276 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %167) #1
  %168 = bitcast i16** %l_1274 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i32* %l_11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  br label %170

; <label>:170                                     ; preds = %162
  %171 = load i32, i32* @g_7, align 4, !tbaa !1
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @g_7, align 4, !tbaa !1
  br label %113

; <label>:173                                     ; preds = %113
  %174 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast [2 x [5 x i8]]* %l_1289 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %176) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1280) #1
  %177 = bitcast i32* %l_1277 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %l_63 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i64* %l_34 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast [6 x i32*]* %l_21 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %180) #1
  br label %181

; <label>:181                                     ; preds = %173
  %182 = load i32, i32* @g_6, align 4, !tbaa !1
  %183 = sub nsw i32 %182, 1
  store i32 %183, i32* @g_6, align 4, !tbaa !1
  br label %100

; <label>:184                                     ; preds = %100
  %185 = load i32, i32* %l_1346, align 4, !tbaa !1
  %186 = add i32 %185, -1
  store i32 %186, i32* %l_1346, align 4, !tbaa !1
  %187 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %l_1346 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast [4 x i8]* %l_1345 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %l_1342 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %l_1341 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast [4 x i32*]* %l_1339 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %194) #1
  %195 = bitcast i32** %l_1338 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i32* %l_1337 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32** %l_1336 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast i32** %l_1335 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast i32** %l_1334 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast [1 x [3 x [9 x i16***]]]* %l_1327 to i8*
  call void @llvm.lifetime.end(i64 216, i8* %200) #1
  %201 = bitcast i16*** %l_1328 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i32* %l_1324 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast [1 x i32]* %l_64 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  br label %204

; <label>:204                                     ; preds = %184
  %205 = load i32, i32* @g_4, align 4, !tbaa !1
  %206 = sub nsw i32 %205, 1
  store i32 %206, i32* @g_4, align 4, !tbaa !1
  br label %25

; <label>:207                                     ; preds = %25
  %208 = load i64**, i64*** @g_679, align 8, !tbaa !5
  %209 = load i64*, i64** %208, align 8, !tbaa !5
  %210 = load i64, i64* %209, align 8, !tbaa !7
  %211 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i64* %l_1344 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast [3 x [7 x [7 x i32]]]* %l_1340 to i8*
  call void @llvm.lifetime.end(i64 588, i8* %215) #1
  %216 = bitcast [8 x i32]* %l_1329 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %216) #1
  %217 = bitcast i16** %l_1320 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i64**** %l_1295 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i16*** %l_1288 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i32*** %l_31 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast [7 x i64]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %221) #1
  ret i64 %210
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9, %6, %0
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i16, i16* %1, align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i16
  ret i16 %22
}

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
