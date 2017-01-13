; ModuleID = './MultiSource.Applications.spiff/14.float.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.R_flstr = type { i32, i32, i8* }

@Z_err_buf = external global [0 x i8], align 1
@.str = private unnamed_addr constant [33 x i8] c"didn't use up all of %s in atocf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@F_floatsub.result = internal global %struct.R_flstr* null, align 8
@F_floatsub.needinit = internal global i32 1, align 4
@F_floatsub.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatsub.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatsub.diff = internal global [200 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [51 x i8] c"mantissas didn't get lined up properly in floatsub\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"lengths not equal in F_floatsub\00", align 1
@F_floatcmp.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatcmp.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.prod = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.result = internal global %struct.R_flstr* null, align 8
@F_floatmul.needinit = internal global i32 1, align 4
@F_floatmagadd.result = internal global %struct.R_flstr* null, align 8
@F_floatmagadd.needinit = internal global i32 1, align 4
@F_floatmagadd.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmagadd.man2 = internal global [200 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"numbers differ by too much in magnitude\00", align 1
@_F_stradd.result = internal global [200 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @F_isfloat(i8* %str, i32 %need_decimal, i32 %allow_sign) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %need_decimal.addr = alloca i32, align 4
  %allow_sign.addr = alloca i32, align 4
  %man_length = alloca i32, align 4
  %exp_length = alloca i32, align 4
  %got_a_digit = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %need_decimal, i32* %need_decimal.addr, align 4
  store i32 %allow_sign, i32* %allow_sign.addr, align 4
  store i32 0, i32* %man_length, align 4
  store i32 0, i32* %exp_length, align 4
  store i32 0, i32* %got_a_digit, align 4
  %0 = load i32, i32* %allow_sign.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 43, %conv
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 45, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %6 = load i32, i32* %man_length, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %man_length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %idxprom = sext i32 %conv5 to i64
  %call = call i16** @__ctype_b_loc() #5
  %9 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %10 to i32
  %and = and i32 %conv6, 2048
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %got_a_digit, align 4
  %11 = load i8*, i8** %str.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr8, i8** %str.addr, align 8
  %12 = load i32, i32* %man_length, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %man_length, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp eq i32 46, %conv10
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %while.end
  %15 = load i8*, i8** %str.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %str.addr, align 8
  %16 = load i32, i32* %man_length, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %man_length, align 4
  br label %if.end.19

if.else:                                          ; preds = %while.end
  %17 = load i32, i32* %need_decimal.addr, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.13
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.28, %if.end.19
  %18 = load i8*, i8** %str.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv21 = sext i8 %19 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %call23 = call i16** @__ctype_b_loc() #5
  %20 = load i16*, i16** %call23, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %20, i64 %idxprom22
  %21 = load i16, i16* %arrayidx24, align 2
  %conv25 = zext i16 %21 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %while.body.28, label %while.end.31

while.body.28:                                    ; preds = %while.cond.20
  store i32 1, i32* %got_a_digit, align 4
  %22 = load i8*, i8** %str.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr29, i8** %str.addr, align 8
  %23 = load i32, i32* %man_length, align 4
  %inc30 = add nsw i32 %23, 1
  store i32 %inc30, i32* %man_length, align 4
  br label %while.cond.20

while.end.31:                                     ; preds = %while.cond.20
  %24 = load i32, i32* %got_a_digit, align 4
  %tobool32 = icmp ne i32 %24, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %while.end.31
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %while.end.31
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv35 = sext i8 %26 to i32
  %cmp36 = icmp eq i32 101, %conv35
  br i1 %cmp36, label %if.then.50, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.34
  %27 = load i8*, i8** %str.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv39 = sext i8 %28 to i32
  %cmp40 = icmp eq i32 69, %conv39
  br i1 %cmp40, label %if.then.50, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.38
  %29 = load i8*, i8** %str.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv43 = sext i8 %30 to i32
  %cmp44 = icmp eq i32 100, %conv43
  br i1 %cmp44, label %if.then.50, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.42
  %31 = load i8*, i8** %str.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv47 = sext i8 %32 to i32
  %cmp48 = icmp eq i32 68, %conv47
  br i1 %cmp48, label %if.then.50, label %if.end.85

if.then.50:                                       ; preds = %lor.lhs.false.46, %lor.lhs.false.42, %lor.lhs.false.38, %if.end.34
  %33 = load i8*, i8** %str.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr51, i8** %str.addr, align 8
  %34 = load i32, i32* %exp_length, align 4
  %inc52 = add nsw i32 %34, 1
  store i32 %inc52, i32* %exp_length, align 4
  %35 = load i8*, i8** %str.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv53 = sext i8 %36 to i32
  %cmp54 = icmp eq i32 43, %conv53
  br i1 %cmp54, label %if.then.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.then.50
  %37 = load i8*, i8** %str.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv57 = sext i8 %38 to i32
  %cmp58 = icmp eq i32 45, %conv57
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %lor.lhs.false.56, %if.then.50
  %39 = load i8*, i8** %str.addr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr61, i8** %str.addr, align 8
  %40 = load i32, i32* %exp_length, align 4
  %inc62 = add nsw i32 %40, 1
  store i32 %inc62, i32* %exp_length, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %lor.lhs.false.56
  %41 = load i8*, i8** %str.addr, align 8
  %42 = load i8, i8* %41, align 1
  %conv64 = sext i8 %42 to i32
  %idxprom65 = sext i32 %conv64 to i64
  %call66 = call i16** @__ctype_b_loc() #5
  %43 = load i16*, i16** %call66, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %43, i64 %idxprom65
  %44 = load i16, i16* %arrayidx67, align 2
  %conv68 = zext i16 %44 to i32
  %and69 = and i32 %conv68, 2048
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.63
  %45 = load i32, i32* %man_length, align 4
  store i32 %45, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.63
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.81, %if.end.72
  %46 = load i8*, i8** %str.addr, align 8
  %47 = load i8, i8* %46, align 1
  %conv74 = sext i8 %47 to i32
  %idxprom75 = sext i32 %conv74 to i64
  %call76 = call i16** @__ctype_b_loc() #5
  %48 = load i16*, i16** %call76, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %48, i64 %idxprom75
  %49 = load i16, i16* %arrayidx77, align 2
  %conv78 = zext i16 %49 to i32
  %and79 = and i32 %conv78, 2048
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %while.body.81, label %while.end.84

while.body.81:                                    ; preds = %while.cond.73
  %50 = load i8*, i8** %str.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr82, i8** %str.addr, align 8
  %51 = load i32, i32* %exp_length, align 4
  %inc83 = add nsw i32 %51, 1
  store i32 %inc83, i32* %exp_length, align 4
  br label %while.cond.73

while.end.84:                                     ; preds = %while.cond.73
  br label %if.end.85

if.end.85:                                        ; preds = %while.end.84, %lor.lhs.false.46
  %52 = load i32, i32* %man_length, align 4
  %53 = load i32, i32* %exp_length, align 4
  %add = add nsw i32 %52, %53
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.71, %if.then.33, %if.then.17
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
define %struct.R_flstr* @F_atof(i8* %str, i32 %allflag) #0 {
entry:
  %retval = alloca %struct.R_flstr*, align 8
  %str.addr = alloca i8*, align 8
  %allflag.addr = alloca i32, align 4
  %beg = alloca i8*, align 8
  %man = alloca [200 x i8], align 16
  %length = alloca i32, align 4
  %got_a_digit = alloca i32, align 4
  %i = alloca i32, align 4
  %resexp = alloca i32, align 4
  %res = alloca %struct.R_flstr*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %allflag, i32* %allflag.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %beg, align 8
  store i32 0, i32* %length, align 4
  store i32 0, i32* %got_a_digit, align 4
  %call = call %struct.R_flstr* (...) @R_makefloat()
  store %struct.R_flstr* %call, %struct.R_flstr** %res, align 8
  %1 = load %struct.R_flstr*, %struct.R_flstr** %res, align 8
  %man_sign = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i32 0, i32 1
  store i32 0, i32* %man_sign, align 4
  store i32 0, i32* %resexp, align 4
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* %man, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 43, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 45, %conv2
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %7 = load %struct.R_flstr*, %struct.R_flstr** %res, align 8
  %man_sign6 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %7, i32 0, i32 1
  store i32 1, i32* %man_sign6, align 4
  %8 = load i8*, i8** %str.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr7, i8** %str.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp eq i32 48, %conv9
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %str.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr12, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.18, %while.end
  %12 = load i8*, i8** %str.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv14 = sext i8 %13 to i32
  %idxprom = sext i32 %conv14 to i64
  %call15 = call i16** @__ctype_b_loc() #5
  %14 = load i16*, i16** %call15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %15 to i32
  %and = and i32 %conv17, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body.18, label %while.end.25

while.body.18:                                    ; preds = %while.cond.13
  store i32 1, i32* %got_a_digit, align 4
  %16 = load i8*, i8** %str.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr19, i8** %str.addr, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i32, i32* %length, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %length, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [200 x i8], [200 x i8]* %man, i32 0, i64 %idxprom20
  store i8 %17, i8* %arrayidx21, align 1
  %19 = load i32, i32* %length, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [200 x i8], [200 x i8]* %man, i32 0, i64 %idxprom22
  store i8 0, i8* %arrayidx23, align 1
  %20 = load i32, i32* %resexp, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, i32* %resexp, align 4
  br label %while.cond.13

while.end.25:                                     ; preds = %while.cond.13
  %21 = load i8*, i8** %str.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv26 = sext i8 %22 to i32
  %cmp27 = icmp eq i32 46, %conv26
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %while.end.25
  %23 = load i8*, i8** %str.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr30, i8** %str.addr, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %while.end.25
  %24 = load i32, i32* %got_a_digit, align 4
  %tobool32 = icmp ne i32 %24, 0
  br i1 %tobool32, label %if.end.41, label %if.then.33

if.then.33:                                       ; preds = %if.end.31
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.38, %if.then.33
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv35 = sext i8 %26 to i32
  %cmp36 = icmp eq i32 48, %conv35
  br i1 %cmp36, label %while.body.38, label %while.end.40

while.body.38:                                    ; preds = %while.cond.34
  %27 = load i8*, i8** %str.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr39, i8** %str.addr, align 8
  %28 = load i32, i32* %resexp, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %resexp, align 4
  br label %while.cond.34

while.end.40:                                     ; preds = %while.cond.34
  br label %if.end.41

if.end.41:                                        ; preds = %while.end.40, %if.end.31
  br label %while.cond.42

while.cond.42:                                    ; preds = %while.body.50, %if.end.41
  %29 = load i8*, i8** %str.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv43 = sext i8 %30 to i32
  %idxprom44 = sext i32 %conv43 to i64
  %call45 = call i16** @__ctype_b_loc() #5
  %31 = load i16*, i16** %call45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %31, i64 %idxprom44
  %32 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %32 to i32
  %and48 = and i32 %conv47, 2048
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %while.body.50, label %while.end.57

while.body.50:                                    ; preds = %while.cond.42
  %33 = load i8*, i8** %str.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr51, i8** %str.addr, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i32, i32* %length, align 4
  %inc52 = add nsw i32 %35, 1
  store i32 %inc52, i32* %length, align 4
  %idxprom53 = sext i32 %35 to i64
  %arrayidx54 = getelementptr inbounds [200 x i8], [200 x i8]* %man, i32 0, i64 %idxprom53
  store i8 %34, i8* %arrayidx54, align 1
  %36 = load i32, i32* %length, align 4
  %idxprom55 = sext i32 %36 to i64
  %arrayidx56 = getelementptr inbounds [200 x i8], [200 x i8]* %man, i32 0, i64 %idxprom55
  store i8 0, i8* %arrayidx56, align 1
  br label %while.cond.42

while.end.57:                                     ; preds = %while.cond.42
  %37 = load i8*, i8** %str.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv58 = sext i8 %38 to i32
  %cmp59 = icmp eq i32 101, %conv58
  br i1 %cmp59, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.57
  %39 = load i8*, i8** %str.addr, align 8
  %40 = load i8, i8* %39, align 1
  %conv61 = sext i8 %40 to i32
  %cmp62 = icmp eq i32 69, %conv61
  br i1 %cmp62, label %if.then.72, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false
  %41 = load i8*, i8** %str.addr, align 8
  %42 = load i8, i8* %41, align 1
  %conv65 = sext i8 %42 to i32
  %cmp66 = icmp eq i32 100, %conv65
  br i1 %cmp66, label %if.then.72, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %lor.lhs.false.64
  %43 = load i8*, i8** %str.addr, align 8
  %44 = load i8, i8* %43, align 1
  %conv69 = sext i8 %44 to i32
  %cmp70 = icmp eq i32 68, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %lor.lhs.false.68, %lor.lhs.false.64, %lor.lhs.false, %while.end.57
  %45 = load i8*, i8** %str.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr73, i8** %str.addr, align 8
  %46 = load i8*, i8** %str.addr, align 8
  %call74 = call i32 @atoi(i8* %46) #6
  %47 = load i32, i32* %resexp, align 4
  %add = add nsw i32 %47, %call74
  store i32 %add, i32* %resexp, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %lor.lhs.false.68
  %48 = load i32, i32* %allflag.addr, align 4
  %tobool76 = icmp ne i32 %48, 0
  br i1 %tobool76, label %if.then.77, label %if.end.105

if.then.77:                                       ; preds = %if.end.75
  %49 = load i8*, i8** %str.addr, align 8
  %50 = load i8, i8* %49, align 1
  %conv78 = sext i8 %50 to i32
  %cmp79 = icmp eq i32 43, %conv78
  br i1 %cmp79, label %if.then.85, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.then.77
  %51 = load i8*, i8** %str.addr, align 8
  %52 = load i8, i8* %51, align 1
  %conv82 = sext i8 %52 to i32
  %cmp83 = icmp eq i32 45, %conv82
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %lor.lhs.false.81, %if.then.77
  %53 = load i8*, i8** %str.addr, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr86, i8** %str.addr, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %lor.lhs.false.81
  br label %while.cond.88

while.cond.88:                                    ; preds = %while.body.96, %if.end.87
  %54 = load i8*, i8** %str.addr, align 8
  %55 = load i8, i8* %54, align 1
  %conv89 = sext i8 %55 to i32
  %idxprom90 = sext i32 %conv89 to i64
  %call91 = call i16** @__ctype_b_loc() #5
  %56 = load i16*, i16** %call91, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %56, i64 %idxprom90
  %57 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %57 to i32
  %and94 = and i32 %conv93, 2048
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %while.body.96, label %while.end.98

while.body.96:                                    ; preds = %while.cond.88
  %58 = load i8*, i8** %str.addr, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr97, i8** %str.addr, align 8
  br label %while.cond.88

while.end.98:                                     ; preds = %while.cond.88
  %59 = load i8*, i8** %str.addr, align 8
  %60 = load i8, i8* %59, align 1
  %conv99 = sext i8 %60 to i32
  %cmp100 = icmp ne i32 0, %conv99
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %while.end.98
  %61 = load i8*, i8** %beg, align 8
  %call103 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* %61) #7
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %while.end.98
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.75
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.105
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %length, align 4
  %cmp106 = icmp slt i32 %62, %63
  br i1 %cmp106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %64 to i64
  %arrayidx109 = getelementptr inbounds [200 x i8], [200 x i8]* %man, i32 0, i64 %idxprom108
  %65 = load i8, i8* %arrayidx109, align 1
  %conv110 = sext i8 %65 to i32
  %cmp111 = icmp ne i32 %conv110, 48
  br i1 %cmp111, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %for.body
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %man, i32 0, i32 0
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* %arraydecay)
  %66 = load %struct.R_flstr*, %struct.R_flstr** %res, align 8
  %mantissa = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %66, i32 0, i32 2
  %67 = load i8*, i8** %mantissa, align 8
  %arraydecay114 = getelementptr inbounds [200 x i8], [200 x i8]* %man, i32 0, i32 0
  %call115 = call i8* @strcpy(i8* %67, i8* %arraydecay114) #7
  %68 = load i32, i32* %resexp, align 4
  %69 = load %struct.R_flstr*, %struct.R_flstr** %res, align 8
  %exponent = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %69, i32 0, i32 0
  store i32 %68, i32* %exponent, align 4
  %70 = load %struct.R_flstr*, %struct.R_flstr** %res, align 8
  store %struct.R_flstr* %70, %struct.R_flstr** %retval
  br label %return

if.end.116:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.116
  %71 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %71, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load %struct.R_flstr*, %struct.R_flstr** %res, align 8
  %mantissa118 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %72, i32 0, i32 2
  %73 = load i8*, i8** %mantissa118, align 8
  %call119 = call i8* @strcpy(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #7
  %74 = load %struct.R_flstr*, %struct.R_flstr** %res, align 8
  %exponent120 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %74, i32 0, i32 0
  store i32 0, i32* %exponent120, align 4
  %75 = load %struct.R_flstr*, %struct.R_flstr** %res, align 8
  %man_sign121 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %75, i32 0, i32 1
  store i32 0, i32* %man_sign121, align 4
  %76 = load %struct.R_flstr*, %struct.R_flstr** %res, align 8
  store %struct.R_flstr* %76, %struct.R_flstr** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.113
  %77 = load %struct.R_flstr*, %struct.R_flstr** %retval
  ret %struct.R_flstr* %77
}

declare %struct.R_flstr* @R_makefloat(...) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare void @Z_fatal(...) #2

declare void @S_trimzeros(...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.R_flstr* @F_floatsub(%struct.R_flstr* %p1, %struct.R_flstr* %p2) #0 {
entry:
  %retval = alloca %struct.R_flstr*, align 8
  %p1.addr = alloca %struct.R_flstr*, align 8
  %p2.addr = alloca %struct.R_flstr*, align 8
  %exp1 = alloca i32, align 4
  %exp2 = alloca i32, align 4
  %diffptr = alloca i8*, align 8
  %big = alloca i8*, align 8
  %small = alloca i8*, align 8
  %man_cmp_val = alloca i32, align 4
  %i = alloca i32, align 4
  %borrow = alloca i32, align 4
  %from = alloca i8, align 1
  store %struct.R_flstr* %p1, %struct.R_flstr** %p1.addr, align 8
  store %struct.R_flstr* %p2, %struct.R_flstr** %p2.addr, align 8
  %0 = load i32, i32* @F_floatsub.needinit, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.R_flstr* (...) @R_makefloat()
  store %struct.R_flstr* %call, %struct.R_flstr** @F_floatsub.result, align 8
  store i32 0, i32* @F_floatsub.needinit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i64 0), align 1
  %1 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call1 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %1)
  store i32 %call1, i32* %exp1, align 4
  %2 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call2 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %2)
  store i32 %call2, i32* %exp2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* %exp1, align 4
  %4 = load i32, i32* %exp2, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #7
  %5 = load i32, i32* %exp1, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %exp1, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.6, %while.end
  %6 = load i32, i32* %exp1, align 4
  %7 = load i32, i32* %exp2, align 4
  %cmp5 = icmp sgt i32 %6, %7
  br i1 %cmp5, label %while.body.6, label %while.end.9

