; ModuleID = './MultiSource.Benchmarks.McCat/4.08-main.trig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HPointStruct = type { double, double, double, double }
%struct.ObjPointStruct = type { double, double, double, double, double, double }

@.str = private unnamed_addr constant [30 x i8] c" [[ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f]]\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @MultMatrixMatrix([4 x [4 x double]]* %A, [4 x [4 x double]]* %B, [4 x [4 x double]]* %C) #0 {
entry:
  %A.addr = alloca [4 x [4 x double]]*, align 8
  %B.addr = alloca [4 x [4 x double]]*, align 8
  %C.addr = alloca [4 x [4 x double]]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store [4 x [4 x double]]* %A, [4 x [4 x double]]** %A.addr, align 8
  store [4 x [4 x double]]* %B, [4 x [4 x double]]** %B.addr, align 8
  store [4 x [4 x double]]* %C, [4 x [4 x double]]** %C.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.21, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end.23

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load [4 x [4 x double]]*, [4 x [4 x double]]** %C.addr, align 8
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx5, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.3
  %5 = load i32, i32* %k, align 4
  %cmp7 = icmp slt i32 %5, 4
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %6 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load [4 x [4 x double]]*, [4 x [4 x double]]** %A.addr, align 8
  %arrayidx11 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx11, i32 0, i64 %idxprom9
  %9 = load double, double* %arrayidx12, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %10 to i64
  %11 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load [4 x [4 x double]]*, [4 x [4 x double]]** %B.addr, align 8
  %arrayidx15 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %12, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx15, i32 0, i64 %idxprom13
  %13 = load double, double* %arrayidx16, align 8
  %mul = fmul double %9, %13
  %14 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %16 = load [4 x [4 x double]]*, [4 x [4 x double]]** %C.addr, align 8
  %arrayidx19 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %16, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx19, i32 0, i64 %idxprom17
  %17 = load double, double* %arrayidx20, align 8
  %add = fadd double %17, %mul
  store double %add, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.1

