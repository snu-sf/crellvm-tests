; ModuleID = 'qureg.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }
%struct.quantum_matrix_struct = type { i32, i32, { float, float }* }

@.str = private unnamed_addr constant [51 x i8] c"Error! Cannot convert a multi-column-matrix (%i)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Not enough memory for %i-sized hash!\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"QUOBFILE\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"% f %+fi|%lli> (%e) (|\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c">)\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%i: %lli\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%i: %i %llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Not enough memory for %i-sized quantum register!\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @quantum_matrix2qureg(%struct.quantum_reg_struct* noalias sret %agg.result, %struct.quantum_matrix_struct* %m, i32 %width) #0 {
entry:
  %m.addr = alloca %struct.quantum_matrix_struct*, align 8
  %width.addr = alloca i32, align 4
  %reg = alloca %struct.quantum_reg_struct, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.quantum_matrix_struct* %m, %struct.quantum_matrix_struct** %m.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %size, align 4
  %0 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %cols, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %cols1 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %cols1, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i32 %3)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %width.addr, align 4
  %width2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  store i32 %4, i32* %width2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %6, i32 0, i32 0
  %7 = load i32, i32* %rows, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %9, i32 0, i32 2
  %10 = load { float, float }*, { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %10, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, float* %arrayidx.imagp, align 4
  %tobool = fcmp une float %arrayidx.real, 0.000000e+00
  %tobool4 = fcmp une float %arrayidx.imag, 0.000000e+00
  %tobool5 = or i1 %tobool, %tobool4
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  %11 = load i32, i32* %size, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %size, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %12 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %12, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %size, align 4
  %size9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  store i32 %13, i32* %size9, align 4
  %14 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %14, 2
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  store i32 %add, i32* %hashw, align 4
  %15 = load i32, i32* %size, align 4
  %conv = sext i32 %15 to i64
  %call10 = call noalias i8* @calloc(i64 %conv, i64 16) #4
  %16 = bitcast i8* %call10 to %struct.quantum_reg_node_struct*
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %16, %struct.quantum_reg_node_struct** %node, align 8
  %node11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node11, align 8
  %tobool12 = icmp ne %struct.quantum_reg_node_struct* %17, null
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %for.end
  %18 = load i32, i32* %size, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0), i32 %18)
  call void @exit(i32 1) #6
  unreachable

if.end.15:                                        ; preds = %for.end
  %19 = load i32, i32* %size, align 4
  %conv16 = sext i32 %19 to i64
  %mul = mul i64 %conv16, 16
  %call17 = call i64 @quantum_memman(i64 %mul)
  %hashw18 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %20 = load i32, i32* %hashw18, align 4
  %shl = shl i32 1, %20
  %conv19 = sext i32 %shl to i64
  %call20 = call noalias i8* @calloc(i64 %conv19, i64 4) #4
  %21 = bitcast i8* %call20 to i32*
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  store i32* %21, i32** %hash, align 8
  %hash21 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %22 = load i32*, i32** %hash21, align 8
  %tobool22 = icmp ne i32* %22, null
  br i1 %tobool22, label %if.end.27, label %if.then.23

if.then.23:                                       ; preds = %if.end.15
  %hashw24 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %23 = load i32, i32* %hashw24, align 4
  %shl25 = shl i32 1, %23
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i32 %shl25)
  call void @exit(i32 1) #6
  unreachable

if.end.27:                                        ; preds = %if.end.15
  %hashw28 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %24 = load i32, i32* %hashw28, align 4
  %shl29 = shl i32 1, %24
  %conv30 = sext i32 %shl29 to i64
  %mul31 = mul i64 %conv30, 4
  %call32 = call i64 @quantum_memman(i64 %mul31)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.57, %if.end.27
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %rows34 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %rows34, align 4
  %cmp35 = icmp slt i32 %25, %27
  br i1 %cmp35, label %for.body.37, label %for.end.59

for.body.37:                                      ; preds = %for.cond.33
  %28 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %28 to i64
  %29 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t39 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %29, i32 0, i32 2
  %30 = load { float, float }*, { float, float }** %t39, align 8
  %arrayidx40 = getelementptr inbounds { float, float }, { float, float }* %30, i64 %idxprom38
  %arrayidx40.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx40, i32 0, i32 0
  %arrayidx40.real = load float, float* %arrayidx40.realp, align 4
  %arrayidx40.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx40, i32 0, i32 1
  %arrayidx40.imag = load float, float* %arrayidx40.imagp, align 4
  %tobool41 = fcmp une float %arrayidx40.real, 0.000000e+00
  %tobool42 = fcmp une float %arrayidx40.imag, 0.000000e+00
  %tobool43 = or i1 %tobool41, %tobool42
  br i1 %tobool43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %for.body.37
  %31 = load i32, i32* %i, align 4
  %conv45 = sext i32 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %32 to i64
  %node47 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %33 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node47, align 8
  %arrayidx48 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %33, i64 %idxprom46
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx48, i32 0, i32 1
  store i64 %conv45, i64* %state, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %34 to i64
  %35 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t50 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %35, i32 0, i32 2
  %36 = load { float, float }*, { float, float }** %t50, align 8
  %arrayidx51 = getelementptr inbounds { float, float }, { float, float }* %36, i64 %idxprom49
  %arrayidx51.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx51, i32 0, i32 0
  %arrayidx51.real = load float, float* %arrayidx51.realp, align 4
  %arrayidx51.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx51, i32 0, i32 1
  %arrayidx51.imag = load float, float* %arrayidx51.imagp, align 4
  %37 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %37 to i64
  %node53 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %38 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node53, align 8
  %arrayidx54 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %38, i64 %idxprom52
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx54, i32 0, i32 0
  %real = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %arrayidx51.real, float* %real, align 4
  store float %arrayidx51.imag, float* %imag, align 4
  %39 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %j, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.44, %for.body.37
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %40 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %40, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.33