while.body.6:                                     ; preds = %while.cond.4
  %call7 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #7
  %8 = load i32, i32* %exp2, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %exp2, align 4
  br label %while.cond.4

while.end.9:                                      ; preds = %while.cond.4
  %9 = load i32, i32* %exp1, align 4
  %10 = load i32, i32* %exp2, align 4
  %cmp10 = icmp ne i32 %9, %10
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.end.9
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %while.end.9
  %11 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %mantissa = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %11, i32 0, i32 2
  %12 = load i8*, i8** %mantissa, align 8
  %call13 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0), i8* %12) #7
  %13 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %mantissa14 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %13, i32 0, i32 2
  %14 = load i8*, i8** %mantissa14, align 8
  %call15 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0), i8* %14) #7
  %call16 = call i32 @strcmp(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0), i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0)) #6
  store i32 %call16, i32* %man_cmp_val, align 4
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.12
  %15 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %mantissa19 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %15, i32 0, i32 2
  %16 = load i8*, i8** %mantissa19, align 8
  %call20 = call i8* @strcpy(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #7
  %17 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %exponent = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %17, i32 0, i32 0
  store i32 0, i32* %exponent, align 4
  %18 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %man_sign = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %18, i32 0, i32 1
  store i32 0, i32* %man_sign, align 4
  %19 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  store %struct.R_flstr* %19, %struct.R_flstr** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.12
  %call22 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0)) #6
  %call23 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0)) #6
  %cmp24 = icmp ugt i64 %call22, %call23
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.21
  %call26 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0)) #6
  %call27 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0)) #6
  %sub = sub i64 %call26, %call27
  %conv = trunc i64 %sub to i32
  call void @addzeros(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0), i32 %conv)
  br label %if.end.38