for.end.23:                                       ; preds = %for.cond.1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %20 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @MultMatrixHPoint(%struct.HPointStruct* noalias sret %agg.result, [4 x [4 x double]]* %mat, %struct.HPointStruct* byval align 8 %P) #0 {
entry:
  %mat.addr = alloca [4 x [4 x double]]*, align 8
  %Res = alloca %struct.HPointStruct, align 8
  store [4 x [4 x double]]* %mat, [4 x [4 x double]]** %mat.addr, align 8
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 0
  %2 = load double, double* %arrayidx1, align 8
  %mul = fmul double %0, %2
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx2 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx2, i32 0, i64 1
  %5 = load double, double* %arrayidx3, align 8
  %mul4 = fmul double %3, %5
  %add = fadd double %mul, %mul4
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %7 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx5 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx5, i32 0, i64 2
  %8 = load double, double* %arrayidx6, align 8
  %mul7 = fmul double %6, %8
  %add8 = fadd double %add, %mul7
  %w = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 3
  %9 = load double, double* %w, align 8
  %10 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx9 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %10, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx9, i32 0, i64 3
  %11 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %9, %11
  %add12 = fadd double %add8, %mul11
  %x13 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %Res, i32 0, i32 0
  store double %add12, double* %x13, align 8
  %x14 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 0
  %12 = load double, double* %x14, align 8
  %13 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx15 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %13, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx15, i32 0, i64 0
  %14 = load double, double* %arrayidx16, align 8
  %mul17 = fmul double %12, %14
  %y18 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 1
  %15 = load double, double* %y18, align 8
  %16 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx19 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %16, i32 0, i64 1
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx19, i32 0, i64 1
  %17 = load double, double* %arrayidx20, align 8
  %mul21 = fmul double %15, %17
  %add22 = fadd double %mul17, %mul21
  %z23 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 2
  %18 = load double, double* %z23, align 8
  %19 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx24 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %19, i32 0, i64 1
  %arrayidx25 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx24, i32 0, i64 2
  %20 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %18, %20
  %add27 = fadd double %add22, %mul26
  %w28 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 3
  %21 = load double, double* %w28, align 8
  %22 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx29 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %22, i32 0, i64 1
  %arrayidx30 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx29, i32 0, i64 3
  %23 = load double, double* %arrayidx30, align 8
  %mul31 = fmul double %21, %23
  %add32 = fadd double %add27, %mul31
  %y33 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %Res, i32 0, i32 1
  store double %add32, double* %y33, align 8
  %x34 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 0
  %24 = load double, double* %x34, align 8
  %25 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx35 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %25, i32 0, i64 2
  %arrayidx36 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx35, i32 0, i64 0
  %26 = load double, double* %arrayidx36, align 8
  %mul37 = fmul double %24, %26
  %y38 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 1
  %27 = load double, double* %y38, align 8
  %28 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx39 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %28, i32 0, i64 2
  %arrayidx40 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx39, i32 0, i64 1
  %29 = load double, double* %arrayidx40, align 8
  %mul41 = fmul double %27, %29
  %add42 = fadd double %mul37, %mul41
  %z43 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 2
  %30 = load double, double* %z43, align 8
  %31 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx44 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %31, i32 0, i64 2
  %arrayidx45 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx44, i32 0, i64 2
  %32 = load double, double* %arrayidx45, align 8
  %mul46 = fmul double %30, %32
  %add47 = fadd double %add42, %mul46
  %w48 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 3
  %33 = load double, double* %w48, align 8
  %34 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx49 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %34, i32 0, i64 2
  %arrayidx50 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx49, i32 0, i64 3
  %35 = load double, double* %arrayidx50, align 8
  %mul51 = fmul double %33, %35
  %add52 = fadd double %add47, %mul51
  %z53 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %Res, i32 0, i32 2
  store double %add52, double* %z53, align 8
  %x54 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 0
  %36 = load double, double* %x54, align 8
  %37 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx55 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %37, i32 0, i64 3
  %arrayidx56 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx55, i32 0, i64 0
  %38 = load double, double* %arrayidx56, align 8
  %mul57 = fmul double %36, %38
  %y58 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 1
  %39 = load double, double* %y58, align 8
  %40 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx59 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %40, i32 0, i64 3
  %arrayidx60 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx59, i32 0, i64 1
  %41 = load double, double* %arrayidx60, align 8
  %mul61 = fmul double %39, %41
  %add62 = fadd double %mul57, %mul61
  %z63 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 2
  %42 = load double, double* %z63, align 8
  %43 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx64 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %43, i32 0, i64 3
  %arrayidx65 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx64, i32 0, i64 2
  %44 = load double, double* %arrayidx65, align 8
  %mul66 = fmul double %42, %44
  %add67 = fadd double %add62, %mul66
  %w68 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 3
  %45 = load double, double* %w68, align 8
  %46 = load [4 x [4 x double]]*, [4 x [4 x double]]** %mat.addr, align 8
  %arrayidx69 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %46, i32 0, i64 3
  %arrayidx70 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx69, i32 0, i64 3
  %47 = load double, double* %arrayidx70, align 8
  %mul71 = fmul double %45, %47
  %add72 = fadd double %add67, %mul71
  %w73 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %Res, i32 0, i32 3
  store double %add72, double* %w73, align 8
  %48 = bitcast %struct.HPointStruct* %agg.result to i8*
  %49 = bitcast %struct.HPointStruct* %Res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define [4 x [4 x double]]* @CopyMatrix([4 x [4 x double]]* %Mat) #0 {
