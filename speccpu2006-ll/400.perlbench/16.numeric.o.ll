; ModuleID = 'numeric.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.sv = type { i8*, i32, i32 }
%struct.xpv = type { i8*, i64, i64 }

@PL_curcop = external global %struct.cop*, align 8
@.str = private unnamed_addr constant [34 x i8] c"Integer overflow in binary number\00", align 1
@PL_dowarn = external global i8, align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Illegal binary digit '%c' ignored\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Binary number > 0b11111111111111111111111111111111 non-portable\00", align 1
@PL_hexdigit = external global i8*, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Integer overflow in hexadecimal number\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Illegal hexadecimal digit '%c' ignored\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Hexadecimal number > 0xffffffff non-portable\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Integer overflow in octal number\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Illegal octal digit '%c' ignored\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Octal number > 037777777777 non-portable\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"0 but true\00", align 1
@Perl_my_atof2.exp_acc = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4

; Function Attrs: nounwind uwtable
define i32 @Perl_cast_ulong(double %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca double, align 8
  store double %f, double* %f.addr, align 8
  %0 = load double, double* %f.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %f.addr, align 8
  %cmp1 = fcmp olt double %1, 0xC1E0000000000000
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %2 = load double, double* %f.addr, align 8
  %conv = fptosi double %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -2147483648, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load double, double* %f.addr, align 8
  %cmp2 = fcmp olt double %3, 0x41F0000000000000
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load double, double* %f.addr, align 8
  %conv5 = fptoui double %4 to i32
  store i32 %conv5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load double, double* %f.addr, align 8
  %cmp7 = fcmp ogt double %5, 0.000000e+00
  %cond9 = select i1 %cmp7, i32 -1, i32 0
  store i32 %cond9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %cond.end
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @Perl_cast_i32(double %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca double, align 8
  store double %f, double* %f.addr, align 8
  %0 = load double, double* %f.addr, align 8
  %cmp = fcmp olt double %0, 0x41E0000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %f.addr, align 8
  %cmp1 = fcmp olt double %1, 0xC1E0000000000000
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %2 = load double, double* %f.addr, align 8
  %conv = fptosi double %2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -2147483648, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load double, double* %f.addr, align 8
  %cmp2 = fcmp olt double %3, 0x41F0000000000000
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load double, double* %f.addr, align 8
  %conv5 = fptoui double %4 to i32
  store i32 %conv5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load double, double* %f.addr, align 8
  %cmp7 = fcmp ogt double %5, 0.000000e+00
  %cond9 = select i1 %cmp7, i32 -1, i32 0
  store i32 %cond9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %cond.end
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i64 @Perl_cast_iv(double %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca double, align 8
  store double %f, double* %f.addr, align 8
  %0 = load double, double* %f.addr, align 8
  %cmp = fcmp olt double %0, 0x43E0000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %f.addr, align 8
  %cmp1 = fcmp olt double %1, 0xC3E0000000000000
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %2 = load double, double* %f.addr, align 8
  %conv = fptosi double %2 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -9223372036854775808, %cond.true ], [ %conv, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load double, double* %f.addr, align 8
  %cmp2 = fcmp olt double %3, 0x43F0000000000000
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load double, double* %f.addr, align 8
  %conv5 = fptoui double %4 to i64
  store i64 %conv5, i64* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load double, double* %f.addr, align 8
  %cmp7 = fcmp ogt double %5, 0.000000e+00
  %cond9 = select i1 %cmp7, i64 -1, i64 0
  store i64 %cond9, i64* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %cond.end
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @Perl_cast_uv(double %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca double, align 8
  store double %f, double* %f.addr, align 8
  %0 = load double, double* %f.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %f.addr, align 8
  %cmp1 = fcmp olt double %1, 0xC3E0000000000000
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %2 = load double, double* %f.addr, align 8
  %conv = fptosi double %2 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -9223372036854775808, %cond.true ], [ %conv, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load double, double* %f.addr, align 8
  %cmp2 = fcmp olt double %3, 0x43F0000000000000
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %4 = load double, double* %f.addr, align 8
  %conv5 = fptoui double %4 to i64
  store i64 %conv5, i64* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load double, double* %f.addr, align 8
  %cmp7 = fcmp ogt double %5, 0.000000e+00
  %cond9 = select i1 %cmp7, i64 -1, i64 0
  store i64 %cond9, i64* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %cond.end
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define double @Perl_huge() #0 {
entry:
  ret double 0x7FF0000000000000
}

; Function Attrs: nounwind uwtable
define i64 @Perl_grok_bin(i8* %start, i64* %len_p, i32* %flags, double* %result) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i8*, align 8
  %len_p.addr = alloca i64*, align 8
  %flags.addr = alloca i32*, align 8
  %result.addr = alloca double*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %value = alloca i64, align 8
  %value_nv = alloca double, align 8
  %max_div_2 = alloca i64, align 8
  %allow_underscores = alloca i8, align 1
  %overflowed = alloca i8, align 1
  %bit = alloca i8, align 1
  store i8* %start, i8** %start.addr, align 8
  store i64* %len_p, i64** %len_p.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store double* %result, double** %result.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i64*, i64** %len_p.addr, align 8
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* %len, align 8
  store i64 0, i64* %value, align 8
  store double 0.000000e+00, double* %value_nv, align 8
  store i64 9223372036854775807, i64* %max_div_2, align 8
  %3 = load i32*, i32** %flags.addr, align 8
  %4 = load i32, i32* %3, align 4
  %and = and i32 %4, 1
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %allow_underscores, align 1
  store i8 0, i8* %overflowed, align 1
  %5 = load i32*, i32** %flags.addr, align 8
  %6 = load i32, i32* %5, align 4
  %and1 = and i32 %6, 2
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.end.22, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %len, align 8
  %cmp = icmp uge i64 %7, 1
  br i1 %cmp, label %if.then.3, label %if.end.21

if.then.3:                                        ; preds = %if.then
  %8 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 98
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.3
  %10 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %11 = load i64, i64* %len, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.3
  %12 = load i64, i64* %len, align 8
  %cmp8 = icmp uge i64 %12, 2
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8*, i8** %s, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 48
  br i1 %cmp12, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %15 = load i8*, i8** %s, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %16 to i32
  %cmp17 = icmp eq i32 %conv16, 98
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %land.lhs.true.14
  %17 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 2
  store i8* %add.ptr, i8** %s, align 8
  %18 = load i64, i64* %len, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %land.lhs.true.14, %land.lhs.true, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.7
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %19 = load i64, i64* %len, align 8
  %dec23 = add i64 %19, -1
  store i64 %dec23, i64* %len, align 8
  %tobool24 = icmp ne i64 %19, 0
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %20 = load i8*, i8** %s, align 8
  %21 = load i8, i8* %20, align 1
  %conv25 = sext i8 %21 to i32
  %tobool26 = icmp ne i32 %conv25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %22 = phi i1 [ false, %for.cond ], [ %tobool26, %land.rhs ]
  br i1 %22, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %bit, align 1
  %25 = load i8, i8* %bit, align 1
  %conv27 = sext i8 %25 to i32
  %cmp28 = icmp eq i32 %conv27, 48
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %26 = load i8, i8* %bit, align 1
  %conv30 = sext i8 %26 to i32
  %cmp31 = icmp eq i32 %conv30, 49
  br i1 %cmp31, label %if.then.33, label %if.end.66

if.then.33:                                       ; preds = %lor.lhs.false, %for.body
  br label %redo

redo:                                             ; preds = %if.then.87, %if.then.33
  %27 = load i8, i8* %overflowed, align 1
  %tobool34 = icmp ne i8 %27, 0
  br i1 %tobool34, label %if.end.62, label %if.then.35

if.then.35:                                       ; preds = %redo
  %28 = load i64, i64* %value, align 8
  %cmp36 = icmp ule i64 %28, 9223372036854775807
  br i1 %cmp36, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.then.35
  %29 = load i64, i64* %value, align 8
  %shl = shl i64 %29, 1
  %30 = load i8, i8* %bit, align 1
  %conv39 = sext i8 %30 to i32
  %sub40 = sub nsw i32 %conv39, 48
  %conv41 = sext i32 %sub40 to i64
  %or = or i64 %shl, %conv41
  store i64 %or, i64* %value, align 8
  br label %for.inc

if.end.42:                                        ; preds = %if.then.35
  %31 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %31, i32 0, i32 14
  %32 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp43 = icmp eq %struct.sv* %32, null
  br i1 %cmp43, label %if.then.59, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.end.42
  %33 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings46 = getelementptr inbounds %struct.cop, %struct.cop* %33, i32 0, i32 14
  %34 = load %struct.sv*, %struct.sv** %cop_warnings46, align 8
  %cmp47 = icmp eq %struct.sv* %34, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp47, label %if.then.59, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.45
  %35 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings50 = getelementptr inbounds %struct.cop, %struct.cop* %35, i32 0, i32 14
  %36 = load %struct.sv*, %struct.sv** %cop_warnings50, align 8
  %cmp51 = icmp ne %struct.sv* %36, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %lor.lhs.false.49
  %37 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings54 = getelementptr inbounds %struct.cop, %struct.cop* %37, i32 0, i32 14
  %38 = load %struct.sv*, %struct.sv** %cop_warnings54, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %38, i32 0, i32 0
  %39 = load i8*, i8** %sv_any, align 8
  %40 = bitcast i8* %39 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %40, i32 0, i32 0
  %41 = load i8*, i8** %xpv_pv, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %42 to i32
  %and57 = and i32 %conv56, 64
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true.53, %lor.lhs.false.45, %if.end.42
  call void (i32, i8*, ...) @Perl_warner(i32 15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %land.lhs.true.53, %lor.lhs.false.49
  store i8 1, i8* %overflowed, align 1
  %43 = load i64, i64* %value, align 8
  %conv61 = uitofp i64 %43 to double
  store double %conv61, double* %value_nv, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.60, %redo
  %44 = load double, double* %value_nv, align 8
  %mul = fmul double %44, 2.000000e+00
  store double %mul, double* %value_nv, align 8
  %45 = load i8, i8* %bit, align 1
  %conv63 = sext i8 %45 to i32
  %sub64 = sub nsw i32 %conv63, 48
  %conv65 = sitofp i32 %sub64 to double
  %46 = load double, double* %value_nv, align 8
  %add = fadd double %46, %conv65
  store double %add, double* %value_nv, align 8
  br label %for.inc

if.end.66:                                        ; preds = %lor.lhs.false
  %47 = load i8, i8* %bit, align 1
  %conv67 = sext i8 %47 to i32
  %cmp68 = icmp eq i32 %conv67, 95
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.90

land.lhs.true.70:                                 ; preds = %if.end.66
  %48 = load i64, i64* %len, align 8
  %tobool71 = icmp ne i64 %48, 0
  br i1 %tobool71, label %land.lhs.true.72, label %if.end.90

land.lhs.true.72:                                 ; preds = %land.lhs.true.70
  %49 = load i8, i8* %allow_underscores, align 1
  %conv73 = sext i8 %49 to i32
  %tobool74 = icmp ne i32 %conv73, 0
  br i1 %tobool74, label %land.lhs.true.75, label %if.end.90

land.lhs.true.75:                                 ; preds = %land.lhs.true.72
  %50 = load i8*, i8** %s, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx76, align 1
  store i8 %51, i8* %bit, align 1
  %conv77 = sext i8 %51 to i32
  %tobool78 = icmp ne i32 %conv77, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.90

land.lhs.true.79:                                 ; preds = %land.lhs.true.75
  %52 = load i8, i8* %bit, align 1
  %conv80 = sext i8 %52 to i32
  %cmp81 = icmp eq i32 %conv80, 48
  br i1 %cmp81, label %if.then.87, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %land.lhs.true.79
  %53 = load i8, i8* %bit, align 1
  %conv84 = sext i8 %53 to i32
  %cmp85 = icmp eq i32 %conv84, 49
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %lor.lhs.false.83, %land.lhs.true.79
  %54 = load i64, i64* %len, align 8
  %dec88 = add i64 %54, -1
  store i64 %dec88, i64* %len, align 8
  %55 = load i8*, i8** %s, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr89, i8** %s, align 8
  br label %redo

if.end.90:                                        ; preds = %lor.lhs.false.83, %land.lhs.true.75, %land.lhs.true.72, %land.lhs.true.70, %if.end.66
  %56 = load i32*, i32** %flags.addr, align 8
  %57 = load i32, i32* %56, align 4
  %and91 = and i32 %57, 4
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.end.123, label %land.lhs.true.93

land.lhs.true.93:                                 ; preds = %if.end.90
  %58 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings94 = getelementptr inbounds %struct.cop, %struct.cop* %58, i32 0, i32 14
  %59 = load %struct.sv*, %struct.sv** %cop_warnings94, align 8
  %cmp95 = icmp ne %struct.sv* %59, null
  br i1 %cmp95, label %land.lhs.true.97, label %lor.lhs.false.113

land.lhs.true.97:                                 ; preds = %land.lhs.true.93
  %60 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings98 = getelementptr inbounds %struct.cop, %struct.cop* %60, i32 0, i32 14
  %61 = load %struct.sv*, %struct.sv** %cop_warnings98, align 8
  %cmp99 = icmp ne %struct.sv* %61, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp99, label %land.lhs.true.101, label %lor.lhs.false.113

land.lhs.true.101:                                ; preds = %land.lhs.true.97
  %62 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings102 = getelementptr inbounds %struct.cop, %struct.cop* %62, i32 0, i32 14
  %63 = load %struct.sv*, %struct.sv** %cop_warnings102, align 8
  %cmp103 = icmp eq %struct.sv* %63, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp103, label %if.then.121, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %land.lhs.true.101
  %64 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings106 = getelementptr inbounds %struct.cop, %struct.cop* %64, i32 0, i32 14
  %65 = load %struct.sv*, %struct.sv** %cop_warnings106, align 8
  %sv_any107 = getelementptr inbounds %struct.sv, %struct.sv* %65, i32 0, i32 0
  %66 = load i8*, i8** %sv_any107, align 8
  %67 = bitcast i8* %66 to %struct.xpv*
  %xpv_pv108 = getelementptr inbounds %struct.xpv, %struct.xpv* %67, i32 0, i32 0
  %68 = load i8*, i8** %xpv_pv108, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %68, i64 7
  %69 = load i8, i8* %arrayidx109, align 1
  %conv110 = sext i8 %69 to i32
  %and111 = and i32 %conv110, 64
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.then.121, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false.105, %land.lhs.true.97, %land.lhs.true.93
  %70 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings114 = getelementptr inbounds %struct.cop, %struct.cop* %70, i32 0, i32 14
  %71 = load %struct.sv*, %struct.sv** %cop_warnings114, align 8
  %cmp115 = icmp eq %struct.sv* %71, null
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.123

land.lhs.true.117:                                ; preds = %lor.lhs.false.113
  %72 = load i8, i8* @PL_dowarn, align 1
  %conv118 = zext i8 %72 to i32
  %and119 = and i32 %conv118, 1
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %land.lhs.true.117, %lor.lhs.false.105, %land.lhs.true.101
  %73 = load i8*, i8** %s, align 8
  %74 = load i8, i8* %73, align 1
  %conv122 = sext i8 %74 to i32
  call void (i32, i8*, ...) @Perl_warner(i32 31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %conv122)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %land.lhs.true.117, %lor.lhs.false.113, %if.end.90
  br label %for.end

for.inc:                                          ; preds = %if.end.62, %if.then.38
  %75 = load i8*, i8** %s, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr124, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.123, %land.end
  %76 = load i8, i8* %overflowed, align 1
  %conv125 = sext i8 %76 to i32
  %tobool126 = icmp ne i32 %conv125, 0
  br i1 %tobool126, label %land.lhs.true.127, label %lor.lhs.false.130

land.lhs.true.127:                                ; preds = %for.end
  %77 = load double, double* %value_nv, align 8
  %cmp128 = fcmp ogt double %77, 0x41EFFFFFFFE00000
  br i1 %cmp128, label %if.then.135, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %land.lhs.true.127, %for.end
  %78 = load i8, i8* %overflowed, align 1
  %tobool131 = icmp ne i8 %78, 0
  br i1 %tobool131, label %if.end.165, label %land.lhs.true.132

land.lhs.true.132:                                ; preds = %lor.lhs.false.130
  %79 = load i64, i64* %value, align 8
  %cmp133 = icmp ugt i64 %79, 4294967295
  br i1 %cmp133, label %if.then.135, label %if.end.165

if.then.135:                                      ; preds = %land.lhs.true.132, %land.lhs.true.127
  %80 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings136 = getelementptr inbounds %struct.cop, %struct.cop* %80, i32 0, i32 14
  %81 = load %struct.sv*, %struct.sv** %cop_warnings136, align 8
  %cmp137 = icmp ne %struct.sv* %81, null
  br i1 %cmp137, label %land.lhs.true.139, label %lor.lhs.false.155

land.lhs.true.139:                                ; preds = %if.then.135
  %82 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings140 = getelementptr inbounds %struct.cop, %struct.cop* %82, i32 0, i32 14
  %83 = load %struct.sv*, %struct.sv** %cop_warnings140, align 8
  %cmp141 = icmp ne %struct.sv* %83, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp141, label %land.lhs.true.143, label %lor.lhs.false.155

land.lhs.true.143:                                ; preds = %land.lhs.true.139
  %84 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings144 = getelementptr inbounds %struct.cop, %struct.cop* %84, i32 0, i32 14
  %85 = load %struct.sv*, %struct.sv** %cop_warnings144, align 8
  %cmp145 = icmp eq %struct.sv* %85, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp145, label %if.then.163, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %land.lhs.true.143
  %86 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings148 = getelementptr inbounds %struct.cop, %struct.cop* %86, i32 0, i32 14
  %87 = load %struct.sv*, %struct.sv** %cop_warnings148, align 8
  %sv_any149 = getelementptr inbounds %struct.sv, %struct.sv* %87, i32 0, i32 0
  %88 = load i8*, i8** %sv_any149, align 8
  %89 = bitcast i8* %88 to %struct.xpv*
  %xpv_pv150 = getelementptr inbounds %struct.xpv, %struct.xpv* %89, i32 0, i32 0
  %90 = load i8*, i8** %xpv_pv150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %90, i64 4
  %91 = load i8, i8* %arrayidx151, align 1
  %conv152 = sext i8 %91 to i32
  %and153 = and i32 %conv152, 4
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then.163, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %lor.lhs.false.147, %land.lhs.true.139, %if.then.135
  %92 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings156 = getelementptr inbounds %struct.cop, %struct.cop* %92, i32 0, i32 14
  %93 = load %struct.sv*, %struct.sv** %cop_warnings156, align 8
  %cmp157 = icmp eq %struct.sv* %93, null
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.164

land.lhs.true.159:                                ; preds = %lor.lhs.false.155
  %94 = load i8, i8* @PL_dowarn, align 1
  %conv160 = zext i8 %94 to i32
  %and161 = and i32 %conv160, 1
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %land.lhs.true.159, %lor.lhs.false.147, %land.lhs.true.143
  call void (i32, i8*, ...) @Perl_warner(i32 17, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %land.lhs.true.159, %lor.lhs.false.155
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %land.lhs.true.132, %lor.lhs.false.130
  %95 = load i8*, i8** %s, align 8
  %96 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %96 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %97 = load i64*, i64** %len_p.addr, align 8
  store i64 %sub.ptr.sub, i64* %97, align 8
  %98 = load i8, i8* %overflowed, align 1
  %tobool166 = icmp ne i8 %98, 0
  br i1 %tobool166, label %if.end.168, label %if.then.167

if.then.167:                                      ; preds = %if.end.165
  %99 = load i32*, i32** %flags.addr, align 8
  store i32 0, i32* %99, align 4
  %100 = load i64, i64* %value, align 8
  store i64 %100, i64* %retval
  br label %return

if.end.168:                                       ; preds = %if.end.165
  %101 = load i32*, i32** %flags.addr, align 8
  store i32 2, i32* %101, align 4
  %102 = load double*, double** %result.addr, align 8
  %tobool169 = icmp ne double* %102, null
  br i1 %tobool169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.168
  %103 = load double, double* %value_nv, align 8
  %104 = load double*, double** %result.addr, align 8
  store double %103, double* %104, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.end.168
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.171, %if.then.167
  %105 = load i64, i64* %retval
  ret i64 %105
}

declare void @Perl_warner(i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i64 @Perl_grok_hex(i8* %start, i64* %len_p, i32* %flags, double* %result) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i8*, align 8
  %len_p.addr = alloca i64*, align 8
  %flags.addr = alloca i32*, align 8
  %result.addr = alloca double*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %value = alloca i64, align 8
  %value_nv = alloca double, align 8
  %max_div_16 = alloca i64, align 8
  %allow_underscores = alloca i8, align 1
  %overflowed = alloca i8, align 1
  %hexdigit = alloca i8*, align 8
  store i8* %start, i8** %start.addr, align 8
  store i64* %len_p, i64** %len_p.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store double* %result, double** %result.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i64*, i64** %len_p.addr, align 8
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* %len, align 8
  store i64 0, i64* %value, align 8
  store double 0.000000e+00, double* %value_nv, align 8
  store i64 1152921504606846975, i64* %max_div_16, align 8
  %3 = load i32*, i32** %flags.addr, align 8
  %4 = load i32, i32* %3, align 4
  %and = and i32 %4, 1
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %allow_underscores, align 1
  store i8 0, i8* %overflowed, align 1
  %5 = load i32*, i32** %flags.addr, align 8
  %6 = load i32, i32* %5, align 4
  %and1 = and i32 %6, 2
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.end.22, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %len, align 8
  %cmp = icmp uge i64 %7, 1
  br i1 %cmp, label %if.then.3, label %if.end.21

if.then.3:                                        ; preds = %if.then
  %8 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 120
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.3
  %10 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %11 = load i64, i64* %len, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.3
  %12 = load i64, i64* %len, align 8
  %cmp8 = icmp uge i64 %12, 2
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8*, i8** %s, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 48
  br i1 %cmp12, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %15 = load i8*, i8** %s, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %16 to i32
  %cmp17 = icmp eq i32 %conv16, 120
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %land.lhs.true.14
  %17 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 2
  store i8* %add.ptr, i8** %s, align 8
  %18 = load i64, i64* %len, align 8
  %sub = sub i64 %18, 2
  store i64 %sub, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %land.lhs.true.14, %land.lhs.true, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.7
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %19 = load i64, i64* %len, align 8
  %dec23 = add i64 %19, -1
  store i64 %dec23, i64* %len, align 8
  %tobool24 = icmp ne i64 %19, 0
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %20 = load i8*, i8** %s, align 8
  %21 = load i8, i8* %20, align 1
  %conv25 = sext i8 %21 to i32
  %tobool26 = icmp ne i32 %conv25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %22 = phi i1 [ false, %for.cond ], [ %tobool26, %land.rhs ]
  br i1 %22, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %23 = load i8*, i8** @PL_hexdigit, align 8
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %conv27 = sext i8 %25 to i32
  %call = call i8* @strchr(i8* %23, i32 %conv27)
  store i8* %call, i8** %hexdigit, align 8
  %26 = load i8*, i8** %hexdigit, align 8
  %tobool28 = icmp ne i8* %26, null
  br i1 %tobool28, label %if.then.29, label %if.end.61

if.then.29:                                       ; preds = %for.body
  br label %redo

redo:                                             ; preds = %if.then.79, %if.then.29
  %27 = load i8, i8* %overflowed, align 1
  %tobool30 = icmp ne i8 %27, 0
  br i1 %tobool30, label %if.end.55, label %if.then.31

if.then.31:                                       ; preds = %redo
  %28 = load i64, i64* %value, align 8
  %cmp32 = icmp ule i64 %28, 1152921504606846975
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.31
  %29 = load i64, i64* %value, align 8
  %shl = shl i64 %29, 4
  %30 = load i8*, i8** %hexdigit, align 8
  %31 = load i8*, i8** @PL_hexdigit, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %and35 = and i64 %sub.ptr.sub, 15
  %or = or i64 %shl, %and35
  store i64 %or, i64* %value, align 8
  br label %for.inc

if.end.36:                                        ; preds = %if.then.31
  %32 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %32, i32 0, i32 14
  %33 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp37 = icmp eq %struct.sv* %33, null
  br i1 %cmp37, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.36
  %34 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings39 = getelementptr inbounds %struct.cop, %struct.cop* %34, i32 0, i32 14
  %35 = load %struct.sv*, %struct.sv** %cop_warnings39, align 8
  %cmp40 = icmp eq %struct.sv* %35, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp40, label %if.then.52, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %36 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings43 = getelementptr inbounds %struct.cop, %struct.cop* %36, i32 0, i32 14
  %37 = load %struct.sv*, %struct.sv** %cop_warnings43, align 8
  %cmp44 = icmp ne %struct.sv* %37, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.53

land.lhs.true.46:                                 ; preds = %lor.lhs.false.42
  %38 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings47 = getelementptr inbounds %struct.cop, %struct.cop* %38, i32 0, i32 14
  %39 = load %struct.sv*, %struct.sv** %cop_warnings47, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %39, i32 0, i32 0
  %40 = load i8*, i8** %sv_any, align 8
  %41 = bitcast i8* %40 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %41, i32 0, i32 0
  %42 = load i8*, i8** %xpv_pv, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %42, i64 3
  %43 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %43 to i32
  %and50 = and i32 %conv49, 64
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true.46, %lor.lhs.false, %if.end.36
  call void (i32, i8*, ...) @Perl_warner(i32 15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.lhs.true.46, %lor.lhs.false.42
  store i8 1, i8* %overflowed, align 1
  %44 = load i64, i64* %value, align 8
  %conv54 = uitofp i64 %44 to double
  store double %conv54, double* %value_nv, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.53, %redo
  %45 = load double, double* %value_nv, align 8
  %mul = fmul double %45, 1.600000e+01
  store double %mul, double* %value_nv, align 8
  %46 = load i8*, i8** %hexdigit, align 8
  %47 = load i8*, i8** @PL_hexdigit, align 8
  %sub.ptr.lhs.cast56 = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %47 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %and59 = and i64 %sub.ptr.sub58, 15
  %conv60 = sitofp i64 %and59 to double
  %48 = load double, double* %value_nv, align 8
  %add = fadd double %48, %conv60
  store double %add, double* %value_nv, align 8
  br label %for.inc

if.end.61:                                        ; preds = %for.body
  %49 = load i8*, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %conv62 = sext i8 %50 to i32
  %cmp63 = icmp eq i32 %conv62, 95
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.82

land.lhs.true.65:                                 ; preds = %if.end.61
  %51 = load i64, i64* %len, align 8
  %tobool66 = icmp ne i64 %51, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.82

land.lhs.true.67:                                 ; preds = %land.lhs.true.65
  %52 = load i8, i8* %allow_underscores, align 1
  %conv68 = sext i8 %52 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.82

land.lhs.true.70:                                 ; preds = %land.lhs.true.67
  %53 = load i8*, i8** %s, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %54 to i32
  %tobool73 = icmp ne i32 %conv72, 0
  br i1 %tobool73, label %land.lhs.true.74, label %if.end.82

land.lhs.true.74:                                 ; preds = %land.lhs.true.70
  %55 = load i8*, i8** @PL_hexdigit, align 8
  %56 = load i8*, i8** %s, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %57 to i32
  %call77 = call i8* @strchr(i8* %55, i32 %conv76)
  store i8* %call77, i8** %hexdigit, align 8
  %tobool78 = icmp ne i8* %call77, null
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %land.lhs.true.74
  %58 = load i64, i64* %len, align 8
  %dec80 = add i64 %58, -1
  store i64 %dec80, i64* %len, align 8
  %59 = load i8*, i8** %s, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr81, i8** %s, align 8
  br label %redo

if.end.82:                                        ; preds = %land.lhs.true.74, %land.lhs.true.70, %land.lhs.true.67, %land.lhs.true.65, %if.end.61
  %60 = load i32*, i32** %flags.addr, align 8
  %61 = load i32, i32* %60, align 4
  %and83 = and i32 %61, 4
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.end.115, label %land.lhs.true.85

land.lhs.true.85:                                 ; preds = %if.end.82
  %62 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings86 = getelementptr inbounds %struct.cop, %struct.cop* %62, i32 0, i32 14
  %63 = load %struct.sv*, %struct.sv** %cop_warnings86, align 8
  %cmp87 = icmp ne %struct.sv* %63, null
  br i1 %cmp87, label %land.lhs.true.89, label %lor.lhs.false.105

land.lhs.true.89:                                 ; preds = %land.lhs.true.85
  %64 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings90 = getelementptr inbounds %struct.cop, %struct.cop* %64, i32 0, i32 14
  %65 = load %struct.sv*, %struct.sv** %cop_warnings90, align 8
  %cmp91 = icmp ne %struct.sv* %65, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp91, label %land.lhs.true.93, label %lor.lhs.false.105

land.lhs.true.93:                                 ; preds = %land.lhs.true.89
  %66 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings94 = getelementptr inbounds %struct.cop, %struct.cop* %66, i32 0, i32 14
  %67 = load %struct.sv*, %struct.sv** %cop_warnings94, align 8
  %cmp95 = icmp eq %struct.sv* %67, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp95, label %if.then.113, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %land.lhs.true.93
  %68 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings98 = getelementptr inbounds %struct.cop, %struct.cop* %68, i32 0, i32 14
  %69 = load %struct.sv*, %struct.sv** %cop_warnings98, align 8
  %sv_any99 = getelementptr inbounds %struct.sv, %struct.sv* %69, i32 0, i32 0
  %70 = load i8*, i8** %sv_any99, align 8
  %71 = bitcast i8* %70 to %struct.xpv*
  %xpv_pv100 = getelementptr inbounds %struct.xpv, %struct.xpv* %71, i32 0, i32 0
  %72 = load i8*, i8** %xpv_pv100, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %72, i64 7
  %73 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %73 to i32
  %and103 = and i32 %conv102, 64
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.113, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false.97, %land.lhs.true.89, %land.lhs.true.85
  %74 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings106 = getelementptr inbounds %struct.cop, %struct.cop* %74, i32 0, i32 14
  %75 = load %struct.sv*, %struct.sv** %cop_warnings106, align 8
  %cmp107 = icmp eq %struct.sv* %75, null
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.115

land.lhs.true.109:                                ; preds = %lor.lhs.false.105
  %76 = load i8, i8* @PL_dowarn, align 1
  %conv110 = zext i8 %76 to i32
  %and111 = and i32 %conv110, 1
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %land.lhs.true.109, %lor.lhs.false.97, %land.lhs.true.93
  %77 = load i8*, i8** %s, align 8
  %78 = load i8, i8* %77, align 1
  %conv114 = sext i8 %78 to i32
  call void (i32, i8*, ...) @Perl_warner(i32 31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 %conv114)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %land.lhs.true.109, %lor.lhs.false.105, %if.end.82
  br label %for.end

for.inc:                                          ; preds = %if.end.55, %if.then.34
  %79 = load i8*, i8** %s, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr116, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.115, %land.end
  %80 = load i8, i8* %overflowed, align 1
  %conv117 = sext i8 %80 to i32
  %tobool118 = icmp ne i32 %conv117, 0
  br i1 %tobool118, label %land.lhs.true.119, label %lor.lhs.false.122

land.lhs.true.119:                                ; preds = %for.end
  %81 = load double, double* %value_nv, align 8
  %cmp120 = fcmp ogt double %81, 0x41EFFFFFFFE00000
  br i1 %cmp120, label %if.then.127, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %land.lhs.true.119, %for.end
  %82 = load i8, i8* %overflowed, align 1
  %tobool123 = icmp ne i8 %82, 0
  br i1 %tobool123, label %if.end.157, label %land.lhs.true.124

land.lhs.true.124:                                ; preds = %lor.lhs.false.122
  %83 = load i64, i64* %value, align 8
  %cmp125 = icmp ugt i64 %83, 4294967295
  br i1 %cmp125, label %if.then.127, label %if.end.157

if.then.127:                                      ; preds = %land.lhs.true.124, %land.lhs.true.119
  %84 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings128 = getelementptr inbounds %struct.cop, %struct.cop* %84, i32 0, i32 14
  %85 = load %struct.sv*, %struct.sv** %cop_warnings128, align 8
  %cmp129 = icmp ne %struct.sv* %85, null
  br i1 %cmp129, label %land.lhs.true.131, label %lor.lhs.false.147

land.lhs.true.131:                                ; preds = %if.then.127
  %86 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings132 = getelementptr inbounds %struct.cop, %struct.cop* %86, i32 0, i32 14
  %87 = load %struct.sv*, %struct.sv** %cop_warnings132, align 8
  %cmp133 = icmp ne %struct.sv* %87, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp133, label %land.lhs.true.135, label %lor.lhs.false.147

land.lhs.true.135:                                ; preds = %land.lhs.true.131
  %88 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings136 = getelementptr inbounds %struct.cop, %struct.cop* %88, i32 0, i32 14
  %89 = load %struct.sv*, %struct.sv** %cop_warnings136, align 8
  %cmp137 = icmp eq %struct.sv* %89, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp137, label %if.then.155, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %land.lhs.true.135
  %90 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings140 = getelementptr inbounds %struct.cop, %struct.cop* %90, i32 0, i32 14
  %91 = load %struct.sv*, %struct.sv** %cop_warnings140, align 8
  %sv_any141 = getelementptr inbounds %struct.sv, %struct.sv* %91, i32 0, i32 0
  %92 = load i8*, i8** %sv_any141, align 8
  %93 = bitcast i8* %92 to %struct.xpv*
  %xpv_pv142 = getelementptr inbounds %struct.xpv, %struct.xpv* %93, i32 0, i32 0
  %94 = load i8*, i8** %xpv_pv142, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %94, i64 4
  %95 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %95 to i32
  %and145 = and i32 %conv144, 4
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.155, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.139, %land.lhs.true.131, %if.then.127
  %96 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings148 = getelementptr inbounds %struct.cop, %struct.cop* %96, i32 0, i32 14
  %97 = load %struct.sv*, %struct.sv** %cop_warnings148, align 8
  %cmp149 = icmp eq %struct.sv* %97, null
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.156

land.lhs.true.151:                                ; preds = %lor.lhs.false.147
  %98 = load i8, i8* @PL_dowarn, align 1
  %conv152 = zext i8 %98 to i32
  %and153 = and i32 %conv152, 1
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %land.lhs.true.151, %lor.lhs.false.139, %land.lhs.true.135
  call void (i32, i8*, ...) @Perl_warner(i32 17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %land.lhs.true.151, %lor.lhs.false.147
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %land.lhs.true.124, %lor.lhs.false.122
  %99 = load i8*, i8** %s, align 8
  %100 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast158 = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast159 = ptrtoint i8* %100 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %101 = load i64*, i64** %len_p.addr, align 8
  store i64 %sub.ptr.sub160, i64* %101, align 8
  %102 = load i8, i8* %overflowed, align 1
  %tobool161 = icmp ne i8 %102, 0
  br i1 %tobool161, label %if.end.163, label %if.then.162

if.then.162:                                      ; preds = %if.end.157
  %103 = load i32*, i32** %flags.addr, align 8
  store i32 0, i32* %103, align 4
  %104 = load i64, i64* %value, align 8
  store i64 %104, i64* %retval
  br label %return

if.end.163:                                       ; preds = %if.end.157
  %105 = load i32*, i32** %flags.addr, align 8
  store i32 2, i32* %105, align 4
  %106 = load double*, double** %result.addr, align 8
  %tobool164 = icmp ne double* %106, null
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.163
  %107 = load double, double* %value_nv, align 8
  %108 = load double*, double** %result.addr, align 8
  store double %107, double* %108, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end.163
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.166, %if.then.162
  %109 = load i64, i64* %retval
  ret i64 %109
}

declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i64 @Perl_grok_oct(i8* %start, i64* %len_p, i32* %flags, double* %result) #0 {
entry:
  %retval = alloca i64, align 8
  %start.addr = alloca i8*, align 8
  %len_p.addr = alloca i64*, align 8
  %flags.addr = alloca i32*, align 8
  %result.addr = alloca double*, align 8
  %s = alloca i8*, align 8
  %len = alloca i64, align 8
  %value = alloca i64, align 8
  %value_nv = alloca double, align 8
  %max_div_8 = alloca i64, align 8
  %allow_underscores = alloca i8, align 1
  %overflowed = alloca i8, align 1
  %digit = alloca i32, align 4
  store i8* %start, i8** %start.addr, align 8
  store i64* %len_p, i64** %len_p.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store double* %result, double** %result.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i64*, i64** %len_p.addr, align 8
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* %len, align 8
  store i64 0, i64* %value, align 8
  store double 0.000000e+00, double* %value_nv, align 8
  store i64 2305843009213693951, i64* %max_div_8, align 8
  %3 = load i32*, i32** %flags.addr, align 8
  %4 = load i32, i32* %3, align 4
  %and = and i32 %4, 1
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %allow_underscores, align 1
  store i8 0, i8* %overflowed, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %len, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %len, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i8*, i8** %s, align 8
  %7 = load i8, i8* %6, align 1
  %conv1 = sext i8 %7 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %tobool2, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv3, 48
  store i32 %sub, i32* %digit, align 4
  %11 = load i32, i32* %digit, align 4
  %cmp = icmp sge i32 %11, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %digit, align 4
  %cmp5 = icmp sle i32 %12, 7
  br i1 %cmp5, label %if.then, label %if.end.32

if.then:                                          ; preds = %land.lhs.true
  br label %redo

redo:                                             ; preds = %if.then.51, %if.then
  %13 = load i8, i8* %overflowed, align 1
  %tobool7 = icmp ne i8 %13, 0
  br i1 %tobool7, label %if.end.30, label %if.then.8

if.then.8:                                        ; preds = %redo
  %14 = load i64, i64* %value, align 8
  %cmp9 = icmp ule i64 %14, 2305843009213693951
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.8
  %15 = load i64, i64* %value, align 8
  %shl = shl i64 %15, 3
  %16 = load i32, i32* %digit, align 4
  %conv12 = sext i32 %16 to i64
  %or = or i64 %shl, %conv12
  store i64 %or, i64* %value, align 8
  br label %for.inc

if.end:                                           ; preds = %if.then.8
  %17 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %17, i32 0, i32 14
  %18 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp13 = icmp eq %struct.sv* %18, null
  br i1 %cmp13, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings15 = getelementptr inbounds %struct.cop, %struct.cop* %19, i32 0, i32 14
  %20 = load %struct.sv*, %struct.sv** %cop_warnings15, align 8
  %cmp16 = icmp eq %struct.sv* %20, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp16, label %if.then.27, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %21 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings19 = getelementptr inbounds %struct.cop, %struct.cop* %21, i32 0, i32 14
  %22 = load %struct.sv*, %struct.sv** %cop_warnings19, align 8
  %cmp20 = icmp ne %struct.sv* %22, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %lor.lhs.false.18
  %23 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings23 = getelementptr inbounds %struct.cop, %struct.cop* %23, i32 0, i32 14
  %24 = load %struct.sv*, %struct.sv** %cop_warnings23, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %24, i32 0, i32 0
  %25 = load i8*, i8** %sv_any, align 8
  %26 = bitcast i8* %25 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %26, i32 0, i32 0
  %27 = load i8*, i8** %xpv_pv, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 3
  %28 = load i8, i8* %arrayidx, align 1
  %conv24 = sext i8 %28 to i32
  %and25 = and i32 %conv24, 64
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.22, %lor.lhs.false, %if.end
  call void (i32, i8*, ...) @Perl_warner(i32 15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true.22, %lor.lhs.false.18
  store i8 1, i8* %overflowed, align 1
  %29 = load i64, i64* %value, align 8
  %conv29 = uitofp i64 %29 to double
  store double %conv29, double* %value_nv, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %redo
  %30 = load double, double* %value_nv, align 8
  %mul = fmul double %30, 8.000000e+00
  store double %mul, double* %value_nv, align 8
  %31 = load i32, i32* %digit, align 4
  %conv31 = sitofp i32 %31 to double
  %32 = load double, double* %value_nv, align 8
  %add = fadd double %32, %conv31
  store double %add, double* %value_nv, align 8
  br label %for.inc

if.end.32:                                        ; preds = %land.lhs.true, %for.body
  %33 = load i32, i32* %digit, align 4
  %cmp33 = icmp eq i32 %33, 47
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.53

land.lhs.true.35:                                 ; preds = %if.end.32
  %34 = load i64, i64* %len, align 8
  %tobool36 = icmp ne i64 %34, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.53

land.lhs.true.37:                                 ; preds = %land.lhs.true.35
  %35 = load i8, i8* %allow_underscores, align 1
  %conv38 = sext i8 %35 to i32
  %tobool39 = icmp ne i32 %conv38, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.53

land.lhs.true.40:                                 ; preds = %land.lhs.true.37
  %36 = load i8*, i8** %s, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %37 to i32
  %sub43 = sub nsw i32 %conv42, 48
  store i32 %sub43, i32* %digit, align 4
  %tobool44 = icmp ne i32 %sub43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.53

land.lhs.true.45:                                 ; preds = %land.lhs.true.40
  %38 = load i32, i32* %digit, align 4
  %cmp46 = icmp sge i32 %38, 0
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.53

land.lhs.true.48:                                 ; preds = %land.lhs.true.45
  %39 = load i32, i32* %digit, align 4
  %cmp49 = icmp sle i32 %39, 7
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %land.lhs.true.48
  %40 = load i64, i64* %len, align 8
  %dec52 = add i64 %40, -1
  store i64 %dec52, i64* %len, align 8
  %41 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %redo

if.end.53:                                        ; preds = %land.lhs.true.48, %land.lhs.true.45, %land.lhs.true.40, %land.lhs.true.37, %land.lhs.true.35, %if.end.32
  %42 = load i32, i32* %digit, align 4
  %cmp54 = icmp eq i32 %42, 8
  br i1 %cmp54, label %if.then.59, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.53
  %43 = load i32, i32* %digit, align 4
  %cmp57 = icmp eq i32 %43, 9
  br i1 %cmp57, label %if.then.59, label %if.end.93

if.then.59:                                       ; preds = %lor.lhs.false.56, %if.end.53
  %44 = load i32*, i32** %flags.addr, align 8
  %45 = load i32, i32* %44, align 4
  %and60 = and i32 %45, 4
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.end.92, label %land.lhs.true.62

land.lhs.true.62:                                 ; preds = %if.then.59
  %46 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings63 = getelementptr inbounds %struct.cop, %struct.cop* %46, i32 0, i32 14
  %47 = load %struct.sv*, %struct.sv** %cop_warnings63, align 8
  %cmp64 = icmp ne %struct.sv* %47, null
  br i1 %cmp64, label %land.lhs.true.66, label %lor.lhs.false.82

land.lhs.true.66:                                 ; preds = %land.lhs.true.62
  %48 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings67 = getelementptr inbounds %struct.cop, %struct.cop* %48, i32 0, i32 14
  %49 = load %struct.sv*, %struct.sv** %cop_warnings67, align 8
  %cmp68 = icmp ne %struct.sv* %49, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp68, label %land.lhs.true.70, label %lor.lhs.false.82

land.lhs.true.70:                                 ; preds = %land.lhs.true.66
  %50 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings71 = getelementptr inbounds %struct.cop, %struct.cop* %50, i32 0, i32 14
  %51 = load %struct.sv*, %struct.sv** %cop_warnings71, align 8
  %cmp72 = icmp eq %struct.sv* %51, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp72, label %if.then.90, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %land.lhs.true.70
  %52 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings75 = getelementptr inbounds %struct.cop, %struct.cop* %52, i32 0, i32 14
  %53 = load %struct.sv*, %struct.sv** %cop_warnings75, align 8
  %sv_any76 = getelementptr inbounds %struct.sv, %struct.sv* %53, i32 0, i32 0
  %54 = load i8*, i8** %sv_any76, align 8
  %55 = bitcast i8* %54 to %struct.xpv*
  %xpv_pv77 = getelementptr inbounds %struct.xpv, %struct.xpv* %55, i32 0, i32 0
  %56 = load i8*, i8** %xpv_pv77, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %56, i64 7
  %57 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %57 to i32
  %and80 = and i32 %conv79, 64
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.90, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %lor.lhs.false.74, %land.lhs.true.66, %land.lhs.true.62
  %58 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings83 = getelementptr inbounds %struct.cop, %struct.cop* %58, i32 0, i32 14
  %59 = load %struct.sv*, %struct.sv** %cop_warnings83, align 8
  %cmp84 = icmp eq %struct.sv* %59, null
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.92

land.lhs.true.86:                                 ; preds = %lor.lhs.false.82
  %60 = load i8, i8* @PL_dowarn, align 1
  %conv87 = zext i8 %60 to i32
  %and88 = and i32 %conv87, 1
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %land.lhs.true.86, %lor.lhs.false.74, %land.lhs.true.70
  %61 = load i8*, i8** %s, align 8
  %62 = load i8, i8* %61, align 1
  %conv91 = sext i8 %62 to i32
  call void (i32, i8*, ...) @Perl_warner(i32 31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i32 %conv91)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %land.lhs.true.86, %lor.lhs.false.82, %if.then.59
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %lor.lhs.false.56
  br label %for.end

for.inc:                                          ; preds = %if.end.30, %if.then.11
  %63 = load i8*, i8** %s, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr94, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.93, %land.end
  %64 = load i8, i8* %overflowed, align 1
  %conv95 = sext i8 %64 to i32
  %tobool96 = icmp ne i32 %conv95, 0
  br i1 %tobool96, label %land.lhs.true.97, label %lor.lhs.false.100

land.lhs.true.97:                                 ; preds = %for.end
  %65 = load double, double* %value_nv, align 8
  %cmp98 = fcmp ogt double %65, 0x41EFFFFFFFE00000
  br i1 %cmp98, label %if.then.105, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %land.lhs.true.97, %for.end
  %66 = load i8, i8* %overflowed, align 1
  %tobool101 = icmp ne i8 %66, 0
  br i1 %tobool101, label %if.end.135, label %land.lhs.true.102

land.lhs.true.102:                                ; preds = %lor.lhs.false.100
  %67 = load i64, i64* %value, align 8
  %cmp103 = icmp ugt i64 %67, 4294967295
  br i1 %cmp103, label %if.then.105, label %if.end.135

if.then.105:                                      ; preds = %land.lhs.true.102, %land.lhs.true.97
  %68 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings106 = getelementptr inbounds %struct.cop, %struct.cop* %68, i32 0, i32 14
  %69 = load %struct.sv*, %struct.sv** %cop_warnings106, align 8
  %cmp107 = icmp ne %struct.sv* %69, null
  br i1 %cmp107, label %land.lhs.true.109, label %lor.lhs.false.125

land.lhs.true.109:                                ; preds = %if.then.105
  %70 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings110 = getelementptr inbounds %struct.cop, %struct.cop* %70, i32 0, i32 14
  %71 = load %struct.sv*, %struct.sv** %cop_warnings110, align 8
  %cmp111 = icmp ne %struct.sv* %71, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp111, label %land.lhs.true.113, label %lor.lhs.false.125

land.lhs.true.113:                                ; preds = %land.lhs.true.109
  %72 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings114 = getelementptr inbounds %struct.cop, %struct.cop* %72, i32 0, i32 14
  %73 = load %struct.sv*, %struct.sv** %cop_warnings114, align 8
  %cmp115 = icmp eq %struct.sv* %73, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp115, label %if.then.133, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %land.lhs.true.113
  %74 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings118 = getelementptr inbounds %struct.cop, %struct.cop* %74, i32 0, i32 14
  %75 = load %struct.sv*, %struct.sv** %cop_warnings118, align 8
  %sv_any119 = getelementptr inbounds %struct.sv, %struct.sv* %75, i32 0, i32 0
  %76 = load i8*, i8** %sv_any119, align 8
  %77 = bitcast i8* %76 to %struct.xpv*
  %xpv_pv120 = getelementptr inbounds %struct.xpv, %struct.xpv* %77, i32 0, i32 0
  %78 = load i8*, i8** %xpv_pv120, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %78, i64 4
  %79 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %79 to i32
  %and123 = and i32 %conv122, 4
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.133, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %lor.lhs.false.117, %land.lhs.true.109, %if.then.105
  %80 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings126 = getelementptr inbounds %struct.cop, %struct.cop* %80, i32 0, i32 14
  %81 = load %struct.sv*, %struct.sv** %cop_warnings126, align 8
  %cmp127 = icmp eq %struct.sv* %81, null
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.134

land.lhs.true.129:                                ; preds = %lor.lhs.false.125
  %82 = load i8, i8* @PL_dowarn, align 1
  %conv130 = zext i8 %82 to i32
  %and131 = and i32 %conv130, 1
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %land.lhs.true.129, %lor.lhs.false.117, %land.lhs.true.113
  call void (i32, i8*, ...) @Perl_warner(i32 17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %land.lhs.true.129, %lor.lhs.false.125
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %land.lhs.true.102, %lor.lhs.false.100
  %83 = load i8*, i8** %s, align 8
  %84 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %84 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %85 = load i64*, i64** %len_p.addr, align 8
  store i64 %sub.ptr.sub, i64* %85, align 8
  %86 = load i8, i8* %overflowed, align 1
  %tobool136 = icmp ne i8 %86, 0
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %if.end.135
  %87 = load i32*, i32** %flags.addr, align 8
  store i32 0, i32* %87, align 4
  %88 = load i64, i64* %value, align 8
  store i64 %88, i64* %retval
  br label %return

if.end.138:                                       ; preds = %if.end.135
  %89 = load i32*, i32** %flags.addr, align 8
  store i32 2, i32* %89, align 4
  %90 = load double*, double** %result.addr, align 8
  %tobool139 = icmp ne double* %90, null
  br i1 %tobool139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.138
  %91 = load double, double* %value_nv, align 8
  %92 = load double*, double** %result.addr, align 8
  store double %91, double* %92, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %if.end.138
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end.141, %if.then.137
  %93 = load i64, i64* %retval
  ret i64 %93
}

; Function Attrs: nounwind uwtable
define double @Perl_scan_bin(i8* %start, i64 %len, i64* %retlen) #0 {
entry:
  %start.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %retlen.addr = alloca i64*, align 8
  %rnv = alloca double, align 8
  %flags = alloca i32, align 4
  %ruv = alloca i64, align 8
  store i8* %start, i8** %start.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %retlen, i64** %retlen.addr, align 8
  %0 = load i64*, i64** %retlen.addr, align 8
  %1 = load i64, i64* %0, align 8
  %tobool = icmp ne i64 %1, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %flags, align 4
  %2 = load i8*, i8** %start.addr, align 8
  %call = call i64 @Perl_grok_bin(i8* %2, i64* %len.addr, i32* %flags, double* %rnv)
  store i64 %call, i64* %ruv, align 8
  %3 = load i64, i64* %len.addr, align 8
  %4 = load i64*, i64** %retlen.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load double, double* %rnv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %ruv, align 8
  %conv = uitofp i64 %7 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double [ %6, %cond.true ], [ %conv, %cond.false ]
  ret double %cond2
}

; Function Attrs: nounwind uwtable
define double @Perl_scan_oct(i8* %start, i64 %len, i64* %retlen) #0 {
entry:
  %start.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %retlen.addr = alloca i64*, align 8
  %rnv = alloca double, align 8
  %flags = alloca i32, align 4
  %ruv = alloca i64, align 8
  store i8* %start, i8** %start.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %retlen, i64** %retlen.addr, align 8
  %0 = load i64*, i64** %retlen.addr, align 8
  %1 = load i64, i64* %0, align 8
  %tobool = icmp ne i64 %1, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %flags, align 4
  %2 = load i8*, i8** %start.addr, align 8
  %call = call i64 @Perl_grok_oct(i8* %2, i64* %len.addr, i32* %flags, double* %rnv)
  store i64 %call, i64* %ruv, align 8
  %3 = load i64, i64* %len.addr, align 8
  %4 = load i64*, i64** %retlen.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load double, double* %rnv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %ruv, align 8
  %conv = uitofp i64 %7 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double [ %6, %cond.true ], [ %conv, %cond.false ]
  ret double %cond2
}

; Function Attrs: nounwind uwtable
define double @Perl_scan_hex(i8* %start, i64 %len, i64* %retlen) #0 {
entry:
  %start.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %retlen.addr = alloca i64*, align 8
  %rnv = alloca double, align 8
  %flags = alloca i32, align 4
  %ruv = alloca i64, align 8
  store i8* %start, i8** %start.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %retlen, i64** %retlen.addr, align 8
  %0 = load i64*, i64** %retlen.addr, align 8
  %1 = load i64, i64* %0, align 8
  %tobool = icmp ne i64 %1, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %flags, align 4
  %2 = load i8*, i8** %start.addr, align 8
  %call = call i64 @Perl_grok_hex(i8* %2, i64* %len.addr, i32* %flags, double* %rnv)
  store i64 %call, i64* %ruv, align 8
  %3 = load i64, i64* %len.addr, align 8
  %4 = load i64*, i64** %retlen.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load double, double* %rnv, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %ruv, align 8
  %conv = uitofp i64 %7 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi double [ %6, %cond.true ], [ %conv, %cond.false ]
  ret double %cond2
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_grok_numeric_radix(i8** %sp, i8* %send) #0 {
entry:
  %retval = alloca i8, align 1
  %sp.addr = alloca i8**, align 8
  %send.addr = alloca i8*, align 8
  store i8** %sp, i8*** %sp.addr, align 8
  store i8* %send, i8** %send.addr, align 8
  %0 = load i8**, i8*** %sp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %send.addr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8**, i8*** %sp.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 46
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8**, i8*** %sp.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %6, align 8
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8, i8* %retval
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define i32 @Perl_grok_number(i8* %pv, i64 %len, i64* %valuep) #0 {
entry:
  %retval = alloca i32, align 4
  %pv.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %valuep.addr = alloca i64*, align 8
  %s = alloca i8*, align 8
  %send = alloca i8*, align 8
  %max_div_10 = alloca i64, align 8
  %max_mod_10 = alloca i8, align 1
  %numtype = alloca i32, align 4
  %sawinf = alloca i32, align 4
  %sawnan = alloca i32, align 4
  %value = alloca i64, align 8
  %digit = alloca i32, align 4
  store i8* %pv, i8** %pv.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64* %valuep, i64** %valuep.addr, align 8
  %0 = load i8*, i8** %pv.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %pv.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %send, align 8
  store i64 1844674407370955161, i64* %max_div_10, align 8
  store i8 5, i8* %max_mod_10, align 1
  store i32 0, i32* %numtype, align 4
  store i32 0, i32* %sawinf, align 4
  store i32 0, i32* %sawnan, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %s, align 8
  %4 = load i8*, i8** %send, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %s, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 32
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 9
  br i1 %cmp4, label %lor.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 10
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %conv11 = sext i8 %12 to i32
  %cmp12 = icmp eq i32 %conv11, 13
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.10
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %land.rhs
  %15 = phi i1 [ true, %lor.lhs.false.10 ], [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp15, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %15, %lor.end ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i8*, i8** %s, align 8
  %19 = load i8*, i8** %send, align 8
  %cmp17 = icmp eq i8* %18, %19
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  %20 = load i8*, i8** %s, align 8
  %21 = load i8, i8* %20, align 1
  %conv19 = sext i8 %21 to i32
  %cmp20 = icmp eq i32 %conv19, 45
  br i1 %cmp20, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else
  %22 = load i8*, i8** %s, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr23, i8** %s, align 8
  store i32 8, i32* %numtype, align 4
  br label %if.end.30

if.else.24:                                       ; preds = %if.else
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 43
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.else.24
  %25 = load i8*, i8** %s, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr29, i8** %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.else.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.22
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  %26 = load i8*, i8** %s, align 8
  %27 = load i8*, i8** %send, align 8
  %cmp32 = icmp eq i8* %26, %27
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %28 = load i8*, i8** %s, align 8
  %29 = load i8, i8* %28, align 1
  %conv36 = sext i8 %29 to i32
  %cmp37 = icmp sge i32 %conv36, 48
  br i1 %cmp37, label %land.lhs.true, label %if.else.263

land.lhs.true:                                    ; preds = %if.end.35
  %30 = load i8*, i8** %s, align 8
  %31 = load i8, i8* %30, align 1
  %conv39 = sext i8 %31 to i32
  %cmp40 = icmp sle i32 %conv39, 57
  br i1 %cmp40, label %if.then.42, label %if.else.263

if.then.42:                                       ; preds = %land.lhs.true
  %32 = load i8*, i8** %s, align 8
  %33 = load i8, i8* %32, align 1
  %conv43 = sext i8 %33 to i32
  %sub = sub nsw i32 %conv43, 48
  %conv44 = sext i32 %sub to i64
  store i64 %conv44, i64* %value, align 8
  %34 = load i8*, i8** %s, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr45, i8** %s, align 8
  %35 = load i8*, i8** %send, align 8
  %cmp46 = icmp ult i8* %incdec.ptr45, %35
  br i1 %cmp46, label %if.then.48, label %if.end.239

if.then.48:                                       ; preds = %if.then.42
  %36 = load i8*, i8** %s, align 8
  %37 = load i8, i8* %36, align 1
  %conv49 = sext i8 %37 to i32
  %sub50 = sub nsw i32 %conv49, 48
  store i32 %sub50, i32* %digit, align 4
  %38 = load i32, i32* %digit, align 4
  %cmp51 = icmp sge i32 %38, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.238

land.lhs.true.53:                                 ; preds = %if.then.48
  %39 = load i32, i32* %digit, align 4
  %cmp54 = icmp sle i32 %39, 9
  br i1 %cmp54, label %if.then.56, label %if.end.238

if.then.56:                                       ; preds = %land.lhs.true.53
  %40 = load i64, i64* %value, align 8
  %mul = mul i64 %40, 10
  %41 = load i32, i32* %digit, align 4
  %conv57 = sext i32 %41 to i64
  %add = add i64 %mul, %conv57
  store i64 %add, i64* %value, align 8
  %42 = load i8*, i8** %s, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr58, i8** %s, align 8
  %43 = load i8*, i8** %send, align 8
  %cmp59 = icmp ult i8* %incdec.ptr58, %43
  br i1 %cmp59, label %if.then.61, label %if.end.237

if.then.61:                                       ; preds = %if.then.56
  %44 = load i8*, i8** %s, align 8
  %45 = load i8, i8* %44, align 1
  %conv62 = sext i8 %45 to i32
  %sub63 = sub nsw i32 %conv62, 48
  store i32 %sub63, i32* %digit, align 4
  %46 = load i32, i32* %digit, align 4
  %cmp64 = icmp sge i32 %46, 0
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.236

land.lhs.true.66:                                 ; preds = %if.then.61
  %47 = load i32, i32* %digit, align 4
  %cmp67 = icmp sle i32 %47, 9
  br i1 %cmp67, label %if.then.69, label %if.end.236

if.then.69:                                       ; preds = %land.lhs.true.66
  %48 = load i64, i64* %value, align 8
  %mul70 = mul i64 %48, 10
  %49 = load i32, i32* %digit, align 4
  %conv71 = sext i32 %49 to i64
  %add72 = add i64 %mul70, %conv71
  store i64 %add72, i64* %value, align 8
  %50 = load i8*, i8** %s, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr73, i8** %s, align 8
  %51 = load i8*, i8** %send, align 8
  %cmp74 = icmp ult i8* %incdec.ptr73, %51
  br i1 %cmp74, label %if.then.76, label %if.end.235

if.then.76:                                       ; preds = %if.then.69
  %52 = load i8*, i8** %s, align 8
  %53 = load i8, i8* %52, align 1
  %conv77 = sext i8 %53 to i32
  %sub78 = sub nsw i32 %conv77, 48
  store i32 %sub78, i32* %digit, align 4
  %54 = load i32, i32* %digit, align 4
  %cmp79 = icmp sge i32 %54, 0
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.234

land.lhs.true.81:                                 ; preds = %if.then.76
  %55 = load i32, i32* %digit, align 4
  %cmp82 = icmp sle i32 %55, 9
  br i1 %cmp82, label %if.then.84, label %if.end.234

if.then.84:                                       ; preds = %land.lhs.true.81
  %56 = load i64, i64* %value, align 8
  %mul85 = mul i64 %56, 10
  %57 = load i32, i32* %digit, align 4
  %conv86 = sext i32 %57 to i64
  %add87 = add i64 %mul85, %conv86
  store i64 %add87, i64* %value, align 8
  %58 = load i8*, i8** %s, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr88, i8** %s, align 8
  %59 = load i8*, i8** %send, align 8
  %cmp89 = icmp ult i8* %incdec.ptr88, %59
  br i1 %cmp89, label %if.then.91, label %if.end.233

if.then.91:                                       ; preds = %if.then.84
  %60 = load i8*, i8** %s, align 8
  %61 = load i8, i8* %60, align 1
  %conv92 = sext i8 %61 to i32
  %sub93 = sub nsw i32 %conv92, 48
  store i32 %sub93, i32* %digit, align 4
  %62 = load i32, i32* %digit, align 4
  %cmp94 = icmp sge i32 %62, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.232

land.lhs.true.96:                                 ; preds = %if.then.91
  %63 = load i32, i32* %digit, align 4
  %cmp97 = icmp sle i32 %63, 9
  br i1 %cmp97, label %if.then.99, label %if.end.232

if.then.99:                                       ; preds = %land.lhs.true.96
  %64 = load i64, i64* %value, align 8
  %mul100 = mul i64 %64, 10
  %65 = load i32, i32* %digit, align 4
  %conv101 = sext i32 %65 to i64
  %add102 = add i64 %mul100, %conv101
  store i64 %add102, i64* %value, align 8
  %66 = load i8*, i8** %s, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr103, i8** %s, align 8
  %67 = load i8*, i8** %send, align 8
  %cmp104 = icmp ult i8* %incdec.ptr103, %67
  br i1 %cmp104, label %if.then.106, label %if.end.231

if.then.106:                                      ; preds = %if.then.99
  %68 = load i8*, i8** %s, align 8
  %69 = load i8, i8* %68, align 1
  %conv107 = sext i8 %69 to i32
  %sub108 = sub nsw i32 %conv107, 48
  store i32 %sub108, i32* %digit, align 4
  %70 = load i32, i32* %digit, align 4
  %cmp109 = icmp sge i32 %70, 0
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.230

land.lhs.true.111:                                ; preds = %if.then.106
  %71 = load i32, i32* %digit, align 4
  %cmp112 = icmp sle i32 %71, 9
  br i1 %cmp112, label %if.then.114, label %if.end.230

if.then.114:                                      ; preds = %land.lhs.true.111
  %72 = load i64, i64* %value, align 8
  %mul115 = mul i64 %72, 10
  %73 = load i32, i32* %digit, align 4
  %conv116 = sext i32 %73 to i64
  %add117 = add i64 %mul115, %conv116
  store i64 %add117, i64* %value, align 8
  %74 = load i8*, i8** %s, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr118, i8** %s, align 8
  %75 = load i8*, i8** %send, align 8
  %cmp119 = icmp ult i8* %incdec.ptr118, %75
  br i1 %cmp119, label %if.then.121, label %if.end.229

if.then.121:                                      ; preds = %if.then.114
  %76 = load i8*, i8** %s, align 8
  %77 = load i8, i8* %76, align 1
  %conv122 = sext i8 %77 to i32
  %sub123 = sub nsw i32 %conv122, 48
  store i32 %sub123, i32* %digit, align 4
  %78 = load i32, i32* %digit, align 4
  %cmp124 = icmp sge i32 %78, 0
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.228

land.lhs.true.126:                                ; preds = %if.then.121
  %79 = load i32, i32* %digit, align 4
  %cmp127 = icmp sle i32 %79, 9
  br i1 %cmp127, label %if.then.129, label %if.end.228

if.then.129:                                      ; preds = %land.lhs.true.126
  %80 = load i64, i64* %value, align 8
  %mul130 = mul i64 %80, 10
  %81 = load i32, i32* %digit, align 4
  %conv131 = sext i32 %81 to i64
  %add132 = add i64 %mul130, %conv131
  store i64 %add132, i64* %value, align 8
  %82 = load i8*, i8** %s, align 8
  %incdec.ptr133 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr133, i8** %s, align 8
  %83 = load i8*, i8** %send, align 8
  %cmp134 = icmp ult i8* %incdec.ptr133, %83
  br i1 %cmp134, label %if.then.136, label %if.end.227

if.then.136:                                      ; preds = %if.then.129
  %84 = load i8*, i8** %s, align 8
  %85 = load i8, i8* %84, align 1
  %conv137 = sext i8 %85 to i32
  %sub138 = sub nsw i32 %conv137, 48
  store i32 %sub138, i32* %digit, align 4
  %86 = load i32, i32* %digit, align 4
  %cmp139 = icmp sge i32 %86, 0
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.226

land.lhs.true.141:                                ; preds = %if.then.136
  %87 = load i32, i32* %digit, align 4
  %cmp142 = icmp sle i32 %87, 9
  br i1 %cmp142, label %if.then.144, label %if.end.226

if.then.144:                                      ; preds = %land.lhs.true.141
  %88 = load i64, i64* %value, align 8
  %mul145 = mul i64 %88, 10
  %89 = load i32, i32* %digit, align 4
  %conv146 = sext i32 %89 to i64
  %add147 = add i64 %mul145, %conv146
  store i64 %add147, i64* %value, align 8
  %90 = load i8*, i8** %s, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr148, i8** %s, align 8
  %91 = load i8*, i8** %send, align 8
  %cmp149 = icmp ult i8* %incdec.ptr148, %91
  br i1 %cmp149, label %if.then.151, label %if.end.225

if.then.151:                                      ; preds = %if.then.144
  %92 = load i8*, i8** %s, align 8
  %93 = load i8, i8* %92, align 1
  %conv152 = sext i8 %93 to i32
  %sub153 = sub nsw i32 %conv152, 48
  store i32 %sub153, i32* %digit, align 4
  %94 = load i32, i32* %digit, align 4
  %cmp154 = icmp sge i32 %94, 0
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.224

land.lhs.true.156:                                ; preds = %if.then.151
  %95 = load i32, i32* %digit, align 4
  %cmp157 = icmp sle i32 %95, 9
  br i1 %cmp157, label %if.then.159, label %if.end.224

if.then.159:                                      ; preds = %land.lhs.true.156
  %96 = load i64, i64* %value, align 8
  %mul160 = mul i64 %96, 10
  %97 = load i32, i32* %digit, align 4
  %conv161 = sext i32 %97 to i64
  %add162 = add i64 %mul160, %conv161
  store i64 %add162, i64* %value, align 8
  %98 = load i8*, i8** %s, align 8
  %incdec.ptr163 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr163, i8** %s, align 8
  %99 = load i8*, i8** %send, align 8
  %cmp164 = icmp ult i8* %incdec.ptr163, %99
  br i1 %cmp164, label %if.then.166, label %if.end.223

if.then.166:                                      ; preds = %if.then.159
  %100 = load i8*, i8** %s, align 8
  %101 = load i8, i8* %100, align 1
  %conv167 = sext i8 %101 to i32
  %sub168 = sub nsw i32 %conv167, 48
  store i32 %sub168, i32* %digit, align 4
  br label %while.cond.169

while.cond.169:                                   ; preds = %if.end.198, %if.then.166
  %102 = load i32, i32* %digit, align 4
  %cmp170 = icmp sge i32 %102, 0
  br i1 %cmp170, label %land.lhs.true.172, label %land.end.186

land.lhs.true.172:                                ; preds = %while.cond.169
  %103 = load i32, i32* %digit, align 4
  %cmp173 = icmp sle i32 %103, 9
  br i1 %cmp173, label %land.rhs.175, label %land.end.186

land.rhs.175:                                     ; preds = %land.lhs.true.172
  %104 = load i64, i64* %value, align 8
  %cmp176 = icmp ult i64 %104, 1844674407370955161
  br i1 %cmp176, label %lor.end.185, label %lor.rhs.178

lor.rhs.178:                                      ; preds = %land.rhs.175
  %105 = load i64, i64* %value, align 8
  %cmp179 = icmp eq i64 %105, 1844674407370955161
  br i1 %cmp179, label %land.rhs.181, label %land.end.184

land.rhs.181:                                     ; preds = %lor.rhs.178
  %106 = load i32, i32* %digit, align 4
  %cmp182 = icmp sle i32 %106, 5
  br label %land.end.184

land.end.184:                                     ; preds = %land.rhs.181, %lor.rhs.178
  %107 = phi i1 [ false, %lor.rhs.178 ], [ %cmp182, %land.rhs.181 ]
  br label %lor.end.185

lor.end.185:                                      ; preds = %land.end.184, %land.rhs.175
  %108 = phi i1 [ true, %land.rhs.175 ], [ %107, %land.end.184 ]
  br label %land.end.186

land.end.186:                                     ; preds = %lor.end.185, %land.lhs.true.172, %while.cond.169
  %109 = phi i1 [ false, %land.lhs.true.172 ], [ false, %while.cond.169 ], [ %108, %lor.end.185 ]
  br i1 %109, label %while.body.187, label %while.end.199

while.body.187:                                   ; preds = %land.end.186
  %110 = load i64, i64* %value, align 8
  %mul188 = mul i64 %110, 10
  %111 = load i32, i32* %digit, align 4
  %conv189 = sext i32 %111 to i64
  %add190 = add i64 %mul188, %conv189
  store i64 %add190, i64* %value, align 8
  %112 = load i8*, i8** %s, align 8
  %incdec.ptr191 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr191, i8** %s, align 8
  %113 = load i8*, i8** %send, align 8
  %cmp192 = icmp ult i8* %incdec.ptr191, %113
  br i1 %cmp192, label %if.then.194, label %if.else.197

if.then.194:                                      ; preds = %while.body.187
  %114 = load i8*, i8** %s, align 8
  %115 = load i8, i8* %114, align 1
  %conv195 = sext i8 %115 to i32
  %sub196 = sub nsw i32 %conv195, 48
  store i32 %sub196, i32* %digit, align 4
  br label %if.end.198

if.else.197:                                      ; preds = %while.body.187
  br label %while.end.199

if.end.198:                                       ; preds = %if.then.194
  br label %while.cond.169

while.end.199:                                    ; preds = %if.else.197, %land.end.186
  %116 = load i32, i32* %digit, align 4
  %cmp200 = icmp sge i32 %116, 0
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.222

land.lhs.true.202:                                ; preds = %while.end.199
  %117 = load i32, i32* %digit, align 4
  %cmp203 = icmp sle i32 %117, 9
  br i1 %cmp203, label %land.lhs.true.205, label %if.end.222

land.lhs.true.205:                                ; preds = %land.lhs.true.202
  %118 = load i8*, i8** %s, align 8
  %119 = load i8*, i8** %send, align 8
  %cmp206 = icmp ult i8* %118, %119
  br i1 %cmp206, label %if.then.208, label %if.end.222

if.then.208:                                      ; preds = %land.lhs.true.205
  br label %do.body

do.body:                                          ; preds = %land.end.221, %if.then.208
  %120 = load i8*, i8** %s, align 8
  %incdec.ptr209 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr209, i8** %s, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %121 = load i8*, i8** %s, align 8
  %122 = load i8*, i8** %send, align 8
  %cmp210 = icmp ult i8* %121, %122
  br i1 %cmp210, label %land.rhs.212, label %land.end.221

land.rhs.212:                                     ; preds = %do.cond
  %123 = load i8*, i8** %s, align 8
  %124 = load i8, i8* %123, align 1
  %conv213 = sext i8 %124 to i32
  %cmp214 = icmp sge i32 %conv213, 48
  br i1 %cmp214, label %land.rhs.216, label %land.end.220

land.rhs.216:                                     ; preds = %land.rhs.212
  %125 = load i8*, i8** %s, align 8
  %126 = load i8, i8* %125, align 1
  %conv217 = sext i8 %126 to i32
  %cmp218 = icmp sle i32 %conv217, 57
  br label %land.end.220

land.end.220:                                     ; preds = %land.rhs.216, %land.rhs.212
  %127 = phi i1 [ false, %land.rhs.212 ], [ %cmp218, %land.rhs.216 ]
  br label %land.end.221

land.end.221:                                     ; preds = %land.end.220, %do.cond
  %128 = phi i1 [ false, %do.cond ], [ %127, %land.end.220 ]
  br i1 %128, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.221
  %129 = load i32, i32* %numtype, align 4
  %or = or i32 %129, 2
  store i32 %or, i32* %numtype, align 4
  br label %skip_value

if.end.222:                                       ; preds = %land.lhs.true.205, %land.lhs.true.202, %while.end.199
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.159
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %land.lhs.true.156, %if.then.151
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.144
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %land.lhs.true.141, %if.then.136
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.then.129
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %land.lhs.true.126, %if.then.121
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.114
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %land.lhs.true.111, %if.then.106
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.99
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %land.lhs.true.96, %if.then.91
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.then.84
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %land.lhs.true.81, %if.then.76
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.69
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %land.lhs.true.66, %if.then.61
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.56
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %land.lhs.true.53, %if.then.48
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.42
  %130 = load i32, i32* %numtype, align 4
  %or240 = or i32 %130, 1
  store i32 %or240, i32* %numtype, align 4
  %131 = load i64*, i64** %valuep.addr, align 8
  %tobool = icmp ne i64* %131, null
  br i1 %tobool, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %if.end.239
  %132 = load i64, i64* %value, align 8
  %133 = load i64*, i64** %valuep.addr, align 8
  store i64 %132, i64* %133, align 8
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %if.end.239
  br label %skip_value

skip_value:                                       ; preds = %if.end.242, %do.end
  %134 = load i8*, i8** %send, align 8
  %call = call signext i8 @Perl_grok_numeric_radix(i8** %s, i8* %134)
  %tobool243 = icmp ne i8 %call, 0
  br i1 %tobool243, label %if.then.244, label %if.end.262

if.then.244:                                      ; preds = %skip_value
  %135 = load i32, i32* %numtype, align 4
  %or245 = or i32 %135, 4
  store i32 %or245, i32* %numtype, align 4
  br label %while.cond.246

while.cond.246:                                   ; preds = %while.body.259, %if.then.244
  %136 = load i8*, i8** %s, align 8
  %137 = load i8*, i8** %send, align 8
  %cmp247 = icmp ult i8* %136, %137
  br i1 %cmp247, label %land.rhs.249, label %land.end.258

land.rhs.249:                                     ; preds = %while.cond.246
  %138 = load i8*, i8** %s, align 8
  %139 = load i8, i8* %138, align 1
  %conv250 = sext i8 %139 to i32
  %cmp251 = icmp sge i32 %conv250, 48
  br i1 %cmp251, label %land.rhs.253, label %land.end.257

land.rhs.253:                                     ; preds = %land.rhs.249
  %140 = load i8*, i8** %s, align 8
  %141 = load i8, i8* %140, align 1
  %conv254 = sext i8 %141 to i32
  %cmp255 = icmp sle i32 %conv254, 57
  br label %land.end.257

land.end.257:                                     ; preds = %land.rhs.253, %land.rhs.249
  %142 = phi i1 [ false, %land.rhs.249 ], [ %cmp255, %land.rhs.253 ]
  br label %land.end.258

land.end.258:                                     ; preds = %land.end.257, %while.cond.246
  %143 = phi i1 [ false, %while.cond.246 ], [ %142, %land.end.257 ]
  br i1 %143, label %while.body.259, label %while.end.261

while.body.259:                                   ; preds = %land.end.258
  %144 = load i8*, i8** %s, align 8
  %incdec.ptr260 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr260, i8** %s, align 8
  br label %while.cond.246

while.end.261:                                    ; preds = %land.end.258
  br label %if.end.262

if.end.262:                                       ; preds = %while.end.261, %skip_value
  br label %if.end.441

if.else.263:                                      ; preds = %land.lhs.true, %if.end.35
  %145 = load i8*, i8** %send, align 8
  %call264 = call signext i8 @Perl_grok_numeric_radix(i8** %s, i8* %145)
  %tobool265 = icmp ne i8 %call264, 0
  br i1 %tobool265, label %if.then.266, label %if.else.300

if.then.266:                                      ; preds = %if.else.263
  %146 = load i32, i32* %numtype, align 4
  %or267 = or i32 %146, 5
  store i32 %or267, i32* %numtype, align 4
  %147 = load i8*, i8** %s, align 8
  %148 = load i8*, i8** %send, align 8
  %cmp268 = icmp ult i8* %147, %148
  br i1 %cmp268, label %land.lhs.true.270, label %if.else.298

land.lhs.true.270:                                ; preds = %if.then.266
  %149 = load i8*, i8** %s, align 8
  %150 = load i8, i8* %149, align 1
  %conv271 = sext i8 %150 to i32
  %cmp272 = icmp sge i32 %conv271, 48
  br i1 %cmp272, label %land.lhs.true.274, label %if.else.298

land.lhs.true.274:                                ; preds = %land.lhs.true.270
  %151 = load i8*, i8** %s, align 8
  %152 = load i8, i8* %151, align 1
  %conv275 = sext i8 %152 to i32
  %cmp276 = icmp sle i32 %conv275, 57
  br i1 %cmp276, label %if.then.278, label %if.else.298

if.then.278:                                      ; preds = %land.lhs.true.274
  br label %do.body.279

do.body.279:                                      ; preds = %land.end.293, %if.then.278
  %153 = load i8*, i8** %s, align 8
  %incdec.ptr280 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr280, i8** %s, align 8
  br label %do.cond.281

do.cond.281:                                      ; preds = %do.body.279
  %154 = load i8*, i8** %s, align 8
  %155 = load i8*, i8** %send, align 8
  %cmp282 = icmp ult i8* %154, %155
  br i1 %cmp282, label %land.rhs.284, label %land.end.293

land.rhs.284:                                     ; preds = %do.cond.281
  %156 = load i8*, i8** %s, align 8
  %157 = load i8, i8* %156, align 1
  %conv285 = sext i8 %157 to i32
  %cmp286 = icmp sge i32 %conv285, 48
  br i1 %cmp286, label %land.rhs.288, label %land.end.292

land.rhs.288:                                     ; preds = %land.rhs.284
  %158 = load i8*, i8** %s, align 8
  %159 = load i8, i8* %158, align 1
  %conv289 = sext i8 %159 to i32
  %cmp290 = icmp sle i32 %conv289, 57
  br label %land.end.292

land.end.292:                                     ; preds = %land.rhs.288, %land.rhs.284
  %160 = phi i1 [ false, %land.rhs.284 ], [ %cmp290, %land.rhs.288 ]
  br label %land.end.293

land.end.293:                                     ; preds = %land.end.292, %do.cond.281
  %161 = phi i1 [ false, %do.cond.281 ], [ %160, %land.end.292 ]
  br i1 %161, label %do.body.279, label %do.end.294

do.end.294:                                       ; preds = %land.end.293
  %162 = load i64*, i64** %valuep.addr, align 8
  %tobool295 = icmp ne i64* %162, null
  br i1 %tobool295, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %do.end.294
  %163 = load i64*, i64** %valuep.addr, align 8
  store i64 0, i64* %163, align 8
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %do.end.294
  br label %if.end.299

if.else.298:                                      ; preds = %land.lhs.true.274, %land.lhs.true.270, %if.then.266
  store i32 0, i32* %retval
  br label %return

if.end.299:                                       ; preds = %if.end.297
  br label %if.end.440

if.else.300:                                      ; preds = %if.else.263
  %164 = load i8*, i8** %s, align 8
  %165 = load i8, i8* %164, align 1
  %conv301 = sext i8 %165 to i32
  %cmp302 = icmp eq i32 %conv301, 73
  br i1 %cmp302, label %if.then.308, label %lor.lhs.false.304

lor.lhs.false.304:                                ; preds = %if.else.300
  %166 = load i8*, i8** %s, align 8
  %167 = load i8, i8* %166, align 1
  %conv305 = sext i8 %167 to i32
  %cmp306 = icmp eq i32 %conv305, 105
  br i1 %cmp306, label %if.then.308, label %if.else.401

if.then.308:                                      ; preds = %lor.lhs.false.304, %if.else.300
  %168 = load i8*, i8** %s, align 8
  %incdec.ptr309 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %incdec.ptr309, i8** %s, align 8
  %169 = load i8*, i8** %s, align 8
  %170 = load i8*, i8** %send, align 8
  %cmp310 = icmp eq i8* %169, %170
  br i1 %cmp310, label %if.then.320, label %lor.lhs.false.312

lor.lhs.false.312:                                ; preds = %if.then.308
  %171 = load i8*, i8** %s, align 8
  %172 = load i8, i8* %171, align 1
  %conv313 = sext i8 %172 to i32
  %cmp314 = icmp ne i32 %conv313, 78
  br i1 %cmp314, label %land.lhs.true.316, label %if.end.321

land.lhs.true.316:                                ; preds = %lor.lhs.false.312
  %173 = load i8*, i8** %s, align 8
  %174 = load i8, i8* %173, align 1
  %conv317 = sext i8 %174 to i32
  %cmp318 = icmp ne i32 %conv317, 110
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %land.lhs.true.316, %if.then.308
  store i32 0, i32* %retval
  br label %return

if.end.321:                                       ; preds = %land.lhs.true.316, %lor.lhs.false.312
  %175 = load i8*, i8** %s, align 8
  %incdec.ptr322 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr322, i8** %s, align 8
  %176 = load i8*, i8** %s, align 8
  %177 = load i8*, i8** %send, align 8
  %cmp323 = icmp eq i8* %176, %177
  br i1 %cmp323, label %if.then.333, label %lor.lhs.false.325

lor.lhs.false.325:                                ; preds = %if.end.321
  %178 = load i8*, i8** %s, align 8
  %179 = load i8, i8* %178, align 1
  %conv326 = sext i8 %179 to i32
  %cmp327 = icmp ne i32 %conv326, 70
  br i1 %cmp327, label %land.lhs.true.329, label %if.end.334

land.lhs.true.329:                                ; preds = %lor.lhs.false.325
  %180 = load i8*, i8** %s, align 8
  %181 = load i8, i8* %180, align 1
  %conv330 = sext i8 %181 to i32
  %cmp331 = icmp ne i32 %conv330, 102
  br i1 %cmp331, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %land.lhs.true.329, %if.end.321
  store i32 0, i32* %retval
  br label %return

if.end.334:                                       ; preds = %land.lhs.true.329, %lor.lhs.false.325
  %182 = load i8*, i8** %s, align 8
  %incdec.ptr335 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr335, i8** %s, align 8
  %183 = load i8*, i8** %s, align 8
  %184 = load i8*, i8** %send, align 8
  %cmp336 = icmp ult i8* %183, %184
  br i1 %cmp336, label %land.lhs.true.338, label %if.end.400

land.lhs.true.338:                                ; preds = %if.end.334
  %185 = load i8*, i8** %s, align 8
  %186 = load i8, i8* %185, align 1
  %conv339 = sext i8 %186 to i32
  %cmp340 = icmp eq i32 %conv339, 73
  br i1 %cmp340, label %if.then.346, label %lor.lhs.false.342

lor.lhs.false.342:                                ; preds = %land.lhs.true.338
  %187 = load i8*, i8** %s, align 8
  %188 = load i8, i8* %187, align 1
  %conv343 = sext i8 %188 to i32
  %cmp344 = icmp eq i32 %conv343, 105
  br i1 %cmp344, label %if.then.346, label %if.end.400

if.then.346:                                      ; preds = %lor.lhs.false.342, %land.lhs.true.338
  %189 = load i8*, i8** %s, align 8
  %incdec.ptr347 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr347, i8** %s, align 8
  %190 = load i8*, i8** %s, align 8
  %191 = load i8*, i8** %send, align 8
  %cmp348 = icmp eq i8* %190, %191
  br i1 %cmp348, label %if.then.358, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %if.then.346
  %192 = load i8*, i8** %s, align 8
  %193 = load i8, i8* %192, align 1
  %conv351 = sext i8 %193 to i32
  %cmp352 = icmp ne i32 %conv351, 78
  br i1 %cmp352, label %land.lhs.true.354, label %if.end.359

land.lhs.true.354:                                ; preds = %lor.lhs.false.350
  %194 = load i8*, i8** %s, align 8
  %195 = load i8, i8* %194, align 1
  %conv355 = sext i8 %195 to i32
  %cmp356 = icmp ne i32 %conv355, 110
  br i1 %cmp356, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %land.lhs.true.354, %if.then.346
  store i32 0, i32* %retval
  br label %return

if.end.359:                                       ; preds = %land.lhs.true.354, %lor.lhs.false.350
  %196 = load i8*, i8** %s, align 8
  %incdec.ptr360 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr360, i8** %s, align 8
  %197 = load i8*, i8** %s, align 8
  %198 = load i8*, i8** %send, align 8
  %cmp361 = icmp eq i8* %197, %198
  br i1 %cmp361, label %if.then.371, label %lor.lhs.false.363

lor.lhs.false.363:                                ; preds = %if.end.359
  %199 = load i8*, i8** %s, align 8
  %200 = load i8, i8* %199, align 1
  %conv364 = sext i8 %200 to i32
  %cmp365 = icmp ne i32 %conv364, 73
  br i1 %cmp365, label %land.lhs.true.367, label %if.end.372

land.lhs.true.367:                                ; preds = %lor.lhs.false.363
  %201 = load i8*, i8** %s, align 8
  %202 = load i8, i8* %201, align 1
  %conv368 = sext i8 %202 to i32
  %cmp369 = icmp ne i32 %conv368, 105
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %land.lhs.true.367, %if.end.359
  store i32 0, i32* %retval
  br label %return

if.end.372:                                       ; preds = %land.lhs.true.367, %lor.lhs.false.363
  %203 = load i8*, i8** %s, align 8
  %incdec.ptr373 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr373, i8** %s, align 8
  %204 = load i8*, i8** %s, align 8
  %205 = load i8*, i8** %send, align 8
  %cmp374 = icmp eq i8* %204, %205
  br i1 %cmp374, label %if.then.384, label %lor.lhs.false.376

lor.lhs.false.376:                                ; preds = %if.end.372
  %206 = load i8*, i8** %s, align 8
  %207 = load i8, i8* %206, align 1
  %conv377 = sext i8 %207 to i32
  %cmp378 = icmp ne i32 %conv377, 84
  br i1 %cmp378, label %land.lhs.true.380, label %if.end.385

land.lhs.true.380:                                ; preds = %lor.lhs.false.376
  %208 = load i8*, i8** %s, align 8
  %209 = load i8, i8* %208, align 1
  %conv381 = sext i8 %209 to i32
  %cmp382 = icmp ne i32 %conv381, 116
  br i1 %cmp382, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %land.lhs.true.380, %if.end.372
  store i32 0, i32* %retval
  br label %return

if.end.385:                                       ; preds = %land.lhs.true.380, %lor.lhs.false.376
  %210 = load i8*, i8** %s, align 8
  %incdec.ptr386 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr386, i8** %s, align 8
  %211 = load i8*, i8** %s, align 8
  %212 = load i8*, i8** %send, align 8
  %cmp387 = icmp eq i8* %211, %212
  br i1 %cmp387, label %if.then.397, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %if.end.385
  %213 = load i8*, i8** %s, align 8
  %214 = load i8, i8* %213, align 1
  %conv390 = sext i8 %214 to i32
  %cmp391 = icmp ne i32 %conv390, 89
  br i1 %cmp391, label %land.lhs.true.393, label %if.end.398

land.lhs.true.393:                                ; preds = %lor.lhs.false.389
  %215 = load i8*, i8** %s, align 8
  %216 = load i8, i8* %215, align 1
  %conv394 = sext i8 %216 to i32
  %cmp395 = icmp ne i32 %conv394, 121
  br i1 %cmp395, label %if.then.397, label %if.end.398

if.then.397:                                      ; preds = %land.lhs.true.393, %if.end.385
  store i32 0, i32* %retval
  br label %return

if.end.398:                                       ; preds = %land.lhs.true.393, %lor.lhs.false.389
  %217 = load i8*, i8** %s, align 8
  %incdec.ptr399 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %incdec.ptr399, i8** %s, align 8
  br label %if.end.400

if.end.400:                                       ; preds = %if.end.398, %lor.lhs.false.342, %if.end.334
  store i32 1, i32* %sawinf, align 4
  br label %if.end.439

if.else.401:                                      ; preds = %lor.lhs.false.304
  %218 = load i8*, i8** %s, align 8
  %219 = load i8, i8* %218, align 1
  %conv402 = sext i8 %219 to i32
  %cmp403 = icmp eq i32 %conv402, 78
  br i1 %cmp403, label %if.then.409, label %lor.lhs.false.405

lor.lhs.false.405:                                ; preds = %if.else.401
  %220 = load i8*, i8** %s, align 8
  %221 = load i8, i8* %220, align 1
  %conv406 = sext i8 %221 to i32
  %cmp407 = icmp eq i32 %conv406, 110
  br i1 %cmp407, label %if.then.409, label %if.else.437

if.then.409:                                      ; preds = %lor.lhs.false.405, %if.else.401
  %222 = load i8*, i8** %s, align 8
  %incdec.ptr410 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr410, i8** %s, align 8
  %223 = load i8*, i8** %s, align 8
  %224 = load i8*, i8** %send, align 8
  %cmp411 = icmp eq i8* %223, %224
  br i1 %cmp411, label %if.then.421, label %lor.lhs.false.413

lor.lhs.false.413:                                ; preds = %if.then.409
  %225 = load i8*, i8** %s, align 8
  %226 = load i8, i8* %225, align 1
  %conv414 = sext i8 %226 to i32
  %cmp415 = icmp ne i32 %conv414, 65
  br i1 %cmp415, label %land.lhs.true.417, label %if.end.422

land.lhs.true.417:                                ; preds = %lor.lhs.false.413
  %227 = load i8*, i8** %s, align 8
  %228 = load i8, i8* %227, align 1
  %conv418 = sext i8 %228 to i32
  %cmp419 = icmp ne i32 %conv418, 97
  br i1 %cmp419, label %if.then.421, label %if.end.422

if.then.421:                                      ; preds = %land.lhs.true.417, %if.then.409
  store i32 0, i32* %retval
  br label %return

if.end.422:                                       ; preds = %land.lhs.true.417, %lor.lhs.false.413
  %229 = load i8*, i8** %s, align 8
  %incdec.ptr423 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %incdec.ptr423, i8** %s, align 8
  %230 = load i8*, i8** %s, align 8
  %231 = load i8*, i8** %send, align 8
  %cmp424 = icmp eq i8* %230, %231
  br i1 %cmp424, label %if.then.434, label %lor.lhs.false.426

lor.lhs.false.426:                                ; preds = %if.end.422
  %232 = load i8*, i8** %s, align 8
  %233 = load i8, i8* %232, align 1
  %conv427 = sext i8 %233 to i32
  %cmp428 = icmp ne i32 %conv427, 78
  br i1 %cmp428, label %land.lhs.true.430, label %if.end.435

land.lhs.true.430:                                ; preds = %lor.lhs.false.426
  %234 = load i8*, i8** %s, align 8
  %235 = load i8, i8* %234, align 1
  %conv431 = sext i8 %235 to i32
  %cmp432 = icmp ne i32 %conv431, 110
  br i1 %cmp432, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %land.lhs.true.430, %if.end.422
  store i32 0, i32* %retval
  br label %return

if.end.435:                                       ; preds = %land.lhs.true.430, %lor.lhs.false.426
  %236 = load i8*, i8** %s, align 8
  %incdec.ptr436 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr436, i8** %s, align 8
  store i32 1, i32* %sawnan, align 4
  br label %if.end.438

if.else.437:                                      ; preds = %lor.lhs.false.405
  store i32 0, i32* %retval
  br label %return

if.end.438:                                       ; preds = %if.end.435
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.438, %if.end.400
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.end.299
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %if.end.262
  %237 = load i32, i32* %sawinf, align 4
  %tobool442 = icmp ne i32 %237, 0
  br i1 %tobool442, label %if.then.443, label %if.else.445

if.then.443:                                      ; preds = %if.end.441
  %238 = load i32, i32* %numtype, align 4
  %and = and i32 %238, 8
  store i32 %and, i32* %numtype, align 4
  %239 = load i32, i32* %numtype, align 4
  %or444 = or i32 %239, 20
  store i32 %or444, i32* %numtype, align 4
  br label %if.end.510

if.else.445:                                      ; preds = %if.end.441
  %240 = load i32, i32* %sawnan, align 4
  %tobool446 = icmp ne i32 %240, 0
  br i1 %tobool446, label %if.then.447, label %if.else.450

if.then.447:                                      ; preds = %if.else.445
  %241 = load i32, i32* %numtype, align 4
  %and448 = and i32 %241, 8
  store i32 %and448, i32* %numtype, align 4
  %242 = load i32, i32* %numtype, align 4
  %or449 = or i32 %242, 36
  store i32 %or449, i32* %numtype, align 4
  br label %if.end.509

if.else.450:                                      ; preds = %if.else.445
  %243 = load i8*, i8** %s, align 8
  %244 = load i8*, i8** %send, align 8
  %cmp451 = icmp ult i8* %243, %244
  br i1 %cmp451, label %if.then.453, label %if.end.508

if.then.453:                                      ; preds = %if.else.450
  %245 = load i8*, i8** %s, align 8
  %246 = load i8, i8* %245, align 1
  %conv454 = sext i8 %246 to i32
  %cmp455 = icmp eq i32 %conv454, 101
  br i1 %cmp455, label %if.then.461, label %lor.lhs.false.457

lor.lhs.false.457:                                ; preds = %if.then.453
  %247 = load i8*, i8** %s, align 8
  %248 = load i8, i8* %247, align 1
  %conv458 = sext i8 %248 to i32
  %cmp459 = icmp eq i32 %conv458, 69
  br i1 %cmp459, label %if.then.461, label %if.end.507

if.then.461:                                      ; preds = %lor.lhs.false.457, %if.then.453
  %249 = load i32, i32* %numtype, align 4
  %and462 = and i32 %249, 8
  store i32 %and462, i32* %numtype, align 4
  %250 = load i32, i32* %numtype, align 4
  %or463 = or i32 %250, 4
  store i32 %or463, i32* %numtype, align 4
  %251 = load i8*, i8** %s, align 8
  %incdec.ptr464 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %incdec.ptr464, i8** %s, align 8
  %252 = load i8*, i8** %s, align 8
  %253 = load i8*, i8** %send, align 8
  %cmp465 = icmp ult i8* %252, %253
  br i1 %cmp465, label %land.lhs.true.467, label %if.end.477

land.lhs.true.467:                                ; preds = %if.then.461
  %254 = load i8*, i8** %s, align 8
  %255 = load i8, i8* %254, align 1
  %conv468 = sext i8 %255 to i32
  %cmp469 = icmp eq i32 %conv468, 45
  br i1 %cmp469, label %if.then.475, label %lor.lhs.false.471

lor.lhs.false.471:                                ; preds = %land.lhs.true.467
  %256 = load i8*, i8** %s, align 8
  %257 = load i8, i8* %256, align 1
  %conv472 = sext i8 %257 to i32
  %cmp473 = icmp eq i32 %conv472, 43
  br i1 %cmp473, label %if.then.475, label %if.end.477

if.then.475:                                      ; preds = %lor.lhs.false.471, %land.lhs.true.467
  %258 = load i8*, i8** %s, align 8
  %incdec.ptr476 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %incdec.ptr476, i8** %s, align 8
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.475, %lor.lhs.false.471, %if.then.461
  %259 = load i8*, i8** %s, align 8
  %260 = load i8*, i8** %send, align 8
  %cmp478 = icmp ult i8* %259, %260
  br i1 %cmp478, label %land.lhs.true.480, label %if.else.505

land.lhs.true.480:                                ; preds = %if.end.477
  %261 = load i8*, i8** %s, align 8
  %262 = load i8, i8* %261, align 1
  %conv481 = sext i8 %262 to i32
  %cmp482 = icmp sge i32 %conv481, 48
  br i1 %cmp482, label %land.lhs.true.484, label %if.else.505

land.lhs.true.484:                                ; preds = %land.lhs.true.480
  %263 = load i8*, i8** %s, align 8
  %264 = load i8, i8* %263, align 1
  %conv485 = sext i8 %264 to i32
  %cmp486 = icmp sle i32 %conv485, 57
  br i1 %cmp486, label %if.then.488, label %if.else.505

if.then.488:                                      ; preds = %land.lhs.true.484
  br label %do.body.489

do.body.489:                                      ; preds = %land.end.503, %if.then.488
  %265 = load i8*, i8** %s, align 8
  %incdec.ptr490 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %incdec.ptr490, i8** %s, align 8
  br label %do.cond.491

do.cond.491:                                      ; preds = %do.body.489
  %266 = load i8*, i8** %s, align 8
  %267 = load i8*, i8** %send, align 8
  %cmp492 = icmp ult i8* %266, %267
  br i1 %cmp492, label %land.rhs.494, label %land.end.503

land.rhs.494:                                     ; preds = %do.cond.491
  %268 = load i8*, i8** %s, align 8
  %269 = load i8, i8* %268, align 1
  %conv495 = sext i8 %269 to i32
  %cmp496 = icmp sge i32 %conv495, 48
  br i1 %cmp496, label %land.rhs.498, label %land.end.502

land.rhs.498:                                     ; preds = %land.rhs.494
  %270 = load i8*, i8** %s, align 8
  %271 = load i8, i8* %270, align 1
  %conv499 = sext i8 %271 to i32
  %cmp500 = icmp sle i32 %conv499, 57
  br label %land.end.502

land.end.502:                                     ; preds = %land.rhs.498, %land.rhs.494
  %272 = phi i1 [ false, %land.rhs.494 ], [ %cmp500, %land.rhs.498 ]
  br label %land.end.503

land.end.503:                                     ; preds = %land.end.502, %do.cond.491
  %273 = phi i1 [ false, %do.cond.491 ], [ %272, %land.end.502 ]
  br i1 %273, label %do.body.489, label %do.end.504

do.end.504:                                       ; preds = %land.end.503
  br label %if.end.506

if.else.505:                                      ; preds = %land.lhs.true.484, %land.lhs.true.480, %if.end.477
  store i32 0, i32* %retval
  br label %return

if.end.506:                                       ; preds = %do.end.504
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.506, %lor.lhs.false.457
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %if.else.450
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %if.then.447
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.then.443
  br label %while.cond.511

while.cond.511:                                   ; preds = %while.body.536, %if.end.510
  %274 = load i8*, i8** %s, align 8
  %275 = load i8*, i8** %send, align 8
  %cmp512 = icmp ult i8* %274, %275
  br i1 %cmp512, label %land.rhs.514, label %land.end.535

land.rhs.514:                                     ; preds = %while.cond.511
  %276 = load i8*, i8** %s, align 8
  %277 = load i8, i8* %276, align 1
  %conv515 = sext i8 %277 to i32
  %cmp516 = icmp eq i32 %conv515, 32
  br i1 %cmp516, label %lor.end.534, label %lor.lhs.false.518

lor.lhs.false.518:                                ; preds = %land.rhs.514
  %278 = load i8*, i8** %s, align 8
  %279 = load i8, i8* %278, align 1
  %conv519 = sext i8 %279 to i32
  %cmp520 = icmp eq i32 %conv519, 9
  br i1 %cmp520, label %lor.end.534, label %lor.lhs.false.522

lor.lhs.false.522:                                ; preds = %lor.lhs.false.518
  %280 = load i8*, i8** %s, align 8
  %281 = load i8, i8* %280, align 1
  %conv523 = sext i8 %281 to i32
  %cmp524 = icmp eq i32 %conv523, 10
  br i1 %cmp524, label %lor.end.534, label %lor.lhs.false.526

lor.lhs.false.526:                                ; preds = %lor.lhs.false.522
  %282 = load i8*, i8** %s, align 8
  %283 = load i8, i8* %282, align 1
  %conv527 = sext i8 %283 to i32
  %cmp528 = icmp eq i32 %conv527, 13
  br i1 %cmp528, label %lor.end.534, label %lor.rhs.530

lor.rhs.530:                                      ; preds = %lor.lhs.false.526
  %284 = load i8*, i8** %s, align 8
  %285 = load i8, i8* %284, align 1
  %conv531 = sext i8 %285 to i32
  %cmp532 = icmp eq i32 %conv531, 12
  br label %lor.end.534

lor.end.534:                                      ; preds = %lor.rhs.530, %lor.lhs.false.526, %lor.lhs.false.522, %lor.lhs.false.518, %land.rhs.514
  %286 = phi i1 [ true, %lor.lhs.false.526 ], [ true, %lor.lhs.false.522 ], [ true, %lor.lhs.false.518 ], [ true, %land.rhs.514 ], [ %cmp532, %lor.rhs.530 ]
  br label %land.end.535

land.end.535:                                     ; preds = %lor.end.534, %while.cond.511
  %287 = phi i1 [ false, %while.cond.511 ], [ %286, %lor.end.534 ]
  br i1 %287, label %while.body.536, label %while.end.538

while.body.536:                                   ; preds = %land.end.535
  %288 = load i8*, i8** %s, align 8
  %incdec.ptr537 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %incdec.ptr537, i8** %s, align 8
  br label %while.cond.511

while.end.538:                                    ; preds = %land.end.535
  %289 = load i8*, i8** %s, align 8
  %290 = load i8*, i8** %send, align 8
  %cmp539 = icmp uge i8* %289, %290
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %while.end.538
  %291 = load i32, i32* %numtype, align 4
  store i32 %291, i32* %retval
  br label %return

if.end.542:                                       ; preds = %while.end.538
  %292 = load i64, i64* %len.addr, align 8
  %cmp543 = icmp eq i64 %292, 10
  br i1 %cmp543, label %land.lhs.true.545, label %if.end.552

land.lhs.true.545:                                ; preds = %if.end.542
  %293 = load i8*, i8** %pv.addr, align 8
  %call546 = call i32 @memcmp(i8* %293, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 10)
  %tobool547 = icmp ne i32 %call546, 0
  br i1 %tobool547, label %if.end.552, label %if.then.548

if.then.548:                                      ; preds = %land.lhs.true.545
  %294 = load i64*, i64** %valuep.addr, align 8
  %tobool549 = icmp ne i64* %294, null
  br i1 %tobool549, label %if.then.550, label %if.end.551

if.then.550:                                      ; preds = %if.then.548
  %295 = load i64*, i64** %valuep.addr, align 8
  store i64 0, i64* %295, align 8
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.550, %if.then.548
  store i32 1, i32* %retval
  br label %return

if.end.552:                                       ; preds = %land.lhs.true.545, %if.end.542
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.552, %if.end.551, %if.then.541, %if.else.505, %if.else.437, %if.then.434, %if.then.421, %if.then.397, %if.then.384, %if.then.371, %if.then.358, %if.then.333, %if.then.320, %if.else.298, %if.then.34, %if.then
  %296 = load i32, i32* %retval
  ret i32 %296
}

declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define double @Perl_my_atof(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %x = alloca double, align 8
  store i8* %s, i8** %s.addr, align 8
  store double 0.000000e+00, double* %x, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i8* @Perl_my_atof2(i8* %0, double* %x)
  %1 = load double, double* %x, align 8
  ret double %1
}

; Function Attrs: nounwind uwtable
define i8* @Perl_my_atof2(i8* %orig, double* %value) #0 {
entry:
  %orig.addr = alloca i8*, align 8
  %value.addr = alloca double*, align 8
  %result = alloca [3 x double], align 16
  %s = alloca i8*, align 8
  %accumulator = alloca [2 x i64], align 16
  %negative = alloca i8, align 1
  %send = alloca i8*, align 8
  %seen_digit = alloca i8, align 1
  %exp_adjust = alloca [2 x i32], align 4
  %exp_acc = alloca [2 x i32], align 4
  %exponent = alloca i32, align 4
  %seen_dp = alloca i32, align 4
  %digit = alloca i32, align 4
  %old_digit = alloca i32, align 4
  %sig_digits = alloca i32, align 4
  %expnegative = alloca i8, align 1
  store i8* %orig, i8** %orig.addr, align 8
  store double* %value, double** %value.addr, align 8
  %0 = bitcast [3 x double]* %result to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 16, i1 false)
  %1 = load i8*, i8** %orig.addr, align 8
  store i8* %1, i8** %s, align 8
  %2 = bitcast [2 x i64]* %accumulator to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 16, i1 false)
  store i8 0, i8* %negative, align 1
  %3 = load i8*, i8** %s, align 8
  %4 = load i8*, i8** %orig.addr, align 8
  %call = call i64 @strlen(i8* %4)
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %call
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %send, align 8
  store i8 0, i8* %seen_digit, align 1
  %5 = bitcast [2 x i32]* %exp_adjust to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 8, i32 4, i1 false)
  %6 = bitcast [2 x i32]* %exp_acc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([2 x i32]* @Perl_my_atof2.exp_acc to i8*), i64 8, i32 4, i1 false)
  store i32 0, i32* %exponent, align 4
  store i32 0, i32* %seen_dp, align 4
  store i32 0, i32* %digit, align 4
  store i32 0, i32* %old_digit, align 4
  store i32 0, i32* %sig_digits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load i8*, i8** %s, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %9 = load i8*, i8** %s, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 9
  br i1 %cmp4, label %lor.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %11 = load i8*, i8** %s, align 8
  %12 = load i8, i8* %11, align 1
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 10
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %13 = load i8*, i8** %s, align 8
  %14 = load i8, i8* %13, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 13
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.10
  %15 = load i8*, i8** %s, align 8
  %16 = load i8, i8* %15, align 1
  %conv14 = sext i8 %16 to i32
  %cmp15 = icmp eq i32 %conv14, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %17 = phi i1 [ true, %lor.lhs.false.10 ], [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp15, %lor.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %18 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %19 = load i8*, i8** %s, align 8
  %20 = load i8, i8* %19, align 1
  %conv17 = sext i8 %20 to i32
  switch i32 %conv17, label %sw.epilog [
    i32 45, label %sw.bb
    i32 43, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %while.end
  store i8 1, i8* %negative, align 1
  br label %sw.bb.18

sw.bb.18:                                         ; preds = %while.end, %sw.bb
  %21 = load i8*, i8** %s, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr19, i8** %s, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.18, %while.end
  br label %while.body.21

while.body.21:                                    ; preds = %sw.epilog, %if.then.35, %if.end.136
  %22 = load i8*, i8** %s, align 8
  %23 = load i8, i8* %22, align 1
  %conv22 = sext i8 %23 to i32
  %cmp23 = icmp sge i32 %conv22, 48
  br i1 %cmp23, label %land.lhs.true, label %if.else.110

land.lhs.true:                                    ; preds = %while.body.21
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %conv25 = sext i8 %25 to i32
  %cmp26 = icmp sle i32 %conv25, 57
  br i1 %cmp26, label %if.then, label %if.else.110

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* %seen_digit, align 1
  %26 = load i32, i32* %digit, align 4
  store i32 %26, i32* %old_digit, align 4
  %27 = load i8*, i8** %s, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr28, i8** %s, align 8
  %28 = load i8, i8* %27, align 1
  %conv29 = sext i8 %28 to i32
  %sub = sub nsw i32 %conv29, 48
  store i32 %sub, i32* %digit, align 4
  %29 = load i32, i32* %seen_dp, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %exp_adjust, i32 0, i64 1
  %30 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.then
  %31 = load i32, i32* %sig_digits, align 4
  %tobool31 = icmp ne i32 %31, 0
  br i1 %tobool31, label %if.end.36, label %land.lhs.true.32

land.lhs.true.32:                                 ; preds = %if.end
  %32 = load i32, i32* %digit, align 4
  %cmp33 = icmp eq i32 %32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.32
  br label %while.body.21

if.end.36:                                        ; preds = %land.lhs.true.32, %if.end
  %33 = load i32, i32* %sig_digits, align 4
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, i32* %sig_digits, align 4
  %cmp38 = icmp sgt i32 %inc37, 17
  br i1 %cmp38, label %if.then.40, label %if.else.79

if.then.40:                                       ; preds = %if.end.36
  %34 = load i32, i32* %digit, align 4
  %cmp41 = icmp sgt i32 %34, 5
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.then.40
  %35 = load i32, i32* %seen_dp, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [2 x i64], [2 x i64]* %accumulator, i32 0, i64 %idxprom
  %36 = load i64, i64* %arrayidx44, align 8
  %inc45 = add i64 %36, 1
  store i64 %inc45, i64* %arrayidx44, align 8
  br label %if.end.56

if.else:                                          ; preds = %if.then.40
  %37 = load i32, i32* %digit, align 4
  %cmp46 = icmp eq i32 %37, 5
  br i1 %cmp46, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %if.else
  %38 = load i32, i32* %old_digit, align 4
  %rem = srem i32 %38, 2
  %tobool49 = icmp ne i32 %rem, 0
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.then.48
  %39 = load i32, i32* %seen_dp, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [2 x i64], [2 x i64]* %accumulator, i32 0, i64 %idxprom51
  %40 = load i64, i64* %arrayidx52, align 8
  %inc53 = add i64 %40, 1
  store i64 %inc53, i64* %arrayidx52, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.then.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.else
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.43
  %41 = load i32, i32* %seen_dp, align 4
  %tobool57 = icmp ne i32 %41, 0
  br i1 %tobool57, label %if.then.58, label %if.else.60

if.then.58:                                       ; preds = %if.end.56
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_adjust, i32 0, i64 1
  %42 = load i32, i32* %arrayidx59, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %arrayidx59, align 4
  br label %if.end.63

if.else.60:                                       ; preds = %if.end.56
  %arrayidx61 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_adjust, i32 0, i64 0
  %43 = load i32, i32* %arrayidx61, align 4
  %inc62 = add nsw i32 %43, 1
  store i32 %inc62, i32* %arrayidx61, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.58
  br label %while.cond.64

while.cond.64:                                    ; preds = %if.end.77, %if.end.63
  %44 = load i8*, i8** %s, align 8
  %45 = load i8, i8* %44, align 1
  %conv65 = sext i8 %45 to i32
  %cmp66 = icmp sge i32 %conv65, 48
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.64
  %46 = load i8*, i8** %s, align 8
  %47 = load i8, i8* %46, align 1
  %conv68 = sext i8 %47 to i32
  %cmp69 = icmp sle i32 %conv68, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.64
  %48 = phi i1 [ false, %while.cond.64 ], [ %cmp69, %land.rhs ]
  br i1 %48, label %while.body.71, label %while.end.78

while.body.71:                                    ; preds = %land.end
  %49 = load i8*, i8** %s, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr72, i8** %s, align 8
  %50 = load i32, i32* %seen_dp, align 4
  %tobool73 = icmp ne i32 %50, 0
  br i1 %tobool73, label %if.end.77, label %if.then.74

if.then.74:                                       ; preds = %while.body.71
  %arrayidx75 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_adjust, i32 0, i64 0
  %51 = load i32, i32* %arrayidx75, align 4
  %inc76 = add nsw i32 %51, 1
  store i32 %inc76, i32* %arrayidx75, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %while.body.71
  br label %while.cond.64

while.end.78:                                     ; preds = %land.end
  br label %if.end.109

if.else.79:                                       ; preds = %if.end.36
  %52 = load i32, i32* %seen_dp, align 4
  %idxprom80 = sext i32 %52 to i64
  %arrayidx81 = getelementptr inbounds [2 x i64], [2 x i64]* %accumulator, i32 0, i64 %idxprom80
  %53 = load i64, i64* %arrayidx81, align 8
  %cmp82 = icmp ugt i64 %53, 1844674407370955160
  br i1 %cmp82, label %if.then.84, label %if.end.99

if.then.84:                                       ; preds = %if.else.79
  %54 = load i32, i32* %seen_dp, align 4
  %idxprom85 = sext i32 %54 to i64
  %arrayidx86 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 %idxprom85
  %55 = load double, double* %arrayidx86, align 8
  %56 = load i32, i32* %seen_dp, align 4
  %idxprom87 = sext i32 %56 to i64
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_acc, i32 0, i64 %idxprom87
  %57 = load i32, i32* %arrayidx88, align 4
  %call89 = call double @S_mulexp10(double %55, i32 %57)
  %58 = load i32, i32* %seen_dp, align 4
  %idxprom90 = sext i32 %58 to i64
  %arrayidx91 = getelementptr inbounds [2 x i64], [2 x i64]* %accumulator, i32 0, i64 %idxprom90
  %59 = load i64, i64* %arrayidx91, align 8
  %conv92 = uitofp i64 %59 to double
  %add = fadd double %call89, %conv92
  %60 = load i32, i32* %seen_dp, align 4
  %idxprom93 = sext i32 %60 to i64
  %arrayidx94 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 %idxprom93
  store double %add, double* %arrayidx94, align 8
  %61 = load i32, i32* %seen_dp, align 4
  %idxprom95 = sext i32 %61 to i64
  %arrayidx96 = getelementptr inbounds [2 x i64], [2 x i64]* %accumulator, i32 0, i64 %idxprom95
  store i64 0, i64* %arrayidx96, align 8
  %62 = load i32, i32* %seen_dp, align 4
  %idxprom97 = sext i32 %62 to i64
  %arrayidx98 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_acc, i32 0, i64 %idxprom97
  store i32 0, i32* %arrayidx98, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.84, %if.else.79
  %63 = load i32, i32* %seen_dp, align 4
  %idxprom100 = sext i32 %63 to i64
  %arrayidx101 = getelementptr inbounds [2 x i64], [2 x i64]* %accumulator, i32 0, i64 %idxprom100
  %64 = load i64, i64* %arrayidx101, align 8
  %mul = mul i64 %64, 10
  %65 = load i32, i32* %digit, align 4
  %conv102 = sext i32 %65 to i64
  %add103 = add i64 %mul, %conv102
  %66 = load i32, i32* %seen_dp, align 4
  %idxprom104 = sext i32 %66 to i64
  %arrayidx105 = getelementptr inbounds [2 x i64], [2 x i64]* %accumulator, i32 0, i64 %idxprom104
  store i64 %add103, i64* %arrayidx105, align 8
  %67 = load i32, i32* %seen_dp, align 4
  %idxprom106 = sext i32 %67 to i64
  %arrayidx107 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_acc, i32 0, i64 %idxprom106
  %68 = load i32, i32* %arrayidx107, align 4
  %inc108 = add nsw i32 %68, 1
  store i32 %inc108, i32* %arrayidx107, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.99, %while.end.78
  br label %if.end.136

if.else.110:                                      ; preds = %land.lhs.true, %while.body.21
  %69 = load i32, i32* %seen_dp, align 4
  %tobool111 = icmp ne i32 %69, 0
  br i1 %tobool111, label %if.else.134, label %land.lhs.true.112

land.lhs.true.112:                                ; preds = %if.else.110
  %70 = load i8*, i8** %send, align 8
  %call113 = call signext i8 @Perl_grok_numeric_radix(i8** %s, i8* %70)
  %conv114 = sext i8 %call113 to i32
  %tobool115 = icmp ne i32 %conv114, 0
  br i1 %tobool115, label %if.then.116, label %if.else.134

if.then.116:                                      ; preds = %land.lhs.true.112
  store i32 1, i32* %seen_dp, align 4
  %71 = load i32, i32* %sig_digits, align 4
  %cmp117 = icmp sgt i32 %71, 17
  br i1 %cmp117, label %if.then.119, label %if.end.133

if.then.119:                                      ; preds = %if.then.116
  %72 = load i8*, i8** %s, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr120, i8** %s, align 8
  br label %while.cond.121

while.cond.121:                                   ; preds = %while.body.130, %if.then.119
  %73 = load i8*, i8** %s, align 8
  %74 = load i8, i8* %73, align 1
  %conv122 = sext i8 %74 to i32
  %cmp123 = icmp sge i32 %conv122, 48
  br i1 %cmp123, label %land.rhs.125, label %land.end.129

land.rhs.125:                                     ; preds = %while.cond.121
  %75 = load i8*, i8** %s, align 8
  %76 = load i8, i8* %75, align 1
  %conv126 = sext i8 %76 to i32
  %cmp127 = icmp sle i32 %conv126, 57
  br label %land.end.129

land.end.129:                                     ; preds = %land.rhs.125, %while.cond.121
  %77 = phi i1 [ false, %while.cond.121 ], [ %cmp127, %land.rhs.125 ]
  br i1 %77, label %while.body.130, label %while.end.132

while.body.130:                                   ; preds = %land.end.129
  %78 = load i8*, i8** %s, align 8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr131, i8** %s, align 8
  br label %while.cond.121

while.end.132:                                    ; preds = %land.end.129
  br label %while.end.137

if.end.133:                                       ; preds = %if.then.116
  br label %if.end.135

if.else.134:                                      ; preds = %land.lhs.true.112, %if.else.110
  br label %while.end.137

if.end.135:                                       ; preds = %if.end.133
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.109
  br label %while.body.21

while.end.137:                                    ; preds = %if.else.134, %while.end.132
  %arrayidx138 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 0
  %79 = load double, double* %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_acc, i32 0, i64 0
  %80 = load i32, i32* %arrayidx139, align 4
  %call140 = call double @S_mulexp10(double %79, i32 %80)
  %arrayidx141 = getelementptr inbounds [2 x i64], [2 x i64]* %accumulator, i32 0, i64 0
  %81 = load i64, i64* %arrayidx141, align 8
  %conv142 = uitofp i64 %81 to double
  %add143 = fadd double %call140, %conv142
  %arrayidx144 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 0
  store double %add143, double* %arrayidx144, align 8
  %82 = load i32, i32* %seen_dp, align 4
  %tobool145 = icmp ne i32 %82, 0
  br i1 %tobool145, label %if.then.146, label %if.end.154

if.then.146:                                      ; preds = %while.end.137
  %arrayidx147 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 1
  %83 = load double, double* %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_acc, i32 0, i64 1
  %84 = load i32, i32* %arrayidx148, align 4
  %call149 = call double @S_mulexp10(double %83, i32 %84)
  %arrayidx150 = getelementptr inbounds [2 x i64], [2 x i64]* %accumulator, i32 0, i64 1
  %85 = load i64, i64* %arrayidx150, align 8
  %conv151 = uitofp i64 %85 to double
  %add152 = fadd double %call149, %conv151
  %arrayidx153 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 1
  store double %add152, double* %arrayidx153, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.146, %while.end.137
  %86 = load i8, i8* %seen_digit, align 1
  %conv155 = sext i8 %86 to i32
  %tobool156 = icmp ne i32 %conv155, 0
  br i1 %tobool156, label %land.lhs.true.157, label %if.end.192

land.lhs.true.157:                                ; preds = %if.end.154
  %87 = load i8*, i8** %s, align 8
  %88 = load i8, i8* %87, align 1
  %conv158 = sext i8 %88 to i32
  %cmp159 = icmp eq i32 %conv158, 101
  br i1 %cmp159, label %if.then.165, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %land.lhs.true.157
  %89 = load i8*, i8** %s, align 8
  %90 = load i8, i8* %89, align 1
  %conv162 = sext i8 %90 to i32
  %cmp163 = icmp eq i32 %conv162, 69
  br i1 %cmp163, label %if.then.165, label %if.end.192

if.then.165:                                      ; preds = %lor.lhs.false.161, %land.lhs.true.157
  store i8 0, i8* %expnegative, align 1
  %91 = load i8*, i8** %s, align 8
  %incdec.ptr166 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr166, i8** %s, align 8
  %92 = load i8*, i8** %s, align 8
  %93 = load i8, i8* %92, align 1
  %conv167 = sext i8 %93 to i32
  switch i32 %conv167, label %sw.epilog.171 [
    i32 45, label %sw.bb.168
    i32 43, label %sw.bb.169
  ]

sw.bb.168:                                        ; preds = %if.then.165
  store i8 1, i8* %expnegative, align 1
  br label %sw.bb.169

sw.bb.169:                                        ; preds = %if.then.165, %sw.bb.168
  %94 = load i8*, i8** %s, align 8
  %incdec.ptr170 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr170, i8** %s, align 8
  br label %sw.epilog.171

sw.epilog.171:                                    ; preds = %sw.bb.169, %if.then.165
  br label %while.cond.172

while.cond.172:                                   ; preds = %while.body.181, %sw.epilog.171
  %95 = load i8*, i8** %s, align 8
  %96 = load i8, i8* %95, align 1
  %conv173 = sext i8 %96 to i32
  %cmp174 = icmp sge i32 %conv173, 48
  br i1 %cmp174, label %land.rhs.176, label %land.end.180

land.rhs.176:                                     ; preds = %while.cond.172
  %97 = load i8*, i8** %s, align 8
  %98 = load i8, i8* %97, align 1
  %conv177 = sext i8 %98 to i32
  %cmp178 = icmp sle i32 %conv177, 57
  br label %land.end.180

land.end.180:                                     ; preds = %land.rhs.176, %while.cond.172
  %99 = phi i1 [ false, %while.cond.172 ], [ %cmp178, %land.rhs.176 ]
  br i1 %99, label %while.body.181, label %while.end.187

while.body.181:                                   ; preds = %land.end.180
  %100 = load i32, i32* %exponent, align 4
  %mul182 = mul nsw i32 %100, 10
  %101 = load i8*, i8** %s, align 8
  %incdec.ptr183 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr183, i8** %s, align 8
  %102 = load i8, i8* %101, align 1
  %conv184 = sext i8 %102 to i32
  %sub185 = sub nsw i32 %conv184, 48
  %add186 = add nsw i32 %mul182, %sub185
  store i32 %add186, i32* %exponent, align 4
  br label %while.cond.172

while.end.187:                                    ; preds = %land.end.180
  %103 = load i8, i8* %expnegative, align 1
  %tobool188 = icmp ne i8 %103, 0
  br i1 %tobool188, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %while.end.187
  %104 = load i32, i32* %exponent, align 4
  %sub190 = sub nsw i32 0, %104
  store i32 %sub190, i32* %exponent, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %while.end.187
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %lor.lhs.false.161, %if.end.154
  %105 = load i32, i32* %seen_dp, align 4
  %tobool193 = icmp ne i32 %105, 0
  br i1 %tobool193, label %if.then.194, label %if.else.205

if.then.194:                                      ; preds = %if.end.192
  %arrayidx195 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 0
  %106 = load double, double* %arrayidx195, align 8
  %107 = load i32, i32* %exponent, align 4
  %arrayidx196 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_adjust, i32 0, i64 0
  %108 = load i32, i32* %arrayidx196, align 4
  %add197 = add nsw i32 %107, %108
  %call198 = call double @S_mulexp10(double %106, i32 %add197)
  %arrayidx199 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 1
  %109 = load double, double* %arrayidx199, align 8
  %110 = load i32, i32* %exponent, align 4
  %arrayidx200 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_adjust, i32 0, i64 1
  %111 = load i32, i32* %arrayidx200, align 4
  %sub201 = sub nsw i32 %110, %111
  %call202 = call double @S_mulexp10(double %109, i32 %sub201)
  %add203 = fadd double %call198, %call202
  %arrayidx204 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 2
  store double %add203, double* %arrayidx204, align 8
  br label %if.end.211

if.else.205:                                      ; preds = %if.end.192
  %arrayidx206 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 0
  %112 = load double, double* %arrayidx206, align 8
  %113 = load i32, i32* %exponent, align 4
  %arrayidx207 = getelementptr inbounds [2 x i32], [2 x i32]* %exp_adjust, i32 0, i64 0
  %114 = load i32, i32* %arrayidx207, align 4
  %add208 = add nsw i32 %113, %114
  %call209 = call double @S_mulexp10(double %112, i32 %add208)
  %arrayidx210 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 2
  store double %call209, double* %arrayidx210, align 8
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.205, %if.then.194
  %115 = load i8, i8* %negative, align 1
  %tobool212 = icmp ne i8 %115, 0
  br i1 %tobool212, label %if.then.213, label %if.end.217

if.then.213:                                      ; preds = %if.end.211
  %arrayidx214 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 2
  %116 = load double, double* %arrayidx214, align 8
  %sub215 = fsub double -0.000000e+00, %116
  %arrayidx216 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 2
  store double %sub215, double* %arrayidx216, align 8
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.213, %if.end.211
  %arrayidx218 = getelementptr inbounds [3 x double], [3 x double]* %result, i32 0, i64 2
  %117 = load double, double* %arrayidx218, align 8
  %118 = load double*, double** %value.addr, align 8
  store double %117, double* %118, align 8
  %119 = load i8*, i8** %s, align 8
  ret i8* %119
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal double @S_mulexp10(double %value, i32 %exponent) #0 {
entry:
  %retval = alloca double, align 8
  %value.addr = alloca double, align 8
  %exponent.addr = alloca i32, align 4
  %result = alloca double, align 8
  %power = alloca double, align 8
  %negative = alloca i8, align 1
  %bit = alloca i32, align 4
  store double %value, double* %value.addr, align 8
  store i32 %exponent, i32* %exponent.addr, align 4
  store double 1.000000e+00, double* %result, align 8
  store double 1.000000e+01, double* %power, align 8
  store i8 0, i8* %negative, align 1
  %0 = load i32, i32* %exponent.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %value.addr, align 8
  store double %1, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %value.addr, align 8
  %cmp1 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store double 0.000000e+00, double* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %exponent.addr, align 4
  %cmp4 = icmp slt i32 %3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i8 1, i8* %negative, align 1
  %4 = load i32, i32* %exponent.addr, align 4
  %sub = sub nsw i32 0, %4
  store i32 %sub, i32* %exponent.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  store i32 1, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %5 = load i32, i32* %exponent.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %exponent.addr, align 4
  %7 = load i32, i32* %bit, align 4
  %and = and i32 %6, %7
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %for.body
  %8 = load i32, i32* %bit, align 4
  %9 = load i32, i32* %exponent.addr, align 4
  %xor = xor i32 %9, %8
  store i32 %xor, i32* %exponent.addr, align 4
  %10 = load double, double* %power, align 8
  %11 = load double, double* %result, align 8
  %mul = fmul double %11, %10
  store double %mul, double* %result, align 8
  %12 = load i32, i32* %exponent.addr, align 4
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  br label %for.end

if.end.11:                                        ; preds = %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %for.body
  %13 = load double, double* %power, align 8
  %14 = load double, double* %power, align 8
  %mul13 = fmul double %14, %13
  store double %mul13, double* %power, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %15 = load i32, i32* %bit, align 4
  %shl = shl i32 %15, 1
  store i32 %shl, i32* %bit, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %16 = load i8, i8* %negative, align 1
  %conv = sext i8 %16 to i32
  %tobool14 = icmp ne i32 %conv, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %17 = load double, double* %value.addr, align 8
  %18 = load double, double* %result, align 8
  %div = fdiv double %17, %18
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %19 = load double, double* %value.addr, align 8
  %20 = load double, double* %result, align 8
  %mul15 = fmul double %19, %20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div, %cond.true ], [ %mul15, %cond.false ]
  store double %cond, double* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.2, %if.then
  %21 = load double, double* %retval
  ret double %21
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