if.else:                                          ; preds = %if.end.21
  %call28 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0)) #6
  %call29 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0)) #6
  %cmp30 = icmp ult i64 %call28, %call29
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.else
  %call33 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0)) #6
  %call34 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0)) #6
  %sub35 = sub i64 %call33, %call34
  %conv36 = trunc i64 %sub35 to i32
  call void @addzeros(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0), i32 %conv36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.25
  %call39 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0)) #6
  %call40 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0)) #6
  %cmp41 = icmp ne i64 %call39, %call40
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.38
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.38
  %20 = load i32, i32* %man_cmp_val, align 4
  %cmp45 = icmp slt i32 %20, 0
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.end.44
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0), i8** %big, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0), i8** %small, align 8
  br label %if.end.49

if.else.48:                                       ; preds = %if.end.44
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man1, i32 0, i32 0), i8** %big, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.man2, i32 0, i32 0), i8** %small, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.then.47
  %21 = load i8*, i8** %big, align 8
  %call50 = call i64 @strlen(i8* %21) #6
  %sub51 = sub i64 %call50, 1
  %conv52 = trunc i64 %sub51 to i32
  store i32 %conv52, i32* %i, align 4
  store i32 0, i32* %borrow, align 4
  %22 = load i8*, i8** %big, align 8
  %call53 = call i64 @strlen(i8* %22) #6
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatsub.diff, i32 0, i64 %call53
  store i8 0, i8* %arrayidx, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.49
  %23 = load i32, i32* %i, align 4
  %cmp54 = icmp sge i32 %23, 0
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %borrow, align 4
  %tobool56 = icmp ne i32 %24, 0
  br i1 %tobool56, label %if.then.57, label %if.else.70

