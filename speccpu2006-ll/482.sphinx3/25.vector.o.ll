; ModuleID = 'vector.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ptmr_t = type { i8*, double, double, double, double, double, double }
%struct.vector_gautbl_t = type { i32, i32, float**, float**, float*, double }

@.str = private unnamed_addr constant [8 x i8] c" %11.4e\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"vector.c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Iter %4d: %.1fs CPU; sqerr= %e\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Iter %4d: %.1fs CPU; sqerr= %e; delta= %e\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Iter %d: mean[%d] unmapped\0A\00", align 1

; Function Attrs: nounwind uwtable
define double @vector_sum_norm(float* %vec, i32 %len) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %sum = alloca double, align 8
  %f = alloca double, align 8
  %i = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %5 = load double, double* %sum, align 8
  %add = fadd double %5, %conv
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double, double* %sum, align 8
  %cmp1 = fcmp une double %7, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load double, double* %sum, align 8
  %div = fdiv double 1.000000e+00, %8
  store double %div, double* %f, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.13, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %len.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.6, label %for.end.15

for.body.6:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load float*, float** %vec.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %12, i64 %idxprom7
  %13 = load float, float* %arrayidx8, align 4
  %conv9 = fpext float %13 to double
  %14 = load double, double* %f, align 8
  %mul = fmul double %conv9, %14
  %conv10 = fptrunc double %mul to float
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load float*, float** %vec.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %16, i64 %idxprom11
  store float %conv10, float* %arrayidx12, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.6
  %17 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.3

for.end.15:                                       ; preds = %for.cond.3
  br label %if.end

if.end:                                           ; preds = %for.end.15, %for.end
  %18 = load double, double* %sum, align 8
  ret double %18
}

; Function Attrs: nounwind uwtable
define void @vector_floor(float* %vec, i32 %len, double %flr) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %flr.addr = alloca double, align 8
  %i = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store double %flr, double* %flr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %5 = load double, double* %flr.addr, align 8
  %cmp1 = fcmp olt double %conv, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load double, double* %flr.addr, align 8
  %conv3 = fptrunc double %6 to float
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load float*, float** %vec.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %8, i64 %idxprom4
  store float %conv3, float* %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @vector_nz_floor(float* %vec, i32 %len, double %flr) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %flr.addr = alloca double, align 8
  %i = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store double %flr, double* %flr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %cmp1 = fcmp une double %conv, 0.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load float*, float** %vec.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %6, i64 %idxprom3
  %7 = load float, float* %arrayidx4, align 4
  %conv5 = fpext float %7 to double
  %8 = load double, double* %flr.addr, align 8
  %cmp6 = fcmp olt double %conv5, %8
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load double, double* %flr.addr, align 8
  %conv8 = fptrunc double %9 to float
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load float*, float** %vec.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %11, i64 %idxprom9
  store float %conv8, float* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
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
define void @vector_print(%struct._IO_FILE* %fp, float* %v, i32 %dim) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %v.addr = alloca float*, align 8
  %dim.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store float* %v, float** %v.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %dim.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %v.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4
  %conv = fpext float %5 to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), double %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %8)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @vector_is_zero(float* %vec, i32 %len) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %cmp1 = fcmp oeq double %conv, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %len.addr, align 4
  %cmp3 = icmp eq i32 %7, %8
  %conv4 = zext i1 %cmp3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind uwtable
define i32 @vector_maxcomp_int32(i32* %val, i32 %len) #0 {
entry:
  %val.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %bi = alloca i32, align 4
  store i32* %val, i32** %val.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %bi, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %val.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %bi, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** %val.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %bi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %bi, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @vector_mincomp_int32(i32* %val, i32 %len) #0 {
entry:
  %val.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %bi = alloca i32, align 4
  store i32* %val, i32** %val.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %bi, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %val.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %bi, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** %val.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp slt i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %bi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %bi, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @vector_maxcomp_float32(float* %val, i32 %len) #0 {
entry:
  %val.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %bi = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %bi, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %val.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %bi, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %val.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp ogt float %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %bi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %bi, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @vector_mincomp_float32(float* %val, i32 %len) #0 {
entry:
  %val.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %bi = alloca i32, align 4
  store float* %val, float** %val.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %bi, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %val.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %bi, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %val.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp olt float %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %bi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %bi, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @vector_accum(float* %dst, float* %src, i32 %len) #0 {
