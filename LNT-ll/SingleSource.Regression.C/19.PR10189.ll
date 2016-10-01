; ModuleID = './SingleSource.Regression.C/19.PR10189.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32 }
%struct.S2 = type { %struct.S0 }
%struct.S0 = type { i32 }
%struct.S3 = type { i32 }

@g_37 = common global i32 0, align 4
@g_177 = common global %struct.S1 zeroinitializer, align 4
@g_6 = common global %struct.S2 zeroinitializer, align 4
@g_169 = common global %struct.S3 zeroinitializer, align 4
@g_8 = common global i16 0, align 2
@g_20 = common global [1 x [1 x [0 x i32]]] zeroinitializer, align 4
@g_1639 = common global [1 x %struct.S2] zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define zeroext i16 @safe_53(i16 signext %ui1, i16 signext %ui2) #0 {
entry:
  %ui1.addr = alloca i16, align 2
  %ui2.addr = alloca i16, align 2
  store i16 %ui1, i16* %ui1.addr, align 2
  store i16 %ui2, i16* %ui2.addr, align 2
  %0 = load i16, i16* %ui1.addr, align 2
  %conv = sext i16 %0 to i32
  %1 = load i16, i16* %ui2.addr, align 2
  %conv1 = sext i16 %1 to i32
  %sub = sub nsw i32 %conv, %conv1
  %conv2 = trunc i32 %sub to i16
  ret i16 %conv2
}

; Function Attrs: nounwind uwtable
define signext i16 @safe_60(i16 signext %left, i32 %right) #0 {
entry:
  %left.addr = alloca i16, align 2
  %right.addr = alloca i32, align 4
  store i16 %left, i16* %left.addr, align 2
  store i32 %right, i32* %right.addr, align 4
  %0 = load i32, i32* %right.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i16, i16* %left.addr, align 2
  %conv = sext i16 %1 to i32
  %2 = load i32, i32* %right.addr, align 4
  %shr = ashr i32 %conv, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shr, %cond.false ]
  %conv1 = trunc i32 %cond to i16
  ret i16 %conv1
}

; Function Attrs: nounwind uwtable
define i32 @func_1(i32 %vo) #0 {
entry:
  %retval = alloca %struct.S2, align 4
  %vo.addr = alloca i32, align 4
  %l_2 = alloca i32, align 4
  store i32 %vo, i32* %vo.addr, align 4
  store i32 1, i32* %l_2, align 4
  %0 = load i32, i32* %l_2, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call = call signext i8 @func_13(i32 0, i16 zeroext 0, i16 signext 0)
  %conv = sext i8 %call to i32
  %tobool1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %1 to i32
  %2 = bitcast %struct.S2* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([1 x %struct.S2]* @g_1639 to i8*), i64 4, i32 4, i1 false)
  %coerce.dive = getelementptr %struct.S2, %struct.S2* %retval, i32 0, i32 0
  %coerce.dive2 = getelementptr %struct.S0, %struct.S0* %coerce.dive, i32 0, i32 0
  %3 = load i32, i32* %coerce.dive2, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define signext i8 @func_13(i32 %p_, i16 zeroext %p_15, i16 signext %p_1) #0 {
entry:
  %p_.addr = alloca i32, align 4
  %p_15.addr = alloca i16, align 2
  %p_1.addr = alloca i16, align 2
  %l_346 = alloca i32, align 4
  %l_701 = alloca i32*, align 8
  store i32 %p_, i32* %p_.addr, align 4
  store i16 %p_15, i16* %p_15.addr, align 2
  store i16 %p_1, i16* %p_1.addr, align 2
  store i32* @g_37, i32** %l_701, align 8
  store i32 2, i32* %l_346, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %0 = load i32, i32* %l_346, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @g_177, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body.2, label %for.end

for.body.2:                                       ; preds = %for.cond.1
  br label %for.inc

for.inc:                                          ; preds = %for.body.2
  %2 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @g_177, i32 0, i32 0), align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* getelementptr inbounds (%struct.S1, %struct.S1* @g_177, i32 0, i32 0), align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i16 0, i16* %p_15.addr, align 2
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.14, %for.end
  %3 = load i16, i16* %p_15.addr, align 2
  %conv = zext i16 %3 to i32
  %cmp4 = icmp sle i32 %conv, 2
  br i1 %cmp4, label %for.body.6, label %for.end.18

for.body.6:                                       ; preds = %for.cond.3
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.S2, %struct.S2* @g_6, i32 0, i32 0, i32 0), align 4
  %conv7 = trunc i32 %4 to i16
  %5 = load i32, i32* getelementptr inbounds (%struct.S3, %struct.S3* @g_169, i32 0, i32 0), align 4
  %conv8 = trunc i32 %5 to i8
  %call = call signext i8 @func_21(i8 zeroext %conv8, i32 0, i32* null)
  %conv9 = sext i8 %call to i32
  %call10 = call signext i16 @safe_60(i16 signext %conv7, i32 %conv9)
  %conv11 = sext i16 %call10 to i32
  %cmp12 = icmp sgt i32 %conv11, 0
  %conv13 = zext i1 %cmp12 to i32
  %6 = load i32*, i32** %l_701, align 8
  store i32 %conv13, i32* %6, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.6
  %7 = load i16, i16* %p_15.addr, align 2
  %conv15 = zext i16 %7 to i32
  %add16 = add nsw i32 %conv15, 1
  %conv17 = trunc i32 %add16 to i16
  store i16 %conv17, i16* %p_15.addr, align 2
  br label %for.cond.3

for.end.18:                                       ; preds = %for.cond.3
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.18
  %8 = load i32, i32* %l_346, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %l_346, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret i8 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define signext i8 @func_21(i8 zeroext %p_, i32 %p_2, i32* %p_24) #0 {
entry:
  %p_.addr = alloca i8, align 1
  %p_2.addr = alloca i32, align 4
  %p_24.addr = alloca i32*, align 8
  %l_30 = alloca i32*, align 8
  %l_29 = alloca i32**, align 8
  store i8 %p_, i8* %p_.addr, align 1
  store i32 %p_2, i32* %p_2.addr, align 4
  store i32* %p_24, i32** %p_24.addr, align 8
  store i32* getelementptr inbounds ([1 x [1 x [0 x i32]]], [1 x [1 x [0 x i32]]]* @g_20, i32 0, i64 0, i64 0, i64 1), i32** %l_30, align 8
  store i32** %l_30, i32*** %l_29, align 8
  %0 = load i32*, i32** %l_30, align 8
  %1 = load i32, i32* %0, align 4
  %conv = trunc i32 %1 to i16
  %2 = load i16, i16* @g_8, align 2
  %call = call zeroext i16 @safe_53(i16 signext %conv, i16 signext %2)
  %conv1 = zext i16 %call to i32
  %3 = load i32**, i32*** %l_29, align 8
  %4 = load i32*, i32** %3, align 8
  store i32 %conv1, i32* %4, align 4
  %5 = load i32**, i32*** %l_29, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  %conv2 = trunc i32 %7 to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %coerce = alloca %struct.S2, align 4
  store i32 0, i32* %retval
  %call = call i32 (...) bitcast (i32 (i32)* @func_1 to i32 (...)*)()
  %coerce.dive = getelementptr %struct.S2, %struct.S2* %coerce, i32 0, i32 0
  %coerce.dive1 = getelementptr %struct.S0, %struct.S0* %coerce.dive, i32 0, i32 0
  store i32 %call, i32* %coerce.dive1, align 4
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