if.then.57:                                       ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i8*, i8** %big, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %27 to i32
  %cmp60 = icmp eq i32 %conv59, 48
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.then.57
  store i8 57, i8* %from, align 1
  br label %if.end.69

if.else.63:                                       ; preds = %if.then.57
  %28 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %28 to i64
  %29 = load i8*, i8** %big, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %29, i64 %idxprom64
  %30 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %30 to i32
  %sub67 = sub nsw i32 %conv66, 1
  %conv68 = trunc i32 %sub67 to i8
  store i8 %conv68, i8* %from, align 1
  store i32 0, i32* %borrow, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.63, %if.then.62
  br label %if.end.84

if.else.70:                                       ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %31 to i64
  %32 = load i8*, i8** %big, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %32, i64 %idxprom71
  %33 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %33 to i32
  %34 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %34 to i64
  %35 = load i8*, i8** %small, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %35, i64 %idxprom74
  %36 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %36 to i32
  %cmp77 = icmp slt i32 %conv73, %conv76
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.else.70
  store i8 58, i8* %from, align 1
  store i32 1, i32* %borrow, align 4
  br label %if.end.83

if.else.80:                                       ; preds = %if.else.70
  %37 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %37 to i64
  %38 = load i8*, i8** %big, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %38, i64 %idxprom81
  %39 = load i8, i8* %arrayidx82, align 1
  store i8 %39, i8* %from, align 1
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.69
  %40 = load i8, i8* %from, align 1
  %conv85 = sext i8 %40 to i32
  %41 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %41 to i64
  %42 = load i8*, i8** %small, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %42, i64 %idxprom86
  %43 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %43 to i32
  %sub89 = sub nsw i32 %conv85, %conv88
  %add = add nsw i32 %sub89, 48
  %conv90 = trunc i32 %add to i8
  %44 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %44 to i64
  %arrayidx92 = getelementptr inbounds [200 x i8], [200 x i8]* @F_floatsub.diff, i32 0, i64 %idxprom91
  store i8 %conv90, i8* %arrayidx92, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %45 = load i32, i32* %i, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatsub.diff, i32 0, i32 0), i8** %diffptr, align 8
  br label %while.cond.93

while.cond.93:                                    ; preds = %while.body.97, %for.end
  %46 = load i8*, i8** %diffptr, align 8
  %47 = load i8, i8* %46, align 1
  %conv94 = sext i8 %47 to i32
  %cmp95 = icmp eq i32 48, %conv94
  br i1 %cmp95, label %while.body.97, label %while.end.99

while.body.97:                                    ; preds = %while.cond.93
  %48 = load i8*, i8** %diffptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %diffptr, align 8
  %49 = load i32, i32* %exp1, align 4
  %dec98 = add nsw i32 %49, -1
  store i32 %dec98, i32* %exp1, align 4
  br label %while.cond.93

while.end.99:                                     ; preds = %while.cond.93
  %50 = load i32, i32* %exp1, align 4
  %51 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %exponent100 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %51, i32 0, i32 0
  store i32 %50, i32* %exponent100, align 4
  %52 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %mantissa101 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %52, i32 0, i32 2
  %53 = load i8*, i8** %mantissa101, align 8
  %54 = load i8*, i8** %diffptr, align 8
  %call102 = call i8* @strcpy(i8* %53, i8* %54) #7
  %55 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  %man_sign103 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %55, i32 0, i32 1
  store i32 0, i32* %man_sign103, align 4
  %56 = load %struct.R_flstr*, %struct.R_flstr** @F_floatsub.result, align 8
  store %struct.R_flstr* %56, %struct.R_flstr** %retval
  br label %return

return:                                           ; preds = %while.end.99, %if.then.18
  %57 = load %struct.R_flstr*, %struct.R_flstr** %retval
  ret %struct.R_flstr* %57
}