for.end.59:                                       ; preds = %for.cond.33
  %41 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %42 = bitcast %struct.quantum_reg_struct* %reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

declare i64 @quantum_memman(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @quantum_new_qureg(%struct.quantum_reg_struct* noalias sret %agg.result, i64 %initval, i32 %width) #0 {
entry:
  %initval.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %reg = alloca %struct.quantum_reg_struct, align 8
  %c = alloca i8*, align 8
  store i64 %initval, i64* %initval.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  store i32 %0, i32* %width1, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  store i32 1, i32* %size, align 4
  %1 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %1, 2
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  store i32 %add, i32* %hashw, align 4
  %call = call noalias i8* @calloc(i64 1, i64 16) #4
  %2 = bitcast i8* %call to %struct.quantum_reg_node_struct*
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %2, %struct.quantum_reg_node_struct** %node, align 8
  %node2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %3 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node2, align 8
  %tobool = icmp ne %struct.quantum_reg_node_struct* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0), i32 1)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %call4 = call i64 @quantum_memman(i64 16)
  %hashw5 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %4 = load i32, i32* %hashw5, align 4
  %shl = shl i32 1, %4
  %conv = sext i32 %shl to i64
  %call6 = call noalias i8* @calloc(i64 %conv, i64 4) #4
  %5 = bitcast i8* %call6 to i32*
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  store i32* %5, i32** %hash, align 8
  %hash7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %6 = load i32*, i32** %hash7, align 8
  %tobool8 = icmp ne i32* %6, null
  br i1 %tobool8, label %if.end.13, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %hashw10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %7 = load i32, i32* %hashw10, align 4
  %shl11 = shl i32 1, %7
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i32 %shl11)
  call void @exit(i32 1) #6
  unreachable

if.end.13:                                        ; preds = %if.end
  %hashw14 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %8 = load i32, i32* %hashw14, align 4
  %shl15 = shl i32 1, %8
  %conv16 = sext i32 %shl15 to i64
  %mul = mul i64 %conv16, 4
  %call17 = call i64 @quantum_memman(i64 %mul)
  %9 = load i64, i64* %initval.addr, align 8
  %node18 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node18, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 0
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  store i64 %9, i64* %state, align 8
  %node19 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node19, align 8
  %arrayidx20 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 0
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx20, i32 0, i32 0
  %real = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float 1.000000e+00, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  %call21 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call21, i8** %c, align 8
  %12 = load i8*, i8** %c, align 8
  %tobool22 = icmp ne i8* %12, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.13
  call void (...) @quantum_objcode_start()
  %13 = load i8*, i8** %c, align 8
  call void @quantum_objcode_file(i8* %13)
  %call24 = call i32 @atexit(void ()* bitcast (void (i8*)* @quantum_objcode_exit to void ()*)) #4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.13
  %14 = load i64, i64* %initval.addr, align 8
  %call26 = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 0, i64 %14)
  %15 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %16 = bitcast %struct.quantum_reg_struct* %reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

declare void @quantum_objcode_start(...) #1

declare void @quantum_objcode_file(i8*) #1

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #3

declare void @quantum_objcode_exit(i8*) #1

declare i32 @quantum_objcode_put(i8 zeroext, ...) #1

; Function Attrs: nounwind uwtable
define { i64, { float, float }* } @quantum_qureg2matrix(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %retval = alloca %struct.quantum_matrix_struct, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %i = alloca i32, align 4
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %0 = load i32, i32* %width, align 4
  %shl = shl i32 1, %0
  %call = call { i64, { float, float }* } @quantum_new_matrix(i32 1, i32 %shl)
  %1 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %2 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %1, i32 0, i32 0
  %3 = extractvalue { i64, { float, float }* } %call, 0
  store i64 %3, i64* %2, align 8
  %4 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %1, i32 0, i32 1
  %5 = extractvalue { i64, { float, float }* } %call, 1
  store { float, float }* %5, { float, float }** %4, align 8
  %6 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %7 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %9 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %12 to i64
  %node2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node2, align 8
  %arrayidx3 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %13, i64 %idxprom1
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx3, i32 0, i32 1
  %14 = load i64, i64* %state, align 8
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %15 = load { float, float }*, { float, float }** %t, align 8
  %arrayidx4 = getelementptr inbounds { float, float }, { float, float }* %15, i64 %14
  %real = getelementptr inbounds { float, float }, { float, float }* %arrayidx4, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %arrayidx4, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = bitcast %struct.quantum_matrix_struct* %retval to i8*
  %18 = bitcast %struct.quantum_matrix_struct* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = bitcast %struct.quantum_matrix_struct* %retval to { i64, { float, float }* }*
  %20 = load { i64, { float, float }* }, { i64, { float, float }* }* %19, align 8
  ret { i64, { float, float }* } %20
}

