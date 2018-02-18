; ModuleID = '00532.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global [7 x i32] [i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"g_2[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_3 = internal global [5 x [5 x i32]] [[5 x i32] [i32 -7, i32 -7, i32 -711043155, i32 -7, i32 -7], [5 x i32] [i32 1578617344, i32 1, i32 1578617344, i32 1578617344, i32 1], [5 x i32] [i32 -7, i32 688645187, i32 688645187, i32 -7, i32 688645187], [5 x i32] [i32 1, i32 1, i32 956405744, i32 1, i32 1], [5 x i32] [i32 688645187, i32 -7, i32 688645187, i32 688645187, i32 -7]], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"g_3[i][j]\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_4 = internal global i32 -1, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_5 = internal global i32 1519744707, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_40 = internal global i32 903567910, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_40\00", align 1
@g_43 = internal global i32 -1408834778, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_43\00", align 1
@g_77 = internal global i64 -6, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"g_77\00", align 1
@g_97 = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_97\00", align 1
@g_109 = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_109\00", align 1
@g_152 = internal global i8 1, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_152\00", align 1
@g_165 = internal global [6 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1, i64 1], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"g_165[i]\00", align 1
@g_179 = internal global i8 -1, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_179\00", align 1
@g_195 = internal global i8 -1, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_195\00", align 1
@g_197 = internal global i16 16739, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_197\00", align 1
@g_209 = internal global i64 -1, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_209\00", align 1
@g_293 = internal global i16 3, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_293\00", align 1
@g_298 = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_298\00", align 1
@g_322 = internal global i64 0, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_322\00", align 1
@g_324 = internal global i64 -10, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_324\00", align 1
@g_342 = internal global i64 6, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_342\00", align 1
@g_355 = internal global i64 -1423812862781118511, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_355\00", align 1
@g_546 = internal global [8 x [5 x [6 x i16]]] [[5 x [6 x i16]] [[6 x i16] [i16 -2, i16 25322, i16 -29611, i16 -16104, i16 -17004, i16 -10], [6 x i16] [i16 766, i16 -29611, i16 27826, i16 -1, i16 0, i16 10617], [6 x i16] [i16 0, i16 1, i16 9095, i16 8648, i16 27800, i16 20018], [6 x i16] [i16 1, i16 -26126, i16 -20152, i16 6, i16 6, i16 -20152], [6 x i16] [i16 20018, i16 20018, i16 1, i16 0, i16 1, i16 10242]], [5 x [6 x i16]] [[6 x i16] [i16 -7902, i16 0, i16 -8, i16 -17004, i16 -4001, i16 1], [6 x i16] [i16 -18535, i16 -7902, i16 -8, i16 -1, i16 20018, i16 10242], [6 x i16] [i16 0, i16 -1, i16 1, i16 1, i16 -8, i16 -20152], [6 x i16] [i16 1, i16 -8, i16 -20152, i16 10242, i16 -9, i16 20018], [6 x i16] [i16 -27777, i16 31030, i16 9095, i16 -534, i16 0, i16 10617]], [5 x [6 x i16]] [[6 x i16] [i16 0, i16 -10, i16 27826, i16 -27777, i16 27826, i16 -10], [6 x i16] [i16 8648, i16 -534, i16 -29611, i16 -2, i16 -9, i16 -16104], [6 x i16] [i16 -9, i16 25814, i16 -1, i16 25322, i16 1, i16 -1], [6 x i16] [i16 10617, i16 25814, i16 6, i16 -8, i16 -9, i16 0], [6 x i16] [i16 -20152, i16 -534, i16 766, i16 -29611, i16 27826, i16 -1]], [5 x [6 x i16]] [[6 x i16] [i16 -17004, i16 -10, i16 1, i16 25814, i16 0, i16 27826], [6 x i16] [i16 -26126, i16 31030, i16 -2, i16 0, i16 -9, i16 -8], [6 x i16] [i16 -534, i16 -8, i16 0, i16 0, i16 -8, i16 -534], [6 x i16] [i16 -2, i16 -1, i16 31030, i16 -20152, i16 20018, i16 8648], [6 x i16] [i16 -9, i16 -7902, i16 10617, i16 0, i16 -4001, i16 27800]], [5 x [6 x i16]] [[6 x i16] [i16 -9, i16 0, i16 0, i16 -20152, i16 1, i16 -7902], [6 x i16] [i16 -2, i16 20018, i16 -18535, i16 0, i16 6, i16 9095], [6 x i16] [i16 -534, i16 -26126, i16 1, i16 0, i16 27800, i16 -27777], [6 x i16] [i16 -26126, i16 1, i16 -2, i16 25814, i16 0, i16 1], [6 x i16] [i16 -17004, i16 -29611, i16 0, i16 -29611, i16 -17004, i16 -18535]], [5 x [6 x i16]] [[6 x i16] [i16 -20152, i16 25322, i16 20018, i16 -8, i16 25814, i16 31030], [6 x i16] [i16 10617, i16 1, i16 -1, i16 25322, i16 8648, i16 31030], [6 x i16] [i16 -9, i16 1, i16 20018, i16 -2, i16 0, i16 -18535], [6 x i16] [i16 8648, i16 6, i16 0, i16 -27777, i16 1, i16 1], [6 x i16] [i16 0, i16 -20152, i16 -2, i16 -534, i16 10617, i16 -27777]], [5 x [6 x i16]] [[6 x i16] [i16 -27777, i16 -1, i16 1, i16 10242, i16 10242, i16 10242], [6 x i16] [i16 -9, i16 1, i16 1, i16 -9, i16 -1, i16 25322], [6 x i16] [i16 -8, i16 -534, i16 -17004, i16 -1, i16 -16104, i16 0], [6 x i16] [i16 1, i16 -7902, i16 0, i16 -2, i16 -16104, i16 1], [6 x i16] [i16 25322, i16 -534, i16 -4001, i16 1, i16 -1, i16 0]], [5 x [6 x i16]] [[6 x i16] [i16 1, i16 1, i16 -8, i16 -20152, i16 10242, i16 -9], [6 x i16] [i16 27800, i16 766, i16 -2, i16 1, i16 0, i16 20018], [6 x i16] [i16 -10, i16 -16104, i16 -1, i16 31030, i16 -9, i16 31030], [6 x i16] [i16 -7902, i16 -20152, i16 -7902, i16 -26126, i16 -10, i16 1], [6 x i16] [i16 -2, i16 -9, i16 -20152, i16 -10, i16 1, i16 -1]]], align 16
@.str.24 = private unnamed_addr constant [15 x i8] c"g_546[i][j][k]\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_574\00", align 1
@g_628 = internal global i64 -1, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_628\00", align 1
@g_773 = internal global i32 -1, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_773\00", align 1
@g_804 = internal global i64 350003220961498341, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_804\00", align 1
@g_848 = internal global i64 6756824389601417266, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"g_848\00", align 1
@g_1012 = internal constant [5 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1], align 16
@.str.31 = private unnamed_addr constant [10 x i8] c"g_1012[i]\00", align 1
@g_1066 = internal global i32 -1, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1066\00", align 1
@g_1102 = internal global i32 0, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1102\00", align 1
@g_1159 = internal global i32 1962657606, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1159\00", align 1
@g_1181 = internal global i16 1, align 2
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1181\00", align 1
@g_1184 = internal global i16 -10, align 2
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1184\00", align 1
@g_1185 = internal global [7 x i16] [i16 9, i16 0, i16 0, i16 9, i16 0, i16 0, i16 9], align 2
@.str.37 = private unnamed_addr constant [10 x i8] c"g_1185[i]\00", align 1
@g_1186 = internal global i16 -18838, align 2
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1186\00", align 1
@g_1187 = internal global [1 x i16] [i16 2], align 2
@.str.39 = private unnamed_addr constant [10 x i8] c"g_1187[i]\00", align 1
@g_1188 = internal global i16 0, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1188\00", align 1
@g_1189 = internal global i16 -11682, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1189\00", align 1
@g_1190 = internal global i16 17697, align 2
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1190\00", align 1
@g_1191 = internal global i16 -26345, align 2
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1191\00", align 1
@g_1192 = internal global i16 1, align 2
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1192\00", align 1
@g_1193 = internal global i16 0, align 2
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1193\00", align 1
@g_1194 = internal global [8 x [1 x i16]] [[1 x i16] [i16 -1], [1 x i16] [i16 -6], [1 x i16] [i16 -1], [1 x i16] [i16 -6], [1 x i16] [i16 -1], [1 x i16] [i16 -6], [1 x i16] [i16 -1], [1 x i16] [i16 -6]], align 16
@.str.46 = private unnamed_addr constant [13 x i8] c"g_1194[i][j]\00", align 1
@g_1195 = internal global i16 1, align 2
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1195\00", align 1
@g_1196 = internal global i16 12618, align 2
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1196\00", align 1
@g_1197 = internal global i16 1, align 2
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1197\00", align 1
@g_1198 = internal global i16 11925, align 2
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1198\00", align 1
@g_1199 = internal global i16 28696, align 2
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1199\00", align 1
@g_1200 = internal global [1 x i16] [i16 1], align 2
@.str.52 = private unnamed_addr constant [10 x i8] c"g_1200[i]\00", align 1
@g_1201 = internal global i16 19347, align 2
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1201\00", align 1
@g_1202 = internal global i16 -20458, align 2
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1202\00", align 1
@g_1203 = internal global i16 4969, align 2
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1203\00", align 1
@g_1276 = internal global i16 -11962, align 2
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1276\00", align 1
@g_1350 = internal global i64 -6831162448549097644, align 8
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1350\00", align 1
@g_1557 = internal global i32 -1, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1557\00", align 1
@g_1577 = internal global [6 x [3 x i16]] [[3 x i16] [i16 -3949, i16 -3949, i16 -3949], [3 x i16] zeroinitializer, [3 x i16] [i16 -3949, i16 -3949, i16 -3949], [3 x i16] zeroinitializer, [3 x i16] [i16 -3949, i16 -3949, i16 -3949], [3 x i16] zeroinitializer], align 16
@.str.59 = private unnamed_addr constant [13 x i8] c"g_1577[i][j]\00", align 1
@g_1617 = internal global i64 -8248049215752581548, align 8
@.str.60 = private unnamed_addr constant [7 x i8] c"g_1617\00", align 1
@g_1642 = internal global i32 1, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"g_1642\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_295 = internal global i16* @g_293, align 8
@g_623 = internal global i32* @g_43, align 8
@.str.62 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call signext i8 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 7
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [7 x i32], [7 x i32]* @g_2, i32 0, i64 %96
  %98 = load volatile i32, i32* %97, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %100)
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

