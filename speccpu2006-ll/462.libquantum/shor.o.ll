; ModuleID = 'shor.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }

@.str = private unnamed_addr constant [23 x i8] c"Usage: shor [number]\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid number\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"N = %i, %i qubits required\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Random seed: %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Impossible Measurement!\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Measured zero, try again.\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Measured %i (%f), \00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"fractional approximation is %i/%i.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Odd denominator, trying to expand by 2.\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Odd period, try again.\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Possible period is %i.\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"%i = %i * %i\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Unable to determine factors, try again.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %qr = alloca %struct.quantum_reg_struct, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %swidth = alloca i32, align 4
  %x = alloca i32, align 4
  %N = alloca i32, align 4
  %c = alloca i32, align 4
  %q = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %factor = alloca i32, align 4
  %tmp = alloca %struct.quantum_reg_struct, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %x, align 4
  call void @spec_srand(i32 26)
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %2) #5
  store i32 %call1, i32* %N, align 4
  %3 = load i32, i32* %N, align 4
  %cmp2 = icmp slt i32 %3, 15
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 3, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i32, i32* %N, align 4
  %5 = load i32, i32* %N, align 4
  %mul = mul nsw i32 %4, %5
  %call6 = call i32 @quantum_getwidth(i32 %mul)
  store i32 %call6, i32* %width, align 4
  %6 = load i32, i32* %N, align 4
  %call7 = call i32 @quantum_getwidth(i32 %6)
  store i32 %call7, i32* %swidth, align 4
  %7 = load i32, i32* %N, align 4
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %swidth, align 4
  %mul8 = mul nsw i32 3, %9
  %add = add nsw i32 %8, %mul8
  %add9 = add nsw i32 %add, 2
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 %7, i32 %add9)
  %10 = load i32, i32* %argc.addr, align 4
  %cmp11 = icmp sge i32 %10, 3
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.5
  %11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx13, align 8
  %call14 = call i32 @atoi(i8* %12) #5
  store i32 %call14, i32* %x, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.15
  %13 = load i32, i32* %N, align 4
  %14 = load i32, i32* %x, align 4
  %call16 = call i32 @quantum_gcd(i32 %13, i32 %14)
  %cmp17 = icmp sgt i32 %call16, 1
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %15 = load i32, i32* %x, align 4
  %cmp18 = icmp slt i32 %15, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %16 = phi i1 [ true, %while.cond ], [ %cmp18, %lor.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %call19 = call double @spec_rand()
  %mul20 = fmul double %call19, 0x41DFFFFFFFC00000
  %conv = fptosi double %mul20 to i64
  %17 = load i32, i32* %N, align 4
  %conv21 = sext i32 %17 to i64
  %rem = srem i64 %conv, %conv21
  %conv22 = trunc i64 %rem to i32
  store i32 %conv22, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %18 = load i32, i32* %x, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 %18)
  %19 = load i32, i32* %width, align 4
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %tmp, i64 0, i32 %19)
  %20 = bitcast %struct.quantum_reg_struct* %qr to i8*
  %21 = bitcast %struct.quantum_reg_struct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %width, align 4
  %cmp24 = icmp slt i32 %22, %23
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  call void @quantum_hadamard(i32 %24, %struct.quantum_reg_struct* %qr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %swidth, align 4
  %mul26 = mul nsw i32 3, %26
  %add27 = add nsw i32 %mul26, 2
  call void @quantum_addscratch(i32 %add27, %struct.quantum_reg_struct* %qr)
  %27 = load i32, i32* %N, align 4
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %swidth, align 4
  call void @quantum_exp_mod_n(i32 %27, i32 %28, i32 %29, i32 %30, %struct.quantum_reg_struct* %qr)
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.35, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %swidth, align 4
  %mul29 = mul nsw i32 3, %32
  %add30 = add nsw i32 %mul29, 2
  %cmp31 = icmp slt i32 %31, %add30
  br i1 %cmp31, label %for.body.33, label %for.end.37

for.body.33:                                      ; preds = %for.cond.28
  %call34 = call i32 @quantum_bmeasure(i32 0, %struct.quantum_reg_struct* %qr)
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.33
  %33 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %33, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.28

for.end.37:                                       ; preds = %for.cond.28
  %34 = load i32, i32* %width, align 4
  call void @quantum_qft(i32 %34, %struct.quantum_reg_struct* %qr)
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.47, %for.end.37
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %width, align 4
  %div = sdiv i32 %36, 2
  %cmp39 = icmp slt i32 %35, %div
  br i1 %cmp39, label %for.body.41, label %for.end.49

for.body.41:                                      ; preds = %for.cond.38
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %38, %39
  %sub42 = sub nsw i32 %sub, 1
  call void @quantum_cnot(i32 %37, i32 %sub42, %struct.quantum_reg_struct* %qr)
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %i, align 4
  %sub43 = sub nsw i32 %40, %41
  %sub44 = sub nsw i32 %sub43, 1
  %42 = load i32, i32* %i, align 4
  call void @quantum_cnot(i32 %sub44, i32 %42, %struct.quantum_reg_struct* %qr)
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %i, align 4
  %sub45 = sub nsw i32 %44, %45
  %sub46 = sub nsw i32 %sub45, 1
  call void @quantum_cnot(i32 %43, i32 %sub46, %struct.quantum_reg_struct* %qr)
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.41
  %46 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %46, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  %call50 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %qr)
  %conv51 = trunc i64 %call50 to i32
  store i32 %conv51, i32* %c, align 4
  %47 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %47, -1
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.end.49
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.56:                                        ; preds = %for.end.49
  %48 = load i32, i32* %c, align 4
  %cmp57 = icmp eq i32 %48, 0
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.56
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 2) #6
  unreachable

