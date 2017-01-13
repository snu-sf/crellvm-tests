; ModuleID = './SingleSource.Regression.C/10.2003-05-21-BitfieldHandling.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test1 = type { i8, [7 x i8] }
%struct.test2 = type { i8, [7 x i8] }
%struct.test3 = type { [3 x i8] }
%struct.test4 = type <{ i24, i16 }>
%struct.test5 = type { [3 x i8] }
%struct.test6 = type { i64 }
%struct.test = type { i8, i8, [2 x i8], i8, i8, [2 x i8] }
%struct.test_empty = type {}
%struct.rtx_def = type { i16, i16, i64 }

@Esize = global i32 0, align 4
@N = global { i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 } { i16 2, i8 56, i8 0, [4 x i8] undef, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 8
@Nsize = global i32 16, align 4
@F1size = global i32 8, align 4
@F2size = global i32 8, align 4
@F3size = global i32 3, align 4
@F4size = global i32 6, align 4
@F5size = global i32 3, align 4
@F6size = global i32 8, align 4
@Msize = global i32 8, align 4
@.str = private unnamed_addr constant [16 x i8] c"N: %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"F1: %d\0A\00", align 1
@F1 = common global %struct.test1 zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"F2: %d\0A\00", align 1
@F2 = common global %struct.test2 zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"F3: %d\0A\00", align 1
@F3 = common global %struct.test3 zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"F4: %d %d\0A\00", align 1
@F4 = common global %struct.test4 zeroinitializer, align 2
@.str.5 = private unnamed_addr constant [11 x i8] c"F5: %d %d\0A\00", align 1
@F5 = common global %struct.test5 zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"F6: %d %d\0A\00", align 1
@F6 = common global %struct.test6 zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"M: %d %d %d %d %d\0A\00", align 1
@M = common global %struct.test zeroinitializer, align 8
@e = common global %struct.test_empty zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i16, i16* getelementptr inbounds (%struct.rtx_def, %struct.rtx_def* bitcast ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N to %struct.rtx_def*), i32 0, i32 0), align 2
  %conv = zext i16 %0 to i32
  %bf.load = load i16, i16* getelementptr inbounds (%struct.rtx_def, %struct.rtx_def* bitcast ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N to %struct.rtx_def*), i32 0, i32 1), align 2
  %bf.shl = shl i16 %bf.load, 5
  %bf.ashr = ashr i16 %bf.shl, 8
  %bf.cast = sext i16 %bf.ashr to i32
  %bf.load1 = load i64, i64* getelementptr inbounds (%struct.rtx_def, %struct.rtx_def* bitcast ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N to %struct.rtx_def*), i32 0, i32 2), align 8
  %bf.shl2 = shl i64 %bf.load1, 33
  %bf.ashr3 = ashr i64 %bf.shl2, 33
  %conv4 = trunc i64 %bf.ashr3 to i32
  %bf.load5 = load i64, i64* getelementptr inbounds (%struct.rtx_def, %struct.rtx_def* bitcast ({ i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }* @N to %struct.rtx_def*), i32 0, i32 2), align 8
  %bf.shl6 = shl i64 %bf.load5, 2
  %bf.ashr7 = ashr i64 %bf.shl6, 33
  %conv8 = trunc i64 %bf.ashr7 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %conv, i32 %bf.cast, i32 %conv4, i32 %conv8)
  %bf.load9 = load i8, i8* getelementptr inbounds (%struct.test1, %struct.test1* @F1, i32 0, i32 0), align 1
  %bf.shl10 = shl i8 %bf.load9, 7
  %bf.ashr11 = ashr i8 %bf.shl10, 7
  %conv12 = sext i8 %bf.ashr11 to i32
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %conv12)
  %bf.load14 = load i8, i8* getelementptr inbounds (%struct.test2, %struct.test2* @F2, i32 0, i32 0), align 8
  %bf.shl15 = shl i8 %bf.load14, 4
  %bf.ashr16 = ashr i8 %bf.shl15, 4
  %bf.cast17 = sext i8 %bf.ashr16 to i64
  %conv18 = trunc i64 %bf.cast17 to i32
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %conv18)
  %bf.load20 = load i24, i24* bitcast (%struct.test3* @F3 to i24*), align 1
  %bf.shl21 = shl i24 %bf.load20, 23
  %bf.ashr22 = ashr i24 %bf.shl21, 23
  %bf.cast23 = trunc i24 %bf.ashr22 to i8
  %conv24 = sext i8 %bf.cast23 to i32
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %conv24)
  %bf.load26 = load i32, i32* bitcast (%struct.test4* @F4 to i32*), align 2
  %bf.shl27 = shl i32 %bf.load26, 31
  %bf.ashr28 = ashr i32 %bf.shl27, 31
  %bf.cast29 = trunc i32 %bf.ashr28 to i8
  %conv30 = sext i8 %bf.cast29 to i32
  %bf.load31 = load i16, i16* getelementptr inbounds (%struct.test4, %struct.test4* @F4, i32 0, i32 1), align 2
  %bf.shl32 = shl i16 %bf.load31, 2
  %bf.ashr33 = ashr i16 %bf.shl32, 2
  %conv34 = sext i16 %bf.ashr33 to i32
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %conv30, i32 %conv34)
  %bf.load36 = load i24, i24* bitcast (%struct.test5* @F5 to i24*), align 1
  %bf.shl37 = shl i24 %bf.load36, 23
  %bf.ashr38 = ashr i24 %bf.shl37, 23
  %bf.cast39 = trunc i24 %bf.ashr38 to i8
  %conv40 = sext i8 %bf.cast39 to i32
  %bf.load41 = load i24, i24* bitcast (%struct.test5* @F5 to i24*), align 1
  %bf.shl42 = shl i24 %bf.load41, 5
  %bf.ashr43 = ashr i24 %bf.shl42, 23
  %bf.cast44 = trunc i24 %bf.ashr43 to i8
  %conv45 = sext i8 %bf.cast44 to i32
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %conv40, i32 %conv45)
  %bf.load47 = load i64, i64* getelementptr inbounds (%struct.test6, %struct.test6* @F6, i32 0, i32 0), align 4
  %bf.shl48 = shl i64 %bf.load47, 63
  %bf.ashr49 = ashr i64 %bf.shl48, 63
  %bf.cast50 = trunc i64 %bf.ashr49 to i8
  %conv51 = sext i8 %bf.cast50 to i32
  %bf.load52 = load i64, i64* getelementptr inbounds (%struct.test6, %struct.test6* @F6, i32 0, i32 0), align 4
  %bf.ashr53 = ashr i64 %bf.load52, 43
  %bf.cast54 = trunc i64 %bf.ashr53 to i32
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 %conv51, i32 %bf.cast54)
  %1 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 0), align 1
  %conv56 = sext i8 %1 to i32
  %bf.load57 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 1), align 1
  %bf.shl58 = shl i8 %bf.load57, 5
  %bf.ashr59 = ashr i8 %bf.shl58, 5
  %conv60 = sext i8 %bf.ashr59 to i32
  %bf.load61 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 1), align 1
  %bf.shl62 = shl i8 %bf.load61, 2
  %bf.ashr63 = ashr i8 %bf.shl62, 5
  %conv64 = sext i8 %bf.ashr63 to i32
  %2 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 3), align 1
  %conv65 = sext i8 %2 to i32
  %bf.load66 = load i8, i8* getelementptr inbounds (%struct.test, %struct.test* @M, i32 0, i32 4), align 1
  %bf.shl67 = shl i8 %bf.load66, 4
  %bf.ashr68 = ashr i8 %bf.shl67, 4
  %bf.cast69 = sext i8 %bf.ashr68 to i64
  %conv70 = trunc i64 %bf.cast69 to i32
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 %conv56, i32 %conv60, i32 %conv64, i32 %conv65, i32 %conv70)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
