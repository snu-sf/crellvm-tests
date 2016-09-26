; ModuleID = './dtoa.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Bigint = type { %struct.Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.U = type { double }
%struct.BCinfo = type { i32, i32, i32, i32 }

@tens = internal constant [23 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21, double 1.000000e+22], align 16
@bigtens = internal constant [5 x double] [double 1.000000e+16, double 1.000000e+32, double 1.000000e+64, double 1.000000e+128, double 1.000000e+256], align 16
@tinytens = internal constant [5 x double] [double 1.000000e-16, double 1.000000e-32, double 1.000000e-64, double 1.000000e-128, double 0x1168062864AC6F43], align 16
@.str = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@freelist = internal global [8 x %struct.Bigint*] zeroinitializer, align 16
@pmem_next = internal global double* getelementptr inbounds ([288 x double], [288 x double]* @private_mem, i32 0, i32 0), align 8
@private_mem = internal global [288 x double] zeroinitializer, align 16
@pow5mult.p05 = internal global [3 x i32] [i32 5, i32 25, i32 125], align 4
@p5s = internal global %struct.Bigint* null, align 8

; Function Attrs: nounwind uwtable
define double @_Py_dg_stdnan(i32 %sign) #0 {
entry:
  %sign.addr = alloca i32, align 4
  %rv = alloca %union.U, align 8
  store i32 %sign, i32* %sign.addr, align 4
  %L = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %L, i32 0, i64 1
  store i32 2146959360, i32* %arrayidx, align 4
  %L1 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx2 = getelementptr [2 x i32], [2 x i32]* %L1, i32 0, i64 0
  store i32 0, i32* %arrayidx2, align 4
  %0 = load i32, i32* %sign.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %L3 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx4 = getelementptr [2 x i32], [2 x i32]* %L3, i32 0, i64 1
  %1 = load i32, i32* %arrayidx4, align 4
  %or = or i32 %1, -2147483648
  store i32 %or, i32* %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %d = bitcast %union.U* %rv to double*
  %2 = load double, double* %d, align 8
  ret double %2
}

; Function Attrs: nounwind uwtable
define double @_Py_dg_infinity(i32 %sign) #0 {
entry:
  %sign.addr = alloca i32, align 4
  %rv = alloca %union.U, align 8
  store i32 %sign, i32* %sign.addr, align 4
  %L = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %L, i32 0, i64 1
  store i32 2146435072, i32* %arrayidx, align 4
  %L1 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx2 = getelementptr [2 x i32], [2 x i32]* %L1, i32 0, i64 0
  store i32 0, i32* %arrayidx2, align 4
  %0 = load i32, i32* %sign.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %d = bitcast %union.U* %rv to double*
  %1 = load double, double* %d, align 8
  %sub = fsub double -0.000000e+00, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %d3 = bitcast %union.U* %rv to double*
  %2 = load double, double* %d3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %2, %cond.false ]
  ret double %cond
}

; Function Attrs: nounwind uwtable
define double @_Py_dg_strtod(i8* %s00, i8** %se) #0 {
entry:
  %retval = alloca double, align 8
  %s00.addr = alloca i8*, align 8
  %se.addr = alloca i8**, align 8
  %bb2 = alloca i32, align 4
  %bb5 = alloca i32, align 4
  %bbe = alloca i32, align 4
  %bd2 = alloca i32, align 4
  %bd5 = alloca i32, align 4
  %bs2 = alloca i32, align 4
  %c = alloca i32, align 4
  %dsign = alloca i32, align 4
  %e = alloca i32, align 4
  %e1 = alloca i32, align 4
  %error = alloca i32, align 4
  %esign = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %lz = alloca i32, align 4
  %nd = alloca i32, align 4
  %nd0 = alloca i32, align 4
  %odd = alloca i32, align 4
  %sign = alloca i32, align 4
  %s = alloca i8*, align 8
  %s0 = alloca i8*, align 8
  %s1 = alloca i8*, align 8
  %aadj = alloca double, align 8
  %aadj1 = alloca double, align 8
  %aadj2 = alloca %union.U, align 8
  %adj = alloca %union.U, align 8
  %rv = alloca %union.U, align 8
  %rv0 = alloca %union.U, align 8
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %abs_exp = alloca i32, align 4
  %L = alloca i32, align 4
  %bc = alloca %struct.BCinfo, align 4
  %bb = alloca %struct.Bigint*, align 8
  %bb1 = alloca %struct.Bigint*, align 8
  %bd = alloca %struct.Bigint*, align 8
  %bd0 = alloca %struct.Bigint*, align 8
  %bs = alloca %struct.Bigint*, align 8
  %delta = alloca %struct.Bigint*, align 8
  %ndigits = alloca i64, align 8
  %fraclen = alloca i64, align 8
  store i8* %s00, i8** %s00.addr, align 8
  store i8** %se, i8*** %se.addr, align 8
  %d = bitcast %union.U* %rv to double*
  store double 0.000000e+00, double* %d, align 8
  %0 = load i8*, i8** %s00.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %c, align 4
  store i32 0, i32* %sign, align 4
  %2 = load i32, i32* %c, align 4
  switch i32 %2, label %sw.epilog [
    i32 45, label %sw.bb
    i32 43, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %sign, align 4
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  %3 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %conv2 = sext i8 %4 to i32
  store i32 %conv2, i32* %c, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.1, %entry
  %5 = load i8*, i8** %s, align 8
  store i8* %5, i8** %s1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %6 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %6, 48
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %s, align 8
  %incdec.ptr4 = getelementptr i8, i8* %7, i32 1
  store i8* %incdec.ptr4, i8** %s, align 8
  %8 = load i8, i8* %incdec.ptr4, align 1
  %conv5 = sext i8 %8 to i32
  store i32 %conv5, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** %s, align 8
  %10 = load i8*, i8** %s1, align 8
  %cmp6 = icmp ne i8* %9, %10
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %lz, align 4
  %11 = load i8*, i8** %s, align 8
  store i8* %11, i8** %s1, align 8
  store i8* %11, i8** %s0, align 8
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.13, %while.end
  %12 = load i32, i32* %c, align 4
  %cmp9 = icmp sle i32 48, %12
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.8
  %13 = load i32, i32* %c, align 4
  %cmp11 = icmp sle i32 %13, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.8
  %14 = phi i1 [ false, %while.cond.8 ], [ %cmp11, %land.rhs ]
  br i1 %14, label %while.body.13, label %while.end.16

while.body.13:                                    ; preds = %land.end
  %15 = load i8*, i8** %s, align 8
  %incdec.ptr14 = getelementptr i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %s, align 8
  %16 = load i8, i8* %incdec.ptr14, align 1
  %conv15 = sext i8 %16 to i32
  store i32 %conv15, i32* %c, align 4
  br label %while.cond.8

while.end.16:                                     ; preds = %land.end
  %17 = load i8*, i8** %s, align 8
  %18 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %ndigits, align 8
  store i64 0, i64* %fraclen, align 8
  %19 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %19, 46
  br i1 %cmp17, label %if.then, label %if.end.54

if.then:                                          ; preds = %while.end.16
  %20 = load i8*, i8** %s, align 8
  %incdec.ptr19 = getelementptr i8, i8* %20, i32 1
  store i8* %incdec.ptr19, i8** %s, align 8
  %21 = load i8, i8* %incdec.ptr19, align 1
  %conv20 = sext i8 %21 to i32
  store i32 %conv20, i32* %c, align 4
  %22 = load i64, i64* %ndigits, align 8
  %tobool = icmp ne i64 %22, 0
  br i1 %tobool, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %if.then
  %23 = load i8*, i8** %s, align 8
  store i8* %23, i8** %s1, align 8
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.25, %if.then.21
  %24 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %24, 48
  br i1 %cmp23, label %while.body.25, label %while.end.28

while.body.25:                                    ; preds = %while.cond.22
  %25 = load i8*, i8** %s, align 8
  %incdec.ptr26 = getelementptr i8, i8* %25, i32 1
  store i8* %incdec.ptr26, i8** %s, align 8
  %26 = load i8, i8* %incdec.ptr26, align 1
  %conv27 = sext i8 %26 to i32
  store i32 %conv27, i32* %c, align 4
  br label %while.cond.22

while.end.28:                                     ; preds = %while.cond.22
  %27 = load i32, i32* %lz, align 4
  %tobool29 = icmp ne i32 %27, 0
  br i1 %tobool29, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end.28
  %28 = load i8*, i8** %s, align 8
  %29 = load i8*, i8** %s1, align 8
  %cmp30 = icmp ne i8* %28, %29
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end.28
  %30 = phi i1 [ true, %while.end.28 ], [ %cmp30, %lor.rhs ]
  %lor.ext = zext i1 %30 to i32
  store i32 %lor.ext, i32* %lz, align 4
  %31 = load i8*, i8** %s, align 8
  %32 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast32 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast33 = ptrtoint i8* %32 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %33 = load i64, i64* %fraclen, align 8
  %add = add i64 %33, %sub.ptr.sub34
  store i64 %add, i64* %fraclen, align 8
  %34 = load i8*, i8** %s, align 8
  store i8* %34, i8** %s0, align 8
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  %35 = load i8*, i8** %s, align 8
  store i8* %35, i8** %s1, align 8
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.42, %if.end
  %36 = load i32, i32* %c, align 4
  %cmp36 = icmp sle i32 48, %36
  br i1 %cmp36, label %land.rhs.38, label %land.end.41

land.rhs.38:                                      ; preds = %while.cond.35
  %37 = load i32, i32* %c, align 4
  %cmp39 = icmp sle i32 %37, 57
  br label %land.end.41

land.end.41:                                      ; preds = %land.rhs.38, %while.cond.35
  %38 = phi i1 [ false, %while.cond.35 ], [ %cmp39, %land.rhs.38 ]
  br i1 %38, label %while.body.42, label %while.end.45

while.body.42:                                    ; preds = %land.end.41
  %39 = load i8*, i8** %s, align 8
  %incdec.ptr43 = getelementptr i8, i8* %39, i32 1
  store i8* %incdec.ptr43, i8** %s, align 8
  %40 = load i8, i8* %incdec.ptr43, align 1
  %conv44 = sext i8 %40 to i32
  store i32 %conv44, i32* %c, align 4
  br label %while.cond.35

while.end.45:                                     ; preds = %land.end.41
  %41 = load i8*, i8** %s, align 8
  %42 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast46 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %42 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %43 = load i64, i64* %ndigits, align 8
  %add49 = add i64 %43, %sub.ptr.sub48
  store i64 %add49, i64* %ndigits, align 8
  %44 = load i8*, i8** %s, align 8
  %45 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast50 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast51 = ptrtoint i8* %45 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %46 = load i64, i64* %fraclen, align 8
  %add53 = add i64 %46, %sub.ptr.sub52
  store i64 %add53, i64* %fraclen, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %while.end.45, %while.end.16
  %47 = load i64, i64* %ndigits, align 8
  %tobool55 = icmp ne i64 %47, 0
  br i1 %tobool55, label %if.end.61, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.54
  %48 = load i32, i32* %lz, align 4
  %tobool56 = icmp ne i32 %48, 0
  br i1 %tobool56, label %if.end.61, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true
  %49 = load i8**, i8*** %se.addr, align 8
  %tobool58 = icmp ne i8** %49, null
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.57
  %50 = load i8*, i8** %s00.addr, align 8
  %51 = load i8**, i8*** %se.addr, align 8
  store i8* %50, i8** %51, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.57
  br label %parse_error

if.end.61:                                        ; preds = %land.lhs.true, %if.end.54
  %52 = load i64, i64* %ndigits, align 8
  %cmp62 = icmp ugt i64 %52, 1000000000
  br i1 %cmp62, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.61
  %53 = load i64, i64* %fraclen, align 8
  %cmp64 = icmp ugt i64 %53, 1000000000
  br i1 %cmp64, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %lor.lhs.false, %if.end.61
  %54 = load i8**, i8*** %se.addr, align 8
  %tobool67 = icmp ne i8** %54, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.66
  %55 = load i8*, i8** %s00.addr, align 8
  %56 = load i8**, i8*** %se.addr, align 8
  store i8* %55, i8** %56, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.then.66
  br label %parse_error

if.end.70:                                        ; preds = %lor.lhs.false
  %57 = load i64, i64* %ndigits, align 8
  %conv71 = trunc i64 %57 to i32
  store i32 %conv71, i32* %nd, align 4
  %58 = load i64, i64* %ndigits, align 8
  %conv72 = trunc i64 %58 to i32
  %59 = load i64, i64* %fraclen, align 8
  %conv73 = trunc i64 %59 to i32
  %sub = sub i32 %conv72, %conv73
  store i32 %sub, i32* %nd0, align 4
  store i32 0, i32* %e, align 4
  %60 = load i32, i32* %c, align 4
  %cmp74 = icmp eq i32 %60, 101
  br i1 %cmp74, label %if.then.79, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.end.70
  %61 = load i32, i32* %c, align 4
  %cmp77 = icmp eq i32 %61, 69
  br i1 %cmp77, label %if.then.79, label %if.end.129

if.then.79:                                       ; preds = %lor.lhs.false.76, %if.end.70
  %62 = load i8*, i8** %s, align 8
  store i8* %62, i8** %s00.addr, align 8
  %63 = load i8*, i8** %s, align 8
  %incdec.ptr80 = getelementptr i8, i8* %63, i32 1
  store i8* %incdec.ptr80, i8** %s, align 8
  %64 = load i8, i8* %incdec.ptr80, align 1
  %conv81 = sext i8 %64 to i32
  store i32 %conv81, i32* %c, align 4
  store i32 0, i32* %esign, align 4
  %65 = load i32, i32* %c, align 4
  switch i32 %65, label %sw.epilog.86 [
    i32 45, label %sw.bb.82
    i32 43, label %sw.bb.83
  ]

sw.bb.82:                                         ; preds = %if.then.79
  store i32 1, i32* %esign, align 4
  br label %sw.bb.83

sw.bb.83:                                         ; preds = %if.then.79, %sw.bb.82
  %66 = load i8*, i8** %s, align 8
  %incdec.ptr84 = getelementptr i8, i8* %66, i32 1
  store i8* %incdec.ptr84, i8** %s, align 8
  %67 = load i8, i8* %incdec.ptr84, align 1
  %conv85 = sext i8 %67 to i32
  store i32 %conv85, i32* %c, align 4
  br label %sw.epilog.86

sw.epilog.86:                                     ; preds = %sw.bb.83, %if.then.79
  %68 = load i8*, i8** %s, align 8
  store i8* %68, i8** %s1, align 8
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.90, %sw.epilog.86
  %69 = load i32, i32* %c, align 4
  %cmp88 = icmp eq i32 %69, 48
  br i1 %cmp88, label %while.body.90, label %while.end.93

while.body.90:                                    ; preds = %while.cond.87
  %70 = load i8*, i8** %s, align 8
  %incdec.ptr91 = getelementptr i8, i8* %70, i32 1
  store i8* %incdec.ptr91, i8** %s, align 8
  %71 = load i8, i8* %incdec.ptr91, align 1
  %conv92 = sext i8 %71 to i32
  store i32 %conv92, i32* %c, align 4
  br label %while.cond.87

while.end.93:                                     ; preds = %while.cond.87
  %72 = load i8*, i8** %s, align 8
  %73 = load i8*, i8** %s1, align 8
  %cmp94 = icmp ne i8* %72, %73
  %conv95 = zext i1 %cmp94 to i32
  store i32 %conv95, i32* %lz, align 4
  %74 = load i8*, i8** %s, align 8
  store i8* %74, i8** %s1, align 8
  store i32 0, i32* %abs_exp, align 4
  br label %while.cond.96

while.cond.96:                                    ; preds = %while.body.103, %while.end.93
  %75 = load i32, i32* %c, align 4
  %cmp97 = icmp sle i32 48, %75
  br i1 %cmp97, label %land.rhs.99, label %land.end.102

land.rhs.99:                                      ; preds = %while.cond.96
  %76 = load i32, i32* %c, align 4
  %cmp100 = icmp sle i32 %76, 57
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.99, %while.cond.96
  %77 = phi i1 [ false, %while.cond.96 ], [ %cmp100, %land.rhs.99 ]
  br i1 %77, label %while.body.103, label %while.end.108

while.body.103:                                   ; preds = %land.end.102
  %78 = load i32, i32* %abs_exp, align 4
  %mul = mul i32 10, %78
  %79 = load i32, i32* %c, align 4
  %sub104 = sub i32 %79, 48
  %add105 = add i32 %mul, %sub104
  store i32 %add105, i32* %abs_exp, align 4
  %80 = load i8*, i8** %s, align 8
  %incdec.ptr106 = getelementptr i8, i8* %80, i32 1
  store i8* %incdec.ptr106, i8** %s, align 8
  %81 = load i8, i8* %incdec.ptr106, align 1
  %conv107 = sext i8 %81 to i32
  store i32 %conv107, i32* %c, align 4
  br label %while.cond.96

while.end.108:                                    ; preds = %land.end.102
  %82 = load i8*, i8** %s, align 8
  %83 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast109 = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast110 = ptrtoint i8* %83 to i64
  %sub.ptr.sub111 = sub i64 %sub.ptr.lhs.cast109, %sub.ptr.rhs.cast110
  %cmp112 = icmp sgt i64 %sub.ptr.sub111, 9
  br i1 %cmp112, label %if.then.117, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %while.end.108
  %84 = load i32, i32* %abs_exp, align 4
  %cmp115 = icmp ugt i32 %84, 1100000000
  br i1 %cmp115, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %lor.lhs.false.114, %while.end.108
  store i32 1100000000, i32* %e, align 4
  br label %if.end.118

if.else:                                          ; preds = %lor.lhs.false.114
  %85 = load i32, i32* %abs_exp, align 4
  store i32 %85, i32* %e, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.else, %if.then.117
  %86 = load i32, i32* %esign, align 4
  %tobool119 = icmp ne i32 %86, 0
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.118
  %87 = load i32, i32* %e, align 4
  %sub121 = sub i32 0, %87
  store i32 %sub121, i32* %e, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.118
  %88 = load i8*, i8** %s, align 8
  %89 = load i8*, i8** %s1, align 8
  %cmp123 = icmp eq i8* %88, %89
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.128

land.lhs.true.125:                                ; preds = %if.end.122
  %90 = load i32, i32* %lz, align 4
  %tobool126 = icmp ne i32 %90, 0
  br i1 %tobool126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %land.lhs.true.125
  %91 = load i8*, i8** %s00.addr, align 8
  store i8* %91, i8** %s, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true.125, %if.end.122
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %lor.lhs.false.76
  %92 = load i32, i32* %nd, align 4
  %93 = load i32, i32* %nd0, align 4
  %sub130 = sub i32 %92, %93
  %94 = load i32, i32* %e, align 4
  %sub131 = sub i32 %94, %sub130
  store i32 %sub131, i32* %e, align 4
  %95 = load i32, i32* %nd0, align 4
  %cmp132 = icmp sle i32 %95, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.129
  %96 = load i32, i32* %nd, align 4
  store i32 %96, i32* %nd0, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %if.end.129
  %97 = load i8**, i8*** %se.addr, align 8
  %tobool136 = icmp ne i8** %97, null
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.135
  %98 = load i8*, i8** %s, align 8
  %99 = load i8**, i8*** %se.addr, align 8
  store i8* %98, i8** %99, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.135
  %100 = load i32, i32* %nd, align 4
  %tobool139 = icmp ne i32 %100, 0
  br i1 %tobool139, label %if.end.141, label %if.then.140

if.then.140:                                      ; preds = %if.end.138
  br label %ret

if.end.141:                                       ; preds = %if.end.138
  %101 = load i32, i32* %nd, align 4
  store i32 %101, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.151, %if.end.141
  %102 = load i32, i32* %i, align 4
  %cmp142 = icmp sgt i32 %102, 0
  br i1 %cmp142, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %103 = load i32, i32* %i, align 4
  %dec = add i32 %103, -1
  store i32 %dec, i32* %i, align 4
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %nd0, align 4
  %cmp144 = icmp slt i32 %104, %105
  br i1 %cmp144, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %106 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %107 = load i32, i32* %i, align 4
  %add146 = add i32 %107, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %106, %cond.true ], [ %add146, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %108 = load i8*, i8** %s0, align 8
  %arrayidx = getelementptr i8, i8* %108, i64 %idxprom
  %109 = load i8, i8* %arrayidx, align 1
  %conv147 = sext i8 %109 to i32
  %cmp148 = icmp ne i32 %conv147, 48
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %cond.end
  %110 = load i32, i32* %i, align 4
  %inc = add i32 %110, 1
  store i32 %inc, i32* %i, align 4
  br label %for.end

if.end.151:                                       ; preds = %cond.end
  br label %for.cond

for.end:                                          ; preds = %if.then.150, %for.cond
  %111 = load i32, i32* %nd, align 4
  %112 = load i32, i32* %i, align 4
  %sub152 = sub i32 %111, %112
  %113 = load i32, i32* %e, align 4
  %add153 = add i32 %113, %sub152
  store i32 %add153, i32* %e, align 4
  %114 = load i32, i32* %i, align 4
  store i32 %114, i32* %nd, align 4
  %115 = load i32, i32* %nd0, align 4
  %116 = load i32, i32* %nd, align 4
  %cmp154 = icmp sgt i32 %115, %116
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %for.end
  %117 = load i32, i32* %nd, align 4
  store i32 %117, i32* %nd0, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %for.end
  %118 = load i32, i32* %e, align 4
  store i32 %118, i32* %e1, align 4
  %e0 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 0
  store i32 %118, i32* %e0, align 4
  store i32 0, i32* %z, align 4
  store i32 0, i32* %y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc, %if.end.157
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* %nd, align 4
  %cmp159 = icmp slt i32 %119, %120
  br i1 %cmp159, label %for.body.161, label %for.end.199

for.body.161:                                     ; preds = %for.cond.158
  %121 = load i32, i32* %i, align 4
  %cmp162 = icmp slt i32 %121, 9
  br i1 %cmp162, label %if.then.164, label %if.else.178

if.then.164:                                      ; preds = %for.body.161
  %122 = load i32, i32* %y, align 4
  %mul165 = mul i32 10, %122
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %nd0, align 4
  %cmp166 = icmp slt i32 %123, %124
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %if.then.164
  %125 = load i32, i32* %i, align 4
  br label %cond.end.171

cond.false.169:                                   ; preds = %if.then.164
  %126 = load i32, i32* %i, align 4
  %add170 = add i32 %126, 1
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.169, %cond.true.168
  %cond172 = phi i32 [ %125, %cond.true.168 ], [ %add170, %cond.false.169 ]
  %idxprom173 = sext i32 %cond172 to i64
  %127 = load i8*, i8** %s0, align 8
  %arrayidx174 = getelementptr i8, i8* %127, i64 %idxprom173
  %128 = load i8, i8* %arrayidx174, align 1
  %conv175 = sext i8 %128 to i32
  %add176 = add i32 %mul165, %conv175
  %sub177 = sub i32 %add176, 48
  store i32 %sub177, i32* %y, align 4
  br label %if.end.197

if.else.178:                                      ; preds = %for.body.161
  %129 = load i32, i32* %i, align 4
  %cmp179 = icmp slt i32 %129, 16
  br i1 %cmp179, label %if.then.181, label %if.else.195

if.then.181:                                      ; preds = %if.else.178
  %130 = load i32, i32* %z, align 4
  %mul182 = mul i32 10, %130
  %131 = load i32, i32* %i, align 4
  %132 = load i32, i32* %nd0, align 4
  %cmp183 = icmp slt i32 %131, %132
  br i1 %cmp183, label %cond.true.185, label %cond.false.186

cond.true.185:                                    ; preds = %if.then.181
  %133 = load i32, i32* %i, align 4
  br label %cond.end.188

cond.false.186:                                   ; preds = %if.then.181
  %134 = load i32, i32* %i, align 4
  %add187 = add i32 %134, 1
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.186, %cond.true.185
  %cond189 = phi i32 [ %133, %cond.true.185 ], [ %add187, %cond.false.186 ]
  %idxprom190 = sext i32 %cond189 to i64
  %135 = load i8*, i8** %s0, align 8
  %arrayidx191 = getelementptr i8, i8* %135, i64 %idxprom190
  %136 = load i8, i8* %arrayidx191, align 1
  %conv192 = sext i8 %136 to i32
  %add193 = add i32 %mul182, %conv192
  %sub194 = sub i32 %add193, 48
  store i32 %sub194, i32* %z, align 4
  br label %if.end.196

if.else.195:                                      ; preds = %if.else.178
  br label %for.end.199

if.end.196:                                       ; preds = %cond.end.188
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %cond.end.171
  br label %for.inc

for.inc:                                          ; preds = %if.end.197
  %137 = load i32, i32* %i, align 4
  %inc198 = add i32 %137, 1
  store i32 %inc198, i32* %i, align 4
  br label %for.cond.158

for.end.199:                                      ; preds = %if.else.195, %for.cond.158
  %138 = load i32, i32* %nd, align 4
  %cmp200 = icmp slt i32 %138, 16
  br i1 %cmp200, label %cond.true.202, label %cond.false.203

cond.true.202:                                    ; preds = %for.end.199
  %139 = load i32, i32* %nd, align 4
  br label %cond.end.204

cond.false.203:                                   ; preds = %for.end.199
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.203, %cond.true.202
  %cond205 = phi i32 [ %139, %cond.true.202 ], [ 16, %cond.false.203 ]
  store i32 %cond205, i32* %k, align 4
  %140 = load i32, i32* %y, align 4
  %conv206 = uitofp i32 %140 to double
  %d207 = bitcast %union.U* %rv to double*
  store double %conv206, double* %d207, align 8
  %141 = load i32, i32* %k, align 4
  %cmp208 = icmp sgt i32 %141, 9
  br i1 %cmp208, label %if.then.210, label %if.end.219

if.then.210:                                      ; preds = %cond.end.204
  %142 = load i32, i32* %k, align 4
  %sub211 = sub i32 %142, 9
  %idxprom212 = sext i32 %sub211 to i64
  %arrayidx213 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom212
  %143 = load double, double* %arrayidx213, align 8
  %d214 = bitcast %union.U* %rv to double*
  %144 = load double, double* %d214, align 8
  %mul215 = fmul double %143, %144
  %145 = load i32, i32* %z, align 4
  %conv216 = uitofp i32 %145 to double
  %add217 = fadd double %mul215, %conv216
  %d218 = bitcast %union.U* %rv to double*
  store double %add217, double* %d218, align 8
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.210, %cond.end.204
  store %struct.Bigint* null, %struct.Bigint** %bd0, align 8
  %146 = load i32, i32* %nd, align 4
  %cmp220 = icmp sle i32 %146, 15
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.265

land.lhs.true.222:                                ; preds = %if.end.219
  %147 = call i32 @llvm.flt.rounds()
  %cmp223 = icmp eq i32 %147, 1
  br i1 %cmp223, label %if.then.225, label %if.end.265

if.then.225:                                      ; preds = %land.lhs.true.222
  %148 = load i32, i32* %e, align 4
  %tobool226 = icmp ne i32 %148, 0
  br i1 %tobool226, label %if.end.228, label %if.then.227

if.then.227:                                      ; preds = %if.then.225
  br label %ret

if.end.228:                                       ; preds = %if.then.225
  %149 = load i32, i32* %e, align 4
  %cmp229 = icmp sgt i32 %149, 0
  br i1 %cmp229, label %if.then.231, label %if.else.255

if.then.231:                                      ; preds = %if.end.228
  %150 = load i32, i32* %e, align 4
  %cmp232 = icmp sle i32 %150, 22
  br i1 %cmp232, label %if.then.234, label %if.end.239

if.then.234:                                      ; preds = %if.then.231
  %151 = load i32, i32* %e, align 4
  %idxprom235 = sext i32 %151 to i64
  %arrayidx236 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom235
  %152 = load double, double* %arrayidx236, align 8
  %d237 = bitcast %union.U* %rv to double*
  %153 = load double, double* %d237, align 8
  %mul238 = fmul double %153, %152
  store double %mul238, double* %d237, align 8
  br label %ret

if.end.239:                                       ; preds = %if.then.231
  %154 = load i32, i32* %nd, align 4
  %sub240 = sub i32 15, %154
  store i32 %sub240, i32* %i, align 4
  %155 = load i32, i32* %e, align 4
  %156 = load i32, i32* %i, align 4
  %add241 = add i32 22, %156
  %cmp242 = icmp sle i32 %155, %add241
  br i1 %cmp242, label %if.then.244, label %if.end.254

if.then.244:                                      ; preds = %if.end.239
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %e, align 4
  %sub245 = sub i32 %158, %157
  store i32 %sub245, i32* %e, align 4
  %159 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %159 to i64
  %arrayidx247 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom246
  %160 = load double, double* %arrayidx247, align 8
  %d248 = bitcast %union.U* %rv to double*
  %161 = load double, double* %d248, align 8
  %mul249 = fmul double %161, %160
  store double %mul249, double* %d248, align 8
  %162 = load i32, i32* %e, align 4
  %idxprom250 = sext i32 %162 to i64
  %arrayidx251 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom250
  %163 = load double, double* %arrayidx251, align 8
  %d252 = bitcast %union.U* %rv to double*
  %164 = load double, double* %d252, align 8
  %mul253 = fmul double %164, %163
  store double %mul253, double* %d252, align 8
  br label %ret

if.end.254:                                       ; preds = %if.end.239
  br label %if.end.264

if.else.255:                                      ; preds = %if.end.228
  %165 = load i32, i32* %e, align 4
  %cmp256 = icmp sge i32 %165, -22
  br i1 %cmp256, label %if.then.258, label %if.end.263

if.then.258:                                      ; preds = %if.else.255
  %166 = load i32, i32* %e, align 4
  %sub259 = sub i32 0, %166
  %idxprom260 = sext i32 %sub259 to i64
  %arrayidx261 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom260
  %167 = load double, double* %arrayidx261, align 8
  %d262 = bitcast %union.U* %rv to double*
  %168 = load double, double* %d262, align 8
  %div = fdiv double %168, %167
  store double %div, double* %d262, align 8
  br label %ret

if.end.263:                                       ; preds = %if.else.255
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.end.254
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %land.lhs.true.222, %if.end.219
  %169 = load i32, i32* %nd, align 4
  %170 = load i32, i32* %k, align 4
  %sub266 = sub i32 %169, %170
  %171 = load i32, i32* %e1, align 4
  %add267 = add i32 %171, %sub266
  store i32 %add267, i32* %e1, align 4
  %scale = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  store i32 0, i32* %scale, align 4
  %172 = load i32, i32* %e1, align 4
  %cmp268 = icmp sgt i32 %172, 0
  br i1 %cmp268, label %if.then.270, label %if.else.328

if.then.270:                                      ; preds = %if.end.265
  %173 = load i32, i32* %e1, align 4
  %and = and i32 %173, 15
  store i32 %and, i32* %i, align 4
  %tobool271 = icmp ne i32 %and, 0
  br i1 %tobool271, label %if.then.272, label %if.end.277

if.then.272:                                      ; preds = %if.then.270
  %174 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %174 to i64
  %arrayidx274 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom273
  %175 = load double, double* %arrayidx274, align 8
  %d275 = bitcast %union.U* %rv to double*
  %176 = load double, double* %d275, align 8
  %mul276 = fmul double %176, %175
  store double %mul276, double* %d275, align 8
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.272, %if.then.270
  %177 = load i32, i32* %e1, align 4
  %and278 = and i32 %177, -16
  store i32 %and278, i32* %e1, align 4
  %tobool279 = icmp ne i32 %and278, 0
  br i1 %tobool279, label %if.then.280, label %if.end.327

if.then.280:                                      ; preds = %if.end.277
  %178 = load i32, i32* %e1, align 4
  %cmp281 = icmp sgt i32 %178, 308
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.then.280
  br label %ovfl

if.end.284:                                       ; preds = %if.then.280
  %179 = load i32, i32* %e1, align 4
  %shr = ashr i32 %179, 4
  store i32 %shr, i32* %e1, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.285

for.cond.285:                                     ; preds = %for.inc.297, %if.end.284
  %180 = load i32, i32* %e1, align 4
  %cmp286 = icmp sgt i32 %180, 1
  br i1 %cmp286, label %for.body.288, label %for.end.300

for.body.288:                                     ; preds = %for.cond.285
  %181 = load i32, i32* %e1, align 4
  %and289 = and i32 %181, 1
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %if.then.291, label %if.end.296

if.then.291:                                      ; preds = %for.body.288
  %182 = load i32, i32* %j, align 4
  %idxprom292 = sext i32 %182 to i64
  %arrayidx293 = getelementptr [5 x double], [5 x double]* @bigtens, i32 0, i64 %idxprom292
  %183 = load double, double* %arrayidx293, align 8
  %d294 = bitcast %union.U* %rv to double*
  %184 = load double, double* %d294, align 8
  %mul295 = fmul double %184, %183
  store double %mul295, double* %d294, align 8
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.291, %for.body.288
  br label %for.inc.297

for.inc.297:                                      ; preds = %if.end.296
  %185 = load i32, i32* %j, align 4
  %inc298 = add i32 %185, 1
  store i32 %inc298, i32* %j, align 4
  %186 = load i32, i32* %e1, align 4
  %shr299 = ashr i32 %186, 1
  store i32 %shr299, i32* %e1, align 4
  br label %for.cond.285

for.end.300:                                      ; preds = %for.cond.285
  %L301 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx302 = getelementptr [2 x i32], [2 x i32]* %L301, i32 0, i64 1
  %187 = load i32, i32* %arrayidx302, align 4
  %sub303 = sub i32 %187, 55574528
  store i32 %sub303, i32* %arrayidx302, align 4
  %188 = load i32, i32* %j, align 4
  %idxprom304 = sext i32 %188 to i64
  %arrayidx305 = getelementptr [5 x double], [5 x double]* @bigtens, i32 0, i64 %idxprom304
  %189 = load double, double* %arrayidx305, align 8
  %d306 = bitcast %union.U* %rv to double*
  %190 = load double, double* %d306, align 8
  %mul307 = fmul double %190, %189
  store double %mul307, double* %d306, align 8
  %L308 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx309 = getelementptr [2 x i32], [2 x i32]* %L308, i32 0, i64 1
  %191 = load i32, i32* %arrayidx309, align 4
  %and310 = and i32 %191, 2146435072
  store i32 %and310, i32* %z, align 4
  %cmp311 = icmp ugt i32 %and310, 2090860544
  br i1 %cmp311, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %for.end.300
  br label %ovfl

if.end.314:                                       ; preds = %for.end.300
  %192 = load i32, i32* %z, align 4
  %cmp315 = icmp ugt i32 %192, 2089811968
  br i1 %cmp315, label %if.then.317, label %if.else.322

if.then.317:                                      ; preds = %if.end.314
  %L318 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx319 = getelementptr [2 x i32], [2 x i32]* %L318, i32 0, i64 1
  store i32 2146435071, i32* %arrayidx319, align 4
  %L320 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx321 = getelementptr [2 x i32], [2 x i32]* %L320, i32 0, i64 0
  store i32 -1, i32* %arrayidx321, align 4
  br label %if.end.326

if.else.322:                                      ; preds = %if.end.314
  %L323 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx324 = getelementptr [2 x i32], [2 x i32]* %L323, i32 0, i64 1
  %193 = load i32, i32* %arrayidx324, align 4
  %add325 = add i32 %193, 55574528
  store i32 %add325, i32* %arrayidx324, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.322, %if.then.317
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.end.277
  br label %if.end.409

if.else.328:                                      ; preds = %if.end.265
  %194 = load i32, i32* %e1, align 4
  %cmp329 = icmp slt i32 %194, 0
  br i1 %cmp329, label %if.then.331, label %if.end.408

if.then.331:                                      ; preds = %if.else.328
  %195 = load i32, i32* %e1, align 4
  %sub332 = sub i32 0, %195
  store i32 %sub332, i32* %e1, align 4
  %196 = load i32, i32* %e1, align 4
  %and333 = and i32 %196, 15
  store i32 %and333, i32* %i, align 4
  %tobool334 = icmp ne i32 %and333, 0
  br i1 %tobool334, label %if.then.335, label %if.end.340

if.then.335:                                      ; preds = %if.then.331
  %197 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %197 to i64
  %arrayidx337 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom336
  %198 = load double, double* %arrayidx337, align 8
  %d338 = bitcast %union.U* %rv to double*
  %199 = load double, double* %d338, align 8
  %div339 = fdiv double %199, %198
  store double %div339, double* %d338, align 8
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.335, %if.then.331
  %200 = load i32, i32* %e1, align 4
  %shr341 = ashr i32 %200, 4
  store i32 %shr341, i32* %e1, align 4
  %tobool342 = icmp ne i32 %shr341, 0
  br i1 %tobool342, label %if.then.343, label %if.end.407

if.then.343:                                      ; preds = %if.end.340
  %201 = load i32, i32* %e1, align 4
  %cmp344 = icmp sge i32 %201, 32
  br i1 %cmp344, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %if.then.343
  br label %undfl

if.end.347:                                       ; preds = %if.then.343
  %202 = load i32, i32* %e1, align 4
  %and348 = and i32 %202, 16
  %tobool349 = icmp ne i32 %and348, 0
  br i1 %tobool349, label %if.then.350, label %if.end.352

if.then.350:                                      ; preds = %if.end.347
  %scale351 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  store i32 106, i32* %scale351, align 4
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.350, %if.end.347
  store i32 0, i32* %j, align 4
  br label %for.cond.353

for.cond.353:                                     ; preds = %for.inc.365, %if.end.352
  %203 = load i32, i32* %e1, align 4
  %cmp354 = icmp sgt i32 %203, 0
  br i1 %cmp354, label %for.body.356, label %for.end.368

for.body.356:                                     ; preds = %for.cond.353
  %204 = load i32, i32* %e1, align 4
  %and357 = and i32 %204, 1
  %tobool358 = icmp ne i32 %and357, 0
  br i1 %tobool358, label %if.then.359, label %if.end.364

if.then.359:                                      ; preds = %for.body.356
  %205 = load i32, i32* %j, align 4
  %idxprom360 = sext i32 %205 to i64
  %arrayidx361 = getelementptr [5 x double], [5 x double]* @tinytens, i32 0, i64 %idxprom360
  %206 = load double, double* %arrayidx361, align 8
  %d362 = bitcast %union.U* %rv to double*
  %207 = load double, double* %d362, align 8
  %mul363 = fmul double %207, %206
  store double %mul363, double* %d362, align 8
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.359, %for.body.356
  br label %for.inc.365

for.inc.365:                                      ; preds = %if.end.364
  %208 = load i32, i32* %j, align 4
  %inc366 = add i32 %208, 1
  store i32 %inc366, i32* %j, align 4
  %209 = load i32, i32* %e1, align 4
  %shr367 = ashr i32 %209, 1
  store i32 %shr367, i32* %e1, align 4
  br label %for.cond.353

for.end.368:                                      ; preds = %for.cond.353
  %scale369 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  %210 = load i32, i32* %scale369, align 4
  %tobool370 = icmp ne i32 %210, 0
  br i1 %tobool370, label %land.lhs.true.371, label %if.end.402

land.lhs.true.371:                                ; preds = %for.end.368
  %L372 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx373 = getelementptr [2 x i32], [2 x i32]* %L372, i32 0, i64 1
  %211 = load i32, i32* %arrayidx373, align 4
  %and374 = and i32 %211, 2146435072
  %shr375 = lshr i32 %and374, 20
  %sub376 = sub i32 107, %shr375
  store i32 %sub376, i32* %j, align 4
  %cmp377 = icmp sgt i32 %sub376, 0
  br i1 %cmp377, label %if.then.379, label %if.end.402

if.then.379:                                      ; preds = %land.lhs.true.371
  %212 = load i32, i32* %j, align 4
  %cmp380 = icmp sge i32 %212, 32
  br i1 %cmp380, label %if.then.382, label %if.else.396

if.then.382:                                      ; preds = %if.then.379
  %L383 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx384 = getelementptr [2 x i32], [2 x i32]* %L383, i32 0, i64 0
  store i32 0, i32* %arrayidx384, align 4
  %213 = load i32, i32* %j, align 4
  %cmp385 = icmp sge i32 %213, 53
  br i1 %cmp385, label %if.then.387, label %if.else.390

if.then.387:                                      ; preds = %if.then.382
  %L388 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx389 = getelementptr [2 x i32], [2 x i32]* %L388, i32 0, i64 1
  store i32 57671680, i32* %arrayidx389, align 4
  br label %if.end.395

if.else.390:                                      ; preds = %if.then.382
  %214 = load i32, i32* %j, align 4
  %sub391 = sub i32 %214, 32
  %shl = shl i32 -1, %sub391
  %L392 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx393 = getelementptr [2 x i32], [2 x i32]* %L392, i32 0, i64 1
  %215 = load i32, i32* %arrayidx393, align 4
  %and394 = and i32 %215, %shl
  store i32 %and394, i32* %arrayidx393, align 4
  br label %if.end.395

if.end.395:                                       ; preds = %if.else.390, %if.then.387
  br label %if.end.401

if.else.396:                                      ; preds = %if.then.379
  %216 = load i32, i32* %j, align 4
  %shl397 = shl i32 -1, %216
  %L398 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx399 = getelementptr [2 x i32], [2 x i32]* %L398, i32 0, i64 0
  %217 = load i32, i32* %arrayidx399, align 4
  %and400 = and i32 %217, %shl397
  store i32 %and400, i32* %arrayidx399, align 4
  br label %if.end.401

if.end.401:                                       ; preds = %if.else.396, %if.end.395
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.401, %land.lhs.true.371, %for.end.368
  %d403 = bitcast %union.U* %rv to double*
  %218 = load double, double* %d403, align 8
  %tobool404 = fcmp une double %218, 0.000000e+00
  br i1 %tobool404, label %if.end.406, label %if.then.405

if.then.405:                                      ; preds = %if.end.402
  br label %undfl

if.end.406:                                       ; preds = %if.end.402
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.406, %if.end.340
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.407, %if.else.328
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.end.327
  %219 = load i32, i32* %nd, align 4
  %nd410 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 1
  store i32 %219, i32* %nd410, align 4
  %220 = load i32, i32* %nd0, align 4
  %nd0411 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 2
  store i32 %220, i32* %nd0411, align 4
  %221 = load i32, i32* %nd, align 4
  %cmp412 = icmp sgt i32 %221, 40
  br i1 %cmp412, label %if.then.414, label %if.end.473

if.then.414:                                      ; preds = %if.end.409
  store i32 18, i32* %i, align 4
  br label %for.cond.415

for.cond.415:                                     ; preds = %if.end.434, %if.then.414
  %222 = load i32, i32* %i, align 4
  %cmp416 = icmp sgt i32 %222, 0
  br i1 %cmp416, label %for.body.418, label %for.end.435

for.body.418:                                     ; preds = %for.cond.415
  %223 = load i32, i32* %i, align 4
  %dec419 = add i32 %223, -1
  store i32 %dec419, i32* %i, align 4
  %224 = load i32, i32* %i, align 4
  %225 = load i32, i32* %nd0, align 4
  %cmp420 = icmp slt i32 %224, %225
  br i1 %cmp420, label %cond.true.422, label %cond.false.423

cond.true.422:                                    ; preds = %for.body.418
  %226 = load i32, i32* %i, align 4
  br label %cond.end.425

cond.false.423:                                   ; preds = %for.body.418
  %227 = load i32, i32* %i, align 4
  %add424 = add i32 %227, 1
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.false.423, %cond.true.422
  %cond426 = phi i32 [ %226, %cond.true.422 ], [ %add424, %cond.false.423 ]
  %idxprom427 = sext i32 %cond426 to i64
  %228 = load i8*, i8** %s0, align 8
  %arrayidx428 = getelementptr i8, i8* %228, i64 %idxprom427
  %229 = load i8, i8* %arrayidx428, align 1
  %conv429 = sext i8 %229 to i32
  %cmp430 = icmp ne i32 %conv429, 48
  br i1 %cmp430, label %if.then.432, label %if.end.434

if.then.432:                                      ; preds = %cond.end.425
  %230 = load i32, i32* %i, align 4
  %inc433 = add i32 %230, 1
  store i32 %inc433, i32* %i, align 4
  br label %for.end.435

if.end.434:                                       ; preds = %cond.end.425
  br label %for.cond.415

for.end.435:                                      ; preds = %if.then.432, %for.cond.415
  %231 = load i32, i32* %nd, align 4
  %232 = load i32, i32* %i, align 4
  %sub436 = sub i32 %231, %232
  %233 = load i32, i32* %e, align 4
  %add437 = add i32 %233, %sub436
  store i32 %add437, i32* %e, align 4
  %234 = load i32, i32* %i, align 4
  store i32 %234, i32* %nd, align 4
  %235 = load i32, i32* %nd0, align 4
  %236 = load i32, i32* %nd, align 4
  %cmp438 = icmp sgt i32 %235, %236
  br i1 %cmp438, label %if.then.440, label %if.end.441

if.then.440:                                      ; preds = %for.end.435
  %237 = load i32, i32* %nd, align 4
  store i32 %237, i32* %nd0, align 4
  br label %if.end.441

if.end.441:                                       ; preds = %if.then.440, %for.end.435
  %238 = load i32, i32* %nd, align 4
  %cmp442 = icmp slt i32 %238, 9
  br i1 %cmp442, label %if.then.444, label %if.end.472

if.then.444:                                      ; preds = %if.end.441
  store i32 0, i32* %y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.445

for.cond.445:                                     ; preds = %for.inc.455, %if.then.444
  %239 = load i32, i32* %i, align 4
  %240 = load i32, i32* %nd0, align 4
  %cmp446 = icmp slt i32 %239, %240
  br i1 %cmp446, label %for.body.448, label %for.end.457

for.body.448:                                     ; preds = %for.cond.445
  %241 = load i32, i32* %y, align 4
  %mul449 = mul i32 10, %241
  %242 = load i32, i32* %i, align 4
  %idxprom450 = sext i32 %242 to i64
  %243 = load i8*, i8** %s0, align 8
  %arrayidx451 = getelementptr i8, i8* %243, i64 %idxprom450
  %244 = load i8, i8* %arrayidx451, align 1
  %conv452 = sext i8 %244 to i32
  %add453 = add i32 %mul449, %conv452
  %sub454 = sub i32 %add453, 48
  store i32 %sub454, i32* %y, align 4
  br label %for.inc.455

for.inc.455:                                      ; preds = %for.body.448
  %245 = load i32, i32* %i, align 4
  %inc456 = add i32 %245, 1
  store i32 %inc456, i32* %i, align 4
  br label %for.cond.445

for.end.457:                                      ; preds = %for.cond.445
  br label %for.cond.458

for.cond.458:                                     ; preds = %for.inc.469, %for.end.457
  %246 = load i32, i32* %i, align 4
  %247 = load i32, i32* %nd, align 4
  %cmp459 = icmp slt i32 %246, %247
  br i1 %cmp459, label %for.body.461, label %for.end.471

for.body.461:                                     ; preds = %for.cond.458
  %248 = load i32, i32* %y, align 4
  %mul462 = mul i32 10, %248
  %249 = load i32, i32* %i, align 4
  %add463 = add i32 %249, 1
  %idxprom464 = sext i32 %add463 to i64
  %250 = load i8*, i8** %s0, align 8
  %arrayidx465 = getelementptr i8, i8* %250, i64 %idxprom464
  %251 = load i8, i8* %arrayidx465, align 1
  %conv466 = sext i8 %251 to i32
  %add467 = add i32 %mul462, %conv466
  %sub468 = sub i32 %add467, 48
  store i32 %sub468, i32* %y, align 4
  br label %for.inc.469

for.inc.469:                                      ; preds = %for.body.461
  %252 = load i32, i32* %i, align 4
  %inc470 = add i32 %252, 1
  store i32 %inc470, i32* %i, align 4
  br label %for.cond.458

for.end.471:                                      ; preds = %for.cond.458
  br label %if.end.472

if.end.472:                                       ; preds = %for.end.471, %if.end.441
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.472, %if.end.409
  %253 = load i8*, i8** %s0, align 8
  %254 = load i32, i32* %nd0, align 4
  %255 = load i32, i32* %nd, align 4
  %256 = load i32, i32* %y, align 4
  %call = call %struct.Bigint* @s2b(i8* %253, i32 %254, i32 %255, i32 %256)
  store %struct.Bigint* %call, %struct.Bigint** %bd0, align 8
  %257 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  %cmp474 = icmp eq %struct.Bigint* %257, null
  br i1 %cmp474, label %if.then.476, label %if.end.477

if.then.476:                                      ; preds = %if.end.473
  br label %failed_malloc

if.end.477:                                       ; preds = %if.end.473
  br label %for.cond.478

for.cond.478:                                     ; preds = %cont, %if.end.477
  %258 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  %k479 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %258, i32 0, i32 1
  %259 = load i32, i32* %k479, align 4
  %call480 = call %struct.Bigint* @Balloc(i32 %259)
  store %struct.Bigint* %call480, %struct.Bigint** %bd, align 8
  %260 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  %cmp481 = icmp eq %struct.Bigint* %260, null
  br i1 %cmp481, label %if.then.483, label %if.end.484

if.then.483:                                      ; preds = %for.cond.478
  %261 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %261)
  br label %failed_malloc