entry:
  %Mat.addr = alloca [4 x [4 x double]]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Res = alloca [4 x [4 x double]]*, align 8
  store [4 x [4 x double]]* %Mat, [4 x [4 x double]]** %Mat.addr, align 8
  store [4 x [4 x double]]* null, [4 x [4 x double]]** %Res, align 8
  %0 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Mat.addr, align 8
  %cmp = icmp ne [4 x [4 x double]]* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 128) #1
  %1 = bitcast i8* %call to [4 x [4 x double]]*
  store [4 x [4 x double]]* %1, [4 x [4 x double]]** %Res, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %if.then
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 4
  br i1 %cmp1, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %3, 4
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Mat.addr, align 8
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %6, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 %idxprom
  %7 = load double, double* %arrayidx6, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Res, align 8
  %arrayidx9 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %10, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx9, i32 0, i64 %idxprom7
  store double %7, double* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.13, %entry
  %13 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Res, align 8
  ret [4 x [4 x double]]* %13
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define [4 x [4 x double]]* @IdentMatrix() #0 {
entry:
  %SI = alloca [4 x [4 x double]], align 16
  %I = alloca [4 x [4 x double]]*, align 8
  %0 = bitcast [4 x [4 x double]]* %SI to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 128, i32 16, i1 false)
  %1 = bitcast i8* %0 to [4 x [4 x double]]*
  %2 = getelementptr [4 x [4 x double]], [4 x [4 x double]]* %1, i32 0, i32 0
  %3 = getelementptr [4 x double], [4 x double]* %2, i32 0, i32 0
  store double 1.000000e+00, double* %3
  %4 = getelementptr [4 x [4 x double]], [4 x [4 x double]]* %1, i32 0, i32 1
  %5 = getelementptr [4 x double], [4 x double]* %4, i32 0, i32 1
  store double 1.000000e+00, double* %5
  %6 = getelementptr [4 x [4 x double]], [4 x [4 x double]]* %1, i32 0, i32 2
  %7 = getelementptr [4 x double], [4 x double]* %6, i32 0, i32 2
  store double 1.000000e+00, double* %7
  %8 = getelementptr [4 x [4 x double]], [4 x [4 x double]]* %1, i32 0, i32 3
  %9 = getelementptr [4 x double], [4 x double]* %8, i32 0, i32 3
  store double 1.000000e+00, double* %9
  %call = call noalias i8* @malloc(i64 128) #1
  %10 = bitcast i8* %call to [4 x [4 x double]]*
  store [4 x [4 x double]]* %10, [4 x [4 x double]]** %I, align 8
  %call1 = call [4 x [4 x double]]* @CopyMatrix([4 x [4 x double]]* %SI)
  store [4 x [4 x double]]* %call1, [4 x [4 x double]]** %I, align 8
  %11 = load [4 x [4 x double]]*, [4 x [4 x double]]** %I, align 8
  ret [4 x [4 x double]]* %11
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define [4 x [4 x double]]* @TranslateMatrix(double %dx, double %dy, double %dz) #0 {
entry:
  %dx.addr = alloca double, align 8
  %dy.addr = alloca double, align 8
  %dz.addr = alloca double, align 8
  %TMat = alloca [4 x [4 x double]]*, align 8
  store double %dx, double* %dx.addr, align 8
  store double %dy, double* %dy.addr, align 8
  store double %dz, double* %dz.addr, align 8
  %call = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %call, [4 x [4 x double]]** %TMat, align 8
  %0 = load double, double* %dx.addr, align 8
  %1 = load [4 x [4 x double]]*, [4 x [4 x double]]** %TMat, align 8
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 3
  store double %0, double* %arrayidx1, align 8
  %2 = load double, double* %dy.addr, align 8
  %3 = load [4 x [4 x double]]*, [4 x [4 x double]]** %TMat, align 8
  %arrayidx2 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %3, i32 0, i64 1
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx2, i32 0, i64 3
  store double %2, double* %arrayidx3, align 8
  %4 = load double, double* %dz.addr, align 8
  %5 = load [4 x [4 x double]]*, [4 x [4 x double]]** %TMat, align 8
  %arrayidx4 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i32 0, i64 2
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx4, i32 0, i64 3
  store double %4, double* %arrayidx5, align 8
  %6 = load [4 x [4 x double]]*, [4 x [4 x double]]** %TMat, align 8
  ret [4 x [4 x double]]* %6
}

