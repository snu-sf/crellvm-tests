; ModuleID = '00050.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i8 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -6, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 1301175500, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global i32 905155746, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_47 = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_47\00", align 1
@g_50 = internal global i32 485925156, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_50\00", align 1
@g_58 = internal global i16 -1, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_58\00", align 1
@g_78 = internal constant %union.U0 { i8 -1 }, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_78.f0\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"g_78.f1\00", align 1
@g_99 = internal global [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"g_99[i]\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_102 = internal global i32 -1346876287, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_102\00", align 1
@g_106 = internal global i16 -1360, align 2
@.str.12 = private unnamed_addr constant [6 x i8] c"g_106\00", align 1
@g_119 = internal global [9 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"g_119[i]\00", align 1
@g_138 = internal global [6 x i32] [i32 331473819, i32 331473819, i32 331473819, i32 331473819, i32 331473819, i32 331473819], align 16
@.str.14 = private unnamed_addr constant [9 x i8] c"g_138[i]\00", align 1
@g_139 = internal global i8 -3, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_139\00", align 1
@g_149 = internal global i64 -8510608010489528185, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_149\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_188\00", align 1
@g_191 = internal global i32 -1746934605, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_191\00", align 1
@g_203 = internal global %union.U0 { i8 -117 }, align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_203.f0\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_203.f1\00", align 1
@g_206 = internal global %union.U0 { i8 37 }, align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_206.f0\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"g_206.f1\00", align 1
@g_214 = internal global [1 x [6 x i64]] [[6 x i64] [i64 -7494057077476081583, i64 -7494057077476081583, i64 -7494057077476081583, i64 -7494057077476081583, i64 -7494057077476081583, i64 -7494057077476081583]], align 16
@.str.23 = private unnamed_addr constant [12 x i8] c"g_214[i][j]\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_246 = internal global [6 x i32] [i32 156941549, i32 156941549, i32 -515482713, i32 156941549, i32 156941549, i32 -515482713], align 16
@.str.25 = private unnamed_addr constant [9 x i8] c"g_246[i]\00", align 1
@g_247 = internal global i8 -35, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_247\00", align 1
@g_271 = internal global i16 1, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_271\00", align 1
@g_310 = internal global i16 4, align 2
@.str.28 = private unnamed_addr constant [6 x i8] c"g_310\00", align 1
@g_341 = internal global i8 -1, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_341\00", align 1
@g_342 = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_342\00", align 1
@g_372 = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_372\00", align 1
@g_373 = internal global i8 2, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_373\00", align 1
@g_374 = internal global i64 -7175034385412018024, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"g_374\00", align 1
@g_378 = internal global i8 -78, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_378\00", align 1
@g_379 = internal global [1 x i64] [i64 1], align 8
@.str.35 = private unnamed_addr constant [9 x i8] c"g_379[i]\00", align 1
@g_383 = internal global i64 -7856145398484891831, align 8
@.str.36 = private unnamed_addr constant [6 x i8] c"g_383\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"g_421\00", align 1
@g_429 = internal global i64 -8642876209260115048, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"g_429\00", align 1
@g_470 = internal global i32 -2111955777, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_470\00", align 1
@g_506 = internal global i8 65, align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"g_506\00", align 1
@g_523 = internal global i32 482794180, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"g_523\00", align 1
@g_534 = internal global %union.U0 { i8 -23 }, align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"g_534.f0\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_534.f1\00", align 1
@g_564 = internal global [2 x i8] c"\02\02", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_564[i]\00", align 1
@g_567 = internal global i8 45, align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"g_567\00", align 1
@g_571 = internal global i16 0, align 2
@.str.46 = private unnamed_addr constant [6 x i8] c"g_571\00", align 1
@g_595 = internal constant [2 x i32] [i32 -261033703, i32 -261033703], align 4
@.str.47 = private unnamed_addr constant [9 x i8] c"g_595[i]\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"g_597\00", align 1
@g_800 = internal global i8 9, align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"g_800\00", align 1
@g_823 = internal global i16 -27647, align 2
@.str.50 = private unnamed_addr constant [6 x i8] c"g_823\00", align 1
@g_854 = internal global i8 -114, align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"g_854\00", align 1
@g_992 = internal global i32 -367874046, align 4
@.str.52 = private unnamed_addr constant [6 x i8] c"g_992\00", align 1
@g_1146 = internal global i8 54, align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1146\00", align 1
@g_1320 = internal global i16 18385, align 2
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1320\00", align 1
@g_1321 = internal global [3 x i8] zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"g_1321[i]\00", align 1
@g_1374 = internal global i8 1, align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1374\00", align 1
@g_1752 = internal global [5 x i8] c"\F7\F7\F7\F7\F7", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"g_1752[i]\00", align 1
@g_1771 = internal global i64 5, align 8
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1771\00", align 1
@g_1787 = internal global i64 4943741834239807746, align 8
@.str.59 = private unnamed_addr constant [7 x i8] c"g_1787\00", align 1
@g_1952 = internal global i8 3, align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"g_1952\00", align 1
@g_1979 = internal global i32 -5, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"g_1979\00", align 1
@g_2004 = internal global i64 0, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"g_2004\00", align 1
@g_2034 = internal global i32 -10, align 4
@.str.63 = private unnamed_addr constant [7 x i8] c"g_2034\00", align 1
@g_2065 = internal global [1 x [4 x [7 x %union.U0]]] [[4 x [7 x %union.U0]] [[7 x %union.U0] [%union.U0 { i8 87 }, %union.U0 zeroinitializer, %union.U0 { i8 87 }, %union.U0 zeroinitializer, %union.U0 { i8 87 }, %union.U0 zeroinitializer, %union.U0 { i8 87 }], [7 x %union.U0] [%union.U0 { i8 7 }, %union.U0 { i8 7 }, %union.U0 { i8 67 }, %union.U0 { i8 67 }, %union.U0 { i8 7 }, %union.U0 { i8 7 }, %union.U0 { i8 67 }], [7 x %union.U0] [%union.U0 { i8 116 }, %union.U0 zeroinitializer, %union.U0 { i8 116 }, %union.U0 zeroinitializer, %union.U0 { i8 116 }, %union.U0 zeroinitializer, %union.U0 { i8 116 }], [7 x %union.U0] [%union.U0 { i8 7 }, %union.U0 { i8 67 }, %union.U0 { i8 67 }, %union.U0 { i8 7 }, %union.U0 { i8 7 }, %union.U0 { i8 67 }, %union.U0 { i8 67 }]]], align 16
@.str.64 = private unnamed_addr constant [19 x i8] c"g_2065[i][j][k].f0\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"g_2065[i][j][k].f1\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"g_2235\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"g_2262\00", align 1
@g_2264 = internal constant [1 x [8 x i32]] [[8 x i32] [i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0]], align 16
@.str.69 = private unnamed_addr constant [13 x i8] c"g_2264[i][j]\00", align 1
@g_2529 = internal global %union.U0 { i8 -68 }, align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"g_2529.f0\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"g_2529.f1\00", align 1
@g_2648 = internal global i8 -87, align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"g_2648\00", align 1
@g_2748 = internal global i32 6, align 4
@.str.73 = private unnamed_addr constant [7 x i8] c"g_2748\00", align 1
@g_2955 = internal global i8 -1, align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"g_2955\00", align 1
@g_3167 = internal global i32 -1760518352, align 4
@.str.75 = private unnamed_addr constant [7 x i8] c"g_3167\00", align 1
@g_3169 = internal global i32 -23903089, align 4
@.str.76 = private unnamed_addr constant [7 x i8] c"g_3169\00", align 1
@g_3189 = internal global i32 -60065737, align 4
@.str.77 = private unnamed_addr constant [7 x i8] c"g_3189\00", align 1
@g_3229 = internal global i32 100157718, align 4
@.str.78 = private unnamed_addr constant [7 x i8] c"g_3229\00", align 1
@g_3349 = internal global [8 x [3 x [1 x i32]]] [[3 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 2], [1 x i32] [i32 -2052969059]], [3 x [1 x i32]] [[1 x i32] [i32 -2052969059], [1 x i32] [i32 2], [1 x i32] [i32 -1]], [3 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -837029980], [1 x i32] [i32 -1]], [3 x [1 x i32]] [[1 x i32] [i32 -837029980], [1 x i32] [i32 -1], [1 x i32] [i32 -1]], [3 x [1 x i32]] [[1 x i32] [i32 2], [1 x i32] [i32 -2052969059], [1 x i32] [i32 -2052969059]], [3 x [1 x i32]] [[1 x i32] [i32 2], [1 x i32] [i32 -1], [1 x i32] [i32 -1]], [3 x [1 x i32]] [[1 x i32] [i32 -837029980], [1 x i32] [i32 -1], [1 x i32] [i32 -837029980]], [3 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -1], [1 x i32] [i32 2]]], align 16
@.str.79 = private unnamed_addr constant [16 x i8] c"g_3349[i][j][k]\00", align 1
@g_3611 = internal global [9 x i8] c"\DE\DE\ED\DE\DE\ED\DE\DE\ED", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"g_3611[i]\00", align 1
@g_3691 = internal global i32 1, align 4
@.str.81 = private unnamed_addr constant [7 x i8] c"g_3691\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_7 = private unnamed_addr constant %union.U0 { i8 -2 }, align 1
@func_1.l_17 = private unnamed_addr constant %union.U0 { i8 -1 }, align 1
@func_1.l_3789 = private unnamed_addr constant [9 x i16*] [i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310], align 16
@g_1858 = internal global i16* @g_1320, align 8
@.str.82 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call zeroext i16 @func_1()
  %91 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load volatile i32, i32* @g_3, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_4, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i32, i32* @g_47, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* @g_50, align 4, !tbaa !1
  %104 = zext i32 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i16, i16* @g_58, align 2, !tbaa !10
  %107 = zext i16 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  %109 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_78, i32 0, i32 0), align 1, !tbaa !9
  %110 = zext i8 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %111)
  %112 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_78, i32 0, i32 0), align 1, !tbaa !9
  %113 = zext i8 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %114)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %131, %89
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %134