if.end.484:                                       ; preds = %for.cond.478
  %262 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  %sign485 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %262, i32 0, i32 3
  %263 = bitcast i32* %sign485 to i8*
  %264 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  %sign486 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %264, i32 0, i32 3
  %265 = bitcast i32* %sign486 to i8*
  %266 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %266, i32 0, i32 4
  %267 = load i32, i32* %wds, align 4
  %conv487 = sext i32 %267 to i64
  %mul488 = mul i64 %conv487, 4
  %add489 = add i64 %mul488, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %263, i8* %265, i64 %add489, i32 1, i1 false)
  %scale490 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  %268 = load i32, i32* %scale490, align 4
  %call491 = call %struct.Bigint* @sd2b(%union.U* %rv, i32 %268, i32* %bbe)
  store %struct.Bigint* %call491, %struct.Bigint** %bb, align 8
  %269 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  %cmp492 = icmp eq %struct.Bigint* %269, null
  br i1 %cmp492, label %if.then.494, label %if.end.495

if.then.494:                                      ; preds = %if.end.484
  %270 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %270)
  %271 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %271)
  br label %failed_malloc

if.end.495:                                       ; preds = %if.end.484
  %272 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  %x = getelementptr inbounds %struct.Bigint, %struct.Bigint* %272, i32 0, i32 5
  %arrayidx496 = getelementptr [1 x i32], [1 x i32]* %x, i32 0, i64 0
  %273 = load i32, i32* %arrayidx496, align 4
  %and497 = and i32 %273, 1
  store i32 %and497, i32* %odd, align 4
  %call498 = call %struct.Bigint* @i2b(i32 1)
  store %struct.Bigint* %call498, %struct.Bigint** %bs, align 8
  %274 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  %cmp499 = icmp eq %struct.Bigint* %274, null
  br i1 %cmp499, label %if.then.501, label %if.end.502

if.then.501:                                      ; preds = %if.end.495
  %275 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %275)
  %276 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %276)
  %277 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %277)
  br label %failed_malloc

if.end.502:                                       ; preds = %if.end.495
  %278 = load i32, i32* %e, align 4
  %cmp503 = icmp sge i32 %278, 0
  br i1 %cmp503, label %if.then.505, label %if.else.506

if.then.505:                                      ; preds = %if.end.502
  store i32 0, i32* %bb5, align 4
  store i32 0, i32* %bb2, align 4
  %279 = load i32, i32* %e, align 4
  store i32 %279, i32* %bd5, align 4
  store i32 %279, i32* %bd2, align 4
  br label %if.end.508

if.else.506:                                      ; preds = %if.end.502
  %280 = load i32, i32* %e, align 4
  %sub507 = sub i32 0, %280
  store i32 %sub507, i32* %bb5, align 4
  store i32 %sub507, i32* %bb2, align 4
  store i32 0, i32* %bd5, align 4
  store i32 0, i32* %bd2, align 4
  br label %if.end.508

if.end.508:                                       ; preds = %if.else.506, %if.then.505
  %281 = load i32, i32* %bbe, align 4
  %cmp509 = icmp sge i32 %281, 0
  br i1 %cmp509, label %if.then.511, label %if.else.513

if.then.511:                                      ; preds = %if.end.508
  %282 = load i32, i32* %bbe, align 4
  %283 = load i32, i32* %bb2, align 4
  %add512 = add i32 %283, %282
  store i32 %add512, i32* %bb2, align 4
  br label %if.end.515

if.else.513:                                      ; preds = %if.end.508
  %284 = load i32, i32* %bbe, align 4
  %285 = load i32, i32* %bd2, align 4
  %sub514 = sub i32 %285, %284
  store i32 %sub514, i32* %bd2, align 4
  br label %if.end.515

if.end.515:                                       ; preds = %if.else.513, %if.then.511
  %286 = load i32, i32* %bb2, align 4
  store i32 %286, i32* %bs2, align 4
  %287 = load i32, i32* %bb2, align 4
  %inc516 = add i32 %287, 1
  store i32 %inc516, i32* %bb2, align 4
  %288 = load i32, i32* %bd2, align 4
  %inc517 = add i32 %288, 1
  store i32 %inc517, i32* %bd2, align 4
  %289 = load i32, i32* %bb2, align 4
  %290 = load i32, i32* %bd2, align 4
  %cmp518 = icmp slt i32 %289, %290
  br i1 %cmp518, label %cond.true.520, label %cond.false.521

cond.true.520:                                    ; preds = %if.end.515
  %291 = load i32, i32* %bb2, align 4
  br label %cond.end.522

cond.false.521:                                   ; preds = %if.end.515
  %292 = load i32, i32* %bd2, align 4
  br label %cond.end.522

cond.end.522:                                     ; preds = %cond.false.521, %cond.true.520
  %cond523 = phi i32 [ %291, %cond.true.520 ], [ %292, %cond.false.521 ]
  store i32 %cond523, i32* %i, align 4
  %293 = load i32, i32* %i, align 4
  %294 = load i32, i32* %bs2, align 4
  %cmp524 = icmp sgt i32 %293, %294
  br i1 %cmp524, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %cond.end.522
  %295 = load i32, i32* %bs2, align 4
  store i32 %295, i32* %i, align 4
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.526, %cond.end.522
  %296 = load i32, i32* %i, align 4
  %cmp528 = icmp sgt i32 %296, 0
  br i1 %cmp528, label %if.then.530, label %if.end.534

if.then.530:                                      ; preds = %if.end.527
  %297 = load i32, i32* %i, align 4
  %298 = load i32, i32* %bb2, align 4
  %sub531 = sub i32 %298, %297
  store i32 %sub531, i32* %bb2, align 4
  %299 = load i32, i32* %i, align 4
  %300 = load i32, i32* %bd2, align 4
  %sub532 = sub i32 %300, %299
  store i32 %sub532, i32* %bd2, align 4
  %301 = load i32, i32* %i, align 4
  %302 = load i32, i32* %bs2, align 4
  %sub533 = sub i32 %302, %301
  store i32 %sub533, i32* %bs2, align 4
  br label %if.end.534

if.end.534:                                       ; preds = %if.then.530, %if.end.527
  %303 = load i32, i32* %bb5, align 4
  %cmp535 = icmp sgt i32 %303, 0
  br i1 %cmp535, label %if.then.537, label %if.end.548

if.then.537:                                      ; preds = %if.end.534
  %304 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  %305 = load i32, i32* %bb5, align 4
  %call538 = call %struct.Bigint* @pow5mult(%struct.Bigint* %304, i32 %305)
  store %struct.Bigint* %call538, %struct.Bigint** %bs, align 8
  %306 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  %cmp539 = icmp eq %struct.Bigint* %306, null
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %if.then.537
  %307 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %307)
  %308 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %308)
  %309 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %309)
  br label %failed_malloc

if.end.542:                                       ; preds = %if.then.537
  %310 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  %311 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  %call543 = call %struct.Bigint* @mult(%struct.Bigint* %310, %struct.Bigint* %311)
  store %struct.Bigint* %call543, %struct.Bigint** %bb1, align 8
  %312 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %312)
  %313 = load %struct.Bigint*, %struct.Bigint** %bb1, align 8
  store %struct.Bigint* %313, %struct.Bigint** %bb, align 8
  %314 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  %cmp544 = icmp eq %struct.Bigint* %314, null
  br i1 %cmp544, label %if.then.546, label %if.end.547

if.then.546:                                      ; preds = %if.end.542
  %315 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  call void @Bfree(%struct.Bigint* %315)
  %316 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %316)
  %317 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %317)
  br label %failed_malloc

if.end.547:                                       ; preds = %if.end.542
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.547, %if.end.534
  %318 = load i32, i32* %bb2, align 4
  %cmp549 = icmp sgt i32 %318, 0
  br i1 %cmp549, label %if.then.551, label %if.end.557

if.then.551:                                      ; preds = %if.end.548
  %319 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  %320 = load i32, i32* %bb2, align 4
  %call552 = call %struct.Bigint* @lshift(%struct.Bigint* %319, i32 %320)
  store %struct.Bigint* %call552, %struct.Bigint** %bb, align 8
  %321 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  %cmp553 = icmp eq %struct.Bigint* %321, null
  br i1 %cmp553, label %if.then.555, label %if.end.556

if.then.555:                                      ; preds = %if.then.551
  %322 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  call void @Bfree(%struct.Bigint* %322)
  %323 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %323)
  %324 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %324)
  br label %failed_malloc

if.end.556:                                       ; preds = %if.then.551
  br label %if.end.557

if.end.557:                                       ; preds = %if.end.556, %if.end.548
  %325 = load i32, i32* %bd5, align 4
  %cmp558 = icmp sgt i32 %325, 0
  br i1 %cmp558, label %if.then.560, label %if.end.566

if.then.560:                                      ; preds = %if.end.557
  %326 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  %327 = load i32, i32* %bd5, align 4
  %call561 = call %struct.Bigint* @pow5mult(%struct.Bigint* %326, i32 %327)
  store %struct.Bigint* %call561, %struct.Bigint** %bd, align 8
  %328 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  %cmp562 = icmp eq %struct.Bigint* %328, null
  br i1 %cmp562, label %if.then.564, label %if.end.565

if.then.564:                                      ; preds = %if.then.560
  %329 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %329)
  %330 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  call void @Bfree(%struct.Bigint* %330)
  %331 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %331)
  br label %failed_malloc

if.end.565:                                       ; preds = %if.then.560
  br label %if.end.566

if.end.566:                                       ; preds = %if.end.565, %if.end.557
  %332 = load i32, i32* %bd2, align 4
  %cmp567 = icmp sgt i32 %332, 0
  br i1 %cmp567, label %if.then.569, label %if.end.575

if.then.569:                                      ; preds = %if.end.566
  %333 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  %334 = load i32, i32* %bd2, align 4
  %call570 = call %struct.Bigint* @lshift(%struct.Bigint* %333, i32 %334)
  store %struct.Bigint* %call570, %struct.Bigint** %bd, align 8
  %335 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  %cmp571 = icmp eq %struct.Bigint* %335, null
  br i1 %cmp571, label %if.then.573, label %if.end.574

if.then.573:                                      ; preds = %if.then.569
  %336 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %336)
  %337 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  call void @Bfree(%struct.Bigint* %337)
  %338 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %338)
  br label %failed_malloc

if.end.574:                                       ; preds = %if.then.569
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574, %if.end.566
  %339 = load i32, i32* %bs2, align 4
  %cmp576 = icmp sgt i32 %339, 0
  br i1 %cmp576, label %if.then.578, label %if.end.584

if.then.578:                                      ; preds = %if.end.575
  %340 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  %341 = load i32, i32* %bs2, align 4
  %call579 = call %struct.Bigint* @lshift(%struct.Bigint* %340, i32 %341)
  store %struct.Bigint* %call579, %struct.Bigint** %bs, align 8
  %342 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  %cmp580 = icmp eq %struct.Bigint* %342, null
  br i1 %cmp580, label %if.then.582, label %if.end.583

if.then.582:                                      ; preds = %if.then.578
  %343 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %343)
  %344 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %344)
  %345 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %345)
  br label %failed_malloc

if.end.583:                                       ; preds = %if.then.578
  br label %if.end.584

if.end.584:                                       ; preds = %if.end.583, %if.end.575
  %346 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  %347 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  %call585 = call %struct.Bigint* @diff(%struct.Bigint* %346, %struct.Bigint* %347)
  store %struct.Bigint* %call585, %struct.Bigint** %delta, align 8
  %348 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %cmp586 = icmp eq %struct.Bigint* %348, null
  br i1 %cmp586, label %if.then.588, label %if.end.589

if.then.588:                                      ; preds = %if.end.584
  %349 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %349)
  %350 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  call void @Bfree(%struct.Bigint* %350)
  %351 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %351)
  %352 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %352)
  br label %failed_malloc

if.end.589:                                       ; preds = %if.end.584
  %353 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %sign590 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %353, i32 0, i32 3
  %354 = load i32, i32* %sign590, align 4
  store i32 %354, i32* %dsign, align 4
  %355 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %sign591 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %355, i32 0, i32 3
  store i32 0, i32* %sign591, align 4
  %356 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %357 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  %call592 = call i32 @cmp(%struct.Bigint* %356, %struct.Bigint* %357)
  store i32 %call592, i32* %i, align 4
  %nd593 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 1
  %358 = load i32, i32* %nd593, align 4
  %359 = load i32, i32* %nd, align 4
  %cmp594 = icmp sgt i32 %358, %359
  br i1 %cmp594, label %land.lhs.true.596, label %if.end.628

land.lhs.true.596:                                ; preds = %if.end.589
  %360 = load i32, i32* %i, align 4
  %cmp597 = icmp sle i32 %360, 0
  br i1 %cmp597, label %if.then.599, label %if.end.628

if.then.599:                                      ; preds = %land.lhs.true.596
  %361 = load i32, i32* %dsign, align 4
  %tobool600 = icmp ne i32 %361, 0
  br i1 %tobool600, label %if.then.601, label %if.end.602

if.then.601:                                      ; preds = %if.then.599
  br label %for.end.952

if.end.602:                                       ; preds = %if.then.599
  %L603 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx604 = getelementptr [2 x i32], [2 x i32]* %L603, i32 0, i64 0
  %362 = load i32, i32* %arrayidx604, align 4
  %tobool605 = icmp ne i32 %362, 0
  br i1 %tobool605, label %if.end.626, label %land.lhs.true.606

land.lhs.true.606:                                ; preds = %if.end.602
  %L607 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx608 = getelementptr [2 x i32], [2 x i32]* %L607, i32 0, i64 1
  %363 = load i32, i32* %arrayidx608, align 4
  %and609 = and i32 %363, 1048575
  %tobool610 = icmp ne i32 %and609, 0
  br i1 %tobool610, label %if.end.626, label %if.then.611

if.then.611:                                      ; preds = %land.lhs.true.606
  %L612 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx613 = getelementptr [2 x i32], [2 x i32]* %L612, i32 0, i64 1
  %364 = load i32, i32* %arrayidx613, align 4
  %and614 = and i32 %364, 2146435072
  %shr615 = ashr i32 %and614, 20
  store i32 %shr615, i32* %j, align 4
  %365 = load i32, i32* %j, align 4
  %scale616 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  %366 = load i32, i32* %scale616, align 4
  %sub617 = sub i32 %365, %366
  %cmp618 = icmp sge i32 %sub617, 2
  br i1 %cmp618, label %if.then.620, label %if.end.625

if.then.620:                                      ; preds = %if.then.611
  %call621 = call double @sulp(%union.U* %rv, %struct.BCinfo* %bc)
  %mul622 = fmul double 5.000000e-01, %call621
  %d623 = bitcast %union.U* %rv to double*
  %367 = load double, double* %d623, align 8
  %sub624 = fsub double %367, %mul622
  store double %sub624, double* %d623, align 8
  br label %for.end.952

if.end.625:                                       ; preds = %if.then.611
  br label %if.end.626

if.end.626:                                       ; preds = %if.end.625, %land.lhs.true.606, %if.end.602
  %368 = load i32, i32* %nd, align 4
  %nd627 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 1
  store i32 %368, i32* %nd627, align 4
  store i32 -1, i32* %i, align 4
  br label %if.end.628

if.end.628:                                       ; preds = %if.end.626, %land.lhs.true.596, %if.end.589
  %369 = load i32, i32* %i, align 4
  %cmp629 = icmp slt i32 %369, 0
  br i1 %cmp629, label %if.then.631, label %if.end.669

if.then.631:                                      ; preds = %if.end.628
  %370 = load i32, i32* %dsign, align 4
  %tobool632 = icmp ne i32 %370, 0
  br i1 %tobool632, label %if.then.648, label %lor.lhs.false.633

lor.lhs.false.633:                                ; preds = %if.then.631
  %L634 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx635 = getelementptr [2 x i32], [2 x i32]* %L634, i32 0, i64 0
  %371 = load i32, i32* %arrayidx635, align 4
  %tobool636 = icmp ne i32 %371, 0
  br i1 %tobool636, label %if.then.648, label %lor.lhs.false.637

lor.lhs.false.637:                                ; preds = %lor.lhs.false.633
  %L638 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx639 = getelementptr [2 x i32], [2 x i32]* %L638, i32 0, i64 1
  %372 = load i32, i32* %arrayidx639, align 4
  %and640 = and i32 %372, 1048575
  %tobool641 = icmp ne i32 %and640, 0
  br i1 %tobool641, label %if.then.648, label %lor.lhs.false.642

lor.lhs.false.642:                                ; preds = %lor.lhs.false.637
  %L643 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx644 = getelementptr [2 x i32], [2 x i32]* %L643, i32 0, i64 1
  %373 = load i32, i32* %arrayidx644, align 4
  %and645 = and i32 %373, 2146435072
  %cmp646 = icmp ule i32 %and645, 112197632
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %lor.lhs.false.642, %lor.lhs.false.637, %lor.lhs.false.633, %if.then.631
  br label %for.end.952

if.end.649:                                       ; preds = %lor.lhs.false.642
  %374 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %x650 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %374, i32 0, i32 5
  %arrayidx651 = getelementptr [1 x i32], [1 x i32]* %x650, i32 0, i64 0
  %375 = load i32, i32* %arrayidx651, align 4
  %tobool652 = icmp ne i32 %375, 0
  br i1 %tobool652, label %if.end.658, label %land.lhs.true.653

land.lhs.true.653:                                ; preds = %if.end.649
  %376 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %wds654 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %376, i32 0, i32 4
  %377 = load i32, i32* %wds654, align 4
  %cmp655 = icmp sle i32 %377, 1
  br i1 %cmp655, label %if.then.657, label %if.end.658

if.then.657:                                      ; preds = %land.lhs.true.653
  br label %for.end.952

if.end.658:                                       ; preds = %land.lhs.true.653, %if.end.649
  %378 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %call659 = call %struct.Bigint* @lshift(%struct.Bigint* %378, i32 1)
  store %struct.Bigint* %call659, %struct.Bigint** %delta, align 8
  %379 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %cmp660 = icmp eq %struct.Bigint* %379, null
  br i1 %cmp660, label %if.then.662, label %if.end.663

if.then.662:                                      ; preds = %if.end.658
  %380 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %380)
  %381 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  call void @Bfree(%struct.Bigint* %381)
  %382 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %382)
  %383 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %383)
  br label %failed_malloc

if.end.663:                                       ; preds = %if.end.658
  %384 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %385 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  %call664 = call i32 @cmp(%struct.Bigint* %384, %struct.Bigint* %385)
  %cmp665 = icmp sgt i32 %call664, 0
  br i1 %cmp665, label %if.then.667, label %if.end.668

if.then.667:                                      ; preds = %if.end.663
  br label %drop_down

if.end.668:                                       ; preds = %if.end.663
  br label %for.end.952

if.end.669:                                       ; preds = %if.end.628
  %386 = load i32, i32* %i, align 4
  %cmp670 = icmp eq i32 %386, 0
  br i1 %cmp670, label %if.then.672, label %if.end.773

if.then.672:                                      ; preds = %if.end.669
  %387 = load i32, i32* %dsign, align 4
  %tobool673 = icmp ne i32 %387, 0
  br i1 %tobool673, label %if.then.674, label %if.else.711

if.then.674:                                      ; preds = %if.then.672
  %L675 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx676 = getelementptr [2 x i32], [2 x i32]* %L675, i32 0, i64 1
  %388 = load i32, i32* %arrayidx676, align 4
  %and677 = and i32 %388, 1048575
  %cmp678 = icmp eq i32 %and677, 1048575
  br i1 %cmp678, label %land.lhs.true.680, label %if.end.710

land.lhs.true.680:                                ; preds = %if.then.674
  %L681 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx682 = getelementptr [2 x i32], [2 x i32]* %L681, i32 0, i64 0
  %389 = load i32, i32* %arrayidx682, align 4
  %scale683 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  %390 = load i32, i32* %scale683, align 4
  %tobool684 = icmp ne i32 %390, 0
  br i1 %tobool684, label %land.lhs.true.685, label %cond.false.696

land.lhs.true.685:                                ; preds = %land.lhs.true.680
  %L686 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx687 = getelementptr [2 x i32], [2 x i32]* %L686, i32 0, i64 1
  %391 = load i32, i32* %arrayidx687, align 4
  %and688 = and i32 %391, 2146435072
  store i32 %and688, i32* %y, align 4
  %cmp689 = icmp ule i32 %and688, 111149056
  br i1 %cmp689, label %cond.true.691, label %cond.false.696

cond.true.691:                                    ; preds = %land.lhs.true.685
  %392 = load i32, i32* %y, align 4
  %shr692 = lshr i32 %392, 20
  %sub693 = sub i32 107, %shr692
  %shl694 = shl i32 -1, %sub693
  %and695 = and i32 -1, %shl694
  br label %cond.end.697

cond.false.696:                                   ; preds = %land.lhs.true.685, %land.lhs.true.680
  br label %cond.end.697

cond.end.697:                                     ; preds = %cond.false.696, %cond.true.691
  %cond698 = phi i32 [ %and695, %cond.true.691 ], [ -1, %cond.false.696 ]
  %cmp699 = icmp eq i32 %389, %cond698
  br i1 %cmp699, label %if.then.701, label %if.end.710

if.then.701:                                      ; preds = %cond.end.697
  %L702 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx703 = getelementptr [2 x i32], [2 x i32]* %L702, i32 0, i64 1
  %393 = load i32, i32* %arrayidx703, align 4
  %and704 = and i32 %393, 2146435072
  %add705 = add i32 %and704, 1048576
  %L706 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx707 = getelementptr [2 x i32], [2 x i32]* %L706, i32 0, i64 1
  store i32 %add705, i32* %arrayidx707, align 4
  %L708 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx709 = getelementptr [2 x i32], [2 x i32]* %L708, i32 0, i64 0
  store i32 0, i32* %arrayidx709, align 4
  br label %for.end.952

if.end.710:                                       ; preds = %cond.end.697, %if.then.674
  br label %if.end.750

if.else.711:                                      ; preds = %if.then.672
  %L712 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx713 = getelementptr [2 x i32], [2 x i32]* %L712, i32 0, i64 1
  %394 = load i32, i32* %arrayidx713, align 4
  %and714 = and i32 %394, 1048575
  %tobool715 = icmp ne i32 %and714, 0
  br i1 %tobool715, label %if.end.749, label %land.lhs.true.716