entry:
  %dst.addr = alloca float*, align 8
  %src.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store float* %dst, float** %dst.addr, align 8
  store float* %src, float** %src.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %src.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %add = fadd float %7, %4
  store float %add, float* %arrayidx2, align 4
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
define i32 @vector_cmp(float* %v1, float* %v2, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %v1.addr = alloca float*, align 8
  %v2.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store float* %v1, float** %v1.addr, align 8
  store float* %v2, float** %v2.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %v1.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %v2.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %cmp3 = fcmp olt float %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load float*, float** %v1.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 %idxprom4
  %10 = load float, float* %arrayidx5, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load float*, float** %v2.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %12, i64 %idxprom6
  %13 = load float, float* %arrayidx7, align 4
  %cmp8 = fcmp ogt float %10, %13
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @vector_mean(float* %mean, float** %data, i32 %n_vec, i32 %n_dim) #0 {
entry:
  %mean.addr = alloca float*, align 8
  %data.addr = alloca float**, align 8
  %n_vec.addr = alloca i32, align 4
  %n_dim.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca double, align 8
  store float* %mean, float** %mean.addr, align 8
  store float** %data, float*** %data.addr, align 8
  store i32 %n_vec, i32* %n_vec.addr, align 4
  store i32 %n_dim, i32* %n_dim.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n_dim.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %mean.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.16, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n_vec.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end.18

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.13, %for.body.3
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %n_dim.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body.6, label %for.end.15

for.body.6:                                       ; preds = %for.cond.4
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load float**, float*** %data.addr, align 8
  %arrayidx9 = getelementptr inbounds float*, float** %11, i64 %idxprom8
  %12 = load float*, float** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds float, float* %12, i64 %idxprom7
  %13 = load float, float* %arrayidx10, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load float*, float** %mean.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %15, i64 %idxprom11
  %16 = load float, float* %arrayidx12, align 4
  %add = fadd float %16, %13
  store float %add, float* %arrayidx12, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.6
  %17 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond.4

for.end.15:                                       ; preds = %for.cond.4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end.15
  %18 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.1

for.end.18:                                       ; preds = %for.cond.1
  %19 = load i32, i32* %n_vec.addr, align 4
  %conv = sitofp i32 %19 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %f, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.26, %for.end.18
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %n_dim.addr, align 4
  %cmp20 = icmp slt i32 %20, %21
  br i1 %cmp20, label %for.body.22, label %for.end.28

for.body.22:                                      ; preds = %for.cond.19
  %22 = load double, double* %f, align 8
  %conv23 = fptrunc double %22 to float
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load float*, float** %mean.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %24, i64 %idxprom24
  %25 = load float, float* %arrayidx25, align 4
  %mul = fmul float %25, %conv23
  store float %mul, float* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.22
  %26 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.19

for.end.28:                                       ; preds = %for.cond.19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define double @vector_dist_eucl(float* %v1, float* %v2, i32 %len) #0 {
entry:
  %v1.addr = alloca float*, align 8
  %v2.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %d = alloca double, align 8
  %i = alloca i32, align 4
  store float* %v1, float** %v1.addr, align 8
  store float* %v2, float** %v2.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store double 0.000000e+00, double* %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %v1.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %v2.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %sub = fsub float %4, %7
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load float*, float** %v1.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %9, i64 %idxprom3
  %10 = load float, float* %arrayidx4, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load float*, float** %v2.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %12, i64 %idxprom5
  %13 = load float, float* %arrayidx6, align 4
  %sub7 = fsub float %10, %13
  %mul = fmul float %sub, %sub7
  %conv = fpext float %mul to double
  %14 = load double, double* %d, align 8
  %add = fadd double %14, %conv
  store double %add, double* %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load double, double* %d, align 8
  ret double %16
}

; Function Attrs: nounwind uwtable
define double @vector_maha_precomp(float* %var, i32 %len) #0 {
entry:
  %var.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %det = alloca double, align 8
  %i = alloca i32, align 4
  store float* %var, float** %var.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store double 0.000000e+00, double* %det, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %var.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %call = call double @log(double %conv) #3
  %5 = load double, double* %det, align 8
  %sub = fsub double %5, %call
  store double %sub, double* %det, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load float*, float** %var.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  %8 = load float, float* %arrayidx2, align 4
  %conv3 = fpext float %8 to double
  %mul = fmul double %conv3, 2.000000e+00
  %div = fdiv double 1.000000e+00, %mul
  %conv4 = fptrunc double %div to float
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load float*, float** %var.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %10, i64 %idxprom5
  store float %conv4, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call7 = call double @log(double 0x401921FB54442D18) #3
  %12 = load i32, i32* %len.addr, align 4
  %conv8 = sitofp i32 %12 to double
  %mul9 = fmul double %call7, %conv8
  %13 = load double, double* %det, align 8
  %sub10 = fsub double %13, %mul9
  store double %sub10, double* %det, align 8
  %14 = load double, double* %det, align 8
  %mul11 = fmul double %14, 5.000000e-01
  ret double %mul11
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define double @vector_dist_maha(float* %vec, float* %mean, float* %varinv, double %loginvdet, i32 %len) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %mean.addr = alloca float*, align 8
  %varinv.addr = alloca float*, align 8
  %loginvdet.addr = alloca double, align 8
  %len.addr = alloca i32, align 4
  %dist = alloca double, align 8
  %diff = alloca double, align 8
  %i = alloca i32, align 4
  store float* %vec, float** %vec.addr, align 8
  store float* %mean, float** %mean.addr, align 8
  store float* %varinv, float** %varinv.addr, align 8
  store double %loginvdet, double* %loginvdet.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load double, double* %loginvdet.addr, align 8
  store double %0, double* %dist, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load float*, float** %mean.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  %8 = load float, float* %arrayidx2, align 4
  %sub = fsub float %5, %8
  %conv = fpext float %sub to double
  store double %conv, double* %diff, align 8
  %9 = load double, double* %diff, align 8
  %10 = load double, double* %diff, align 8
  %mul = fmul double %9, %10
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load float*, float** %varinv.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %12, i64 %idxprom3
  %13 = load float, float* %arrayidx4, align 4
  %conv5 = fpext float %13 to double
  %mul6 = fmul double %mul, %conv5
  %14 = load double, double* %dist, align 8
  %sub7 = fsub double %14, %mul6
  store double %sub7, double* %dist, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load double, double* %dist, align 8
  ret double %16
}

; Function Attrs: nounwind uwtable
define i32 @vector_vqlabel(float* %vec, float** %mean, i32 %rows, i32 %cols, double* %sqerr) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %mean.addr = alloca float**, align 8
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %sqerr.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %besti = alloca i32, align 4
  %d = alloca double, align 8
  %bestd = alloca double, align 8
  store float* %vec, float** %vec.addr, align 8
  store float** %mean, float*** %mean.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  store double* %sqerr, double** %sqerr.addr, align 8
  %0 = load float**, float*** %mean.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %2 = load float*, float** %vec.addr, align 8
  %3 = load i32, i32* %cols.addr, align 4
  %call = call double @vector_dist_eucl(float* %1, float* %2, i32 %3)
  store double %call, double* %bestd, align 8
  store i32 0, i32* %besti, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load float**, float*** %mean.addr, align 8
  %arrayidx1 = getelementptr inbounds float*, float** %7, i64 %idxprom
  %8 = load float*, float** %arrayidx1, align 8
  %9 = load float*, float** %vec.addr, align 8
  %10 = load i32, i32* %cols.addr, align 4
  %call2 = call double @vector_dist_eucl(float* %8, float* %9, i32 %10)
  store double %call2, double* %d, align 8
  %11 = load double, double* %bestd, align 8
  %12 = load double, double* %d, align 8
  %cmp3 = fcmp ogt double %11, %12
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load double, double* %d, align 8
  store double %13, double* %bestd, align 8
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %besti, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load double*, double** %sqerr.addr, align 8
  %tobool = icmp ne double* %16, null
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.end
  %17 = load double, double* %bestd, align 8
  %18 = load double*, double** %sqerr.addr, align 8
  store double %17, double* %18, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.end
  %19 = load i32, i32* %besti, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define double @vector_vqgen(float** %data, i32 %rows, i32 %cols, i32 %vqrows, double %epsilon, i32 %maxiter, float** %mean, i32* %map) #0 {