declare { i64, { float, float }* } @quantum_new_matrix(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @quantum_destroy_hash(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 4
  %1 = load i32*, i32** %hash, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 2
  %4 = load i32, i32* %hashw, align 4
  %shl = shl i32 1, %4
  %sub = sub nsw i32 0, %shl
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  %call = call i64 @quantum_memman(i64 %mul)
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 4
  store i32* null, i32** %hash1, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @quantum_delete_qureg(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_destroy_hash(%struct.quantum_reg_struct* %0)
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 3
  %2 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %3 = bitcast %struct.quantum_reg_node_struct* %2 to i8*
  call void @free(i8* %3) #4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %sub = sub nsw i32 0, %5
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 16
  %call = call i64 @quantum_memman(i64 %mul)
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 3
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %node1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 3
  %1 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %2 = bitcast %struct.quantum_reg_node_struct* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  %sub = sub nsw i32 0, %4
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 16
  %call = call i64 @quantum_memman(i64 %mul)
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 3
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %node1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_print_qureg(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %coerce17 = alloca { float, float }, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %0 = load i32, i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %3 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %3, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  %5 = load <2 x float>, <2 x float>* %4, align 4
  %call = call float @quantum_real(<2 x float> %5)
  %conv = fpext float %call to double
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %node2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node2, align 8
  %arrayidx3 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %7, i64 %idxprom1
  %amplitude4 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx3, i32 0, i32 0
  %amplitude4.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude4, i32 0, i32 0
  %amplitude4.real = load float, float* %amplitude4.realp, align 4
  %amplitude4.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude4, i32 0, i32 1
  %amplitude4.imag = load float, float* %amplitude4.imagp, align 4
  %real6 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %amplitude4.real, float* %real6, align 4
  store float %amplitude4.imag, float* %imag7, align 4
  %8 = bitcast { float, float }* %coerce5 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 4
  %call8 = call float @quantum_imag(<2 x float> %9)
  %conv9 = fpext float %call8 to double
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %node11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node11, align 8
  %arrayidx12 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 %idxprom10
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx12, i32 0, i32 1
  %12 = load i64, i64* %state, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %node14 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node14, align 8
  %arrayidx15 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %14, i64 %idxprom13
  %amplitude16 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx15, i32 0, i32 0
  %amplitude16.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude16, i32 0, i32 0
  %amplitude16.real = load float, float* %amplitude16.realp, align 4
  %amplitude16.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude16, i32 0, i32 1
  %amplitude16.imag = load float, float* %amplitude16.imagp, align 4
  %real18 = getelementptr inbounds { float, float }, { float, float }* %coerce17, i32 0, i32 0
  %imag19 = getelementptr inbounds { float, float }, { float, float }* %coerce17, i32 0, i32 1
  store float %amplitude16.real, float* %real18, align 4
  store float %amplitude16.imag, float* %imag19, align 4
  %15 = bitcast { float, float }* %coerce17 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %call20 = call float @quantum_prob_inline(<2 x float> %16)
  %conv21 = fpext float %call20 to double
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), double %conv, double %conv9, i64 %12, double %conv21)
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %17 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %17, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %j, align 4
  %cmp24 = icmp sge i32 %18, 0
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %19 = load i32, i32* %j, align 4
  %rem = srem i32 %19, 4
  %cmp27 = icmp eq i32 %rem, 3
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.26
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.26
  %20 = load i32, i32* %j, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  %21 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %21 to i64
  %node31 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %22 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node31, align 8
  %arrayidx32 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %22, i64 %idxprom30
  %state33 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx32, i32 0, i32 1
  %23 = load i64, i64* %state33, align 8
  %and = and i64 %shl, %23
  %cmp34 = icmp ugt i64 %and, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %conv35)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %j, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_real(<2 x float> %a.coerce) #5 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_imag(<2 x float> %a.coerce) #5 {
entry:
  %a = alloca { float, float }, align 8
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 1
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @quantum_prob_inline(<2 x float> %a.coerce) #5 {
entry:
  %a = alloca { float, float }, align 8
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 8
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %real, align 4
  store float %a.imag, float* %imag, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_real(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real2 = load float, float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float, float* %a.imagp3, align 4
  %real6 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %imag7 = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %real6, align 4
  store float %a.imag4, float* %imag7, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>, <2 x float>* %3, align 4
  %call8 = call float @quantum_imag(<2 x float> %4)
  store float %call8, float* %i, align 4
  %5 = load float, float* %r, align 4
  %6 = load float, float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float, float* %i, align 4
  %8 = load float, float* %i, align 4
  %mul9 = fmul float %7, %8
  %add = fadd float %mul, %mul9
  ret float %add
}

; Function Attrs: nounwind uwtable
define void @quantum_print_expn(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %4 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %4, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %5 = load i64, i64* %state, align 8
  %6 = load i32, i32* %i, align 4
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %7 = load i32, i32* %width, align 4
  %div = sdiv i32 %7, 2
  %shl = shl i32 1, %div
  %mul = mul nsw i32 %6, %shl
  %conv = sext i32 %mul to i64
  %sub = sub i64 %5, %conv
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %2, i64 %sub)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_addscratch(i32 %bits, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %bits.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %oldwidth = alloca i32, align 4
  %l = alloca i64, align 8
  store i32 %bits, i32* %bits.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  store i32 %1, i32* %oldwidth, align 4
  %2 = load i32, i32* %bits.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 0
  %4 = load i32, i32* %width1, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %width1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %12 = load i32, i32* %bits.addr, align 4
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 %11, %sh_prom
  store i64 %shl, i64* %l, align 8
  %13 = load i64, i64* %l, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %14 to i64
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node3 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %15, i32 0, i32 3
  %16 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node3, align 8
  %arrayidx4 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %16, i64 %idxprom2
  %state5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx4, i32 0, i32 1
  store i64 %13, i64* %state5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_print_hash(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %1 = load i32, i32* %hashw, align 4
  %shl = shl i32 1, %1
  %cmp = icmp slt i32 %0, %shl
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %5 = load i32*, i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %6, 1
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %hash2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %8 = load i32*, i32** %hash2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom1
  %9 = load i32, i32* %arrayidx3, align 4
  %sub4 = sub nsw i32 %9, 1
  %idxprom5 = sext i32 %sub4 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx6 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom5
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx6, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %3, i32 %sub, i64 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @quantum_kronecker(%struct.quantum_reg_struct* noalias sret %agg.result, %struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct* %reg2) #0 {
entry:
  %reg1.addr = alloca %struct.quantum_reg_struct*, align 8
  %reg2.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %reg = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  store %struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct** %reg1.addr, align 8
  store %struct.quantum_reg_struct* %reg2, %struct.quantum_reg_struct** %reg2.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %width1, align 4
  %add = add nsw i32 %1, %3
  %width2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  store i32 %add, i32* %width2, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size3 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size3, align 4
  %mul = mul nsw i32 %5, %7
  %size4 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  store i32 %mul, i32* %size4, align 4
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %size5 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %size5, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %size6, align 4
  %mul7 = mul nsw i32 %9, %11
  %add8 = add nsw i32 %mul7, 2
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  store i32 %add8, i32* %hashw, align 4
  %size9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %12 = load i32, i32* %size9, align 4
  %conv = sext i32 %12 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 16) #4
  %13 = bitcast i8* %call to %struct.quantum_reg_node_struct*
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %13, %struct.quantum_reg_node_struct** %node, align 8
  %node10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node10, align 8
  %tobool = icmp ne %struct.quantum_reg_node_struct* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %size11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %15 = load i32, i32* %size11, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0), i32 %15)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %size13 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %16 = load i32, i32* %size13, align 4
  %conv14 = sext i32 %16 to i64
  %mul15 = mul i64 %conv14, 16
  %call16 = call i64 @quantum_memman(i64 %mul15)
  %hashw17 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %17 = load i32, i32* %hashw17, align 4
  %shl = shl i32 1, %17
  %conv18 = sext i32 %shl to i64
  %call19 = call noalias i8* @calloc(i64 %conv18, i64 4) #4
  %18 = bitcast i8* %call19 to i32*
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  store i32* %18, i32** %hash, align 8
  %hash20 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %19 = load i32*, i32** %hash20, align 8
  %tobool21 = icmp ne i32* %19, null
  br i1 %tobool21, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %if.end
  %hashw23 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %20 = load i32, i32* %hashw23, align 4
  %shl24 = shl i32 1, %20
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i32 %shl24)
  call void @exit(i32 1) #6
  unreachable