land.lhs.true.716:                                ; preds = %if.else.711
  %L717 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx718 = getelementptr [2 x i32], [2 x i32]* %L717, i32 0, i64 0
  %395 = load i32, i32* %arrayidx718, align 4
  %tobool719 = icmp ne i32 %395, 0
  br i1 %tobool719, label %if.end.749, label %if.then.720

if.then.720:                                      ; preds = %land.lhs.true.716
  br label %drop_down

drop_down:                                        ; preds = %if.then.720, %if.then.667
  %scale721 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  %396 = load i32, i32* %scale721, align 4
  %tobool722 = icmp ne i32 %396, 0
  br i1 %tobool722, label %if.then.723, label %if.end.740

if.then.723:                                      ; preds = %drop_down
  %L724 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx725 = getelementptr [2 x i32], [2 x i32]* %L724, i32 0, i64 1
  %397 = load i32, i32* %arrayidx725, align 4
  %and726 = and i32 %397, 2146435072
  store i32 %and726, i32* %L, align 4
  %398 = load i32, i32* %L, align 4
  %cmp727 = icmp sle i32 %398, 112197632
  br i1 %cmp727, label %if.then.729, label %if.end.739

if.then.729:                                      ; preds = %if.then.723
  %399 = load i32, i32* %L, align 4
  %cmp730 = icmp sgt i32 %399, 57671680
  br i1 %cmp730, label %if.then.732, label %if.end.733

if.then.732:                                      ; preds = %if.then.729
  br label %for.end.952

if.end.733:                                       ; preds = %if.then.729
  %nd734 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 1
  %400 = load i32, i32* %nd734, align 4
  %401 = load i32, i32* %nd, align 4
  %cmp735 = icmp sgt i32 %400, %401
  br i1 %cmp735, label %if.then.737, label %if.end.738

if.then.737:                                      ; preds = %if.end.733
  br label %for.end.952

if.end.738:                                       ; preds = %if.end.733
  br label %undfl

if.end.739:                                       ; preds = %if.then.723
  br label %if.end.740

if.end.740:                                       ; preds = %if.end.739, %drop_down
  %L741 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx742 = getelementptr [2 x i32], [2 x i32]* %L741, i32 0, i64 1
  %402 = load i32, i32* %arrayidx742, align 4
  %and743 = and i32 %402, 2146435072
  %sub744 = sub i32 %and743, 1048576
  store i32 %sub744, i32* %L, align 4
  %403 = load i32, i32* %L, align 4
  %or = or i32 %403, 1048575
  %L745 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx746 = getelementptr [2 x i32], [2 x i32]* %L745, i32 0, i64 1
  store i32 %or, i32* %arrayidx746, align 4
  %L747 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx748 = getelementptr [2 x i32], [2 x i32]* %L747, i32 0, i64 0
  store i32 -1, i32* %arrayidx748, align 4
  br label %for.end.952

if.end.749:                                       ; preds = %land.lhs.true.716, %if.else.711
  br label %if.end.750

if.end.750:                                       ; preds = %if.end.749, %if.end.710
  %404 = load i32, i32* %odd, align 4
  %tobool751 = icmp ne i32 %404, 0
  br i1 %tobool751, label %if.end.753, label %if.then.752

if.then.752:                                      ; preds = %if.end.750
  br label %for.end.952

if.end.753:                                       ; preds = %if.end.750
  %405 = load i32, i32* %dsign, align 4
  %tobool754 = icmp ne i32 %405, 0
  br i1 %tobool754, label %if.then.755, label %if.else.759

if.then.755:                                      ; preds = %if.end.753
  %call756 = call double @sulp(%union.U* %rv, %struct.BCinfo* %bc)
  %d757 = bitcast %union.U* %rv to double*
  %406 = load double, double* %d757, align 8
  %add758 = fadd double %406, %call756
  store double %add758, double* %d757, align 8
  br label %if.end.772

if.else.759:                                      ; preds = %if.end.753
  %call760 = call double @sulp(%union.U* %rv, %struct.BCinfo* %bc)
  %d761 = bitcast %union.U* %rv to double*
  %407 = load double, double* %d761, align 8
  %sub762 = fsub double %407, %call760
  store double %sub762, double* %d761, align 8
  %d763 = bitcast %union.U* %rv to double*
  %408 = load double, double* %d763, align 8
  %tobool764 = fcmp une double %408, 0.000000e+00
  br i1 %tobool764, label %if.end.771, label %if.then.765

if.then.765:                                      ; preds = %if.else.759
  %nd766 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 1
  %409 = load i32, i32* %nd766, align 4
  %410 = load i32, i32* %nd, align 4
  %cmp767 = icmp sgt i32 %409, %410
  br i1 %cmp767, label %if.then.769, label %if.end.770

if.then.769:                                      ; preds = %if.then.765
  br label %for.end.952

if.end.770:                                       ; preds = %if.then.765
  br label %undfl

if.end.771:                                       ; preds = %if.else.759
  br label %if.end.772

if.end.772:                                       ; preds = %if.end.771, %if.then.755
  br label %for.end.952

if.end.773:                                       ; preds = %if.end.669
  %411 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %412 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  %call774 = call double @ratio(%struct.Bigint* %411, %struct.Bigint* %412)
  store double %call774, double* %aadj, align 8
  %cmp775 = fcmp ole double %call774, 2.000000e+00
  br i1 %cmp775, label %if.then.777, label %if.else.815

if.then.777:                                      ; preds = %if.end.773
  %413 = load i32, i32* %dsign, align 4
  %tobool778 = icmp ne i32 %413, 0
  br i1 %tobool778, label %if.then.779, label %if.else.780

if.then.779:                                      ; preds = %if.then.777
  store double 1.000000e+00, double* %aadj1, align 8
  store double 1.000000e+00, double* %aadj, align 8
  br label %if.end.814

if.else.780:                                      ; preds = %if.then.777
  %L781 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx782 = getelementptr [2 x i32], [2 x i32]* %L781, i32 0, i64 0
  %414 = load i32, i32* %arrayidx782, align 4
  %tobool783 = icmp ne i32 %414, 0
  br i1 %tobool783, label %if.then.789, label %lor.lhs.false.784

lor.lhs.false.784:                                ; preds = %if.else.780
  %L785 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx786 = getelementptr [2 x i32], [2 x i32]* %L785, i32 0, i64 1
  %415 = load i32, i32* %arrayidx786, align 4
  %and787 = and i32 %415, 1048575
  %tobool788 = icmp ne i32 %and787, 0
  br i1 %tobool788, label %if.then.789, label %if.else.805

if.then.789:                                      ; preds = %lor.lhs.false.784, %if.else.780
  %L790 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx791 = getelementptr [2 x i32], [2 x i32]* %L790, i32 0, i64 0
  %416 = load i32, i32* %arrayidx791, align 4
  %cmp792 = icmp eq i32 %416, 1
  br i1 %cmp792, label %land.lhs.true.794, label %if.end.804

land.lhs.true.794:                                ; preds = %if.then.789
  %L795 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx796 = getelementptr [2 x i32], [2 x i32]* %L795, i32 0, i64 1
  %417 = load i32, i32* %arrayidx796, align 4
  %tobool797 = icmp ne i32 %417, 0
  br i1 %tobool797, label %if.end.804, label %if.then.798

if.then.798:                                      ; preds = %land.lhs.true.794
  %nd799 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 1
  %418 = load i32, i32* %nd799, align 4
  %419 = load i32, i32* %nd, align 4
  %cmp800 = icmp sgt i32 %418, %419
  br i1 %cmp800, label %if.then.802, label %if.end.803

if.then.802:                                      ; preds = %if.then.798
  br label %for.end.952

if.end.803:                                       ; preds = %if.then.798
  br label %undfl

if.end.804:                                       ; preds = %land.lhs.true.794, %if.then.789
  store double 1.000000e+00, double* %aadj, align 8
  store double -1.000000e+00, double* %aadj1, align 8
  br label %if.end.813

if.else.805:                                      ; preds = %lor.lhs.false.784
  %420 = load double, double* %aadj, align 8
  %cmp806 = fcmp olt double %420, 1.000000e+00
  br i1 %cmp806, label %if.then.808, label %if.else.809

if.then.808:                                      ; preds = %if.else.805
  store double 5.000000e-01, double* %aadj, align 8
  br label %if.end.811

if.else.809:                                      ; preds = %if.else.805
  %421 = load double, double* %aadj, align 8
  %mul810 = fmul double %421, 5.000000e-01
  store double %mul810, double* %aadj, align 8
  br label %if.end.811

if.end.811:                                       ; preds = %if.else.809, %if.then.808
  %422 = load double, double* %aadj, align 8
  %sub812 = fsub double -0.000000e+00, %422
  store double %sub812, double* %aadj1, align 8
  br label %if.end.813

if.end.813:                                       ; preds = %if.end.811, %if.end.804
  br label %if.end.814

if.end.814:                                       ; preds = %if.end.813, %if.then.779
  br label %if.end.828

if.else.815:                                      ; preds = %if.end.773
  %423 = load double, double* %aadj, align 8
  %mul816 = fmul double %423, 5.000000e-01
  store double %mul816, double* %aadj, align 8
  %424 = load i32, i32* %dsign, align 4
  %tobool817 = icmp ne i32 %424, 0
  br i1 %tobool817, label %cond.true.818, label %cond.false.819

cond.true.818:                                    ; preds = %if.else.815
  %425 = load double, double* %aadj, align 8
  br label %cond.end.821

cond.false.819:                                   ; preds = %if.else.815
  %426 = load double, double* %aadj, align 8
  %sub820 = fsub double -0.000000e+00, %426
  br label %cond.end.821

cond.end.821:                                     ; preds = %cond.false.819, %cond.true.818
  %cond822 = phi double [ %425, %cond.true.818 ], [ %sub820, %cond.false.819 ]
  store double %cond822, double* %aadj1, align 8
  %427 = call i32 @llvm.flt.rounds()
  %cmp823 = icmp eq i32 %427, 0
  br i1 %cmp823, label %if.then.825, label %if.end.827

if.then.825:                                      ; preds = %cond.end.821
  %428 = load double, double* %aadj1, align 8
  %add826 = fadd double %428, 5.000000e-01
  store double %add826, double* %aadj1, align 8
  br label %if.end.827

if.end.827:                                       ; preds = %if.then.825, %cond.end.821
  br label %if.end.828

if.end.828:                                       ; preds = %if.end.827, %if.end.814
  %L829 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx830 = getelementptr [2 x i32], [2 x i32]* %L829, i32 0, i64 1
  %429 = load i32, i32* %arrayidx830, align 4
  %and831 = and i32 %429, 2146435072
  store i32 %and831, i32* %y, align 4
  %430 = load i32, i32* %y, align 4
  %cmp832 = icmp eq i32 %430, 2145386496
  br i1 %cmp832, label %if.then.834, label %if.else.872

if.then.834:                                      ; preds = %if.end.828
  %d835 = bitcast %union.U* %rv to double*
  %431 = load double, double* %d835, align 8
  %d836 = bitcast %union.U* %rv0 to double*
  store double %431, double* %d836, align 8
  %L837 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx838 = getelementptr [2 x i32], [2 x i32]* %L837, i32 0, i64 1
  %432 = load i32, i32* %arrayidx838, align 4
  %sub839 = sub i32 %432, 55574528
  store i32 %sub839, i32* %arrayidx838, align 4
  %433 = load double, double* %aadj1, align 8
  %call840 = call double @ulp(%union.U* %rv)
  %mul841 = fmul double %433, %call840
  %d842 = bitcast %union.U* %adj to double*
  store double %mul841, double* %d842, align 8
  %d843 = bitcast %union.U* %adj to double*
  %434 = load double, double* %d843, align 8
  %d844 = bitcast %union.U* %rv to double*
  %435 = load double, double* %d844, align 8
  %add845 = fadd double %435, %434
  store double %add845, double* %d844, align 8
  %L846 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx847 = getelementptr [2 x i32], [2 x i32]* %L846, i32 0, i64 1
  %436 = load i32, i32* %arrayidx847, align 4
  %and848 = and i32 %436, 2146435072
  %cmp849 = icmp uge i32 %and848, 2090860544
  br i1 %cmp849, label %if.then.851, label %if.else.867

if.then.851:                                      ; preds = %if.then.834
  %L852 = bitcast %union.U* %rv0 to [2 x i32]*
  %arrayidx853 = getelementptr [2 x i32], [2 x i32]* %L852, i32 0, i64 1
  %437 = load i32, i32* %arrayidx853, align 4
  %cmp854 = icmp eq i32 %437, 2146435071
  br i1 %cmp854, label %land.lhs.true.856, label %if.end.862

land.lhs.true.856:                                ; preds = %if.then.851
  %L857 = bitcast %union.U* %rv0 to [2 x i32]*
  %arrayidx858 = getelementptr [2 x i32], [2 x i32]* %L857, i32 0, i64 0
  %438 = load i32, i32* %arrayidx858, align 4
  %cmp859 = icmp eq i32 %438, -1
  br i1 %cmp859, label %if.then.861, label %if.end.862

if.then.861:                                      ; preds = %land.lhs.true.856
  %439 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %439)
  %440 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %440)
  %441 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  call void @Bfree(%struct.Bigint* %441)
  %442 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %442)
  %443 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  call void @Bfree(%struct.Bigint* %443)
  br label %ovfl

if.end.862:                                       ; preds = %land.lhs.true.856, %if.then.851
  %L863 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx864 = getelementptr [2 x i32], [2 x i32]* %L863, i32 0, i64 1
  store i32 2146435071, i32* %arrayidx864, align 4
  %L865 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx866 = getelementptr [2 x i32], [2 x i32]* %L865, i32 0, i64 0
  store i32 -1, i32* %arrayidx866, align 4
  br label %cont

if.else.867:                                      ; preds = %if.then.834
  %L868 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx869 = getelementptr [2 x i32], [2 x i32]* %L868, i32 0, i64 1
  %444 = load i32, i32* %arrayidx869, align 4
  %add870 = add i32 %444, 55574528
  store i32 %add870, i32* %arrayidx869, align 4
  br label %if.end.871

if.end.871:                                       ; preds = %if.else.867
  br label %if.end.908

if.else.872:                                      ; preds = %if.end.828
  %scale873 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  %445 = load i32, i32* %scale873, align 4
  %tobool874 = icmp ne i32 %445, 0
  br i1 %tobool874, label %land.lhs.true.875, label %if.end.901

land.lhs.true.875:                                ; preds = %if.else.872
  %446 = load i32, i32* %y, align 4
  %cmp876 = icmp ule i32 %446, 111149056
  br i1 %cmp876, label %if.then.878, label %if.end.901

if.then.878:                                      ; preds = %land.lhs.true.875
  %447 = load double, double* %aadj, align 8
  %cmp879 = fcmp ole double %447, 0x41DFFFFFFFC00000
  br i1 %cmp879, label %if.then.881, label %if.end.894

if.then.881:                                      ; preds = %if.then.878
  %448 = load double, double* %aadj, align 8
  %conv882 = fptoui double %448 to i32
  store i32 %conv882, i32* %z, align 4
  %cmp883 = icmp ule i32 %conv882, 0
  br i1 %cmp883, label %if.then.885, label %if.end.886

if.then.885:                                      ; preds = %if.then.881
  store i32 1, i32* %z, align 4
  br label %if.end.886

if.end.886:                                       ; preds = %if.then.885, %if.then.881
  %449 = load i32, i32* %z, align 4
  %conv887 = uitofp i32 %449 to double
  store double %conv887, double* %aadj, align 8
  %450 = load i32, i32* %dsign, align 4
  %tobool888 = icmp ne i32 %450, 0
  br i1 %tobool888, label %cond.true.889, label %cond.false.890

cond.true.889:                                    ; preds = %if.end.886
  %451 = load double, double* %aadj, align 8
  br label %cond.end.892

cond.false.890:                                   ; preds = %if.end.886
  %452 = load double, double* %aadj, align 8
  %sub891 = fsub double -0.000000e+00, %452
  br label %cond.end.892

cond.end.892:                                     ; preds = %cond.false.890, %cond.true.889
  %cond893 = phi double [ %451, %cond.true.889 ], [ %sub891, %cond.false.890 ]
  store double %cond893, double* %aadj1, align 8
  br label %if.end.894

if.end.894:                                       ; preds = %cond.end.892, %if.then.878
  %453 = load double, double* %aadj1, align 8
  %d895 = bitcast %union.U* %aadj2 to double*
  store double %453, double* %d895, align 8
  %454 = load i32, i32* %y, align 4
  %sub896 = sub i32 112197632, %454
  %L897 = bitcast %union.U* %aadj2 to [2 x i32]*
  %arrayidx898 = getelementptr [2 x i32], [2 x i32]* %L897, i32 0, i64 1
  %455 = load i32, i32* %arrayidx898, align 4
  %add899 = add i32 %455, %sub896
  store i32 %add899, i32* %arrayidx898, align 4
  %d900 = bitcast %union.U* %aadj2 to double*
  %456 = load double, double* %d900, align 8
  store double %456, double* %aadj1, align 8
  br label %if.end.901

if.end.901:                                       ; preds = %if.end.894, %land.lhs.true.875, %if.else.872
  %457 = load double, double* %aadj1, align 8
  %call902 = call double @ulp(%union.U* %rv)
  %mul903 = fmul double %457, %call902
  %d904 = bitcast %union.U* %adj to double*
  store double %mul903, double* %d904, align 8
  %d905 = bitcast %union.U* %adj to double*
  %458 = load double, double* %d905, align 8
  %d906 = bitcast %union.U* %rv to double*
  %459 = load double, double* %d906, align 8
  %add907 = fadd double %459, %458
  store double %add907, double* %d906, align 8
  br label %if.end.908

if.end.908:                                       ; preds = %if.end.901, %if.end.871
  %L909 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx910 = getelementptr [2 x i32], [2 x i32]* %L909, i32 0, i64 1
  %460 = load i32, i32* %arrayidx910, align 4
  %and911 = and i32 %460, 2146435072
  store i32 %and911, i32* %z, align 4
  %nd912 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 1
  %461 = load i32, i32* %nd912, align 4
  %462 = load i32, i32* %nd, align 4
  %cmp913 = icmp eq i32 %461, %462
  br i1 %cmp913, label %if.then.915, label %if.end.951

if.then.915:                                      ; preds = %if.end.908
  %scale916 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  %463 = load i32, i32* %scale916, align 4
  %tobool917 = icmp ne i32 %463, 0
  br i1 %tobool917, label %if.end.950, label %if.then.918

if.then.918:                                      ; preds = %if.then.915
  %464 = load i32, i32* %y, align 4
  %465 = load i32, i32* %z, align 4
  %cmp919 = icmp eq i32 %464, %465
  br i1 %cmp919, label %if.then.921, label %if.end.949

if.then.921:                                      ; preds = %if.then.918
  %466 = load double, double* %aadj, align 8
  %conv922 = fptosi double %466 to i32
  store i32 %conv922, i32* %L, align 4
  %467 = load i32, i32* %L, align 4
  %conv923 = sitofp i32 %467 to double
  %468 = load double, double* %aadj, align 8
  %sub924 = fsub double %468, %conv923
  store double %sub924, double* %aadj, align 8
  %469 = load i32, i32* %dsign, align 4
  %tobool925 = icmp ne i32 %469, 0
  br i1 %tobool925, label %if.then.935, label %lor.lhs.false.926

lor.lhs.false.926:                                ; preds = %if.then.921
  %L927 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx928 = getelementptr [2 x i32], [2 x i32]* %L927, i32 0, i64 0
  %470 = load i32, i32* %arrayidx928, align 4
  %tobool929 = icmp ne i32 %470, 0
  br i1 %tobool929, label %if.then.935, label %lor.lhs.false.930

lor.lhs.false.930:                                ; preds = %lor.lhs.false.926
  %L931 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx932 = getelementptr [2 x i32], [2 x i32]* %L931, i32 0, i64 1
  %471 = load i32, i32* %arrayidx932, align 4
  %and933 = and i32 %471, 1048575
  %tobool934 = icmp ne i32 %and933, 0
  br i1 %tobool934, label %if.then.935, label %if.else.943

if.then.935:                                      ; preds = %lor.lhs.false.930, %lor.lhs.false.926, %if.then.921
  %472 = load double, double* %aadj, align 8
  %cmp936 = fcmp olt double %472, 4.999999e-01
  br i1 %cmp936, label %if.then.941, label %lor.lhs.false.938

lor.lhs.false.938:                                ; preds = %if.then.935
  %473 = load double, double* %aadj, align 8
  %cmp939 = fcmp ogt double %473, 5.000001e-01
  br i1 %cmp939, label %if.then.941, label %if.end.942

if.then.941:                                      ; preds = %lor.lhs.false.938, %if.then.935
  br label %for.end.952

if.end.942:                                       ; preds = %lor.lhs.false.938
  br label %if.end.948

if.else.943:                                      ; preds = %lor.lhs.false.930
  %474 = load double, double* %aadj, align 8
  %cmp944 = fcmp olt double %474, 0x3FCFFFFF94A03595
  br i1 %cmp944, label %if.then.946, label %if.end.947

if.then.946:                                      ; preds = %if.else.943
  br label %for.end.952

if.end.947:                                       ; preds = %if.else.943
  br label %if.end.948

if.end.948:                                       ; preds = %if.end.947, %if.end.942
  br label %if.end.949

if.end.949:                                       ; preds = %if.end.948, %if.then.918
  br label %if.end.950

if.end.950:                                       ; preds = %if.end.949, %if.then.915
  br label %if.end.951

if.end.951:                                       ; preds = %if.end.950, %if.end.908
  br label %cont

cont:                                             ; preds = %if.end.951, %if.end.862
  %475 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %475)
  %476 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %476)
  %477 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  call void @Bfree(%struct.Bigint* %477)
  %478 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  call void @Bfree(%struct.Bigint* %478)
  br label %for.cond.478

for.end.952:                                      ; preds = %if.then.946, %if.then.941, %if.then.802, %if.end.772, %if.then.769, %if.then.752, %if.end.740, %if.then.737, %if.then.732, %if.then.701, %if.end.668, %if.then.657, %if.then.648, %if.then.620, %if.then.601
  %479 = load %struct.Bigint*, %struct.Bigint** %bb, align 8
  call void @Bfree(%struct.Bigint* %479)
  %480 = load %struct.Bigint*, %struct.Bigint** %bd, align 8
  call void @Bfree(%struct.Bigint* %480)
  %481 = load %struct.Bigint*, %struct.Bigint** %bs, align 8
  call void @Bfree(%struct.Bigint* %481)
  %482 = load %struct.Bigint*, %struct.Bigint** %bd0, align 8
  call void @Bfree(%struct.Bigint* %482)
  %483 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  call void @Bfree(%struct.Bigint* %483)
  %nd953 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 1
  %484 = load i32, i32* %nd953, align 4
  %485 = load i32, i32* %nd, align 4
  %cmp954 = icmp sgt i32 %484, %485
  br i1 %cmp954, label %if.then.956, label %if.end.961

if.then.956:                                      ; preds = %for.end.952
  %486 = load i8*, i8** %s0, align 8
  %call957 = call i32 @bigcomp(%union.U* %rv, i8* %486, %struct.BCinfo* %bc)
  store i32 %call957, i32* %error, align 4
  %487 = load i32, i32* %error, align 4
  %tobool958 = icmp ne i32 %487, 0
  br i1 %tobool958, label %if.then.959, label %if.end.960

if.then.959:                                      ; preds = %if.then.956
  br label %failed_malloc

if.end.960:                                       ; preds = %if.then.956
  br label %if.end.961

if.end.961:                                       ; preds = %if.end.960, %for.end.952
  %scale962 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %bc, i32 0, i32 3
  %488 = load i32, i32* %scale962, align 4
  %tobool963 = icmp ne i32 %488, 0
  br i1 %tobool963, label %if.then.964, label %if.end.972

if.then.964:                                      ; preds = %if.end.961
  %L965 = bitcast %union.U* %rv0 to [2 x i32]*
  %arrayidx966 = getelementptr [2 x i32], [2 x i32]* %L965, i32 0, i64 1
  store i32 961544192, i32* %arrayidx966, align 4
  %L967 = bitcast %union.U* %rv0 to [2 x i32]*
  %arrayidx968 = getelementptr [2 x i32], [2 x i32]* %L967, i32 0, i64 0
  store i32 0, i32* %arrayidx968, align 4
  %d969 = bitcast %union.U* %rv0 to double*
  %489 = load double, double* %d969, align 8
  %d970 = bitcast %union.U* %rv to double*
  %490 = load double, double* %d970, align 8
  %mul971 = fmul double %490, %489
  store double %mul971, double* %d970, align 8
  br label %if.end.972

if.end.972:                                       ; preds = %if.then.964, %if.end.961
  br label %ret

ret:                                              ; preds = %if.end.972, %if.then.258, %if.then.244, %if.then.234, %if.then.227, %if.then.140
  %491 = load i32, i32* %sign, align 4
  %tobool973 = icmp ne i32 %491, 0
  br i1 %tobool973, label %cond.true.974, label %cond.false.977

cond.true.974:                                    ; preds = %ret
  %d975 = bitcast %union.U* %rv to double*
  %492 = load double, double* %d975, align 8
  %sub976 = fsub double -0.000000e+00, %492
  br label %cond.end.979

cond.false.977:                                   ; preds = %ret
  %d978 = bitcast %union.U* %rv to double*
  %493 = load double, double* %d978, align 8
  br label %cond.end.979

cond.end.979:                                     ; preds = %cond.false.977, %cond.true.974
  %cond980 = phi double [ %sub976, %cond.true.974 ], [ %493, %cond.false.977 ]
  store double %cond980, double* %retval
  br label %return

parse_error:                                      ; preds = %if.end.69, %if.end.60
  store double 0.000000e+00, double* %retval
  br label %return

failed_malloc:                                    ; preds = %if.then.959, %if.then.662, %if.then.588, %if.then.582, %if.then.573, %if.then.564, %if.then.555, %if.then.546, %if.then.541, %if.then.501, %if.then.494, %if.then.483, %if.then.476
  %call981 = call i32* @__errno_location() #4
  store i32 12, i32* %call981, align 4
  store double -1.000000e+00, double* %retval
  br label %return

undfl:                                            ; preds = %if.end.803, %if.end.770, %if.end.738, %if.then.405, %if.then.346
  %494 = load i32, i32* %sign, align 4
  %tobool982 = icmp ne i32 %494, 0
  %cond983 = select i1 %tobool982, double -0.000000e+00, double 0.000000e+00
  store double %cond983, double* %retval
  br label %return

ovfl:                                             ; preds = %if.then.861, %if.then.313, %if.then.283
  %call984 = call i32* @__errno_location() #4
  store i32 34, i32* %call984, align 4
  %L985 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx986 = getelementptr [2 x i32], [2 x i32]* %L985, i32 0, i64 1
  store i32 2146435072, i32* %arrayidx986, align 4
  %L987 = bitcast %union.U* %rv to [2 x i32]*
  %arrayidx988 = getelementptr [2 x i32], [2 x i32]* %L987, i32 0, i64 0
  store i32 0, i32* %arrayidx988, align 4
  %495 = load i32, i32* %sign, align 4
  %tobool989 = icmp ne i32 %495, 0
  br i1 %tobool989, label %cond.true.990, label %cond.false.993

cond.true.990:                                    ; preds = %ovfl
  %d991 = bitcast %union.U* %rv to double*
  %496 = load double, double* %d991, align 8
  %sub992 = fsub double -0.000000e+00, %496
  br label %cond.end.995

cond.false.993:                                   ; preds = %ovfl
  %d994 = bitcast %union.U* %rv to double*
  %497 = load double, double* %d994, align 8
  br label %cond.end.995

cond.end.995:                                     ; preds = %cond.false.993, %cond.true.990
  %cond996 = phi double [ %sub992, %cond.true.990 ], [ %497, %cond.false.993 ]
  store double %cond996, double* %retval
  br label %return

return:                                           ; preds = %cond.end.995, %undfl, %failed_malloc, %parse_error, %cond.end.979
  %498 = load double, double* %retval
  ret double %498
}

; Function Attrs: nounwind
declare i32 @llvm.flt.rounds() #1

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @s2b(i8* %s, i32 %nd0, i32 %nd, i32 %y9) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %s.addr = alloca i8*, align 8
  %nd0.addr = alloca i32, align 4
  %nd.addr = alloca i32, align 4
  %y9.addr = alloca i32, align 4
  %b = alloca %struct.Bigint*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %nd0, i32* %nd0.addr, align 4
  store i32 %nd, i32* %nd.addr, align 4
  store i32 %y9, i32* %y9.addr, align 4
  %0 = load i32, i32* %nd.addr, align 4
  %add = add i32 %0, 8
  %div = sdiv i32 %add, 9
  store i32 %div, i32* %x, align 4
  store i32 0, i32* %k, align 4
  store i32 1, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %y, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %y, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %y, align 4
  %4 = load i32, i32* %k, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %call = call %struct.Bigint* @Balloc(i32 %5)
  store %struct.Bigint* %call, %struct.Bigint** %b, align 8
  %6 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp1 = icmp eq %struct.Bigint* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %7 = load i32, i32* %y9.addr, align 4
  %8 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x2 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %8, i32 0, i32 5
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %x2, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4
  %9 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %9, i32 0, i32 4
  store i32 1, i32* %wds, align 4
  %10 = load i32, i32* %nd.addr, align 4
  %cmp3 = icmp sle i32 %10, 9
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %11 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  store %struct.Bigint* %11, %struct.Bigint** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %12 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 9
  store i8* %add.ptr, i8** %s.addr, align 8
  store i32 9, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.14, %if.end.5
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nd0.addr, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %for.body.8, label %for.end.16

for.body.8:                                       ; preds = %for.cond.6
  %15 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %16 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %sub = sub i32 %conv, 48
  %call9 = call %struct.Bigint* @multadd(%struct.Bigint* %15, i32 10, i32 %sub)
  store %struct.Bigint* %call9, %struct.Bigint** %b, align 8
  %18 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp10 = icmp eq %struct.Bigint* %18, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.8
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end.13:                                        ; preds = %for.body.8
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.13
  %19 = load i32, i32* %i, align 4
  %inc15 = add i32 %19, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.6

for.end.16:                                       ; preds = %for.cond.6
  %20 = load i8*, i8** %s.addr, align 8
  %incdec.ptr17 = getelementptr i8, i8* %20, i32 1
  store i8* %incdec.ptr17, i8** %s.addr, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.30, %for.end.16
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %nd.addr, align 4
  %cmp19 = icmp slt i32 %21, %22
  br i1 %cmp19, label %for.body.21, label %for.end.32

for.body.21:                                      ; preds = %for.cond.18
  %23 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %24 = load i8*, i8** %s.addr, align 8
  %incdec.ptr22 = getelementptr i8, i8* %24, i32 1
  store i8* %incdec.ptr22, i8** %s.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv23 = sext i8 %25 to i32
  %sub24 = sub i32 %conv23, 48
  %call25 = call %struct.Bigint* @multadd(%struct.Bigint* %23, i32 10, i32 %sub24)
  store %struct.Bigint* %call25, %struct.Bigint** %b, align 8
  %26 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp26 = icmp eq %struct.Bigint* %26, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.21
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end.29:                                        ; preds = %for.body.21
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %27 = load i32, i32* %i, align 4
  %inc31 = add i32 %27, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.18

for.end.32:                                       ; preds = %for.cond.18
  %28 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  store %struct.Bigint* %28, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %for.end.32, %if.then.28, %if.then.12, %if.then.4, %if.then
  %29 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %29
}

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @Balloc(i32 %k) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %k.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %rv = alloca %struct.Bigint*, align 8
  %len = alloca i32, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %cmp = icmp sle i32 %0, 7
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %k.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [8 x %struct.Bigint*], [8 x %struct.Bigint*]* @freelist, i32 0, i64 %idxprom
  %2 = load %struct.Bigint*, %struct.Bigint** %arrayidx, align 8
  store %struct.Bigint* %2, %struct.Bigint** %rv, align 8
  %tobool = icmp ne %struct.Bigint* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.Bigint*, %struct.Bigint** %rv, align 8
  %next = getelementptr inbounds %struct.Bigint, %struct.Bigint* %3, i32 0, i32 0
  %4 = load %struct.Bigint*, %struct.Bigint** %next, align 8
  %5 = load i32, i32* %k.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr [8 x %struct.Bigint*], [8 x %struct.Bigint*]* @freelist, i32 0, i64 %idxprom1
  store %struct.Bigint* %4, %struct.Bigint** %arrayidx2, align 8
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %k.addr, align 4
  %shl = shl i32 1, %6
  store i32 %shl, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %sub = sub i32 %7, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  %add = add i64 32, %mul
  %add3 = add i64 %add, 8
  %sub4 = sub i64 %add3, 1
  %div = udiv i64 %sub4, 8
  %conv5 = trunc i64 %div to i32
  store i32 %conv5, i32* %len, align 4
  %8 = load i32, i32* %k.addr, align 4
  %cmp6 = icmp sle i32 %8, 7
  br i1 %cmp6, label %land.lhs.true.8, label %if.else.14

land.lhs.true.8:                                  ; preds = %if.else
  %9 = load double*, double** @pmem_next, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([288 x double]* @private_mem to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %10 = load i32, i32* %len, align 4
  %conv9 = zext i32 %10 to i64
  %add10 = add i64 %sub.ptr.div, %conv9
  %cmp11 = icmp ule i64 %add10, 288
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.8
  %11 = load double*, double** @pmem_next, align 8
  %12 = bitcast double* %11 to %struct.Bigint*
  store %struct.Bigint* %12, %struct.Bigint** %rv, align 8
  %13 = load i32, i32* %len, align 4
  %14 = load double*, double** @pmem_next, align 8
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr double, double* %14, i64 %idx.ext
  store double* %add.ptr, double** @pmem_next, align 8
  br label %if.end.20

if.else.14:                                       ; preds = %land.lhs.true.8, %if.else
  %15 = load i32, i32* %len, align 4
  %conv15 = zext i32 %15 to i64
  %mul16 = mul i64 %conv15, 8
  %call = call i8* @PyMem_Malloc(i64 %mul16)
  %16 = bitcast i8* %call to %struct.Bigint*
  store %struct.Bigint* %16, %struct.Bigint** %rv, align 8
  %17 = load %struct.Bigint*, %struct.Bigint** %rv, align 8
  %cmp17 = icmp eq %struct.Bigint* %17, null
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else.14
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %if.else.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.13
  %18 = load i32, i32* %k.addr, align 4
  %19 = load %struct.Bigint*, %struct.Bigint** %rv, align 8
  %k21 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %19, i32 0, i32 1
  store i32 %18, i32* %k21, align 4
  %20 = load i32, i32* %x, align 4
  %21 = load %struct.Bigint*, %struct.Bigint** %rv, align 8
  %maxwds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %21, i32 0, i32 2
  store i32 %20, i32* %maxwds, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %if.then
  %22 = load %struct.Bigint*, %struct.Bigint** %rv, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %22, i32 0, i32 4
  store i32 0, i32* %wds, align 4
  %23 = load %struct.Bigint*, %struct.Bigint** %rv, align 8
  %sign = getelementptr inbounds %struct.Bigint, %struct.Bigint* %23, i32 0, i32 3
  store i32 0, i32* %sign, align 4
  %24 = load %struct.Bigint*, %struct.Bigint** %rv, align 8
  store %struct.Bigint* %24, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.19
  %25 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %25
}

