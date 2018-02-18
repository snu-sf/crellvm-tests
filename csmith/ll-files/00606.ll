; ModuleID = '00606.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -145137508, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global [1 x [7 x i32]] [[7 x i32] [i32 -1259622197, i32 -1259622197, i32 -1259622197, i32 -1259622197, i32 -1259622197, i32 -1259622197, i32 -1259622197]], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"g_3[i][j]\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_4 = internal global [4 x [5 x [7 x i32]]] [[5 x [7 x i32]] [[7 x i32] [i32 1, i32 -1, i32 1202581933, i32 -1829918483, i32 -1126168325, i32 -2, i32 1352462654], [7 x i32] [i32 1352462654, i32 -909293060, i32 5, i32 -1, i32 5, i32 -909293060, i32 1352462654], [7 x i32] [i32 1694598989, i32 -1868418191, i32 1559220331, i32 5, i32 1352462654, i32 1491992065, i32 -909293060], [7 x i32] [i32 -1868418191, i32 -1, i32 -2, i32 1, i32 -1, i32 1202581933, i32 -1829918483], [7 x i32] [i32 -1126168325, i32 -909293060, i32 1559220331, i32 -1126168325, i32 -816240808, i32 1925856267, i32 -431002436]], [5 x [7 x i32]] [[7 x i32] [i32 1925856267, i32 -758613387, i32 5, i32 5, i32 1491992065, i32 0, i32 1202581933], [7 x i32] [i32 -816240808, i32 1, i32 -1868418191, i32 -5, i32 1925856267, i32 -1868418191, i32 -909293060], [7 x i32] [i32 1491992065, i32 1202581933, i32 1, i32 5, i32 444236200, i32 -742302451, i32 5], [7 x i32] [i32 0, i32 1, i32 -8, i32 -2, i32 1559220331, i32 -1, i32 -1], [7 x i32] [i32 1559220331, i32 1491992065, i32 -1868418191, i32 1491992065, i32 1559220331, i32 -1, i32 1925856267]], [5 x [7 x i32]] [[7 x i32] [i32 1694598989, i32 -1, i32 -2, i32 1925856267, i32 444236200, i32 1202581933, i32 1694598989], [7 x i32] [i32 -8, i32 1694598989, i32 1202581933, i32 444236200, i32 1925856267, i32 -2, i32 -1], [7 x i32] [i32 1694598989, i32 1925856267, i32 -1, i32 1559220331, i32 1491992065, i32 -1868418191, i32 1491992065], [7 x i32] [i32 1559220331, i32 -1, i32 -1, i32 1559220331, i32 -2, i32 -8, i32 1], [7 x i32] [i32 0, i32 5, i32 -742302451, i32 444236200, i32 5, i32 1, i32 1202581933]], [5 x [7 x i32]] [[7 x i32] [i32 1491992065, i32 -909293060, i32 -1868418191, i32 1925856267, i32 -5, i32 -1868418191, i32 1], [7 x i32] [i32 -816240808, i32 1202581933, i32 0, i32 1491992065, i32 444236200, i32 444236200, i32 1491992065], [7 x i32] [i32 0, i32 1559220331, i32 0, i32 -2, i32 -909293060, i32 -2, i32 -1], [7 x i32] [i32 -909293060, i32 -816240808, i32 -1868418191, i32 5, i32 1, i32 -1, i32 1694598989], [7 x i32] [i32 1925856267, i32 -1, i32 -742302451, i32 -5, i32 444236200, i32 -2, i32 1925856267]]], align 16
@.str.4 = private unnamed_addr constant [13 x i8] c"g_4[i][j][k]\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_5 = internal global i32 -2077925699, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_6 = internal global i32 4, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_7 = internal global [9 x [4 x i32]] [[4 x i32] [i32 -2002160847, i32 1, i32 -2002160847, i32 -2002160847], [4 x i32] [i32 1, i32 1, i32 118904998, i32 1], [4 x i32] [i32 1, i32 -2002160847, i32 -2002160847, i32 1], [4 x i32] [i32 -2002160847, i32 1, i32 -2002160847, i32 -2002160847], [4 x i32] [i32 1, i32 1, i32 118904998, i32 1], [4 x i32] [i32 1, i32 -2002160847, i32 -2002160847, i32 1], [4 x i32] [i32 -2002160847, i32 1, i32 -2002160847, i32 -2002160847], [4 x i32] [i32 1, i32 1, i32 118904998, i32 1], [4 x i32] [i32 1, i32 -2002160847, i32 -2002160847, i32 1]], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"g_7[i][j]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_10 = private unnamed_addr constant [2 x [8 x i8]] [[8 x i8] c"\06M\06\FF\E6\E6\FF\06", [8 x i8] c"MM\E6\01\00\01\E6M"], align 16
@.str.9 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %122, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %125