; <label>:118                                     ; preds = %115
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* @g_99, i32 0, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !1
  %123 = zext i32 %122 to i64
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %124)
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

; <label>:127                                     ; preds = %118
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %128)
  br label %130

; <label>:130                                     ; preds = %127, %118
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %i, align 4, !tbaa !1
  br label %115

; <label>:134                                     ; preds = %115
  %135 = load i32, i32* @g_102, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %137)
  %138 = load i16, i16* @g_106, align 2, !tbaa !10
  %139 = sext i16 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %140)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %141

; <label>:141                                     ; preds = %156, %134
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = icmp slt i32 %142, 9
  br i1 %143, label %144, label %159

; <label>:144                                     ; preds = %141
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [9 x i64], [9 x i64]* @g_119, i32 0, i64 %146
  %148 = load i64, i64* %147, align 8, !tbaa !7
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %149)
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

; <label>:152                                     ; preds = %144
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %153)
  br label %155

; <label>:155                                     ; preds = %152, %144
  br label %156

; <label>:156                                     ; preds = %155
  %157 = load i32, i32* %i, align 4, !tbaa !1
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %i, align 4, !tbaa !1
  br label %141

; <label>:159                                     ; preds = %141
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %160

; <label>:160                                     ; preds = %176, %159
  %161 = load i32, i32* %i, align 4, !tbaa !1
  %162 = icmp slt i32 %161, 6
  br i1 %162, label %163, label %179