if.end.61:                                        ; preds = %if.end.56
  %49 = load i32, i32* %width, align 4
  %shl = shl i32 1, %49
  store i32 %shl, i32* %q, align 4
  %50 = load i32, i32* %c, align 4
  %51 = load i32, i32* %c, align 4
  %conv62 = sitofp i32 %51 to float
  %52 = load i32, i32* %q, align 4
  %conv63 = sitofp i32 %52 to float
  %div64 = fdiv float %conv62, %conv63
  %conv65 = fpext float %div64 to double
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 %50, double %conv65)
  %53 = load i32, i32* %width, align 4
  call void @quantum_frac_approx(i32* %c, i32* %q, i32 %53)
  %54 = load i32, i32* %c, align 4
  %55 = load i32, i32* %q, align 4
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i32 %54, i32 %55)
  %56 = load i32, i32* %q, align 4
  %rem68 = srem i32 %56, 2
  %cmp69 = icmp eq i32 %rem68, 1
  br i1 %cmp69, label %land.lhs.true, label %if.end.78

land.lhs.true:                                    ; preds = %if.end.61
  %57 = load i32, i32* %q, align 4
  %mul71 = mul nsw i32 2, %57
  %58 = load i32, i32* %width, align 4
  %shl72 = shl i32 1, %58
  %cmp73 = icmp slt i32 %mul71, %shl72
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %land.lhs.true
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0))
  %59 = load i32, i32* %q, align 4
  %mul77 = mul nsw i32 %59, 2
  store i32 %mul77, i32* %q, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %land.lhs.true, %if.end.61
  %60 = load i32, i32* %q, align 4
  %rem79 = srem i32 %60, 2
  %cmp80 = icmp eq i32 %rem79, 1
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.78
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 2) #6
  unreachable

if.end.84:                                        ; preds = %if.end.78
  %61 = load i32, i32* %q, align 4
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32 %61)
  %62 = load i32, i32* %x, align 4
  %63 = load i32, i32* %q, align 4
  %div86 = sdiv i32 %63, 2
  %call87 = call i32 @quantum_ipow(i32 %62, i32 %div86)
  %64 = load i32, i32* %N, align 4
  %rem88 = srem i32 1, %64
  %add89 = add nsw i32 %call87, %rem88
  store i32 %add89, i32* %a, align 4
  %65 = load i32, i32* %x, align 4
  %66 = load i32, i32* %q, align 4
  %div90 = sdiv i32 %66, 2
  %call91 = call i32 @quantum_ipow(i32 %65, i32 %div90)
  %67 = load i32, i32* %N, align 4
  %rem92 = srem i32 1, %67
  %sub93 = sub nsw i32 %call91, %rem92
  store i32 %sub93, i32* %b, align 4
  %68 = load i32, i32* %N, align 4
  %69 = load i32, i32* %a, align 4
  %call94 = call i32 @quantum_gcd(i32 %68, i32 %69)
  store i32 %call94, i32* %a, align 4
  %70 = load i32, i32* %N, align 4
  %71 = load i32, i32* %b, align 4
  %call95 = call i32 @quantum_gcd(i32 %70, i32 %71)
  store i32 %call95, i32* %b, align 4
  %72 = load i32, i32* %a, align 4
  %73 = load i32, i32* %b, align 4
  %cmp96 = icmp sgt i32 %72, %73
  br i1 %cmp96, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %if.end.84
  %74 = load i32, i32* %a, align 4
  store i32 %74, i32* %factor, align 4
  br label %if.end.99

if.else:                                          ; preds = %if.end.84
  %75 = load i32, i32* %b, align 4
  store i32 %75, i32* %factor, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else, %if.then.98
  %76 = load i32, i32* %factor, align 4
  %77 = load i32, i32* %N, align 4
  %cmp100 = icmp slt i32 %76, %77
  br i1 %cmp100, label %land.lhs.true.102, label %if.else.108

land.lhs.true.102:                                ; preds = %if.end.99
  %78 = load i32, i32* %factor, align 4
  %cmp103 = icmp sgt i32 %78, 1
  br i1 %cmp103, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %land.lhs.true.102
  %79 = load i32, i32* %N, align 4
  %80 = load i32, i32* %factor, align 4
  %81 = load i32, i32* %N, align 4
  %82 = load i32, i32* %factor, align 4
  %div106 = sdiv i32 %81, %82
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %79, i32 %80, i32 %div106)
  br label %if.end.110

if.else.108:                                      ; preds = %land.lhs.true.102, %if.end.99
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end.110:                                       ; preds = %if.then.105
  call void @quantum_delete_qureg(%struct.quantum_reg_struct* %qr)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.110, %if.then.3, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare void @spec_srand(i32) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @quantum_getwidth(i32) #1

declare i32 @quantum_gcd(i32, i32) #1

declare double @spec_rand() #1

declare void @quantum_new_qureg(%struct.quantum_reg_struct* sret, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @quantum_hadamard(i32, %struct.quantum_reg_struct*) #1

declare void @quantum_addscratch(i32, %struct.quantum_reg_struct*) #1

declare void @quantum_exp_mod_n(i32, i32, i32, i32, %struct.quantum_reg_struct*) #1

declare i32 @quantum_bmeasure(i32, %struct.quantum_reg_struct*) #1

declare void @quantum_qft(i32, %struct.quantum_reg_struct*) #1

declare void @quantum_cnot(i32, i32, %struct.quantum_reg_struct*) #1

declare i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @quantum_frac_approx(i32*, i32*, i32) #1

declare i32 @quantum_ipow(i32, i32) #1

declare void @quantum_delete_qureg(%struct.quantum_reg_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
