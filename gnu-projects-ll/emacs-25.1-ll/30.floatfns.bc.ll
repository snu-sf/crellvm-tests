; ModuleID = './src/floatfns.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vectorlike_header = type { i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon, i16, i16, i8*, i8*, i8* }
%union.anon = type { i64 ()* }

@.str = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@Sacos = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Facos }, i16 1, i16 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@Sasin = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fasin }, i16 1, i16 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@Satan = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fatan }, i16 1, i16 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@Scos = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fcos }, i16 1, i16 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@Ssin = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsin }, i16 1, i16 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@Stan = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ftan }, i16 1, i16 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"isnan\00", align 1
@Sisnan = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fisnan }, i16 1, i16 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"copysign\00", align 1
@Scopysign = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fcopysign }, i16 2, i16 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@Sfrexp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffrexp }, i16 1, i16 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@Sldexp = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fldexp }, i16 2, i16 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"fceiling\00", align 1
@Sfceiling = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffceiling }, i16 1, i16 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"ffloor\00", align 1
@Sffloor = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fffloor }, i16 1, i16 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"fround\00", align 1
@Sfround = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffround }, i16 1, i16 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"ftruncate\00", align 1
@Sftruncate = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fftruncate }, i16 1, i16 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@Sexp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fexp }, i16 1, i16 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"expt\00", align 1
@Sexpt = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fexpt }, i16 2, i16 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@Slog = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Flog }, i16 1, i16 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@Ssqrt = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fsqrt }, i16 1, i16 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.22 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@Sabs = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fabs }, i16 1, i16 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@Sfloat = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffloat }, i16 1, i16 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"logb\00", align 1
@Slogb = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Flogb }, i16 1, i16 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null }, align 8
@Sceiling = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fceiling }, i16 1, i16 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null }, align 8
@Sfloor = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffloor }, i16 1, i16 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null }, align 8
@Sround = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fround }, i16 1, i16 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null }, align 8
@Struncate = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ftruncate }, i16 1, i16 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define double @extract_float(i64 %num) #0 {
entry:
  %retval = alloca double, align 8
  %num.addr = alloca i64, align 8
  store i64 %num, i64* %num.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  call void @CHECK_NUMBER_OR_FLOAT(i64 %0)
  %1 = load i64, i64* %num.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %num.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %2)
  store double %call, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %num.addr, align 8
  %shr = ashr i64 %3, 2
  %conv2 = sitofp i64 %shr to double
  store double %conv2, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load double, double* %retval
  ret double %4
}

declare void @CHECK_NUMBER_OR_FLOAT(i64) #1