; <label>:163                                     ; preds = %160
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [6 x i32], [6 x i32]* @g_138, i32 0, i64 %165
  %167 = load i32, i32* %166, align 4, !tbaa !1
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %169)
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

; <label>:172                                     ; preds = %163
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %173)
  br label %175

; <label>:175                                     ; preds = %172, %163
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %i, align 4, !tbaa !1
  br label %160

; <label>:179                                     ; preds = %160
  %180 = load i8, i8* @g_139, align 1, !tbaa !9
  %181 = zext i8 %180 to i64
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %182)
  %183 = load i64, i64* @g_149, align 8, !tbaa !7
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %184)
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -220236906, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %185)
  %186 = load i32, i32* @g_191, align 4, !tbaa !1
  %187 = zext i32 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %188)
  %189 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_203, i32 0, i32 0), align 1, !tbaa !9
  %190 = zext i8 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %191)
  %192 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_203, i32 0, i32 0), align 1, !tbaa !9
  %193 = zext i8 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %194)
  %195 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_206, i32 0, i32 0), align 1, !tbaa !9
  %196 = zext i8 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %197)
  %198 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_206, i32 0, i32 0), align 1, !tbaa !9
  %199 = zext i8 %198 to i64
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %200)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %201

; <label>:201                                     ; preds = %228, %179
  %202 = load i32, i32* %i, align 4, !tbaa !1
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %204, label %231

; <label>:204                                     ; preds = %201
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %205

; <label>:205                                     ; preds = %224, %204
  %206 = load i32, i32* %j, align 4, !tbaa !1
  %207 = icmp slt i32 %206, 6
  br i1 %207, label %208, label %227

; <label>:208                                     ; preds = %205
  %209 = load i32, i32* %j, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [1 x [6 x i64]], [1 x [6 x i64]]* @g_214, i32 0, i64 %212
  %214 = getelementptr inbounds [6 x i64], [6 x i64]* %213, i32 0, i64 %210
  %215 = load i64, i64* %214, align 8, !tbaa !7
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 %216)
  %217 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

; <label>:219                                     ; preds = %208
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = load i32, i32* %j, align 4, !tbaa !1
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 %220, i32 %221)
  br label %223

; <label>:223                                     ; preds = %219, %208
  br label %224

; <label>:224                                     ; preds = %223
  %225 = load i32, i32* %j, align 4, !tbaa !1
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %j, align 4, !tbaa !1
  br label %205

; <label>:227                                     ; preds = %205
  br label %228

; <label>:228                                     ; preds = %227
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %i, align 4, !tbaa !1
  br label %201

; <label>:231                                     ; preds = %201
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %232

; <label>:232                                     ; preds = %248, %231
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %234 = icmp slt i32 %233, 6
  br i1 %234, label %235, label %251

; <label>:235                                     ; preds = %232
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [6 x i32], [6 x i32]* @g_246, i32 0, i64 %237
  %239 = load i32, i32* %238, align 4, !tbaa !1
  %240 = sext i32 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %241)
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