if.end.26:                                        ; preds = %if.end
  %hashw27 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %21 = load i32, i32* %hashw27, align 4
  %shl28 = shl i32 1, %21
  %conv29 = sext i32 %shl28 to i64
  %mul30 = mul i64 %conv29, 4
  %call31 = call i64 @quantum_memman(i64 %mul30)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %if.end.26
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %size32 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size32, align 4
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %for.body
  %25 = load i32, i32* %j, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size35 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %26, i32 0, i32 1
  %27 = load i32, i32* %size35, align 4
  %cmp36 = icmp slt i32 %25, %27
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.34
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %node39 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %29, i32 0, i32 3
  %30 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node39, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %30, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %31 = load i64, i64* %state, align 8
  %32 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %width40 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %32, i32 0, i32 0
  %33 = load i32, i32* %width40, align 4
  %sh_prom = zext i32 %33 to i64
  %shl41 = shl i64 %31, %sh_prom
  %34 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %node43 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %35, i32 0, i32 3
  %36 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node43, align 8
  %arrayidx44 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %36, i64 %idxprom42
  %state45 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx44, i32 0, i32 1
  %37 = load i64, i64* %state45, align 8
  %or = or i64 %shl41, %37
  %38 = load i32, i32* %i, align 4
  %39 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size46 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %39, i32 0, i32 1
  %40 = load i32, i32* %size46, align 4
  %mul47 = mul nsw i32 %38, %40
  %41 = load i32, i32* %j, align 4
  %add48 = add nsw i32 %mul47, %41
  %idxprom49 = sext i32 %add48 to i64
  %node50 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %42 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node50, align 8
  %arrayidx51 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %42, i64 %idxprom49
  %state52 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx51, i32 0, i32 1
  store i64 %or, i64* %state52, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %43 to i64
  %44 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %node54 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %44, i32 0, i32 3
  %45 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node54, align 8
  %arrayidx55 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %45, i64 %idxprom53
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx55, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %46 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %46 to i64
  %47 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %node57 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %47, i32 0, i32 3
  %48 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node57, align 8
  %arrayidx58 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %48, i64 %idxprom56
  %amplitude59 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx58, i32 0, i32 0
  %amplitude59.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude59, i32 0, i32 0
  %amplitude59.real = load float, float* %amplitude59.realp, align 4
  %amplitude59.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude59, i32 0, i32 1
  %amplitude59.imag = load float, float* %amplitude59.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %amplitude59.real
  %mul_bd = fmul float %amplitude.imag, %amplitude59.imag
  %mul_ad = fmul float %amplitude.real, %amplitude59.imag
  %mul_bc = fmul float %amplitude.imag, %amplitude59.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.body.38
  %isnan_cmp60 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp60, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call61 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %amplitude59.real, float %amplitude59.imag) #4
  %49 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call61, <2 x float>* %49, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body.38
  %real_mul_phi = phi float [ %mul_r, %for.body.38 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body.38 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %50 = load i32, i32* %i, align 4
  %51 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size62 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %51, i32 0, i32 1
  %52 = load i32, i32* %size62, align 4
  %mul63 = mul nsw i32 %50, %52
  %53 = load i32, i32* %j, align 4
  %add64 = add nsw i32 %mul63, %53
  %idxprom65 = sext i32 %add64 to i64
  %node66 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %54 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node66, align 8
  %arrayidx67 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %54, i64 %idxprom65
  %amplitude68 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx67, i32 0, i32 0
  %real = getelementptr inbounds { float, float }, { float, float }* %amplitude68, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %amplitude68, i32 0, i32 1
  store float %real_mul_phi, float* %real, align 4
  store float %imag_mul_phi, float* %imag, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %55 = load i32, i32* %j, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end
  %56 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %56, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  %57 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %58 = bitcast %struct.quantum_reg_struct* %reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  ret void
}