entry:
  %data.addr = alloca float**, align 8
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %vqrows.addr = alloca i32, align 4
  %epsilon.addr = alloca double, align 8
  %maxiter.addr = alloca i32, align 4
  %mean.addr = alloca float**, align 8
  %map.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %it = alloca i32, align 4
  %seed = alloca i32, align 4
  %sqerr = alloca double, align 8
  %prev_sqerr = alloca double, align 8
  %t = alloca double, align 8
  %sel = alloca i32*, align 8
  %count = alloca i32*, align 8
  %gmean = alloca float*, align 8
  %tm = alloca %struct.ptmr_t, align 8
  store float** %data, float*** %data.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  store i32 %vqrows, i32* %vqrows.addr, align 4
  store double %epsilon, double* %epsilon.addr, align 8
  store i32 %maxiter, i32* %maxiter.addr, align 4
  store float** %mean, float*** %mean.addr, align 8
  store i32* %map, i32** %map.addr, align 8
  store i32 1, i32* %seed, align 4
  store double 0.000000e+00, double* %prev_sqerr, align 8
  %0 = load i32, i32* %rows.addr, align 4
  %add = add nsw i32 %0, 31
  %shr = ashr i32 %add, 5
  %conv = sext i32 %shr to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 326)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %sel, align 8
  call void @ptmr_init(%struct.ptmr_t* %tm)
  call void @ptmr_start(%struct.ptmr_t* %tm)
  %2 = load i32, i32* %seed, align 4
  call void @spec_srand(i32 %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %vqrows.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call double @spec_rand()
  %mul = fmul double %call2, 0x41DFFFFFFFC00000
  %conv3 = fptosi double %mul to i32
  %5 = load i32, i32* %rows.addr, align 4
  %rem = srem i32 %conv3, %5
  store i32 %rem, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %6 = load i32, i32* %r, align 4
  %shr4 = ashr i32 %6, 5
  %idxprom = sext i32 %shr4 to i64
  %7 = load i32*, i32** %sel, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %r, align 4
  %and = and i32 %9, 31
  %shl = shl i32 1, %and
  %and5 = and i32 %8, %shl
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %r, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %r, align 4
  %11 = load i32, i32* %rows.addr, align 4
  %cmp6 = icmp sge i32 %inc, %11
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %r, align 4
  %and8 = and i32 %12, 31
  %shl9 = shl i32 1, %and8
  %13 = load i32, i32* %r, align 4
  %shr10 = ashr i32 %13, 5
  %idxprom11 = sext i32 %shr10 to i64
  %14 = load i32*, i32** %sel, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 %idxprom11
  %15 = load i32, i32* %arrayidx12, align 4
  %or = or i32 %15, %shl9
  store i32 %or, i32* %arrayidx12, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load float**, float*** %mean.addr, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %17, i64 %idxprom13
  %18 = load float*, float** %arrayidx14, align 8
  %19 = bitcast float* %18 to i8*
  %20 = load i32, i32* %r, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load float**, float*** %data.addr, align 8
  %arrayidx16 = getelementptr inbounds float*, float** %21, i64 %idxprom15
  %22 = load float*, float** %arrayidx16, align 8
  %23 = bitcast float* %22 to i8*
  %24 = load i32, i32* %cols.addr, align 4
  %conv17 = sext i32 %24 to i64
  %mul18 = mul i64 %conv17, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %23, i64 %mul18, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %25 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %25, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32*, i32** %sel, align 8
  %27 = bitcast i32* %26 to i8*
  call void @ckd_free(i8* %27)
  %28 = load i32, i32* %vqrows.addr, align 4
  %conv20 = sext i32 %28 to i64
  %call21 = call i8* @__ckd_calloc__(i64 %conv20, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 367)
  %29 = bitcast i8* %call21 to i32*
  store i32* %29, i32** %count, align 8
  %30 = load i32, i32* %cols.addr, align 4
  %conv22 = sext i32 %30 to i64
  %call23 = call i8* @__ckd_calloc__(i64 %conv22, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 370)
  %31 = bitcast i8* %call23 to float*
  store float* %31, float** %gmean, align 8
  %32 = load float*, float** %gmean, align 8
  %33 = load float**, float*** %mean.addr, align 8
  %34 = load i32, i32* %vqrows.addr, align 4
  %35 = load i32, i32* %cols.addr, align 4
  %call24 = call i32 @vector_mean(float* %32, float** %33, i32 %34, i32 %35)
  store i32 0, i32* %it, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.142, %for.end
  store double 0.000000e+00, double* %sqerr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.36, %for.cond.25
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %rows.addr, align 4
  %cmp27 = icmp slt i32 %36, %37
  br i1 %cmp27, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.26
  %38 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %38 to i64
  %39 = load float**, float*** %data.addr, align 8
  %arrayidx31 = getelementptr inbounds float*, float** %39, i64 %idxprom30
  %40 = load float*, float** %arrayidx31, align 8
  %41 = load float**, float*** %mean.addr, align 8
  %42 = load i32, i32* %vqrows.addr, align 4
  %43 = load i32, i32* %cols.addr, align 4
  %call32 = call i32 @vector_vqlabel(float* %40, float** %41, i32 %42, i32 %43, double* %t)
  %44 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load i32*, i32** %map.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %45, i64 %idxprom33
  store i32 %call32, i32* %arrayidx34, align 4
  %46 = load double, double* %t, align 8
  %47 = load double, double* %sqerr, align 8
  %add35 = fadd double %47, %46
  store double %add35, double* %sqerr, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.29
  %48 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %48, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.26

for.end.38:                                       ; preds = %for.cond.26
  call void @ptmr_stop(%struct.ptmr_t* %tm)
  %49 = load i32, i32* %it, align 4
  %cmp39 = icmp eq i32 %49, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %for.end.38
  call void @_E__pr_info_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 383, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %50 = load i32, i32* %it, align 4
  %t_cpu = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %tm, i32 0, i32 1
  %51 = load double, double* %t_cpu, align 8
  %52 = load double, double* %sqerr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 %50, double %51, double %52)
  br label %if.end.43