; <label>:103                                     ; preds = %94
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %104)
  br label %106

; <label>:106                                     ; preds = %103, %94
  br label %107

; <label>:107                                     ; preds = %106
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:110                                     ; preds = %91
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:111                                     ; preds = %139, %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = icmp slt i32 %112, 5
  br i1 %113, label %114, label %142

; <label>:114                                     ; preds = %111
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %135, %114
  %116 = load i32, i32* %j, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 5
  br i1 %117, label %118, label %138

; <label>:118                                     ; preds = %115
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @g_3, i32 0, i64 %122
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %123, i32 0, i64 %120
  %125 = load volatile i32, i32* %124, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %127)
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

; <label>:130                                     ; preds = %118
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = load i32, i32* %j, align 4, !tbaa !1
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %131, i32 %132)
  br label %134

; <label>:134                                     ; preds = %130, %118
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load i32, i32* %j, align 4, !tbaa !1
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:138                                     ; preds = %115
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:142                                     ; preds = %111
  %143 = load volatile i32, i32* @g_4, align 4, !tbaa !1
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* @g_5, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* @g_40, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %151)
  %152 = load i32, i32* @g_43, align 4, !tbaa !1
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %154)
  %155 = load i64, i64* @g_77, align 8, !tbaa !7
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %156)
  %157 = load i32, i32* @g_97, align 4, !tbaa !1
  %158 = zext i32 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %159)
  %160 = load i32, i32* @g_109, align 4, !tbaa !1
  %161 = sext i32 %160 to i64
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %162)
  %163 = load i8, i8* @g_152, align 1, !tbaa !9
  %164 = sext i8 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %165)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %166