declare <2 x float> @__mulsc3(float, float, float, float)

; Function Attrs: nounwind uwtable
define void @quantum_state_collapse(%struct.quantum_reg_struct* noalias sret %agg.result, i32 %pos, i32 %value, %struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %size = alloca i32, align 4
  %d = alloca double, align 8
  %lpat = alloca i64, align 8
  %rpat = alloca i64, align 8
  %pos2 = alloca i64, align 8
  %out = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  %coerce91 = alloca { float, float }, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 0, i32* %size, align 4
  store double 0.000000e+00, double* %d, align 8
  store i64 0, i64* %lpat, align 8
  store i64 0, i64* %rpat, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %pos2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %size1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %2 = load i32, i32* %size1, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %4 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %4, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %5 = load i64, i64* %state, align 8
  %6 = load i64, i64* %pos2, align 8
  %and = and i64 %5, %6
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %value.addr, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %node4 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node4, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom3
  %state6 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %10 = load i64, i64* %state6, align 8
  %11 = load i64, i64* %pos2, align 8
  %and7 = and i64 %10, %11
  %tobool8 = icmp ne i64 %and7, 0
  br i1 %tobool8, label %if.end, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %value.addr, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.9, %land.lhs.true
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %node12 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node12, align 8
  %arrayidx13 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %14, i64 %idxprom11
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx13, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real, align 4
  store float %amplitude.imag, float* %imag, align 4
  %15 = bitcast { float, float }* %coerce to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %call = call float @quantum_prob_inline(<2 x float> %16)
  %conv = fpext float %call to double
  %17 = load double, double* %d, align 8
  %add = fadd double %17, %conv
  store double %add, double* %d, align 8
  %18 = load i32, i32* %size, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.9, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %20 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %20, 1
  %width15 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 0
  store i32 %sub, i32* %width15, align 4
  %21 = load i32, i32* %size, align 4
  %size16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 1
  store i32 %21, i32* %size16, align 4
  %22 = load i32, i32* %size, align 4
  %conv17 = sext i32 %22 to i64
  %call18 = call noalias i8* @calloc(i64 %conv17, i64 16) #4
  %23 = bitcast i8* %call18 to %struct.quantum_reg_node_struct*
  %node19 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %23, %struct.quantum_reg_node_struct** %node19, align 8
  %node20 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %24 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node20, align 8
  %tobool21 = icmp ne %struct.quantum_reg_node_struct* %24, null
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %for.end
  %25 = load i32, i32* %size, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0), i32 %25)
  call void @exit(i32 1) #6
  unreachable