if.else:                                          ; preds = %for.end.38
  call void @_E__pr_info_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 385, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %53 = load i32, i32* %it, align 4
  %t_cpu42 = getelementptr inbounds %struct.ptmr_t, %struct.ptmr_t* %tm, i32 0, i32 1
  %54 = load double, double* %t_cpu42, align 8
  %55 = load double, double* %sqerr, align 8
  %56 = load double, double* %prev_sqerr, align 8
  %57 = load double, double* %sqerr, align 8
  %sub = fsub double %56, %57
  %58 = load double, double* %prev_sqerr, align 8
  %div = fdiv double %sub, %58
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 %53, double %54, double %55, double %div)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.41
  %59 = load double, double* %sqerr, align 8
  %cmp44 = fcmp oeq double %59, 0.000000e+00
  br i1 %cmp44, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %60 = load i32, i32* %it, align 4
  %61 = load i32, i32* %maxiter.addr, align 4
  %sub46 = sub nsw i32 %61, 1
  %cmp47 = icmp sge i32 %60, %sub46
  br i1 %cmp47, label %if.then.56, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false
  %62 = load i32, i32* %it, align 4
  %cmp50 = icmp sgt i32 %62, 0
  br i1 %cmp50, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %lor.lhs.false.49
  %63 = load double, double* %prev_sqerr, align 8
  %64 = load double, double* %sqerr, align 8
  %sub52 = fsub double %63, %64
  %65 = load double, double* %prev_sqerr, align 8
  %div53 = fdiv double %sub52, %65
  %66 = load double, double* %epsilon.addr, align 8
  %cmp54 = fcmp olt double %div53, %66
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end.43
  br label %for.end.144

if.end.57:                                        ; preds = %land.lhs.true, %lor.lhs.false.49
  %67 = load double, double* %sqerr, align 8
  store double %67, double* %prev_sqerr, align 8
  call void @ptmr_start(%struct.ptmr_t* %tm)
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.75, %if.end.57
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %vqrows.addr, align 4
  %cmp59 = icmp slt i32 %68, %69
  br i1 %cmp59, label %for.body.61, label %for.end.77

for.body.61:                                      ; preds = %for.cond.58
  store i32 0, i32* %j, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.70, %for.body.61
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* %cols.addr, align 4
  %cmp63 = icmp slt i32 %70, %71
  br i1 %cmp63, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.62
  %72 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %72 to i64
  %73 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %73 to i64
  %74 = load float**, float*** %mean.addr, align 8
  %arrayidx68 = getelementptr inbounds float*, float** %74, i64 %idxprom67
  %75 = load float*, float** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds float, float* %75, i64 %idxprom66
  store float 0.000000e+00, float* %arrayidx69, align 4
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.65
  %76 = load i32, i32* %j, align 4
  %inc71 = add nsw i32 %76, 1
  store i32 %inc71, i32* %j, align 4
  br label %for.cond.62

for.end.72:                                       ; preds = %for.cond.62
  %77 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %77 to i64
  %78 = load i32*, i32** %count, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %78, i64 %idxprom73
  store i32 0, i32* %arrayidx74, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.72
  %79 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %79, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond.58

for.end.77:                                       ; preds = %for.cond.58
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.93, %for.end.77
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %rows.addr, align 4
  %cmp79 = icmp slt i32 %80, %81
  br i1 %cmp79, label %for.body.81, label %for.end.95

for.body.81:                                      ; preds = %for.cond.78
  %82 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %82 to i64
  %83 = load i32*, i32** %map.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %83, i64 %idxprom82
  %84 = load i32, i32* %arrayidx83, align 4
  %idxprom84 = sext i32 %84 to i64
  %85 = load float**, float*** %mean.addr, align 8
  %arrayidx85 = getelementptr inbounds float*, float** %85, i64 %idxprom84
  %86 = load float*, float** %arrayidx85, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %87 to i64
  %88 = load float**, float*** %data.addr, align 8
  %arrayidx87 = getelementptr inbounds float*, float** %88, i64 %idxprom86
  %89 = load float*, float** %arrayidx87, align 8
  %90 = load i32, i32* %cols.addr, align 4
  call void @vector_accum(float* %86, float* %89, i32 %90)
  %91 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %91 to i64
  %92 = load i32*, i32** %map.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %92, i64 %idxprom88
  %93 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %93 to i64
  %94 = load i32*, i32** %count, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %94, i64 %idxprom90
  %95 = load i32, i32* %arrayidx91, align 4
  %inc92 = add nsw i32 %95, 1
  store i32 %inc92, i32* %arrayidx91, align 4
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.81
  %96 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %96, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.78

for.end.95:                                       ; preds = %for.cond.78
  store i32 0, i32* %i, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.139, %for.end.95
  %97 = load i32, i32* %i, align 4
  %98 = load i32, i32* %vqrows.addr, align 4
  %cmp97 = icmp slt i32 %97, %98
  br i1 %cmp97, label %for.body.99, label %for.end.141