; <label>:166                                     ; preds = %181, %142
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = icmp slt i32 %167, 6
  br i1 %168, label %169, label %184

; <label>:169                                     ; preds = %166
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [6 x i64], [6 x i64]* @g_165, i32 0, i64 %171
  %173 = load volatile i64, i64* %172, align 8, !tbaa !7
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %174)
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

; <label>:177                                     ; preds = %169
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %178)
  br label %180

; <label>:180                                     ; preds = %177, %169
  br label %181

; <label>:181                                     ; preds = %180
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %i, align 4, !tbaa !1
  br label %166

; <label>:184                                     ; preds = %166
  %185 = load i8, i8* @g_179, align 1, !tbaa !9
  %186 = zext i8 %185 to i64
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %187)
  %188 = load i8, i8* @g_195, align 1, !tbaa !9
  %189 = sext i8 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %190)
  %191 = load i16, i16* @g_197, align 2, !tbaa !10
  %192 = zext i16 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %193)
  %194 = load i64, i64* @g_209, align 8, !tbaa !7
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %195)
  %196 = load i16, i16* @g_293, align 2, !tbaa !10
  %197 = sext i16 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %198)
  %199 = load i32, i32* @g_298, align 4, !tbaa !1
  %200 = zext i32 %199 to i64
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %201)
  %202 = load i64, i64* @g_322, align 8, !tbaa !7
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %203)
  %204 = load i64, i64* @g_324, align 8, !tbaa !7
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %205)
  %206 = load i64, i64* @g_342, align 8, !tbaa !7
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %207)
  %208 = load volatile i64, i64* @g_355, align 8, !tbaa !7
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %209)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:210                                     ; preds = %250, %184
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = icmp slt i32 %211, 8
  br i1 %212, label %213, label %253

