; ModuleID = './MultiSource.Applications.aha/2.aha.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 (i32, i32, i32)*, i32, i32, [3 x i32], i8*, i8*, i8* }
%struct.anon.0 = type { i32, [3 x i32] }

@debug = constant i32 0, align 4
@counters = constant i32 1, align 4
@trialx = global [17 x i32] [i32 1, i32 0, i32 -1, i32 -2147483648, i32 2147483647, i32 -2147483647, i32 2147483646, i32 19088743, i32 -1985229329, i32 -2, i32 2, i32 -3, i32 3, i32 -64, i32 64, i32 -5, i32 -31415], align 16
@dummy1 = global [7 x i32] [i32 0, i32 -1, i32 1, i32 -2147483648, i32 -2, i32 2, i32 3], align 16
@dummy2 = global [4 x i32] [i32 1, i32 2, i32 30, i32 31], align 16
@unacceptable = common global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-(\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"~(\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"divu\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" /u \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"shl\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" << \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"shr\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" >>u \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"shrs\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c" >>s \00", align 1
@isa = global [13 x %struct.anon] [%struct.anon { i32 (i32, i32, i32)* @neg, i32 1, i32 0, [3 x i32] [i32 11, i32 0, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @Not, i32 1, i32 0, [3 x i32] [i32 11, i32 0, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @add, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @sub, i32 2, i32 0, [3 x i32] [i32 2, i32 2, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @mul, i32 2, i32 1, [3 x i32] [i32 11, i32 3, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @divide, i32 2, i32 0, [3 x i32] [i32 1, i32 3, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @divu, i32 2, i32 0, [3 x i32] [i32 1, i32 1, i32 0], i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @And, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @Or, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @Xor, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @shl, i32 2, i32 0, [3 x i32] [i32 1, i32 7, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @shr, i32 2, i32 0, [3 x i32] [i32 1, i32 7, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @shrs, i32 2, i32 0, [3 x i32] [i32 3, i32 7, i32 0], i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0) }], align 16
@r = global [17 x i32] [i32 0, i32 -1, i32 1, i32 -2147483648, i32 -2, i32 2, i32 3, i32 1, i32 2, i32 30, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"0x%X\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@pgm = common global [5 x %struct.anon.0] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c")\00", align 1
@numi = common global i32 0, align 4
@.str.33 = private unnamed_addr constant [13 x i8] c"   %-5s r%d,\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"   Expr: \00", align 1
@check.itrialx = internal global i32 0, align 4
@corr_result = common global i32 0, align 4
@correct_result = common global [17 x i32] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [32 x i8] c"\0AFound a %d-operation program:\0A\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"Searching for programs with %d operations.\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Found %d solutions.\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Counters = \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@counter = common global [5 x i32] zeroinitializer, align 16
@.str.44 = private unnamed_addr constant [12 x i8] c"total = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @neg(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %0
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define i32 @Not(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %neg = xor i32 %0, -1
  ret i32 %neg
}

; Function Attrs: nounwind uwtable
define i32 @pop(i32 %xx, i32 %y, i32 %z) #0 {
entry:
  %xx.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %xx, i32* %xx.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %xx.addr, align 4
  store i32 %0, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %shr = lshr i32 %2, 1
  %and = and i32 %shr, 1431655765
  %sub = sub i32 %1, %and
  store i32 %sub, i32* %x, align 4
  %3 = load i32, i32* %x, align 4
  %and1 = and i32 %3, 858993459
  %4 = load i32, i32* %x, align 4
  %shr2 = lshr i32 %4, 2
  %and3 = and i32 %shr2, 858993459
  %add = add i32 %and1, %and3
  store i32 %add, i32* %x, align 4
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %x, align 4
  %shr4 = lshr i32 %6, 4
  %add5 = add i32 %5, %shr4
  %and6 = and i32 %add5, 252645135
  store i32 %and6, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %x, align 4
  %shl = shl i32 %8, 8
  %add7 = add i32 %7, %shl
  store i32 %add7, i32* %x, align 4
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %x, align 4
  %shl8 = shl i32 %10, 16
  %add9 = add i32 %9, %shl8
  store i32 %add9, i32* %x, align 4
  %11 = load i32, i32* %x, align 4
  %shr10 = lshr i32 %11, 24
  ret i32 %shr10
}

; Function Attrs: nounwind uwtable
define i32 @nlz(i32 %xx, i32 %y, i32 %z) #0 {
entry:
  %retval = alloca i32, align 4
  %xx.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %xx, i32* %xx.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %xx.addr, align 4
  store i32 %0, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 32, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %n, align 4
  %2 = load i32, i32* %x, align 4
  %cmp1 = icmp ule i32 %2, 65535
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %n, align 4
  %add = add nsw i32 %3, 16
  store i32 %add, i32* %n, align 4
  %4 = load i32, i32* %x, align 4
  %shl = shl i32 %4, 16
  store i32 %shl, i32* %x, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %x, align 4
  %cmp4 = icmp ule i32 %5, 16777215
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32, i32* %n, align 4
  %add6 = add nsw i32 %6, 8
  store i32 %add6, i32* %n, align 4
  %7 = load i32, i32* %x, align 4
  %shl7 = shl i32 %7, 8
  store i32 %shl7, i32* %x, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end.3
  %8 = load i32, i32* %x, align 4
  %cmp9 = icmp ule i32 %8, 268435455
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %9 = load i32, i32* %n, align 4
  %add11 = add nsw i32 %9, 4
  store i32 %add11, i32* %n, align 4
  %10 = load i32, i32* %x, align 4
  %shl12 = shl i32 %10, 4
  store i32 %shl12, i32* %x, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %11 = load i32, i32* %x, align 4
  %cmp14 = icmp ule i32 %11, 1073741823
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %12 = load i32, i32* %n, align 4
  %add16 = add nsw i32 %12, 2
  store i32 %add16, i32* %n, align 4
  %13 = load i32, i32* %x, align 4
  %shl17 = shl i32 %13, 2
  store i32 %shl17, i32* %x, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %14 = load i32, i32* %x, align 4
  %cmp19 = icmp ule i32 %14, 2147483647
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %15 = load i32, i32* %n, align 4
  %add21 = add nsw i32 %15, 1
  store i32 %add21, i32* %n, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %16 = load i32, i32* %n, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @rev(i32 %xi, i32 %y, i32 %z) #0 {
entry:
  %xi.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %xi, i32* %xi.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %xi.addr, align 4
  store i32 %0, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  %and = and i32 %1, 1431655765
  %shl = shl i32 %and, 1
  %2 = load i32, i32* %x, align 4
  %shr = lshr i32 %2, 1
  %and1 = and i32 %shr, 1431655765
  %or = or i32 %shl, %and1
  store i32 %or, i32* %x, align 4
  %3 = load i32, i32* %x, align 4
  %and2 = and i32 %3, 858993459
  %shl3 = shl i32 %and2, 2
  %4 = load i32, i32* %x, align 4
  %shr4 = lshr i32 %4, 2
  %and5 = and i32 %shr4, 858993459
  %or6 = or i32 %shl3, %and5
  store i32 %or6, i32* %x, align 4
  %5 = load i32, i32* %x, align 4
  %and7 = and i32 %5, 252645135
  %shl8 = shl i32 %and7, 4
  %6 = load i32, i32* %x, align 4
  %shr9 = lshr i32 %6, 4
  %and10 = and i32 %shr9, 252645135
  %or11 = or i32 %shl8, %and10
  store i32 %or11, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %shl12 = shl i32 %7, 24
  %8 = load i32, i32* %x, align 4
  %and13 = and i32 %8, 65280
  %shl14 = shl i32 %and13, 8
  %or15 = or i32 %shl12, %shl14
  %9 = load i32, i32* %x, align 4
  %shr16 = lshr i32 %9, 8
  %and17 = and i32 %shr16, 65280
  %or18 = or i32 %or15, %and17
  %10 = load i32, i32* %x, align 4
  %shr19 = lshr i32 %10, 24
  %or20 = or i32 %or18, %shr19
  store i32 %or20, i32* %x, align 4
  %11 = load i32, i32* %x, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @add(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @sub(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define i32 @mul(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: nounwind uwtable
define i32 @divide(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* %x.addr, align 4
  %cmp2 = icmp eq i32 %2, -2147483648
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 1, i32* @unacceptable, align 4
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %div = sdiv i32 %3, %4
  store i32 %div, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @divu(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @unacceptable, align 4
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %div = udiv i32 %1, %2
  store i32 %div, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @And(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @Or(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: nounwind uwtable
define i32 @Xor(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %xor = xor i32 %0, %1
  ret i32 %xor
}

; Function Attrs: nounwind uwtable
define i32 @rotl(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %and = and i32 %0, 63
  store i32 %and, i32* %s, align 4
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %s, align 4
  %shl = shl i32 %1, %2
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %s, align 4
  %sub = sub nsw i32 32, %4
  %shr = lshr i32 %3, %sub
  %or = or i32 %shl, %shr
  ret i32 %or
}

; Function Attrs: nounwind uwtable
define i32 @shl(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %and = and i32 %0, 63
  store i32 %and, i32* %s, align 4
  %1 = load i32, i32* %s, align 4
  %cmp = icmp sge i32 %1, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %s, align 4
  %shl = shl i32 %2, %3
  store i32 %shl, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @shr(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %and = and i32 %0, 63
  store i32 %and, i32* %s, align 4
  %1 = load i32, i32* %s, align 4
  %cmp = icmp sge i32 %1, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %s, align 4
  %shr = lshr i32 %2, %3
  store i32 %shr, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @shrs(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %and = and i32 %0, 63
  store i32 %and, i32* %s, align 4
  %1 = load i32, i32* %s, align 4
  %cmp = icmp sge i32 %1, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %2, 31
  store i32 %shr, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %s, align 4
  %shr1 = ashr i32 %3, %4
  store i32 %shr1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @cmpeq(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @cmplt(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @cmpltu(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp ult i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @seleq(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %z.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @sellt(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %z.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @selle(i32 %x, i32 %y, i32 %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %z.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @print_expr(i32 %opn) #0 {
entry:
  %opn.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %opn, i32* %opn.addr, align 4
  %0 = load i32, i32* %opn.addr, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %opn.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sle i32 -31, %2
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %opn.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sle i32 %4, 31
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %opn.addr, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom6
  %6 = load i32, i32* %arrayidx7, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 %6)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %7 = load i32, i32* %opn.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom8
  %8 = load i32, i32* %arrayidx9, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.41

if.else.11:                                       ; preds = %entry
  %9 = load i32, i32* %opn.addr, align 4
  %cmp12 = icmp eq i32 %9, 11
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else.11
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.40

if.else.15:                                       ; preds = %if.else.11
  %10 = load i32, i32* %opn.addr, align 4
  %sub = sub nsw i32 %10, 12
  store i32 %sub, i32* %i, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom16
  %op = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx17, i32 0, i32 0
  %12 = load i32, i32* %op, align 4
  store i32 %12, i32* %k, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom18
  %fun_name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx19, i32 0, i32 5
  %14 = load i8*, i8** %fun_name, align 8
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* %14)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.15
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom21
  %numopnds = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx22, i32 0, i32 1
  %17 = load i32, i32* %numopnds, align 4
  %cmp23 = icmp slt i32 %15, %17
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom25
  %opnd = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx26, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd, i32 0, i64 %idxprom24
  %20 = load i32, i32* %arrayidx27, align 4
  call void @print_expr(i32 %20)
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom28
  %numopnds30 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx29, i32 0, i32 1
  %23 = load i32, i32* %numopnds30, align 4
  %sub31 = sub nsw i32 %23, 1
  %cmp32 = icmp slt i32 %21, %sub31
  br i1 %cmp32, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %for.body
  %24 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom34
  %op_name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx35, i32 0, i32 6
  %25 = load i8*, i8** %op_name, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* %25)
  br label %if.end.39

if.else.37:                                       ; preds = %for.body
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.40

if.end.40:                                        ; preds = %for.end, %if.then.13
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @print_pgm() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %opndj = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @numi, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom
  %op = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %op, align 4
  store i32 %3, i32* %k, align 4
  %4 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom1
  %mnemonic = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx2, i32 0, i32 4
  %5 = load i8*, i8** %mnemonic, align 8
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* %5, i32 %add)
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom4
  %numopnds = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx5, i32 0, i32 1
  %9 = load i32, i32* %numopnds, align 4
  %cmp6 = icmp slt i32 %7, %9
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.3
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom9
  %opnd = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx10, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd, i32 0, i64 %idxprom8
  %12 = load i32, i32* %arrayidx11, align 4
  store i32 %12, i32* %opndj, align 4
  %13 = load i32, i32* %opndj, align 4
  %cmp12 = icmp slt i32 %13, 11
  br i1 %cmp12, label %if.then, label %if.else.20

if.then:                                          ; preds = %for.body.7
  %14 = load i32, i32* %opndj, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom13
  %15 = load i32, i32* %arrayidx14, align 4
  store i32 %15, i32* %opndj, align 4
  %16 = load i32, i32* %opndj, align 4
  %cmp15 = icmp sge i32 %16, -31
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %17 = load i32, i32* %opndj, align 4
  %cmp16 = icmp sle i32 %17, 31
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %opndj, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 %18)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %19 = load i32, i32* %opndj, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  br label %if.end.28

if.else.20:                                       ; preds = %for.body.7
  %20 = load i32, i32* %opndj, align 4
  %cmp21 = icmp eq i32 %20, 11
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else.20
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.27

if.else.24:                                       ; preds = %if.else.20
  %21 = load i32, i32* %opndj, align 4
  %sub = sub nsw i32 %21, 12
  %add25 = add nsw i32 %sub, 1
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 %add25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom29
  %numopnds31 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx30, i32 0, i32 1
  %24 = load i32, i32* %numopnds31, align 4
  %sub32 = sub nsw i32 %24, 1
  %cmp33 = icmp slt i32 %22, %sub32
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.28
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %26, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0))
  %27 = load i32, i32* @numi, align 4
  %sub42 = sub nsw i32 %27, 1
  %add43 = add nsw i32 %sub42, 12
  call void @print_expr(i32 %add43)
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @check(i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %kx = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  br label %L

L:                                                ; preds = %if.then, %entry
  %0 = load i32, i32* %i.addr, align 4
  call void @simulate_one_instruction(i32 %0)
  %1 = load i32, i32* %i.addr, align 4
  %2 = load i32, i32* @numi, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %L
  %3 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %i.addr, align 4
  br label %L

if.end:                                           ; preds = %L
  %4 = load i32, i32* @unacceptable, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* @unacceptable, align 4
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load i32, i32* @numi, align 4
  %sub3 = sub nsw i32 %5, 1
  %add4 = add nsw i32 %sub3, 12
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* @corr_result, align 4
  %cmp5 = icmp ne i32 %6, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  store i32 0, i32* %kx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end.7
  %8 = load i32, i32* %kx, align 4
  %cmp8 = icmp slt i32 %8, 16
  br i1 %cmp8, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* @check.itrialx, align 4
  %add9 = add nsw i32 %9, 1
  store i32 %add9, i32* @check.itrialx, align 4
  %10 = load i32, i32* @check.itrialx, align 4
  %cmp10 = icmp sge i32 %10, 17
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  store i32 0, i32* @check.itrialx, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.body
  %11 = load i32, i32* @check.itrialx, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [17 x i32], [17 x i32]* @trialx, i32 0, i64 %idxprom13
  %12 = load i32, i32* %arrayidx14, align 4
  store i32 %12, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @r, i32 0, i64 11), align 4
  %13 = load i32, i32* @check.itrialx, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [17 x i32], [17 x i32]* @correct_result, i32 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  store i32 %14, i32* @corr_result, align 4
  store i32 0, i32* %i.addr, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.end.12
  %15 = load i32, i32* %i.addr, align 4
  %16 = load i32, i32* @numi, align 4
  %cmp18 = icmp slt i32 %15, %16
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %17 = load i32, i32* %i.addr, align 4
  call void @simulate_one_instruction(i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %18 = load i32, i32* %i.addr, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i.addr, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  %19 = load i32, i32* @unacceptable, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.end
  store i32 0, i32* @unacceptable, align 4
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %for.end
  %20 = load i32, i32* @numi, align 4
  %add23 = add nsw i32 %20, 12
  %sub24 = sub nsw i32 %add23, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom25
  %21 = load i32, i32* %arrayidx26, align 4
  %22 = load i32, i32* @corr_result, align 4
  %cmp27 = icmp ne i32 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.22
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %23 = load i32, i32* %kx, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, i32* %kx, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.32, %if.then.28, %if.then.21, %if.then.6, %if.then.1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @simulate_one_instruction(i32 %i) #2 {
entry:
  %i.addr = alloca i32, align 4
  %arg0 = alloca i32, align 4
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom
  %opnd = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd, i32 0, i64 0
  %1 = load i32, i32* %arrayidx1, align 4
  %idxprom2 = sext i32 %1 to i64
  %arrayidx3 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom2
  %2 = load i32, i32* %arrayidx3, align 4
  store i32 %2, i32* %arg0, align 4
  %3 = load i32, i32* %i.addr, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom4
  %opnd6 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx5, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd6, i32 0, i64 1
  %4 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom8
  %5 = load i32, i32* %arrayidx9, align 4
  store i32 %5, i32* %arg1, align 4
  %6 = load i32, i32* %i.addr, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom10
  %opnd12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd12, i32 0, i64 2
  %7 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom14
  %8 = load i32, i32* %arrayidx15, align 4
  store i32 %8, i32* %arg2, align 4
  %9 = load i32, i32* %i.addr, align 4
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom16
  %op = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx17, i32 0, i32 0
  %10 = load i32, i32* %op, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom18
  %proc = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx19, i32 0, i32 0
  %11 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %proc, align 8
  %12 = load i32, i32* %arg0, align 4
  %13 = load i32, i32* %arg1, align 4
  %14 = load i32, i32* %arg2, align 4
  %call = call i32 %11(i32 %12, i32 %13, i32 %14)
  %15 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %15, 12
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i32 0, i64 %idxprom20
  store i32 %call, i32* %arrayidx21, align 4
  %16 = load i32, i32* %i.addr, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i32 0, i64 %idxprom22
  %17 = load i32, i32* %arrayidx23, align 4
  %add24 = add i32 %17, 1
  %18 = load i32, i32* %i.addr, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i32 0, i64 %idxprom25
  store i32 %add24, i32* %arrayidx26, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @fix_operands(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %rs = alloca i32, align 4
  %rt = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom
  %op = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %op, align 4
  store i32 %1, i32* %k, align 4
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* @numi, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp eq i32 %2, %sub
  br i1 %cmp, label %if.then, label %if.end.73

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @numi, align 4
  %add = add nsw i32 %4, 12
  %sub1 = sub nsw i32 %add, 2
  store i32 %sub1, i32* %rs, align 4
  %5 = load i32, i32* %i.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom2
  %opnd = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx3, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd, i32 0, i64 1
  %6 = load i32, i32* %arrayidx4, align 4
  %7 = load i32, i32* %rs, align 4
  %cmp5 = icmp ne i32 %6, %7
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load i32, i32* %i.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom6
  %opnd8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd8, i32 0, i64 2
  %9 = load i32, i32* %arrayidx9, align 4
  %10 = load i32, i32* %rs, align 4
  %cmp10 = icmp ne i32 %9, %10
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %rs, align 4
  %12 = load i32, i32* %i.addr, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom12
  %opnd14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd14, i32 0, i64 0
  store i32 %11, i32* %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true, %if.then
  %13 = load i32, i32* %rs, align 4
  %sub16 = sub nsw i32 %13, 1
  store i32 %sub16, i32* %rt, align 4
  %14 = load i32, i32* %rt, align 4
  %cmp17 = icmp sge i32 %14, 12
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.72

land.lhs.true.18:                                 ; preds = %if.end
  %15 = load i32, i32* %i.addr, align 4
  %sub19 = sub nsw i32 %15, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom20
  %opnd22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx21, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd22, i32 0, i64 0
  %16 = load i32, i32* %arrayidx23, align 4
  %17 = load i32, i32* %rt, align 4
  %cmp24 = icmp ne i32 %16, %17
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.72

land.lhs.true.25:                                 ; preds = %land.lhs.true.18
  %18 = load i32, i32* %i.addr, align 4
  %sub26 = sub nsw i32 %18, 1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom27
  %opnd29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx28, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd29, i32 0, i64 1
  %19 = load i32, i32* %arrayidx30, align 4
  %20 = load i32, i32* %rt, align 4
  %cmp31 = icmp ne i32 %19, %20
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.72

land.lhs.true.32:                                 ; preds = %land.lhs.true.25
  %21 = load i32, i32* %i.addr, align 4
  %sub33 = sub nsw i32 %21, 1
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom34
  %opnd36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx35, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd36, i32 0, i64 2
  %22 = load i32, i32* %arrayidx37, align 4
  %23 = load i32, i32* %rt, align 4
  %cmp38 = icmp ne i32 %22, %23
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.72

land.lhs.true.39:                                 ; preds = %land.lhs.true.32
  %24 = load i32, i32* %i.addr, align 4
  %idxprom40 = sext i32 %24 to i64
  %arrayidx41 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom40
  %opnd42 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx41, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd42, i32 0, i64 1
  %25 = load i32, i32* %arrayidx43, align 4
  %26 = load i32, i32* %rt, align 4
  %cmp44 = icmp ne i32 %25, %26
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.72

land.lhs.true.45:                                 ; preds = %land.lhs.true.39
  %27 = load i32, i32* %i.addr, align 4
  %idxprom46 = sext i32 %27 to i64
  %arrayidx47 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom46
  %opnd48 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx47, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd48, i32 0, i64 2
  %28 = load i32, i32* %arrayidx49, align 4
  %29 = load i32, i32* %rt, align 4
  %cmp50 = icmp ne i32 %28, %29
  br i1 %cmp50, label %if.then.51, label %if.end.72

if.then.51:                                       ; preds = %land.lhs.true.45
  %30 = load i32, i32* %i.addr, align 4
  %idxprom52 = sext i32 %30 to i64
  %arrayidx53 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom52
  %opnd54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx53, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd54, i32 0, i64 0
  %31 = load i32, i32* %arrayidx55, align 4
  %32 = load i32, i32* %rt, align 4
  %cmp56 = icmp slt i32 %31, %32
  br i1 %cmp56, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.then.51
  %33 = load i32, i32* %rt, align 4
  %34 = load i32, i32* %i.addr, align 4
  %idxprom58 = sext i32 %34 to i64
  %arrayidx59 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom58
  %opnd60 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx59, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd60, i32 0, i64 0
  store i32 %33, i32* %arrayidx61, align 4
  br label %if.end.71

if.else:                                          ; preds = %if.then.51
  %35 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %35 to i64
  %arrayidx63 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom62
  %numopnds = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx63, i32 0, i32 1
  %36 = load i32, i32* %numopnds, align 4
  %cmp64 = icmp sgt i32 %36, 1
  br i1 %cmp64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.else
  %37 = load i32, i32* %rt, align 4
  %38 = load i32, i32* %i.addr, align 4
  %idxprom66 = sext i32 %38 to i64
  %arrayidx67 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom66
  %opnd68 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx67, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd68, i32 0, i64 1
  store i32 %37, i32* %arrayidx69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %if.else
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.57
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.45, %land.lhs.true.39, %land.lhs.true.32, %land.lhs.true.25, %land.lhs.true.18, %if.end
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %entry
  %39 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %39 to i64
  %arrayidx75 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom74
  %commutative = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx75, i32 0, i32 2
  %40 = load i32, i32* %commutative, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.76, label %if.end.96

if.then.76:                                       ; preds = %if.end.73
  %41 = load i32, i32* %i.addr, align 4
  %idxprom77 = sext i32 %41 to i64
  %arrayidx78 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom77
  %opnd79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx78, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd79, i32 0, i64 0
  %42 = load i32, i32* %arrayidx80, align 4
  %43 = load i32, i32* %i.addr, align 4
  %idxprom81 = sext i32 %43 to i64
  %arrayidx82 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom81
  %opnd83 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx82, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd83, i32 0, i64 1
  %44 = load i32, i32* %arrayidx84, align 4
  %cmp85 = icmp slt i32 %42, %44
  br i1 %cmp85, label %if.then.86, label %if.end.95

if.then.86:                                       ; preds = %if.then.76
  %45 = load i32, i32* %i.addr, align 4
  %idxprom87 = sext i32 %45 to i64
  %arrayidx88 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom87
  %opnd89 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx88, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd89, i32 0, i64 1
  %46 = load i32, i32* %arrayidx90, align 4
  %47 = load i32, i32* %i.addr, align 4
  %idxprom91 = sext i32 %47 to i64
  %arrayidx92 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom91
  %opnd93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx92, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd93, i32 0, i64 0
  store i32 %46, i32* %arrayidx94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.86, %if.then.76
  br label %if.end.129

if.end.96:                                        ; preds = %if.end.73
  %48 = load i32, i32* %i.addr, align 4
  %49 = load i32, i32* @numi, align 4
  %sub97 = sub nsw i32 %49, 1
  %cmp98 = icmp ne i32 %48, %sub97
  br i1 %cmp98, label %if.then.99, label %if.end.129

if.then.99:                                       ; preds = %if.end.96
  %50 = load i32, i32* %i.addr, align 4
  %idxprom100 = sext i32 %50 to i64
  %arrayidx101 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom100
  %opnd102 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx101, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd102, i32 0, i64 0
  %51 = load i32, i32* %arrayidx103, align 4
  %cmp104 = icmp slt i32 %51, 11
  br i1 %cmp104, label %land.lhs.true.105, label %if.end.128

land.lhs.true.105:                                ; preds = %if.then.99
  %52 = load i32, i32* %i.addr, align 4
  %idxprom106 = sext i32 %52 to i64
  %arrayidx107 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom106
  %opnd108 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx107, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd108, i32 0, i64 1
  %53 = load i32, i32* %arrayidx109, align 4
  %cmp110 = icmp slt i32 %53, 11
  br i1 %cmp110, label %land.lhs.true.111, label %if.end.128

land.lhs.true.111:                                ; preds = %land.lhs.true.105
  %54 = load i32, i32* %i.addr, align 4
  %idxprom112 = sext i32 %54 to i64
  %arrayidx113 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom112
  %opnd114 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx113, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd114, i32 0, i64 2
  %55 = load i32, i32* %arrayidx115, align 4
  %cmp116 = icmp slt i32 %55, 11
  br i1 %cmp116, label %if.then.117, label %if.end.128

if.then.117:                                      ; preds = %land.lhs.true.111
  %56 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %56 to i64
  %arrayidx119 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom118
  %commutative120 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx119, i32 0, i32 2
  %57 = load i32, i32* %commutative120, align 4
  %tobool121 = icmp ne i32 %57, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.117
  call void @abort() #4
  unreachable

if.end.123:                                       ; preds = %if.then.117
  %58 = load i32, i32* %i.addr, align 4
  %idxprom124 = sext i32 %58 to i64
  %arrayidx125 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom124
  %opnd126 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx125, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd126, i32 0, i64 0
  store i32 11, i32* %arrayidx127, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.123, %land.lhs.true.111, %land.lhs.true.105, %if.then.99
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.95, %if.end.128, %if.end.96
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind uwtable
define i32 @search() #0 {
entry:
  %retval = alloca i32, align 4
  %ok = alloca i32, align 4
  %i = alloca i32, align 4
  %num_solutions = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @trialx, i32 0, i64 0), align 4
  store i32 %0, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @r, i32 0, i64 11), align 4
  %1 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @correct_result, i32 0, i64 0), align 4
  store i32 %1, i32* @corr_result, align 4
  store i32 0, i32* %num_solutions, align 4
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %i, align 4
  %call = call i32 @check(i32 %2)
  store i32 %call, i32* %ok, align 4
  %3 = load i32, i32* %ok, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %num_solutions, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %num_solutions, align 4
  %5 = load i32, i32* @numi, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0), i32 %5)
  call void (i32, ...) bitcast (void ()* @print_pgm to void (i32, ...)*)(i32 3)
  %6 = load i32, i32* %num_solutions, align 4
  %cmp = icmp eq i32 %6, 5
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %num_solutions, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %do.body
  %call4 = call i32 @increment()
  store i32 %call4, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.3
  %8 = load i32, i32* %i, align 4
  %cmp5 = icmp sge i32 %8, 0
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load i32, i32* %num_solutions, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @increment() #2 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %opndj = alloca i32, align 4
  %nopnds = alloca i32, align 4
  %0 = load i32, i32* @numi, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.97, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom
  %op = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %op, align 4
  store i32 %3, i32* %k, align 4
  %4 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom1
  %numopnds = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %numopnds, align 4
  store i32 %5, i32* %nopnds, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %nopnds, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom7
  %opnd = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd, i32 0, i64 %idxprom6
  %10 = load i32, i32* %arrayidx9, align 4
  store i32 %10, i32* %opndj, align 4
  %11 = load i32, i32* %opndj, align 4
  %cmp10 = icmp slt i32 %11, 6
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.5
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom12
  %opnd14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd14, i32 0, i64 %idxprom11
  %14 = load i32, i32* %arrayidx15, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %arrayidx15, align 4
  br label %for.end

if.else:                                          ; preds = %for.body.5
  %15 = load i32, i32* %opndj, align 4
  %cmp16 = icmp eq i32 %15, 6
  br i1 %cmp16, label %if.then.17, label %if.else.23

if.then.17:                                       ; preds = %if.else
  %16 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom19
  %opnd21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd21, i32 0, i64 %idxprom18
  store i32 11, i32* %arrayidx22, align 4
  br label %for.end

if.else.23:                                       ; preds = %if.else
  %18 = load i32, i32* %opndj, align 4
  %19 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %19, 12
  %sub25 = sub nsw i32 %add24, 1
  %cmp26 = icmp slt i32 %18, %sub25
  br i1 %cmp26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else.23
  %20 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom29
  %opnd31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd31, i32 0, i64 %idxprom28
  %22 = load i32, i32* %arrayidx32, align 4
  %add33 = add nsw i32 %22, 1
  store i32 %add33, i32* %arrayidx32, align 4
  br label %for.end

if.end:                                           ; preds = %if.else.23
  br label %if.end.34

if.end.34:                                        ; preds = %if.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34
  %23 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %23 to i64
  %24 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom37
  %opndstart = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx38, i32 0, i32 3
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %opndstart, i32 0, i64 %idxprom36
  %25 = load i32, i32* %arrayidx39, align 4
  %26 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom41
  %opnd43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd43, i32 0, i64 %idxprom40
  store i32 %25, i32* %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %28 = load i32, i32* %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %if.then.27, %if.then.17, %if.then, %for.cond.3
  %29 = load i32, i32* %j, align 4
  %cmp45 = icmp eq i32 %29, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.end
  %30 = load i32, i32* %i, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.47:                                        ; preds = %for.end
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %nopnds, align 4
  %cmp48 = icmp slt i32 %31, %32
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  %33 = load i32, i32* %i, align 4
  call void @fix_operands(i32 %33)
  %34 = load i32, i32* %i, align 4
  store i32 %34, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.47
  %35 = load i32, i32* %k, align 4
  %cmp51 = icmp slt i32 %35, 12
  br i1 %cmp51, label %if.then.52, label %if.end.81

if.then.52:                                       ; preds = %if.end.50
  %36 = load i32, i32* %k, align 4
  %add53 = add nsw i32 %36, 1
  store i32 %add53, i32* %k, align 4
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %38 to i64
  %arrayidx55 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom54
  %op56 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx55, i32 0, i32 0
  store i32 %37, i32* %op56, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom57
  %opndstart59 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx58, i32 0, i32 3
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %opndstart59, i32 0, i64 0
  %40 = load i32, i32* %arrayidx60, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %41 to i64
  %arrayidx62 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom61
  %opnd63 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx62, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd63, i32 0, i64 0
  store i32 %40, i32* %arrayidx64, align 4
  %42 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %42 to i64
  %arrayidx66 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom65
  %opndstart67 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx66, i32 0, i32 3
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %opndstart67, i32 0, i64 1
  %43 = load i32, i32* %arrayidx68, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %44 to i64
  %arrayidx70 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom69
  %opnd71 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx70, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd71, i32 0, i64 1
  store i32 %43, i32* %arrayidx72, align 4
  %45 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %45 to i64
  %arrayidx74 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 %idxprom73
  %opndstart75 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx74, i32 0, i32 3
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %opndstart75, i32 0, i64 2
  %46 = load i32, i32* %arrayidx76, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %47 to i64
  %arrayidx78 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom77
  %opnd79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx78, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd79, i32 0, i64 2
  store i32 %46, i32* %arrayidx80, align 4
  %48 = load i32, i32* %i, align 4
  call void @fix_operands(i32 %48)
  %49 = load i32, i32* %i, align 4
  store i32 %49, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.50
  %50 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %50 to i64
  %arrayidx83 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom82
  %op84 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx83, i32 0, i32 0
  store i32 0, i32* %op84, align 4
  %51 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 0, i32 3, i64 0), align 4
  %52 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom85
  %opnd87 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx86, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd87, i32 0, i64 0
  store i32 %51, i32* %arrayidx88, align 4
  %53 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 0, i32 3, i64 1), align 4
  %54 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %54 to i64
  %arrayidx90 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom89
  %opnd91 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx90, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd91, i32 0, i64 1
  store i32 %53, i32* %arrayidx92, align 4
  %55 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 0, i32 3, i64 2), align 4
  %56 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %56 to i64
  %arrayidx94 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom93
  %opnd95 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx94, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd95, i32 0, i64 2
  store i32 %55, i32* %arrayidx96, align 4
  %57 = load i32, i32* %i, align 4
  call void @fix_operands(i32 %57)
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.81
  %58 = load i32, i32* %i, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.98, %if.then.52, %if.then.49, %if.then.46
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %num_sol = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %num_sol, align 4
  store i32 1, i32* @numi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %entry
  %0 = load i32, i32* @numi, align 4
  %cmp = icmp sle i32 %0, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %num_sol, align 4
  %cmp1 = icmp eq i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %for.body, label %for.end.44

for.body:                                         ; preds = %land.end
  %3 = load i32, i32* @numi, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i32 0, i32 0), i32 %3)
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 17
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @trialx, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call5 = call i32 @userfun(i32 %6)
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [17 x i32], [17 x i32]* @correct_result, i32 0, i64 %idxprom6
  store i32 %call5, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.24, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @numi, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body.10, label %for.end.26

for.body.10:                                      ; preds = %for.cond.8
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom11
  %op = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx12, i32 0, i32 0
  store i32 0, i32* %op, align 4
  %12 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 0, i32 3, i64 0), align 4
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom13
  %opnd = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd, i32 0, i64 0
  store i32 %12, i32* %arrayidx15, align 4
  %14 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 0, i32 3, i64 1), align 4
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom16
  %opnd18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd18, i32 0, i64 1
  store i32 %14, i32* %arrayidx19, align 4
  %16 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i32 0, i64 0, i32 3, i64 2), align 4
  %17 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i32 0, i64 %idxprom20
  %opnd22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx21, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %opnd22, i32 0, i64 2
  store i32 %16, i32* %arrayidx23, align 4
  %18 = load i32, i32* %i, align 4
  call void @fix_operands(i32 %18)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.10
  %19 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.8

for.end.26:                                       ; preds = %for.cond.8
  %call27 = call i32 @search()
  store i32 %call27, i32* %num_sol, align 4
  %20 = load i32, i32* %num_sol, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i32 %20)
  store i32 0, i32* %total, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.38, %for.end.26
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* @numi, align 4
  %cmp31 = icmp slt i32 %21, %22
  br i1 %cmp31, label %for.body.32, label %for.end.40

for.body.32:                                      ; preds = %for.cond.30
  %23 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i32 0, i64 %idxprom33
  %24 = load i32, i32* %arrayidx34, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 %24)
  %25 = load i32, i32* %total, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %26 to i64
  %arrayidx37 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i32 0, i64 %idxprom36
  %27 = load i32, i32* %arrayidx37, align 4
  %add = add i32 %25, %27
  store i32 %add, i32* %total, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.32
  %28 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %28, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.30

for.end.40:                                       ; preds = %for.cond.30
  %29 = load i32, i32* %total, align 4
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i32 %29)
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.40
  %30 = load i32, i32* @numi, align 4
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, i32* @numi, align 4
  br label %for.cond

for.end.44:                                       ; preds = %land.end
  ret i32 0
}

declare i32 @userfun(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