for.body.99:                                      ; preds = %for.cond.96
  %99 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %99 to i64
  %100 = load i32*, i32** %count, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %100, i64 %idxprom100
  %101 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp sgt i32 %101, 1
  br i1 %cmp102, label %if.then.104, label %if.else.127

if.then.104:                                      ; preds = %for.body.99
  %102 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %102 to i64
  %103 = load i32*, i32** %count, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %103, i64 %idxprom105
  %104 = load i32, i32* %arrayidx106, align 4
  %conv107 = sitofp i32 %104 to double
  %div108 = fdiv double 1.000000e+00, %conv107
  store double %div108, double* %t, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.124, %if.then.104
  %105 = load i32, i32* %j, align 4
  %106 = load i32, i32* %cols.addr, align 4
  %cmp110 = icmp slt i32 %105, %106
  br i1 %cmp110, label %for.body.112, label %for.end.126

for.body.112:                                     ; preds = %for.cond.109
  %107 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %107 to i64
  %108 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %108 to i64
  %109 = load float**, float*** %mean.addr, align 8
  %arrayidx115 = getelementptr inbounds float*, float** %109, i64 %idxprom114
  %110 = load float*, float** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds float, float* %110, i64 %idxprom113
  %111 = load float, float* %arrayidx116, align 4
  %conv117 = fpext float %111 to double
  %112 = load double, double* %t, align 8
  %mul118 = fmul double %conv117, %112
  %conv119 = fptrunc double %mul118 to float
  %113 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %113 to i64
  %114 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %114 to i64
  %115 = load float**, float*** %mean.addr, align 8
  %arrayidx122 = getelementptr inbounds float*, float** %115, i64 %idxprom121
  %116 = load float*, float** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds float, float* %116, i64 %idxprom120
  store float %conv119, float* %arrayidx123, align 4
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.112
  %117 = load i32, i32* %j, align 4
  %inc125 = add nsw i32 %117, 1
  store i32 %inc125, i32* %j, align 4
  br label %for.cond.109

for.end.126:                                      ; preds = %for.cond.109
  br label %if.end.138

if.else.127:                                      ; preds = %for.body.99
  %118 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %118 to i64
  %119 = load i32*, i32** %count, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %119, i64 %idxprom128
  %120 = load i32, i32* %arrayidx129, align 4
  %cmp130 = icmp eq i32 %120, 0
  br i1 %cmp130, label %if.then.132, label %if.end.137

if.then.132:                                      ; preds = %if.else.127
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %121 = load i32, i32* %it, align 4
  %122 = load i32, i32* %i, align 4
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %121, i32 %122)
  %123 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %123 to i64
  %124 = load float**, float*** %mean.addr, align 8
  %arrayidx134 = getelementptr inbounds float*, float** %124, i64 %idxprom133
  %125 = load float*, float** %arrayidx134, align 8
  %126 = bitcast float* %125 to i8*
  %127 = load float*, float** %gmean, align 8
  %128 = bitcast float* %127 to i8*
  %129 = load i32, i32* %cols.addr, align 4
  %conv135 = sext i32 %129 to i64
  %mul136 = mul i64 %conv135, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %128, i64 %mul136, i32 4, i1 false)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.132, %if.else.127
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %for.end.126
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %130 = load i32, i32* %i, align 4
  %inc140 = add nsw i32 %130, 1
  store i32 %inc140, i32* %i, align 4
  br label %for.cond.96

for.end.141:                                      ; preds = %for.cond.96
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %131 = load i32, i32* %it, align 4
  %inc143 = add nsw i32 %131, 1
  store i32 %inc143, i32* %it, align 4
  br label %for.cond.25

for.end.144:                                      ; preds = %if.then.56
  %132 = load i32*, i32** %count, align 8
  %133 = bitcast i32* %132 to i8*
  call void @ckd_free(i8* %133)
  %134 = load float*, float** %gmean, align 8
  %135 = bitcast float* %134 to i8*
  call void @ckd_free(i8* %135)
  %136 = load double, double* %sqerr, align 8
  ret double %136
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare void @ptmr_init(%struct.ptmr_t*) #1

declare void @ptmr_start(%struct.ptmr_t*) #1

declare void @spec_srand(i32) #1

declare double @spec_rand() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @ckd_free(i8*) #1

declare void @ptmr_stop(%struct.ptmr_t*) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: nounwind uwtable
define double @vector_pdf_entropy(float* %p, i32 %len) #0 {
entry:
  %p.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  store float* %p, float** %p.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %p.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %cmp1 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load float*, float** %p.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %6, i64 %idxprom3
  %7 = load float, float* %arrayidx4, align 4
  %conv5 = fpext float %7 to double
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load float*, float** %p.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %9, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %10 to double
  %call = call double @log(double %conv8) #3
  %mul = fmul double %conv5, %call
  %11 = load double, double* %sum, align 8
  %sub = fsub double %11, %mul
  store double %sub, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call double @log(double 2.000000e+00) #3
  %13 = load double, double* %sum, align 8
  %div = fdiv double %13, %call9
  store double %div, double* %sum, align 8
  %14 = load double, double* %sum, align 8
  ret double %14
}

; Function Attrs: nounwind uwtable
define double @vector_pdf_cross_entropy(float* %p1, float* %p2, i32 %len) #0 {
entry:
  %p1.addr = alloca float*, align 8
  %p2.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  store float* %p1, float** %p1.addr, align 8
  store float* %p2, float** %p2.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %p2.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %cmp1 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load float*, float** %p1.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %6, i64 %idxprom3
  %7 = load float, float* %arrayidx4, align 4
  %conv5 = fpext float %7 to double
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load float*, float** %p2.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %9, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %10 to double
  %call = call double @log(double %conv8) #3
  %mul = fmul double %conv5, %call
  %11 = load double, double* %sum, align 8
  %sub = fsub double %11, %mul
  store double %sub, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call double @log(double 2.000000e+00) #3
  %13 = load double, double* %sum, align 8
  %div = fdiv double %13, %call9
  store double %div, double* %sum, align 8
  %14 = load double, double* %sum, align 8
  ret double %14
}

