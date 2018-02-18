; ModuleID = '00903.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U2 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_2 = internal global %union.U2 zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %print_hash_value = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %4 = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.U2, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %7 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %87

; <label>:10                                      ; preds = %0
  %11 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %13, label %75

; <label>:13                                      ; preds = %10
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %14 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %75

; <label>:16                                      ; preds = %13
  %17 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i8**, i8*** %3, align 8, !tbaa !5
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8, !tbaa !5
  store i8* %20, i8** %__s1, align 8, !tbaa !5
  %21 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i8*, i8** %__s1, align 8, !tbaa !5
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1, !tbaa !9
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %25, %27
  store i32 %28, i32* %__result, align 4, !tbaa !1
  %29 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %70

; <label>:31                                      ; preds = %16
  %32 = load i32, i32* %__result, align 4, !tbaa !1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %70

; <label>:34                                      ; preds = %31
  %35 = load i8*, i8** %__s1, align 8, !tbaa !5
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1, !tbaa !9
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %38, %40
  store i32 %41, i32* %__result, align 4, !tbaa !1
  %42 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %43 = icmp ugt i64 %42, 1
  br i1 %43, label %44, label %69

; <label>:44                                      ; preds = %34
  %45 = load i32, i32* %__result, align 4, !tbaa !1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

; <label>:47                                      ; preds = %44
  %48 = load i8*, i8** %__s1, align 8, !tbaa !5
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1, !tbaa !9
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %__result, align 4, !tbaa !1
  %55 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %56 = icmp ugt i64 %55, 2
  br i1 %56, label %57, label %68

; <label>:57                                      ; preds = %47
  %58 = load i32, i32* %__result, align 4, !tbaa !1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

; <label>:60                                      ; preds = %57
  %61 = load i8*, i8** %__s1, align 8, !tbaa !5
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1, !tbaa !9
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 %64, %66
  store i32 %67, i32* %__result, align 4, !tbaa !1
  br label %68

; <label>:68                                      ; preds = %60, %57, %47
  br label %69

; <label>:69                                      ; preds = %68, %44, %34
  br label %70

; <label>:70                                      ; preds = %69, %31, %16
  %71 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %71, i32* %5, !tbaa !1
  %72 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = load i32, i32* %5, !tbaa !1
  br label %80

; <label>:75                                      ; preds = %13, %10
  %76 = load i8**, i8*** %3, align 8, !tbaa !5
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !5
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %80

; <label>:80                                      ; preds = %75, %70
  %81 = phi i32 [ %74, %70 ], [ %79, %75 ]
  store i32 %81, i32* %4, !tbaa !1
  %82 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %4, !tbaa !1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %80
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %87

; <label>:87                                      ; preds = %86, %80, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %88 = call i8* @func_1()
  %89 = getelementptr %union.U2, %union.U2* %6, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %91 = zext i32 %90 to i64
  %92 = xor i64 %91, 4294967295
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %93, i32 %94)
  %95 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
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
define internal i8* @func_1() #0 {
  %1 = alloca %union.U2, align 8
  %2 = bitcast %union.U2* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%union.U2* @g_2 to i8*), i64 8, i32 8, i1 false), !tbaa.struct !10
  %3 = getelementptr %union.U2, %union.U2* %1, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal void @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4, !tbaa !1
  store i32 %flag, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #3

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
!10 = !{i64 0, i64 8, !5, i64 0, i64 2, !11}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !3, i64 0}
