; ModuleID = './pyhash.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyHash_FuncDef = type { i64 (i8*, i64)*, i8*, i32, i32 }
%union._Py_HashSecret_t = type { %struct.anon.1 }
%struct.anon.1 = type { [16 x i8], i64 }
%struct.anon.0 = type { i64, i64 }

@PyHash_Func = internal global %struct.PyHash_FuncDef { i64 (i8*, i64)* @siphash24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 64, i32 128 }, align 8
@_Py_HashSecret = common global %union._Py_HashSecret_t zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"siphash24\00", align 1

; Function Attrs: nounwind uwtable
define i64 @_Py_HashDouble(double %v) #0 {
entry:
  %retval = alloca i64, align 8
  %v.addr = alloca double, align 8
  %e = alloca i32, align 4
  %sign = alloca i32, align 4
  %m = alloca double, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store double %v, double* %v.addr, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load double, double* %v.addr, align 8
  %conv = fptrunc double %0 to float
  %call = call i32 @__finitef(float %conv) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %v.addr, align 8
  %call2 = call i32 @__finite(double %1) #4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %v.addr, align 8
  %conv5 = fpext double %2 to x86_fp80
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %if.then
  %3 = load double, double* %v.addr, align 8
  %conv9 = fptrunc double %3 to float
  %call10 = call i32 @__isinff(float %conv9) #4
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.20, label %if.else

cond.false.12:                                    ; preds = %if.then
  br i1 true, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.false.12
  %4 = load double, double* %v.addr, align 8
  %call14 = call i32 @__isinf(double %4) #4
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.20, label %if.else

cond.false.16:                                    ; preds = %cond.false.12
  %5 = load double, double* %v.addr, align 8
  %conv17 = fpext double %5 to x86_fp80
  %call18 = call i32 @__isinfl(x86_fp80 %conv17) #4
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  %6 = load double, double* %v.addr, align 8
  %cmp = fcmp ogt double %6, 0.000000e+00
  %cond = select i1 %cmp, i32 314159, i32 -314159
  %conv22 = sext i32 %cond to i64
  store i64 %conv22, i64* %retval
  br label %return

if.else:                                          ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %7 = load double, double* %v.addr, align 8
  %call23 = call double @frexp(double %7, i32* %e) #3
  store double %call23, double* %m, align 8
  store i32 1, i32* %sign, align 4
  %8 = load double, double* %m, align 8
  %cmp24 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  store i32 -1, i32* %sign, align 4
  %9 = load double, double* %m, align 8
  %sub = fsub double -0.000000e+00, %9
  store double %sub, double* %m, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end
  store i64 0, i64* %x, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.end.27
  %10 = load double, double* %m, align 8
  %tobool28 = fcmp une double %10, 0.000000e+00
  br i1 %tobool28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i64, i64* %x, align 8
  %shl = shl i64 %11, 28
  %and = and i64 %shl, 2305843009213693951
  %12 = load i64, i64* %x, align 8
  %shr = lshr i64 %12, 33
  %or = or i64 %and, %shr
  store i64 %or, i64* %x, align 8
  %13 = load double, double* %m, align 8
  %mul = fmul double %13, 0x41B0000000000000
  store double %mul, double* %m, align 8
  %14 = load i32, i32* %e, align 4
  %sub29 = sub i32 %14, 28
  store i32 %sub29, i32* %e, align 4
  %15 = load double, double* %m, align 8
  %conv30 = fptoui double %15 to i64
  store i64 %conv30, i64* %y, align 8
  %16 = load i64, i64* %y, align 8
  %conv31 = uitofp i64 %16 to double
  %17 = load double, double* %m, align 8
  %sub32 = fsub double %17, %conv31
  store double %sub32, double* %m, align 8
  %18 = load i64, i64* %y, align 8
  %19 = load i64, i64* %x, align 8
  %add = add i64 %19, %18
  store i64 %add, i64* %x, align 8
  %20 = load i64, i64* %x, align 8
  %cmp33 = icmp uge i64 %20, 2305843009213693951
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %while.body
  %21 = load i64, i64* %x, align 8
  %sub36 = sub i64 %21, 2305843009213693951
  store i64 %sub36, i64* %x, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %e, align 4
  %cmp38 = icmp sge i32 %22, 0
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %while.end
  %23 = load i32, i32* %e, align 4
  %rem = srem i32 %23, 61
  br label %cond.end