; Function Attrs: nounwind uwtable
define void @vector_gautbl_alloc(%struct.vector_gautbl_t* %gautbl, i32 %n_gau, i32 %veclen) #0 {
entry:
  %gautbl.addr = alloca %struct.vector_gautbl_t*, align 8
  %n_gau.addr = alloca i32, align 4
  %veclen.addr = alloca i32, align 4
  store %struct.vector_gautbl_t* %gautbl, %struct.vector_gautbl_t** %gautbl.addr, align 8
  store i32 %n_gau, i32* %n_gau.addr, align 4
  store i32 %veclen, i32* %veclen.addr, align 4
  %0 = load i32, i32* %n_gau.addr, align 4
  %1 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %n_gau1 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %1, i32 0, i32 0
  store i32 %0, i32* %n_gau1, align 4
  %2 = load i32, i32* %veclen.addr, align 4
  %3 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %veclen2 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %3, i32 0, i32 1
  store i32 %2, i32* %veclen2, align 4
  %4 = load i32, i32* %n_gau.addr, align 4
  %5 = load i32, i32* %veclen.addr, align 4
  %call = call i8** @__ckd_calloc_2d__(i32 %4, i32 %5, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 462)
  %6 = bitcast i8** %call to float**
  %7 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %mean = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %7, i32 0, i32 2
  store float** %6, float*** %mean, align 8
  %8 = load i32, i32* %n_gau.addr, align 4
  %9 = load i32, i32* %veclen.addr, align 4
  %call3 = call i8** @__ckd_calloc_2d__(i32 %8, i32 %9, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 463)
  %10 = bitcast i8** %call3 to float**
  %11 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %var = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %11, i32 0, i32 3
  store float** %10, float*** %var, align 8
  %12 = load i32, i32* %n_gau.addr, align 4
  %conv = sext i32 %12 to i64
  %call4 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 464)
  %13 = bitcast i8* %call4 to float*
  %14 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %lrd = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %14, i32 0, i32 4
  store float* %13, float** %lrd, align 8
  %call5 = call double @logs3_to_log(i32 -939524096)
  %15 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %distfloor = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %15, i32 0, i32 5
  store double %call5, double* %distfloor, align 8
  ret void
}

declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

declare double @logs3_to_log(i32) #1

; Function Attrs: nounwind uwtable
define void @vector_gautbl_free(%struct.vector_gautbl_t* %gautbl) #0 {
entry:
  %gautbl.addr = alloca %struct.vector_gautbl_t*, align 8
  store %struct.vector_gautbl_t* %gautbl, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %0 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %mean = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %0, i32 0, i32 2
  %1 = load float**, float*** %mean, align 8
  %2 = bitcast float** %1 to i8**
  call void @ckd_free_2d(i8** %2)
  %3 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %var = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %3, i32 0, i32 3
  %4 = load float**, float*** %var, align 8
  %5 = bitcast float** %4 to i8**
  call void @ckd_free_2d(i8** %5)
  %6 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %lrd = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %6, i32 0, i32 4
  %7 = load float*, float** %lrd, align 8
  %8 = bitcast float* %7 to i8*
  call void @ckd_free(i8* %8)
  ret void
}

declare void @ckd_free_2d(i8**) #1