; <label>:244                                     ; preds = %235
  %245 = load i32, i32* %i, align 4, !tbaa !1
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %245)
  br label %247

; <label>:247                                     ; preds = %244, %235
  br label %248

; <label>:248                                     ; preds = %247
  %249 = load i32, i32* %i, align 4, !tbaa !1
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %i, align 4, !tbaa !1
  br label %232

; <label>:251                                     ; preds = %232
  %252 = load i8, i8* @g_247, align 1, !tbaa !9
  %253 = zext i8 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %254)
  %255 = load i16, i16* @g_271, align 2, !tbaa !10
  %256 = sext i16 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %257)
  %258 = load i16, i16* @g_310, align 2, !tbaa !10
  %259 = sext i16 %258 to i64
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %260)
  %261 = load i8, i8* @g_341, align 1, !tbaa !9
  %262 = zext i8 %261 to i64
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %263)
  %264 = load i32, i32* @g_342, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %266)
  %267 = load i32, i32* @g_372, align 4, !tbaa !1
  %268 = zext i32 %267 to i64
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %269)
  %270 = load i8, i8* @g_373, align 1, !tbaa !9
  %271 = sext i8 %270 to i64
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %272)
  %273 = load i64, i64* @g_374, align 8, !tbaa !7
  %274 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %274)
  %275 = load i8, i8* @g_378, align 1, !tbaa !9
  %276 = sext i8 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %277)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %278

; <label>:278                                     ; preds = %293, %251
  %279 = load i32, i32* %i, align 4, !tbaa !1
  %280 = icmp slt i32 %279, 1
  br i1 %280, label %281, label %296

; <label>:281                                     ; preds = %278
  %282 = load i32, i32* %i, align 4, !tbaa !1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [1 x i64], [1 x i64]* @g_379, i32 0, i64 %283
  %285 = load i64, i64* %284, align 8, !tbaa !7
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %286)
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

; <label>:289                                     ; preds = %281
  %290 = load i32, i32* %i, align 4, !tbaa !1
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %290)
  br label %292

; <label>:292                                     ; preds = %289, %281
  br label %293

; <label>:293                                     ; preds = %292
  %294 = load i32, i32* %i, align 4, !tbaa !1
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %i, align 4, !tbaa !1
  br label %278

; <label>:296                                     ; preds = %278
  %297 = load i64, i64* @g_383, align 8, !tbaa !7
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %298)
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -46973339, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %299)
  %300 = load i64, i64* @g_429, align 8, !tbaa !7
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %301)
  %302 = load i32, i32* @g_470, align 4, !tbaa !1
  %303 = zext i32 %302 to i64
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %304)
  %305 = load i8, i8* @g_506, align 1, !tbaa !9
  %306 = zext i8 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %307)
  %308 = load i32, i32* @g_523, align 4, !tbaa !1
  %309 = zext i32 %308 to i64
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %310)
  %311 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_534, i32 0, i32 0), align 1, !tbaa !9
  %312 = zext i8 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %313)
  %314 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_534, i32 0, i32 0), align 1, !tbaa !9
  %315 = zext i8 %314 to i64
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %316)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %317

; <label>:317                                     ; preds = %333, %296
  %318 = load i32, i32* %i, align 4, !tbaa !1
  %319 = icmp slt i32 %318, 2
  br i1 %319, label %320, label %336

; <label>:320                                     ; preds = %317
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [2 x i8], [2 x i8]* @g_564, i32 0, i64 %322
  %324 = load i8, i8* %323, align 1, !tbaa !9
  %325 = sext i8 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %326)
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

; <label>:329                                     ; preds = %320
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %330)
  br label %332

; <label>:332                                     ; preds = %329, %320
  br label %333

; <label>:333                                     ; preds = %332
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %i, align 4, !tbaa !1
  br label %317

; <label>:336                                     ; preds = %317
  %337 = load i8, i8* @g_567, align 1, !tbaa !9
  %338 = sext i8 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %339)
  %340 = load i16, i16* @g_571, align 2, !tbaa !10
  %341 = zext i16 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %342)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:343                                     ; preds = %359, %336
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = icmp slt i32 %344, 2
  br i1 %345, label %346, label %362

; <label>:346                                     ; preds = %343
  %347 = load i32, i32* %i, align 4, !tbaa !1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [2 x i32], [2 x i32]* @g_595, i32 0, i64 %348
  %350 = load i32, i32* %349, align 4, !tbaa !1
  %351 = zext i32 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %352)
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

; <label>:355                                     ; preds = %346
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %356)
  br label %358

; <label>:358                                     ; preds = %355, %346
  br label %359