; <label>:213                                     ; preds = %210
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %214

; <label>:214                                     ; preds = %246, %213
  %215 = load i32, i32* %j, align 4, !tbaa !1
  %216 = icmp slt i32 %215, 5
  br i1 %216, label %217, label %249

; <label>:217                                     ; preds = %214
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %218

; <label>:218                                     ; preds = %242, %217
  %219 = load i32, i32* %k, align 4, !tbaa !1
  %220 = icmp slt i32 %219, 6
  br i1 %220, label %221, label %245

; <label>:221                                     ; preds = %218
  %222 = load i32, i32* %k, align 4, !tbaa !1
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* %j, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = load i32, i32* %i, align 4, !tbaa !1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [8 x [5 x [6 x i16]]], [8 x [5 x [6 x i16]]]* @g_546, i32 0, i64 %227
  %229 = getelementptr inbounds [5 x [6 x i16]], [5 x [6 x i16]]* %228, i32 0, i64 %225
  %230 = getelementptr inbounds [6 x i16], [6 x i16]* %229, i32 0, i64 %223
  %231 = load volatile i16, i16* %230, align 2, !tbaa !10
  %232 = zext i16 %231 to i64
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 %233)
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

; <label>:236                                     ; preds = %221
  %237 = load i32, i32* %i, align 4, !tbaa !1
  %238 = load i32, i32* %j, align 4, !tbaa !1
  %239 = load i32, i32* %k, align 4, !tbaa !1
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i32 %237, i32 %238, i32 %239)
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
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %254)
  %255 = load i64, i64* @g_628, align 8, !tbaa !7
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %256)
  %257 = load volatile i32, i32* @g_773, align 4, !tbaa !1
  %258 = zext i32 %257 to i64
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %259)
  %260 = load volatile i64, i64* @g_804, align 8, !tbaa !7
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %261)
  %262 = load volatile i64, i64* @g_848, align 8, !tbaa !7
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %263)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %279, %253
  %265 = load i32, i32* %i, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 5
  br i1 %266, label %267, label %282

; <label>:267                                     ; preds = %264
  %268 = load i32, i32* %i, align 4, !tbaa !1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [5 x i64], [5 x i64]* @g_1012, i32 0, i64 %269
  %271 = load i64, i64* %270, align 8, !tbaa !7
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 %272)
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

; <label>:275                                     ; preds = %267
  %276 = load i32, i32* %i, align 4, !tbaa !1
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %276)
  br label %278

; <label>:278                                     ; preds = %275, %267
  br label %279

; <label>:279                                     ; preds = %278
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:282                                     ; preds = %264
  %283 = load i32, i32* @g_1066, align 4, !tbaa !1
  %284 = sext i32 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %285)
  %286 = load volatile i32, i32* @g_1102, align 4, !tbaa !1
  %287 = sext i32 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %288)
  %289 = load i32, i32* @g_1159, align 4, !tbaa !1
  %290 = zext i32 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %291)
  %292 = load i16, i16* @g_1181, align 2, !tbaa !10
  %293 = zext i16 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %294)
  %295 = load i16, i16* @g_1184, align 2, !tbaa !10
  %296 = zext i16 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %297)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %298