; Function Attrs: nounwind uwtable
define internal void @Bfree(%struct.Bigint* %v) #0 {
entry:
  %v.addr = alloca %struct.Bigint*, align 8
  store %struct.Bigint* %v, %struct.Bigint** %v.addr, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %v.addr, align 8
  %tobool = icmp ne %struct.Bigint* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.Bigint*, %struct.Bigint** %v.addr, align 8
  %k = getelementptr inbounds %struct.Bigint, %struct.Bigint* %1, i32 0, i32 1
  %2 = load i32, i32* %k, align 4
  %cmp = icmp sgt i32 %2, 7
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %3 = load %struct.Bigint*, %struct.Bigint** %v.addr, align 8
  %4 = bitcast %struct.Bigint* %3 to i8*
  call void @PyMem_Free(i8* %4)
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct.Bigint*, %struct.Bigint** %v.addr, align 8
  %k2 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %5, i32 0, i32 1
  %6 = load i32, i32* %k2, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr [8 x %struct.Bigint*], [8 x %struct.Bigint*]* @freelist, i32 0, i64 %idxprom
  %7 = load %struct.Bigint*, %struct.Bigint** %arrayidx, align 8
  %8 = load %struct.Bigint*, %struct.Bigint** %v.addr, align 8
  %next = getelementptr inbounds %struct.Bigint, %struct.Bigint* %8, i32 0, i32 0
  store %struct.Bigint* %7, %struct.Bigint** %next, align 8
  %9 = load %struct.Bigint*, %struct.Bigint** %v.addr, align 8
  %10 = load %struct.Bigint*, %struct.Bigint** %v.addr, align 8
  %k3 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %10, i32 0, i32 1
  %11 = load i32, i32* %k3, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr [8 x %struct.Bigint*], [8 x %struct.Bigint*]* @freelist, i32 0, i64 %idxprom4
  store %struct.Bigint* %9, %struct.Bigint** %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @sd2b(%union.U* %d, i32 %scale, i32* %e) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %d.addr = alloca %union.U*, align 8
  %scale.addr = alloca i32, align 4
  %e.addr = alloca i32*, align 8
  %b = alloca %struct.Bigint*, align 8
  store %union.U* %d, %union.U** %d.addr, align 8
  store i32 %scale, i32* %scale.addr, align 4
  store i32* %e, i32** %e.addr, align 8
  %call = call %struct.Bigint* @Balloc(i32 1)
  store %struct.Bigint* %call, %struct.Bigint** %b, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp = icmp eq %struct.Bigint* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %1, i32 0, i32 4
  store i32 2, i32* %wds, align 4
  %2 = load %union.U*, %union.U** %d.addr, align 8
  %L = bitcast %union.U* %2 to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %L, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x = getelementptr inbounds %struct.Bigint, %struct.Bigint* %4, i32 0, i32 5
  %arrayidx1 = getelementptr [1 x i32], [1 x i32]* %x, i32 0, i64 0
  store i32 %3, i32* %arrayidx1, align 4
  %5 = load %union.U*, %union.U** %d.addr, align 8
  %L2 = bitcast %union.U* %5 to [2 x i32]*
  %arrayidx3 = getelementptr [2 x i32], [2 x i32]* %L2, i32 0, i64 1
  %6 = load i32, i32* %arrayidx3, align 4
  %and = and i32 %6, 1048575
  %7 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x4 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %7, i32 0, i32 5
  %arrayidx5 = getelementptr [1 x i32], [1 x i32]* %x4, i32 0, i64 1
  store i32 %and, i32* %arrayidx5, align 4
  %8 = load %union.U*, %union.U** %d.addr, align 8
  %L6 = bitcast %union.U* %8 to [2 x i32]*
  %arrayidx7 = getelementptr [2 x i32], [2 x i32]* %L6, i32 0, i64 1
  %9 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %9, 2146435072
  %shr = lshr i32 %and8, 20
  %add = add i32 -1075, %shr
  %10 = load i32*, i32** %e.addr, align 8
  store i32 %add, i32* %10, align 4
  %11 = load i32*, i32** %e.addr, align 8
  %12 = load i32, i32* %11, align 4
  %cmp9 = icmp slt i32 %12, -1074
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %13 = load i32*, i32** %e.addr, align 8
  store i32 -1074, i32* %13, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %14 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x11 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %14, i32 0, i32 5
  %arrayidx12 = getelementptr [1 x i32], [1 x i32]* %x11, i32 0, i64 1
  %15 = load i32, i32* %arrayidx12, align 4
  %or = or i32 %15, 1048576
  store i32 %or, i32* %arrayidx12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %16 = load i32, i32* %scale.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.13
  %17 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x14 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %17, i32 0, i32 5
  %arrayidx15 = getelementptr [1 x i32], [1 x i32]* %x14, i32 0, i64 0
  %18 = load i32, i32* %arrayidx15, align 4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x17 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %19, i32 0, i32 5
  %arrayidx18 = getelementptr [1 x i32], [1 x i32]* %x17, i32 0, i64 1
  %20 = load i32, i32* %arrayidx18, align 4
  %tobool19 = icmp ne i32 %20, 0
  br i1 %tobool19, label %if.then.20, label %if.end.50

if.then.20:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %21 = load i32, i32* %scale.addr, align 4
  %22 = load i32*, i32** %e.addr, align 8
  %23 = load i32, i32* %22, align 4
  %sub = sub i32 %23, %21
  store i32 %sub, i32* %22, align 4
  %24 = load i32*, i32** %e.addr, align 8
  %25 = load i32, i32* %24, align 4
  %cmp21 = icmp slt i32 %25, -1074
  br i1 %cmp21, label %if.then.22, label %if.end.49

if.then.22:                                       ; preds = %if.then.20
  %26 = load i32*, i32** %e.addr, align 8
  %27 = load i32, i32* %26, align 4
  %sub23 = sub i32 -1074, %27
  store i32 %sub23, i32* %scale.addr, align 4
  %28 = load i32*, i32** %e.addr, align 8
  store i32 -1074, i32* %28, align 4
  %29 = load i32, i32* %scale.addr, align 4
  %cmp24 = icmp sge i32 %29, 32
  br i1 %cmp24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.then.22
  %30 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x26 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %30, i32 0, i32 5
  %arrayidx27 = getelementptr [1 x i32], [1 x i32]* %x26, i32 0, i64 1
  %31 = load i32, i32* %arrayidx27, align 4
  %32 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x28 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %32, i32 0, i32 5
  %arrayidx29 = getelementptr [1 x i32], [1 x i32]* %x28, i32 0, i64 0
  store i32 %31, i32* %arrayidx29, align 4
  %33 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x30 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %33, i32 0, i32 5
  %arrayidx31 = getelementptr [1 x i32], [1 x i32]* %x30, i32 0, i64 1
  store i32 0, i32* %arrayidx31, align 4
  %34 = load i32, i32* %scale.addr, align 4
  %sub32 = sub i32 %34, 32
  store i32 %sub32, i32* %scale.addr, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.25, %if.then.22
  %35 = load i32, i32* %scale.addr, align 4
  %tobool34 = icmp ne i32 %35, 0
  br i1 %tobool34, label %if.then.35, label %if.end.48

if.then.35:                                       ; preds = %if.end.33
  %36 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x36 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %36, i32 0, i32 5
  %arrayidx37 = getelementptr [1 x i32], [1 x i32]* %x36, i32 0, i64 0
  %37 = load i32, i32* %arrayidx37, align 4
  %38 = load i32, i32* %scale.addr, align 4
  %shr38 = lshr i32 %37, %38
  %39 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x39 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %39, i32 0, i32 5
  %arrayidx40 = getelementptr [1 x i32], [1 x i32]* %x39, i32 0, i64 1
  %40 = load i32, i32* %arrayidx40, align 4
  %41 = load i32, i32* %scale.addr, align 4
  %sub41 = sub i32 32, %41
  %shl = shl i32 %40, %sub41
  %or42 = or i32 %shr38, %shl
  %42 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x43 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %42, i32 0, i32 5
  %arrayidx44 = getelementptr [1 x i32], [1 x i32]* %x43, i32 0, i64 0
  store i32 %or42, i32* %arrayidx44, align 4
  %43 = load i32, i32* %scale.addr, align 4
  %44 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x45 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %44, i32 0, i32 5
  %arrayidx46 = getelementptr [1 x i32], [1 x i32]* %x45, i32 0, i64 1
  %45 = load i32, i32* %arrayidx46, align 4
  %shr47 = lshr i32 %45, %43
  store i32 %shr47, i32* %arrayidx46, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.35, %if.end.33
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.20
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %lor.lhs.false, %if.end.13
  %46 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x51 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %46, i32 0, i32 5
  %arrayidx52 = getelementptr [1 x i32], [1 x i32]* %x51, i32 0, i64 1
  %47 = load i32, i32* %arrayidx52, align 4
  %tobool53 = icmp ne i32 %47, 0
  br i1 %tobool53, label %if.end.56, label %if.then.54

if.then.54:                                       ; preds = %if.end.50
  %48 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %wds55 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %48, i32 0, i32 4
  store i32 1, i32* %wds55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.50
  %49 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  store %struct.Bigint* %49, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then
  %50 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %50
}

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @i2b(i32 %i) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %i.addr = alloca i32, align 4
  %b = alloca %struct.Bigint*, align 8
  store i32 %i, i32* %i.addr, align 4
  %call = call %struct.Bigint* @Balloc(i32 1)
  store %struct.Bigint* %call, %struct.Bigint** %b, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp = icmp eq %struct.Bigint* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  %2 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x = getelementptr inbounds %struct.Bigint, %struct.Bigint* %2, i32 0, i32 5
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %x, i32 0, i64 0
  store i32 %1, i32* %arrayidx, align 4
  %3 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %3, i32 0, i32 4
  store i32 1, i32* %wds, align 4
  %4 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  store %struct.Bigint* %4, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %5
}

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @pow5mult(%struct.Bigint* %b, i32 %k) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %b.addr = alloca %struct.Bigint*, align 8
  %k.addr = alloca i32, align 4
  %b1 = alloca %struct.Bigint*, align 8
  %p5 = alloca %struct.Bigint*, align 8
  %p51 = alloca %struct.Bigint*, align 8
  %i = alloca i32, align 4
  store %struct.Bigint* %b, %struct.Bigint** %b.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %and = and i32 %0, 3
  store i32 %and, i32* %i, align 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %1 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %2 = load i32, i32* %i, align 4
  %sub = sub i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr [3 x i32], [3 x i32]* @pow5mult.p05, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call %struct.Bigint* @multadd(%struct.Bigint* %1, i32 %3, i32 0)
  store %struct.Bigint* %call, %struct.Bigint** %b.addr, align 8
  %4 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %cmp = icmp eq %struct.Bigint* %4, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %5 = load i32, i32* %k.addr, align 4
  %shr = ashr i32 %5, 2
  store i32 %shr, i32* %k.addr, align 4
  %tobool3 = icmp ne i32 %shr, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  %6 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  store %struct.Bigint* %6, %struct.Bigint** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %7 = load %struct.Bigint*, %struct.Bigint** @p5s, align 8
  store %struct.Bigint* %7, %struct.Bigint** %p5, align 8
  %8 = load %struct.Bigint*, %struct.Bigint** %p5, align 8
  %tobool6 = icmp ne %struct.Bigint* %8, null
  br i1 %tobool6, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %call8 = call %struct.Bigint* @i2b(i32 625)
  store %struct.Bigint* %call8, %struct.Bigint** %p5, align 8
  %9 = load %struct.Bigint*, %struct.Bigint** %p5, align 8
  %cmp9 = icmp eq %struct.Bigint* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %10 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  call void @Bfree(%struct.Bigint* %10)
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  %11 = load %struct.Bigint*, %struct.Bigint** %p5, align 8
  store %struct.Bigint* %11, %struct.Bigint** @p5s, align 8
  %12 = load %struct.Bigint*, %struct.Bigint** %p5, align 8
  %next = getelementptr inbounds %struct.Bigint, %struct.Bigint* %12, i32 0, i32 0
  store %struct.Bigint* null, %struct.Bigint** %next, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.5
  br label %for.cond

for.cond:                                         ; preds = %if.end.34, %if.end.12
  %13 = load i32, i32* %k.addr, align 4
  %and13 = and i32 %13, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %for.cond
  %14 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %15 = load %struct.Bigint*, %struct.Bigint** %p5, align 8
  %call16 = call %struct.Bigint* @mult(%struct.Bigint* %14, %struct.Bigint* %15)
  store %struct.Bigint* %call16, %struct.Bigint** %b1, align 8
  %16 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  call void @Bfree(%struct.Bigint* %16)
  %17 = load %struct.Bigint*, %struct.Bigint** %b1, align 8
  store %struct.Bigint* %17, %struct.Bigint** %b.addr, align 8
  %18 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %cmp17 = icmp eq %struct.Bigint* %18, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %for.cond
  %19 = load i32, i32* %k.addr, align 4
  %shr21 = ashr i32 %19, 1
  store i32 %shr21, i32* %k.addr, align 4
  %tobool22 = icmp ne i32 %shr21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  br label %for.end

if.end.24:                                        ; preds = %if.end.20
  %20 = load %struct.Bigint*, %struct.Bigint** %p5, align 8
  %next25 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %20, i32 0, i32 0
  %21 = load %struct.Bigint*, %struct.Bigint** %next25, align 8
  store %struct.Bigint* %21, %struct.Bigint** %p51, align 8
  %22 = load %struct.Bigint*, %struct.Bigint** %p51, align 8
  %tobool26 = icmp ne %struct.Bigint* %22, null
  br i1 %tobool26, label %if.end.34, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  %23 = load %struct.Bigint*, %struct.Bigint** %p5, align 8
  %24 = load %struct.Bigint*, %struct.Bigint** %p5, align 8
  %call28 = call %struct.Bigint* @mult(%struct.Bigint* %23, %struct.Bigint* %24)
  store %struct.Bigint* %call28, %struct.Bigint** %p51, align 8
  %25 = load %struct.Bigint*, %struct.Bigint** %p51, align 8
  %cmp29 = icmp eq %struct.Bigint* %25, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.27
  %26 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  call void @Bfree(%struct.Bigint* %26)
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end.31:                                        ; preds = %if.then.27
  %27 = load %struct.Bigint*, %struct.Bigint** %p51, align 8
  %next32 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %27, i32 0, i32 0
  store %struct.Bigint* null, %struct.Bigint** %next32, align 8
  %28 = load %struct.Bigint*, %struct.Bigint** %p51, align 8
  %29 = load %struct.Bigint*, %struct.Bigint** %p5, align 8
  %next33 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %29, i32 0, i32 0
  store %struct.Bigint* %28, %struct.Bigint** %next33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.31, %if.end.24
  %30 = load %struct.Bigint*, %struct.Bigint** %p51, align 8
  store %struct.Bigint* %30, %struct.Bigint** %p5, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.23
  %31 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  store %struct.Bigint* %31, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.30, %if.then.18, %if.then.10, %if.then.4, %if.then.1
  %32 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %32
}

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @mult(%struct.Bigint* %a, %struct.Bigint* %b) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %a.addr = alloca %struct.Bigint*, align 8
  %b.addr = alloca %struct.Bigint*, align 8
  %c = alloca %struct.Bigint*, align 8
  %k = alloca i32, align 4
  %wa = alloca i32, align 4
  %wb = alloca i32, align 4
  %wc = alloca i32, align 4
  %x = alloca i32*, align 8
  %xa = alloca i32*, align 8
  %xae = alloca i32*, align 8
  %xb = alloca i32*, align 8
  %xbe = alloca i32*, align 8
  %xc = alloca i32*, align 8
  %xc0 = alloca i32*, align 8
  %y = alloca i32, align 4
  %carry = alloca i64, align 8
  %z = alloca i64, align 8
  store %struct.Bigint* %a, %struct.Bigint** %a.addr, align 8
  store %struct.Bigint* %b, %struct.Bigint** %b.addr, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %x1 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %0, i32 0, i32 5
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %x1, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %2, i32 0, i32 4
  %3 = load i32, i32* %wds, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x2 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %4, i32 0, i32 5
  %arrayidx3 = getelementptr [1 x i32], [1 x i32]* %x2, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.end.13, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %6 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds6 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %6, i32 0, i32 4
  %7 = load i32, i32* %wds6, align 4
  %cmp7 = icmp eq i32 %7, 1
  br i1 %cmp7, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true.5, %land.lhs.true
  %call = call %struct.Bigint* @Balloc(i32 0)
  store %struct.Bigint* %call, %struct.Bigint** %c, align 8
  %8 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %cmp8 = icmp eq %struct.Bigint* %8, null
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %wds10 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %9, i32 0, i32 4
  store i32 1, i32* %wds10, align 4
  %10 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %x11 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %10, i32 0, i32 5
  %arrayidx12 = getelementptr [1 x i32], [1 x i32]* %x11, i32 0, i64 0
  store i32 0, i32* %arrayidx12, align 4
  %11 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  store %struct.Bigint* %11, %struct.Bigint** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.5, %lor.lhs.false
  %12 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %wds14 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %12, i32 0, i32 4
  %13 = load i32, i32* %wds14, align 4
  %14 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds15 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %14, i32 0, i32 4
  %15 = load i32, i32* %wds15, align 4
  %cmp16 = icmp slt i32 %13, %15
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  %16 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  store %struct.Bigint* %16, %struct.Bigint** %c, align 8
  %17 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  store %struct.Bigint* %17, %struct.Bigint** %a.addr, align 8
  %18 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  store %struct.Bigint* %18, %struct.Bigint** %b.addr, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.13
  %19 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %k19 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %19, i32 0, i32 1
  %20 = load i32, i32* %k19, align 4
  store i32 %20, i32* %k, align 4
  %21 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %wds20 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %21, i32 0, i32 4
  %22 = load i32, i32* %wds20, align 4
  store i32 %22, i32* %wa, align 4
  %23 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds21 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %23, i32 0, i32 4
  %24 = load i32, i32* %wds21, align 4
  store i32 %24, i32* %wb, align 4
  %25 = load i32, i32* %wa, align 4
  %26 = load i32, i32* %wb, align 4
  %add = add i32 %25, %26
  store i32 %add, i32* %wc, align 4
  %27 = load i32, i32* %wc, align 4
  %28 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %maxwds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %28, i32 0, i32 2
  %29 = load i32, i32* %maxwds, align 4
  %cmp22 = icmp sgt i32 %27, %29
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  %30 = load i32, i32* %k, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %k, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.18
  %31 = load i32, i32* %k, align 4
  %call25 = call %struct.Bigint* @Balloc(i32 %31)
  store %struct.Bigint* %call25, %struct.Bigint** %c, align 8
  %32 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %cmp26 = icmp eq %struct.Bigint* %32, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %33 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %x29 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %33, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %x29, i32 0, i32 0
  store i32* %arraydecay, i32** %x, align 8
  %34 = load i32*, i32** %x, align 8
  %35 = load i32, i32* %wc, align 4
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr i32, i32* %34, i64 %idx.ext
  store i32* %add.ptr, i32** %xa, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.28
  %36 = load i32*, i32** %x, align 8
  %37 = load i32*, i32** %xa, align 8
  %cmp30 = icmp ult i32* %36, %37
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32*, i32** %x, align 8
  store i32 0, i32* %38, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32*, i32** %x, align 8
  %incdec.ptr = getelementptr i32, i32* %39, i32 1
  store i32* %incdec.ptr, i32** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %x31 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %40, i32 0, i32 5
  %arraydecay32 = getelementptr inbounds [1 x i32], [1 x i32]* %x31, i32 0, i32 0
  store i32* %arraydecay32, i32** %xa, align 8
  %41 = load i32*, i32** %xa, align 8
  %42 = load i32, i32* %wa, align 4
  %idx.ext33 = sext i32 %42 to i64
  %add.ptr34 = getelementptr i32, i32* %41, i64 %idx.ext33
  store i32* %add.ptr34, i32** %xae, align 8
  %43 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x35 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %43, i32 0, i32 5
  %arraydecay36 = getelementptr inbounds [1 x i32], [1 x i32]* %x35, i32 0, i32 0
  store i32* %arraydecay36, i32** %xb, align 8
  %44 = load i32*, i32** %xb, align 8
  %45 = load i32, i32* %wb, align 4
  %idx.ext37 = sext i32 %45 to i64
  %add.ptr38 = getelementptr i32, i32* %44, i64 %idx.ext37
  store i32* %add.ptr38, i32** %xbe, align 8
  %46 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %x39 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %46, i32 0, i32 5
  %arraydecay40 = getelementptr inbounds [1 x i32], [1 x i32]* %x39, i32 0, i32 0
  store i32* %arraydecay40, i32** %xc0, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.58, %for.end
  %47 = load i32*, i32** %xb, align 8
  %48 = load i32*, i32** %xbe, align 8
  %cmp42 = icmp ult i32* %47, %48
  br i1 %cmp42, label %for.body.43, label %for.end.60

for.body.43:                                      ; preds = %for.cond.41
  %49 = load i32*, i32** %xb, align 8
  %incdec.ptr44 = getelementptr i32, i32* %49, i32 1
  store i32* %incdec.ptr44, i32** %xb, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %y, align 4
  %tobool45 = icmp ne i32 %50, 0
  br i1 %tobool45, label %if.then.46, label %if.end.57

if.then.46:                                       ; preds = %for.body.43
  %51 = load i32*, i32** %xa, align 8
  store i32* %51, i32** %x, align 8
  %52 = load i32*, i32** %xc0, align 8
  store i32* %52, i32** %xc, align 8
  store i64 0, i64* %carry, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.46
  %53 = load i32*, i32** %x, align 8
  %incdec.ptr47 = getelementptr i32, i32* %53, i32 1
  store i32* %incdec.ptr47, i32** %x, align 8
  %54 = load i32, i32* %53, align 4
  %conv = zext i32 %54 to i64
  %55 = load i32, i32* %y, align 4
  %conv48 = zext i32 %55 to i64
  %mul = mul i64 %conv, %conv48
  %56 = load i32*, i32** %xc, align 8
  %57 = load i32, i32* %56, align 4
  %conv49 = zext i32 %57 to i64
  %add50 = add i64 %mul, %conv49
  %58 = load i64, i64* %carry, align 8
  %add51 = add i64 %add50, %58
  store i64 %add51, i64* %z, align 8
  %59 = load i64, i64* %z, align 8
  %shr = lshr i64 %59, 32
  store i64 %shr, i64* %carry, align 8
  %60 = load i64, i64* %z, align 8
  %and = and i64 %60, 4294967295
  %conv52 = trunc i64 %and to i32
  %61 = load i32*, i32** %xc, align 8
  %incdec.ptr53 = getelementptr i32, i32* %61, i32 1
  store i32* %incdec.ptr53, i32** %xc, align 8
  store i32 %conv52, i32* %61, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %62 = load i32*, i32** %x, align 8
  %63 = load i32*, i32** %xae, align 8
  %cmp54 = icmp ult i32* %62, %63
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %64 = load i64, i64* %carry, align 8
  %conv56 = trunc i64 %64 to i32
  %65 = load i32*, i32** %xc, align 8
  store i32 %conv56, i32* %65, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %do.end, %for.body.43
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %66 = load i32*, i32** %xc0, align 8
  %incdec.ptr59 = getelementptr i32, i32* %66, i32 1
  store i32* %incdec.ptr59, i32** %xc0, align 8
  br label %for.cond.41

for.end.60:                                       ; preds = %for.cond.41
  %67 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %x61 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %67, i32 0, i32 5
  %arraydecay62 = getelementptr inbounds [1 x i32], [1 x i32]* %x61, i32 0, i32 0
  store i32* %arraydecay62, i32** %xc0, align 8
  %68 = load i32*, i32** %xc0, align 8
  %69 = load i32, i32* %wc, align 4
  %idx.ext63 = sext i32 %69 to i64
  %add.ptr64 = getelementptr i32, i32* %68, i64 %idx.ext63
  store i32* %add.ptr64, i32** %xc, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.71, %for.end.60
  %70 = load i32, i32* %wc, align 4
  %cmp66 = icmp sgt i32 %70, 0
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.65
  %71 = load i32*, i32** %xc, align 8
  %incdec.ptr68 = getelementptr i32, i32* %71, i32 -1
  store i32* %incdec.ptr68, i32** %xc, align 8
  %72 = load i32, i32* %incdec.ptr68, align 4
  %tobool69 = icmp ne i32 %72, 0
  %lnot = xor i1 %tobool69, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.65
  %73 = phi i1 [ false, %for.cond.65 ], [ %lnot, %land.rhs ]
  br i1 %73, label %for.body.70, label %for.end.72

for.body.70:                                      ; preds = %land.end
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.70
  %74 = load i32, i32* %wc, align 4
  %dec = add i32 %74, -1
  store i32 %dec, i32* %wc, align 4
  br label %for.cond.65

for.end.72:                                       ; preds = %land.end
  %75 = load i32, i32* %wc, align 4
  %76 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %wds73 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %76, i32 0, i32 4
  store i32 %75, i32* %wds73, align 4
  %77 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  store %struct.Bigint* %77, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %for.end.72, %if.then.27, %if.end, %if.then.9
  %78 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %78
}

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @lshift(%struct.Bigint* %b, i32 %k) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %b.addr = alloca %struct.Bigint*, align 8
  %k.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k1 = alloca i32, align 4
  %n = alloca i32, align 4
  %n1 = alloca i32, align 4
  %b1 = alloca %struct.Bigint*, align 8
  %x = alloca i32*, align 8
  %x1 = alloca i32*, align 8
  %xe = alloca i32*, align 8
  %z = alloca i32, align 4
  store %struct.Bigint* %b, %struct.Bigint** %b.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x2 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %1, i32 0, i32 5
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %x2, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %3, i32 0, i32 4
  %4 = load i32, i32* %wds, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  store %struct.Bigint* %5, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i32, i32* %k.addr, align 4
  %shr = ashr i32 %6, 5
  store i32 %shr, i32* %n, align 4
  %7 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %k4 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %7, i32 0, i32 1
  %8 = load i32, i32* %k4, align 4
  store i32 %8, i32* %k1, align 4
  %9 = load i32, i32* %n, align 4
  %10 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds5 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %10, i32 0, i32 4
  %11 = load i32, i32* %wds5, align 4
  %add = add i32 %9, %11
  %add6 = add i32 %add, 1
  store i32 %add6, i32* %n1, align 4
  %12 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %maxwds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %12, i32 0, i32 2
  %13 = load i32, i32* %maxwds, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %n1, align 4
  %15 = load i32, i32* %i, align 4
  %cmp7 = icmp sgt i32 %14, %15
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %k1, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %k1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %shl = shl i32 %17, 1
  store i32 %shl, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %k1, align 4
  %call = call %struct.Bigint* @Balloc(i32 %18)
  store %struct.Bigint* %call, %struct.Bigint** %b1, align 8
  %19 = load %struct.Bigint*, %struct.Bigint** %b1, align 8
  %cmp8 = icmp eq %struct.Bigint* %19, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  %20 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  call void @Bfree(%struct.Bigint* %20)
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end.10:                                        ; preds = %for.end
  %21 = load %struct.Bigint*, %struct.Bigint** %b1, align 8
  %x11 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %21, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %x11, i32 0, i32 0
  store i32* %arraydecay, i32** %x1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.15, %if.end.10
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n, align 4
  %cmp13 = icmp slt i32 %22, %23
  br i1 %cmp13, label %for.body.14, label %for.end.17

for.body.14:                                      ; preds = %for.cond.12
  %24 = load i32*, i32** %x1, align 8
  %incdec.ptr = getelementptr i32, i32* %24, i32 1
  store i32* %incdec.ptr, i32** %x1, align 8
  store i32 0, i32* %24, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.14
  %25 = load i32, i32* %i, align 4
  %inc16 = add i32 %25, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.12

for.end.17:                                       ; preds = %for.cond.12
  %26 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x18 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %26, i32 0, i32 5
  %arraydecay19 = getelementptr inbounds [1 x i32], [1 x i32]* %x18, i32 0, i32 0
  store i32* %arraydecay19, i32** %x, align 8
  %27 = load i32*, i32** %x, align 8
  %28 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds20 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %28, i32 0, i32 4
  %29 = load i32, i32* %wds20, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr i32, i32* %27, i64 %idx.ext
  store i32* %add.ptr, i32** %xe, align 8
  %30 = load i32, i32* %k.addr, align 4
  %and = and i32 %30, 31
  store i32 %and, i32* %k.addr, align 4
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %for.end.17
  %31 = load i32, i32* %k.addr, align 4
  %sub = sub i32 32, %31
  store i32 %sub, i32* %k1, align 4
  store i32 0, i32* %z, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.22
  %32 = load i32*, i32** %x, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %k.addr, align 4
  %shl23 = shl i32 %33, %34
  %35 = load i32, i32* %z, align 4
  %or = or i32 %shl23, %35
  %36 = load i32*, i32** %x1, align 8
  %incdec.ptr24 = getelementptr i32, i32* %36, i32 1
  store i32* %incdec.ptr24, i32** %x1, align 8
  store i32 %or, i32* %36, align 4
  %37 = load i32*, i32** %x, align 8
  %incdec.ptr25 = getelementptr i32, i32* %37, i32 1
  store i32* %incdec.ptr25, i32** %x, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %k1, align 4
  %shr26 = lshr i32 %38, %39
  store i32 %shr26, i32* %z, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %40 = load i32*, i32** %x, align 8
  %41 = load i32*, i32** %xe, align 8
  %cmp27 = icmp ult i32* %40, %41
  br i1 %cmp27, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %42 = load i32, i32* %z, align 4
  %43 = load i32*, i32** %x1, align 8
  store i32 %42, i32* %43, align 4
  %tobool28 = icmp ne i32 %42, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %do.end
  %44 = load i32, i32* %n1, align 4
  %inc30 = add i32 %44, 1
  store i32 %inc30, i32* %n1, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %do.end
  br label %if.end.38

if.else:                                          ; preds = %for.end.17
  br label %do.body.32

do.body.32:                                       ; preds = %do.cond.35, %if.else
  %45 = load i32*, i32** %x, align 8
  %incdec.ptr33 = getelementptr i32, i32* %45, i32 1
  store i32* %incdec.ptr33, i32** %x, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %x1, align 8
  %incdec.ptr34 = getelementptr i32, i32* %47, i32 1
  store i32* %incdec.ptr34, i32** %x1, align 8
  store i32 %46, i32* %47, align 4
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.body.32
  %48 = load i32*, i32** %x, align 8
  %49 = load i32*, i32** %xe, align 8
  %cmp36 = icmp ult i32* %48, %49
  br i1 %cmp36, label %do.body.32, label %do.end.37

do.end.37:                                        ; preds = %do.cond.35
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %if.end.31
  %50 = load i32, i32* %n1, align 4
  %sub39 = sub i32 %50, 1
  %51 = load %struct.Bigint*, %struct.Bigint** %b1, align 8
  %wds40 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %51, i32 0, i32 4
  store i32 %sub39, i32* %wds40, align 4
  %52 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  call void @Bfree(%struct.Bigint* %52)
  %53 = load %struct.Bigint*, %struct.Bigint** %b1, align 8
  store %struct.Bigint* %53, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.9, %if.then
  %54 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %54
}

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @diff(%struct.Bigint* %a, %struct.Bigint* %b) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %a.addr = alloca %struct.Bigint*, align 8
  %b.addr = alloca %struct.Bigint*, align 8
  %c = alloca %struct.Bigint*, align 8
  %i = alloca i32, align 4
  %wa = alloca i32, align 4
  %wb = alloca i32, align 4
  %xa = alloca i32*, align 8
  %xae = alloca i32*, align 8
  %xb = alloca i32*, align 8
  %xbe = alloca i32*, align 8
  %xc = alloca i32*, align 8
  %borrow = alloca i64, align 8
  %y = alloca i64, align 8
  store %struct.Bigint* %a, %struct.Bigint** %a.addr, align 8
  store %struct.Bigint* %b, %struct.Bigint** %b.addr, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %1 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %call = call i32 @cmp(%struct.Bigint* %0, %struct.Bigint* %1)
  store i32 %call, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.Bigint* @Balloc(i32 0)
  store %struct.Bigint* %call1, %struct.Bigint** %c, align 8
  %3 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %cmp = icmp eq %struct.Bigint* %3, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %4, i32 0, i32 4
  store i32 1, i32* %wds, align 4
  %5 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %x = getelementptr inbounds %struct.Bigint, %struct.Bigint* %5, i32 0, i32 5
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %x, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %6 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  store %struct.Bigint* %6, %struct.Bigint** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  store %struct.Bigint* %8, %struct.Bigint** %c, align 8
  %9 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  store %struct.Bigint* %9, %struct.Bigint** %a.addr, align 8
  %10 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  store %struct.Bigint* %10, %struct.Bigint** %b.addr, align 8
  store i32 1, i32* %i, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end.3
  store i32 0, i32* %i, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %11 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %k = getelementptr inbounds %struct.Bigint, %struct.Bigint* %11, i32 0, i32 1
  %12 = load i32, i32* %k, align 4
  %call7 = call %struct.Bigint* @Balloc(i32 %12)
  store %struct.Bigint* %call7, %struct.Bigint** %c, align 8
  %13 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %cmp8 = icmp eq %struct.Bigint* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %sign = getelementptr inbounds %struct.Bigint, %struct.Bigint* %15, i32 0, i32 3
  store i32 %14, i32* %sign, align 4
  %16 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %wds11 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %16, i32 0, i32 4
  %17 = load i32, i32* %wds11, align 4
  store i32 %17, i32* %wa, align 4
  %18 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %x12 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %18, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %x12, i32 0, i32 0
  store i32* %arraydecay, i32** %xa, align 8
  %19 = load i32*, i32** %xa, align 8
  %20 = load i32, i32* %wa, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr i32, i32* %19, i64 %idx.ext
  store i32* %add.ptr, i32** %xae, align 8
  %21 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds13 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %21, i32 0, i32 4
  %22 = load i32, i32* %wds13, align 4
  store i32 %22, i32* %wb, align 4
  %23 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x14 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %23, i32 0, i32 5
  %arraydecay15 = getelementptr inbounds [1 x i32], [1 x i32]* %x14, i32 0, i32 0
  store i32* %arraydecay15, i32** %xb, align 8
  %24 = load i32*, i32** %xb, align 8
  %25 = load i32, i32* %wb, align 4
  %idx.ext16 = sext i32 %25 to i64
  %add.ptr17 = getelementptr i32, i32* %24, i64 %idx.ext16
  store i32* %add.ptr17, i32** %xbe, align 8
  %26 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %x18 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %26, i32 0, i32 5
  %arraydecay19 = getelementptr inbounds [1 x i32], [1 x i32]* %x18, i32 0, i32 0
  store i32* %arraydecay19, i32** %xc, align 8
  store i64 0, i64* %borrow, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.10
  %27 = load i32*, i32** %xa, align 8
  %incdec.ptr = getelementptr i32, i32* %27, i32 1
  store i32* %incdec.ptr, i32** %xa, align 8
  %28 = load i32, i32* %27, align 4
  %conv = zext i32 %28 to i64
  %29 = load i32*, i32** %xb, align 8
  %incdec.ptr20 = getelementptr i32, i32* %29, i32 1
  store i32* %incdec.ptr20, i32** %xb, align 8
  %30 = load i32, i32* %29, align 4
  %conv21 = zext i32 %30 to i64
  %sub = sub i64 %conv, %conv21
  %31 = load i64, i64* %borrow, align 8
  %sub22 = sub i64 %sub, %31
  store i64 %sub22, i64* %y, align 8
  %32 = load i64, i64* %y, align 8
  %shr = lshr i64 %32, 32
  %and = and i64 %shr, 1
  store i64 %and, i64* %borrow, align 8
  %33 = load i64, i64* %y, align 8
  %and23 = and i64 %33, 4294967295
  %conv24 = trunc i64 %and23 to i32
  %34 = load i32*, i32** %xc, align 8
  %incdec.ptr25 = getelementptr i32, i32* %34, i32 1
  store i32* %incdec.ptr25, i32** %xc, align 8
  store i32 %conv24, i32* %34, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %35 = load i32*, i32** %xb, align 8
  %36 = load i32*, i32** %xbe, align 8
  %cmp26 = icmp ult i32* %35, %36
  br i1 %cmp26, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %37 = load i32*, i32** %xa, align 8
  %38 = load i32*, i32** %xae, align 8
  %cmp28 = icmp ult i32* %37, %38
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i32*, i32** %xa, align 8
  %incdec.ptr30 = getelementptr i32, i32* %39, i32 1
  store i32* %incdec.ptr30, i32** %xa, align 8
  %40 = load i32, i32* %39, align 4
  %conv31 = zext i32 %40 to i64
  %41 = load i64, i64* %borrow, align 8
  %sub32 = sub i64 %conv31, %41
  store i64 %sub32, i64* %y, align 8
  %42 = load i64, i64* %y, align 8
  %shr33 = lshr i64 %42, 32
  %and34 = and i64 %shr33, 1
  store i64 %and34, i64* %borrow, align 8
  %43 = load i64, i64* %y, align 8
  %and35 = and i64 %43, 4294967295
  %conv36 = trunc i64 %and35 to i32
  %44 = load i32*, i32** %xc, align 8
  %incdec.ptr37 = getelementptr i32, i32* %44, i32 1
  store i32* %incdec.ptr37, i32** %xc, align 8
  store i32 %conv36, i32* %44, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.41, %while.end
  %45 = load i32*, i32** %xc, align 8
  %incdec.ptr39 = getelementptr i32, i32* %45, i32 -1
  store i32* %incdec.ptr39, i32** %xc, align 8
  %46 = load i32, i32* %incdec.ptr39, align 4
  %tobool40 = icmp ne i32 %46, 0
  %lnot = xor i1 %tobool40, true
  br i1 %lnot, label %while.body.41, label %while.end.42