declare i32 @R_getexp(...) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @addzeros(i8* %ptr, i32 %count) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %count.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %ptr.addr, align 8
  %call = call i8* @strcat(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %count.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %count.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @F_floatcmp(%struct.R_flstr* %f1, %struct.R_flstr* %f2) #0 {
entry:
  %retval = alloca i32, align 4
  %f1.addr = alloca %struct.R_flstr*, align 8
  %f2.addr = alloca %struct.R_flstr*, align 8
  store %struct.R_flstr* %f1, %struct.R_flstr** %f1.addr, align 8
  store %struct.R_flstr* %f2, %struct.R_flstr** %f2.addr, align 8
  %0 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %exponent = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %0, i32 0, i32 0
  %1 = load i32, i32* %exponent, align 4
  %cmp = icmp eq i32 0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %mantissa = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %2, i32 0, i32 2
  %3 = load i8*, i8** %mantissa, align 8
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else.8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %exponent1 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %4, i32 0, i32 0
  %5 = load i32, i32* %exponent1, align 4
  %cmp2 = icmp eq i32 0, %5
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %if.then
  %6 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %mantissa4 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %6, i32 0, i32 2
  %7 = load i8*, i8** %mantissa4, align 8
  %call5 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.3
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.3, %if.then
  store i32 -1, i32* %retval
  br label %return

if.else.8:                                        ; preds = %land.lhs.true, %entry
  %8 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %exponent9 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %8, i32 0, i32 0
  %9 = load i32, i32* %exponent9, align 4
  %cmp10 = icmp eq i32 0, %9
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %if.else.8
  %10 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %mantissa12 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %10, i32 0, i32 2
  %11 = load i8*, i8** %mantissa12, align 8
  %call13 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.11, %if.else.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end
  %12 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %call17 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %12)
  %13 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %call18 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %13)
  %cmp19 = icmp slt i32 %call17, %call18
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.16
  %14 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %call22 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %14)
  %15 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %call23 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %15)
  %cmp24 = icmp sgt i32 %call22, %call23
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.21
  %16 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %mantissa27 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %16, i32 0, i32 2
  %17 = load i8*, i8** %mantissa27, align 8
  %call28 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i32 0, i32 0), i8* %17) #7
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i32 0, i32 0))
  %18 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %mantissa29 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %18, i32 0, i32 2
  %19 = load i8*, i8** %mantissa29, align 8
  %call30 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i32 0, i32 0), i8* %19) #7
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i32 0, i32 0))
  %call31 = call i32 @strcmp(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man1, i32 0, i32 0), i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatcmp.man2, i32 0, i32 0)) #6
  store i32 %call31, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.25, %if.then.20, %if.then.15, %if.else, %if.then.7
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define %struct.R_flstr* @F_floatmul(%struct.R_flstr* %f1, %struct.R_flstr* %f2) #0 {
entry:
  %retval = alloca %struct.R_flstr*, align 8
  %f1.addr = alloca %struct.R_flstr*, align 8
  %f2.addr = alloca %struct.R_flstr*, align 8
  %end = alloca i8*, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %len = alloca i32, align 4
  %end1 = alloca i8*, align 8
  %end2 = alloca i8*, align 8
  %bigman = alloca i8*, align 8
  %smallman = alloca i8*, align 8
  store %struct.R_flstr* %f1, %struct.R_flstr** %f1.addr, align 8
  store %struct.R_flstr* %f2, %struct.R_flstr** %f2.addr, align 8
  store i32 0, i32* %count1, align 4
  store i32 0, i32* %count2, align 4
  %0 = load i32, i32* @F_floatmul.needinit, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.R_flstr* (...) @R_makefloat()
  store %struct.R_flstr* %call, %struct.R_flstr** @F_floatmul.result, align 8
  store i32 0, i32* @F_floatmul.needinit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %exponent = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %1, i32 0, i32 0
  %2 = load i32, i32* %exponent, align 4
  %cmp = icmp eq i32 0, %2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %mantissa = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %3, i32 0, i32 2
  %4 = load i8*, i8** %mantissa, align 8
  %call6 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %5 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %exponent8 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %5, i32 0, i32 0
  %6 = load i32, i32* %exponent8, align 4
  %cmp9 = icmp eq i32 0, %6
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.18

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %7 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %mantissa11 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %7, i32 0, i32 2
  %8 = load i8*, i8** %mantissa11, align 8
  %call12 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.18, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.10, %land.lhs.true
  %9 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %mantissa15 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %9, i32 0, i32 2
  %10 = load i8*, i8** %mantissa15, align 8
  %call16 = call i8* @strcpy(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #7
  %11 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %exponent17 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %11, i32 0, i32 0
  store i32 0, i32* %exponent17, align 4
  %12 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %man_sign = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %12, i32 0, i32 1
  store i32 0, i32* %man_sign, align 4
  %13 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  store %struct.R_flstr* %13, %struct.R_flstr** %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.10, %lor.lhs.false
  %14 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %mantissa19 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %14, i32 0, i32 2
  %15 = load i8*, i8** %mantissa19, align 8
  %call20 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i32 0, i32 0), i8* %15) #7
  %16 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %mantissa21 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %16, i32 0, i32 2
  %17 = load i8*, i8** %mantissa21, align 8
  %call22 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i32 0, i32 0), i8* %17) #7
  %call23 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i32 0, i32 0)) #6
  %sub = sub i64 %call23, 1
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i32 0, i32 0), i64 %sub
  store i8* %add.ptr, i8** %end1, align 8
  %call24 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i32 0, i32 0)) #6
  %sub25 = sub i64 %call24, 1
  %add.ptr26 = getelementptr inbounds i8, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i32 0, i32 0), i64 %sub25
  store i8* %add.ptr26, i8** %end2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.18
  %18 = load i8*, i8** %end1, align 8
  %cmp27 = icmp uge i8* %18, getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i32 0, i32 0)
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %end1, align 8
  %20 = load i8, i8* %19, align 1
  %conv = sext i8 %20 to i32
  %sub28 = sub nsw i32 %conv, 48
  %21 = load i32, i32* %count1, align 4
  %add = add nsw i32 %21, %sub28
  store i32 %add, i32* %count1, align 4
  %22 = load i8*, i8** %end1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr, i8** %end1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.32, %while.end
  %23 = load i8*, i8** %end2, align 8
  %cmp30 = icmp uge i8* %23, getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i32 0, i32 0)
  br i1 %cmp30, label %while.body.32, label %while.end.37