; <label>:359                                     ; preds = %358
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:362                                     ; preds = %343
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1151079156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %363)
  %364 = load i8, i8* @g_800, align 1, !tbaa !9
  %365 = zext i8 %364 to i64
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %365, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %366)
  %367 = load i16, i16* @g_823, align 2, !tbaa !10
  %368 = zext i16 %367 to i64
  %369 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %368, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 %369)
  %370 = load i8, i8* @g_854, align 1, !tbaa !9
  %371 = sext i8 %370 to i64
  %372 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %371, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 %372)
  %373 = load i32, i32* @g_992, align 4, !tbaa !1
  %374 = sext i32 %373 to i64
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %375)
  %376 = load i8, i8* @g_1146, align 1, !tbaa !9
  %377 = sext i8 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %378)
  %379 = load i16, i16* @g_1320, align 2, !tbaa !10
  %380 = zext i16 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %381)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %382

; <label>:382                                     ; preds = %398, %362
  %383 = load i32, i32* %i, align 4, !tbaa !1
  %384 = icmp slt i32 %383, 3
  br i1 %384, label %385, label %401

; <label>:385                                     ; preds = %382
  %386 = load i32, i32* %i, align 4, !tbaa !1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [3 x i8], [3 x i8]* @g_1321, i32 0, i64 %387
  %389 = load i8, i8* %388, align 1, !tbaa !9
  %390 = sext i8 %389 to i64
  %391 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %390, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 %391)
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %397

; <label>:394                                     ; preds = %385
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %396 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %395)
  br label %397

; <label>:397                                     ; preds = %394, %385
  br label %398

; <label>:398                                     ; preds = %397
  %399 = load i32, i32* %i, align 4, !tbaa !1
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %i, align 4, !tbaa !1
  br label %382

; <label>:401                                     ; preds = %382
  %402 = load i8, i8* @g_1374, align 1, !tbaa !9
  %403 = sext i8 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %404)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %405

; <label>:405                                     ; preds = %421, %401
  %406 = load i32, i32* %i, align 4, !tbaa !1
  %407 = icmp slt i32 %406, 5
  br i1 %407, label %408, label %424

; <label>:408                                     ; preds = %405
  %409 = load i32, i32* %i, align 4, !tbaa !1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [5 x i8], [5 x i8]* @g_1752, i32 0, i64 %410
  %412 = load i8, i8* %411, align 1, !tbaa !9
  %413 = sext i8 %412 to i64
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %413, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 %414)
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

; <label>:417                                     ; preds = %408
  %418 = load i32, i32* %i, align 4, !tbaa !1
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %418)
  br label %420

; <label>:420                                     ; preds = %417, %408
  br label %421

; <label>:421                                     ; preds = %420
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %i, align 4, !tbaa !1
  br label %405

; <label>:424                                     ; preds = %405
  %425 = load i64, i64* @g_1771, align 8, !tbaa !7
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %425, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %426)
  %427 = load i64, i64* @g_1787, align 8, !tbaa !7
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %428)
  %429 = load i8, i8* @g_1952, align 1, !tbaa !9
  %430 = sext i8 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %431)
  %432 = load i32, i32* @g_1979, align 4, !tbaa !1
  %433 = zext i32 %432 to i64
  %434 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %433, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %434)
  %435 = load volatile i64, i64* @g_2004, align 8, !tbaa !7
  %436 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %435, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %436)
  %437 = load i32, i32* @g_2034, align 4, !tbaa !1
  %438 = zext i32 %437 to i64
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %439)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %440

; <label>:440                                     ; preds = %494, %424
  %441 = load i32, i32* %i, align 4, !tbaa !1
  %442 = icmp slt i32 %441, 1
  br i1 %442, label %443, label %497

; <label>:443                                     ; preds = %440
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %444

; <label>:444                                     ; preds = %490, %443
  %445 = load i32, i32* %j, align 4, !tbaa !1
  %446 = icmp slt i32 %445, 4
  br i1 %446, label %447, label %493

; <label>:447                                     ; preds = %444
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %448

; <label>:448                                     ; preds = %486, %447
  %449 = load i32, i32* %k, align 4, !tbaa !1
  %450 = icmp slt i32 %449, 7
  br i1 %450, label %451, label %489