while.body.41:                                    ; preds = %while.cond.38
  %47 = load i32, i32* %wa, align 4
  %dec = add i32 %47, -1
  store i32 %dec, i32* %wa, align 4
  br label %while.cond.38

while.end.42:                                     ; preds = %while.cond.38
  %48 = load i32, i32* %wa, align 4
  %49 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  %wds43 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %49, i32 0, i32 4
  store i32 %48, i32* %wds43, align 4
  %50 = load %struct.Bigint*, %struct.Bigint** %c, align 8
  store %struct.Bigint* %50, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %while.end.42, %if.then.9, %if.end, %if.then.2
  %51 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %51
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp(%struct.Bigint* %a, %struct.Bigint* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.Bigint*, align 8
  %b.addr = alloca %struct.Bigint*, align 8
  %xa = alloca i32*, align 8
  %xa0 = alloca i32*, align 8
  %xb = alloca i32*, align 8
  %xb0 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Bigint* %a, %struct.Bigint** %a.addr, align 8
  store %struct.Bigint* %b, %struct.Bigint** %b.addr, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %0, i32 0, i32 4
  %1 = load i32, i32* %wds, align 4
  store i32 %1, i32* %i, align 4
  %2 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds1 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %2, i32 0, i32 4
  %3 = load i32, i32* %wds1, align 4
  store i32 %3, i32* %j, align 4
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %i, align 4
  %sub = sub i32 %5, %4
  store i32 %sub, i32* %i, align 4
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %x = getelementptr inbounds %struct.Bigint, %struct.Bigint* %7, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %x, i32 0, i32 0
  store i32* %arraydecay, i32** %xa0, align 8
  %8 = load i32*, i32** %xa0, align 8
  %9 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr i32, i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %xa, align 8
  %10 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x2 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %10, i32 0, i32 5
  %arraydecay3 = getelementptr inbounds [1 x i32], [1 x i32]* %x2, i32 0, i32 0
  store i32* %arraydecay3, i32** %xb0, align 8
  %11 = load i32*, i32** %xb0, align 8
  %12 = load i32, i32* %j, align 4
  %idx.ext4 = sext i32 %12 to i64
  %add.ptr5 = getelementptr i32, i32* %11, i64 %idx.ext4
  store i32* %add.ptr5, i32** %xb, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.12, %if.end
  %13 = load i32*, i32** %xa, align 8
  %incdec.ptr = getelementptr i32, i32* %13, i32 -1
  store i32* %incdec.ptr, i32** %xa, align 8
  %14 = load i32, i32* %incdec.ptr, align 4
  %15 = load i32*, i32** %xb, align 8
  %incdec.ptr6 = getelementptr i32, i32* %15, i32 -1
  store i32* %incdec.ptr6, i32** %xb, align 8
  %16 = load i32, i32* %incdec.ptr6, align 4
  %cmp = icmp ne i32 %14, %16
  br i1 %cmp, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.cond
  %17 = load i32*, i32** %xa, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %xb, align 8
  %20 = load i32, i32* %19, align 4
  %cmp8 = icmp ult i32 %18, %20
  %cond = select i1 %cmp8, i32 -1, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.end.9:                                         ; preds = %for.cond
  %21 = load i32*, i32** %xa, align 8
  %22 = load i32*, i32** %xa0, align 8
  %cmp10 = icmp ule i32* %21, %22
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  br label %for.end

if.end.12:                                        ; preds = %if.end.9
  br label %for.cond

for.end:                                          ; preds = %if.then.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal double @sulp(%union.U* %x, %struct.BCinfo* %bc) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca %union.U*, align 8
  %bc.addr = alloca %struct.BCinfo*, align 8
  %u = alloca %union.U, align 8
  store %union.U* %x, %union.U** %x.addr, align 8
  store %struct.BCinfo* %bc, %struct.BCinfo** %bc.addr, align 8
  %0 = load %struct.BCinfo*, %struct.BCinfo** %bc.addr, align 8
  %scale = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %0, i32 0, i32 3
  %1 = load i32, i32* %scale, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.U*, %union.U** %x.addr, align 8
  %L = bitcast %union.U* %2 to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %L, i32 0, i64 1
  %3 = load i32, i32* %arrayidx, align 4
  %and = and i32 %3, 2146435072
  %shr = lshr i32 %and, 20
  %cmp = icmp sgt i32 107, %shr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %L1 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx2 = getelementptr [2 x i32], [2 x i32]* %L1, i32 0, i64 1
  store i32 57671680, i32* %arrayidx2, align 4
  %L3 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx4 = getelementptr [2 x i32], [2 x i32]* %L3, i32 0, i64 0
  store i32 0, i32* %arrayidx4, align 4
  %d = bitcast %union.U* %u to double*
  %4 = load double, double* %d, align 8
  store double %4, double* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load %union.U*, %union.U** %x.addr, align 8
  %call = call double @ulp(%union.U* %5)
  store double %call, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load double, double* %retval
  ret double %6
}

; Function Attrs: nounwind uwtable
define internal double @ratio(%struct.Bigint* %a, %struct.Bigint* %b) #0 {
entry:
  %a.addr = alloca %struct.Bigint*, align 8
  %b.addr = alloca %struct.Bigint*, align 8
  %da = alloca %union.U, align 8
  %db = alloca %union.U, align 8
  %k = alloca i32, align 4
  %ka = alloca i32, align 4
  %kb = alloca i32, align 4
  store %struct.Bigint* %a, %struct.Bigint** %a.addr, align 8
  store %struct.Bigint* %b, %struct.Bigint** %b.addr, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %call = call double @b2d(%struct.Bigint* %0, i32* %ka)
  %d = bitcast %union.U* %da to double*
  store double %call, double* %d, align 8
  %1 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %call1 = call double @b2d(%struct.Bigint* %1, i32* %kb)
  %d2 = bitcast %union.U* %db to double*
  store double %call1, double* %d2, align 8
  %2 = load i32, i32* %ka, align 4
  %3 = load i32, i32* %kb, align 4
  %sub = sub i32 %2, %3
  %4 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %4, i32 0, i32 4
  %5 = load i32, i32* %wds, align 4
  %6 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds3 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %6, i32 0, i32 4
  %7 = load i32, i32* %wds3, align 4
  %sub4 = sub i32 %5, %7
  %mul = mul i32 32, %sub4
  %add = add i32 %sub, %mul
  store i32 %add, i32* %k, align 4
  %8 = load i32, i32* %k, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %k, align 4
  %mul5 = mul i32 %9, 1048576
  %L = bitcast %union.U* %da to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %L, i32 0, i64 1
  %10 = load i32, i32* %arrayidx, align 4
  %add6 = add i32 %10, %mul5
  store i32 %add6, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %k, align 4
  %sub7 = sub i32 0, %11
  store i32 %sub7, i32* %k, align 4
  %12 = load i32, i32* %k, align 4
  %mul8 = mul i32 %12, 1048576
  %L9 = bitcast %union.U* %db to [2 x i32]*
  %arrayidx10 = getelementptr [2 x i32], [2 x i32]* %L9, i32 0, i64 1
  %13 = load i32, i32* %arrayidx10, align 4
  %add11 = add i32 %13, %mul8
  store i32 %add11, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %d12 = bitcast %union.U* %da to double*
  %14 = load double, double* %d12, align 8
  %d13 = bitcast %union.U* %db to double*
  %15 = load double, double* %d13, align 8
  %div = fdiv double %14, %15
  ret double %div
}

; Function Attrs: nounwind uwtable
define internal double @ulp(%union.U* %x) #0 {
entry:
  %x.addr = alloca %union.U*, align 8
  %L = alloca i32, align 4
  %u = alloca %union.U, align 8
  store %union.U* %x, %union.U** %x.addr, align 8
  %0 = load %union.U*, %union.U** %x.addr, align 8
  %L1 = bitcast %union.U* %0 to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %L1, i32 0, i64 1
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 2146435072
  %sub = sub i32 %and, 54525952
  store i32 %sub, i32* %L, align 4
  %2 = load i32, i32* %L, align 4
  %L2 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx3 = getelementptr [2 x i32], [2 x i32]* %L2, i32 0, i64 1
  store i32 %2, i32* %arrayidx3, align 4
  %L4 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx5 = getelementptr [2 x i32], [2 x i32]* %L4, i32 0, i64 0
  store i32 0, i32* %arrayidx5, align 4
  %d = bitcast %union.U* %u to double*
  %3 = load double, double* %d, align 8
  ret double %3
}

; Function Attrs: nounwind uwtable
define internal i32 @bigcomp(%union.U* %rv, i8* %s0, %struct.BCinfo* %bc) #0 {
entry:
  %retval = alloca i32, align 4
  %rv.addr = alloca %union.U*, align 8
  %s0.addr = alloca i8*, align 8
  %bc.addr = alloca %struct.BCinfo*, align 8
  %b = alloca %struct.Bigint*, align 8
  %d = alloca %struct.Bigint*, align 8
  %b2 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %dd = alloca i32, align 4
  %i = alloca i32, align 4
  %nd = alloca i32, align 4
  %nd0 = alloca i32, align 4
  %odd = alloca i32, align 4
  %p2 = alloca i32, align 4
  %p5 = alloca i32, align 4
  store %union.U* %rv, %union.U** %rv.addr, align 8
  store i8* %s0, i8** %s0.addr, align 8
  store %struct.BCinfo* %bc, %struct.BCinfo** %bc.addr, align 8
  %0 = load %struct.BCinfo*, %struct.BCinfo** %bc.addr, align 8
  %nd1 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %0, i32 0, i32 1
  %1 = load i32, i32* %nd1, align 4
  store i32 %1, i32* %nd, align 4
  %2 = load %struct.BCinfo*, %struct.BCinfo** %bc.addr, align 8
  %nd02 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %2, i32 0, i32 2
  %3 = load i32, i32* %nd02, align 4
  store i32 %3, i32* %nd0, align 4
  %4 = load i32, i32* %nd, align 4
  %5 = load %struct.BCinfo*, %struct.BCinfo** %bc.addr, align 8
  %e0 = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %5, i32 0, i32 0
  %6 = load i32, i32* %e0, align 4
  %add = add i32 %4, %6
  store i32 %add, i32* %p5, align 4
  %7 = load %union.U*, %union.U** %rv.addr, align 8
  %8 = load %struct.BCinfo*, %struct.BCinfo** %bc.addr, align 8
  %scale = getelementptr inbounds %struct.BCinfo, %struct.BCinfo* %8, i32 0, i32 3
  %9 = load i32, i32* %scale, align 4
  %call = call %struct.Bigint* @sd2b(%union.U* %7, i32 %9, i32* %p2)
  store %struct.Bigint* %call, %struct.Bigint** %b, align 8
  %10 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp = icmp eq %struct.Bigint* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x = getelementptr inbounds %struct.Bigint, %struct.Bigint* %11, i32 0, i32 5
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %x, i32 0, i64 0
  %12 = load i32, i32* %arrayidx, align 4
  %and = and i32 %12, 1
  store i32 %and, i32* %odd, align 4
  %13 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %call3 = call %struct.Bigint* @lshift(%struct.Bigint* %13, i32 1)
  store %struct.Bigint* %call3, %struct.Bigint** %b, align 8
  %14 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp4 = icmp eq %struct.Bigint* %14, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %15 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x7 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %15, i32 0, i32 5
  %arrayidx8 = getelementptr [1 x i32], [1 x i32]* %x7, i32 0, i64 0
  %16 = load i32, i32* %arrayidx8, align 4
  %or = or i32 %16, 1
  store i32 %or, i32* %arrayidx8, align 4
  %17 = load i32, i32* %p2, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %p2, align 4
  %18 = load i32, i32* %p5, align 4
  %19 = load i32, i32* %p2, align 4
  %sub = sub i32 %19, %18
  store i32 %sub, i32* %p2, align 4
  %call9 = call %struct.Bigint* @i2b(i32 1)
  store %struct.Bigint* %call9, %struct.Bigint** %d, align 8
  %20 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  %cmp10 = icmp eq %struct.Bigint* %20, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  %21 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  call void @Bfree(%struct.Bigint* %21)
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %22 = load i32, i32* %p5, align 4
  %cmp13 = icmp sgt i32 %22, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %23 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  %24 = load i32, i32* %p5, align 4
  %call15 = call %struct.Bigint* @pow5mult(%struct.Bigint* %23, i32 %24)
  store %struct.Bigint* %call15, %struct.Bigint** %d, align 8
  %25 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  %cmp16 = icmp eq %struct.Bigint* %25, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  %26 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  call void @Bfree(%struct.Bigint* %26)
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.27

if.else:                                          ; preds = %if.end.12
  %27 = load i32, i32* %p5, align 4
  %cmp19 = icmp slt i32 %27, 0
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.else
  %28 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %29 = load i32, i32* %p5, align 4
  %sub21 = sub i32 0, %29
  %call22 = call %struct.Bigint* @pow5mult(%struct.Bigint* %28, i32 %sub21)
  store %struct.Bigint* %call22, %struct.Bigint** %b, align 8
  %30 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp23 = icmp eq %struct.Bigint* %30, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  %31 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  call void @Bfree(%struct.Bigint* %31)
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.18
  %32 = load i32, i32* %p2, align 4
  %cmp28 = icmp sgt i32 %32, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.end.27
  %33 = load i32, i32* %p2, align 4
  store i32 %33, i32* %b2, align 4
  store i32 0, i32* %d2, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %if.end.27
  store i32 0, i32* %b2, align 4
  %34 = load i32, i32* %p2, align 4
  %sub31 = sub i32 0, %34
  store i32 %sub31, i32* %d2, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  %35 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  %36 = load i32, i32* %d2, align 4
  %call33 = call i32 @dshift(%struct.Bigint* %35, i32 %36)
  store i32 %call33, i32* %i, align 4
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %b2, align 4
  %add34 = add i32 %38, %37
  store i32 %add34, i32* %b2, align 4
  %cmp35 = icmp sgt i32 %add34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.end.32
  %39 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %40 = load i32, i32* %b2, align 4
  %call37 = call %struct.Bigint* @lshift(%struct.Bigint* %39, i32 %40)
  store %struct.Bigint* %call37, %struct.Bigint** %b, align 8
  %41 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp38 = icmp eq %struct.Bigint* %41, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.36
  %42 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  call void @Bfree(%struct.Bigint* %42)
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.then.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.32
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %d2, align 4
  %add42 = add i32 %44, %43
  store i32 %add42, i32* %d2, align 4
  %cmp43 = icmp sgt i32 %add42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.end.41
  %45 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  %46 = load i32, i32* %d2, align 4
  %call45 = call %struct.Bigint* @lshift(%struct.Bigint* %45, i32 %46)
  store %struct.Bigint* %call45, %struct.Bigint** %d, align 8
  %47 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  %cmp46 = icmp eq %struct.Bigint* %47, null
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.44
  %48 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  call void @Bfree(%struct.Bigint* %48)
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.41
  %49 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %50 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  %call50 = call i32 @cmp(%struct.Bigint* %49, %struct.Bigint* %50)
  %cmp51 = icmp sge i32 %call50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.49
  store i32 -1, i32* %dd, align 4
  br label %if.end.79

if.else.53:                                       ; preds = %if.end.49
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.78, %if.else.53
  %51 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %call54 = call %struct.Bigint* @multadd(%struct.Bigint* %51, i32 10, i32 0)
  store %struct.Bigint* %call54, %struct.Bigint** %b, align 8
  %52 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp55 = icmp eq %struct.Bigint* %52, null
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.cond
  %53 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  call void @Bfree(%struct.Bigint* %53)
  store i32 -1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %nd0, align 4
  %cmp58 = icmp slt i32 %54, %55
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.57
  %56 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.57
  %57 = load i32, i32* %i, align 4
  %add59 = add i32 %57, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %56, %cond.true ], [ %add59, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %58 = load i8*, i8** %s0.addr, align 8
  %arrayidx60 = getelementptr i8, i8* %58, i64 %idxprom
  %59 = load i8, i8* %arrayidx60, align 1
  %conv = sext i8 %59 to i32
  %sub61 = sub i32 %conv, 48
  %60 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %61 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  %call62 = call i32 @quorem(%struct.Bigint* %60, %struct.Bigint* %61)
  %sub63 = sub i32 %sub61, %call62
  store i32 %sub63, i32* %dd, align 4
  %62 = load i32, i32* %i, align 4
  %inc = add i32 %62, 1
  store i32 %inc, i32* %i, align 4
  %63 = load i32, i32* %dd, align 4
  %tobool = icmp ne i32 %63, 0
  br i1 %tobool, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %cond.end
  br label %for.end

if.end.65:                                        ; preds = %cond.end
  %64 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x66 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %64, i32 0, i32 5
  %arrayidx67 = getelementptr [1 x i32], [1 x i32]* %x66, i32 0, i64 0
  %65 = load i32, i32* %arrayidx67, align 4
  %tobool68 = icmp ne i32 %65, 0
  br i1 %tobool68, label %if.end.74, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.65
  %66 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %66, i32 0, i32 4
  %67 = load i32, i32* %wds, align 4
  %cmp69 = icmp eq i32 %67, 1
  br i1 %cmp69, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %land.lhs.true
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %nd, align 4
  %cmp72 = icmp slt i32 %68, %69
  %conv73 = zext i1 %cmp72 to i32
  store i32 %conv73, i32* %dd, align 4
  br label %for.end

if.end.74:                                        ; preds = %land.lhs.true, %if.end.65
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %nd, align 4
  %cmp75 = icmp slt i32 %70, %71
  br i1 %cmp75, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.74
  store i32 -1, i32* %dd, align 4
  br label %for.end

if.end.78:                                        ; preds = %if.end.74
  br label %for.cond

for.end:                                          ; preds = %if.then.77, %if.then.71, %if.then.64
  br label %if.end.79

if.end.79:                                        ; preds = %for.end, %if.then.52
  %72 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  call void @Bfree(%struct.Bigint* %72)
  %73 = load %struct.Bigint*, %struct.Bigint** %d, align 8
  call void @Bfree(%struct.Bigint* %73)
  %74 = load i32, i32* %dd, align 4
  %cmp80 = icmp sgt i32 %74, 0
  br i1 %cmp80, label %if.then.86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.79
  %75 = load i32, i32* %dd, align 4
  %cmp82 = icmp eq i32 %75, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.90

land.lhs.true.84:                                 ; preds = %lor.lhs.false
  %76 = load i32, i32* %odd, align 4
  %tobool85 = icmp ne i32 %76, 0
  br i1 %tobool85, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %land.lhs.true.84, %if.end.79
  %77 = load %union.U*, %union.U** %rv.addr, align 8
  %78 = load %struct.BCinfo*, %struct.BCinfo** %bc.addr, align 8
  %call87 = call double @sulp(%union.U* %77, %struct.BCinfo* %78)
  %79 = load %union.U*, %union.U** %rv.addr, align 8
  %d88 = bitcast %union.U* %79 to double*
  %80 = load double, double* %d88, align 8
  %add89 = fadd double %80, %call87
  store double %add89, double* %d88, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %land.lhs.true.84, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.56, %if.then.47, %if.then.39, %if.then.24, %if.then.17, %if.then.11, %if.then.5, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind uwtable
define void @_Py_dg_freedtoa(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %b = alloca %struct.Bigint*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %add.ptr = getelementptr i32, i32* %1, i64 -1
  %2 = bitcast i32* %add.ptr to %struct.Bigint*
  store %struct.Bigint* %2, %struct.Bigint** %b, align 8
  %3 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %4 = bitcast %struct.Bigint* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %k = getelementptr inbounds %struct.Bigint, %struct.Bigint* %6, i32 0, i32 1
  store i32 %5, i32* %k, align 4
  %shl = shl i32 1, %5
  %7 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %maxwds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %7, i32 0, i32 2
  store i32 %shl, i32* %maxwds, align 4
  %8 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  call void @Bfree(%struct.Bigint* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @_Py_dg_dtoa(double %dd, i32 %mode, i32 %ndigits, i32* %decpt, i32* %sign, i8** %rve) #0 {
entry:
  %retval = alloca i8*, align 8
  %dd.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %ndigits.addr = alloca i32, align 4
  %decpt.addr = alloca i32*, align 8
  %sign.addr = alloca i32*, align 8
  %rve.addr = alloca i8**, align 8
  %bbits = alloca i32, align 4
  %b2 = alloca i32, align 4
  %b5 = alloca i32, align 4
  %be = alloca i32, align 4
  %dig = alloca i32, align 4
  %i = alloca i32, align 4
  %ieps = alloca i32, align 4
  %ilim = alloca i32, align 4
  %ilim0 = alloca i32, align 4
  %ilim1 = alloca i32, align 4
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %k = alloca i32, align 4
  %k0 = alloca i32, align 4
  %k_check = alloca i32, align 4
  %leftright = alloca i32, align 4
  %m2 = alloca i32, align 4
  %m5 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s5 = alloca i32, align 4
  %spec_case = alloca i32, align 4
  %try_quick = alloca i32, align 4
  %L = alloca i32, align 4
  %denorm = alloca i32, align 4
  %x = alloca i32, align 4
  %b = alloca %struct.Bigint*, align 8
  %b1 = alloca %struct.Bigint*, align 8
  %delta = alloca %struct.Bigint*, align 8
  %mlo = alloca %struct.Bigint*, align 8
  %mhi = alloca %struct.Bigint*, align 8
  %S = alloca %struct.Bigint*, align 8
  %d2 = alloca %union.U, align 8
  %eps = alloca %union.U, align 8
  %u = alloca %union.U, align 8
  %ds = alloca double, align 8
  %s = alloca i8*, align 8
  %s0 = alloca i8*, align 8
  store double %dd, double* %dd.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %ndigits, i32* %ndigits.addr, align 4
  store i32* %decpt, i32** %decpt.addr, align 8
  store i32* %sign, i32** %sign.addr, align 8
  store i8** %rve, i8*** %rve.addr, align 8
  store %struct.Bigint* null, %struct.Bigint** %S, align 8
  store %struct.Bigint* null, %struct.Bigint** %mhi, align 8
  store %struct.Bigint* null, %struct.Bigint** %mlo, align 8
  store i8* null, i8** %s0, align 8
  %0 = load double, double* %dd.addr, align 8
  %d = bitcast %union.U* %u to double*
  store double %0, double* %d, align 8
  %L1 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %L1, i32 0, i64 1
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, -2147483648
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %sign.addr, align 8
  store i32 1, i32* %2, align 4
  %L2 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx3 = getelementptr [2 x i32], [2 x i32]* %L2, i32 0, i64 1
  %3 = load i32, i32* %arrayidx3, align 4
  %and4 = and i32 %3, 2147483647
  store i32 %and4, i32* %arrayidx3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %sign.addr, align 8
  store i32 0, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %L5 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx6 = getelementptr [2 x i32], [2 x i32]* %L5, i32 0, i64 1
  %5 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %5, 2146435072
  %cmp = icmp eq i32 %and7, 2146435072
  br i1 %cmp, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.end
  %6 = load i32*, i32** %decpt.addr, align 8
  store i32 9999, i32* %6, align 4
  %L9 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx10 = getelementptr [2 x i32], [2 x i32]* %L9, i32 0, i64 0
  %7 = load i32, i32* %arrayidx10, align 4
  %tobool11 = icmp ne i32 %7, 0
  br i1 %tobool11, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.8
  %L12 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx13 = getelementptr [2 x i32], [2 x i32]* %L12, i32 0, i64 1
  %8 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %8, 1048575
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true
  %9 = load i8**, i8*** %rve.addr, align 8
  %call = call i8* @nrv_alloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8** %9, i32 8)
  store i8* %call, i8** %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %if.then.8
  %10 = load i8**, i8*** %rve.addr, align 8
  %call18 = call i8* @nrv_alloc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %10, i32 3)
  store i8* %call18, i8** %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  %d20 = bitcast %union.U* %u to double*
  %11 = load double, double* %d20, align 8
  %tobool21 = fcmp une double %11, 0.000000e+00
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  %12 = load i32*, i32** %decpt.addr, align 8
  store i32 1, i32* %12, align 4
  %13 = load i8**, i8*** %rve.addr, align 8
  %call23 = call i8* @nrv_alloc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %13, i32 1)
  store i8* %call23, i8** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  %call25 = call %struct.Bigint* @d2b(%union.U* %u, i32* %be, i32* %bbits)
  store %struct.Bigint* %call25, %struct.Bigint** %b, align 8
  %14 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp26 = icmp eq %struct.Bigint* %14, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  br label %failed_malloc

if.end.28:                                        ; preds = %if.end.24
  %L29 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx30 = getelementptr [2 x i32], [2 x i32]* %L29, i32 0, i64 1
  %15 = load i32, i32* %arrayidx30, align 4
  %shr = lshr i32 %15, 20
  %and31 = and i32 %shr, 2047
  store i32 %and31, i32* %i, align 4
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.41

if.then.33:                                       ; preds = %if.end.28
  %d34 = bitcast %union.U* %u to double*
  %16 = load double, double* %d34, align 8
  %d35 = bitcast %union.U* %d2 to double*
  store double %16, double* %d35, align 8
  %L36 = bitcast %union.U* %d2 to [2 x i32]*
  %arrayidx37 = getelementptr [2 x i32], [2 x i32]* %L36, i32 0, i64 1
  %17 = load i32, i32* %arrayidx37, align 4
  %and38 = and i32 %17, 1048575
  store i32 %and38, i32* %arrayidx37, align 4
  %L39 = bitcast %union.U* %d2 to [2 x i32]*
  %arrayidx40 = getelementptr [2 x i32], [2 x i32]* %L39, i32 0, i64 1
  %18 = load i32, i32* %arrayidx40, align 4
  %or = or i32 %18, 1072693248
  store i32 %or, i32* %arrayidx40, align 4
  %19 = load i32, i32* %i, align 4
  %sub = sub i32 %19, 1023
  store i32 %sub, i32* %i, align 4
  store i32 0, i32* %denorm, align 4
  br label %if.end.61

if.else.41:                                       ; preds = %if.end.28
  %20 = load i32, i32* %bbits, align 4
  %21 = load i32, i32* %be, align 4
  %add = add i32 %20, %21
  %add42 = add i32 %add, 1074
  store i32 %add42, i32* %i, align 4
  %22 = load i32, i32* %i, align 4
  %cmp43 = icmp sgt i32 %22, 32
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.41
  %L44 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx45 = getelementptr [2 x i32], [2 x i32]* %L44, i32 0, i64 1
  %23 = load i32, i32* %arrayidx45, align 4
  %24 = load i32, i32* %i, align 4
  %sub46 = sub i32 64, %24
  %shl = shl i32 %23, %sub46
  %L47 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx48 = getelementptr [2 x i32], [2 x i32]* %L47, i32 0, i64 0
  %25 = load i32, i32* %arrayidx48, align 4
  %26 = load i32, i32* %i, align 4
  %sub49 = sub i32 %26, 32
  %shr50 = lshr i32 %25, %sub49
  %or51 = or i32 %shl, %shr50
  br label %cond.end

cond.false:                                       ; preds = %if.else.41
  %L52 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx53 = getelementptr [2 x i32], [2 x i32]* %L52, i32 0, i64 0
  %27 = load i32, i32* %arrayidx53, align 4
  %28 = load i32, i32* %i, align 4
  %sub54 = sub i32 32, %28
  %shl55 = shl i32 %27, %sub54
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or51, %cond.true ], [ %shl55, %cond.false ]
  store i32 %cond, i32* %x, align 4
  %29 = load i32, i32* %x, align 4
  %conv = uitofp i32 %29 to double
  %d56 = bitcast %union.U* %d2 to double*
  store double %conv, double* %d56, align 8
  %L57 = bitcast %union.U* %d2 to [2 x i32]*
  %arrayidx58 = getelementptr [2 x i32], [2 x i32]* %L57, i32 0, i64 1
  %30 = load i32, i32* %arrayidx58, align 4
  %sub59 = sub i32 %30, 32505856
  store i32 %sub59, i32* %arrayidx58, align 4
  %31 = load i32, i32* %i, align 4
  %sub60 = sub i32 %31, 1075
  store i32 %sub60, i32* %i, align 4
  store i32 1, i32* %denorm, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end, %if.then.33
  %d62 = bitcast %union.U* %d2 to double*
  %32 = load double, double* %d62, align 8
  %sub63 = fsub double %32, 1.500000e+00
  %mul = fmul double %sub63, 0x3FD287A7636F4361
  %add64 = fadd double %mul, 0x3FC68A288B60C8B3
  %33 = load i32, i32* %i, align 4
  %conv65 = sitofp i32 %33 to double
  %mul66 = fmul double %conv65, 0x3FD34413509F79FB
  %add67 = fadd double %add64, %mul66
  store double %add67, double* %ds, align 8
  %34 = load double, double* %ds, align 8
  %conv68 = fptosi double %34 to i32
  store i32 %conv68, i32* %k, align 4
  %35 = load double, double* %ds, align 8
  %cmp69 = fcmp olt double %35, 0.000000e+00
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.76

land.lhs.true.71:                                 ; preds = %if.end.61
  %36 = load double, double* %ds, align 8
  %37 = load i32, i32* %k, align 4
  %conv72 = sitofp i32 %37 to double
  %cmp73 = fcmp une double %36, %conv72
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.71
  %38 = load i32, i32* %k, align 4
  %dec = add i32 %38, -1
  store i32 %dec, i32* %k, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %land.lhs.true.71, %if.end.61
  store i32 1, i32* %k_check, align 4
  %39 = load i32, i32* %k, align 4
  %cmp77 = icmp sge i32 %39, 0
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.90

land.lhs.true.79:                                 ; preds = %if.end.76
  %40 = load i32, i32* %k, align 4
  %cmp80 = icmp sle i32 %40, 22
  br i1 %cmp80, label %if.then.82, label %if.end.90

if.then.82:                                       ; preds = %land.lhs.true.79
  %d83 = bitcast %union.U* %u to double*
  %41 = load double, double* %d83, align 8
  %42 = load i32, i32* %k, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx84 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom
  %43 = load double, double* %arrayidx84, align 8
  %cmp85 = fcmp olt double %41, %43
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.then.82
  %44 = load i32, i32* %k, align 4
  %dec88 = add i32 %44, -1
  store i32 %dec88, i32* %k, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.then.82
  store i32 0, i32* %k_check, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %land.lhs.true.79, %if.end.76
  %45 = load i32, i32* %bbits, align 4
  %46 = load i32, i32* %i, align 4
  %sub91 = sub i32 %45, %46
  %sub92 = sub i32 %sub91, 1
  store i32 %sub92, i32* %j, align 4
  %47 = load i32, i32* %j, align 4
  %cmp93 = icmp sge i32 %47, 0
  br i1 %cmp93, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %if.end.90
  store i32 0, i32* %b2, align 4
  %48 = load i32, i32* %j, align 4
  store i32 %48, i32* %s2, align 4
  br label %if.end.98

if.else.96:                                       ; preds = %if.end.90
  %49 = load i32, i32* %j, align 4
  %sub97 = sub i32 0, %49
  store i32 %sub97, i32* %b2, align 4
  store i32 0, i32* %s2, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.95
  %50 = load i32, i32* %k, align 4
  %cmp99 = icmp sge i32 %50, 0
  br i1 %cmp99, label %if.then.101, label %if.else.103

if.then.101:                                      ; preds = %if.end.98
  store i32 0, i32* %b5, align 4
  %51 = load i32, i32* %k, align 4
  store i32 %51, i32* %s5, align 4
  %52 = load i32, i32* %k, align 4
  %53 = load i32, i32* %s2, align 4
  %add102 = add i32 %53, %52
  store i32 %add102, i32* %s2, align 4
  br label %if.end.106

if.else.103:                                      ; preds = %if.end.98
  %54 = load i32, i32* %k, align 4
  %55 = load i32, i32* %b2, align 4
  %sub104 = sub i32 %55, %54
  store i32 %sub104, i32* %b2, align 4
  %56 = load i32, i32* %k, align 4
  %sub105 = sub i32 0, %56
  store i32 %sub105, i32* %b5, align 4
  store i32 0, i32* %s5, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.101
  %57 = load i32, i32* %mode.addr, align 4
  %cmp107 = icmp slt i32 %57, 0
  br i1 %cmp107, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.106
  %58 = load i32, i32* %mode.addr, align 4
  %cmp109 = icmp sgt i32 %58, 9
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %lor.lhs.false, %if.end.106
  store i32 0, i32* %mode.addr, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %lor.lhs.false
  store i32 1, i32* %try_quick, align 4
  %59 = load i32, i32* %mode.addr, align 4
  %cmp113 = icmp sgt i32 %59, 5
  br i1 %cmp113, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.112
  %60 = load i32, i32* %mode.addr, align 4
  %sub116 = sub i32 %60, 4
  store i32 %sub116, i32* %mode.addr, align 4
  store i32 0, i32* %try_quick, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.end.112
  store i32 1, i32* %leftright, align 4
  store i32 -1, i32* %ilim1, align 4
  store i32 -1, i32* %ilim, align 4
  %61 = load i32, i32* %mode.addr, align 4
  switch i32 %61, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.118
    i32 4, label %sw.bb.119
    i32 3, label %sw.bb.124
    i32 5, label %sw.bb.125
  ]

sw.bb:                                            ; preds = %if.end.117, %if.end.117
  store i32 18, i32* %i, align 4
  store i32 0, i32* %ndigits.addr, align 4
  br label %sw.epilog

sw.bb.118:                                        ; preds = %if.end.117
  store i32 0, i32* %leftright, align 4
  br label %sw.bb.119

sw.bb.119:                                        ; preds = %if.end.117, %sw.bb.118
  %62 = load i32, i32* %ndigits.addr, align 4
  %cmp120 = icmp sle i32 %62, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %sw.bb.119
  store i32 1, i32* %ndigits.addr, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %sw.bb.119
  %63 = load i32, i32* %ndigits.addr, align 4
  store i32 %63, i32* %i, align 4
  store i32 %63, i32* %ilim1, align 4
  store i32 %63, i32* %ilim, align 4
  br label %sw.epilog

sw.bb.124:                                        ; preds = %if.end.117
  store i32 0, i32* %leftright, align 4
  br label %sw.bb.125