; <label>:97                                      ; preds = %94
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %118, %97
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 7
  br i1 %100, label %101, label %121

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* @g_3, i32 0, i64 %105
  %107 = getelementptr inbounds [7 x i32], [7 x i32]* %106, i32 0, i64 %103
  %108 = load volatile i32, i32* %107, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %110)
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

; <label>:113                                     ; preds = %101
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %115 = load i32, i32* %j, align 4, !tbaa !1
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %114, i32 %115)
  br label %117

; <label>:117                                     ; preds = %113, %101
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:121                                     ; preds = %98
  br label %122

; <label>:122                                     ; preds = %121
  %123 = load i32, i32* %i, align 4, !tbaa !1
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:125                                     ; preds = %94
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %126

; <label>:126                                     ; preds = %166, %125
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %129, label %169

; <label>:129                                     ; preds = %126
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %130

; <label>:130                                     ; preds = %162, %129
  %131 = load i32, i32* %j, align 4, !tbaa !1
  %132 = icmp slt i32 %131, 5
  br i1 %132, label %133, label %165

; <label>:133                                     ; preds = %130
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %134

; <label>:134                                     ; preds = %158, %133
  %135 = load i32, i32* %k, align 4, !tbaa !1
  %136 = icmp slt i32 %135, 7
  br i1 %136, label %137, label %161

; <label>:137                                     ; preds = %134
  %138 = load i32, i32* %k, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %j, align 4, !tbaa !1
  %141 = sext i32 %140 to i64
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x [5 x [7 x i32]]], [4 x [5 x [7 x i32]]]* @g_4, i32 0, i64 %143
  %145 = getelementptr inbounds [5 x [7 x i32]], [5 x [7 x i32]]* %144, i32 0, i64 %141
  %146 = getelementptr inbounds [7 x i32], [7 x i32]* %145, i32 0, i64 %139
  %147 = load volatile i32, i32* %146, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %149)
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

; <label>:152                                     ; preds = %137
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = load i32, i32* %j, align 4, !tbaa !1
  %155 = load i32, i32* %k, align 4, !tbaa !1
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %153, i32 %154, i32 %155)
  br label %157

; <label>:157                                     ; preds = %152, %137
  br label %158

; <label>:158                                     ; preds = %157
  %159 = load i32, i32* %k, align 4, !tbaa !1
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %k, align 4, !tbaa !1
  br label %134

; <label>:161                                     ; preds = %134
  br label %162

; <label>:162                                     ; preds = %161
  %163 = load i32, i32* %j, align 4, !tbaa !1
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %j, align 4, !tbaa !1
  br label %130

; <label>:165                                     ; preds = %130
  br label %166

; <label>:166                                     ; preds = %165
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %i, align 4, !tbaa !1
  br label %126

; <label>:169                                     ; preds = %126
  %170 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %171 = sext i32 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %172)
  %173 = load volatile i32, i32* @g_6, align 4, !tbaa !1
  %174 = sext i32 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 %175)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %176

; <label>:176                                     ; preds = %204, %169
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = icmp slt i32 %177, 9
  br i1 %178, label %179, label %207

; <label>:179                                     ; preds = %176
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %180

; <label>:180                                     ; preds = %200, %179
  %181 = load i32, i32* %j, align 4, !tbaa !1
  %182 = icmp slt i32 %181, 4
  br i1 %182, label %183, label %203

; <label>:183                                     ; preds = %180
  %184 = load i32, i32* %j, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* @g_7, i32 0, i64 %187
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %188, i32 0, i64 %185
  %190 = load i32, i32* %189, align 4, !tbaa !1
  %191 = sext i32 %190 to i64
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 %192)
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

; <label>:195                                     ; preds = %183
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = load i32, i32* %j, align 4, !tbaa !1
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %196, i32 %197)
  br label %199