; <label>:298                                     ; preds = %314, %282
  %299 = load i32, i32* %i, align 4, !tbaa !1
  %300 = icmp slt i32 %299, 7
  br i1 %300, label %301, label %317

; <label>:301                                     ; preds = %298
  %302 = load i32, i32* %i, align 4, !tbaa !1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [7 x i16], [7 x i16]* @g_1185, i32 0, i64 %303
  %305 = load i16, i16* %304, align 2, !tbaa !10
  %306 = zext i16 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 %307)
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

; <label>:310                                     ; preds = %301
  %311 = load i32, i32* %i, align 4, !tbaa !1
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %311)
  br label %313

; <label>:313                                     ; preds = %310, %301
  br label %314

; <label>:314                                     ; preds = %313
  %315 = load i32, i32* %i, align 4, !tbaa !1
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %i, align 4, !tbaa !1
  br label %298

; <label>:317                                     ; preds = %298
  %318 = load i16, i16* @g_1186, align 2, !tbaa !10
  %319 = zext i16 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %320)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %321

; <label>:321                                     ; preds = %337, %317
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = icmp slt i32 %322, 1
  br i1 %323, label %324, label %340

; <label>:324                                     ; preds = %321
  %325 = load i32, i32* %i, align 4, !tbaa !1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [1 x i16], [1 x i16]* @g_1187, i32 0, i64 %326
  %328 = load i16, i16* %327, align 2, !tbaa !10
  %329 = zext i16 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 %330)
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

; <label>:333                                     ; preds = %324
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %334)
  br label %336

; <label>:336                                     ; preds = %333, %324
  br label %337

; <label>:337                                     ; preds = %336
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %i, align 4, !tbaa !1
  br label %321

; <label>:340                                     ; preds = %321
  %341 = load i16, i16* @g_1188, align 2, !tbaa !10
  %342 = zext i16 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %343)
  %344 = load i16, i16* @g_1189, align 2, !tbaa !10
  %345 = zext i16 %344 to i64
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %346)
  %347 = load i16, i16* @g_1190, align 2, !tbaa !10
  %348 = zext i16 %347 to i64
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %349)
  %350 = load i16, i16* @g_1191, align 2, !tbaa !10
  %351 = zext i16 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %352)
  %353 = load i16, i16* @g_1192, align 2, !tbaa !10
  %354 = zext i16 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %355)
  %356 = load i16, i16* @g_1193, align 2, !tbaa !10
  %357 = zext i16 %356 to i64
  %358 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %358)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %359

; <label>:359                                     ; preds = %387, %340
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = icmp slt i32 %360, 8
  br i1 %361, label %362, label %390

; <label>:362                                     ; preds = %359
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %363

; <label>:363                                     ; preds = %383, %362
  %364 = load i32, i32* %j, align 4, !tbaa !1
  %365 = icmp slt i32 %364, 1
  br i1 %365, label %366, label %386

; <label>:366                                     ; preds = %363
  %367 = load i32, i32* %j, align 4, !tbaa !1
  %368 = sext i32 %367 to i64
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [8 x [1 x i16]], [8 x [1 x i16]]* @g_1194, i32 0, i64 %370
  %372 = getelementptr inbounds [1 x i16], [1 x i16]* %371, i32 0, i64 %368
  %373 = load i16, i16* %372, align 2, !tbaa !10
  %374 = zext i16 %373 to i64
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i32 %375)
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %382

; <label>:378                                     ; preds = %366
  %379 = load i32, i32* %i, align 4, !tbaa !1
  %380 = load i32, i32* %j, align 4, !tbaa !1
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %379, i32 %380)
  br label %382

; <label>:382                                     ; preds = %378, %366
  br label %383

; <label>:383                                     ; preds = %382
  %384 = load i32, i32* %j, align 4, !tbaa !1
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %j, align 4, !tbaa !1
  br label %363

; <label>:386                                     ; preds = %363
  br label %387

; <label>:387                                     ; preds = %386
  %388 = load i32, i32* %i, align 4, !tbaa !1
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %i, align 4, !tbaa !1
  br label %359