cond.false.41:                                    ; preds = %while.end
  %24 = load i32, i32* %e, align 4
  %sub42 = sub i32 -1, %24
  %rem43 = srem i32 %sub42, 61
  %sub44 = sub i32 60, %rem43
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.40
  %cond45 = phi i32 [ %rem, %cond.true.40 ], [ %sub44, %cond.false.41 ]
  store i32 %cond45, i32* %e, align 4
  %25 = load i64, i64* %x, align 8
  %26 = load i32, i32* %e, align 4
  %sh_prom = zext i32 %26 to i64
  %shl46 = shl i64 %25, %sh_prom
  %and47 = and i64 %shl46, 2305843009213693951
  %27 = load i64, i64* %x, align 8
  %28 = load i32, i32* %e, align 4
  %sub48 = sub i32 61, %28
  %sh_prom49 = zext i32 %sub48 to i64
  %shr50 = lshr i64 %27, %sh_prom49
  %or51 = or i64 %and47, %shr50
  store i64 %or51, i64* %x, align 8
  %29 = load i64, i64* %x, align 8
  %30 = load i32, i32* %sign, align 4
  %conv52 = sext i32 %30 to i64
  %mul53 = mul i64 %29, %conv52
  store i64 %mul53, i64* %x, align 8
  %31 = load i64, i64* %x, align 8
  %cmp54 = icmp eq i64 %31, -1
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %cond.end
  store i64 -2, i64* %x, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %cond.end
  %32 = load i64, i64* %x, align 8
  store i64 %32, i64* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.else, %if.then.20
  %33 = load i64, i64* %retval
  ret i64 %33
}

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #1

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #1

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #1

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #1

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #1

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #1

; Function Attrs: nounwind
declare double @frexp(double, i32*) #2

; Function Attrs: nounwind uwtable
define i64 @_Py_HashPointer(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  store i64 %1, i64* %y, align 8
  %2 = load i64, i64* %y, align 8
  %shr = lshr i64 %2, 4
  %3 = load i64, i64* %y, align 8
  %shl = shl i64 %3, 60
  %or = or i64 %shr, %shl
  store i64 %or, i64* %y, align 8
  %4 = load i64, i64* %y, align 8
  store i64 %4, i64* %x, align 8
  %5 = load i64, i64* %x, align 8
  %cmp = icmp eq i64 %5, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -2, i64* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %x, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @_Py_HashBytes(i8* %src, i64 %len) #0 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %x = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64 (i8*, i64)*, i64 (i8*, i64)** getelementptr inbounds (%struct.PyHash_FuncDef, %struct.PyHash_FuncDef* @PyHash_Func, i32 0, i32 0), align 8
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call = call i64 %1(i8* %2, i64 %3)
  store i64 %call, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %cmp1 = icmp eq i64 %4, -1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i64 -2, i64* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i64, i64* %x, align 8
  store i64 %5, i64* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define void @_PyHash_Fini() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.PyHash_FuncDef* @PyHash_GetFuncDef() #0 {
entry:
  ret %struct.PyHash_FuncDef* @PyHash_Func
}