sw.bb.125:                                        ; preds = %if.end.117, %sw.bb.124
  %64 = load i32, i32* %ndigits.addr, align 4
  %65 = load i32, i32* %k, align 4
  %add126 = add i32 %64, %65
  %add127 = add i32 %add126, 1
  store i32 %add127, i32* %i, align 4
  %66 = load i32, i32* %i, align 4
  store i32 %66, i32* %ilim, align 4
  %67 = load i32, i32* %i, align 4
  %sub128 = sub i32 %67, 1
  store i32 %sub128, i32* %ilim1, align 4
  %68 = load i32, i32* %i, align 4
  %cmp129 = icmp sle i32 %68, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %sw.bb.125
  store i32 1, i32* %i, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %sw.bb.125
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.132, %if.end.117, %if.end.123, %sw.bb
  %69 = load i32, i32* %i, align 4
  %call133 = call i8* @rv_alloc(i32 %69)
  store i8* %call133, i8** %s0, align 8
  %70 = load i8*, i8** %s0, align 8
  %cmp134 = icmp eq i8* %70, null
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %sw.epilog
  br label %failed_malloc

if.end.137:                                       ; preds = %sw.epilog
  %71 = load i8*, i8** %s0, align 8
  store i8* %71, i8** %s, align 8
  %72 = load i32, i32* %ilim, align 4
  %cmp138 = icmp sge i32 %72, 0
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.337

land.lhs.true.140:                                ; preds = %if.end.137
  %73 = load i32, i32* %ilim, align 4
  %cmp141 = icmp sle i32 %73, 14
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.337

land.lhs.true.143:                                ; preds = %land.lhs.true.140
  %74 = load i32, i32* %try_quick, align 4
  %tobool144 = icmp ne i32 %74, 0
  br i1 %tobool144, label %if.then.145, label %if.end.337

if.then.145:                                      ; preds = %land.lhs.true.143
  store i32 0, i32* %i, align 4
  %d146 = bitcast %union.U* %u to double*
  %75 = load double, double* %d146, align 8
  %d147 = bitcast %union.U* %d2 to double*
  store double %75, double* %d147, align 8
  %76 = load i32, i32* %k, align 4
  store i32 %76, i32* %k0, align 4
  %77 = load i32, i32* %ilim, align 4
  store i32 %77, i32* %ilim0, align 4
  store i32 2, i32* %ieps, align 4
  %78 = load i32, i32* %k, align 4
  %cmp148 = icmp sgt i32 %78, 0
  br i1 %cmp148, label %if.then.150, label %if.else.174

if.then.150:                                      ; preds = %if.then.145
  %79 = load i32, i32* %k, align 4
  %and151 = and i32 %79, 15
  %idxprom152 = sext i32 %and151 to i64
  %arrayidx153 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom152
  %80 = load double, double* %arrayidx153, align 8
  store double %80, double* %ds, align 8
  %81 = load i32, i32* %k, align 4
  %shr154 = ashr i32 %81, 4
  store i32 %shr154, i32* %j, align 4
  %82 = load i32, i32* %j, align 4
  %and155 = and i32 %82, 16
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.160

if.then.157:                                      ; preds = %if.then.150
  %83 = load i32, i32* %j, align 4
  %and158 = and i32 %83, 15
  store i32 %and158, i32* %j, align 4
  %84 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @bigtens, i32 0, i64 4), align 8
  %d159 = bitcast %union.U* %u to double*
  %85 = load double, double* %d159, align 8
  %div = fdiv double %85, %84
  store double %div, double* %d159, align 8
  %86 = load i32, i32* %ieps, align 4
  %inc = add i32 %86, 1
  store i32 %inc, i32* %ieps, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %if.then.150
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.160
  %87 = load i32, i32* %j, align 4
  %tobool161 = icmp ne i32 %87, 0
  br i1 %tobool161, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load i32, i32* %j, align 4
  %and162 = and i32 %88, 1
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %if.then.164, label %if.end.169

if.then.164:                                      ; preds = %for.body
  %89 = load i32, i32* %ieps, align 4
  %inc165 = add i32 %89, 1
  store i32 %inc165, i32* %ieps, align 4
  %90 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %90 to i64
  %arrayidx167 = getelementptr [5 x double], [5 x double]* @bigtens, i32 0, i64 %idxprom166
  %91 = load double, double* %arrayidx167, align 8
  %92 = load double, double* %ds, align 8
  %mul168 = fmul double %92, %91
  store double %mul168, double* %ds, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.164, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.169
  %93 = load i32, i32* %j, align 4
  %shr170 = ashr i32 %93, 1
  store i32 %shr170, i32* %j, align 4
  %94 = load i32, i32* %i, align 4
  %inc171 = add i32 %94, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %95 = load double, double* %ds, align 8
  %d172 = bitcast %union.U* %u to double*
  %96 = load double, double* %d172, align 8
  %div173 = fdiv double %96, %95
  store double %div173, double* %d172, align 8
  br label %if.end.201

if.else.174:                                      ; preds = %if.then.145
  %97 = load i32, i32* %k, align 4
  %sub175 = sub i32 0, %97
  store i32 %sub175, i32* %j1, align 4
  %tobool176 = icmp ne i32 %sub175, 0
  br i1 %tobool176, label %if.then.177, label %if.end.200

if.then.177:                                      ; preds = %if.else.174
  %98 = load i32, i32* %j1, align 4
  %and178 = and i32 %98, 15
  %idxprom179 = sext i32 %and178 to i64
  %arrayidx180 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom179
  %99 = load double, double* %arrayidx180, align 8
  %d181 = bitcast %union.U* %u to double*
  %100 = load double, double* %d181, align 8
  %mul182 = fmul double %100, %99
  store double %mul182, double* %d181, align 8
  %101 = load i32, i32* %j1, align 4
  %shr183 = ashr i32 %101, 4
  store i32 %shr183, i32* %j, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.196, %if.then.177
  %102 = load i32, i32* %j, align 4
  %tobool185 = icmp ne i32 %102, 0
  br i1 %tobool185, label %for.body.186, label %for.end.199

for.body.186:                                     ; preds = %for.cond.184
  %103 = load i32, i32* %j, align 4
  %and187 = and i32 %103, 1
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.195

if.then.189:                                      ; preds = %for.body.186
  %104 = load i32, i32* %ieps, align 4
  %inc190 = add i32 %104, 1
  store i32 %inc190, i32* %ieps, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %105 to i64
  %arrayidx192 = getelementptr [5 x double], [5 x double]* @bigtens, i32 0, i64 %idxprom191
  %106 = load double, double* %arrayidx192, align 8
  %d193 = bitcast %union.U* %u to double*
  %107 = load double, double* %d193, align 8
  %mul194 = fmul double %107, %106
  store double %mul194, double* %d193, align 8
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.189, %for.body.186
  br label %for.inc.196

for.inc.196:                                      ; preds = %if.end.195
  %108 = load i32, i32* %j, align 4
  %shr197 = ashr i32 %108, 1
  store i32 %shr197, i32* %j, align 4
  %109 = load i32, i32* %i, align 4
  %inc198 = add i32 %109, 1
  store i32 %inc198, i32* %i, align 4
  br label %for.cond.184

for.end.199:                                      ; preds = %for.cond.184
  br label %if.end.200

if.end.200:                                       ; preds = %for.end.199, %if.else.174
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %for.end
  %110 = load i32, i32* %k_check, align 4
  %tobool202 = icmp ne i32 %110, 0
  br i1 %tobool202, label %land.lhs.true.203, label %if.end.219

land.lhs.true.203:                                ; preds = %if.end.201
  %d204 = bitcast %union.U* %u to double*
  %111 = load double, double* %d204, align 8
  %cmp205 = fcmp olt double %111, 1.000000e+00
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.219

land.lhs.true.207:                                ; preds = %land.lhs.true.203
  %112 = load i32, i32* %ilim, align 4
  %cmp208 = icmp sgt i32 %112, 0
  br i1 %cmp208, label %if.then.210, label %if.end.219

if.then.210:                                      ; preds = %land.lhs.true.207
  %113 = load i32, i32* %ilim1, align 4
  %cmp211 = icmp sle i32 %113, 0
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.then.210
  br label %fast_failed

if.end.214:                                       ; preds = %if.then.210
  %114 = load i32, i32* %ilim1, align 4
  store i32 %114, i32* %ilim, align 4
  %115 = load i32, i32* %k, align 4
  %dec215 = add i32 %115, -1
  store i32 %dec215, i32* %k, align 4
  %d216 = bitcast %union.U* %u to double*
  %116 = load double, double* %d216, align 8
  %mul217 = fmul double %116, 1.000000e+01
  store double %mul217, double* %d216, align 8
  %117 = load i32, i32* %ieps, align 4
  %inc218 = add i32 %117, 1
  store i32 %inc218, i32* %ieps, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.214, %land.lhs.true.207, %land.lhs.true.203, %if.end.201
  %118 = load i32, i32* %ieps, align 4
  %conv220 = sitofp i32 %118 to double
  %d221 = bitcast %union.U* %u to double*
  %119 = load double, double* %d221, align 8
  %mul222 = fmul double %conv220, %119
  %add223 = fadd double %mul222, 7.000000e+00
  %d224 = bitcast %union.U* %eps to double*
  store double %add223, double* %d224, align 8
  %L225 = bitcast %union.U* %eps to [2 x i32]*
  %arrayidx226 = getelementptr [2 x i32], [2 x i32]* %L225, i32 0, i64 1
  %120 = load i32, i32* %arrayidx226, align 4
  %sub227 = sub i32 %120, 54525952
  store i32 %sub227, i32* %arrayidx226, align 4
  %121 = load i32, i32* %ilim, align 4
  %cmp228 = icmp eq i32 %121, 0
  br i1 %cmp228, label %if.then.230, label %if.end.246

if.then.230:                                      ; preds = %if.end.219
  store %struct.Bigint* null, %struct.Bigint** %mhi, align 8
  store %struct.Bigint* null, %struct.Bigint** %S, align 8
  %d231 = bitcast %union.U* %u to double*
  %122 = load double, double* %d231, align 8
  %sub232 = fsub double %122, 5.000000e+00
  store double %sub232, double* %d231, align 8
  %d233 = bitcast %union.U* %u to double*
  %123 = load double, double* %d233, align 8
  %d234 = bitcast %union.U* %eps to double*
  %124 = load double, double* %d234, align 8
  %cmp235 = fcmp ogt double %123, %124
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.then.230
  br label %one_digit

if.end.238:                                       ; preds = %if.then.230
  %d239 = bitcast %union.U* %u to double*
  %125 = load double, double* %d239, align 8
  %d240 = bitcast %union.U* %eps to double*
  %126 = load double, double* %d240, align 8
  %sub241 = fsub double -0.000000e+00, %126
  %cmp242 = fcmp olt double %125, %sub241
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.end.238
  br label %no_digits

if.end.245:                                       ; preds = %if.end.238
  br label %fast_failed

if.end.246:                                       ; preds = %if.end.219
  %127 = load i32, i32* %leftright, align 4
  %tobool247 = icmp ne i32 %127, 0
  br i1 %tobool247, label %if.then.248, label %if.else.287

if.then.248:                                      ; preds = %if.end.246
  %128 = load i32, i32* %ilim, align 4
  %sub249 = sub i32 %128, 1
  %idxprom250 = sext i32 %sub249 to i64
  %arrayidx251 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom250
  %129 = load double, double* %arrayidx251, align 8
  %div252 = fdiv double 5.000000e-01, %129
  %d253 = bitcast %union.U* %eps to double*
  %130 = load double, double* %d253, align 8
  %sub254 = fsub double %div252, %130
  %d255 = bitcast %union.U* %eps to double*
  store double %sub254, double* %d255, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %if.end.281, %if.then.248
  %d257 = bitcast %union.U* %u to double*
  %131 = load double, double* %d257, align 8
  %conv258 = fptosi double %131 to i32
  store i32 %conv258, i32* %L, align 4
  %132 = load i32, i32* %L, align 4
  %conv259 = sitofp i32 %132 to double
  %d260 = bitcast %union.U* %u to double*
  %133 = load double, double* %d260, align 8
  %sub261 = fsub double %133, %conv259
  store double %sub261, double* %d260, align 8
  %134 = load i32, i32* %L, align 4
  %add262 = add i32 48, %134
  %conv263 = trunc i32 %add262 to i8
  %135 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %135, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  store i8 %conv263, i8* %135, align 1
  %d264 = bitcast %union.U* %u to double*
  %136 = load double, double* %d264, align 8
  %d265 = bitcast %union.U* %eps to double*
  %137 = load double, double* %d265, align 8
  %cmp266 = fcmp olt double %136, %137
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %for.cond.256
  br label %ret1

if.end.269:                                       ; preds = %for.cond.256
  %d270 = bitcast %union.U* %u to double*
  %138 = load double, double* %d270, align 8
  %sub271 = fsub double 1.000000e+00, %138
  %d272 = bitcast %union.U* %eps to double*
  %139 = load double, double* %d272, align 8
  %cmp273 = fcmp olt double %sub271, %139
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %if.end.269
  br label %bump_up

if.end.276:                                       ; preds = %if.end.269
  %140 = load i32, i32* %i, align 4
  %inc277 = add i32 %140, 1
  store i32 %inc277, i32* %i, align 4
  %141 = load i32, i32* %ilim, align 4
  %cmp278 = icmp sge i32 %inc277, %141
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %if.end.276
  br label %for.end.286

if.end.281:                                       ; preds = %if.end.276
  %d282 = bitcast %union.U* %eps to double*
  %142 = load double, double* %d282, align 8
  %mul283 = fmul double %142, 1.000000e+01
  store double %mul283, double* %d282, align 8
  %d284 = bitcast %union.U* %u to double*
  %143 = load double, double* %d284, align 8
  %mul285 = fmul double %143, 1.000000e+01
  store double %mul285, double* %d284, align 8
  br label %for.cond.256

for.end.286:                                      ; preds = %if.then.280
  br label %if.end.334

if.else.287:                                      ; preds = %if.end.246
  %144 = load i32, i32* %ilim, align 4
  %sub288 = sub i32 %144, 1
  %idxprom289 = sext i32 %sub288 to i64
  %arrayidx290 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom289
  %145 = load double, double* %arrayidx290, align 8
  %d291 = bitcast %union.U* %eps to double*
  %146 = load double, double* %d291, align 8
  %mul292 = fmul double %146, %145
  store double %mul292, double* %d291, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.329, %if.else.287
  %d294 = bitcast %union.U* %u to double*
  %147 = load double, double* %d294, align 8
  %conv295 = fptosi double %147 to i32
  store i32 %conv295, i32* %L, align 4
  %148 = load i32, i32* %L, align 4
  %conv296 = sitofp i32 %148 to double
  %d297 = bitcast %union.U* %u to double*
  %149 = load double, double* %d297, align 8
  %sub298 = fsub double %149, %conv296
  store double %sub298, double* %d297, align 8
  %tobool299 = fcmp une double %sub298, 0.000000e+00
  br i1 %tobool299, label %if.end.301, label %if.then.300

if.then.300:                                      ; preds = %for.cond.293
  %150 = load i32, i32* %i, align 4
  store i32 %150, i32* %ilim, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.300, %for.cond.293
  %151 = load i32, i32* %L, align 4
  %add302 = add i32 48, %151
  %conv303 = trunc i32 %add302 to i8
  %152 = load i8*, i8** %s, align 8
  %incdec.ptr304 = getelementptr i8, i8* %152, i32 1
  store i8* %incdec.ptr304, i8** %s, align 8
  store i8 %conv303, i8* %152, align 1
  %153 = load i32, i32* %i, align 4
  %154 = load i32, i32* %ilim, align 4
  %cmp305 = icmp eq i32 %153, %154
  br i1 %cmp305, label %if.then.307, label %if.end.328

if.then.307:                                      ; preds = %if.end.301
  %d308 = bitcast %union.U* %u to double*
  %155 = load double, double* %d308, align 8
  %d309 = bitcast %union.U* %eps to double*
  %156 = load double, double* %d309, align 8
  %add310 = fadd double 5.000000e-01, %156
  %cmp311 = fcmp ogt double %155, %add310
  br i1 %cmp311, label %if.then.313, label %if.else.314

if.then.313:                                      ; preds = %if.then.307
  br label %bump_up

if.else.314:                                      ; preds = %if.then.307
  %d315 = bitcast %union.U* %u to double*
  %157 = load double, double* %d315, align 8
  %d316 = bitcast %union.U* %eps to double*
  %158 = load double, double* %d316, align 8
  %sub317 = fsub double 5.000000e-01, %158
  %cmp318 = fcmp olt double %157, %sub317
  br i1 %cmp318, label %if.then.320, label %if.end.326

if.then.320:                                      ; preds = %if.else.314
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.320
  %159 = load i8*, i8** %s, align 8
  %incdec.ptr321 = getelementptr i8, i8* %159, i32 -1
  store i8* %incdec.ptr321, i8** %s, align 8
  %160 = load i8, i8* %incdec.ptr321, align 1
  %conv322 = sext i8 %160 to i32
  %cmp323 = icmp eq i32 %conv322, 48
  br i1 %cmp323, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %161 = load i8*, i8** %s, align 8
  %incdec.ptr325 = getelementptr i8, i8* %161, i32 1
  store i8* %incdec.ptr325, i8** %s, align 8
  br label %ret1

if.end.326:                                       ; preds = %if.else.314
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326
  br label %for.end.333

if.end.328:                                       ; preds = %if.end.301
  br label %for.inc.329

for.inc.329:                                      ; preds = %if.end.328
  %162 = load i32, i32* %i, align 4
  %inc330 = add i32 %162, 1
  store i32 %inc330, i32* %i, align 4
  %d331 = bitcast %union.U* %u to double*
  %163 = load double, double* %d331, align 8
  %mul332 = fmul double %163, 1.000000e+01
  store double %mul332, double* %d331, align 8
  br label %for.cond.293

for.end.333:                                      ; preds = %if.end.327
  br label %if.end.334

if.end.334:                                       ; preds = %for.end.333, %for.end.286
  br label %fast_failed

fast_failed:                                      ; preds = %if.end.334, %if.end.245, %if.then.213
  %164 = load i8*, i8** %s0, align 8
  store i8* %164, i8** %s, align 8
  %d335 = bitcast %union.U* %d2 to double*
  %165 = load double, double* %d335, align 8
  %d336 = bitcast %union.U* %u to double*
  store double %165, double* %d336, align 8
  %166 = load i32, i32* %k0, align 4
  store i32 %166, i32* %k, align 4
  %167 = load i32, i32* %ilim0, align 4
  store i32 %167, i32* %ilim, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %fast_failed, %land.lhs.true.143, %land.lhs.true.140, %if.end.137
  %168 = load i32, i32* %be, align 4
  %cmp338 = icmp sge i32 %168, 0
  br i1 %cmp338, label %land.lhs.true.340, label %if.end.415

land.lhs.true.340:                                ; preds = %if.end.337
  %169 = load i32, i32* %k, align 4
  %cmp341 = icmp sle i32 %169, 14
  br i1 %cmp341, label %if.then.343, label %if.end.415

if.then.343:                                      ; preds = %land.lhs.true.340
  %170 = load i32, i32* %k, align 4
  %idxprom344 = sext i32 %170 to i64
  %arrayidx345 = getelementptr [23 x double], [23 x double]* @tens, i32 0, i64 %idxprom344
  %171 = load double, double* %arrayidx345, align 8
  store double %171, double* %ds, align 8
  %172 = load i32, i32* %ndigits.addr, align 4
  %cmp346 = icmp slt i32 %172, 0
  br i1 %cmp346, label %land.lhs.true.348, label %if.end.361

land.lhs.true.348:                                ; preds = %if.then.343
  %173 = load i32, i32* %ilim, align 4
  %cmp349 = icmp sle i32 %173, 0
  br i1 %cmp349, label %if.then.351, label %if.end.361

if.then.351:                                      ; preds = %land.lhs.true.348
  store %struct.Bigint* null, %struct.Bigint** %mhi, align 8
  store %struct.Bigint* null, %struct.Bigint** %S, align 8
  %174 = load i32, i32* %ilim, align 4
  %cmp352 = icmp slt i32 %174, 0
  br i1 %cmp352, label %if.then.359, label %lor.lhs.false.354

lor.lhs.false.354:                                ; preds = %if.then.351
  %d355 = bitcast %union.U* %u to double*
  %175 = load double, double* %d355, align 8
  %176 = load double, double* %ds, align 8
  %mul356 = fmul double 5.000000e+00, %176
  %cmp357 = fcmp ole double %175, %mul356
  br i1 %cmp357, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %lor.lhs.false.354, %if.then.351
  br label %no_digits

if.end.360:                                       ; preds = %lor.lhs.false.354
  br label %one_digit

if.end.361:                                       ; preds = %land.lhs.true.348, %if.then.343
  store i32 1, i32* %i, align 4
  br label %for.cond.362

for.cond.362:                                     ; preds = %for.inc.410, %if.end.361
  %d363 = bitcast %union.U* %u to double*
  %177 = load double, double* %d363, align 8
  %178 = load double, double* %ds, align 8
  %div364 = fdiv double %177, %178
  %conv365 = fptosi double %div364 to i32
  store i32 %conv365, i32* %L, align 4
  %179 = load i32, i32* %L, align 4
  %conv366 = sitofp i32 %179 to double
  %180 = load double, double* %ds, align 8
  %mul367 = fmul double %conv366, %180
  %d368 = bitcast %union.U* %u to double*
  %181 = load double, double* %d368, align 8
  %sub369 = fsub double %181, %mul367
  store double %sub369, double* %d368, align 8
  %182 = load i32, i32* %L, align 4
  %add370 = add i32 48, %182
  %conv371 = trunc i32 %add370 to i8
  %183 = load i8*, i8** %s, align 8
  %incdec.ptr372 = getelementptr i8, i8* %183, i32 1
  store i8* %incdec.ptr372, i8** %s, align 8
  store i8 %conv371, i8* %183, align 1
  %d373 = bitcast %union.U* %u to double*
  %184 = load double, double* %d373, align 8
  %tobool374 = fcmp une double %184, 0.000000e+00
  br i1 %tobool374, label %if.end.376, label %if.then.375

if.then.375:                                      ; preds = %for.cond.362
  br label %for.end.414

if.end.376:                                       ; preds = %for.cond.362
  %185 = load i32, i32* %i, align 4
  %186 = load i32, i32* %ilim, align 4
  %cmp377 = icmp eq i32 %185, %186
  br i1 %cmp377, label %if.then.379, label %if.end.409

if.then.379:                                      ; preds = %if.end.376
  %d380 = bitcast %union.U* %u to double*
  %187 = load double, double* %d380, align 8
  %d381 = bitcast %union.U* %u to double*
  %188 = load double, double* %d381, align 8
  %add382 = fadd double %188, %187
  store double %add382, double* %d381, align 8
  %d383 = bitcast %union.U* %u to double*
  %189 = load double, double* %d383, align 8
  %190 = load double, double* %ds, align 8
  %cmp384 = fcmp ogt double %189, %190
  br i1 %cmp384, label %if.then.393, label %lor.lhs.false.386

lor.lhs.false.386:                                ; preds = %if.then.379
  %d387 = bitcast %union.U* %u to double*
  %191 = load double, double* %d387, align 8
  %192 = load double, double* %ds, align 8
  %cmp388 = fcmp oeq double %191, %192
  br i1 %cmp388, label %land.lhs.true.390, label %if.end.408

land.lhs.true.390:                                ; preds = %lor.lhs.false.386
  %193 = load i32, i32* %L, align 4
  %and391 = and i32 %193, 1
  %tobool392 = icmp ne i32 %and391, 0
  br i1 %tobool392, label %if.then.393, label %if.end.408

if.then.393:                                      ; preds = %land.lhs.true.390, %if.then.379
  br label %bump_up

bump_up:                                          ; preds = %if.then.393, %if.then.313, %if.then.275
  br label %while.cond.394

while.cond.394:                                   ; preds = %if.end.404, %bump_up
  %194 = load i8*, i8** %s, align 8
  %incdec.ptr395 = getelementptr i8, i8* %194, i32 -1
  store i8* %incdec.ptr395, i8** %s, align 8
  %195 = load i8, i8* %incdec.ptr395, align 1
  %conv396 = sext i8 %195 to i32
  %cmp397 = icmp eq i32 %conv396, 57
  br i1 %cmp397, label %while.body.399, label %while.end.405

while.body.399:                                   ; preds = %while.cond.394
  %196 = load i8*, i8** %s, align 8
  %197 = load i8*, i8** %s0, align 8
  %cmp400 = icmp eq i8* %196, %197
  br i1 %cmp400, label %if.then.402, label %if.end.404

if.then.402:                                      ; preds = %while.body.399
  %198 = load i32, i32* %k, align 4
  %inc403 = add i32 %198, 1
  store i32 %inc403, i32* %k, align 4
  %199 = load i8*, i8** %s, align 8
  store i8 48, i8* %199, align 1
  br label %while.end.405

if.end.404:                                       ; preds = %while.body.399
  br label %while.cond.394

while.end.405:                                    ; preds = %if.then.402, %while.cond.394
  %200 = load i8*, i8** %s, align 8
  %incdec.ptr406 = getelementptr i8, i8* %200, i32 1
  store i8* %incdec.ptr406, i8** %s, align 8
  %201 = load i8, i8* %200, align 1
  %inc407 = add i8 %201, 1
  store i8 %inc407, i8* %200, align 1
  br label %if.end.408

if.end.408:                                       ; preds = %while.end.405, %land.lhs.true.390, %lor.lhs.false.386
  br label %for.end.414

if.end.409:                                       ; preds = %if.end.376
  br label %for.inc.410

for.inc.410:                                      ; preds = %if.end.409
  %202 = load i32, i32* %i, align 4
  %inc411 = add i32 %202, 1
  store i32 %inc411, i32* %i, align 4
  %d412 = bitcast %union.U* %u to double*
  %203 = load double, double* %d412, align 8
  %mul413 = fmul double %203, 1.000000e+01
  store double %mul413, double* %d412, align 8
  br label %for.cond.362

for.end.414:                                      ; preds = %if.end.408, %if.then.375
  br label %ret1

if.end.415:                                       ; preds = %land.lhs.true.340, %if.end.337
  %204 = load i32, i32* %b2, align 4
  store i32 %204, i32* %m2, align 4
  %205 = load i32, i32* %b5, align 4
  store i32 %205, i32* %m5, align 4
  %206 = load i32, i32* %leftright, align 4
  %tobool416 = icmp ne i32 %206, 0
  br i1 %tobool416, label %if.then.417, label %if.end.432

if.then.417:                                      ; preds = %if.end.415
  %207 = load i32, i32* %denorm, align 4
  %tobool418 = icmp ne i32 %207, 0
  br i1 %tobool418, label %cond.true.419, label %cond.false.421

cond.true.419:                                    ; preds = %if.then.417
  %208 = load i32, i32* %be, align 4
  %add420 = add i32 %208, 1075
  br label %cond.end.423

cond.false.421:                                   ; preds = %if.then.417
  %209 = load i32, i32* %bbits, align 4
  %sub422 = sub i32 54, %209
  br label %cond.end.423

cond.end.423:                                     ; preds = %cond.false.421, %cond.true.419
  %cond424 = phi i32 [ %add420, %cond.true.419 ], [ %sub422, %cond.false.421 ]
  store i32 %cond424, i32* %i, align 4
  %210 = load i32, i32* %i, align 4
  %211 = load i32, i32* %b2, align 4
  %add425 = add i32 %211, %210
  store i32 %add425, i32* %b2, align 4
  %212 = load i32, i32* %i, align 4
  %213 = load i32, i32* %s2, align 4
  %add426 = add i32 %213, %212
  store i32 %add426, i32* %s2, align 4
  %call427 = call %struct.Bigint* @i2b(i32 1)
  store %struct.Bigint* %call427, %struct.Bigint** %mhi, align 8
  %214 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp428 = icmp eq %struct.Bigint* %214, null
  br i1 %cmp428, label %if.then.430, label %if.end.431

if.then.430:                                      ; preds = %cond.end.423
  br label %failed_malloc

if.end.431:                                       ; preds = %cond.end.423
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.431, %if.end.415
  %215 = load i32, i32* %m2, align 4
  %cmp433 = icmp sgt i32 %215, 0
  br i1 %cmp433, label %land.lhs.true.435, label %if.end.448

land.lhs.true.435:                                ; preds = %if.end.432
  %216 = load i32, i32* %s2, align 4
  %cmp436 = icmp sgt i32 %216, 0
  br i1 %cmp436, label %if.then.438, label %if.end.448

if.then.438:                                      ; preds = %land.lhs.true.435
  %217 = load i32, i32* %m2, align 4
  %218 = load i32, i32* %s2, align 4
  %cmp439 = icmp slt i32 %217, %218
  br i1 %cmp439, label %cond.true.441, label %cond.false.442

cond.true.441:                                    ; preds = %if.then.438
  %219 = load i32, i32* %m2, align 4
  br label %cond.end.443

cond.false.442:                                   ; preds = %if.then.438
  %220 = load i32, i32* %s2, align 4
  br label %cond.end.443

cond.end.443:                                     ; preds = %cond.false.442, %cond.true.441
  %cond444 = phi i32 [ %219, %cond.true.441 ], [ %220, %cond.false.442 ]
  store i32 %cond444, i32* %i, align 4
  %221 = load i32, i32* %i, align 4
  %222 = load i32, i32* %b2, align 4
  %sub445 = sub i32 %222, %221
  store i32 %sub445, i32* %b2, align 4
  %223 = load i32, i32* %i, align 4
  %224 = load i32, i32* %m2, align 4
  %sub446 = sub i32 %224, %223
  store i32 %sub446, i32* %m2, align 4
  %225 = load i32, i32* %i, align 4
  %226 = load i32, i32* %s2, align 4
  %sub447 = sub i32 %226, %225
  store i32 %sub447, i32* %s2, align 4
  br label %if.end.448

if.end.448:                                       ; preds = %cond.end.443, %land.lhs.true.435, %if.end.432
  %227 = load i32, i32* %b5, align 4
  %cmp449 = icmp sgt i32 %227, 0
  br i1 %cmp449, label %if.then.451, label %if.end.484

if.then.451:                                      ; preds = %if.end.448
  %228 = load i32, i32* %leftright, align 4
  %tobool452 = icmp ne i32 %228, 0
  br i1 %tobool452, label %if.then.453, label %if.else.477

if.then.453:                                      ; preds = %if.then.451
  %229 = load i32, i32* %m5, align 4
  %cmp454 = icmp sgt i32 %229, 0
  br i1 %cmp454, label %if.then.456, label %if.end.467

if.then.456:                                      ; preds = %if.then.453
  %230 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %231 = load i32, i32* %m5, align 4
  %call457 = call %struct.Bigint* @pow5mult(%struct.Bigint* %230, i32 %231)
  store %struct.Bigint* %call457, %struct.Bigint** %mhi, align 8
  %232 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp458 = icmp eq %struct.Bigint* %232, null
  br i1 %cmp458, label %if.then.460, label %if.end.461

if.then.460:                                      ; preds = %if.then.456
  br label %failed_malloc

if.end.461:                                       ; preds = %if.then.456
  %233 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %234 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %call462 = call %struct.Bigint* @mult(%struct.Bigint* %233, %struct.Bigint* %234)
  store %struct.Bigint* %call462, %struct.Bigint** %b1, align 8
  %235 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  call void @Bfree(%struct.Bigint* %235)
  %236 = load %struct.Bigint*, %struct.Bigint** %b1, align 8
  store %struct.Bigint* %236, %struct.Bigint** %b, align 8
  %237 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp463 = icmp eq %struct.Bigint* %237, null
  br i1 %cmp463, label %if.then.465, label %if.end.466

if.then.465:                                      ; preds = %if.end.461
  br label %failed_malloc

if.end.466:                                       ; preds = %if.end.461
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.466, %if.then.453
  %238 = load i32, i32* %b5, align 4
  %239 = load i32, i32* %m5, align 4
  %sub468 = sub i32 %238, %239
  store i32 %sub468, i32* %j, align 4
  %tobool469 = icmp ne i32 %sub468, 0
  br i1 %tobool469, label %if.then.470, label %if.end.476

if.then.470:                                      ; preds = %if.end.467
  %240 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %241 = load i32, i32* %j, align 4
  %call471 = call %struct.Bigint* @pow5mult(%struct.Bigint* %240, i32 %241)
  store %struct.Bigint* %call471, %struct.Bigint** %b, align 8
  %242 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp472 = icmp eq %struct.Bigint* %242, null
  br i1 %cmp472, label %if.then.474, label %if.end.475

if.then.474:                                      ; preds = %if.then.470
  br label %failed_malloc

if.end.475:                                       ; preds = %if.then.470
  br label %if.end.476

if.end.476:                                       ; preds = %if.end.475, %if.end.467
  br label %if.end.483

if.else.477:                                      ; preds = %if.then.451
  %243 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %244 = load i32, i32* %b5, align 4
  %call478 = call %struct.Bigint* @pow5mult(%struct.Bigint* %243, i32 %244)
  store %struct.Bigint* %call478, %struct.Bigint** %b, align 8
  %245 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp479 = icmp eq %struct.Bigint* %245, null
  br i1 %cmp479, label %if.then.481, label %if.end.482

if.then.481:                                      ; preds = %if.else.477
  br label %failed_malloc

if.end.482:                                       ; preds = %if.else.477
  br label %if.end.483

if.end.483:                                       ; preds = %if.end.482, %if.end.476
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.end.448
  %call485 = call %struct.Bigint* @i2b(i32 1)
  store %struct.Bigint* %call485, %struct.Bigint** %S, align 8
  %246 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %cmp486 = icmp eq %struct.Bigint* %246, null
  br i1 %cmp486, label %if.then.488, label %if.end.489

if.then.488:                                      ; preds = %if.end.484
  br label %failed_malloc

if.end.489:                                       ; preds = %if.end.484
  %247 = load i32, i32* %s5, align 4
  %cmp490 = icmp sgt i32 %247, 0
  br i1 %cmp490, label %if.then.492, label %if.end.498

if.then.492:                                      ; preds = %if.end.489
  %248 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %249 = load i32, i32* %s5, align 4
  %call493 = call %struct.Bigint* @pow5mult(%struct.Bigint* %248, i32 %249)
  store %struct.Bigint* %call493, %struct.Bigint** %S, align 8
  %250 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %cmp494 = icmp eq %struct.Bigint* %250, null
  br i1 %cmp494, label %if.then.496, label %if.end.497

if.then.496:                                      ; preds = %if.then.492
  br label %failed_malloc

if.end.497:                                       ; preds = %if.then.492
  br label %if.end.498

if.end.498:                                       ; preds = %if.end.497, %if.end.489
  store i32 0, i32* %spec_case, align 4
  %251 = load i32, i32* %mode.addr, align 4
  %cmp499 = icmp slt i32 %251, 2
  br i1 %cmp499, label %if.then.503, label %lor.lhs.false.501

lor.lhs.false.501:                                ; preds = %if.end.498
  %252 = load i32, i32* %leftright, align 4
  %tobool502 = icmp ne i32 %252, 0
  br i1 %tobool502, label %if.then.503, label %if.end.521

if.then.503:                                      ; preds = %lor.lhs.false.501, %if.end.498
  %L504 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx505 = getelementptr [2 x i32], [2 x i32]* %L504, i32 0, i64 0
  %253 = load i32, i32* %arrayidx505, align 4
  %tobool506 = icmp ne i32 %253, 0
  br i1 %tobool506, label %if.end.520, label %land.lhs.true.507