while.body.32:                                    ; preds = %while.cond.29
  %24 = load i8*, i8** %end2, align 8
  %25 = load i8, i8* %24, align 1
  %conv33 = sext i8 %25 to i32
  %sub34 = sub nsw i32 %conv33, 48
  %26 = load i32, i32* %count2, align 4
  %add35 = add nsw i32 %26, %sub34
  store i32 %add35, i32* %count2, align 4
  %27 = load i8*, i8** %end2, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr36, i8** %end2, align 8
  br label %while.cond.29

while.end.37:                                     ; preds = %while.cond.29
  %28 = load i32, i32* %count1, align 4
  %29 = load i32, i32* %count2, align 4
  %cmp38 = icmp sgt i32 %28, %29
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %while.end.37
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i32 0, i32 0), i8** %bigman, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i32 0, i32 0), i8** %smallman, align 8
  br label %if.end.41

if.else:                                          ; preds = %while.end.37
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man2, i32 0, i32 0), i8** %bigman, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.man1, i32 0, i32 0), i8** %smallman, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.40
  %30 = load i8*, i8** %bigman, align 8
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* %30)
  %31 = load i8*, i8** %smallman, align 8
  call void (i8*, ...) bitcast (void (...)* @S_trimzeros to void (i8*, ...)*)(i8* %31)
  %32 = load i8*, i8** %bigman, align 8
  %call42 = call i64 @strlen(i8* %32) #6
  %33 = load i8*, i8** %smallman, align 8
  %call43 = call i64 @strlen(i8* %33) #6
  %add44 = add i64 %call42, %call43
  %conv45 = trunc i64 %add44 to i32
  store i32 %conv45, i32* %len, align 4
  %34 = load i8*, i8** %smallman, align 8
  %35 = load i8*, i8** %smallman, align 8
  %call46 = call i64 @strlen(i8* %35) #6
  %sub47 = sub i64 %call46, 1
  %add.ptr48 = getelementptr inbounds i8, i8* %34, i64 %sub47
  store i8* %add.ptr48, i8** %end, align 8
  %call49 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #7
  br label %while.cond.50

while.cond.50:                                    ; preds = %for.end, %if.end.41
  %36 = load i8*, i8** %end, align 8
  %37 = load i8*, i8** %smallman, align 8
  %cmp51 = icmp uge i8* %36, %37
  br i1 %cmp51, label %while.body.53, label %while.end.59

while.body.53:                                    ; preds = %while.cond.50
  store i32 0, i32* %tmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.53
  %38 = load i32, i32* %tmp, align 4
  %39 = load i8*, i8** %end, align 8
  %40 = load i8, i8* %39, align 1
  %conv54 = sext i8 %40 to i32
  %sub55 = sub nsw i32 %conv54, 48
  %cmp56 = icmp slt i32 %38, %sub55
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i8*, i8** %bigman, align 8
  call void @_F_stradd(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i32 0, i32 0), i8* %41)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %tmp, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %tmp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i8*, i8** %bigman, align 8
  call void @addzeros(i8* %43, i32 1)
  %44 = load i8*, i8** %end, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %incdec.ptr58, i8** %end, align 8
  br label %while.cond.50

while.end.59:                                     ; preds = %while.cond.50
  %45 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %mantissa60 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %45, i32 0, i32 2
  %46 = load i8*, i8** %mantissa60, align 8
  %call61 = call i8* @strcpy(i8* %46, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i32 0, i32 0)) #7
  %47 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %call62 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %47)
  %48 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %call63 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %48)
  %add64 = add nsw i32 %call62, %call63
  %49 = load i32, i32* %len, align 4
  %sub65 = sub nsw i32 %add64, %49
  %conv66 = sext i32 %sub65 to i64
  %call67 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmul.prod, i32 0, i32 0)) #6
  %add68 = add i64 %conv66, %call67
  %conv69 = trunc i64 %add68 to i32
  %50 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %exponent70 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %50, i32 0, i32 0
  store i32 %conv69, i32* %exponent70, align 4
  %51 = load %struct.R_flstr*, %struct.R_flstr** %f1.addr, align 8
  %man_sign71 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %51, i32 0, i32 1
  %52 = load i32, i32* %man_sign71, align 4
  %53 = load %struct.R_flstr*, %struct.R_flstr** %f2.addr, align 8
  %man_sign72 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %53, i32 0, i32 1
  %54 = load i32, i32* %man_sign72, align 4
  %cmp73 = icmp eq i32 %52, %54
  br i1 %cmp73, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %while.end.59
  %55 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %man_sign76 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %55, i32 0, i32 1
  store i32 0, i32* %man_sign76, align 4
  br label %if.end.79

if.else.77:                                       ; preds = %while.end.59
  %56 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  %man_sign78 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %56, i32 0, i32 1
  store i32 1, i32* %man_sign78, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.77, %if.then.75
  %57 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmul.result, align 8
  store %struct.R_flstr* %57, %struct.R_flstr** %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.14
  %58 = load %struct.R_flstr*, %struct.R_flstr** %retval
  ret %struct.R_flstr* %58
}

