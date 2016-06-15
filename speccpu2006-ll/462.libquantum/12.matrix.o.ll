; ModuleID = 'matrix.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_matrix_struct = type { i32, i32, { float, float }* }

@quantum_memman.mem = internal global i64 0, align 8
@quantum_memman.max = internal global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Not enogh memory for %ix%i-Matrix!\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"% f %+fi\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @quantum_memman(i64 %change) #0 {
entry:
  %change.addr = alloca i64, align 8
  store i64 %change, i64* %change.addr, align 8
  %0 = load i64, i64* %change.addr, align 8
  %1 = load i64, i64* @quantum_memman.mem, align 8
  %add = add nsw i64 %1, %0
  store i64 %add, i64* @quantum_memman.mem, align 8
  %2 = load i64, i64* @quantum_memman.mem, align 8
  %3 = load i64, i64* @quantum_memman.max, align 8
  %cmp = icmp sgt i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* @quantum_memman.mem, align 8
  store i64 %4, i64* @quantum_memman.max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* @quantum_memman.mem, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define { i64, { float, float }* } @quantum_new_matrix(i32 %cols, i32 %rows) #0 {
entry:
  %retval = alloca %struct.quantum_matrix_struct, align 8
  %cols.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %m = alloca %struct.quantum_matrix_struct, align 8
  store i32 %cols, i32* %cols.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %rows1 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  store i32 %0, i32* %rows1, align 4
  %1 = load i32, i32* %cols.addr, align 4
  %cols2 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  store i32 %1, i32* %cols2, align 4
  %2 = load i32, i32* %cols.addr, align 4
  %3 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %2, %3
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %4 = bitcast i8* %call to { float, float }*
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  store { float, float }* %4, { float, float }** %t, align 8
  %t3 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %5 = load { float, float }*, { float, float }** %t3, align 8
  %tobool = icmp ne { float, float }* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %rows.addr, align 4
  %7 = load i32, i32* %cols.addr, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %6, i32 %7)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %cols.addr, align 4
  %conv5 = sext i32 %8 to i64
  %mul6 = mul i64 8, %conv5
  %9 = load i32, i32* %rows.addr, align 4
  %conv7 = sext i32 %9 to i64
  %mul8 = mul i64 %mul6, %conv7
  %call9 = call i64 @quantum_memman(i64 %mul8)
  %10 = bitcast %struct.quantum_matrix_struct* %retval to i8*
  %11 = bitcast %struct.quantum_matrix_struct* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.quantum_matrix_struct* %retval to { i64, { float, float }* }*
  %13 = load { i64, { float, float }* }, { i64, { float, float }* }* %12, align 8
  ret { i64, { float, float }* } %13
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m) #0 {
entry:
  %m.addr = alloca %struct.quantum_matrix_struct*, align 8
  store %struct.quantum_matrix_struct* %m, %struct.quantum_matrix_struct** %m.addr, align 8
  %0 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %0, i32 0, i32 2
  %1 = load { float, float }*, { float, float }** %t, align 8
  %2 = bitcast { float, float }* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %cols, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 -8, %conv
  %5 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %5, i32 0, i32 0
  %6 = load i32, i32* %rows, align 4
  %conv1 = sext i32 %6 to i64
  %mul2 = mul i64 %mul, %conv1
  %call = call i64 @quantum_memman(i64 %mul2)
  %7 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t3 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %7, i32 0, i32 2
  store { float, float }* null, { float, float }** %t3, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @quantum_print_matrix(i64 %m.coerce0, { float, float }* %m.coerce1) #0 {
entry:
  %m = alloca %struct.quantum_matrix_struct, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %z = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce13 = alloca { float, float }, align 4
  %0 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %1 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 0
  store i64 %m.coerce0, i64* %1
  %2 = getelementptr { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 1
  store { float, float }* %m.coerce1, { float, float }** %2
  store i32 0, i32* %z, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %z, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %z, align 4
  %shl = shl i32 1, %3
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %4 = load i32, i32* %rows, align 4
  %cmp = icmp slt i32 %shl, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %z, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %z, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %while.end
  %6 = load i32, i32* %i, align 4
  %rows1 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %7 = load i32, i32* %rows1, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %9 = load i32, i32* %cols, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %i, align 4
  %cols6 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %12 = load i32, i32* %cols6, align 4
  %mul = mul nsw i32 %11, %12
  %add = add nsw i32 %10, %mul
  %idxprom = sext i32 %add to i64
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %13 = load { float, float }*, { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %13, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, float* %arrayidx.imagp, align 4
  %real = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %imag = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %arrayidx.real, float* %real, align 4
  store float %arrayidx.imag, float* %imag, align 4
  %14 = bitcast { float, float }* %coerce to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 4
  %call = call float @quantum_real(<2 x float> %15)
  %conv = fpext float %call to double
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %i, align 4
  %cols7 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %18 = load i32, i32* %cols7, align 4
  %mul8 = mul nsw i32 %17, %18
  %add9 = add nsw i32 %16, %mul8
  %idxprom10 = sext i32 %add9 to i64
  %t11 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %19 = load { float, float }*, { float, float }** %t11, align 8
  %arrayidx12 = getelementptr inbounds { float, float }, { float, float }* %19, i64 %idxprom10
  %arrayidx12.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx12, i32 0, i32 0
  %arrayidx12.real = load float, float* %arrayidx12.realp, align 4
  %arrayidx12.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx12, i32 0, i32 1
  %arrayidx12.imag = load float, float* %arrayidx12.imagp, align 4
  %real14 = getelementptr inbounds { float, float }, { float, float }* %coerce13, i32 0, i32 0
  %imag15 = getelementptr inbounds { float, float }, { float, float }* %coerce13, i32 0, i32 1
  store float %arrayidx12.real, float* %real14, align 4
  store float %arrayidx12.imag, float* %imag15, align 4
  %20 = bitcast { float, float }* %coerce13 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 4
  %call16 = call float @quantum_imag(<2 x float> %21)
  %conv17 = fpext float %call16 to double
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), double %conv, double %conv17)
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %22 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %23, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