; Function Attrs: nounwind uwtable
define [4 x [4 x double]]* @RotateMatrix(double %rx, double %ry, double %rz) #0 {
entry:
  %rx.addr = alloca double, align 8
  %ry.addr = alloca double, align 8
  %rz.addr = alloca double, align 8
  %RMatX = alloca [4 x [4 x double]]*, align 8
  %RMatY = alloca [4 x [4 x double]]*, align 8
  %RMatZ = alloca [4 x [4 x double]]*, align 8
  %RMatXY = alloca [4 x [4 x double]]*, align 8
  %RMatXYZ = alloca [4 x [4 x double]]*, align 8
  %cosrx = alloca double, align 8
  %sinrx = alloca double, align 8
  %cosry = alloca double, align 8
  %sinry = alloca double, align 8
  %cosrz = alloca double, align 8
  %sinrz = alloca double, align 8
  store double %rx, double* %rx.addr, align 8
  store double %ry, double* %ry.addr, align 8
  store double %rz, double* %rz.addr, align 8
  %0 = load double, double* %rx.addr, align 8
  %mul = fmul double 0x3F91DF46A2529E84, %0
  %call = call double @cos(double %mul) #1
  store double %call, double* %cosrx, align 8
  %1 = load double, double* %rx.addr, align 8
  %mul1 = fmul double 0x3F91DF46A2529E84, %1
  %call2 = call double @sin(double %mul1) #1
  store double %call2, double* %sinrx, align 8
  %2 = load double, double* %ry.addr, align 8
  %mul3 = fmul double 0x3F91DF46A2529E84, %2
  %call4 = call double @cos(double %mul3) #1
  store double %call4, double* %cosry, align 8
  %3 = load double, double* %ry.addr, align 8
  %mul5 = fmul double 0x3F91DF46A2529E84, %3
  %call6 = call double @sin(double %mul5) #1
  store double %call6, double* %sinry, align 8
  %4 = load double, double* %rz.addr, align 8
  %mul7 = fmul double 0x3F91DF46A2529E84, %4
  %call8 = call double @cos(double %mul7) #1
  store double %call8, double* %cosrz, align 8
  %5 = load double, double* %rz.addr, align 8
  %mul9 = fmul double 0x3F91DF46A2529E84, %5
  %call10 = call double @sin(double %mul9) #1
  store double %call10, double* %sinrz, align 8
  %call11 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %call11, [4 x [4 x double]]** %RMatX, align 8
  %call12 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %call12, [4 x [4 x double]]** %RMatY, align 8
  %call13 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %call13, [4 x [4 x double]]** %RMatZ, align 8
  %call14 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %call14, [4 x [4 x double]]** %RMatXY, align 8
  %call15 = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %call15, [4 x [4 x double]]** %RMatXYZ, align 8
  %6 = load double, double* %cosrx, align 8
  %7 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatX, align 8
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 1
  store double %6, double* %arrayidx16, align 8
  %8 = load double, double* %sinrx, align 8
  %sub = fsub double -0.000000e+00, %8
  %9 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatX, align 8
  %arrayidx17 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i32 0, i64 1
  %arrayidx18 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx17, i32 0, i64 2
  store double %sub, double* %arrayidx18, align 8
  %10 = load double, double* %sinrx, align 8
  %11 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatX, align 8
  %arrayidx19 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %11, i32 0, i64 2
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx19, i32 0, i64 1
  store double %10, double* %arrayidx20, align 8
  %12 = load double, double* %cosrx, align 8
  %13 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatX, align 8
  %arrayidx21 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %13, i32 0, i64 2
  %arrayidx22 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx21, i32 0, i64 2
  store double %12, double* %arrayidx22, align 8
  %14 = load double, double* %cosry, align 8
  %15 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatY, align 8
  %arrayidx23 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %15, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx23, i32 0, i64 0
  store double %14, double* %arrayidx24, align 8
  %16 = load double, double* %sinry, align 8
  %17 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatY, align 8
  %arrayidx25 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %17, i32 0, i64 0
  %arrayidx26 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx25, i32 0, i64 2
  store double %16, double* %arrayidx26, align 8
  %18 = load double, double* %sinry, align 8
  %sub27 = fsub double -0.000000e+00, %18
  %19 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatY, align 8
  %arrayidx28 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %19, i32 0, i64 2
  %arrayidx29 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx28, i32 0, i64 0
  store double %sub27, double* %arrayidx29, align 8
  %20 = load double, double* %cosry, align 8
  %21 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatY, align 8
  %arrayidx30 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %21, i32 0, i64 2
  %arrayidx31 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx30, i32 0, i64 2
  store double %20, double* %arrayidx31, align 8
  %22 = load double, double* %cosrz, align 8
  %23 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatZ, align 8
  %arrayidx32 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %23, i32 0, i64 0
  %arrayidx33 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx32, i32 0, i64 0
  store double %22, double* %arrayidx33, align 8
  %24 = load double, double* %sinrz, align 8
  %sub34 = fsub double -0.000000e+00, %24
  %25 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatZ, align 8
  %arrayidx35 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %25, i32 0, i64 0
  %arrayidx36 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx35, i32 0, i64 1
  store double %sub34, double* %arrayidx36, align 8
  %26 = load double, double* %sinrz, align 8
  %27 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatZ, align 8
  %arrayidx37 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %27, i32 0, i64 1
  %arrayidx38 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx37, i32 0, i64 0
  store double %26, double* %arrayidx38, align 8
  %28 = load double, double* %cosrz, align 8
  %29 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatZ, align 8
  %arrayidx39 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %29, i32 0, i64 1
  %arrayidx40 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx39, i32 0, i64 1
  store double %28, double* %arrayidx40, align 8
  %30 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatX, align 8
  %31 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatY, align 8
  %32 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatXY, align 8
  call void @MultMatrixMatrix([4 x [4 x double]]* %30, [4 x [4 x double]]* %31, [4 x [4 x double]]* %32)
  %33 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatXY, align 8
  %34 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatZ, align 8
  %35 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatXYZ, align 8
  call void @MultMatrixMatrix([4 x [4 x double]]* %33, [4 x [4 x double]]* %34, [4 x [4 x double]]* %35)
  %36 = load [4 x [4 x double]]*, [4 x [4 x double]]** %RMatXYZ, align 8
  ret [4 x [4 x double]]* %36
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define [4 x [4 x double]]* @ScaleMatrix(double %sx, double %sy, double %sz) #0 {
entry:
  %sx.addr = alloca double, align 8
  %sy.addr = alloca double, align 8
  %sz.addr = alloca double, align 8
  %I = alloca [4 x [4 x double]]*, align 8
  store double %sx, double* %sx.addr, align 8
  store double %sy, double* %sy.addr, align 8
  store double %sz, double* %sz.addr, align 8
  %call = call [4 x [4 x double]]* @IdentMatrix()
  store [4 x [4 x double]]* %call, [4 x [4 x double]]** %I, align 8
  %0 = load double, double* %sx.addr, align 8
  %1 = load [4 x [4 x double]]*, [4 x [4 x double]]** %I, align 8
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 0
  store double %0, double* %arrayidx1, align 8
  %2 = load double, double* %sy.addr, align 8
  %3 = load [4 x [4 x double]]*, [4 x [4 x double]]** %I, align 8
  %arrayidx2 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %3, i32 0, i64 1
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx2, i32 0, i64 1
  store double %2, double* %arrayidx3, align 8
  %4 = load double, double* %sz.addr, align 8
  %5 = load [4 x [4 x double]]*, [4 x [4 x double]]** %I, align 8
  %arrayidx4 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i32 0, i64 2
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx4, i32 0, i64 2
  store double %4, double* %arrayidx5, align 8
  %6 = load [4 x [4 x double]]*, [4 x [4 x double]]** %I, align 8
  ret [4 x [4 x double]]* %6
}