; Function Attrs: nounwind uwtable
define internal i64 @siphash24(i8* %src, i64 %src_sz) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %src_sz.addr = alloca i64, align 8
  %k0 = alloca i64, align 8
  %k1 = alloca i64, align 8
  %b = alloca i64, align 8
  %in = alloca i64*, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %t = alloca i64, align 8
  %pt = alloca i8*, align 8
  %m = alloca i8*, align 8
  %mi = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_sz, i64* %src_sz.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.anon.0, %struct.anon.0* bitcast (%union._Py_HashSecret_t* @_Py_HashSecret to %struct.anon.0*), i32 0, i32 0), align 8
  store i64 %0, i64* %k0, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.anon.0, %struct.anon.0* bitcast (%union._Py_HashSecret_t* @_Py_HashSecret to %struct.anon.0*), i32 0, i32 1), align 8
  store i64 %1, i64* %k1, align 8
  %2 = load i64, i64* %src_sz.addr, align 8
  %shl = shl i64 %2, 56
  store i64 %shl, i64* %b, align 8
  %3 = load i8*, i8** %src.addr, align 8
  %4 = bitcast i8* %3 to i64*
  store i64* %4, i64** %in, align 8
  %5 = load i64, i64* %k0, align 8
  %xor = xor i64 %5, 8317987319222330741
  store i64 %xor, i64* %v0, align 8
  %6 = load i64, i64* %k1, align 8
  %xor1 = xor i64 %6, 7237128888997146477
  store i64 %xor1, i64* %v1, align 8
  %7 = load i64, i64* %k0, align 8
  %xor2 = xor i64 %7, 7816392313619706465
  store i64 %xor2, i64* %v2, align 8
  %8 = load i64, i64* %k1, align 8
  %xor3 = xor i64 %8, 8387220255154660723
  store i64 %xor3, i64* %v3, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i64, i64* %src_sz.addr, align 8
  %cmp = icmp sge i64 %9, 8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64*, i64** %in, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %mi, align 8
  %12 = load i64*, i64** %in, align 8
  %add.ptr = getelementptr i64, i64* %12, i64 1
  store i64* %add.ptr, i64** %in, align 8
  %13 = load i64, i64* %src_sz.addr, align 8
  %sub = sub i64 %13, 8
  store i64 %sub, i64* %src_sz.addr, align 8
  %14 = load i64, i64* %mi, align 8
  %15 = load i64, i64* %v3, align 8
  %xor4 = xor i64 %15, %14
  store i64 %xor4, i64* %v3, align 8
  %16 = load i64, i64* %v1, align 8
  %17 = load i64, i64* %v0, align 8
  %add = add i64 %17, %16
  store i64 %add, i64* %v0, align 8
  %18 = load i64, i64* %v3, align 8
  %19 = load i64, i64* %v2, align 8
  %add5 = add i64 %19, %18
  store i64 %add5, i64* %v2, align 8
  %20 = load i64, i64* %v1, align 8
  %shl6 = shl i64 %20, 13
  %21 = load i64, i64* %v1, align 8
  %shr = lshr i64 %21, 51
  %or = or i64 %shl6, %shr
  %22 = load i64, i64* %v0, align 8
  %xor7 = xor i64 %or, %22
  store i64 %xor7, i64* %v1, align 8
  %23 = load i64, i64* %v3, align 8
  %shl8 = shl i64 %23, 16
  %24 = load i64, i64* %v3, align 8
  %shr9 = lshr i64 %24, 48
  %or10 = or i64 %shl8, %shr9
  %25 = load i64, i64* %v2, align 8
  %xor11 = xor i64 %or10, %25
  store i64 %xor11, i64* %v3, align 8
  %26 = load i64, i64* %v0, align 8
  %shl12 = shl i64 %26, 32
  %27 = load i64, i64* %v0, align 8
  %shr13 = lshr i64 %27, 32
  %or14 = or i64 %shl12, %shr13
  store i64 %or14, i64* %v0, align 8
  %28 = load i64, i64* %v1, align 8
  %29 = load i64, i64* %v2, align 8
  %add15 = add i64 %29, %28
  store i64 %add15, i64* %v2, align 8
  %30 = load i64, i64* %v3, align 8
  %31 = load i64, i64* %v0, align 8
  %add16 = add i64 %31, %30
  store i64 %add16, i64* %v0, align 8
  %32 = load i64, i64* %v1, align 8
  %shl17 = shl i64 %32, 17
  %33 = load i64, i64* %v1, align 8
  %shr18 = lshr i64 %33, 47
  %or19 = or i64 %shl17, %shr18
  %34 = load i64, i64* %v2, align 8
  %xor20 = xor i64 %or19, %34
  store i64 %xor20, i64* %v1, align 8
  %35 = load i64, i64* %v3, align 8
  %shl21 = shl i64 %35, 21
  %36 = load i64, i64* %v3, align 8
  %shr22 = lshr i64 %36, 43
  %or23 = or i64 %shl21, %shr22
  %37 = load i64, i64* %v0, align 8
  %xor24 = xor i64 %or23, %37
  store i64 %xor24, i64* %v3, align 8
  %38 = load i64, i64* %v2, align 8
  %shl25 = shl i64 %38, 32
  %39 = load i64, i64* %v2, align 8
  %shr26 = lshr i64 %39, 32
  %or27 = or i64 %shl25, %shr26
  store i64 %or27, i64* %v2, align 8
  %40 = load i64, i64* %v1, align 8
  %41 = load i64, i64* %v0, align 8
  %add28 = add i64 %41, %40
  store i64 %add28, i64* %v0, align 8
  %42 = load i64, i64* %v3, align 8
  %43 = load i64, i64* %v2, align 8
  %add29 = add i64 %43, %42
  store i64 %add29, i64* %v2, align 8
  %44 = load i64, i64* %v1, align 8
  %shl30 = shl i64 %44, 13
  %45 = load i64, i64* %v1, align 8
  %shr31 = lshr i64 %45, 51
  %or32 = or i64 %shl30, %shr31
  %46 = load i64, i64* %v0, align 8
  %xor33 = xor i64 %or32, %46
  store i64 %xor33, i64* %v1, align 8
  %47 = load i64, i64* %v3, align 8
  %shl34 = shl i64 %47, 16
  %48 = load i64, i64* %v3, align 8
  %shr35 = lshr i64 %48, 48
  %or36 = or i64 %shl34, %shr35
  %49 = load i64, i64* %v2, align 8
  %xor37 = xor i64 %or36, %49
  store i64 %xor37, i64* %v3, align 8
  %50 = load i64, i64* %v0, align 8
  %shl38 = shl i64 %50, 32
  %51 = load i64, i64* %v0, align 8
  %shr39 = lshr i64 %51, 32
  %or40 = or i64 %shl38, %shr39
  store i64 %or40, i64* %v0, align 8
  %52 = load i64, i64* %v1, align 8
  %53 = load i64, i64* %v2, align 8
  %add41 = add i64 %53, %52
  store i64 %add41, i64* %v2, align 8
  %54 = load i64, i64* %v3, align 8
  %55 = load i64, i64* %v0, align 8
  %add42 = add i64 %55, %54
  store i64 %add42, i64* %v0, align 8
  %56 = load i64, i64* %v1, align 8
  %shl43 = shl i64 %56, 17
  %57 = load i64, i64* %v1, align 8
  %shr44 = lshr i64 %57, 47
  %or45 = or i64 %shl43, %shr44
  %58 = load i64, i64* %v2, align 8
  %xor46 = xor i64 %or45, %58
  store i64 %xor46, i64* %v1, align 8
  %59 = load i64, i64* %v3, align 8
  %shl47 = shl i64 %59, 21
  %60 = load i64, i64* %v3, align 8
  %shr48 = lshr i64 %60, 43
  %or49 = or i64 %shl47, %shr48
  %61 = load i64, i64* %v0, align 8
  %xor50 = xor i64 %or49, %61
  store i64 %xor50, i64* %v3, align 8
  %62 = load i64, i64* %v2, align 8
  %shl51 = shl i64 %62, 32
  %63 = load i64, i64* %v2, align 8
  %shr52 = lshr i64 %63, 32
  %or53 = or i64 %shl51, %shr52
  store i64 %or53, i64* %v2, align 8
  %64 = load i64, i64* %mi, align 8
  %65 = load i64, i64* %v0, align 8
  %xor54 = xor i64 %65, %64
  store i64 %xor54, i64* %v0, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %t, align 8
  %66 = bitcast i64* %t to i8*
  store i8* %66, i8** %pt, align 8
  %67 = load i64*, i64** %in, align 8
  %68 = bitcast i64* %67 to i8*
  store i8* %68, i8** %m, align 8
  %69 = load i64, i64* %src_sz.addr, align 8
  switch i64 %69, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb.56
    i64 5, label %sw.bb.59
    i64 4, label %sw.bb.62
    i64 3, label %sw.bb.63
    i64 2, label %sw.bb.66
    i64 1, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %while.end
  %70 = load i8*, i8** %m, align 8
  %arrayidx = getelementptr i8, i8* %70, i64 6
  %71 = load i8, i8* %arrayidx, align 1
  %72 = load i8*, i8** %pt, align 8
  %arrayidx55 = getelementptr i8, i8* %72, i64 6
  store i8 %71, i8* %arrayidx55, align 1
  br label %sw.bb.56