; <label>:390                                     ; preds = %359
  %391 = load i16, i16* @g_1195, align 2, !tbaa !10
  %392 = zext i16 %391 to i64
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %392, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %393)
  %394 = load i16, i16* @g_1196, align 2, !tbaa !10
  %395 = zext i16 %394 to i64
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %395, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %396)
  %397 = load i16, i16* @g_1197, align 2, !tbaa !10
  %398 = zext i16 %397 to i64
  %399 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %398, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %399)
  %400 = load i16, i16* @g_1198, align 2, !tbaa !10
  %401 = zext i16 %400 to i64
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %401, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %402)
  %403 = load i16, i16* @g_1199, align 2, !tbaa !10
  %404 = zext i16 %403 to i64
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %405)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %406

; <label>:406                                     ; preds = %422, %390
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = icmp slt i32 %407, 1
  br i1 %408, label %409, label %425

; <label>:409                                     ; preds = %406
  %410 = load i32, i32* %i, align 4, !tbaa !1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [1 x i16], [1 x i16]* @g_1200, i32 0, i64 %411
  %413 = load i16, i16* %412, align 2, !tbaa !10
  %414 = zext i16 %413 to i64
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %414, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 %415)
  %416 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %421

; <label>:418                                     ; preds = %409
  %419 = load i32, i32* %i, align 4, !tbaa !1
  %420 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %419)
  br label %421

; <label>:421                                     ; preds = %418, %409
  br label %422

; <label>:422                                     ; preds = %421
  %423 = load i32, i32* %i, align 4, !tbaa !1
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %i, align 4, !tbaa !1
  br label %406

; <label>:425                                     ; preds = %406
  %426 = load i16, i16* @g_1201, align 2, !tbaa !10
  %427 = zext i16 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %428)
  %429 = load i16, i16* @g_1202, align 2, !tbaa !10
  %430 = zext i16 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %431)
  %432 = load i16, i16* @g_1203, align 2, !tbaa !10
  %433 = zext i16 %432 to i64
  %434 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %433, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %434)
  %435 = load i16, i16* @g_1276, align 2, !tbaa !10
  %436 = sext i16 %435 to i64
  %437 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %436, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %437)
  %438 = load volatile i64, i64* @g_1350, align 8, !tbaa !7
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %439)
  %440 = load i32, i32* @g_1557, align 4, !tbaa !1
  %441 = sext i32 %440 to i64
  %442 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %441, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %442)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %443

; <label>:443                                     ; preds = %471, %425
  %444 = load i32, i32* %i, align 4, !tbaa !1
  %445 = icmp slt i32 %444, 6
  br i1 %445, label %446, label %474

; <label>:446                                     ; preds = %443
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %447

; <label>:447                                     ; preds = %467, %446
  %448 = load i32, i32* %j, align 4, !tbaa !1
  %449 = icmp slt i32 %448, 3
  br i1 %449, label %450, label %470

; <label>:450                                     ; preds = %447
  %451 = load i32, i32* %j, align 4, !tbaa !1
  %452 = sext i32 %451 to i64
  %453 = load i32, i32* %i, align 4, !tbaa !1
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [6 x [3 x i16]], [6 x [3 x i16]]* @g_1577, i32 0, i64 %454
  %456 = getelementptr inbounds [3 x i16], [3 x i16]* %455, i32 0, i64 %452
  %457 = load i16, i16* %456, align 2, !tbaa !10
  %458 = sext i16 %457 to i64
  %459 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %458, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 %459)
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %466

; <label>:462                                     ; preds = %450
  %463 = load i32, i32* %i, align 4, !tbaa !1
  %464 = load i32, i32* %j, align 4, !tbaa !1
  %465 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %463, i32 %464)
  br label %466

; <label>:466                                     ; preds = %462, %450
  br label %467

; <label>:467                                     ; preds = %466
  %468 = load i32, i32* %j, align 4, !tbaa !1
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %j, align 4, !tbaa !1
  br label %447

; <label>:470                                     ; preds = %447
  br label %471

; <label>:471                                     ; preds = %470
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %i, align 4, !tbaa !1
  br label %443