declare double @XFLOAT_DATA(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Facos(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @acos(double %1) #5
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind
declare double @acos(double) #2

declare i64 @make_float(double) #1

; Function Attrs: nounwind uwtable
define i64 @Fasin(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @asin(double %1) #5
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind
declare double @asin(double) #2

; Function Attrs: nounwind uwtable
define i64 @Fatan(i64 %y, i64 %x) #0 {
entry:
  %y.addr = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %d = alloca double, align 8
  %d2 = alloca double, align 8
  store i64 %y, i64* %y.addr, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %y.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load i64, i64* %x.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %d, align 8
  %call2 = call double @atan(double %2) #5
  store double %call2, double* %d, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %x.addr, align 8
  %call3 = call double @extract_float(i64 %3)
  store double %call3, double* %d2, align 8
  %4 = load double, double* %d, align 8
  %5 = load double, double* %d2, align 8
  %call4 = call double @atan2(double %4, double %5) #5
  store double %call4, double* %d, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load double, double* %d, align 8
  %call5 = call i64 @make_float(double %6)
  ret i64 %call5
}

declare i64 @builtin_lisp_symbol(i32) #1

; Function Attrs: nounwind
declare double @atan(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind uwtable
define i64 @Fcos(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @cos(double %1) #5
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind uwtable
define i64 @Fsin(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @sin(double %1) #5
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define i64 @Ftan(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @tan(double %1) #5
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind
declare double @tan(double) #2

; Function Attrs: nounwind uwtable
define i64 @Fisnan(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  call void @CHECK_FLOAT(i64 %0)
  %1 = load i64, i64* %x.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %1)
  %2 = load i64, i64* %x.addr, align 8
  %call1 = call double @XFLOAT_DATA(i64 %2)
  %cmp = fcmp une double %call, %call1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal void @CHECK_FLOAT(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 434)
  %1 = load i64, i64* %x.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Fcopysign(i64 %x1, i64 %x2) #0 {
entry:
  %x1.addr = alloca i64, align 8
  %x2.addr = alloca i64, align 8
  %f1 = alloca double, align 8
  %f2 = alloca double, align 8
  store i64 %x1, i64* %x1.addr, align 8
  store i64 %x2, i64* %x2.addr, align 8
  %0 = load i64, i64* %x1.addr, align 8
  call void @CHECK_FLOAT(i64 %0)
  %1 = load i64, i64* %x2.addr, align 8
  call void @CHECK_FLOAT(i64 %1)
  %2 = load i64, i64* %x1.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %2)
  store double %call, double* %f1, align 8
  %3 = load i64, i64* %x2.addr, align 8
  %call1 = call double @XFLOAT_DATA(i64 %3)
  store double %call1, double* %f2, align 8
  %4 = load double, double* %f1, align 8
  %5 = load double, double* %f2, align 8
  %call2 = call double @copysign(double %4, double %5) #7
  %call3 = call i64 @make_float(double %call2)
  ret i64 %call3
}

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #3

; Function Attrs: nounwind uwtable
define i64 @Ffrexp(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %f = alloca double, align 8
  %exponent = alloca i32, align 4
  %sgnfcand = alloca double, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %call = call double @XFLOATINT(i64 %0)
  store double %call, double* %f, align 8
  %1 = load double, double* %f, align 8
  %call1 = call double @frexp(double %1, i32* %exponent) #5
  store double %call1, double* %sgnfcand, align 8
  %2 = load double, double* %sgnfcand, align 8
  %call2 = call i64 @make_float(double %2)
  %3 = load i32, i32* %exponent, align 4
  %conv = sext i32 %3 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call3 = call i64 @Fcons(i64 %call2, i64 %add)
  ret i64 %call3
}

declare double @XFLOATINT(i64) #1

; Function Attrs: nounwind
declare double @frexp(double, i32*) #2

declare i64 @Fcons(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fldexp(i64 %sgnfcand, i64 %exponent) #0 {
entry:
  %sgnfcand.addr = alloca i64, align 8
  %exponent.addr = alloca i64, align 8
  %e = alloca i32, align 4
  store i64 %sgnfcand, i64* %sgnfcand.addr, align 8
  store i64 %exponent, i64* %exponent.addr, align 8
  %0 = load i64, i64* %exponent.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 559)
  %1 = load i64, i64* %exponent.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %exponent.addr, align 8
  %shr = ashr i64 %4, 2
  %cmp3 = icmp sgt i64 -2147483648, %shr
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.8

cond.false.6:                                     ; preds = %cond.end
  %5 = load i64, i64* %exponent.addr, align 8
  %shr7 = ashr i64 %5, 2
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.6, %cond.true.5
  %cond = phi i64 [ -2147483648, %cond.true.5 ], [ %shr7, %cond.false.6 ]
  %cmp9 = icmp slt i64 %cond, 2147483647
  br i1 %cmp9, label %cond.true.11, label %cond.false.20

cond.true.11:                                     ; preds = %cond.end.8
  %6 = load i64, i64* %exponent.addr, align 8
  %shr12 = ashr i64 %6, 2
  %cmp13 = icmp sgt i64 -2147483648, %shr12
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.true.11
  br label %cond.end.18

cond.false.16:                                    ; preds = %cond.true.11
  %7 = load i64, i64* %exponent.addr, align 8
  %shr17 = ashr i64 %7, 2
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.16, %cond.true.15
  %cond19 = phi i64 [ -2147483648, %cond.true.15 ], [ %shr17, %cond.false.16 ]
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.8
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.end.18
  %cond22 = phi i64 [ %cond19, %cond.end.18 ], [ 2147483647, %cond.false.20 ]
  %conv23 = trunc i64 %cond22 to i32
  store i32 %conv23, i32* %e, align 4
  %8 = load i64, i64* %sgnfcand.addr, align 8
  %call24 = call double @XFLOATINT(i64 %8)
  %9 = load i32, i32* %e, align 4
  %call25 = call double @ldexp(double %call24, i32 %9) #5
  %call26 = call i64 @make_float(double %call25)
  ret i64 %call26
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #4

; Function Attrs: nounwind
declare double @ldexp(double, i32) #2

; Function Attrs: nounwind uwtable
define i64 @Fexp(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @exp(double %1) #5
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind uwtable
define i64 @Fexpt(i64 %arg1, i64 %arg2) #0 {
entry:
  %retval = alloca i64, align 8
  %arg1.addr = alloca i64, align 8
  %arg2.addr = alloca i64, align 8
  %f1 = alloca double, align 8
  %f2 = alloca double, align 8
  %f3 = alloca double, align 8
  %y = alloca i64, align 8
  %acc = alloca i64, align 8
  %x = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %arg1, i64* %arg1.addr, align 8
  store i64 %arg2, i64* %arg2.addr, align 8
  %0 = load i64, i64* %arg1.addr, align 8
  call void @CHECK_NUMBER_OR_FLOAT(i64 %0)
  %1 = load i64, i64* %arg2.addr, align 8
  call void @CHECK_NUMBER_OR_FLOAT(i64 %1)
  %2 = load i64, i64* %arg1.addr, align 8
  %and = and i64 %2, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %arg2.addr, align 8
  %and3 = and i64 %3, 7
  %conv4 = trunc i64 %and3 to i32
  %and5 = and i32 %conv4, -5
  %cmp6 = icmp eq i32 %and5, 2
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.21

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %4 = load i64, i64* %arg2.addr, align 8
  %shr = ashr i64 %4, 2
  %cmp9 = icmp sge i64 %shr, 0
  br i1 %cmp9, label %if.then, label %if.end.21

if.then:                                          ; preds = %land.lhs.true.8
  %5 = load i64, i64* %arg1.addr, align 8
  %shr11 = ashr i64 %5, 2
  store i64 %shr11, i64* %x, align 8
  %6 = load i64, i64* %arg2.addr, align 8
  %shr12 = ashr i64 %6, 2
  store i64 %shr12, i64* %y, align 8
  %7 = load i64, i64* %y, align 8
  %and13 = and i64 %7, 1
  %tobool = icmp ne i64 %and13, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load i64, i64* %x, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ 1, %cond.false ]
  store i64 %cond, i64* %acc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %9 = load i64, i64* %y, align 8
  %shr14 = ashr i64 %9, 1
  store i64 %shr14, i64* %y, align 8
  %cmp15 = icmp ne i64 %shr14, 0
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %x, align 8
  %11 = load i64, i64* %x, align 8
  %mul = mul i64 %11, %10
  store i64 %mul, i64* %x, align 8
  %12 = load i64, i64* %y, align 8
  %and17 = and i64 %12, 1
  %tobool18 = icmp ne i64 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %while.body
  %13 = load i64, i64* %x, align 8
  %14 = load i64, i64* %acc, align 8
  %mul20 = mul i64 %14, %13
  store i64 %mul20, i64* %acc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i64, i64* %acc, align 8
  %shl = shl i64 %15, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %val, align 8
  %16 = load i64, i64* %val, align 8
  store i64 %16, i64* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.8, %land.lhs.true, %entry
  %17 = load i64, i64* %arg1.addr, align 8
  %and22 = and i64 %17, 7
  %conv23 = trunc i64 %and22 to i32
  %cmp24 = icmp eq i32 %conv23, 7
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %if.end.21
  %18 = load i64, i64* %arg1.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %18)
  br label %cond.end.30

cond.false.27:                                    ; preds = %if.end.21
  %19 = load i64, i64* %arg1.addr, align 8
  %shr28 = ashr i64 %19, 2
  %conv29 = sitofp i64 %shr28 to double
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.26
  %cond31 = phi double [ %call, %cond.true.26 ], [ %conv29, %cond.false.27 ]
  store double %cond31, double* %f1, align 8
  %20 = load i64, i64* %arg2.addr, align 8
  %and32 = and i64 %20, 7
  %conv33 = trunc i64 %and32 to i32
  %cmp34 = icmp eq i32 %conv33, 7
  br i1 %cmp34, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.end.30
  %21 = load i64, i64* %arg2.addr, align 8
  %call37 = call double @XFLOAT_DATA(i64 %21)
  br label %cond.end.41

cond.false.38:                                    ; preds = %cond.end.30
  %22 = load i64, i64* %arg2.addr, align 8
  %shr39 = ashr i64 %22, 2
  %conv40 = sitofp i64 %shr39 to double
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.38, %cond.true.36
  %cond42 = phi double [ %call37, %cond.true.36 ], [ %conv40, %cond.false.38 ]
  store double %cond42, double* %f2, align 8
  %23 = load double, double* %f1, align 8
  %24 = load double, double* %f2, align 8
  %call43 = call double @pow(double %23, double %24) #5
  store double %call43, double* %f3, align 8
  %25 = load double, double* %f3, align 8
  %call44 = call i64 @make_float(double %25)
  store i64 %call44, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.41, %while.end
  %26 = load i64, i64* %retval
  ret i64 %26
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define i64 @Flog(i64 %arg, i64 %base) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %base.addr = alloca i64, align 8
  %d = alloca double, align 8
  %b = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load i64, i64* %base.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %d, align 8
  %call2 = call double @log(double %2) #5
  store double %call2, double* %d, align 8
  br label %if.end.15

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %base.addr, align 8
  %call3 = call double @extract_float(i64 %3)
  store double %call3, double* %b, align 8
  %4 = load double, double* %b, align 8
  %cmp4 = fcmp oeq double %4, 1.000000e+01
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %5 = load double, double* %d, align 8
  %call6 = call double @log10(double %5) #5
  store double %call6, double* %d, align 8
  br label %if.end.14

if.else.7:                                        ; preds = %if.else
  %6 = load double, double* %b, align 8
  %cmp8 = fcmp oeq double %6, 2.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %7 = load double, double* %d, align 8
  %call10 = call double @log2(double %7) #5
  store double %call10, double* %d, align 8
  br label %if.end

if.else.11:                                       ; preds = %if.else.7
  %8 = load double, double* %d, align 8
  %call12 = call double @log(double %8) #5
  %9 = load double, double* %b, align 8
  %call13 = call double @log(double %9) #5
  %div = fdiv double %call12, %call13
  store double %div, double* %d, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  %10 = load double, double* %d, align 8
  %call16 = call i64 @make_float(double %10)
  ret i64 %call16
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind
declare double @log10(double) #2

; Function Attrs: nounwind
declare double @log2(double) #2

; Function Attrs: nounwind uwtable
define i64 @Fsqrt(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @sqrt(double %1) #5
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define i64 @Fabs(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  call void @CHECK_NUMBER_OR_FLOAT(i64 %0)
  %1 = load i64, i64* %arg.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %arg.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %2)
  %call2 = call double @fabs(double %call) #7
  %call3 = call i64 @make_float(double %call2)
  store i64 %call3, i64* %arg.addr, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %arg.addr, align 8
  %shr = ashr i64 %3, 2
  %cmp4 = icmp slt i64 %shr, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %4 = load i64, i64* %arg.addr, align 8
  %shr7 = ashr i64 %4, 2
  %sub = sub nsw i64 0, %shr7
  %shl = shl i64 %sub, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %arg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %5 = load i64, i64* %arg.addr, align 8
  ret i64 %5
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i64 @Ffloat(i64 %arg) #0 {
entry:
  %retval = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  call void @CHECK_NUMBER_OR_FLOAT(i64 %0)
  %1 = load i64, i64* %arg.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %and1 = and i32 %conv, -5
  %cmp = icmp eq i32 %and1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %arg.addr, align 8
  %shr = ashr i64 %2, 2
  %conv3 = sitofp i64 %shr to double
  %call = call i64 @make_float(double %conv3)
  store i64 %call, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %arg.addr, align 8
  store i64 %3, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* %retval
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @Flogb(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %value = alloca i64, align 8
  %f = alloca double, align 8
  %ivalue = alloca i32, align 4
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %f, align 8
  %1 = load double, double* %f, align 8
  %cmp = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 -2305843009213693952, i64* %value, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %2 = load double, double* %f, align 8
  %3 = load double, double* %f, align 8
  %sub = fsub double %2, %3
  %cmp1 = fcmp oeq double %sub, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %4 = load double, double* %f, align 8
  %call3 = call double @frexp(double %4, i32* %ivalue) #5
  %5 = load i32, i32* %ivalue, align 4
  %sub4 = sub nsw i32 %5, 1
  %conv = sext i32 %sub4 to i64
  store i64 %conv, i64* %value, align 8
  br label %if.end

if.else.5:                                        ; preds = %if.else
  store i64 2305843009213693951, i64* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %6 = load i64, i64* %value, align 8
  %shl = shl i64 %6, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %val, align 8
  %7 = load i64, i64* %val, align 8
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @Fceiling(i64 %arg, i64 %divisor) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %divisor, i64* %divisor.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %1 = load i64, i64* %divisor.addr, align 8
  %call = call i64 @rounding_driver(i64 %0, i64 %1, double (double)* @ceil, i64 (i64, i64)* @ceiling2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @rounding_driver(i64 %arg, i64 %divisor, double (double)* %double_round, i64 (i64, i64)* %int_round2, i8* %name) #0 {
entry:
  %retval = alloca i64, align 8
  %arg.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  %double_round.addr = alloca double (double)*, align 8
  %int_round2.addr = alloca i64 (i64, i64)*, align 8
  %name.addr = alloca i8*, align 8
  %i1 = alloca i64, align 8
  %i2 = alloca i64, align 8
  %f1 = alloca double, align 8
  %f2 = alloca double, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %divisor, i64* %divisor.addr, align 8
  store double (double)* %double_round, double (double)** %double_round.addr, align 8
  store i64 (i64, i64)* %int_round2, i64 (i64, i64)** %int_round2.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  call void @CHECK_NUMBER_OR_FLOAT(i64 %0)
  %1 = load i64, i64* %divisor.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %if.end.48, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %divisor.addr, align 8
  call void @CHECK_NUMBER_OR_FLOAT(i64 %2)
  %3 = load i64, i64* %arg.addr, align 8
  %and = and i64 %3, 7
  %conv = trunc i64 %and to i32
  %cmp1 = icmp eq i32 %conv, 7
  br i1 %cmp1, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i64, i64* %divisor.addr, align 8
  %and3 = and i64 %4, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 7
  br i1 %cmp5, label %if.then.7, label %if.end.37

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  %5 = load i64, i64* %arg.addr, align 8
  %and8 = and i64 %5, 7
  %conv9 = trunc i64 %and8 to i32
  %cmp10 = icmp eq i32 %conv9, 7
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %6 = load i64, i64* %arg.addr, align 8
  %call12 = call double @XFLOAT_DATA(i64 %6)
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %7 = load i64, i64* %arg.addr, align 8
  %shr = ashr i64 %7, 2
  %conv13 = sitofp i64 %shr to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call12, %cond.true ], [ %conv13, %cond.false ]
  store double %cond, double* %f1, align 8
  %8 = load i64, i64* %divisor.addr, align 8
  %and14 = and i64 %8, 7
  %conv15 = trunc i64 %and14 to i32
  %cmp16 = icmp eq i32 %conv15, 7
  br i1 %cmp16, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end
  %9 = load i64, i64* %divisor.addr, align 8
  %call19 = call double @XFLOAT_DATA(i64 %9)
  br label %cond.end.23

cond.false.20:                                    ; preds = %cond.end
  %10 = load i64, i64* %divisor.addr, align 8
  %shr21 = ashr i64 %10, 2
  %conv22 = sitofp i64 %shr21 to double
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.18
  %cond24 = phi double [ %call19, %cond.true.18 ], [ %conv22, %cond.false.20 ]
  store double %cond24, double* %f2, align 8
  %11 = load double (double)*, double (double)** %double_round.addr, align 8
  %12 = load double, double* %f1, align 8
  %13 = load double, double* %f2, align 8
  %div = fdiv double %12, %13
  %call25 = call double %11(double %div)
  store double %call25, double* %f1, align 8
  %14 = load double, double* %f1, align 8
  %cmp26 = fcmp ole double 0.000000e+00, %14
  br i1 %cmp26, label %land.lhs.true, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %cond.end.23
  %15 = load double, double* %f1, align 8
  %cmp29 = fcmp ole double 0xC3C0000000000000, %15
  br i1 %cmp29, label %land.lhs.true, label %if.then.33

land.lhs.true:                                    ; preds = %lor.lhs.false.28, %cond.end.23
  %16 = load double, double* %f1, align 8
  %cmp31 = fcmp ole double %16, 0x43C0000000000000
  br i1 %cmp31, label %if.end, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true, %lor.lhs.false.28
  %call34 = call i64 @builtin_lisp_symbol(i32 786)
  %17 = load i8*, i8** %name.addr, align 8
  %call35 = call i64 @build_string(i8* %17)
  %18 = load i64, i64* %arg.addr, align 8
  %19 = load i64, i64* %divisor.addr, align 8
  call void @xsignal3(i64 %call34, i64 %call35, i64 %18, i64 %19) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true
  %20 = load double, double* %f1, align 8
  %conv36 = fptoui double %20 to i64
  %shl = shl i64 %conv36, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %arg.addr, align 8
  %21 = load i64, i64* %arg.addr, align 8
  store i64 %21, i64* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false
  %22 = load i64, i64* %arg.addr, align 8
  %shr38 = ashr i64 %22, 2
  store i64 %shr38, i64* %i1, align 8
  %23 = load i64, i64* %divisor.addr, align 8
  %shr39 = ashr i64 %23, 2
  store i64 %shr39, i64* %i2, align 8
  %24 = load i64, i64* %i2, align 8
  %cmp40 = icmp eq i64 %24, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.37
  %call43 = call i64 @builtin_lisp_symbol(i32 178)
  call void @xsignal0(i64 %call43) #6
  unreachable

if.end.44:                                        ; preds = %if.end.37
  %25 = load i64 (i64, i64)*, i64 (i64, i64)** %int_round2.addr, align 8
  %26 = load i64, i64* %i1, align 8
  %27 = load i64, i64* %i2, align 8
  %call45 = call i64 %25(i64 %26, i64 %27)
  %shl46 = shl i64 %call45, 2
  %add47 = add i64 %shl46, 2
  store i64 %add47, i64* %arg.addr, align 8
  %28 = load i64, i64* %arg.addr, align 8
  store i64 %28, i64* %retval
  br label %return

if.end.48:                                        ; preds = %entry
  %29 = load i64, i64* %arg.addr, align 8
  %and49 = and i64 %29, 7
  %conv50 = trunc i64 %and49 to i32
  %cmp51 = icmp eq i32 %conv50, 7
  br i1 %cmp51, label %if.then.53, label %if.end.71

if.then.53:                                       ; preds = %if.end.48
  %30 = load double (double)*, double (double)** %double_round.addr, align 8
  %31 = load i64, i64* %arg.addr, align 8
  %call54 = call double @XFLOAT_DATA(i64 %31)
  %call55 = call double %30(double %call54)
  store double %call55, double* %d, align 8
  %32 = load double, double* %d, align 8
  %cmp56 = fcmp ole double 0.000000e+00, %32
  br i1 %cmp56, label %land.lhs.true.61, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.then.53
  %33 = load double, double* %d, align 8
  %cmp59 = fcmp ole double 0xC3C0000000000000, %33
  br i1 %cmp59, label %land.lhs.true.61, label %if.then.64

land.lhs.true.61:                                 ; preds = %lor.lhs.false.58, %if.then.53
  %34 = load double, double* %d, align 8
  %cmp62 = fcmp ole double %34, 0x43C0000000000000
  br i1 %cmp62, label %if.end.67, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.61, %lor.lhs.false.58
  %call65 = call i64 @builtin_lisp_symbol(i32 786)
  %35 = load i8*, i8** %name.addr, align 8
  %call66 = call i64 @build_string(i8* %35)
  %36 = load i64, i64* %arg.addr, align 8
  call void @xsignal2(i64 %call65, i64 %call66, i64 %36) #6
  unreachable

if.end.67:                                        ; preds = %land.lhs.true.61
  %37 = load double, double* %d, align 8
  %conv68 = fptoui double %37 to i64
  %shl69 = shl i64 %conv68, 2
  %add70 = add i64 %shl69, 2
  store i64 %add70, i64* %arg.addr, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.67, %if.end.48
  %38 = load i64, i64* %arg.addr, align 8
  store i64 %38, i64* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.end.44, %if.end
  %39 = load i64, i64* %retval
  ret i64 %39
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind uwtable
define internal i64 @ceiling2(i64 %i1, i64 %i2) #0 {
entry:
  %i1.addr = alloca i64, align 8
  %i2.addr = alloca i64, align 8
  store i64 %i1, i64* %i1.addr, align 8
  store i64 %i2, i64* %i2.addr, align 8
  %0 = load i64, i64* %i1.addr, align 8
  %1 = load i64, i64* %i2.addr, align 8
  %div = sdiv i64 %0, %1
  %2 = load i64, i64* %i1.addr, align 8
  %3 = load i64, i64* %i2.addr, align 8
  %rem = srem i64 %2, %3
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i32
  %4 = load i64, i64* %i1.addr, align 8
  %cmp1 = icmp slt i64 %4, 0
  %conv2 = zext i1 %cmp1 to i32
  %5 = load i64, i64* %i2.addr, align 8
  %cmp3 = icmp slt i64 %5, 0
  %conv4 = zext i1 %cmp3 to i32
  %cmp5 = icmp eq i32 %conv2, %conv4
  %conv6 = zext i1 %cmp5 to i32
  %and = and i32 %conv, %conv6
  %conv7 = sext i32 %and to i64
  %add = add nsw i64 %div, %conv7
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @Ffloor(i64 %arg, i64 %divisor) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %divisor, i64* %divisor.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %1 = load i64, i64* %divisor.addr, align 8
  %call = call i64 @rounding_driver(i64 %0, i64 %1, double (double)* @floor, i64 (i64, i64)* @floor2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  ret i64 %call
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define internal i64 @floor2(i64 %i1, i64 %i2) #0 {
entry:
  %i1.addr = alloca i64, align 8
  %i2.addr = alloca i64, align 8
  store i64 %i1, i64* %i1.addr, align 8
  store i64 %i2, i64* %i2.addr, align 8
  %0 = load i64, i64* %i1.addr, align 8
  %1 = load i64, i64* %i2.addr, align 8
  %div = sdiv i64 %0, %1
  %2 = load i64, i64* %i1.addr, align 8
  %3 = load i64, i64* %i2.addr, align 8
  %rem = srem i64 %2, %3
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i32
  %4 = load i64, i64* %i1.addr, align 8
  %cmp1 = icmp slt i64 %4, 0
  %conv2 = zext i1 %cmp1 to i32
  %5 = load i64, i64* %i2.addr, align 8
  %cmp3 = icmp slt i64 %5, 0
  %conv4 = zext i1 %cmp3 to i32
  %cmp5 = icmp ne i32 %conv2, %conv4
  %conv6 = zext i1 %cmp5 to i32
  %and = and i32 %conv, %conv6
  %conv7 = sext i32 %and to i64
  %sub = sub nsw i64 %div, %conv7
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define i64 @Fround(i64 %arg, i64 %divisor) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %divisor, i64* %divisor.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %1 = load i64, i64* %divisor.addr, align 8
  %call = call i64 @rounding_driver(i64 %0, i64 %1, double (double)* @rint, i64 (i64, i64)* @round2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  ret i64 %call
}

; Function Attrs: nounwind readnone
declare double @rint(double) #3

; Function Attrs: nounwind uwtable
define internal i64 @round2(i64 %i1, i64 %i2) #0 {
entry:
  %i1.addr = alloca i64, align 8
  %i2.addr = alloca i64, align 8
  %q = alloca i64, align 8
  %r = alloca i64, align 8
  %abs_r = alloca i64, align 8
  %abs_r1 = alloca i64, align 8
  store i64 %i1, i64* %i1.addr, align 8
  store i64 %i2, i64* %i2.addr, align 8
  %0 = load i64, i64* %i1.addr, align 8
  %1 = load i64, i64* %i2.addr, align 8
  %div = sdiv i64 %0, %1
  store i64 %div, i64* %q, align 8
  %2 = load i64, i64* %i1.addr, align 8
  %3 = load i64, i64* %i2.addr, align 8
  %rem = srem i64 %2, %3
  store i64 %rem, i64* %r, align 8
  %4 = load i64, i64* %r, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %r, align 8
  %sub = sub nsw i64 0, %5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %r, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %6, %cond.false ]
  store i64 %cond, i64* %abs_r, align 8
  %7 = load i64, i64* %i2.addr, align 8
  %cmp1 = icmp slt i64 %7, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %8 = load i64, i64* %i2.addr, align 8
  %sub3 = sub nsw i64 0, %8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %9 = load i64, i64* %i2.addr, align 8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi i64 [ %sub3, %cond.true.2 ], [ %9, %cond.false.4 ]
  %10 = load i64, i64* %abs_r, align 8
  %sub7 = sub nsw i64 %cond6, %10
  store i64 %sub7, i64* %abs_r1, align 8
  %11 = load i64, i64* %q, align 8
  %12 = load i64, i64* %abs_r, align 8
  %13 = load i64, i64* %q, align 8
  %and = and i64 %13, 1
  %add = add nsw i64 %12, %and
  %14 = load i64, i64* %abs_r1, align 8
  %cmp8 = icmp sle i64 %add, %14
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end.5
  br label %cond.end.13

cond.false.10:                                    ; preds = %cond.end.5
  %15 = load i64, i64* %i2.addr, align 8
  %16 = load i64, i64* %r, align 8
  %xor = xor i64 %15, %16
  %cmp11 = icmp slt i64 %xor, 0
  %cond12 = select i1 %cmp11, i32 -1, i32 1
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.10, %cond.true.9
  %cond14 = phi i32 [ 0, %cond.true.9 ], [ %cond12, %cond.false.10 ]
  %conv = sext i32 %cond14 to i64
  %add15 = add nsw i64 %11, %conv
  ret i64 %add15
}

; Function Attrs: nounwind uwtable
define i64 @Ftruncate(i64 %arg, i64 %divisor) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %arg, i64* %arg.addr, align 8
  store i64 %divisor, i64* %divisor.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %1 = load i64, i64* %divisor.addr, align 8
  %call = call i64 @rounding_driver(i64 %0, i64 %1, double (double)* @double_identity, i64 (i64, i64)* @truncate2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal double @double_identity(double %d) #0 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8
  %0 = load double, double* %d.addr, align 8
  ret double %0
}

; Function Attrs: nounwind uwtable
define internal i64 @truncate2(i64 %i1, i64 %i2) #0 {
entry:
  %i1.addr = alloca i64, align 8
  %i2.addr = alloca i64, align 8
  store i64 %i1, i64* %i1.addr, align 8
  store i64 %i2, i64* %i2.addr, align 8
  %0 = load i64, i64* %i1.addr, align 8
  %1 = load i64, i64* %i2.addr, align 8
  %div = sdiv i64 %0, %1
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @fmod_float(i64 %x, i64 %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %f1 = alloca double, align 8
  %f2 = alloca double, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %call = call double @XFLOAT_DATA(i64 %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, i64* %x.addr, align 8
  %shr = ashr i64 %2, 2
  %conv2 = sitofp i64 %shr to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call, %cond.true ], [ %conv2, %cond.false ]
  store double %cond, double* %f1, align 8
  %3 = load i64, i64* %y.addr, align 8
  %and3 = and i64 %3, 7
  %conv4 = trunc i64 %and3 to i32
  %cmp5 = icmp eq i32 %conv4, 7
  br i1 %cmp5, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.end
  %4 = load i64, i64* %y.addr, align 8
  %call8 = call double @XFLOAT_DATA(i64 %4)
  br label %cond.end.12

cond.false.9:                                     ; preds = %cond.end
  %5 = load i64, i64* %y.addr, align 8
  %shr10 = ashr i64 %5, 2
  %conv11 = sitofp i64 %shr10 to double
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.7
  %cond13 = phi double [ %call8, %cond.true.7 ], [ %conv11, %cond.false.9 ]
  store double %cond13, double* %f2, align 8
  %6 = load double, double* %f1, align 8
  %7 = load double, double* %f2, align 8
  %call14 = call double @fmod(double %6, double %7) #5
  store double %call14, double* %f1, align 8
  %8 = load double, double* %f2, align 8
  %cmp15 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp15, label %cond.true.17, label %cond.false.20

cond.true.17:                                     ; preds = %cond.end.12
  %9 = load double, double* %f1, align 8
  %cmp18 = fcmp ogt double %9, 0.000000e+00
  br i1 %cmp18, label %if.then, label %if.end

cond.false.20:                                    ; preds = %cond.end.12
  %10 = load double, double* %f1, align 8
  %cmp21 = fcmp olt double %10, 0.000000e+00
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.20, %cond.true.17
  %11 = load double, double* %f2, align 8
  %12 = load double, double* %f1, align 8
  %add = fadd double %12, %11
  store double %add, double* %f1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false.20, %cond.true.17
  %13 = load double, double* %f1, align 8
  %call23 = call i64 @make_float(double %13)
  ret i64 %call23
}

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind uwtable
define i64 @Ffceiling(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @ceil(double %1) #7
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define i64 @Fffloor(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @floor(double %1) #7
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define i64 @Ffround(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %call1 = call double @rint(double %1) #7
  store double %call1, double* %d, align 8
  %2 = load double, double* %d, align 8
  %call2 = call i64 @make_float(double %2)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define i64 @Fftruncate(i64 %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %call = call double @extract_float(i64 %0)
  store double %call, double* %d, align 8
  %1 = load double, double* %d, align 8
  %cmp = fcmp oge double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %d, align 8
  %call1 = call double @floor(double %2) #7
  store double %call1, double* %d, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load double, double* %d, align 8
  %call2 = call double @ceil(double %3) #7
  store double %call2, double* %d, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load double, double* %d, align 8
  %call3 = call i64 @make_float(double %4)
  ret i64 %call3
}

; Function Attrs: nounwind uwtable
define void @syms_of_floatfns() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sacos to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sasin to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Satan to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Scos to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssin to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Stan to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sisnan to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Scopysign to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfrexp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sldexp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfceiling to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sffloor to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfround to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sftruncate to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sexp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sexpt to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Slog to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Ssqrt to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sabs to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfloat to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Slogb to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sceiling to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfloor to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sround to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Struncate to %struct.Lisp_Subr*))
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

; Function Attrs: noreturn
declare void @xsignal3(i64, i64, i64, i64) #4

declare i64 @build_string(i8*) #1

; Function Attrs: noreturn
declare void @xsignal0(i64) #4

; Function Attrs: noreturn
declare void @xsignal2(i64, i64, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