sw.bb.56:                                         ; preds = %while.end, %sw.bb
  %73 = load i8*, i8** %m, align 8
  %arrayidx57 = getelementptr i8, i8* %73, i64 5
  %74 = load i8, i8* %arrayidx57, align 1
  %75 = load i8*, i8** %pt, align 8
  %arrayidx58 = getelementptr i8, i8* %75, i64 5
  store i8 %74, i8* %arrayidx58, align 1
  br label %sw.bb.59

sw.bb.59:                                         ; preds = %while.end, %sw.bb.56
  %76 = load i8*, i8** %m, align 8
  %arrayidx60 = getelementptr i8, i8* %76, i64 4
  %77 = load i8, i8* %arrayidx60, align 1
  %78 = load i8*, i8** %pt, align 8
  %arrayidx61 = getelementptr i8, i8* %78, i64 4
  store i8 %77, i8* %arrayidx61, align 1
  br label %sw.bb.62

sw.bb.62:                                         ; preds = %while.end, %sw.bb.59
  %79 = load i8*, i8** %pt, align 8
  %80 = load i8*, i8** %m, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 4, i32 1, i1 false)
  br label %sw.epilog

sw.bb.63:                                         ; preds = %while.end
  %81 = load i8*, i8** %m, align 8
  %arrayidx64 = getelementptr i8, i8* %81, i64 2
  %82 = load i8, i8* %arrayidx64, align 1
  %83 = load i8*, i8** %pt, align 8
  %arrayidx65 = getelementptr i8, i8* %83, i64 2
  store i8 %82, i8* %arrayidx65, align 1
  br label %sw.bb.66

sw.bb.66:                                         ; preds = %while.end, %sw.bb.63
  %84 = load i8*, i8** %m, align 8
  %arrayidx67 = getelementptr i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx67, align 1
  %86 = load i8*, i8** %pt, align 8
  %arrayidx68 = getelementptr i8, i8* %86, i64 1
  store i8 %85, i8* %arrayidx68, align 1
  br label %sw.bb.69