; <label>:474                                     ; preds = %443
  %475 = load i64, i64* @g_1617, align 8, !tbaa !7
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %475, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %476)
  %477 = load i32, i32* @g_1642, align 4, !tbaa !1
  %478 = zext i32 %477 to i64
  %479 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %478, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %479)
  %480 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %481 = zext i32 %480 to i64
  %482 = xor i64 %481, 4294967295
  %483 = trunc i64 %482 to i32
  %484 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %483, i32 %484)
  %485 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %485) #1
  %486 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %487) #1
  %488 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %488) #1
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
define internal signext i8 @func_1() #0 {
  %l_1247 = alloca i32*, align 8
  %l_1613 = alloca i8, align 1
  %l_1614 = alloca i32, align 4
  %l_1635 = alloca i32, align 4
  %l_1640 = alloca i16**, align 8
  %l_1641 = alloca i64, align 8
  %l_1654 = alloca i64, align 8
  %l_13 = alloca i32, align 4
  %l_1244 = alloca i32*, align 8
  %l_1245 = alloca [3 x i32**], align 16
  %l_1248 = alloca i32*, align 8
  %l_1590 = alloca [2 x i32*], align 16
  %l_1589 = alloca i32**, align 8
  %l_1593 = alloca i16, align 2
  %l_1615 = alloca i8*, align 8
  %l_1616 = alloca i8*, align 8
  %l_1618 = alloca i8, align 1
  %l_1639 = alloca i8, align 1
  %l_1643 = alloca i32, align 4
  %l_1651 = alloca [6 x i64], align 16
  %i = alloca i32, align 4
  %l_1657 = alloca i32, align 4
  %1 = alloca i32
  %2 = bitcast i32** %l_1247 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_40, i32** %l_1247, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1613) #1
  store i8 0, i8* %l_1613, align 1, !tbaa !9
  %3 = bitcast i32* %l_1614 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %l_1614, align 4, !tbaa !1
  %4 = bitcast i32* %l_1635 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -473993614, i32* %l_1635, align 4, !tbaa !1
  %5 = bitcast i16*** %l_1640 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16** @g_295, i16*** %l_1640, align 8, !tbaa !5
  %6 = bitcast i64* %l_1641 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64 -1, i64* %l_1641, align 8, !tbaa !7
  %7 = bitcast i64* %l_1654 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 -6, i64* %l_1654, align 8, !tbaa !7
  store i32 -6, i32* @g_5, align 4, !tbaa !1
  br label %8

; <label>:8                                       ; preds = %67, %0
  %9 = load i32, i32* @g_5, align 4, !tbaa !1
  %10 = icmp eq i32 %9, 29
  br i1 %10, label %11, label %70

; <label>:11                                      ; preds = %8
  %12 = bitcast i32* %l_13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -1, i32* %l_13, align 4, !tbaa !1
  %13 = bitcast i32** %l_1244 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* @g_109, i32** %l_1244, align 8, !tbaa !5
  %14 = bitcast [3 x i32**]* %l_1245 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %14) #1
  %15 = bitcast i32** %l_1248 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32* @g_109, i32** %l_1248, align 8, !tbaa !5
  %16 = bitcast [2 x i32*]* %l_1590 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = bitcast i32*** %l_1589 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1590, i32 0, i64 1
  store i32** %18, i32*** %l_1589, align 8, !tbaa !5
  %19 = bitcast i16* %l_1593 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %19) #1
  store i16 -3, i16* %l_1593, align 2, !tbaa !10
  %20 = bitcast i8** %l_1615 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i8* @g_152, i8** %l_1615, align 8, !tbaa !5
  %21 = bitcast i8** %l_1616 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i8* @g_195, i8** %l_1616, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1618) #1
  store i8 0, i8* %l_1618, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_1639) #1
  store i8 91, i8* %l_1639, align 1, !tbaa !9
  %22 = bitcast i32* %l_1643 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1, i32* %l_1643, align 4, !tbaa !1
  %23 = bitcast [6 x i64]* %l_1651 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %23) #1
  %24 = bitcast [6 x i64]* %l_1651 to i8*
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 48, i32 16, i1 false)
  %25 = bitcast i8* %24 to [6 x i64]*
  %26 = getelementptr [6 x i64], [6 x i64]* %25, i32 0, i32 0
  store i64 391287938019152773, i64* %26
  %27 = getelementptr [6 x i64], [6 x i64]* %25, i32 0, i32 1
  store i64 -5544695632391575464, i64* %27
  %28 = getelementptr [6 x i64], [6 x i64]* %25, i32 0, i32 2
  store i64 391287938019152773, i64* %28
  %29 = getelementptr [6 x i64], [6 x i64]* %25, i32 0, i32 3
  store i64 391287938019152773, i64* %29
  %30 = getelementptr [6 x i64], [6 x i64]* %25, i32 0, i32 4
  store i64 -5544695632391575464, i64* %30
  %31 = getelementptr [6 x i64], [6 x i64]* %25, i32 0, i32 5
  store i64 391287938019152773, i64* %31
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %40, %11
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %33
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i32**], [3 x i32**]* %l_1245, i32 0, i64 %38
  store i32** %l_1244, i32*** %39, align 8, !tbaa !5
  br label %40

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %i, align 4, !tbaa !1
  br label %33