; <label>:451                                     ; preds = %448
  %452 = load i32, i32* %k, align 4, !tbaa !1
  %453 = sext i32 %452 to i64
  %454 = load i32, i32* %j, align 4, !tbaa !1
  %455 = sext i32 %454 to i64
  %456 = load i32, i32* %i, align 4, !tbaa !1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [1 x [4 x [7 x %union.U0]]], [1 x [4 x [7 x %union.U0]]]* @g_2065, i32 0, i64 %457
  %459 = getelementptr inbounds [4 x [7 x %union.U0]], [4 x [7 x %union.U0]]* %458, i32 0, i64 %455
  %460 = getelementptr inbounds [7 x %union.U0], [7 x %union.U0]* %459, i32 0, i64 %453
  %461 = bitcast %union.U0* %460 to i8*
  %462 = load i8, i8* %461, align 1, !tbaa !9
  %463 = zext i8 %462 to i64
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %463, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i32 %464)
  %465 = load i32, i32* %k, align 4, !tbaa !1
  %466 = sext i32 %465 to i64
  %467 = load i32, i32* %j, align 4, !tbaa !1
  %468 = sext i32 %467 to i64
  %469 = load i32, i32* %i, align 4, !tbaa !1
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [1 x [4 x [7 x %union.U0]]], [1 x [4 x [7 x %union.U0]]]* @g_2065, i32 0, i64 %470
  %472 = getelementptr inbounds [4 x [7 x %union.U0]], [4 x [7 x %union.U0]]* %471, i32 0, i64 %468
  %473 = getelementptr inbounds [7 x %union.U0], [7 x %union.U0]* %472, i32 0, i64 %466
  %474 = bitcast %union.U0* %473 to i8*
  %475 = load i8, i8* %474, align 1, !tbaa !9
  %476 = zext i8 %475 to i64
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %476, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i32 %477)
  %478 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %485

; <label>:480                                     ; preds = %451
  %481 = load i32, i32* %i, align 4, !tbaa !1
  %482 = load i32, i32* %j, align 4, !tbaa !1
  %483 = load i32, i32* %k, align 4, !tbaa !1
  %484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i32 %481, i32 %482, i32 %483)
  br label %485

; <label>:485                                     ; preds = %480, %451
  br label %486

; <label>:486                                     ; preds = %485
  %487 = load i32, i32* %k, align 4, !tbaa !1
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %k, align 4, !tbaa !1
  br label %448

; <label>:489                                     ; preds = %448
  br label %490

; <label>:490                                     ; preds = %489
  %491 = load i32, i32* %j, align 4, !tbaa !1
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %j, align 4, !tbaa !1
  br label %444

; <label>:493                                     ; preds = %444
  br label %494

; <label>:494                                     ; preds = %493
  %495 = load i32, i32* %i, align 4, !tbaa !1
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %i, align 4, !tbaa !1
  br label %440

; <label>:497                                     ; preds = %440
  %498 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %498)
  %499 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 4294967286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %499)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %500

; <label>:500                                     ; preds = %528, %497
  %501 = load i32, i32* %i, align 4, !tbaa !1
  %502 = icmp slt i32 %501, 1
  br i1 %502, label %503, label %531

; <label>:503                                     ; preds = %500
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %504

; <label>:504                                     ; preds = %524, %503
  %505 = load i32, i32* %j, align 4, !tbaa !1
  %506 = icmp slt i32 %505, 8
  br i1 %506, label %507, label %527

; <label>:507                                     ; preds = %504
  %508 = load i32, i32* %j, align 4, !tbaa !1
  %509 = sext i32 %508 to i64
  %510 = load i32, i32* %i, align 4, !tbaa !1
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [1 x [8 x i32]], [1 x [8 x i32]]* @g_2264, i32 0, i64 %511
  %513 = getelementptr inbounds [8 x i32], [8 x i32]* %512, i32 0, i64 %509
  %514 = load i32, i32* %513, align 4, !tbaa !1
  %515 = zext i32 %514 to i64
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %515, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i32 %516)
  %517 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %523

; <label>:519                                     ; preds = %507
  %520 = load i32, i32* %i, align 4, !tbaa !1
  %521 = load i32, i32* %j, align 4, !tbaa !1
  %522 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 %520, i32 %521)
  br label %523

; <label>:523                                     ; preds = %519, %507
  br label %524

; <label>:524                                     ; preds = %523
  %525 = load i32, i32* %j, align 4, !tbaa !1
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %j, align 4, !tbaa !1
  br label %504

; <label>:527                                     ; preds = %504
  br label %528

; <label>:528                                     ; preds = %527
  %529 = load i32, i32* %i, align 4, !tbaa !1
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %i, align 4, !tbaa !1
  br label %500

; <label>:531                                     ; preds = %500
  %532 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_2529, i32 0, i32 0), align 1, !tbaa !9
  %533 = zext i8 %532 to i64
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %533, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 %534)
  %535 = load i8, i8* getelementptr inbounds (%union.U0, %union.U0* @g_2529, i32 0, i32 0), align 1, !tbaa !9
  %536 = zext i8 %535 to i64
  %537 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %536, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %537)
  %538 = load i8, i8* @g_2648, align 1, !tbaa !9
  %539 = zext i8 %538 to i64
  %540 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %539, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 %540)
  %541 = load i32, i32* @g_2748, align 4, !tbaa !1
  %542 = sext i32 %541 to i64
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %542, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %543)
  %544 = load i8, i8* @g_2955, align 1, !tbaa !9
  %545 = sext i8 %544 to i64
  %546 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %545, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %546)
  %547 = load i32, i32* @g_3167, align 4, !tbaa !1
  %548 = sext i32 %547 to i64
  %549 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %548, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 %549)
  %550 = load i32, i32* @g_3169, align 4, !tbaa !1
  %551 = sext i32 %550 to i64
  %552 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %551, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 %552)
  %553 = load i32, i32* @g_3189, align 4, !tbaa !1
  %554 = sext i32 %553 to i64
  %555 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %554, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 %555)
  %556 = load volatile i32, i32* @g_3229, align 4, !tbaa !1
  %557 = sext i32 %556 to i64
  %558 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %557, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 %558)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %559