if.end.24:                                        ; preds = %for.end
  %26 = load i32, i32* %size, align 4
  %conv25 = sext i32 %26 to i64
  %mul = mul i64 %conv25, 16
  %call26 = call i64 @quantum_memman(i64 %mul)
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %27 = load i32, i32* %hashw, align 4
  %hashw27 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 2
  store i32 %27, i32* %hashw27, align 4
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %28 = load i32*, i32** %hash, align 8
  %hash28 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 4
  store i32* %28, i32** %hash28, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.102, %if.end.24
  %29 = load i32, i32* %i, align 4
  %size30 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %30 = load i32, i32* %size30, align 4
  %cmp31 = icmp slt i32 %29, %30
  br i1 %cmp31, label %for.body.33, label %for.end.104

for.body.33:                                      ; preds = %for.cond.29
  %31 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %31 to i64
  %node35 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %32 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node35, align 8
  %arrayidx36 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %32, i64 %idxprom34
  %state37 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx36, i32 0, i32 1
  %33 = load i64, i64* %state37, align 8
  %34 = load i64, i64* %pos2, align 8
  %and38 = and i64 %33, %34
  %tobool39 = icmp ne i64 %and38, 0
  br i1 %tobool39, label %land.lhs.true.40, label %lor.lhs.false.42

land.lhs.true.40:                                 ; preds = %for.body.33
  %35 = load i32, i32* %value.addr, align 4
  %tobool41 = icmp ne i32 %35, 0
  br i1 %tobool41, label %if.then.51, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.40, %for.body.33
  %36 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %36 to i64
  %node44 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %37 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node44, align 8
  %arrayidx45 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %37, i64 %idxprom43
  %state46 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx45, i32 0, i32 1
  %38 = load i64, i64* %state46, align 8
  %39 = load i64, i64* %pos2, align 8
  %and47 = and i64 %38, %39
  %tobool48 = icmp ne i64 %and47, 0
  br i1 %tobool48, label %if.end.101, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %lor.lhs.false.42
  %40 = load i32, i32* %value.addr, align 4
  %tobool50 = icmp ne i32 %40, 0
  br i1 %tobool50, label %if.end.101, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.49, %land.lhs.true.40
  store i32 0, i32* %k, align 4
  store i64 0, i64* %rpat, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.59, %if.then.51
  %41 = load i32, i32* %k, align 4
  %42 = load i32, i32* %pos.addr, align 4
  %cmp53 = icmp slt i32 %41, %42
  br i1 %cmp53, label %for.body.55, label %for.end.61

for.body.55:                                      ; preds = %for.cond.52
  %43 = load i32, i32* %k, align 4
  %sh_prom56 = zext i32 %43 to i64
  %shl57 = shl i64 1, %sh_prom56
  %44 = load i64, i64* %rpat, align 8
  %add58 = add i64 %44, %shl57
  store i64 %add58, i64* %rpat, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.55
  %45 = load i32, i32* %k, align 4
  %inc60 = add nsw i32 %45, 1
  store i32 %inc60, i32* %k, align 4
  br label %for.cond.52

for.end.61:                                       ; preds = %for.cond.52
  %46 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %46 to i64
  %node63 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %47 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node63, align 8
  %arrayidx64 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %47, i64 %idxprom62
  %state65 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx64, i32 0, i32 1
  %48 = load i64, i64* %state65, align 8
  %49 = load i64, i64* %rpat, align 8
  %and66 = and i64 %49, %48
  store i64 %and66, i64* %rpat, align 8
  store i32 63, i32* %k, align 4
  store i64 0, i64* %lpat, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.74, %for.end.61
  %50 = load i32, i32* %k, align 4
  %51 = load i32, i32* %pos.addr, align 4
  %cmp68 = icmp sgt i32 %50, %51
  br i1 %cmp68, label %for.body.70, label %for.end.75

for.body.70:                                      ; preds = %for.cond.67
  %52 = load i32, i32* %k, align 4
  %sh_prom71 = zext i32 %52 to i64
  %shl72 = shl i64 1, %sh_prom71
  %53 = load i64, i64* %lpat, align 8
  %add73 = add i64 %53, %shl72
  store i64 %add73, i64* %lpat, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.70
  %54 = load i32, i32* %k, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.67

