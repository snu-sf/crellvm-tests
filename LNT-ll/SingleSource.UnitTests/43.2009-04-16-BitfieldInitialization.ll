; ModuleID = './SingleSource.UnitTests/43.2009-04-16-BitfieldInitialization.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ty2 = type <{ float, i8, i32 }>
%struct.ty4 = type <{ x86_fp80, i8, x86_fp80 }>
%struct.anon = type { i8, i8 }
%struct.anon.2 = type <{ x86_fp80, i8 }>
%struct.sDescrItem = type { i8, i8*, i8 }
%struct.t10s = type <{ i16, [2 x i8], i32* }>
%struct.ty = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ty3 = type { i32, [0 x i8] }
%struct.anon.1 = type <{ i8, i16 }>
%struct.anon.0 = type <{ i8, i16 }>
%struct.anon.3 = type <{ i8, i16 }>
%struct.anon.4 = type <{ i8, i16 }>
%struct.resword = type { i32*, i32 }

@t1 = global { i32, [4 x i8], { i32, [4 x i8] } } { i32 101, [4 x i8] undef, { i32, [4 x i8] } { i32 1, [4 x i8] undef } }, align 8
@t2 = global %struct.ty2 <{ float 1.010000e+02, i8 1, i32 204 }>, align 1
@t3 = global { i32, [3 x i8] } { i32 4, [3 x i8] c"fo\00" }, align 4
@t4 = global %struct.ty4 <{ x86_fp80 0xK3FFF8000000000000000, i8 4, x86_fp80 0xK40038800000000000000 }>, align 1
@t5a = global %struct.anon { i8 101, i8 15 }, align 1
@t5b = global { i8, i8, i8 } { i8 101, i8 -49, i8 4 }, align 1
@t5 = global { i8, i8, i8 } { i8 101, i8 -65, i8 7 }, align 1
@t6 = global %struct.anon.2 <{ x86_fp80 0xK4005F6D2F1A9FBE77000, i8 5 }>, align 1
@t7 = global { i8, i8, i8 } { i8 101, i8 63, i8 0 }, align 1
@t7a = global { i8, i8, i8 } { i8 101, i8 -65, i8 7 }, align 1
@t8 = global %struct.sDescrItem { i8 16, i8* null, i8 32 }, align 8
@t9 = global { i32*, i8, i8, i8, i8 } { i32* null, i8 123, i8 0, i8 -56, i8 1 }, align 8
@x = global i32 42, align 4
@t10 = global %struct.t10s <{ i16 0, [2 x i8] undef, i32* @x }>, align 4
@.str = private unnamed_addr constant [11 x i8] c"1: %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"2: %f, %d, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"3: %d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"4: %f %d %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"5: %d %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"5a: %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"5b: %d %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"6: %Lf %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"7: %d %d %d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"7a: %d %d %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"8: %d %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"9: %d %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"10: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i32, i32* getelementptr inbounds (%struct.ty, %struct.ty* bitcast ({ i32, [4 x i8], { i32, [4 x i8] } }* @t1 to %struct.ty*), i32 0, i32 0), align 4
  %1 = load i32, i32* bitcast (%union.anon* getelementptr inbounds (%struct.ty, %struct.ty* bitcast ({ i32, [4 x i8], { i32, [4 x i8] } }* @t1 to %struct.ty*), i32 0, i32 1) to i32*), align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %1)
  %2 = load float, float* getelementptr inbounds (%struct.ty2, %struct.ty2* @t2, i32 0, i32 0), align 1
  %conv = fpext float %2 to double
  %3 = load i8, i8* getelementptr inbounds (%struct.ty2, %struct.ty2* @t2, i32 0, i32 1), align 1
  %conv1 = sext i8 %3 to i32
  %4 = load i32, i32* getelementptr inbounds (%struct.ty2, %struct.ty2* @t2, i32 0, i32 2), align 1
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), double %conv, i32 %conv1, i32 %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.ty3, %struct.ty3* bitcast ({ i32, [3 x i8] }* @t3 to %struct.ty3*), i32 0, i32 0), align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %5, i8* getelementptr inbounds (%struct.ty3, %struct.ty3* bitcast ({ i32, [3 x i8] }* @t3 to %struct.ty3*), i32 0, i32 1, i32 0))
  %6 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.ty4, %struct.ty4* @t4, i32 0, i32 0), align 1
  %conv4 = fptrunc x86_fp80 %6 to double
  %7 = load i8, i8* getelementptr inbounds (%struct.ty4, %struct.ty4* @t4, i32 0, i32 1), align 1
  %conv5 = sext i8 %7 to i32
  %8 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.ty4, %struct.ty4* @t4, i32 0, i32 2), align 1
  %conv6 = fptrunc x86_fp80 %8 to double
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), double %conv4, i32 %conv5, double %conv6)
  %9 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i8, i8, i8 }* @t5 to %struct.anon.1*), i32 0, i32 0), align 1
  %conv8 = sext i8 %9 to i32
  %bf.load = load i16, i16* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i8, i8, i8 }* @t5 to %struct.anon.1*), i32 0, i32 1), align 1
  %bf.clear = and i16 %bf.load, 15
  %bf.cast = trunc i16 %bf.clear to i8
  %conv9 = zext i8 %bf.cast to i32
  %bf.load10 = load i16, i16* getelementptr inbounds (%struct.anon.1, %struct.anon.1* bitcast ({ i8, i8, i8 }* @t5 to %struct.anon.1*), i32 0, i32 1), align 1
  %bf.lshr = lshr i16 %bf.load10, 4
  %bf.clear11 = and i16 %bf.lshr, 127
  %bf.cast12 = trunc i16 %bf.clear11 to i8
  %conv13 = zext i8 %bf.cast12 to i32
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 %conv8, i32 %conv9, i32 %conv13)
  %10 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t5a, i32 0, i32 0), align 1
  %conv15 = sext i8 %10 to i32
  %bf.load16 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @t5a, i32 0, i32 1), align 1
  %bf.clear17 = and i8 %bf.load16, 15
  %conv18 = zext i8 %bf.clear17 to i32
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %conv15, i32 %conv18)
  %11 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* bitcast ({ i8, i8, i8 }* @t5b to %struct.anon.0*), i32 0, i32 0), align 1
  %conv20 = sext i8 %11 to i32
  %bf.load21 = load i16, i16* getelementptr inbounds (%struct.anon.0, %struct.anon.0* bitcast ({ i8, i8, i8 }* @t5b to %struct.anon.0*), i32 0, i32 1), align 1
  %bf.clear22 = and i16 %bf.load21, 4095
  %conv23 = zext i16 %bf.clear22 to i32
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 %conv20, i32 %conv23)
  %12 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t6, i32 0, i32 0), align 1
  %bf.load25 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t6, i32 0, i32 1), align 1
  %bf.clear26 = and i8 %bf.load25, 15
  %conv27 = zext i8 %bf.clear26 to i32
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), x86_fp80 %12, i32 %conv27)
  %13 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* bitcast ({ i8, i8, i8 }* @t7 to %struct.anon.3*), i32 0, i32 0), align 1
  %conv29 = sext i8 %13 to i32
  %bf.load30 = load i16, i16* getelementptr inbounds (%struct.anon.3, %struct.anon.3* bitcast ({ i8, i8, i8 }* @t7 to %struct.anon.3*), i32 0, i32 1), align 1
  %bf.clear31 = and i16 %bf.load30, 15
  %bf.cast32 = trunc i16 %bf.clear31 to i8
  %conv33 = zext i8 %bf.cast32 to i32
  %bf.load34 = load i16, i16* getelementptr inbounds (%struct.anon.3, %struct.anon.3* bitcast ({ i8, i8, i8 }* @t7 to %struct.anon.3*), i32 0, i32 1), align 1
  %bf.lshr35 = lshr i16 %bf.load34, 4
  %bf.clear36 = and i16 %bf.lshr35, 7
  %bf.cast37 = trunc i16 %bf.clear36 to i8
  %conv38 = zext i8 %bf.cast37 to i32
  %bf.load39 = load i16, i16* getelementptr inbounds (%struct.anon.3, %struct.anon.3* bitcast ({ i8, i8, i8 }* @t7 to %struct.anon.3*), i32 0, i32 1), align 1
  %bf.lshr40 = lshr i16 %bf.load39, 7
  %bf.clear41 = and i16 %bf.lshr40, 127
  %bf.cast42 = trunc i16 %bf.clear41 to i8
  %conv43 = zext i8 %bf.cast42 to i32
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 %conv29, i32 %conv33, i32 %conv38, i32 %conv43)
  %14 = load i8, i8* getelementptr inbounds (%struct.anon.4, %struct.anon.4* bitcast ({ i8, i8, i8 }* @t7a to %struct.anon.4*), i32 0, i32 0), align 1
  %conv45 = sext i8 %14 to i32
  %bf.load46 = load i16, i16* getelementptr inbounds (%struct.anon.4, %struct.anon.4* bitcast ({ i8, i8, i8 }* @t7a to %struct.anon.4*), i32 0, i32 1), align 1
  %bf.clear47 = and i16 %bf.load46, 15
  %conv48 = zext i16 %bf.clear47 to i32
  %bf.load49 = load i16, i16* getelementptr inbounds (%struct.anon.4, %struct.anon.4* bitcast ({ i8, i8, i8 }* @t7a to %struct.anon.4*), i32 0, i32 1), align 1
  %bf.lshr50 = lshr i16 %bf.load49, 4
  %conv51 = zext i16 %bf.lshr50 to i32
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %conv45, i32 %conv48, i32 %conv51)
  %15 = load i8, i8* getelementptr inbounds (%struct.sDescrItem, %struct.sDescrItem* @t8, i32 0, i32 0), align 1
  %conv53 = sext i8 %15 to i32
  %16 = load i8, i8* getelementptr inbounds (%struct.sDescrItem, %struct.sDescrItem* @t8, i32 0, i32 2), align 1
  %conv54 = sext i8 %16 to i32
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %conv53, i32 %conv54)
  %bf.load56 = load i32, i32* getelementptr inbounds (%struct.resword, %struct.resword* bitcast ({ i32*, i8, i8, i8, i8 }* @t9 to %struct.resword*), i32 0, i32 1), align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %bf.load58 = load i32, i32* getelementptr inbounds (%struct.resword, %struct.resword* bitcast ({ i32*, i8, i8, i8, i8 }* @t9 to %struct.resword*), i32 0, i32 1), align 8
  %bf.ashr = ashr i32 %bf.load58, 16
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 %bf.clear57, i32 %bf.ashr)
  %17 = load i32*, i32** getelementptr inbounds (%struct.t10s, %struct.t10s* @t10, i32 0, i32 2), align 4
  %18 = load i32, i32* %17, align 4
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %18)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