; <label>:559                                     ; preds = %599, %531
  %560 = load i32, i32* %i, align 4, !tbaa !1
  %561 = icmp slt i32 %560, 8
  br i1 %561, label %562, label %602

; <label>:562                                     ; preds = %559
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %563

; <label>:563                                     ; preds = %595, %562
  %564 = load i32, i32* %j, align 4, !tbaa !1
  %565 = icmp slt i32 %564, 3
  br i1 %565, label %566, label %598

; <label>:566                                     ; preds = %563
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %567

; <label>:567                                     ; preds = %591, %566
  %568 = load i32, i32* %k, align 4, !tbaa !1
  %569 = icmp slt i32 %568, 1
  br i1 %569, label %570, label %594

; <label>:570                                     ; preds = %567
  %571 = load i32, i32* %k, align 4, !tbaa !1
  %572 = sext i32 %571 to i64
  %573 = load i32, i32* %j, align 4, !tbaa !1
  %574 = sext i32 %573 to i64
  %575 = load i32, i32* %i, align 4, !tbaa !1
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [8 x [3 x [1 x i32]]], [8 x [3 x [1 x i32]]]* @g_3349, i32 0, i64 %576
  %578 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %577, i32 0, i64 %574
  %579 = getelementptr inbounds [1 x i32], [1 x i32]* %578, i32 0, i64 %572
  %580 = load i32, i32* %579, align 4, !tbaa !1
  %581 = sext i32 %580 to i64
  %582 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %581, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i32 %582)
  %583 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %590

; <label>:585                                     ; preds = %570
  %586 = load i32, i32* %i, align 4, !tbaa !1
  %587 = load i32, i32* %j, align 4, !tbaa !1
  %588 = load i32, i32* %k, align 4, !tbaa !1
  %589 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i32 %586, i32 %587, i32 %588)
  br label %590

; <label>:590                                     ; preds = %585, %570
  br label %591

; <label>:591                                     ; preds = %590
  %592 = load i32, i32* %k, align 4, !tbaa !1
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %k, align 4, !tbaa !1
  br label %567

; <label>:594                                     ; preds = %567
  br label %595

; <label>:595                                     ; preds = %594
  %596 = load i32, i32* %j, align 4, !tbaa !1
  %597 = add nsw i32 %596, 1
  store i32 %597, i32* %j, align 4, !tbaa !1
  br label %563

; <label>:598                                     ; preds = %563
  br label %599

; <label>:599                                     ; preds = %598
  %600 = load i32, i32* %i, align 4, !tbaa !1
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %i, align 4, !tbaa !1
  br label %559

; <label>:602                                     ; preds = %559
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %603

; <label>:603                                     ; preds = %619, %602
  %604 = load i32, i32* %i, align 4, !tbaa !1
  %605 = icmp slt i32 %604, 9
  br i1 %605, label %606, label %622

; <label>:606                                     ; preds = %603
  %607 = load i32, i32* %i, align 4, !tbaa !1
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [9 x i8], [9 x i8]* @g_3611, i32 0, i64 %608
  %610 = load i8, i8* %609, align 1, !tbaa !9
  %611 = sext i8 %610 to i64
  %612 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 %612)
  %613 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %618

; <label>:615                                     ; preds = %606
  %616 = load i32, i32* %i, align 4, !tbaa !1
  %617 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %616)
  br label %618

; <label>:618                                     ; preds = %615, %606
  br label %619

; <label>:619                                     ; preds = %618
  %620 = load i32, i32* %i, align 4, !tbaa !1
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %i, align 4, !tbaa !1
  br label %603