land.lhs.true.507:                                ; preds = %if.then.503
  %L508 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx509 = getelementptr [2 x i32], [2 x i32]* %L508, i32 0, i64 1
  %254 = load i32, i32* %arrayidx509, align 4
  %and510 = and i32 %254, 1048575
  %tobool511 = icmp ne i32 %and510, 0
  br i1 %tobool511, label %if.end.520, label %land.lhs.true.512

land.lhs.true.512:                                ; preds = %land.lhs.true.507
  %L513 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx514 = getelementptr [2 x i32], [2 x i32]* %L513, i32 0, i64 1
  %255 = load i32, i32* %arrayidx514, align 4
  %and515 = and i32 %255, 2145386496
  %tobool516 = icmp ne i32 %and515, 0
  br i1 %tobool516, label %if.then.517, label %if.end.520

if.then.517:                                      ; preds = %land.lhs.true.512
  %256 = load i32, i32* %b2, align 4
  %add518 = add i32 %256, 1
  store i32 %add518, i32* %b2, align 4
  %257 = load i32, i32* %s2, align 4
  %add519 = add i32 %257, 1
  store i32 %add519, i32* %s2, align 4
  store i32 1, i32* %spec_case, align 4
  br label %if.end.520

if.end.520:                                       ; preds = %if.then.517, %land.lhs.true.512, %land.lhs.true.507, %if.then.503
  br label %if.end.521

if.end.521:                                       ; preds = %if.end.520, %lor.lhs.false.501
  %258 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %259 = load i32, i32* %s2, align 4
  %call522 = call i32 @dshift(%struct.Bigint* %258, i32 %259)
  store i32 %call522, i32* %i, align 4
  %260 = load i32, i32* %i, align 4
  %261 = load i32, i32* %b2, align 4
  %add523 = add i32 %261, %260
  store i32 %add523, i32* %b2, align 4
  %262 = load i32, i32* %i, align 4
  %263 = load i32, i32* %m2, align 4
  %add524 = add i32 %263, %262
  store i32 %add524, i32* %m2, align 4
  %264 = load i32, i32* %i, align 4
  %265 = load i32, i32* %s2, align 4
  %add525 = add i32 %265, %264
  store i32 %add525, i32* %s2, align 4
  %266 = load i32, i32* %b2, align 4
  %cmp526 = icmp sgt i32 %266, 0
  br i1 %cmp526, label %if.then.528, label %if.end.534

if.then.528:                                      ; preds = %if.end.521
  %267 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %268 = load i32, i32* %b2, align 4
  %call529 = call %struct.Bigint* @lshift(%struct.Bigint* %267, i32 %268)
  store %struct.Bigint* %call529, %struct.Bigint** %b, align 8
  %269 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp530 = icmp eq %struct.Bigint* %269, null
  br i1 %cmp530, label %if.then.532, label %if.end.533

if.then.532:                                      ; preds = %if.then.528
  br label %failed_malloc

if.end.533:                                       ; preds = %if.then.528
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.533, %if.end.521
  %270 = load i32, i32* %s2, align 4
  %cmp535 = icmp sgt i32 %270, 0
  br i1 %cmp535, label %if.then.537, label %if.end.543

if.then.537:                                      ; preds = %if.end.534
  %271 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %272 = load i32, i32* %s2, align 4
  %call538 = call %struct.Bigint* @lshift(%struct.Bigint* %271, i32 %272)
  store %struct.Bigint* %call538, %struct.Bigint** %S, align 8
  %273 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %cmp539 = icmp eq %struct.Bigint* %273, null
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %if.then.537
  br label %failed_malloc

if.end.542:                                       ; preds = %if.then.537
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542, %if.end.534
  %274 = load i32, i32* %k_check, align 4
  %tobool544 = icmp ne i32 %274, 0
  br i1 %tobool544, label %if.then.545, label %if.end.565

if.then.545:                                      ; preds = %if.end.543
  %275 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %276 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %call546 = call i32 @cmp(%struct.Bigint* %275, %struct.Bigint* %276)
  %cmp547 = icmp slt i32 %call546, 0
  br i1 %cmp547, label %if.then.549, label %if.end.564

if.then.549:                                      ; preds = %if.then.545
  %277 = load i32, i32* %k, align 4
  %dec550 = add i32 %277, -1
  store i32 %dec550, i32* %k, align 4
  %278 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %call551 = call %struct.Bigint* @multadd(%struct.Bigint* %278, i32 10, i32 0)
  store %struct.Bigint* %call551, %struct.Bigint** %b, align 8
  %279 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp552 = icmp eq %struct.Bigint* %279, null
  br i1 %cmp552, label %if.then.554, label %if.end.555

if.then.554:                                      ; preds = %if.then.549
  br label %failed_malloc

if.end.555:                                       ; preds = %if.then.549
  %280 = load i32, i32* %leftright, align 4
  %tobool556 = icmp ne i32 %280, 0
  br i1 %tobool556, label %if.then.557, label %if.end.563

if.then.557:                                      ; preds = %if.end.555
  %281 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %call558 = call %struct.Bigint* @multadd(%struct.Bigint* %281, i32 10, i32 0)
  store %struct.Bigint* %call558, %struct.Bigint** %mhi, align 8
  %282 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp559 = icmp eq %struct.Bigint* %282, null
  br i1 %cmp559, label %if.then.561, label %if.end.562

if.then.561:                                      ; preds = %if.then.557
  br label %failed_malloc

if.end.562:                                       ; preds = %if.then.557
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %if.end.555
  %283 = load i32, i32* %ilim1, align 4
  store i32 %283, i32* %ilim, align 4
  br label %if.end.564

if.end.564:                                       ; preds = %if.end.563, %if.then.545
  br label %if.end.565

if.end.565:                                       ; preds = %if.end.564, %if.end.543
  %284 = load i32, i32* %ilim, align 4
  %cmp566 = icmp sle i32 %284, 0
  br i1 %cmp566, label %land.lhs.true.568, label %if.end.593

land.lhs.true.568:                                ; preds = %if.end.565
  %285 = load i32, i32* %mode.addr, align 4
  %cmp569 = icmp eq i32 %285, 3
  br i1 %cmp569, label %if.then.574, label %lor.lhs.false.571

lor.lhs.false.571:                                ; preds = %land.lhs.true.568
  %286 = load i32, i32* %mode.addr, align 4
  %cmp572 = icmp eq i32 %286, 5
  br i1 %cmp572, label %if.then.574, label %if.end.593

if.then.574:                                      ; preds = %lor.lhs.false.571, %land.lhs.true.568
  %287 = load i32, i32* %ilim, align 4
  %cmp575 = icmp slt i32 %287, 0
  br i1 %cmp575, label %if.then.577, label %if.else.579

if.then.577:                                      ; preds = %if.then.574
  br label %no_digits

no_digits:                                        ; preds = %if.then.588, %if.then.577, %if.then.359, %if.then.244
  %288 = load i32, i32* %ndigits.addr, align 4
  %sub578 = sub i32 -1, %288
  store i32 %sub578, i32* %k, align 4
  br label %ret

if.else.579:                                      ; preds = %if.then.574
  %289 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %call580 = call %struct.Bigint* @multadd(%struct.Bigint* %289, i32 5, i32 0)
  store %struct.Bigint* %call580, %struct.Bigint** %S, align 8
  %290 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %cmp581 = icmp eq %struct.Bigint* %290, null
  br i1 %cmp581, label %if.then.583, label %if.end.584

if.then.583:                                      ; preds = %if.else.579
  br label %failed_malloc

if.end.584:                                       ; preds = %if.else.579
  %291 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %292 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %call585 = call i32 @cmp(%struct.Bigint* %291, %struct.Bigint* %292)
  %cmp586 = icmp sle i32 %call585, 0
  br i1 %cmp586, label %if.then.588, label %if.end.589

if.then.588:                                      ; preds = %if.end.584
  br label %no_digits

if.end.589:                                       ; preds = %if.end.584
  br label %if.end.590

if.end.590:                                       ; preds = %if.end.589
  br label %one_digit

one_digit:                                        ; preds = %if.end.590, %if.end.360, %if.then.237
  %293 = load i8*, i8** %s, align 8
  %incdec.ptr591 = getelementptr i8, i8* %293, i32 1
  store i8* %incdec.ptr591, i8** %s, align 8
  store i8 49, i8* %293, align 1
  %294 = load i32, i32* %k, align 4
  %inc592 = add i32 %294, 1
  store i32 %inc592, i32* %k, align 4
  br label %ret

if.end.593:                                       ; preds = %lor.lhs.false.571, %if.end.565
  %295 = load i32, i32* %leftright, align 4
  %tobool594 = icmp ne i32 %295, 0
  br i1 %tobool594, label %if.then.595, label %if.else.759

if.then.595:                                      ; preds = %if.end.593
  %296 = load i32, i32* %m2, align 4
  %cmp596 = icmp sgt i32 %296, 0
  br i1 %cmp596, label %if.then.598, label %if.end.604

if.then.598:                                      ; preds = %if.then.595
  %297 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %298 = load i32, i32* %m2, align 4
  %call599 = call %struct.Bigint* @lshift(%struct.Bigint* %297, i32 %298)
  store %struct.Bigint* %call599, %struct.Bigint** %mhi, align 8
  %299 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp600 = icmp eq %struct.Bigint* %299, null
  br i1 %cmp600, label %if.then.602, label %if.end.603

if.then.602:                                      ; preds = %if.then.598
  br label %failed_malloc

if.end.603:                                       ; preds = %if.then.598
  br label %if.end.604

if.end.604:                                       ; preds = %if.end.603, %if.then.595
  %300 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  store %struct.Bigint* %300, %struct.Bigint** %mlo, align 8
  %301 = load i32, i32* %spec_case, align 4
  %tobool605 = icmp ne i32 %301, 0
  br i1 %tobool605, label %if.then.606, label %if.end.623

if.then.606:                                      ; preds = %if.end.604
  %302 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %k607 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %302, i32 0, i32 1
  %303 = load i32, i32* %k607, align 4
  %call608 = call %struct.Bigint* @Balloc(i32 %303)
  store %struct.Bigint* %call608, %struct.Bigint** %mhi, align 8
  %304 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp609 = icmp eq %struct.Bigint* %304, null
  br i1 %cmp609, label %if.then.611, label %if.end.612

if.then.611:                                      ; preds = %if.then.606
  br label %failed_malloc

if.end.612:                                       ; preds = %if.then.606
  %305 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %sign613 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %305, i32 0, i32 3
  %306 = bitcast i32* %sign613 to i8*
  %307 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %sign614 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %307, i32 0, i32 3
  %308 = bitcast i32* %sign614 to i8*
  %309 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %309, i32 0, i32 4
  %310 = load i32, i32* %wds, align 4
  %conv615 = sext i32 %310 to i64
  %mul616 = mul i64 %conv615, 4
  %add617 = add i64 %mul616, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %306, i8* %308, i64 %add617, i32 1, i1 false)
  %311 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %call618 = call %struct.Bigint* @lshift(%struct.Bigint* %311, i32 1)
  store %struct.Bigint* %call618, %struct.Bigint** %mhi, align 8
  %312 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp619 = icmp eq %struct.Bigint* %312, null
  br i1 %cmp619, label %if.then.621, label %if.end.622

if.then.621:                                      ; preds = %if.end.612
  br label %failed_malloc

if.end.622:                                       ; preds = %if.end.612
  br label %if.end.623

if.end.623:                                       ; preds = %if.end.622, %if.end.604
  store i32 1, i32* %i, align 4
  br label %for.cond.624

for.cond.624:                                     ; preds = %for.inc.756, %if.end.623
  %313 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %314 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %call625 = call i32 @quorem(%struct.Bigint* %313, %struct.Bigint* %314)
  %add626 = add i32 %call625, 48
  store i32 %add626, i32* %dig, align 4
  %315 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %316 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %call627 = call i32 @cmp(%struct.Bigint* %315, %struct.Bigint* %316)
  store i32 %call627, i32* %j, align 4
  %317 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %318 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %call628 = call %struct.Bigint* @diff(%struct.Bigint* %317, %struct.Bigint* %318)
  store %struct.Bigint* %call628, %struct.Bigint** %delta, align 8
  %319 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %cmp629 = icmp eq %struct.Bigint* %319, null
  br i1 %cmp629, label %if.then.631, label %if.end.632

if.then.631:                                      ; preds = %for.cond.624
  br label %failed_malloc

if.end.632:                                       ; preds = %for.cond.624
  %320 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %sign633 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %320, i32 0, i32 3
  %321 = load i32, i32* %sign633, align 4
  %tobool634 = icmp ne i32 %321, 0
  br i1 %tobool634, label %cond.true.635, label %cond.false.636

cond.true.635:                                    ; preds = %if.end.632
  br label %cond.end.638

cond.false.636:                                   ; preds = %if.end.632
  %322 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %323 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  %call637 = call i32 @cmp(%struct.Bigint* %322, %struct.Bigint* %323)
  br label %cond.end.638

cond.end.638:                                     ; preds = %cond.false.636, %cond.true.635
  %cond639 = phi i32 [ 1, %cond.true.635 ], [ %call637, %cond.false.636 ]
  store i32 %cond639, i32* %j1, align 4
  %324 = load %struct.Bigint*, %struct.Bigint** %delta, align 8
  call void @Bfree(%struct.Bigint* %324)
  %325 = load i32, i32* %j1, align 4
  %cmp640 = icmp eq i32 %325, 0
  br i1 %cmp640, label %land.lhs.true.642, label %if.end.662

land.lhs.true.642:                                ; preds = %cond.end.638
  %326 = load i32, i32* %mode.addr, align 4
  %cmp643 = icmp ne i32 %326, 1
  br i1 %cmp643, label %land.lhs.true.645, label %if.end.662

land.lhs.true.645:                                ; preds = %land.lhs.true.642
  %L646 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx647 = getelementptr [2 x i32], [2 x i32]* %L646, i32 0, i64 0
  %327 = load i32, i32* %arrayidx647, align 4
  %and648 = and i32 %327, 1
  %tobool649 = icmp ne i32 %and648, 0
  br i1 %tobool649, label %if.end.662, label %if.then.650

if.then.650:                                      ; preds = %land.lhs.true.645
  %328 = load i32, i32* %dig, align 4
  %cmp651 = icmp eq i32 %328, 57
  br i1 %cmp651, label %if.then.653, label %if.end.654

if.then.653:                                      ; preds = %if.then.650
  br label %round_9_up

if.end.654:                                       ; preds = %if.then.650
  %329 = load i32, i32* %j, align 4
  %cmp655 = icmp sgt i32 %329, 0
  br i1 %cmp655, label %if.then.657, label %if.end.659

if.then.657:                                      ; preds = %if.end.654
  %330 = load i32, i32* %dig, align 4
  %inc658 = add i32 %330, 1
  store i32 %inc658, i32* %dig, align 4
  br label %if.end.659

if.end.659:                                       ; preds = %if.then.657, %if.end.654
  %331 = load i32, i32* %dig, align 4
  %conv660 = trunc i32 %331 to i8
  %332 = load i8*, i8** %s, align 8
  %incdec.ptr661 = getelementptr i8, i8* %332, i32 1
  store i8* %incdec.ptr661, i8** %s, align 8
  store i8 %conv660, i8* %332, align 1
  br label %ret

if.end.662:                                       ; preds = %land.lhs.true.645, %land.lhs.true.642, %cond.end.638
  %333 = load i32, i32* %j, align 4
  %cmp663 = icmp slt i32 %333, 0
  br i1 %cmp663, label %if.then.676, label %lor.lhs.false.665

lor.lhs.false.665:                                ; preds = %if.end.662
  %334 = load i32, i32* %j, align 4
  %cmp666 = icmp eq i32 %334, 0
  br i1 %cmp666, label %land.lhs.true.668, label %if.end.712

land.lhs.true.668:                                ; preds = %lor.lhs.false.665
  %335 = load i32, i32* %mode.addr, align 4
  %cmp669 = icmp ne i32 %335, 1
  br i1 %cmp669, label %land.lhs.true.671, label %if.end.712

land.lhs.true.671:                                ; preds = %land.lhs.true.668
  %L672 = bitcast %union.U* %u to [2 x i32]*
  %arrayidx673 = getelementptr [2 x i32], [2 x i32]* %L672, i32 0, i64 0
  %336 = load i32, i32* %arrayidx673, align 4
  %and674 = and i32 %336, 1
  %tobool675 = icmp ne i32 %and674, 0
  br i1 %tobool675, label %if.end.712, label %if.then.676

if.then.676:                                      ; preds = %land.lhs.true.671, %if.end.662
  %337 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x677 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %337, i32 0, i32 5
  %arrayidx678 = getelementptr [1 x i32], [1 x i32]* %x677, i32 0, i64 0
  %338 = load i32, i32* %arrayidx678, align 4
  %tobool679 = icmp ne i32 %338, 0
  br i1 %tobool679, label %if.end.685, label %land.lhs.true.680

land.lhs.true.680:                                ; preds = %if.then.676
  %339 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %wds681 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %339, i32 0, i32 4
  %340 = load i32, i32* %wds681, align 4
  %cmp682 = icmp sle i32 %340, 1
  br i1 %cmp682, label %if.then.684, label %if.end.685

if.then.684:                                      ; preds = %land.lhs.true.680
  br label %accept_dig

if.end.685:                                       ; preds = %land.lhs.true.680, %if.then.676
  %341 = load i32, i32* %j1, align 4
  %cmp686 = icmp sgt i32 %341, 0
  br i1 %cmp686, label %if.then.688, label %if.end.709

if.then.688:                                      ; preds = %if.end.685
  %342 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %call689 = call %struct.Bigint* @lshift(%struct.Bigint* %342, i32 1)
  store %struct.Bigint* %call689, %struct.Bigint** %b, align 8
  %343 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp690 = icmp eq %struct.Bigint* %343, null
  br i1 %cmp690, label %if.then.692, label %if.end.693

if.then.692:                                      ; preds = %if.then.688
  br label %failed_malloc

if.end.693:                                       ; preds = %if.then.688
  %344 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %345 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %call694 = call i32 @cmp(%struct.Bigint* %344, %struct.Bigint* %345)
  store i32 %call694, i32* %j1, align 4
  %346 = load i32, i32* %j1, align 4
  %cmp695 = icmp sgt i32 %346, 0
  br i1 %cmp695, label %land.lhs.true.703, label %lor.lhs.false.697

lor.lhs.false.697:                                ; preds = %if.end.693
  %347 = load i32, i32* %j1, align 4
  %cmp698 = icmp eq i32 %347, 0
  br i1 %cmp698, label %land.lhs.true.700, label %if.end.708

land.lhs.true.700:                                ; preds = %lor.lhs.false.697
  %348 = load i32, i32* %dig, align 4
  %and701 = and i32 %348, 1
  %tobool702 = icmp ne i32 %and701, 0
  br i1 %tobool702, label %land.lhs.true.703, label %if.end.708

land.lhs.true.703:                                ; preds = %land.lhs.true.700, %if.end.693
  %349 = load i32, i32* %dig, align 4
  %inc704 = add i32 %349, 1
  store i32 %inc704, i32* %dig, align 4
  %cmp705 = icmp eq i32 %349, 57
  br i1 %cmp705, label %if.then.707, label %if.end.708

if.then.707:                                      ; preds = %land.lhs.true.703
  br label %round_9_up

if.end.708:                                       ; preds = %land.lhs.true.703, %land.lhs.true.700, %lor.lhs.false.697
  br label %if.end.709

if.end.709:                                       ; preds = %if.end.708, %if.end.685
  br label %accept_dig

accept_dig:                                       ; preds = %if.end.709, %if.then.684
  %350 = load i32, i32* %dig, align 4
  %conv710 = trunc i32 %350 to i8
  %351 = load i8*, i8** %s, align 8
  %incdec.ptr711 = getelementptr i8, i8* %351, i32 1
  store i8* %incdec.ptr711, i8** %s, align 8
  store i8 %conv710, i8* %351, align 1
  br label %ret

if.end.712:                                       ; preds = %land.lhs.true.671, %land.lhs.true.668, %lor.lhs.false.665
  %352 = load i32, i32* %j1, align 4
  %cmp713 = icmp sgt i32 %352, 0
  br i1 %cmp713, label %if.then.715, label %if.end.724

if.then.715:                                      ; preds = %if.end.712
  %353 = load i32, i32* %dig, align 4
  %cmp716 = icmp eq i32 %353, 57
  br i1 %cmp716, label %if.then.718, label %if.end.720

if.then.718:                                      ; preds = %if.then.715
  br label %round_9_up

round_9_up:                                       ; preds = %if.then.718, %if.then.707, %if.then.653
  %354 = load i8*, i8** %s, align 8
  %incdec.ptr719 = getelementptr i8, i8* %354, i32 1
  store i8* %incdec.ptr719, i8** %s, align 8
  store i8 57, i8* %354, align 1
  br label %roundoff

if.end.720:                                       ; preds = %if.then.715
  %355 = load i32, i32* %dig, align 4
  %add721 = add i32 %355, 1
  %conv722 = trunc i32 %add721 to i8
  %356 = load i8*, i8** %s, align 8
  %incdec.ptr723 = getelementptr i8, i8* %356, i32 1
  store i8* %incdec.ptr723, i8** %s, align 8
  store i8 %conv722, i8* %356, align 1
  br label %ret

if.end.724:                                       ; preds = %if.end.712
  %357 = load i32, i32* %dig, align 4
  %conv725 = trunc i32 %357 to i8
  %358 = load i8*, i8** %s, align 8
  %incdec.ptr726 = getelementptr i8, i8* %358, i32 1
  store i8* %incdec.ptr726, i8** %s, align 8
  store i8 %conv725, i8* %358, align 1
  %359 = load i32, i32* %i, align 4
  %360 = load i32, i32* %ilim, align 4
  %cmp727 = icmp eq i32 %359, %360
  br i1 %cmp727, label %if.then.729, label %if.end.730

if.then.729:                                      ; preds = %if.end.724
  br label %for.end.758

if.end.730:                                       ; preds = %if.end.724
  %361 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %call731 = call %struct.Bigint* @multadd(%struct.Bigint* %361, i32 10, i32 0)
  store %struct.Bigint* %call731, %struct.Bigint** %b, align 8
  %362 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp732 = icmp eq %struct.Bigint* %362, null
  br i1 %cmp732, label %if.then.734, label %if.end.735

if.then.734:                                      ; preds = %if.end.730
  br label %failed_malloc

if.end.735:                                       ; preds = %if.end.730
  %363 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %364 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp736 = icmp eq %struct.Bigint* %363, %364
  br i1 %cmp736, label %if.then.738, label %if.else.744

if.then.738:                                      ; preds = %if.end.735
  %365 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %call739 = call %struct.Bigint* @multadd(%struct.Bigint* %365, i32 10, i32 0)
  store %struct.Bigint* %call739, %struct.Bigint** %mhi, align 8
  store %struct.Bigint* %call739, %struct.Bigint** %mlo, align 8
  %366 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %cmp740 = icmp eq %struct.Bigint* %366, null
  br i1 %cmp740, label %if.then.742, label %if.end.743

if.then.742:                                      ; preds = %if.then.738
  br label %failed_malloc

if.end.743:                                       ; preds = %if.then.738
  br label %if.end.755

if.else.744:                                      ; preds = %if.end.735
  %367 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %call745 = call %struct.Bigint* @multadd(%struct.Bigint* %367, i32 10, i32 0)
  store %struct.Bigint* %call745, %struct.Bigint** %mlo, align 8
  %368 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %cmp746 = icmp eq %struct.Bigint* %368, null
  br i1 %cmp746, label %if.then.748, label %if.end.749

if.then.748:                                      ; preds = %if.else.744
  br label %failed_malloc

if.end.749:                                       ; preds = %if.else.744
  %369 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %call750 = call %struct.Bigint* @multadd(%struct.Bigint* %369, i32 10, i32 0)
  store %struct.Bigint* %call750, %struct.Bigint** %mhi, align 8
  %370 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp751 = icmp eq %struct.Bigint* %370, null
  br i1 %cmp751, label %if.then.753, label %if.end.754

if.then.753:                                      ; preds = %if.end.749
  br label %failed_malloc

if.end.754:                                       ; preds = %if.end.749
  br label %if.end.755

if.end.755:                                       ; preds = %if.end.754, %if.end.743
  br label %for.inc.756

for.inc.756:                                      ; preds = %if.end.755
  %371 = load i32, i32* %i, align 4
  %inc757 = add i32 %371, 1
  store i32 %inc757, i32* %i, align 4
  br label %for.cond.624

for.end.758:                                      ; preds = %if.then.729
  br label %if.end.786

if.else.759:                                      ; preds = %if.end.593
  store i32 1, i32* %i, align 4
  br label %for.cond.760

for.cond.760:                                     ; preds = %for.inc.783, %if.else.759
  %372 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %373 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %call761 = call i32 @quorem(%struct.Bigint* %372, %struct.Bigint* %373)
  %add762 = add i32 %call761, 48
  store i32 %add762, i32* %dig, align 4
  %conv763 = trunc i32 %add762 to i8
  %374 = load i8*, i8** %s, align 8
  %incdec.ptr764 = getelementptr i8, i8* %374, i32 1
  store i8* %incdec.ptr764, i8** %s, align 8
  store i8 %conv763, i8* %374, align 1
  %375 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x765 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %375, i32 0, i32 5
  %arrayidx766 = getelementptr [1 x i32], [1 x i32]* %x765, i32 0, i64 0
  %376 = load i32, i32* %arrayidx766, align 4
  %tobool767 = icmp ne i32 %376, 0
  br i1 %tobool767, label %if.end.773, label %land.lhs.true.768

land.lhs.true.768:                                ; preds = %for.cond.760
  %377 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %wds769 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %377, i32 0, i32 4
  %378 = load i32, i32* %wds769, align 4
  %cmp770 = icmp sle i32 %378, 1
  br i1 %cmp770, label %if.then.772, label %if.end.773

if.then.772:                                      ; preds = %land.lhs.true.768
  br label %ret

if.end.773:                                       ; preds = %land.lhs.true.768, %for.cond.760
  %379 = load i32, i32* %i, align 4
  %380 = load i32, i32* %ilim, align 4
  %cmp774 = icmp sge i32 %379, %380
  br i1 %cmp774, label %if.then.776, label %if.end.777

if.then.776:                                      ; preds = %if.end.773
  br label %for.end.785

if.end.777:                                       ; preds = %if.end.773
  %381 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %call778 = call %struct.Bigint* @multadd(%struct.Bigint* %381, i32 10, i32 0)
  store %struct.Bigint* %call778, %struct.Bigint** %b, align 8
  %382 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp779 = icmp eq %struct.Bigint* %382, null
  br i1 %cmp779, label %if.then.781, label %if.end.782

if.then.781:                                      ; preds = %if.end.777
  br label %failed_malloc

if.end.782:                                       ; preds = %if.end.777
  br label %for.inc.783

for.inc.783:                                      ; preds = %if.end.782
  %383 = load i32, i32* %i, align 4
  %inc784 = add i32 %383, 1
  store i32 %inc784, i32* %i, align 4
  br label %for.cond.760

for.end.785:                                      ; preds = %if.then.776
  br label %if.end.786

if.end.786:                                       ; preds = %for.end.785, %for.end.758
  %384 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %call787 = call %struct.Bigint* @lshift(%struct.Bigint* %384, i32 1)
  store %struct.Bigint* %call787, %struct.Bigint** %b, align 8
  %385 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp788 = icmp eq %struct.Bigint* %385, null
  br i1 %cmp788, label %if.then.790, label %if.end.791

if.then.790:                                      ; preds = %if.end.786
  br label %failed_malloc

if.end.791:                                       ; preds = %if.end.786
  %386 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %387 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %call792 = call i32 @cmp(%struct.Bigint* %386, %struct.Bigint* %387)
  store i32 %call792, i32* %j, align 4
  %388 = load i32, i32* %j, align 4
  %cmp793 = icmp sgt i32 %388, 0
  br i1 %cmp793, label %if.then.801, label %lor.lhs.false.795

lor.lhs.false.795:                                ; preds = %if.end.791
  %389 = load i32, i32* %j, align 4
  %cmp796 = icmp eq i32 %389, 0
  br i1 %cmp796, label %land.lhs.true.798, label %if.else.817

land.lhs.true.798:                                ; preds = %lor.lhs.false.795
  %390 = load i32, i32* %dig, align 4
  %and799 = and i32 %390, 1
  %tobool800 = icmp ne i32 %and799, 0
  br i1 %tobool800, label %if.then.801, label %if.else.817

if.then.801:                                      ; preds = %land.lhs.true.798, %if.end.791
  br label %roundoff

roundoff:                                         ; preds = %if.then.801, %round_9_up
  br label %while.cond.802

while.cond.802:                                   ; preds = %if.end.813, %roundoff
  %391 = load i8*, i8** %s, align 8
  %incdec.ptr803 = getelementptr i8, i8* %391, i32 -1
  store i8* %incdec.ptr803, i8** %s, align 8
  %392 = load i8, i8* %incdec.ptr803, align 1
  %conv804 = sext i8 %392 to i32
  %cmp805 = icmp eq i32 %conv804, 57
  br i1 %cmp805, label %while.body.807, label %while.end.814

while.body.807:                                   ; preds = %while.cond.802
  %393 = load i8*, i8** %s, align 8
  %394 = load i8*, i8** %s0, align 8
  %cmp808 = icmp eq i8* %393, %394
  br i1 %cmp808, label %if.then.810, label %if.end.813

if.then.810:                                      ; preds = %while.body.807
  %395 = load i32, i32* %k, align 4
  %inc811 = add i32 %395, 1
  store i32 %inc811, i32* %k, align 4
  %396 = load i8*, i8** %s, align 8
  %incdec.ptr812 = getelementptr i8, i8* %396, i32 1
  store i8* %incdec.ptr812, i8** %s, align 8
  store i8 49, i8* %396, align 1
  br label %ret

if.end.813:                                       ; preds = %while.body.807
  br label %while.cond.802

while.end.814:                                    ; preds = %while.cond.802
  %397 = load i8*, i8** %s, align 8
  %incdec.ptr815 = getelementptr i8, i8* %397, i32 1
  store i8* %incdec.ptr815, i8** %s, align 8
  %398 = load i8, i8* %397, align 1
  %inc816 = add i8 %398, 1
  store i8 %inc816, i8* %397, align 1
  br label %if.end.826

if.else.817:                                      ; preds = %land.lhs.true.798, %lor.lhs.false.795
  br label %while.cond.818

while.cond.818:                                   ; preds = %while.body.823, %if.else.817
  %399 = load i8*, i8** %s, align 8
  %incdec.ptr819 = getelementptr i8, i8* %399, i32 -1
  store i8* %incdec.ptr819, i8** %s, align 8
  %400 = load i8, i8* %incdec.ptr819, align 1
  %conv820 = sext i8 %400 to i32
  %cmp821 = icmp eq i32 %conv820, 48
  br i1 %cmp821, label %while.body.823, label %while.end.824

while.body.823:                                   ; preds = %while.cond.818
  br label %while.cond.818

while.end.824:                                    ; preds = %while.cond.818
  %401 = load i8*, i8** %s, align 8
  %incdec.ptr825 = getelementptr i8, i8* %401, i32 1
  store i8* %incdec.ptr825, i8** %s, align 8
  br label %if.end.826

if.end.826:                                       ; preds = %while.end.824, %while.end.814
  br label %ret

ret:                                              ; preds = %if.end.826, %if.then.810, %if.then.772, %if.end.720, %accept_dig, %if.end.659, %one_digit, %no_digits
  %402 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  call void @Bfree(%struct.Bigint* %402)
  %403 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %tobool827 = icmp ne %struct.Bigint* %403, null
  br i1 %tobool827, label %if.then.828, label %if.end.835

if.then.828:                                      ; preds = %ret
  %404 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %tobool829 = icmp ne %struct.Bigint* %404, null
  br i1 %tobool829, label %land.lhs.true.830, label %if.end.834

land.lhs.true.830:                                ; preds = %if.then.828
  %405 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %406 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp831 = icmp ne %struct.Bigint* %405, %406
  br i1 %cmp831, label %if.then.833, label %if.end.834

if.then.833:                                      ; preds = %land.lhs.true.830
  %407 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  call void @Bfree(%struct.Bigint* %407)
  br label %if.end.834

if.end.834:                                       ; preds = %if.then.833, %land.lhs.true.830, %if.then.828
  %408 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  call void @Bfree(%struct.Bigint* %408)
  br label %if.end.835

if.end.835:                                       ; preds = %if.end.834, %ret
  br label %ret1

ret1:                                             ; preds = %if.end.835, %for.end.414, %while.end, %if.then.268
  %409 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  call void @Bfree(%struct.Bigint* %409)
  %410 = load i8*, i8** %s, align 8
  store i8 0, i8* %410, align 1
  %411 = load i32, i32* %k, align 4
  %add836 = add i32 %411, 1
  %412 = load i32*, i32** %decpt.addr, align 8
  store i32 %add836, i32* %412, align 4
  %413 = load i8**, i8*** %rve.addr, align 8
  %tobool837 = icmp ne i8** %413, null
  br i1 %tobool837, label %if.then.838, label %if.end.839

if.then.838:                                      ; preds = %ret1
  %414 = load i8*, i8** %s, align 8
  %415 = load i8**, i8*** %rve.addr, align 8
  store i8* %414, i8** %415, align 8
  br label %if.end.839

if.end.839:                                       ; preds = %if.then.838, %ret1
  %416 = load i8*, i8** %s0, align 8
  store i8* %416, i8** %retval
  br label %return

failed_malloc:                                    ; preds = %if.then.790, %if.then.781, %if.then.753, %if.then.748, %if.then.742, %if.then.734, %if.then.692, %if.then.631, %if.then.621, %if.then.611, %if.then.602, %if.then.583, %if.then.561, %if.then.554, %if.then.541, %if.then.532, %if.then.496, %if.then.488, %if.then.481, %if.then.474, %if.then.465, %if.then.460, %if.then.430, %if.then.136, %if.then.27
  %417 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  %tobool840 = icmp ne %struct.Bigint* %417, null
  br i1 %tobool840, label %if.then.841, label %if.end.842

if.then.841:                                      ; preds = %failed_malloc
  %418 = load %struct.Bigint*, %struct.Bigint** %S, align 8
  call void @Bfree(%struct.Bigint* %418)
  br label %if.end.842

if.end.842:                                       ; preds = %if.then.841, %failed_malloc
  %419 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %tobool843 = icmp ne %struct.Bigint* %419, null
  br i1 %tobool843, label %land.lhs.true.844, label %if.end.848

land.lhs.true.844:                                ; preds = %if.end.842
  %420 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  %421 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %cmp845 = icmp ne %struct.Bigint* %420, %421
  br i1 %cmp845, label %if.then.847, label %if.end.848

if.then.847:                                      ; preds = %land.lhs.true.844
  %422 = load %struct.Bigint*, %struct.Bigint** %mlo, align 8
  call void @Bfree(%struct.Bigint* %422)
  br label %if.end.848

if.end.848:                                       ; preds = %if.then.847, %land.lhs.true.844, %if.end.842
  %423 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  %tobool849 = icmp ne %struct.Bigint* %423, null
  br i1 %tobool849, label %if.then.850, label %if.end.851

if.then.850:                                      ; preds = %if.end.848
  %424 = load %struct.Bigint*, %struct.Bigint** %mhi, align 8
  call void @Bfree(%struct.Bigint* %424)
  br label %if.end.851

if.end.851:                                       ; preds = %if.then.850, %if.end.848
  %425 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %tobool852 = icmp ne %struct.Bigint* %425, null
  br i1 %tobool852, label %if.then.853, label %if.end.854

if.then.853:                                      ; preds = %if.end.851
  %426 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  call void @Bfree(%struct.Bigint* %426)
  br label %if.end.854

if.end.854:                                       ; preds = %if.then.853, %if.end.851
  %427 = load i8*, i8** %s0, align 8
  %tobool855 = icmp ne i8* %427, null
  br i1 %tobool855, label %if.then.856, label %if.end.857