; Function Attrs: nounwind uwtable
define void @vector_gautbl_var_floor(%struct.vector_gautbl_t* %gautbl, double %floor) #0 {
entry:
  %gautbl.addr = alloca %struct.vector_gautbl_t*, align 8
  %floor.addr = alloca double, align 8
  %g = alloca i32, align 4
  store %struct.vector_gautbl_t* %gautbl, %struct.vector_gautbl_t** %gautbl.addr, align 8
  store double %floor, double* %floor.addr, align 8
  store i32 0, i32* %g, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %g, align 4
  %1 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %n_gau = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_gau, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %g, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %var = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %4, i32 0, i32 3
  %5 = load float**, float*** %var, align 8
  %arrayidx = getelementptr inbounds float*, float** %5, i64 %idxprom
  %6 = load float*, float** %arrayidx, align 8
  %7 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %veclen = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %7, i32 0, i32 1
  %8 = load i32, i32* %veclen, align 4
  %9 = load double, double* %floor.addr, align 8
  call void @vector_floor(float* %6, i32 %8, double %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %g, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %g, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @vector_gautbl_maha_precomp(%struct.vector_gautbl_t* %gautbl) #0 {
entry:
  %gautbl.addr = alloca %struct.vector_gautbl_t*, align 8
  %g = alloca i32, align 4
  store %struct.vector_gautbl_t* %gautbl, %struct.vector_gautbl_t** %gautbl.addr, align 8
  store i32 0, i32* %g, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %g, align 4
  %1 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %n_gau = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %1, i32 0, i32 0
  %2 = load i32, i32* %n_gau, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %g, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %var = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %4, i32 0, i32 3
  %5 = load float**, float*** %var, align 8
  %arrayidx = getelementptr inbounds float*, float** %5, i64 %idxprom
  %6 = load float*, float** %arrayidx, align 8
  %7 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %veclen = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %7, i32 0, i32 1
  %8 = load i32, i32* %veclen, align 4
  %call = call double @vector_maha_precomp(float* %6, i32 %8)
  %conv = fptrunc double %call to float
  %9 = load i32, i32* %g, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %lrd = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %10, i32 0, i32 4
  %11 = load float*, float** %lrd, align 8
  %arrayidx2 = getelementptr inbounds float, float* %11, i64 %idxprom1
  store float %conv, float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %g, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %g, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @vector_gautbl_eval_logs3(%struct.vector_gautbl_t* %gautbl, i32 %offset, i32 %count, float* %x, i32* %score) #0 {
entry:
  %gautbl.addr = alloca %struct.vector_gautbl_t*, align 8
  %offset.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %x.addr = alloca float*, align 8
  %score.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %f = alloca double, align 8
  %end = alloca i32, align 4
  %veclen = alloca i32, align 4
  %m1 = alloca float*, align 8
  %m2 = alloca float*, align 8
  %v1 = alloca float*, align 8
  %v2 = alloca float*, align 8
  %dval1 = alloca double, align 8
  %dval2 = alloca double, align 8
  %diff1 = alloca double, align 8
  %diff2 = alloca double, align 8
  store %struct.vector_gautbl_t* %gautbl, %struct.vector_gautbl_t** %gautbl.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  store float* %x, float** %x.addr, align 8
  store i32* %score, i32** %score.addr, align 8
  %call = call double @log_to_logs3_factor()
  store double %call, double* %f, align 8
  %0 = load i32, i32* %offset.addr, align 4
  %1 = load i32, i32* %count.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %end, align 4
  %2 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %veclen1 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %2, i32 0, i32 1
  %3 = load i32, i32* %veclen1, align 4
  store i32 %3, i32* %veclen, align 4
  %4 = load i32, i32* %offset.addr, align 4
  store i32 %4, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %entry
  %5 = load i32, i32* %r, align 4
  %6 = load i32, i32* %end, align 4
  %sub = sub nsw i32 %6, 1
  %cmp = icmp slt i32 %5, %sub
  br i1 %cmp, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %r, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %mean = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %8, i32 0, i32 2
  %9 = load float**, float*** %mean, align 8
  %arrayidx = getelementptr inbounds float*, float** %9, i64 %idxprom
  %10 = load float*, float** %arrayidx, align 8
  store float* %10, float** %m1, align 8
  %11 = load i32, i32* %r, align 4
  %add2 = add nsw i32 %11, 1
  %idxprom3 = sext i32 %add2 to i64
  %12 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %mean4 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %12, i32 0, i32 2
  %13 = load float**, float*** %mean4, align 8
  %arrayidx5 = getelementptr inbounds float*, float** %13, i64 %idxprom3
  %14 = load float*, float** %arrayidx5, align 8
  store float* %14, float** %m2, align 8
  %15 = load i32, i32* %r, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %var = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %16, i32 0, i32 3
  %17 = load float**, float*** %var, align 8
  %arrayidx7 = getelementptr inbounds float*, float** %17, i64 %idxprom6
  %18 = load float*, float** %arrayidx7, align 8
  store float* %18, float** %v1, align 8
  %19 = load i32, i32* %r, align 4
  %add8 = add nsw i32 %19, 1
  %idxprom9 = sext i32 %add8 to i64
  %20 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %var10 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %20, i32 0, i32 3
  %21 = load float**, float*** %var10, align 8
  %arrayidx11 = getelementptr inbounds float*, float** %21, i64 %idxprom9
  %22 = load float*, float** %arrayidx11, align 8
  store float* %22, float** %v2, align 8
  %23 = load i32, i32* %r, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %lrd = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %24, i32 0, i32 4
  %25 = load float*, float** %lrd, align 8
  %arrayidx13 = getelementptr inbounds float, float* %25, i64 %idxprom12
  %26 = load float, float* %arrayidx13, align 4
  %conv = fpext float %26 to double
  store double %conv, double* %dval1, align 8
  %27 = load i32, i32* %r, align 4
  %add14 = add nsw i32 %27, 1
  %idxprom15 = sext i32 %add14 to i64
  %28 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %lrd16 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %28, i32 0, i32 4
  %29 = load float*, float** %lrd16, align 8
  %arrayidx17 = getelementptr inbounds float, float* %29, i64 %idxprom15
  %30 = load float, float* %arrayidx17, align 4
  %conv18 = fpext float %30 to double
  store double %conv18, double* %dval2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %veclen, align 4
  %cmp20 = icmp slt i32 %31, %32
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %33 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load float*, float** %x.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %34, i64 %idxprom23
  %35 = load float, float* %arrayidx24, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %36 to i64
  %37 = load float*, float** %m1, align 8
  %arrayidx26 = getelementptr inbounds float, float* %37, i64 %idxprom25
  %38 = load float, float* %arrayidx26, align 4
  %sub27 = fsub float %35, %38
  %conv28 = fpext float %sub27 to double
  store double %conv28, double* %diff1, align 8
  %39 = load double, double* %diff1, align 8
  %40 = load double, double* %diff1, align 8
  %mul = fmul double %39, %40
  %41 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %41 to i64
  %42 = load float*, float** %v1, align 8
  %arrayidx30 = getelementptr inbounds float, float* %42, i64 %idxprom29
  %43 = load float, float* %arrayidx30, align 4
  %conv31 = fpext float %43 to double
  %mul32 = fmul double %mul, %conv31
  %44 = load double, double* %dval1, align 8
  %sub33 = fsub double %44, %mul32
  store double %sub33, double* %dval1, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %45 to i64
  %46 = load float*, float** %x.addr, align 8
  %arrayidx35 = getelementptr inbounds float, float* %46, i64 %idxprom34
  %47 = load float, float* %arrayidx35, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %48 to i64
  %49 = load float*, float** %m2, align 8
  %arrayidx37 = getelementptr inbounds float, float* %49, i64 %idxprom36
  %50 = load float, float* %arrayidx37, align 4
  %sub38 = fsub float %47, %50
  %conv39 = fpext float %sub38 to double
  store double %conv39, double* %diff2, align 8
  %51 = load double, double* %diff2, align 8
  %52 = load double, double* %diff2, align 8
  %mul40 = fmul double %51, %52
  %53 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %53 to i64
  %54 = load float*, float** %v2, align 8
  %arrayidx42 = getelementptr inbounds float, float* %54, i64 %idxprom41
  %55 = load float, float* %arrayidx42, align 4
  %conv43 = fpext float %55 to double
  %mul44 = fmul double %mul40, %conv43
  %56 = load double, double* %dval2, align 8
  %sub45 = fsub double %56, %mul44
  store double %sub45, double* %dval2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %57 = load i32, i32* %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %58 = load double, double* %dval1, align 8
  %59 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %distfloor = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %59, i32 0, i32 5
  %60 = load double, double* %distfloor, align 8
  %cmp46 = fcmp olt double %58, %60
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %61 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %distfloor48 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %61, i32 0, i32 5
  %62 = load double, double* %distfloor48, align 8
  store double %62, double* %dval1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %63 = load double, double* %dval2, align 8
  %64 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %distfloor49 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %64, i32 0, i32 5
  %65 = load double, double* %distfloor49, align 8
  %cmp50 = fcmp olt double %63, %65
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end
  %66 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %distfloor53 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %66, i32 0, i32 5
  %67 = load double, double* %distfloor53, align 8
  store double %67, double* %dval2, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end
  %68 = load double, double* %f, align 8
  %69 = load double, double* %dval1, align 8
  %mul55 = fmul double %68, %69
  %conv56 = fptosi double %mul55 to i32
  %70 = load i32, i32* %r, align 4
  %idxprom57 = sext i32 %70 to i64
  %71 = load i32*, i32** %score.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %71, i64 %idxprom57
  store i32 %conv56, i32* %arrayidx58, align 4
  %72 = load double, double* %f, align 8
  %73 = load double, double* %dval2, align 8
  %mul59 = fmul double %72, %73
  %conv60 = fptosi double %mul59 to i32
  %74 = load i32, i32* %r, align 4
  %add61 = add nsw i32 %74, 1
  %idxprom62 = sext i32 %add61 to i64
  %75 = load i32*, i32** %score.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %75, i64 %idxprom62
  store i32 %conv60, i32* %arrayidx63, align 4
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.54
  %76 = load i32, i32* %r, align 4
  %add65 = add nsw i32 %76, 2
  store i32 %add65, i32* %r, align 4
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  %77 = load i32, i32* %r, align 4
  %78 = load i32, i32* %end, align 4
  %cmp67 = icmp slt i32 %77, %78
  br i1 %cmp67, label %if.then.69, label %if.end.109

if.then.69:                                       ; preds = %for.end.66
  %79 = load i32, i32* %r, align 4
  %idxprom70 = sext i32 %79 to i64
  %80 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %mean71 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %80, i32 0, i32 2
  %81 = load float**, float*** %mean71, align 8
  %arrayidx72 = getelementptr inbounds float*, float** %81, i64 %idxprom70
  %82 = load float*, float** %arrayidx72, align 8
  store float* %82, float** %m1, align 8
  %83 = load i32, i32* %r, align 4
  %idxprom73 = sext i32 %83 to i64
  %84 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %var74 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %84, i32 0, i32 3
  %85 = load float**, float*** %var74, align 8
  %arrayidx75 = getelementptr inbounds float*, float** %85, i64 %idxprom73
  %86 = load float*, float** %arrayidx75, align 8
  store float* %86, float** %v1, align 8
  %87 = load i32, i32* %r, align 4
  %idxprom76 = sext i32 %87 to i64
  %88 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %lrd77 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %88, i32 0, i32 4
  %89 = load float*, float** %lrd77, align 8
  %arrayidx78 = getelementptr inbounds float, float* %89, i64 %idxprom76
  %90 = load float, float* %arrayidx78, align 4
  %conv79 = fpext float %90 to double
  store double %conv79, double* %dval1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.96, %if.then.69
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %veclen, align 4
  %cmp81 = icmp slt i32 %91, %92
  br i1 %cmp81, label %for.body.83, label %for.end.98

for.body.83:                                      ; preds = %for.cond.80
  %93 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %93 to i64
  %94 = load float*, float** %x.addr, align 8
  %arrayidx85 = getelementptr inbounds float, float* %94, i64 %idxprom84
  %95 = load float, float* %arrayidx85, align 4
  %96 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %96 to i64
  %97 = load float*, float** %m1, align 8
  %arrayidx87 = getelementptr inbounds float, float* %97, i64 %idxprom86
  %98 = load float, float* %arrayidx87, align 4
  %sub88 = fsub float %95, %98
  %conv89 = fpext float %sub88 to double
  store double %conv89, double* %diff1, align 8
  %99 = load double, double* %diff1, align 8
  %100 = load double, double* %diff1, align 8
  %mul90 = fmul double %99, %100
  %101 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %101 to i64
  %102 = load float*, float** %v1, align 8
  %arrayidx92 = getelementptr inbounds float, float* %102, i64 %idxprom91
  %103 = load float, float* %arrayidx92, align 4
  %conv93 = fpext float %103 to double
  %mul94 = fmul double %mul90, %conv93
  %104 = load double, double* %dval1, align 8
  %sub95 = fsub double %104, %mul94
  store double %sub95, double* %dval1, align 8
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.83
  %105 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %105, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.80

for.end.98:                                       ; preds = %for.cond.80
  %106 = load double, double* %dval1, align 8
  %107 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %distfloor99 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %107, i32 0, i32 5
  %108 = load double, double* %distfloor99, align 8
  %cmp100 = fcmp olt double %106, %108
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %for.end.98
  %109 = load %struct.vector_gautbl_t*, %struct.vector_gautbl_t** %gautbl.addr, align 8
  %distfloor103 = getelementptr inbounds %struct.vector_gautbl_t, %struct.vector_gautbl_t* %109, i32 0, i32 5
  %110 = load double, double* %distfloor103, align 8
  store double %110, double* %dval1, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %for.end.98
  %111 = load double, double* %f, align 8
  %112 = load double, double* %dval1, align 8
  %mul105 = fmul double %111, %112
  %conv106 = fptosi double %mul105 to i32
  %113 = load i32, i32* %r, align 4
  %idxprom107 = sext i32 %113 to i64
  %114 = load i32*, i32** %score.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %114, i64 %idxprom107
  store i32 %conv106, i32* %arrayidx108, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.104, %for.end.66
  ret void
}

declare double @log_to_logs3_factor() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