; Function Attrs: nounwind uwtable
define internal void @_F_stradd(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %end1 = alloca i8*, align 8
  %end2 = alloca i8*, align 8
  %resptr = alloca i8*, align 8
  %carry = alloca i32, align 4
  %tmp = alloca i32, align 4
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s1.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %sub = sub i64 %call, 1
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %sub
  store i8* %add.ptr, i8** %end1, align 8
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i8*, i8** %s2.addr, align 8
  %call1 = call i64 @strlen(i8* %3) #6
  %sub2 = sub i64 %call1, 1
  %add.ptr3 = getelementptr inbounds i8, i8* %2, i64 %sub2
  store i8* %add.ptr3, i8** %end2, align 8
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @_F_stradd.result, i32 0, i64 199), i8** %resptr, align 8
  store i32 0, i32* %carry, align 4
  %4 = load i8*, i8** %resptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %resptr, align 8
  store i8 0, i8* %4, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %5 = load i8*, i8** %end1, align 8
  %6 = load i8*, i8** %s1.addr, align 8
  %cmp = icmp uge i8* %5, %6
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %7 = load i8*, i8** %end2, align 8
  %8 = load i8*, i8** %s2.addr, align 8
  %cmp6 = icmp uge i8* %7, %8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %9 = phi i1 [ true, %while.cond ], [ %cmp6, %lor.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %10 = load i8*, i8** %end1, align 8
  %11 = load i8*, i8** %s1.addr, align 8
  %cmp7 = icmp uge i8* %10, %11
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i8*, i8** %end1, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  %sub8 = sub nsw i32 %conv, 48
  store i32 %sub8, i32* %val1, align 4
  %14 = load i8*, i8** %end1, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %incdec.ptr9, i8** %end1, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  store i32 0, i32* %val1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i8*, i8** %end2, align 8
  %16 = load i8*, i8** %s2.addr, align 8
  %cmp10 = icmp uge i8* %15, %16
  br i1 %cmp10, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.end
  %17 = load i8*, i8** %end2, align 8
  %18 = load i8, i8* %17, align 1
  %conv13 = sext i8 %18 to i32
  %sub14 = sub nsw i32 %conv13, 48
  store i32 %sub14, i32* %val2, align 4
  %19 = load i8*, i8** %end2, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr15, i8** %end2, align 8
  br label %if.end.17

if.else.16:                                       ; preds = %if.end
  store i32 0, i32* %val2, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.12
  %20 = load i32, i32* %val1, align 4
  %21 = load i32, i32* %val2, align 4
  %add = add nsw i32 %20, %21
  %22 = load i32, i32* %carry, align 4
  %add18 = add nsw i32 %add, %22
  store i32 %add18, i32* %tmp, align 4
  %23 = load i32, i32* %tmp, align 4
  %cmp19 = icmp sgt i32 %23, 9
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.17
  store i32 1, i32* %carry, align 4
  %24 = load i32, i32* %tmp, align 4
  %sub22 = sub nsw i32 %24, 10
  store i32 %sub22, i32* %tmp, align 4
  br label %if.end.24

if.else.23:                                       ; preds = %if.end.17
  store i32 0, i32* %carry, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.21
  %25 = load i32, i32* %tmp, align 4
  %add25 = add nsw i32 %25, 48
  %conv26 = trunc i32 %add25 to i8
  %26 = load i8*, i8** %resptr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %incdec.ptr27, i8** %resptr, align 8
  store i8 %conv26, i8* %26, align 1
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %27 = load i32, i32* %carry, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %while.end
  %28 = load i8*, i8** %resptr, align 8
  store i8 49, i8* %28, align 1
  br label %if.end.31

if.else.29:                                       ; preds = %while.end
  %29 = load i8*, i8** %resptr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr30, i8** %resptr, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  %30 = load i8*, i8** %s1.addr, align 8
  %31 = load i8*, i8** %resptr, align 8
  %call32 = call i8* @strcpy(i8* %30, i8* %31) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_F_xor(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %x.addr, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %3 = load i32, i32* %y.addr, align 4
  %tobool3 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %tobool3, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %5 = phi i1 [ true, %land.lhs.true ], [ %4, %land.end ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @_F_ABSDIFF(i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %2, %cond.false ]
  %3 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %4 = load i32, i32* %y.addr, align 4
  %sub3 = sub nsw i32 0, %4
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %5 = load i32, i32* %y.addr, align 4
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.2
  %cond6 = phi i32 [ %sub3, %cond.true.2 ], [ %5, %cond.false.4 ]
  %cmp7 = icmp slt i32 %cond, %cond6
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.5
  %6 = load i32, i32* %y.addr, align 4
  %cmp8 = icmp slt i32 %6, 0
  br i1 %cmp8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %if.then
  %7 = load i32, i32* %y.addr, align 4
  %sub10 = sub nsw i32 0, %7
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.then
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i32 [ %sub10, %cond.true.9 ], [ %8, %cond.false.11 ]
  %9 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %9, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end.12
  %10 = load i32, i32* %x.addr, align 4
  %sub16 = sub nsw i32 0, %10
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end.12
  %11 = load i32, i32* %x.addr, align 4
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi i32 [ %sub16, %cond.true.15 ], [ %11, %cond.false.17 ]
  %sub20 = sub nsw i32 %cond13, %cond19
  store i32 %sub20, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end.5
  %12 = load i32, i32* %x.addr, align 4
  %cmp21 = icmp slt i32 %12, 0
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %if.else
  %13 = load i32, i32* %x.addr, align 4
  %sub23 = sub nsw i32 0, %13
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.else
  %14 = load i32, i32* %x.addr, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond26 = phi i32 [ %sub23, %cond.true.22 ], [ %14, %cond.false.24 ]
  %15 = load i32, i32* %y.addr, align 4
  %cmp27 = icmp slt i32 %15, 0
  br i1 %cmp27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.end.25
  %16 = load i32, i32* %y.addr, align 4
  %sub29 = sub nsw i32 0, %16
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end.25
  %17 = load i32, i32* %y.addr, align 4
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.28
  %cond32 = phi i32 [ %sub29, %cond.true.28 ], [ %17, %cond.false.30 ]
  %sub33 = sub nsw i32 %cond26, %cond32
  store i32 %sub33, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.31, %cond.end.18
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define %struct.R_flstr* @F_floatmagadd(%struct.R_flstr* %p1, %struct.R_flstr* %p2) #0 {
entry:
  %p1.addr = alloca %struct.R_flstr*, align 8
  %p2.addr = alloca %struct.R_flstr*, align 8
  %digits = alloca i32, align 4
  %resexp = alloca i32, align 4
  %len = alloca i32, align 4
  %diffptr = alloca i8*, align 8
  store %struct.R_flstr* %p1, %struct.R_flstr** %p1.addr, align 8
  store %struct.R_flstr* %p2, %struct.R_flstr** %p2.addr, align 8
  %0 = load i32, i32* @F_floatmagadd.needinit, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.R_flstr* (...) @R_makefloat()
  store %struct.R_flstr* %call, %struct.R_flstr** @F_floatmagadd.result, align 8
  store i32 0, i32* @F_floatmagadd.needinit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0)) #7
  %call2 = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0)) #7
  %1 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call3 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %1)
  %cmp = icmp slt i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %2 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call4 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %2)
  %cmp5 = icmp slt i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 @_F_xor(i32 %conv, i32 %conv6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %3 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call10 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %3)
  %4 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call11 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %4)
  %call12 = call i32 @_F_ABSDIFF(i32 %call10, i32 %call11)
  store i32 %call12, i32* %digits, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %5 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call13 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %5)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %6 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call16 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %6)
  %sub = sub nsw i32 0, %call16
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %7 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call17 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %call17, %cond.false ]
  %8 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call18 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %8)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %cond.true.21, label %cond.false.24

cond.true.21:                                     ; preds = %cond.end
  %9 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call22 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %9)
  %sub23 = sub nsw i32 0, %call22
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.end
  %10 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call25 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %10)
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.21
  %cond27 = phi i32 [ %sub23, %cond.true.21 ], [ %call25, %cond.false.24 ]
  %add = add nsw i32 %cond, %cond27
  store i32 %add, i32* %digits, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.26, %if.then.9
  %11 = load i32, i32* %digits, align 4
  %cmp29 = icmp sgt i32 %11, 0
  br i1 %cmp29, label %if.then.31, label %if.else.56