if.then.856:                                      ; preds = %if.end.854
  %428 = load i8*, i8** %s0, align 8
  call void @_Py_dg_freedtoa(i8* %428)
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.856, %if.end.854
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.857, %if.end.839, %if.then.22, %if.end.17, %if.then.16
  %429 = load i8*, i8** %retval
  ret i8* %429
}

; Function Attrs: nounwind uwtable
define internal i8* @nrv_alloc(i8* %s, i8** %rve, i32 %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %rve.addr = alloca i8**, align 8
  %n.addr = alloca i32, align 4
  %rv = alloca i8*, align 8
  %t = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8** %rve, i8*** %rve.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i8* @rv_alloc(i32 %0)
  store i8* %call, i8** %rv, align 8
  %1 = load i8*, i8** %rv, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %rv, align 8
  store i8* %2, i8** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** %t, align 8
  store i8 %4, i8* %5, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %t, align 8
  %incdec.ptr1 = getelementptr i8, i8* %6, i32 1
  store i8* %incdec.ptr1, i8** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8**, i8*** %rve.addr, align 8
  %tobool2 = icmp ne i8** %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.end
  %8 = load i8*, i8** %t, align 8
  %9 = load i8**, i8*** %rve.addr, align 8
  store i8* %8, i8** %9, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %while.end
  %10 = load i8*, i8** %rv, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @d2b(%union.U* %d, i32* %e, i32* %bits) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %d.addr = alloca %union.U*, align 8
  %e.addr = alloca i32*, align 8
  %bits.addr = alloca i32*, align 8
  %b = alloca %struct.Bigint*, align 8
  %de = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32*, align 8
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.U* %d, %union.U** %d.addr, align 8
  store i32* %e, i32** %e.addr, align 8
  store i32* %bits, i32** %bits.addr, align 8
  %call = call %struct.Bigint* @Balloc(i32 1)
  store %struct.Bigint* %call, %struct.Bigint** %b, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %cmp = icmp eq %struct.Bigint* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %x1 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %1, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %x1, i32 0, i32 0
  store i32* %arraydecay, i32** %x, align 8
  %2 = load %union.U*, %union.U** %d.addr, align 8
  %L = bitcast %union.U* %2 to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %L, i32 0, i64 1
  %3 = load i32, i32* %arrayidx, align 4
  %and = and i32 %3, 1048575
  store i32 %and, i32* %z, align 4
  %4 = load %union.U*, %union.U** %d.addr, align 8
  %L2 = bitcast %union.U* %4 to [2 x i32]*
  %arrayidx3 = getelementptr [2 x i32], [2 x i32]* %L2, i32 0, i64 1
  %5 = load i32, i32* %arrayidx3, align 4
  %and4 = and i32 %5, 2147483647
  store i32 %and4, i32* %arrayidx3, align 4
  %6 = load %union.U*, %union.U** %d.addr, align 8
  %L5 = bitcast %union.U* %6 to [2 x i32]*
  %arrayidx6 = getelementptr [2 x i32], [2 x i32]* %L5, i32 0, i64 1
  %7 = load i32, i32* %arrayidx6, align 4
  %shr = lshr i32 %7, 20
  store i32 %shr, i32* %de, align 4
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %8 = load i32, i32* %z, align 4
  %or = or i32 %8, 1048576
  store i32 %or, i32* %z, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %9 = load %union.U*, %union.U** %d.addr, align 8
  %L9 = bitcast %union.U* %9 to [2 x i32]*
  %arrayidx10 = getelementptr [2 x i32], [2 x i32]* %L9, i32 0, i64 0
  %10 = load i32, i32* %arrayidx10, align 4
  store i32 %10, i32* %y, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.23

if.then.12:                                       ; preds = %if.end.8
  %call13 = call i32 @lo0bits(i32* %y)
  store i32 %call13, i32* %k, align 4
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %z, align 4
  %13 = load i32, i32* %k, align 4
  %sub = sub i32 32, %13
  %shl = shl i32 %12, %sub
  %or16 = or i32 %11, %shl
  %14 = load i32*, i32** %x, align 8
  %arrayidx17 = getelementptr i32, i32* %14, i64 0
  store i32 %or16, i32* %arrayidx17, align 4
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %z, align 4
  %shr18 = lshr i32 %16, %15
  store i32 %shr18, i32* %z, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.then.12
  %17 = load i32, i32* %y, align 4
  %18 = load i32*, i32** %x, align 8
  %arrayidx19 = getelementptr i32, i32* %18, i64 0
  store i32 %17, i32* %arrayidx19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.15
  %19 = load i32, i32* %z, align 4
  %20 = load i32*, i32** %x, align 8
  %arrayidx21 = getelementptr i32, i32* %20, i64 1
  store i32 %19, i32* %arrayidx21, align 4
  %tobool22 = icmp ne i32 %19, 0
  %cond = select i1 %tobool22, i32 2, i32 1
  %21 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %21, i32 0, i32 4
  store i32 %cond, i32* %wds, align 4
  store i32 %cond, i32* %i, align 4
  br label %if.end.27

if.else.23:                                       ; preds = %if.end.8
  %call24 = call i32 @lo0bits(i32* %z)
  store i32 %call24, i32* %k, align 4
  %22 = load i32, i32* %z, align 4
  %23 = load i32*, i32** %x, align 8
  %arrayidx25 = getelementptr i32, i32* %23, i64 0
  store i32 %22, i32* %arrayidx25, align 4
  %24 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  %wds26 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %24, i32 0, i32 4
  store i32 1, i32* %wds26, align 4
  store i32 1, i32* %i, align 4
  %25 = load i32, i32* %k, align 4
  %add = add i32 %25, 32
  store i32 %add, i32* %k, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.end.20
  %26 = load i32, i32* %de, align 4
  %tobool28 = icmp ne i32 %26, 0
  br i1 %tobool28, label %if.then.29, label %if.else.34

if.then.29:                                       ; preds = %if.end.27
  %27 = load i32, i32* %de, align 4
  %sub30 = sub i32 %27, 1023
  %sub31 = sub i32 %sub30, 52
  %28 = load i32, i32* %k, align 4
  %add32 = add i32 %sub31, %28
  %29 = load i32*, i32** %e.addr, align 8
  store i32 %add32, i32* %29, align 4
  %30 = load i32, i32* %k, align 4
  %sub33 = sub i32 53, %30
  %31 = load i32*, i32** %bits.addr, align 8
  store i32 %sub33, i32* %31, align 4
  br label %if.end.43

if.else.34:                                       ; preds = %if.end.27
  %32 = load i32, i32* %de, align 4
  %sub35 = sub i32 %32, 1023
  %sub36 = sub i32 %sub35, 52
  %add37 = add i32 %sub36, 1
  %33 = load i32, i32* %k, align 4
  %add38 = add i32 %add37, %33
  %34 = load i32*, i32** %e.addr, align 8
  store i32 %add38, i32* %34, align 4
  %35 = load i32, i32* %i, align 4
  %mul = mul i32 32, %35
  %36 = load i32, i32* %i, align 4
  %sub39 = sub i32 %36, 1
  %idxprom = sext i32 %sub39 to i64
  %37 = load i32*, i32** %x, align 8
  %arrayidx40 = getelementptr i32, i32* %37, i64 %idxprom
  %38 = load i32, i32* %arrayidx40, align 4
  %call41 = call i32 @hi0bits(i32 %38)
  %sub42 = sub i32 %mul, %call41
  %39 = load i32*, i32** %bits.addr, align 8
  store i32 %sub42, i32* %39, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.34, %if.then.29
  %40 = load %struct.Bigint*, %struct.Bigint** %b, align 8
  store %struct.Bigint* %40, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then
  %41 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %41
}

; Function Attrs: nounwind uwtable
define internal i8* @rv_alloc(i32 %i) #0 {
entry:
  %retval = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 4, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %conv = sext i32 %0 to i64
  %add = add i64 24, %conv
  %1 = load i32, i32* %i.addr, align 4
  %conv1 = zext i32 %1 to i64
  %cmp = icmp ule i64 %add, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %j, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %call = call %struct.Bigint* @Balloc(i32 %4)
  %5 = bitcast %struct.Bigint* %call to i32*
  store i32* %5, i32** %r, align 8
  %6 = load i32*, i32** %r, align 8
  %cmp3 = icmp eq i32* %6, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %7 = load i32, i32* %k, align 4
  %8 = load i32*, i32** %r, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32*, i32** %r, align 8
  %add.ptr = getelementptr i32, i32* %9, i64 1
  %10 = bitcast i32* %add.ptr to i8*
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @dshift(%struct.Bigint* %b, i32 %p2) #0 {
entry:
  %b.addr = alloca %struct.Bigint*, align 8
  %p2.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  store %struct.Bigint* %b, %struct.Bigint** %b.addr, align 8
  store i32 %p2, i32* %p2.addr, align 4
  %0 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %0, i32 0, i32 4
  %1 = load i32, i32* %wds, align 4
  %sub = sub i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %2 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x = getelementptr inbounds %struct.Bigint, %struct.Bigint* %2, i32 0, i32 5
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %x, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 @hi0bits(i32 %3)
  %sub1 = sub i32 %call, 4
  store i32 %sub1, i32* %rv, align 4
  %4 = load i32, i32* %p2.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %p2.addr, align 4
  %6 = load i32, i32* %rv, align 4
  %sub2 = sub i32 %6, %5
  store i32 %sub2, i32* %rv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %rv, align 4
  %and = and i32 %7, 31
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal %struct.Bigint* @multadd(%struct.Bigint* %b, i32 %m, i32 %a) #0 {
entry:
  %retval = alloca %struct.Bigint*, align 8
  %b.addr = alloca %struct.Bigint*, align 8
  %m.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %wds = alloca i32, align 4
  %x = alloca i32*, align 8
  %carry = alloca i64, align 8
  %y = alloca i64, align 8
  %b1 = alloca %struct.Bigint*, align 8
  store %struct.Bigint* %b, %struct.Bigint** %b.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds1 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %0, i32 0, i32 4
  %1 = load i32, i32* %wds1, align 4
  store i32 %1, i32* %wds, align 4
  %2 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x2 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %2, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %x2, i32 0, i32 0
  store i32* %arraydecay, i32** %x, align 8
  store i32 0, i32* %i, align 4
  %3 = load i32, i32* %a.addr, align 4
  %conv = sext i32 %3 to i64
  store i64 %conv, i64* %carry, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load i32*, i32** %x, align 8
  %5 = load i32, i32* %4, align 4
  %conv3 = zext i32 %5 to i64
  %6 = load i32, i32* %m.addr, align 4
  %conv4 = sext i32 %6 to i64
  %mul = mul i64 %conv3, %conv4
  %7 = load i64, i64* %carry, align 8
  %add = add i64 %mul, %7
  store i64 %add, i64* %y, align 8
  %8 = load i64, i64* %y, align 8
  %shr = lshr i64 %8, 32
  store i64 %shr, i64* %carry, align 8
  %9 = load i64, i64* %y, align 8
  %and = and i64 %9, 4294967295
  %conv5 = trunc i64 %and to i32
  %10 = load i32*, i32** %x, align 8
  %incdec.ptr = getelementptr i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %x, align 8
  store i32 %conv5, i32* %10, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %12 = load i32, i32* %wds, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i64, i64* %carry, align 8
  %tobool = icmp ne i64 %13, 0
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %do.end
  %14 = load i32, i32* %wds, align 4
  %15 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %maxwds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %15, i32 0, i32 2
  %16 = load i32, i32* %maxwds, align 4
  %cmp7 = icmp sge i32 %14, %16
  br i1 %cmp7, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %if.then
  %17 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %k = getelementptr inbounds %struct.Bigint, %struct.Bigint* %17, i32 0, i32 1
  %18 = load i32, i32* %k, align 4
  %add10 = add i32 %18, 1
  %call = call %struct.Bigint* @Balloc(i32 %add10)
  store %struct.Bigint* %call, %struct.Bigint** %b1, align 8
  %19 = load %struct.Bigint*, %struct.Bigint** %b1, align 8
  %cmp11 = icmp eq %struct.Bigint* %19, null
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.9
  %20 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  call void @Bfree(%struct.Bigint* %20)
  store %struct.Bigint* null, %struct.Bigint** %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  %21 = load %struct.Bigint*, %struct.Bigint** %b1, align 8
  %sign = getelementptr inbounds %struct.Bigint, %struct.Bigint* %21, i32 0, i32 3
  %22 = bitcast i32* %sign to i8*
  %23 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %sign14 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %23, i32 0, i32 3
  %24 = bitcast i32* %sign14 to i8*
  %25 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds15 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %25, i32 0, i32 4
  %26 = load i32, i32* %wds15, align 4
  %conv16 = sext i32 %26 to i64
  %mul17 = mul i64 %conv16, 4
  %add18 = add i64 %mul17, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %24, i64 %add18, i32 1, i1 false)
  %27 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  call void @Bfree(%struct.Bigint* %27)
  %28 = load %struct.Bigint*, %struct.Bigint** %b1, align 8
  store %struct.Bigint* %28, %struct.Bigint** %b.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %29 = load i64, i64* %carry, align 8
  %conv20 = trunc i64 %29 to i32
  %30 = load i32, i32* %wds, align 4
  %inc21 = add i32 %30, 1
  store i32 %inc21, i32* %wds, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x22 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %31, i32 0, i32 5
  %arrayidx = getelementptr [1 x i32], [1 x i32]* %x22, i32 0, i64 %idxprom
  store i32 %conv20, i32* %arrayidx, align 4
  %32 = load i32, i32* %wds, align 4
  %33 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds23 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %33, i32 0, i32 4
  store i32 %32, i32* %wds23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.19, %do.end
  %34 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  store %struct.Bigint* %34, %struct.Bigint** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.13
  %35 = load %struct.Bigint*, %struct.Bigint** %retval
  ret %struct.Bigint* %35
}

; Function Attrs: nounwind uwtable
define internal i32 @quorem(%struct.Bigint* %b, %struct.Bigint* %S) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca %struct.Bigint*, align 8
  %S.addr = alloca %struct.Bigint*, align 8
  %n = alloca i32, align 4
  %bx = alloca i32*, align 8
  %bxe = alloca i32*, align 8
  %q = alloca i32, align 4
  %sx = alloca i32*, align 8
  %sxe = alloca i32*, align 8
  %borrow = alloca i64, align 8
  %carry = alloca i64, align 8
  %y = alloca i64, align 8
  %ys = alloca i64, align 8
  store %struct.Bigint* %b, %struct.Bigint** %b.addr, align 8
  store %struct.Bigint* %S, %struct.Bigint** %S.addr, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %S.addr, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %0, i32 0, i32 4
  %1 = load i32, i32* %wds, align 4
  store i32 %1, i32* %n, align 4
  %2 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds1 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %2, i32 0, i32 4
  %3 = load i32, i32* %wds1, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.Bigint*, %struct.Bigint** %S.addr, align 8
  %x = getelementptr inbounds %struct.Bigint, %struct.Bigint* %5, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %x, i32 0, i32 0
  store i32* %arraydecay, i32** %sx, align 8
  %6 = load i32*, i32** %sx, align 8
  %7 = load i32, i32* %n, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* %n, align 4
  %idx.ext = sext i32 %dec to i64
  %add.ptr = getelementptr i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %sxe, align 8
  %8 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x2 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %8, i32 0, i32 5
  %arraydecay3 = getelementptr inbounds [1 x i32], [1 x i32]* %x2, i32 0, i32 0
  store i32* %arraydecay3, i32** %bx, align 8
  %9 = load i32*, i32** %bx, align 8
  %10 = load i32, i32* %n, align 4
  %idx.ext4 = sext i32 %10 to i64
  %add.ptr5 = getelementptr i32, i32* %9, i64 %idx.ext4
  store i32* %add.ptr5, i32** %bxe, align 8
  %11 = load i32*, i32** %bxe, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %sxe, align 8
  %14 = load i32, i32* %13, align 4
  %add = add i32 %14, 1
  %div = udiv i32 %12, %add
  store i32 %div, i32* %q, align 4
  %15 = load i32, i32* %q, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.6, label %if.end.29

if.then.6:                                        ; preds = %if.end
  store i64 0, i64* %borrow, align 8
  store i64 0, i64* %carry, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.6
  %16 = load i32*, i32** %sx, align 8
  %incdec.ptr = getelementptr i32, i32* %16, i32 1
  store i32* %incdec.ptr, i32** %sx, align 8
  %17 = load i32, i32* %16, align 4
  %conv = zext i32 %17 to i64
  %18 = load i32, i32* %q, align 4
  %conv7 = zext i32 %18 to i64
  %mul = mul i64 %conv, %conv7
  %19 = load i64, i64* %carry, align 8
  %add8 = add i64 %mul, %19
  store i64 %add8, i64* %ys, align 8
  %20 = load i64, i64* %ys, align 8
  %shr = lshr i64 %20, 32
  store i64 %shr, i64* %carry, align 8
  %21 = load i32*, i32** %bx, align 8
  %22 = load i32, i32* %21, align 4
  %conv9 = zext i32 %22 to i64
  %23 = load i64, i64* %ys, align 8
  %and = and i64 %23, 4294967295
  %sub = sub i64 %conv9, %and
  %24 = load i64, i64* %borrow, align 8
  %sub10 = sub i64 %sub, %24
  store i64 %sub10, i64* %y, align 8
  %25 = load i64, i64* %y, align 8
  %shr11 = lshr i64 %25, 32
  %and12 = and i64 %shr11, 1
  store i64 %and12, i64* %borrow, align 8
  %26 = load i64, i64* %y, align 8
  %and13 = and i64 %26, 4294967295
  %conv14 = trunc i64 %and13 to i32
  %27 = load i32*, i32** %bx, align 8
  %incdec.ptr15 = getelementptr i32, i32* %27, i32 1
  store i32* %incdec.ptr15, i32** %bx, align 8
  store i32 %conv14, i32* %27, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i32*, i32** %sx, align 8
  %29 = load i32*, i32** %sxe, align 8
  %cmp16 = icmp ule i32* %28, %29
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %30 = load i32*, i32** %bxe, align 8
  %31 = load i32, i32* %30, align 4
  %tobool18 = icmp ne i32 %31, 0
  br i1 %tobool18, label %if.end.28, label %if.then.19

if.then.19:                                       ; preds = %do.end
  %32 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x20 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %32, i32 0, i32 5
  %arraydecay21 = getelementptr inbounds [1 x i32], [1 x i32]* %x20, i32 0, i32 0
  store i32* %arraydecay21, i32** %bx, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.19
  %33 = load i32*, i32** %bxe, align 8
  %incdec.ptr22 = getelementptr i32, i32* %33, i32 -1
  store i32* %incdec.ptr22, i32** %bxe, align 8
  %34 = load i32*, i32** %bx, align 8
  %cmp23 = icmp ugt i32* %incdec.ptr22, %34
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %35 = load i32*, i32** %bxe, align 8
  %36 = load i32, i32* %35, align 4
  %tobool25 = icmp ne i32 %36, 0
  %lnot = xor i1 %tobool25, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %37 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %37, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %38 = load i32, i32* %n, align 4
  %dec26 = add i32 %38, -1
  store i32 %dec26, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %39 = load i32, i32* %n, align 4
  %40 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds27 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %40, i32 0, i32 4
  store i32 %39, i32* %wds27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %while.end, %do.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  %41 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %42 = load %struct.Bigint*, %struct.Bigint** %S.addr, align 8
  %call = call i32 @cmp(%struct.Bigint* %41, %struct.Bigint* %42)
  %cmp30 = icmp sge i32 %call, 0
  br i1 %cmp30, label %if.then.32, label %if.end.74

if.then.32:                                       ; preds = %if.end.29
  %43 = load i32, i32* %q, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %q, align 4
  store i64 0, i64* %borrow, align 8
  store i64 0, i64* %carry, align 8
  %44 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x33 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %44, i32 0, i32 5
  %arraydecay34 = getelementptr inbounds [1 x i32], [1 x i32]* %x33, i32 0, i32 0
  store i32* %arraydecay34, i32** %bx, align 8
  %45 = load %struct.Bigint*, %struct.Bigint** %S.addr, align 8
  %x35 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %45, i32 0, i32 5
  %arraydecay36 = getelementptr inbounds [1 x i32], [1 x i32]* %x35, i32 0, i32 0
  store i32* %arraydecay36, i32** %sx, align 8
  br label %do.body.37

do.body.37:                                       ; preds = %do.cond.51, %if.then.32
  %46 = load i32*, i32** %sx, align 8
  %incdec.ptr38 = getelementptr i32, i32* %46, i32 1
  store i32* %incdec.ptr38, i32** %sx, align 8
  %47 = load i32, i32* %46, align 4
  %conv39 = zext i32 %47 to i64
  %48 = load i64, i64* %carry, align 8
  %add40 = add i64 %conv39, %48
  store i64 %add40, i64* %ys, align 8
  %49 = load i64, i64* %ys, align 8
  %shr41 = lshr i64 %49, 32
  store i64 %shr41, i64* %carry, align 8
  %50 = load i32*, i32** %bx, align 8
  %51 = load i32, i32* %50, align 4
  %conv42 = zext i32 %51 to i64
  %52 = load i64, i64* %ys, align 8
  %and43 = and i64 %52, 4294967295
  %sub44 = sub i64 %conv42, %and43
  %53 = load i64, i64* %borrow, align 8
  %sub45 = sub i64 %sub44, %53
  store i64 %sub45, i64* %y, align 8
  %54 = load i64, i64* %y, align 8
  %shr46 = lshr i64 %54, 32
  %and47 = and i64 %shr46, 1
  store i64 %and47, i64* %borrow, align 8
  %55 = load i64, i64* %y, align 8
  %and48 = and i64 %55, 4294967295
  %conv49 = trunc i64 %and48 to i32
  %56 = load i32*, i32** %bx, align 8
  %incdec.ptr50 = getelementptr i32, i32* %56, i32 1
  store i32* %incdec.ptr50, i32** %bx, align 8
  store i32 %conv49, i32* %56, align 4
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.body.37
  %57 = load i32*, i32** %sx, align 8
  %58 = load i32*, i32** %sxe, align 8
  %cmp52 = icmp ule i32* %57, %58
  br i1 %cmp52, label %do.body.37, label %do.end.54

do.end.54:                                        ; preds = %do.cond.51
  %59 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %x55 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %59, i32 0, i32 5
  %arraydecay56 = getelementptr inbounds [1 x i32], [1 x i32]* %x55, i32 0, i32 0
  store i32* %arraydecay56, i32** %bx, align 8
  %60 = load i32*, i32** %bx, align 8
  %61 = load i32, i32* %n, align 4
  %idx.ext57 = sext i32 %61 to i64
  %add.ptr58 = getelementptr i32, i32* %60, i64 %idx.ext57
  store i32* %add.ptr58, i32** %bxe, align 8
  %62 = load i32*, i32** %bxe, align 8
  %63 = load i32, i32* %62, align 4
  %tobool59 = icmp ne i32 %63, 0
  br i1 %tobool59, label %if.end.73, label %if.then.60

if.then.60:                                       ; preds = %do.end.54
  br label %while.cond.61

while.cond.61:                                    ; preds = %while.body.69, %if.then.60
  %64 = load i32*, i32** %bxe, align 8
  %incdec.ptr62 = getelementptr i32, i32* %64, i32 -1
  store i32* %incdec.ptr62, i32** %bxe, align 8
  %65 = load i32*, i32** %bx, align 8
  %cmp63 = icmp ugt i32* %incdec.ptr62, %65
  br i1 %cmp63, label %land.rhs.65, label %land.end.68

land.rhs.65:                                      ; preds = %while.cond.61
  %66 = load i32*, i32** %bxe, align 8
  %67 = load i32, i32* %66, align 4
  %tobool66 = icmp ne i32 %67, 0
  %lnot67 = xor i1 %tobool66, true
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.65, %while.cond.61
  %68 = phi i1 [ false, %while.cond.61 ], [ %lnot67, %land.rhs.65 ]
  br i1 %68, label %while.body.69, label %while.end.71

while.body.69:                                    ; preds = %land.end.68
  %69 = load i32, i32* %n, align 4
  %dec70 = add i32 %69, -1
  store i32 %dec70, i32* %n, align 4
  br label %while.cond.61

while.end.71:                                     ; preds = %land.end.68
  %70 = load i32, i32* %n, align 4
  %71 = load %struct.Bigint*, %struct.Bigint** %b.addr, align 8
  %wds72 = getelementptr inbounds %struct.Bigint, %struct.Bigint* %71, i32 0, i32 4
  store i32 %70, i32* %wds72, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %while.end.71, %do.end.54
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.29
  %72 = load i32, i32* %q, align 4
  store i32 %72, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare i8* @PyMem_Malloc(i64) #3

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal double @b2d(%struct.Bigint* %a, i32* %e) #0 {
entry:
  %a.addr = alloca %struct.Bigint*, align 8
  %e.addr = alloca i32*, align 8
  %xa = alloca i32*, align 8
  %xa0 = alloca i32*, align 8
  %w = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca %union.U, align 8
  store %struct.Bigint* %a, %struct.Bigint** %a.addr, align 8
  store i32* %e, i32** %e.addr, align 8
  %0 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %x = getelementptr inbounds %struct.Bigint, %struct.Bigint* %0, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %x, i32 0, i32 0
  store i32* %arraydecay, i32** %xa0, align 8
  %1 = load i32*, i32** %xa0, align 8
  %2 = load %struct.Bigint*, %struct.Bigint** %a.addr, align 8
  %wds = getelementptr inbounds %struct.Bigint, %struct.Bigint* %2, i32 0, i32 4
  %3 = load i32, i32* %wds, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr i32, i32* %1, i64 %idx.ext
  store i32* %add.ptr, i32** %xa, align 8
  %4 = load i32*, i32** %xa, align 8
  %incdec.ptr = getelementptr i32, i32* %4, i32 -1
  store i32* %incdec.ptr, i32** %xa, align 8
  %5 = load i32, i32* %incdec.ptr, align 4
  store i32 %5, i32* %y, align 4
  %6 = load i32, i32* %y, align 4
  %call = call i32 @hi0bits(i32 %6)
  store i32 %call, i32* %k, align 4
  %7 = load i32, i32* %k, align 4
  %sub = sub i32 32, %7
  %8 = load i32*, i32** %e.addr, align 8
  store i32 %sub, i32* %8, align 4
  %9 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %9, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %k, align 4
  %sub1 = sub i32 11, %11
  %shr = lshr i32 %10, %sub1
  %or = or i32 1072693248, %shr
  %L = bitcast %union.U* %d to [2 x i32]*
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %L, i32 0, i64 1
  store i32 %or, i32* %arrayidx, align 4
  %12 = load i32*, i32** %xa, align 8
  %13 = load i32*, i32** %xa0, align 8
  %cmp2 = icmp ugt i32* %12, %13
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load i32*, i32** %xa, align 8
  %incdec.ptr3 = getelementptr i32, i32* %14, i32 -1
  store i32* %incdec.ptr3, i32** %xa, align 8
  %15 = load i32, i32* %incdec.ptr3, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %w, align 4
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %k, align 4
  %add = add i32 21, %17
  %shl = shl i32 %16, %add
  %18 = load i32, i32* %w, align 4
  %19 = load i32, i32* %k, align 4
  %sub4 = sub i32 11, %19
  %shr5 = lshr i32 %18, %sub4
  %or6 = or i32 %shl, %shr5
  %L7 = bitcast %union.U* %d to [2 x i32]*
  %arrayidx8 = getelementptr [2 x i32], [2 x i32]* %L7, i32 0, i64 0
  store i32 %or6, i32* %arrayidx8, align 4
  br label %ret_d

if.end:                                           ; preds = %entry
  %20 = load i32*, i32** %xa, align 8
  %21 = load i32*, i32** %xa0, align 8
  %cmp9 = icmp ugt i32* %20, %21
  br i1 %cmp9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %if.end
  %22 = load i32*, i32** %xa, align 8
  %incdec.ptr11 = getelementptr i32, i32* %22, i32 -1
  store i32* %incdec.ptr11, i32** %xa, align 8
  %23 = load i32, i32* %incdec.ptr11, align 4
  br label %cond.end.13

cond.false.12:                                    ; preds = %if.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.10
  %cond14 = phi i32 [ %23, %cond.true.10 ], [ 0, %cond.false.12 ]
  store i32 %cond14, i32* %z, align 4
  %24 = load i32, i32* %k, align 4
  %sub15 = sub i32 %24, 11
  store i32 %sub15, i32* %k, align 4
  %tobool = icmp ne i32 %sub15, 0
  br i1 %tobool, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %cond.end.13
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %k, align 4
  %shl17 = shl i32 %25, %26
  %or18 = or i32 1072693248, %shl17
  %27 = load i32, i32* %z, align 4
  %28 = load i32, i32* %k, align 4
  %sub19 = sub i32 32, %28
  %shr20 = lshr i32 %27, %sub19
  %or21 = or i32 %or18, %shr20
  %L22 = bitcast %union.U* %d to [2 x i32]*
  %arrayidx23 = getelementptr [2 x i32], [2 x i32]* %L22, i32 0, i64 1
  store i32 %or21, i32* %arrayidx23, align 4
  %29 = load i32*, i32** %xa, align 8
  %30 = load i32*, i32** %xa0, align 8
  %cmp24 = icmp ugt i32* %29, %30
  br i1 %cmp24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %if.then.16
  %31 = load i32*, i32** %xa, align 8
  %incdec.ptr26 = getelementptr i32, i32* %31, i32 -1
  store i32* %incdec.ptr26, i32** %xa, align 8
  %32 = load i32, i32* %incdec.ptr26, align 4
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.then.16
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi i32 [ %32, %cond.true.25 ], [ 0, %cond.false.27 ]
  store i32 %cond29, i32* %y, align 4
  %33 = load i32, i32* %z, align 4
  %34 = load i32, i32* %k, align 4
  %shl30 = shl i32 %33, %34
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %k, align 4
  %sub31 = sub i32 32, %36
  %shr32 = lshr i32 %35, %sub31
  %or33 = or i32 %shl30, %shr32
  %L34 = bitcast %union.U* %d to [2 x i32]*
  %arrayidx35 = getelementptr [2 x i32], [2 x i32]* %L34, i32 0, i64 0
  store i32 %or33, i32* %arrayidx35, align 4
  br label %if.end.41

if.else:                                          ; preds = %cond.end.13
  %37 = load i32, i32* %y, align 4
  %or36 = or i32 1072693248, %37
  %L37 = bitcast %union.U* %d to [2 x i32]*
  %arrayidx38 = getelementptr [2 x i32], [2 x i32]* %L37, i32 0, i64 1
  store i32 %or36, i32* %arrayidx38, align 4
  %38 = load i32, i32* %z, align 4
  %L39 = bitcast %union.U* %d to [2 x i32]*
  %arrayidx40 = getelementptr [2 x i32], [2 x i32]* %L39, i32 0, i64 0
  store i32 %38, i32* %arrayidx40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %cond.end.28
  br label %ret_d

ret_d:                                            ; preds = %if.end.41, %cond.end
  %d42 = bitcast %union.U* %d to double*
  %39 = load double, double* %d42, align 8
  ret double %39
}

; Function Attrs: nounwind uwtable
define internal i32 @hi0bits(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 0, i32* %k, align 4
  %0 = load i32, i32* %x.addr, align 4
  %and = and i32 %0, -65536
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 16, i32* %k, align 4
  %1 = load i32, i32* %x.addr, align 4
  %shl = shl i32 %1, 16
  store i32 %shl, i32* %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %x.addr, align 4
  %and1 = and i32 %2, -16777216
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %k, align 4
  %add = add i32 %3, 8
  store i32 %add, i32* %k, align 4
  %4 = load i32, i32* %x.addr, align 4
  %shl4 = shl i32 %4, 8
  store i32 %shl4, i32* %x.addr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %5 = load i32, i32* %x.addr, align 4
  %and6 = and i32 %5, -268435456
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %6 = load i32, i32* %k, align 4
  %add9 = add i32 %6, 4
  store i32 %add9, i32* %k, align 4
  %7 = load i32, i32* %x.addr, align 4
  %shl10 = shl i32 %7, 4
  store i32 %shl10, i32* %x.addr, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  %8 = load i32, i32* %x.addr, align 4
  %and12 = and i32 %8, -1073741824
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  %9 = load i32, i32* %k, align 4
  %add15 = add i32 %9, 2
  store i32 %add15, i32* %k, align 4
  %10 = load i32, i32* %x.addr, align 4
  %shl16 = shl i32 %10, 2
  store i32 %shl16, i32* %x.addr, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.11
  %11 = load i32, i32* %x.addr, align 4
  %and18 = and i32 %11, -2147483648
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.end.25, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %12 = load i32, i32* %k, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %k, align 4
  %13 = load i32, i32* %x.addr, align 4
  %and21 = and i32 %13, 1073741824
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.20
  store i32 32, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.17
  %14 = load i32, i32* %k, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.23
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @lo0bits(i32* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %y.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32*, i32** %y.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %and = and i32 %2, 7
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %x, align 4
  %and1 = and i32 %3, 1
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %x, align 4
  %and4 = and i32 %4, 2
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %5 = load i32, i32* %x, align 4
  %shr = lshr i32 %5, 1
  %6 = load i32*, i32** %y.addr, align 8
  store i32 %shr, i32* %6, align 4
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load i32, i32* %x, align 4
  %shr8 = lshr i32 %7, 2
  %8 = load i32*, i32** %y.addr, align 8
  store i32 %shr8, i32* %8, align 4
  store i32 2, i32* %retval
  br label %return

if.end.9:                                         ; preds = %entry
  store i32 0, i32* %k, align 4
  %9 = load i32, i32* %x, align 4
  %and10 = and i32 %9, 65535
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  store i32 16, i32* %k, align 4
  %10 = load i32, i32* %x, align 4
  %shr13 = lshr i32 %10, 16
  store i32 %shr13, i32* %x, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %11 = load i32, i32* %x, align 4
  %and15 = and i32 %11, 255
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %12 = load i32, i32* %k, align 4
  %add = add i32 %12, 8
  store i32 %add, i32* %k, align 4
  %13 = load i32, i32* %x, align 4
  %shr18 = lshr i32 %13, 8
  store i32 %shr18, i32* %x, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.14
  %14 = load i32, i32* %x, align 4
  %and20 = and i32 %14, 15
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  %15 = load i32, i32* %k, align 4
  %add23 = add i32 %15, 4
  store i32 %add23, i32* %k, align 4
  %16 = load i32, i32* %x, align 4
  %shr24 = lshr i32 %16, 4
  store i32 %shr24, i32* %x, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.19
  %17 = load i32, i32* %x, align 4
  %and26 = and i32 %17, 3
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.end.31, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %18 = load i32, i32* %k, align 4
  %add29 = add i32 %18, 2
  store i32 %add29, i32* %k, align 4
  %19 = load i32, i32* %x, align 4
  %shr30 = lshr i32 %19, 2
  store i32 %shr30, i32* %x, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.25
  %20 = load i32, i32* %x, align 4
  %and32 = and i32 %20, 1
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.end.39, label %if.then.34

if.then.34:                                       ; preds = %if.end.31
  %21 = load i32, i32* %k, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %k, align 4
  %22 = load i32, i32* %x, align 4
  %shr35 = lshr i32 %22, 1
  store i32 %shr35, i32* %x, align 4
  %23 = load i32, i32* %x, align 4
  %tobool36 = icmp ne i32 %23, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.34
  store i32 32, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.31
  %24 = load i32, i32* %x, align 4
  %25 = load i32*, i32** %y.addr, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %k, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.37, %if.end.7, %if.then.6, %if.then.3
  %27 = load i32, i32* %retval
  ret i32 %27
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