; Function Attrs: nounwind uwtable
define void @RotatePoint(%struct.ObjPointStruct* noalias sret %agg.result, %struct.ObjPointStruct* byval align 8 %a, double %rx, double %ry, double %rz) #0 {
entry:
  %rx.addr = alloca double, align 8
  %ry.addr = alloca double, align 8
  %rz.addr = alloca double, align 8
  %Mat = alloca [4 x [4 x double]]*, align 8
  %A = alloca %struct.HPointStruct, align 8
  %tmp = alloca %struct.HPointStruct, align 8
  %tmp1 = alloca %struct.HPointStruct, align 8
  store double %rx, double* %rx.addr, align 8
  store double %ry, double* %ry.addr, align 8
  store double %rz, double* %rz.addr, align 8
  call void @PointToHPoint(%struct.HPointStruct* sret %tmp, %struct.ObjPointStruct* byval align 8 %a)
  %0 = bitcast %struct.HPointStruct* %A to i8*
  %1 = bitcast %struct.HPointStruct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %2 = load double, double* %rx.addr, align 8
  %3 = load double, double* %ry.addr, align 8
  %4 = load double, double* %rz.addr, align 8
  %call = call [4 x [4 x double]]* @RotateMatrix(double %2, double %3, double %4)
  store [4 x [4 x double]]* %call, [4 x [4 x double]]** %Mat, align 8
  %5 = load [4 x [4 x double]]*, [4 x [4 x double]]** %Mat, align 8
  call void @MultMatrixHPoint(%struct.HPointStruct* sret %tmp1, [4 x [4 x double]]* %5, %struct.HPointStruct* byval align 8 %A)
  %6 = bitcast %struct.HPointStruct* %A to i8*
  %7 = bitcast %struct.HPointStruct* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  %8 = bitcast %struct.ObjPointStruct* %agg.result to i8*
  %9 = bitcast %struct.ObjPointStruct* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 48, i32 8, i1 false)
  ret void
}