for.end.75:                                       ; preds = %for.cond.67
  %55 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %55 to i64
  %node77 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %56 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node77, align 8
  %arrayidx78 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %56, i64 %idxprom76
  %state79 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx78, i32 0, i32 1
  %57 = load i64, i64* %state79, align 8
  %58 = load i64, i64* %lpat, align 8
  %and80 = and i64 %58, %57
  store i64 %and80, i64* %lpat, align 8
  %59 = load i64, i64* %lpat, align 8
  %shr = lshr i64 %59, 1
  %60 = load i64, i64* %rpat, align 8
  %or = or i64 %shr, %60
  %61 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %61 to i64
  %node82 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %62 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node82, align 8
  %arrayidx83 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %62, i64 %idxprom81
  %state84 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx83, i32 0, i32 1
  store i64 %or, i64* %state84, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %63 to i64
  %node86 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %64 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node86, align 8
  %arrayidx87 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %64, i64 %idxprom85
  %amplitude88 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx87, i32 0, i32 0
  %amplitude88.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude88, i32 0, i32 0
  %amplitude88.real = load float, float* %amplitude88.realp, align 4
  %amplitude88.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude88, i32 0, i32 1
  %amplitude88.imag = load float, float* %amplitude88.imagp, align 4
  %mul_ac = fmul float %amplitude88.real, 1.000000e+00
  %mul_bd = fmul float %amplitude88.imag, 0.000000e+00
  %mul_ad = fmul float %amplitude88.real, 0.000000e+00
  %mul_bc = fmul float %amplitude88.imag, 1.000000e+00
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.end.75
  %isnan_cmp89 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp89, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call90 = call <2 x float> @__mulsc3(float %amplitude88.real, float %amplitude88.imag, float 1.000000e+00, float 0.000000e+00) #4
  %65 = bitcast { float, float }* %coerce91 to <2 x float>*
  store <2 x float> %call90, <2 x float>* %65, align 4
  %coerce91.realp = getelementptr inbounds { float, float }, { float, float }* %coerce91, i32 0, i32 0
  %coerce91.real = load float, float* %coerce91.realp, align 4
  %coerce91.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce91, i32 0, i32 1
  %coerce91.imag = load float, float* %coerce91.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.end.75
  %real_mul_phi = phi float [ %mul_r, %for.end.75 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce91.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.end.75 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce91.imag, %complex_mul_libcall ]
  %66 = load double, double* %d, align 8
  %call92 = call double @sqrt(double %66) #4
  %conv93 = fptrunc double %call92 to float
  %67 = fdiv float %real_mul_phi, %conv93
  %68 = fdiv float %imag_mul_phi, %conv93
  %69 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %69 to i64
  %node95 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %70 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node95, align 8
  %arrayidx96 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %70, i64 %idxprom94
  %amplitude97 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx96, i32 0, i32 0
  %real98 = getelementptr inbounds { float, float }, { float, float }* %amplitude97, i32 0, i32 0
  %imag99 = getelementptr inbounds { float, float }, { float, float }* %amplitude97, i32 0, i32 1
  store float %67, float* %real98, align 4
  store float %68, float* %imag99, align 4
  %71 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %71, 1
  store i32 %inc100, i32* %j, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %complex_mul_cont, %land.lhs.true.49, %lor.lhs.false.42
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %72 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %72, 1
  store i32 %inc103, i32* %i, align 4
  br label %for.cond.29

for.end.104:                                      ; preds = %for.cond.29
  %73 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %74 = bitcast %struct.quantum_reg_struct* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_dot_product(%struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct* %reg2) #0 {
entry:
  %retval = alloca { float, float }, align 4
  %reg1.addr = alloca %struct.quantum_reg_struct*, align 8
  %reg2.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce24 = alloca { float, float }, align 4
  %coerce31 = alloca { float, float }, align 4
  store %struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct** %reg1.addr, align 8
  store %struct.quantum_reg_struct* %reg2, %struct.quantum_reg_struct** %reg2.addr, align 8
  %real = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 1
  store float 0.000000e+00, float* %real, align 4
  store float 0.000000e+00, float* %imag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 2
  %2 = load i32, i32* %hashw, align 4
  %shl = shl i32 1, %2
  %cmp = icmp slt i32 %0, %shl
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 4
  %5 = load i32*, i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 4
  %cmp2 = icmp slt i32 %7, %9
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %11, i32 0, i32 3
  %12 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %12, i64 %idxprom4
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %13 = load i64, i64* %state, align 8
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  call void @quantum_add_hash(i64 %13, i32 %14, %struct.quantum_reg_struct* %15)
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %16 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.34, %for.end.8
  %17 = load i32, i32* %i, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %size10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %size10, align 4
  %cmp11 = icmp slt i32 %17, %19
  br i1 %cmp11, label %for.body.12, label %for.end.36