; <label>:199                                     ; preds = %195, %183
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load i32, i32* %j, align 4, !tbaa !1
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %j, align 4, !tbaa !1
  br label %180

; <label>:203                                     ; preds = %180
  br label %204

; <label>:204                                     ; preds = %203
  %205 = load i32, i32* %i, align 4, !tbaa !1
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %i, align 4, !tbaa !1
  br label %176

; <label>:207                                     ; preds = %176
  %208 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %209 = zext i32 %208 to i64
  %210 = xor i64 %209, 4294967295
  %211 = trunc i64 %210 to i32
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %211, i32 %212)
  %213 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
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
  %l_10 = alloca [2 x [8 x i8]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast [2 x [8 x i8]]* %l_10 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast [2 x [8 x i8]]* %l_10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([2 x [8 x i8]], [2 x [8 x i8]]* @func_1.l_10, i32 0, i32 0, i32 0), i64 16, i32 16, i1 false)
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -6, i32* getelementptr inbounds ([9 x [4 x i32]], [9 x [4 x i32]]* @g_7, i32 0, i64 6, i64 1), align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %42, %0
  %6 = load i32, i32* getelementptr inbounds ([9 x [4 x i32]], [9 x [4 x i32]]* @g_7, i32 0, i64 6, i64 1), align 4, !tbaa !1
  %7 = icmp sge i32 %6, -1
  br i1 %7, label %8, label %47

; <label>:8                                       ; preds = %5
  store volatile i32 0, i32* @g_6, align 4, !tbaa !1
  br label %9

; <label>:9                                       ; preds = %38, %8
  %10 = load volatile i32, i32* @g_6, align 4, !tbaa !1
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %41

; <label>:12                                      ; preds = %9
  store volatile i32 0, i32* @g_5, align 4, !tbaa !1
  br label %13

; <label>:13                                      ; preds = %34, %12
  %14 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %37

; <label>:16                                      ; preds = %13
  store volatile i32 0, i32* @g_2, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %30, %16
  %18 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 7
  br i1 %19, label %20, label %33

; <label>:20                                      ; preds = %17
  %21 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %22 = sext i32 %21 to i64
  %23 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %24 = sext i32 %23 to i64
  %25 = load volatile i32, i32* @g_6, align 4, !tbaa !1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x [5 x [7 x i32]]], [4 x [5 x [7 x i32]]]* @g_4, i32 0, i64 %26
  %28 = getelementptr inbounds [5 x [7 x i32]], [5 x [7 x i32]]* %27, i32 0, i64 %24
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %28, i32 0, i64 %22
  store volatile i32 1, i32* %29, align 4, !tbaa !1
  br label %30

; <label>:30                                      ; preds = %20
  %31 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %32 = add nsw i32 %31, 1
  store volatile i32 %32, i32* @g_2, align 4, !tbaa !1
  br label %17

; <label>:33                                      ; preds = %17
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %36 = add nsw i32 %35, 1
  store volatile i32 %36, i32* @g_5, align 4, !tbaa !1
  br label %13

; <label>:37                                      ; preds = %13
  br label %38

; <label>:38                                      ; preds = %37
  %39 = load volatile i32, i32* @g_6, align 4, !tbaa !1
  %40 = add nsw i32 %39, 1
  store volatile i32 %40, i32* @g_6, align 4, !tbaa !1
  br label %9

; <label>:41                                      ; preds = %9
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i32, i32* getelementptr inbounds ([9 x [4 x i32]], [9 x [4 x i32]]* @g_7, i32 0, i64 6, i64 1), align 4, !tbaa !1
  %44 = trunc i32 %43 to i16
  %45 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %44, i16 signext 1)
  %46 = sext i16 %45 to i32
  store i32 %46, i32* getelementptr inbounds ([9 x [4 x i32]], [9 x [4 x i32]]* @g_7, i32 0, i64 6, i64 1), align 4, !tbaa !1
  br label %5

; <label>:47                                      ; preds = %5
  %48 = getelementptr inbounds [2 x [8 x i8]], [2 x [8 x i8]]* %l_10, i32 0, i64 1
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %48, i32 0, i64 4
  %50 = load i8, i8* %49, align 1, !tbaa !9
  %51 = sext i8 %50 to i32
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast [2 x [8 x i8]]* %l_10 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %54) #1
  ret i32 %51
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
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