declare void @PointToHPoint(%struct.HPointStruct* sret, %struct.ObjPointStruct* byval align 8) #3

; Function Attrs: nounwind uwtable
define void @PrintMatrix([4 x double]* %Mat) #0 {
entry:
  %Mat.addr = alloca [4 x double]*, align 8
  store [4 x double]* %Mat, [4 x double]** %Mat.addr, align 8
  %0 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %0, i64 0
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %2 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx2 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx2, i32 0, i64 1
  %3 = load double, double* %arrayidx3, align 8
  %4 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx4 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx4, i32 0, i64 2
  %5 = load double, double* %arrayidx5, align 8
  %6 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx6 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0
  %arrayidx7 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx6, i32 0, i64 3
  %7 = load double, double* %arrayidx7, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), double %1, double %3, double %5, double %7)
  %8 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx8 = getelementptr inbounds [4 x double], [4 x double]* %8, i64 1
  %arrayidx9 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx8, i32 0, i64 0
  %9 = load double, double* %arrayidx9, align 8
  %10 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx10 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 1
  %arrayidx11 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx10, i32 0, i64 1
  %11 = load double, double* %arrayidx11, align 8
  %12 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx12 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 1
  %arrayidx13 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx12, i32 0, i64 2
  %13 = load double, double* %arrayidx13, align 8
  %14 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx14 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 1
  %arrayidx15 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx14, i32 0, i64 3
  %15 = load double, double* %arrayidx15, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), double %9, double %11, double %13, double %15)
  %16 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx17 = getelementptr inbounds [4 x double], [4 x double]* %16, i64 2
  %arrayidx18 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx17, i32 0, i64 0
  %17 = load double, double* %arrayidx18, align 8
  %18 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx19 = getelementptr inbounds [4 x double], [4 x double]* %18, i64 2
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx19, i32 0, i64 1
  %19 = load double, double* %arrayidx20, align 8
  %20 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx21 = getelementptr inbounds [4 x double], [4 x double]* %20, i64 2
  %arrayidx22 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx21, i32 0, i64 2
  %21 = load double, double* %arrayidx22, align 8
  %22 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx23 = getelementptr inbounds [4 x double], [4 x double]* %22, i64 2
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx23, i32 0, i64 3
  %23 = load double, double* %arrayidx24, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), double %17, double %19, double %21, double %23)
  %24 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx26 = getelementptr inbounds [4 x double], [4 x double]* %24, i64 3
  %arrayidx27 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx26, i32 0, i64 0
  %25 = load double, double* %arrayidx27, align 8
  %26 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx28 = getelementptr inbounds [4 x double], [4 x double]* %26, i64 3
  %arrayidx29 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx28, i32 0, i64 1
  %27 = load double, double* %arrayidx29, align 8
  %28 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx30 = getelementptr inbounds [4 x double], [4 x double]* %28, i64 3
  %arrayidx31 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx30, i32 0, i64 2
  %29 = load double, double* %arrayidx31, align 8
  %30 = load [4 x double]*, [4 x double]** %Mat.addr, align 8
  %arrayidx32 = getelementptr inbounds [4 x double], [4 x double]* %30, i64 3
  %arrayidx33 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx32, i32 0, i64 3
  %31 = load double, double* %arrayidx33, align 8
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), double %25, double %27, double %29, double %31)
  ret void
}

declare i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