for.body.12:                                      ; preds = %for.cond.9
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %node14 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %21, i32 0, i32 3
  %22 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node14, align 8
  %arrayidx15 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %22, i64 %idxprom13
  %state16 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx15, i32 0, i32 1
  %23 = load i64, i64* %state16, align 8
  %24 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %call = call i32 @quantum_get_state(i64 %23, %struct.quantum_reg_struct* byval align 8 %24)
  store i32 %call, i32* %j, align 4
  %25 = load i32, i32* %j, align 4
  %cmp17 = icmp sgt i32 %25, -1
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %node19 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %27, i32 0, i32 3
  %28 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node19, align 8
  %arrayidx20 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %28, i64 %idxprom18
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx20, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 4
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %real21 = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag22 = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %real21, align 4
  store float %amplitude.imag, float* %imag22, align 4
  %29 = bitcast { float, float }* %coerce to <2 x float>*
  %30 = load <2 x float>, <2 x float>* %29, align 4
  %call23 = call <2 x float> @quantum_conj(<2 x float> %30)
  %31 = bitcast { float, float }* %coerce24 to <2 x float>*
  store <2 x float> %call23, <2 x float>* %31, align 4
  %coerce24.realp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 0
  %coerce24.real = load float, float* %coerce24.realp, align 4
  %coerce24.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 1
  %coerce24.imag = load float, float* %coerce24.imagp, align 4
  %32 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %32 to i64
  %33 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %node26 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %33, i32 0, i32 3
  %34 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node26, align 8
  %arrayidx27 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %34, i64 %idxprom25
  %amplitude28 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx27, i32 0, i32 0
  %amplitude28.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude28, i32 0, i32 0
  %amplitude28.real = load float, float* %amplitude28.realp, align 4
  %amplitude28.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude28, i32 0, i32 1
  %amplitude28.imag = load float, float* %amplitude28.imagp, align 4
  %mul_ac = fmul float %coerce24.real, %amplitude28.real
  %mul_bd = fmul float %coerce24.imag, %amplitude28.imag
  %mul_ad = fmul float %coerce24.real, %amplitude28.imag
  %mul_bc = fmul float %coerce24.imag, %amplitude28.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then
  %isnan_cmp29 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp29, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call30 = call <2 x float> @__mulsc3(float %coerce24.real, float %coerce24.imag, float %amplitude28.real, float %amplitude28.imag) #4
  %35 = bitcast { float, float }* %coerce31 to <2 x float>*
  store <2 x float> %call30, <2 x float>* %35, align 4
  %coerce31.realp = getelementptr inbounds { float, float }, { float, float }* %coerce31, i32 0, i32 0
  %coerce31.real = load float, float* %coerce31.realp, align 4
  %coerce31.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce31, i32 0, i32 1
  %coerce31.imag = load float, float* %coerce31.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then
  %real_mul_phi = phi float [ %mul_r, %if.then ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce31.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce31.imag, %complex_mul_libcall ]
  %f.realp = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 0
  %f.real = load float, float* %f.realp, align 4
  %f.imagp = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 1
  %f.imag = load float, float* %f.imagp, align 4
  %add.r = fadd float %f.real, %real_mul_phi
  %add.i = fadd float %f.imag, %imag_mul_phi
  %real32 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 0
  %imag33 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 1
  store float %add.r, float* %real32, align 4
  store float %add.i, float* %imag33, align 4
  br label %if.end

if.end:                                           ; preds = %complex_mul_cont, %for.body.12
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end
  %36 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %36, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.9

for.end.36:                                       ; preds = %for.cond.9
  %f.realp37 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 0
  %f.real38 = load float, float* %f.realp37, align 4
  %f.imagp39 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 1
  %f.imag40 = load float, float* %f.imagp39, align 4
  %real41 = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 0
  %imag42 = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 1
  store float %f.real38, float* %real41, align 4
  store float %f.imag40, float* %imag42, align 4
  %37 = bitcast { float, float }* %retval to <2 x float>*
  %38 = load <2 x float>, <2 x float>* %37, align 4
  ret <2 x float> %38
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @quantum_add_hash(i64 %a, i32 %pos, %struct.quantum_reg_struct* %reg) #5 {
entry:
  %a.addr = alloca i64, align 8
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 2
  %2 = load i32, i32* %hashw, align 4
  %call = call i32 @quantum_hash64(i64 %0, i32 %2)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 4
  %5 = load i32*, i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 2
  %10 = load i32, i32* %hashw1, align 4
  %shl = shl i32 1, %10
  %cmp = icmp eq i32 %8, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash3 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 4
  %14 = load i32*, i32** %hash3, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 %idxprom2
  store i32 %add, i32* %arrayidx4, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quantum_get_state(i64 %a, %struct.quantum_reg_struct* byval align 8 %reg) #5 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %1 = load i32, i32* %hashw, align 4
  %call = call i32 @quantum_hash64(i64 %0, i32 %1)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %3 = load i32*, i32** %hash, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %hash2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %6 = load i32*, i32** %hash2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx3, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom4 = sext i32 %sub to i64
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %8, i64 %idxprom4
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %9 = load i64, i64* %state, align 8
  %10 = load i64, i64* %a.addr, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %hash7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %12 = load i32*, i32** %hash7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %13 = load i32, i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 %13, 1
  store i32 %sub9, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %hashw10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %16 = load i32, i32* %hashw10, align 4
  %shl = shl i32 1, %16
  %cmp11 = icmp eq i32 %15, %shl
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare <2 x float> @quantum_conj(<2 x float>) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quantum_hash64(i64 %key, i32 %width) #5 {
entry:
  %key.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %k32 = alloca i32, align 4
  store i64 %key, i64* %key.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i64, i64* %key.addr, align 8
  %and = and i64 %0, 4294967295
  %1 = load i64, i64* %key.addr, align 8
  %shr = lshr i64 %1, 32
  %xor = xor i64 %and, %shr
  %conv = trunc i64 %xor to i32
  store i32 %conv, i32* %k32, align 4
  %2 = load i32, i32* %k32, align 4
  %conv1 = zext i32 %2 to i64
  %mul = mul i64 %conv1, 2654404609
  %conv2 = trunc i64 %mul to i32
  store i32 %conv2, i32* %k32, align 4
  %3 = load i32, i32* %k32, align 4
  %4 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 32, %4
  %shr3 = lshr i32 %3, %sub
  store i32 %shr3, i32* %k32, align 4
  %5 = load i32, i32* %k32, align 4
  ret i32 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!"branch_weights", i32 1, i32 1048575}