; <label>:43                                      ; preds = %33
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %44

; <label>:44                                      ; preds = %51, %43
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %54

; <label>:47                                      ; preds = %44
  %48 = load i32, i32* %i, align 4, !tbaa !1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1590, i32 0, i64 %49
  store i32* @g_1066, i32** %50, align 8, !tbaa !5
  br label %51

; <label>:51                                      ; preds = %47
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %i, align 4, !tbaa !1
  br label %44

; <label>:54                                      ; preds = %44
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast [6 x i64]* %l_1651 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %56) #1
  %57 = bitcast i32* %l_1643 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1639) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1618) #1
  %58 = bitcast i8** %l_1616 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i8** %l_1615 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i16* %l_1593 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %60) #1
  %61 = bitcast i32*** %l_1589 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast [2 x i32*]* %l_1590 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %62) #1
  %63 = bitcast i32** %l_1248 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast [3 x i32**]* %l_1245 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %64) #1
  %65 = bitcast i32** %l_1244 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %l_13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  br label %67

; <label>:67                                      ; preds = %54
  %68 = load i32, i32* @g_5, align 4, !tbaa !1
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @g_5, align 4, !tbaa !1
  br label %8

; <label>:70                                      ; preds = %8
  store i16 0, i16* @g_1195, align 2, !tbaa !10
  br label %71

; <label>:71                                      ; preds = %87, %70
  %72 = load i16, i16* @g_1195, align 2, !tbaa !10
  %73 = zext i16 %72 to i32
  %74 = icmp sge i32 %73, 47
  br i1 %74, label %75, label %90

; <label>:75                                      ; preds = %71
  %76 = bitcast i32* %l_1657 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  store i32 1, i32* %l_1657, align 4, !tbaa !1
  %77 = load i32*, i32** @g_623, align 8, !tbaa !5
  %78 = load i32, i32* %77, align 4, !tbaa !1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %75
  store i32 11, i32* %1
  br label %84

; <label>:81                                      ; preds = %75
  %82 = load i32, i32* %l_1657, align 4, !tbaa !1
  %83 = load i32*, i32** @g_623, align 8, !tbaa !5
  store i32 %82, i32* %83, align 4, !tbaa !1
  store i32 0, i32* %1
  br label %84

; <label>:84                                      ; preds = %81, %80
  %85 = bitcast i32* %l_1657 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %cleanup.dest = load i32, i32* %1
  switch i32 %cleanup.dest, label %99 [
    i32 0, label %86
    i32 11, label %90
  ]

; <label>:86                                      ; preds = %84
  br label %87

; <label>:87                                      ; preds = %86
  %88 = load i16, i16* @g_1195, align 2, !tbaa !10
  %89 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %88, i16 zeroext 7)
  store i16 %89, i16* @g_1195, align 2, !tbaa !10
  br label %71

; <label>:90                                      ; preds = %84, %71
  %91 = load volatile i32, i32* getelementptr inbounds ([5 x [5 x i32]], [5 x [5 x i32]]* @g_3, i32 0, i64 4, i64 1), align 4, !tbaa !1
  %92 = trunc i32 %91 to i8
  store i32 1, i32* %1
  %93 = bitcast i64* %l_1654 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i64* %l_1641 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i16*** %l_1640 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %l_1635 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %l_1614 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1613) #1
  %98 = bitcast i32** %l_1247 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  ret i8 %92

; <label>:99                                      ; preds = %84
  unreachable
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