if.then.31:                                       ; preds = %if.end.28
  %12 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call32 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %12)
  %13 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call33 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %13)
  %cmp34 = icmp slt i32 %call32, %call33
  br i1 %cmp34, label %if.then.36, label %if.else.45

if.then.36:                                       ; preds = %if.then.31
  %14 = load i32, i32* %digits, align 4
  %conv37 = sext i32 %14 to i64
  %15 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %mantissa = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %15, i32 0, i32 2
  %16 = load i8*, i8** %mantissa, align 8
  %call38 = call i64 @strlen(i8* %16) #6
  %add39 = add i64 %conv37, %call38
  %cmp40 = icmp ugt i64 %add39, 199
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.then.36
  %call43 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0)) #7
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.then.36
  br label %if.end.55

if.else.45:                                       ; preds = %if.then.31
  %17 = load i32, i32* %digits, align 4
  %conv46 = sext i32 %17 to i64
  %18 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %mantissa47 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %18, i32 0, i32 2
  %19 = load i8*, i8** %mantissa47, align 8
  %call48 = call i64 @strlen(i8* %19) #6
  %add49 = add i64 %conv46, %call48
  %cmp50 = icmp ugt i64 %add49, 199
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.else.45
  %call53 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0)) #7
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.else.45
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.44
  br label %if.end.76

if.else.56:                                       ; preds = %if.end.28
  %20 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %mantissa57 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %20, i32 0, i32 2
  %21 = load i8*, i8** %mantissa57, align 8
  %call58 = call i64 @strlen(i8* %21) #6
  %22 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %mantissa59 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %22, i32 0, i32 2
  %23 = load i8*, i8** %mantissa59, align 8
  %call60 = call i64 @strlen(i8* %23) #6
  %cmp61 = icmp ugt i64 %call58, %call60
  br i1 %cmp61, label %cond.true.63, label %cond.false.66

cond.true.63:                                     ; preds = %if.else.56
  %24 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %mantissa64 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %24, i32 0, i32 2
  %25 = load i8*, i8** %mantissa64, align 8
  %call65 = call i64 @strlen(i8* %25) #6
  br label %cond.end.69

cond.false.66:                                    ; preds = %if.else.56
  %26 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %mantissa67 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %26, i32 0, i32 2
  %27 = load i8*, i8** %mantissa67, align 8
  %call68 = call i64 @strlen(i8* %27) #6
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.66, %cond.true.63
  %cond70 = phi i64 [ %call65, %cond.true.63 ], [ %call68, %cond.false.66 ]
  %cmp71 = icmp ugt i64 %cond70, 198
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %cond.end.69
  %call74 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0)) #7
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i32 0, i32 0))
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %cond.end.69
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.55
  %28 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call77 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %28)
  %29 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call78 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %29)
  %cmp79 = icmp slt i32 %call77, %call78
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.end.76
  %30 = load i32, i32* %digits, align 4
  call void @addzeros(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i32 0, i32 0), i32 %30)
  %31 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %call82 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %31)
  store i32 %call82, i32* %resexp, align 4
  br label %if.end.85

if.else.83:                                       ; preds = %if.end.76
  %32 = load i32, i32* %digits, align 4
  call void @addzeros(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i32 0, i32 0), i32 %32)
  %33 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %call84 = call i32 (%struct.R_flstr*, ...) bitcast (i32 (...)* @R_getexp to i32 (%struct.R_flstr*, ...)*)(%struct.R_flstr* %33)
  store i32 %call84, i32* %resexp, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.83, %if.then.81
  %34 = load %struct.R_flstr*, %struct.R_flstr** %p1.addr, align 8
  %mantissa86 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %34, i32 0, i32 2
  %35 = load i8*, i8** %mantissa86, align 8
  %call87 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i32 0, i32 0), i8* %35) #7
  %36 = load %struct.R_flstr*, %struct.R_flstr** %p2.addr, align 8
  %mantissa88 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %36, i32 0, i32 2
  %37 = load i8*, i8** %mantissa88, align 8
  %call89 = call i8* @strcat(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i32 0, i32 0), i8* %37) #7
  %call90 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i32 0, i32 0)) #6
  %call91 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i32 0, i32 0)) #6
  %cmp92 = icmp ugt i64 %call90, %call91
  br i1 %cmp92, label %cond.true.94, label %cond.false.96

cond.true.94:                                     ; preds = %if.end.85
  %call95 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i32 0, i32 0)) #6
  br label %cond.end.98

cond.false.96:                                    ; preds = %if.end.85
  %call97 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i32 0, i32 0)) #6
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.96, %cond.true.94
  %cond99 = phi i64 [ %call95, %cond.true.94 ], [ %call97, %cond.false.96 ]
  %conv100 = trunc i64 %cond99 to i32
  store i32 %conv100, i32* %len, align 4
  call void @_F_stradd(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i32 0, i32 0), i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man2, i32 0, i32 0))
  %call101 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i32 0, i32 0)) #6
  %38 = load i32, i32* %len, align 4
  %conv102 = sext i32 %38 to i64
  %sub103 = sub i64 %call101, %conv102
  %39 = load i32, i32* %resexp, align 4
  %conv104 = sext i32 %39 to i64
  %add105 = add i64 %conv104, %sub103
  %conv106 = trunc i64 %add105 to i32
  store i32 %conv106, i32* %resexp, align 4
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @F_floatmagadd.man1, i32 0, i32 0), i8** %diffptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.98
  %40 = load i8*, i8** %diffptr, align 8
  %41 = load i8, i8* %40, align 1
  %conv107 = sext i8 %41 to i32
  %cmp108 = icmp eq i32 48, %conv107
  br i1 %cmp108, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i8*, i8** %diffptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %diffptr, align 8
  %43 = load i32, i32* %resexp, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %resexp, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %mantissa110 = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %44, i32 0, i32 2
  %45 = load i8*, i8** %mantissa110, align 8
  %46 = load i8*, i8** %diffptr, align 8
  %call111 = call i8* @strcpy(i8* %45, i8* %46) #7
  %47 = load i32, i32* %resexp, align 4
  %48 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %exponent = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %48, i32 0, i32 0
  store i32 %47, i32* %exponent, align 4
  %49 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  %man_sign = getelementptr inbounds %struct.R_flstr, %struct.R_flstr* %49, i32 0, i32 1
  store i32 0, i32* %man_sign, align 4
  %50 = load %struct.R_flstr*, %struct.R_flstr** @F_floatmagadd.result, align 8
  ret %struct.R_flstr* %50
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