; <label>:622                                     ; preds = %603
  %623 = load i32, i32* @g_3691, align 4, !tbaa !1
  %624 = sext i32 %623 to i64
  %625 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %624, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 %625)
  %626 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %627 = zext i32 %626 to i64
  %628 = xor i64 %627, 4294967295
  %629 = trunc i64 %628 to i32
  %630 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %629, i32 %630)
  %631 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %631) #1
  %632 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %632) #1
  %633 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %633) #1
  %634 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %634) #1
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
define internal zeroext i16 @func_1() #0 {
  %l_7 = alloca %union.U0, align 1
  %l_3195 = alloca i32, align 4
  %l_17 = alloca %union.U0, align 1
  %l_3193 = alloca i8*, align 8
  %l_3194 = alloca i8*, align 8
  %l_3787 = alloca i16*, align 8
  %l_3788 = alloca i16*, align 8
  %l_3789 = alloca [9 x i16*], align 16
  %l_3790 = alloca i32, align 4
  %l_3791 = alloca i32, align 4
  %l_3792 = alloca i32*, align 8
  %l_3793 = alloca i32*, align 8
  %l_3794 = alloca [3 x [2 x i32*]], align 16
  %l_3795 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast %union.U0* %l_7 to i8*
  call void @llvm.lifetime.start(i64 1, i8* %1) #1
  %2 = bitcast %union.U0* %l_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds (%union.U0, %union.U0* @func_1.l_7, i32 0, i32 0), i64 1, i32 1, i1 false)
  %3 = bitcast i32* %l_3195 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 379158621, i32* %l_3195, align 4, !tbaa !1
  store i32 -26, i32* @g_4, align 4, !tbaa !1
  br label %4

; <label>:4                                       ; preds = %47, %0
  %5 = load i32, i32* @g_4, align 4, !tbaa !1
  %6 = icmp sgt i32 %5, 29
  br i1 %6, label %7, label %50

; <label>:7                                       ; preds = %4
  %8 = bitcast %union.U0* %l_17 to i8*
  call void @llvm.lifetime.start(i64 1, i8* %8) #1
  %9 = bitcast %union.U0* %l_17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* getelementptr inbounds (%union.U0, %union.U0* @func_1.l_17, i32 0, i32 0), i64 1, i32 1, i1 false)
  %10 = bitcast i8** %l_3193 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* @g_1146, i8** %l_3193, align 8, !tbaa !5
  %11 = bitcast i8** %l_3194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* @g_2955, i8** %l_3194, align 8, !tbaa !5
  %12 = bitcast i16** %l_3787 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i16* null, i16** %l_3787, align 8, !tbaa !5
  %13 = bitcast i16** %l_3788 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i16* null, i16** %l_3788, align 8, !tbaa !5
  %14 = bitcast [9 x i16*]* %l_3789 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %14) #1
  %15 = bitcast [9 x i16*]* %l_3789 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([9 x i16*]* @func_1.l_3789 to i8*), i64 72, i32 16, i1 false)
  %16 = bitcast i32* %l_3790 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 845052600, i32* %l_3790, align 4, !tbaa !1
  %17 = bitcast i32* %l_3791 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 7, i32* %l_3791, align 4, !tbaa !1
  %18 = bitcast i32** %l_3792 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* %l_3790, i32** %l_3792, align 8, !tbaa !5
  %19 = bitcast i32** %l_3793 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32* @g_2748, i32** %l_3793, align 8, !tbaa !5
  %20 = bitcast [3 x [2 x i32*]]* %l_3794 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %20) #1
  %21 = getelementptr inbounds [3 x [2 x i32*]], [3 x [2 x i32*]]* %l_3794, i64 0, i64 0
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 0
  store i32* @g_3167, i32** %22, !tbaa !5
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* %l_3791, i32** %23, !tbaa !5
  %24 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 1
  %25 = getelementptr inbounds [2 x i32*], [2 x i32*]* %24, i64 0, i64 0
  store i32* @g_3167, i32** %25, !tbaa !5
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  store i32* @g_3167, i32** %26, !tbaa !5
  %27 = getelementptr inbounds [2 x i32*], [2 x i32*]* %24, i64 1
  %28 = getelementptr inbounds [2 x i32*], [2 x i32*]* %27, i64 0, i64 0
  store i32* %l_3791, i32** %28, !tbaa !5
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  store i32* @g_3167, i32** %29, !tbaa !5
  %30 = bitcast i32* %l_3795 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 1743621146, i32* %l_3795, align 4, !tbaa !1
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %l_3795 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast [3 x [2 x i32*]]* %l_3794 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %36) #1
  %37 = bitcast i32** %l_3793 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32** %l_3792 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %l_3791 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %l_3790 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast [9 x i16*]* %l_3789 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %41) #1
  %42 = bitcast i16** %l_3788 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i16** %l_3787 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i8** %l_3194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i8** %l_3193 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast %union.U0* %l_17 to i8*
  call void @llvm.lifetime.end(i64 1, i8* %46) #1
  br label %47

; <label>:47                                      ; preds = %7
  %48 = load i32, i32* @g_4, align 4, !tbaa !1
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @g_4, align 4, !tbaa !1
  br label %4

; <label>:50                                      ; preds = %4
  %51 = load i16*, i16** @g_1858, align 8, !tbaa !5
  %52 = load i16, i16* %51, align 2, !tbaa !10
  %53 = bitcast i32* %l_3195 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %union.U0* %l_7 to i8*
  call void @llvm.lifetime.end(i64 1, i8* %54) #1
  ret i16 %52
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.82, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), i32 %3)
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