sw.bb.69:                                         ; preds = %while.end, %sw.bb.66
  %87 = load i8*, i8** %m, align 8
  %arrayidx70 = getelementptr i8, i8* %87, i64 0
  %88 = load i8, i8* %arrayidx70, align 1
  %89 = load i8*, i8** %pt, align 8
  %arrayidx71 = getelementptr i8, i8* %89, i64 0
  store i8 %88, i8* %arrayidx71, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.69, %while.end, %sw.bb.62
  %90 = load i64, i64* %t, align 8
  %91 = load i64, i64* %b, align 8
  %or72 = or i64 %91, %90
  store i64 %or72, i64* %b, align 8
  %92 = load i64, i64* %b, align 8
  %93 = load i64, i64* %v3, align 8
  %xor73 = xor i64 %93, %92
  store i64 %xor73, i64* %v3, align 8
  %94 = load i64, i64* %v1, align 8
  %95 = load i64, i64* %v0, align 8
  %add74 = add i64 %95, %94
  store i64 %add74, i64* %v0, align 8
  %96 = load i64, i64* %v3, align 8
  %97 = load i64, i64* %v2, align 8
  %add75 = add i64 %97, %96
  store i64 %add75, i64* %v2, align 8
  %98 = load i64, i64* %v1, align 8
  %shl76 = shl i64 %98, 13
  %99 = load i64, i64* %v1, align 8
  %shr77 = lshr i64 %99, 51
  %or78 = or i64 %shl76, %shr77
  %100 = load i64, i64* %v0, align 8
  %xor79 = xor i64 %or78, %100
  store i64 %xor79, i64* %v1, align 8
  %101 = load i64, i64* %v3, align 8
  %shl80 = shl i64 %101, 16
  %102 = load i64, i64* %v3, align 8
  %shr81 = lshr i64 %102, 48
  %or82 = or i64 %shl80, %shr81
  %103 = load i64, i64* %v2, align 8
  %xor83 = xor i64 %or82, %103
  store i64 %xor83, i64* %v3, align 8
  %104 = load i64, i64* %v0, align 8
  %shl84 = shl i64 %104, 32
  %105 = load i64, i64* %v0, align 8
  %shr85 = lshr i64 %105, 32
  %or86 = or i64 %shl84, %shr85
  store i64 %or86, i64* %v0, align 8
  %106 = load i64, i64* %v1, align 8
  %107 = load i64, i64* %v2, align 8
  %add87 = add i64 %107, %106
  store i64 %add87, i64* %v2, align 8
  %108 = load i64, i64* %v3, align 8
  %109 = load i64, i64* %v0, align 8
  %add88 = add i64 %109, %108
  store i64 %add88, i64* %v0, align 8
  %110 = load i64, i64* %v1, align 8
  %shl89 = shl i64 %110, 17
  %111 = load i64, i64* %v1, align 8
  %shr90 = lshr i64 %111, 47
  %or91 = or i64 %shl89, %shr90
  %112 = load i64, i64* %v2, align 8
  %xor92 = xor i64 %or91, %112
  store i64 %xor92, i64* %v1, align 8
  %113 = load i64, i64* %v3, align 8
  %shl93 = shl i64 %113, 21
  %114 = load i64, i64* %v3, align 8
  %shr94 = lshr i64 %114, 43
  %or95 = or i64 %shl93, %shr94
  %115 = load i64, i64* %v0, align 8
  %xor96 = xor i64 %or95, %115
  store i64 %xor96, i64* %v3, align 8
  %116 = load i64, i64* %v2, align 8
  %shl97 = shl i64 %116, 32
  %117 = load i64, i64* %v2, align 8
  %shr98 = lshr i64 %117, 32
  %or99 = or i64 %shl97, %shr98
  store i64 %or99, i64* %v2, align 8
  %118 = load i64, i64* %v1, align 8
  %119 = load i64, i64* %v0, align 8
  %add100 = add i64 %119, %118
  store i64 %add100, i64* %v0, align 8
  %120 = load i64, i64* %v3, align 8
  %121 = load i64, i64* %v2, align 8
  %add101 = add i64 %121, %120
  store i64 %add101, i64* %v2, align 8
  %122 = load i64, i64* %v1, align 8
  %shl102 = shl i64 %122, 13
  %123 = load i64, i64* %v1, align 8
  %shr103 = lshr i64 %123, 51
  %or104 = or i64 %shl102, %shr103
  %124 = load i64, i64* %v0, align 8
  %xor105 = xor i64 %or104, %124
  store i64 %xor105, i64* %v1, align 8
  %125 = load i64, i64* %v3, align 8
  %shl106 = shl i64 %125, 16
  %126 = load i64, i64* %v3, align 8
  %shr107 = lshr i64 %126, 48
  %or108 = or i64 %shl106, %shr107
  %127 = load i64, i64* %v2, align 8
  %xor109 = xor i64 %or108, %127
  store i64 %xor109, i64* %v3, align 8
  %128 = load i64, i64* %v0, align 8
  %shl110 = shl i64 %128, 32
  %129 = load i64, i64* %v0, align 8
  %shr111 = lshr i64 %129, 32
  %or112 = or i64 %shl110, %shr111
  store i64 %or112, i64* %v0, align 8
  %130 = load i64, i64* %v1, align 8
  %131 = load i64, i64* %v2, align 8
  %add113 = add i64 %131, %130
  store i64 %add113, i64* %v2, align 8
  %132 = load i64, i64* %v3, align 8
  %133 = load i64, i64* %v0, align 8
  %add114 = add i64 %133, %132
  store i64 %add114, i64* %v0, align 8
  %134 = load i64, i64* %v1, align 8
  %shl115 = shl i64 %134, 17
  %135 = load i64, i64* %v1, align 8
  %shr116 = lshr i64 %135, 47
  %or117 = or i64 %shl115, %shr116
  %136 = load i64, i64* %v2, align 8
  %xor118 = xor i64 %or117, %136
  store i64 %xor118, i64* %v1, align 8
  %137 = load i64, i64* %v3, align 8
  %shl119 = shl i64 %137, 21
  %138 = load i64, i64* %v3, align 8
  %shr120 = lshr i64 %138, 43
  %or121 = or i64 %shl119, %shr120
  %139 = load i64, i64* %v0, align 8
  %xor122 = xor i64 %or121, %139
  store i64 %xor122, i64* %v3, align 8
  %140 = load i64, i64* %v2, align 8
  %shl123 = shl i64 %140, 32
  %141 = load i64, i64* %v2, align 8
  %shr124 = lshr i64 %141, 32
  %or125 = or i64 %shl123, %shr124
  store i64 %or125, i64* %v2, align 8
  %142 = load i64, i64* %b, align 8
  %143 = load i64, i64* %v0, align 8
  %xor126 = xor i64 %143, %142
  store i64 %xor126, i64* %v0, align 8
  %144 = load i64, i64* %v2, align 8
  %xor127 = xor i64 %144, 255
  store i64 %xor127, i64* %v2, align 8
  %145 = load i64, i64* %v1, align 8
  %146 = load i64, i64* %v0, align 8
  %add128 = add i64 %146, %145
  store i64 %add128, i64* %v0, align 8
  %147 = load i64, i64* %v3, align 8
  %148 = load i64, i64* %v2, align 8
  %add129 = add i64 %148, %147
  store i64 %add129, i64* %v2, align 8
  %149 = load i64, i64* %v1, align 8
  %shl130 = shl i64 %149, 13
  %150 = load i64, i64* %v1, align 8
  %shr131 = lshr i64 %150, 51
  %or132 = or i64 %shl130, %shr131
  %151 = load i64, i64* %v0, align 8
  %xor133 = xor i64 %or132, %151
  store i64 %xor133, i64* %v1, align 8
  %152 = load i64, i64* %v3, align 8
  %shl134 = shl i64 %152, 16
  %153 = load i64, i64* %v3, align 8
  %shr135 = lshr i64 %153, 48
  %or136 = or i64 %shl134, %shr135
  %154 = load i64, i64* %v2, align 8
  %xor137 = xor i64 %or136, %154
  store i64 %xor137, i64* %v3, align 8
  %155 = load i64, i64* %v0, align 8
  %shl138 = shl i64 %155, 32
  %156 = load i64, i64* %v0, align 8
  %shr139 = lshr i64 %156, 32
  %or140 = or i64 %shl138, %shr139
  store i64 %or140, i64* %v0, align 8
  %157 = load i64, i64* %v1, align 8
  %158 = load i64, i64* %v2, align 8
  %add141 = add i64 %158, %157
  store i64 %add141, i64* %v2, align 8
  %159 = load i64, i64* %v3, align 8
  %160 = load i64, i64* %v0, align 8
  %add142 = add i64 %160, %159
  store i64 %add142, i64* %v0, align 8
  %161 = load i64, i64* %v1, align 8
  %shl143 = shl i64 %161, 17
  %162 = load i64, i64* %v1, align 8
  %shr144 = lshr i64 %162, 47
  %or145 = or i64 %shl143, %shr144
  %163 = load i64, i64* %v2, align 8
  %xor146 = xor i64 %or145, %163
  store i64 %xor146, i64* %v1, align 8
  %164 = load i64, i64* %v3, align 8
  %shl147 = shl i64 %164, 21
  %165 = load i64, i64* %v3, align 8
  %shr148 = lshr i64 %165, 43
  %or149 = or i64 %shl147, %shr148
  %166 = load i64, i64* %v0, align 8
  %xor150 = xor i64 %or149, %166
  store i64 %xor150, i64* %v3, align 8
  %167 = load i64, i64* %v2, align 8
  %shl151 = shl i64 %167, 32
  %168 = load i64, i64* %v2, align 8
  %shr152 = lshr i64 %168, 32
  %or153 = or i64 %shl151, %shr152
  store i64 %or153, i64* %v2, align 8
  %169 = load i64, i64* %v1, align 8
  %170 = load i64, i64* %v0, align 8
  %add154 = add i64 %170, %169
  store i64 %add154, i64* %v0, align 8
  %171 = load i64, i64* %v3, align 8
  %172 = load i64, i64* %v2, align 8
  %add155 = add i64 %172, %171
  store i64 %add155, i64* %v2, align 8
  %173 = load i64, i64* %v1, align 8
  %shl156 = shl i64 %173, 13
  %174 = load i64, i64* %v1, align 8
  %shr157 = lshr i64 %174, 51
  %or158 = or i64 %shl156, %shr157
  %175 = load i64, i64* %v0, align 8
  %xor159 = xor i64 %or158, %175
  store i64 %xor159, i64* %v1, align 8
  %176 = load i64, i64* %v3, align 8
  %shl160 = shl i64 %176, 16
  %177 = load i64, i64* %v3, align 8
  %shr161 = lshr i64 %177, 48
  %or162 = or i64 %shl160, %shr161
  %178 = load i64, i64* %v2, align 8
  %xor163 = xor i64 %or162, %178
  store i64 %xor163, i64* %v3, align 8
  %179 = load i64, i64* %v0, align 8
  %shl164 = shl i64 %179, 32
  %180 = load i64, i64* %v0, align 8
  %shr165 = lshr i64 %180, 32
  %or166 = or i64 %shl164, %shr165
  store i64 %or166, i64* %v0, align 8
  %181 = load i64, i64* %v1, align 8
  %182 = load i64, i64* %v2, align 8
  %add167 = add i64 %182, %181
  store i64 %add167, i64* %v2, align 8
  %183 = load i64, i64* %v3, align 8
  %184 = load i64, i64* %v0, align 8
  %add168 = add i64 %184, %183
  store i64 %add168, i64* %v0, align 8
  %185 = load i64, i64* %v1, align 8
  %shl169 = shl i64 %185, 17
  %186 = load i64, i64* %v1, align 8
  %shr170 = lshr i64 %186, 47
  %or171 = or i64 %shl169, %shr170
  %187 = load i64, i64* %v2, align 8
  %xor172 = xor i64 %or171, %187
  store i64 %xor172, i64* %v1, align 8
  %188 = load i64, i64* %v3, align 8
  %shl173 = shl i64 %188, 21
  %189 = load i64, i64* %v3, align 8
  %shr174 = lshr i64 %189, 43
  %or175 = or i64 %shl173, %shr174
  %190 = load i64, i64* %v0, align 8
  %xor176 = xor i64 %or175, %190
  store i64 %xor176, i64* %v3, align 8
  %191 = load i64, i64* %v2, align 8
  %shl177 = shl i64 %191, 32
  %192 = load i64, i64* %v2, align 8
  %shr178 = lshr i64 %192, 32
  %or179 = or i64 %shl177, %shr178
  store i64 %or179, i64* %v2, align 8
  %193 = load i64, i64* %v1, align 8
  %194 = load i64, i64* %v0, align 8
  %add180 = add i64 %194, %193
  store i64 %add180, i64* %v0, align 8
  %195 = load i64, i64* %v3, align 8
  %196 = load i64, i64* %v2, align 8
  %add181 = add i64 %196, %195
  store i64 %add181, i64* %v2, align 8
  %197 = load i64, i64* %v1, align 8
  %shl182 = shl i64 %197, 13
  %198 = load i64, i64* %v1, align 8
  %shr183 = lshr i64 %198, 51
  %or184 = or i64 %shl182, %shr183
  %199 = load i64, i64* %v0, align 8
  %xor185 = xor i64 %or184, %199
  store i64 %xor185, i64* %v1, align 8
  %200 = load i64, i64* %v3, align 8
  %shl186 = shl i64 %200, 16
  %201 = load i64, i64* %v3, align 8
  %shr187 = lshr i64 %201, 48
  %or188 = or i64 %shl186, %shr187
  %202 = load i64, i64* %v2, align 8
  %xor189 = xor i64 %or188, %202
  store i64 %xor189, i64* %v3, align 8
  %203 = load i64, i64* %v0, align 8
  %shl190 = shl i64 %203, 32
  %204 = load i64, i64* %v0, align 8
  %shr191 = lshr i64 %204, 32
  %or192 = or i64 %shl190, %shr191
  store i64 %or192, i64* %v0, align 8
  %205 = load i64, i64* %v1, align 8
  %206 = load i64, i64* %v2, align 8
  %add193 = add i64 %206, %205
  store i64 %add193, i64* %v2, align 8
  %207 = load i64, i64* %v3, align 8
  %208 = load i64, i64* %v0, align 8
  %add194 = add i64 %208, %207
  store i64 %add194, i64* %v0, align 8
  %209 = load i64, i64* %v1, align 8
  %shl195 = shl i64 %209, 17
  %210 = load i64, i64* %v1, align 8
  %shr196 = lshr i64 %210, 47
  %or197 = or i64 %shl195, %shr196
  %211 = load i64, i64* %v2, align 8
  %xor198 = xor i64 %or197, %211
  store i64 %xor198, i64* %v1, align 8
  %212 = load i64, i64* %v3, align 8
  %shl199 = shl i64 %212, 21
  %213 = load i64, i64* %v3, align 8
  %shr200 = lshr i64 %213, 43
  %or201 = or i64 %shl199, %shr200
  %214 = load i64, i64* %v0, align 8
  %xor202 = xor i64 %or201, %214
  store i64 %xor202, i64* %v3, align 8
  %215 = load i64, i64* %v2, align 8
  %shl203 = shl i64 %215, 32
  %216 = load i64, i64* %v2, align 8
  %shr204 = lshr i64 %216, 32
  %or205 = or i64 %shl203, %shr204
  store i64 %or205, i64* %v2, align 8
  %217 = load i64, i64* %v1, align 8
  %218 = load i64, i64* %v0, align 8
  %add206 = add i64 %218, %217
  store i64 %add206, i64* %v0, align 8
  %219 = load i64, i64* %v3, align 8
  %220 = load i64, i64* %v2, align 8
  %add207 = add i64 %220, %219
  store i64 %add207, i64* %v2, align 8
  %221 = load i64, i64* %v1, align 8
  %shl208 = shl i64 %221, 13
  %222 = load i64, i64* %v1, align 8
  %shr209 = lshr i64 %222, 51
  %or210 = or i64 %shl208, %shr209
  %223 = load i64, i64* %v0, align 8
  %xor211 = xor i64 %or210, %223
  store i64 %xor211, i64* %v1, align 8
  %224 = load i64, i64* %v3, align 8
  %shl212 = shl i64 %224, 16
  %225 = load i64, i64* %v3, align 8
  %shr213 = lshr i64 %225, 48
  %or214 = or i64 %shl212, %shr213
  %226 = load i64, i64* %v2, align 8
  %xor215 = xor i64 %or214, %226
  store i64 %xor215, i64* %v3, align 8
  %227 = load i64, i64* %v0, align 8
  %shl216 = shl i64 %227, 32
  %228 = load i64, i64* %v0, align 8
  %shr217 = lshr i64 %228, 32
  %or218 = or i64 %shl216, %shr217
  store i64 %or218, i64* %v0, align 8
  %229 = load i64, i64* %v1, align 8
  %230 = load i64, i64* %v2, align 8
  %add219 = add i64 %230, %229
  store i64 %add219, i64* %v2, align 8
  %231 = load i64, i64* %v3, align 8
  %232 = load i64, i64* %v0, align 8
  %add220 = add i64 %232, %231
  store i64 %add220, i64* %v0, align 8
  %233 = load i64, i64* %v1, align 8
  %shl221 = shl i64 %233, 17
  %234 = load i64, i64* %v1, align 8
  %shr222 = lshr i64 %234, 47
  %or223 = or i64 %shl221, %shr222
  %235 = load i64, i64* %v2, align 8
  %xor224 = xor i64 %or223, %235
  store i64 %xor224, i64* %v1, align 8
  %236 = load i64, i64* %v3, align 8
  %shl225 = shl i64 %236, 21
  %237 = load i64, i64* %v3, align 8
  %shr226 = lshr i64 %237, 43
  %or227 = or i64 %shl225, %shr226
  %238 = load i64, i64* %v0, align 8
  %xor228 = xor i64 %or227, %238
  store i64 %xor228, i64* %v3, align 8
  %239 = load i64, i64* %v2, align 8
  %shl229 = shl i64 %239, 32
  %240 = load i64, i64* %v2, align 8
  %shr230 = lshr i64 %240, 32
  %or231 = or i64 %shl229, %shr230
  store i64 %or231, i64* %v2, align 8
  %241 = load i64, i64* %v0, align 8
  %242 = load i64, i64* %v1, align 8
  %xor232 = xor i64 %241, %242
  %243 = load i64, i64* %v2, align 8
  %244 = load i64, i64* %v3, align 8
  %xor233 = xor i64 %243, %244
  %xor234 = xor i64 %xor232, %xor233
  store i64 %xor234, i64* %t, align 8
  %245 = load i64, i64* %t, align 8
  ret i64 %245
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
