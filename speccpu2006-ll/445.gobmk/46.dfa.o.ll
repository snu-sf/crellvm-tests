; ModuleID = 'patterns/dfa.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dfa = type { [80 x i8], i32, %struct.state*, i32, i32, %struct.attrib*, i32, i32 }
%struct.state = type { i32, [4 x i32] }
%struct.attrib = type { i32, i32 }
%struct.test_array = type { [4096 x %struct.entry*] }
%struct.entry = type { i32, i32, i32, %struct.entry* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.patval_b = type { i32, i32, i32 }

@dfa_verbose = global i32 0, align 4
@convert = constant [3 x [4 x i32]] [[4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 0, i32 2, i32 1, i32 3]], align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"Building spiral order\0A\00", align 1
@generator = internal constant [4 x i32] [i32 84, i32 1, i32 -84, i32 -1], align 16
@transformation2 = external constant [8 x [2 x [2 x i32]]], align 16
@line = internal global i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c" name : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" Nb states :  %7d, max= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" Nb Indexes : %7d, max= %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c" memory needed : %d Mb\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c" state  |   .    |   O    |   X    |   #    |  att \0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" %6d |\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c" %6d | %6d | %6d |\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %5d:\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"noname \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"dfa %s is born :)\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"dfa %s is dead :(\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"#error too many states\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"Error: The dfa states are too disperse. Can't fit delta into a short.\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"Error: Too many index entries. Can't fit delta into a short.\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"\0A#include \22dfa.h\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"static const state_rt_t state_%s[%d] = {\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"{%d,\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"}},%s\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"static const attrib_rt_t idx_%s[%d] = {\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"{%d,%d},%s\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"static dfa_rt_t dfa_%s = {\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" \22%s\22,\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c" %d,\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"state_%s,\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"idx_%s\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"dfa: init\0A\00", align 1
@dfa_was_initialized = internal global i32 0, align 4
@spiral = common global [1764 x [8 x i32]] zeroinitializer, align 16
@aux_dfa = internal global [33 x %struct.dfa] zeroinitializer, align 16
@.str.36 = private unnamed_addr constant [8 x i8] c"binAux \00", align 1
@aux_temp = internal global %struct.dfa zeroinitializer, align 8
@.str.37 = private unnamed_addr constant [9 x i8] c"tempAux \00", align 1
@dfa_p = common global [7056 x i32] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [10 x i8] c"dfa: end\0A\00", align 1
@aux_count = internal global i32 0, align 4
@.str.39 = private unnamed_addr constant [33 x i8] c"Adding to dfa %s the string: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"  pat_ind: %d; rotation: %d at bin: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"converting pattern into string.\0A\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@att2val = internal constant [8 x i8] c".XOxo,a!", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"XOxo.,a!\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"#|-+\00", align 1
@.str.46 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"Resizing dfa %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"No memory left for dfa: %s\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Product between %s and %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"result in %s\0A\00", align 1
@gpout = internal global %struct.dfa* null, align 8
@gpleft = internal global %struct.dfa* null, align 8
@gpright = internal global %struct.dfa* null, align 8
@gtest = internal global %struct.test_array zeroinitializer, align 8
@.str.51 = private unnamed_addr constant [30 x i8] c"No memory left for new entry\0A\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"linear dfa in %s with string: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"$#+-|OoXx.?,!a*\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"$?.ox,a!*\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"$?Oo\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"$?Xx\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"$#+-|\00", align 1

; Function Attrs: nounwind uwtable
define void @buildSpiralOrder([8 x i32]* %order) #0 {
entry:
  %order.addr = alloca [8 x i32]*, align 8
  %mark = alloca [7056 x i32], align 16
  %fifo = alloca [14112 x i32], align 16
  %top = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i0 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %k = alloca i32, align 4
  %ll = alloca i32, align 4
  %ii = alloca i32, align 4
  %delta = alloca i32, align 4
  store [8 x i32]* %order, [8 x i32]** %order.addr, align 8
  store i32 0, i32* %top, align 4
  store i32 0, i32* %end, align 4
  %0 = load i32, i32* @dfa_verbose, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %ii, align 4
  %cmp1 = icmp slt i32 %2, 7056
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [7056 x i32], [7056 x i32]* %mark, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.13, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %5, 63
  br i1 %cmp3, label %for.body.4, label %for.end.15

for.body.4:                                       ; preds = %for.cond.2
  store i32 21, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.10, %for.body.4
  %6 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %6, 63
  br i1 %cmp6, label %for.body.7, label %for.end.12

for.body.7:                                       ; preds = %for.cond.5
  %7 = load i32, i32* %i, align 4
  %mul = mul nsw i32 84, %7
  %8 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %8
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [7056 x i32], [7056 x i32]* %mark, i32 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.7
  %9 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond.5

for.end.12:                                       ; preds = %for.cond.5
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end.12
  %10 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %10, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.2

for.end.15:                                       ; preds = %for.cond.2
  store i32 0, i32* %end, align 4
  store i32 1, i32* %top, align 4
  %11 = load i32, i32* %end, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [14112 x i32], [14112 x i32]* %fifo, i32 0, i64 %idxprom16
  store i32 3570, i32* %arrayidx17, align 4
  %12 = load i32, i32* %end, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [14112 x i32], [14112 x i32]* %fifo, i32 0, i64 %idxprom18
  %13 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [7056 x i32], [7056 x i32]* %mark, i32 0, i64 %idxprom20
  store i32 1, i32* %arrayidx21, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.48, %for.end.15
  %14 = load i32, i32* %end, align 4
  %cmp22 = icmp slt i32 %14, 1764
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %end, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [14112 x i32], [14112 x i32]* %fifo, i32 0, i64 %idxprom23
  %16 = load i32, i32* %arrayidx24, align 4
  store i32 %16, i32* %ii, align 4
  %17 = load i32, i32* %ii, align 4
  %sub = sub nsw i32 %17, 3570
  %18 = load i32, i32* %end, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load [8 x i32]*, [8 x i32]** %order.addr, align 8
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx26, i32 0, i64 0
  store i32 %sub, i32* %arrayidx27, align 4
  %20 = load i32, i32* %end, align 4
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, i32* %end, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.46, %while.body
  %21 = load i32, i32* %k, align 4
  %cmp30 = icmp ne i32 %21, 4
  br i1 %cmp30, label %for.body.31, label %for.end.48

for.body.31:                                      ; preds = %for.cond.29
  %22 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* @generator, i32 0, i64 %idxprom32
  %23 = load i32, i32* %arrayidx33, align 4
  store i32 %23, i32* %delta, align 4
  %24 = load i32, i32* %ii, align 4
  %25 = load i32, i32* %delta, align 4
  %add34 = add nsw i32 %24, %25
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [7056 x i32], [7056 x i32]* %mark, i32 0, i64 %idxprom35
  %26 = load i32, i32* %arrayidx36, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.end.45, label %if.then.37

if.then.37:                                       ; preds = %for.body.31
  %27 = load i32, i32* %ii, align 4
  %28 = load i32, i32* %delta, align 4
  %add38 = add nsw i32 %27, %28
  %29 = load i32, i32* %top, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [14112 x i32], [14112 x i32]* %fifo, i32 0, i64 %idxprom39
  store i32 %add38, i32* %arrayidx40, align 4
  %30 = load i32, i32* %ii, align 4
  %31 = load i32, i32* %delta, align 4
  %add41 = add nsw i32 %30, %31
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [7056 x i32], [7056 x i32]* %mark, i32 0, i64 %idxprom42
  store i32 1, i32* %arrayidx43, align 4
  %32 = load i32, i32* %top, align 4
  %inc44 = add nsw i32 %32, 1
  store i32 %inc44, i32* %top, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.37, %for.body.31
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %33 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %33, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond.29

for.end.48:                                       ; preds = %for.cond.29
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.101, %while.end
  %34 = load i32, i32* %k, align 4
  %cmp50 = icmp slt i32 %34, 1764
  br i1 %cmp50, label %for.body.51, label %for.end.103

for.body.51:                                      ; preds = %for.cond.49
  %35 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %35 to i64
  %36 = load [8 x i32]*, [8 x i32]** %order.addr, align 8
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* %36, i64 %idxprom52
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx53, i32 0, i64 0
  %37 = load i32, i32* %arrayidx54, align 4
  %rem = srem i32 %37, 84
  store i32 %rem, i32* %j0, align 4
  %38 = load i32, i32* %j0, align 4
  %cmp55 = icmp sge i32 %38, 42
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %for.body.51
  %39 = load i32, i32* %j0, align 4
  %sub57 = sub nsw i32 %39, 84
  store i32 %sub57, i32* %j0, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %for.body.51
  %40 = load i32, i32* %j0, align 4
  %cmp59 = icmp slt i32 %40, -42
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.58
  %41 = load i32, i32* %j0, align 4
  %add61 = add nsw i32 %41, 84
  store i32 %add61, i32* %j0, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.58
  %42 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %42 to i64
  %43 = load [8 x i32]*, [8 x i32]** %order.addr, align 8
  %arrayidx64 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx64, i32 0, i64 0
  %44 = load i32, i32* %arrayidx65, align 4
  %45 = load i32, i32* %j0, align 4
  %sub66 = sub nsw i32 %44, %45
  %div = sdiv i32 %sub66, 84
  store i32 %div, i32* %i0, align 4
  store i32 1, i32* %ll, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.98, %if.end.62
  %46 = load i32, i32* %ll, align 4
  %cmp68 = icmp ne i32 %46, 8
  br i1 %cmp68, label %for.body.69, label %for.end.100

for.body.69:                                      ; preds = %for.cond.67
  br label %do.body

do.body:                                          ; preds = %for.body.69
  %47 = load i32, i32* %ll, align 4
  %idxprom70 = sext i32 %47 to i64
  %arrayidx71 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx71, i32 0, i64 0
  %arrayidx73 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx72, i32 0, i64 0
  %48 = load i32, i32* %arrayidx73, align 4
  %49 = load i32, i32* %i0, align 4
  %mul74 = mul nsw i32 %48, %49
  %50 = load i32, i32* %ll, align 4
  %idxprom75 = sext i32 %50 to i64
  %arrayidx76 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx76, i32 0, i64 0
  %arrayidx78 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx77, i32 0, i64 1
  %51 = load i32, i32* %arrayidx78, align 4
  %52 = load i32, i32* %j0, align 4
  %mul79 = mul nsw i32 %51, %52
  %add80 = add nsw i32 %mul74, %mul79
  store i32 %add80, i32* %i, align 4
  %53 = load i32, i32* %ll, align 4
  %idxprom81 = sext i32 %53 to i64
  %arrayidx82 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx82, i32 0, i64 1
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx83, i32 0, i64 0
  %54 = load i32, i32* %arrayidx84, align 4
  %55 = load i32, i32* %i0, align 4
  %mul85 = mul nsw i32 %54, %55
  %56 = load i32, i32* %ll, align 4
  %idxprom86 = sext i32 %56 to i64
  %arrayidx87 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i32 0, i64 %idxprom86
  %arrayidx88 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx87, i32 0, i64 1
  %arrayidx89 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx88, i32 0, i64 1
  %57 = load i32, i32* %arrayidx89, align 4
  %58 = load i32, i32* %j0, align 4
  %mul90 = mul nsw i32 %57, %58
  %add91 = add nsw i32 %mul85, %mul90
  store i32 %add91, i32* %j, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %59 = load i32, i32* %i, align 4
  %mul92 = mul nsw i32 84, %59
  %60 = load i32, i32* %j, align 4
  %add93 = add nsw i32 %mul92, %60
  %61 = load i32, i32* %ll, align 4
  %idxprom94 = sext i32 %61 to i64
  %62 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %62 to i64
  %63 = load [8 x i32]*, [8 x i32]** %order.addr, align 8
  %arrayidx96 = getelementptr inbounds [8 x i32], [8 x i32]* %63, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx96, i32 0, i64 %idxprom94
  store i32 %add93, i32* %arrayidx97, align 4
  br label %for.inc.98

for.inc.98:                                       ; preds = %do.end
  %64 = load i32, i32* %ll, align 4
  %inc99 = add nsw i32 %64, 1
  store i32 %inc99, i32* %ll, align 4
  br label %for.cond.67

for.end.100:                                      ; preds = %for.cond.67
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end.100
  %65 = load i32, i32* %k, align 4
  %inc102 = add nsw i32 %65, 1
  store i32 %inc102, i32* %k, align 4
  br label %for.cond.49

for.end.103:                                      ; preds = %for.cond.49
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @dfa_size(%struct.dfa* %pdfa) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %states_size = alloca i32, align 4
  %indexes_size = alloca i32, align 4
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 4
  %1 = load i32, i32* %last_state, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 10
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %states_size, align 4
  %2 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index = getelementptr inbounds %struct.dfa, %struct.dfa* %2, i32 0, i32 7
  %3 = load i32, i32* %last_index, align 4
  %add2 = add nsw i32 %3, 1
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 %conv3, 4
  %conv5 = trunc i64 %mul4 to i32
  store i32 %conv5, i32* %indexes_size, align 4
  %4 = load i32, i32* %states_size, align 4
  %5 = load i32, i32* %indexes_size, align 4
  %add6 = add nsw i32 %4, %5
  %conv7 = sext i32 %add6 to i64
  %add8 = add i64 %conv7, 104
  %div = udiv i64 %add8, 1024
  %conv9 = trunc i64 %div to i32
  ret i32 %conv9
}

; Function Attrs: nounwind uwtable
define void @dump_dfa(%struct._IO_FILE* %f, %struct.dfa* %pdfa) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %pdfa.addr = alloca %struct.dfa*, align 8
  %i = alloca i32, align 4
  %att = alloca i32, align 4
  %k = alloca i32, align 4
  %pnext = alloca i32*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = load i8*, i8** @line, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %3 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %name = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i32 0, i32 0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %5 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %5, i32 0, i32 4
  %6 = load i32, i32* %last_state, align 4
  %add = add nsw i32 %6, 1
  %7 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_states = getelementptr inbounds %struct.dfa, %struct.dfa* %7, i32 0, i32 3
  %8 = load i32, i32* %max_states, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 %add, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %10 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 7
  %11 = load i32, i32* %last_index, align 4
  %12 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %12, i32 0, i32 6
  %13 = load i32, i32* %max_indexes, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %11, i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %15 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %call4 = call i32 @dfa_size(%struct.dfa* %15)
  %div = sdiv i32 %call4, 1024
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 %div)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %17 = load i8*, i8** @line, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* %17)
  %18 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %call7 = call i32 @dfa_size(%struct.dfa* %18)
  %cmp = icmp sgt i32 %call7, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %21 = load i8*, i8** @line, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* %21)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state10 = getelementptr inbounds %struct.dfa, %struct.dfa* %23, i32 0, i32 4
  %24 = load i32, i32* %last_state10, align 4
  %add11 = add nsw i32 %24, 1
  %cmp12 = icmp ne i32 %22, %add11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %26, i32 0, i32 2
  %27 = load %struct.state*, %struct.state** %states, align 8
  %arrayidx = getelementptr inbounds %struct.state, %struct.state* %27, i64 %idxprom
  %next = getelementptr inbounds %struct.state, %struct.state* %arrayidx, i32 0, i32 1
  %arraydecay13 = getelementptr inbounds [4 x i32], [4 x i32]* %next, i32 0, i32 0
  store i32* %arraydecay13, i32** %pnext, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %29 = load i32, i32* %i, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %31 = load i32*, i32** %pnext, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx15, align 4
  %33 = load i32*, i32** %pnext, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %33, i64 1
  %34 = load i32, i32* %arrayidx16, align 4
  %35 = load i32*, i32** %pnext, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %35, i64 2
  %36 = load i32, i32* %arrayidx17, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 %32, i32 %34, i32 %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %38 = load i32*, i32** %pnext, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %38, i64 3
  %39 = load i32, i32* %arrayidx19, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %39)
  %40 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %40 to i64
  %41 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states22 = getelementptr inbounds %struct.dfa, %struct.dfa* %41, i32 0, i32 2
  %42 = load %struct.state*, %struct.state** %states22, align 8
  %arrayidx23 = getelementptr inbounds %struct.state, %struct.state* %42, i64 %idxprom21
  %att24 = getelementptr inbounds %struct.state, %struct.state* %arrayidx23, i32 0, i32 0
  %43 = load i32, i32* %att24, align 4
  store i32 %43, i32* %att, align 4
  store i32 0, i32* %k, align 4
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %45 = load i32, i32* %att, align 4
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %45)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %46 = load i32, i32* %att, align 4
  %cmp26 = icmp ne i32 %46, 0
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %47 = load i32, i32* %k, align 4
  %cmp27 = icmp slt i32 %47, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %48 = phi i1 [ false, %while.cond ], [ %cmp27, %land.rhs ]
  br i1 %48, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %50 = load i32, i32* %att, align 4
  %idxprom28 = sext i32 %50 to i64
  %51 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %51, i32 0, i32 5
  %52 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %arrayidx29 = getelementptr inbounds %struct.attrib, %struct.attrib* %52, i64 %idxprom28
  %val = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx29, i32 0, i32 0
  %53 = load i32, i32* %val, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %53)
  %54 = load i32, i32* %att, align 4
  %idxprom31 = sext i32 %54 to i64
  %55 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes32 = getelementptr inbounds %struct.dfa, %struct.dfa* %55, i32 0, i32 5
  %56 = load %struct.attrib*, %struct.attrib** %indexes32, align 8
  %arrayidx33 = getelementptr inbounds %struct.attrib, %struct.attrib* %56, i64 %idxprom31
  %next34 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx33, i32 0, i32 1
  %57 = load i32, i32* %next34, align 4
  store i32 %57, i32* %att, align 4
  %58 = load i32, i32* %k, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %59 = load i32, i32* %att, align 4
  %cmp35 = icmp ne i32 %59, 0
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %while.end
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %while.end
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %62 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %62, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %64 = load i8*, i8** @line, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* %64)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call42 = call i32 @fflush(%struct._IO_FILE* %65)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @new_dfa(%struct.dfa* %pdfa, i8* %name) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %1 = bitcast %struct.dfa* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 120, i32 8, i1 false)
  %2 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  call void @resize_dfa(%struct.dfa* %2, i32 250, i32 250)
  %3 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  call void @clean_dfa(%struct.dfa* %3)
  %4 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %name1 = getelementptr inbounds %struct.dfa, %struct.dfa* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name1, i32 0, i32 0
  %6 = load i8*, i8** %name.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %6) #2
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %name2 = getelementptr inbounds %struct.dfa, %struct.dfa* %7, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [80 x i8], [80 x i8]* %name2, i32 0, i32 0
  %call4 = call i8* @strcpy(i8* %arraydecay3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* @dfa_verbose, align 4
  %cmp5 = icmp sgt i32 %8, 1
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %name7 = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [80 x i8], [80 x i8]* %name7, i32 0, i32 0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay8)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @resize_dfa(%struct.dfa* %pdfa, i32 %max_states, i32 %max_indexes) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %max_states.addr = alloca i32, align 4
  %max_indexes.addr = alloca i32, align 4
  %pBuf = alloca %struct.state*, align 8
  %pBuf2 = alloca %struct.attrib*, align 8
  %i = alloca i32, align 4
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  store i32 %max_states, i32* %max_states.addr, align 4
  store i32 %max_indexes, i32* %max_indexes.addr, align 4
  %0 = load i32, i32* @dfa_verbose, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %name = getelementptr inbounds %struct.dfa, %struct.dfa* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 2
  %4 = load %struct.state*, %struct.state** %states, align 8
  %5 = bitcast %struct.state* %4 to i8*
  %6 = load i32, i32* %max_states.addr, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 20
  %call1 = call i8* @realloc(i8* %5, i64 %mul) #2
  %7 = bitcast i8* %call1 to %struct.state*
  store %struct.state* %7, %struct.state** %pBuf, align 8
  %8 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %8, i32 0, i32 5
  %9 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %10 = bitcast %struct.attrib* %9 to i8*
  %11 = load i32, i32* %max_indexes.addr, align 4
  %conv2 = sext i32 %11 to i64
  %mul3 = mul i64 %conv2, 8
  %call4 = call i8* @realloc(i8* %10, i64 %mul3) #2
  %12 = bitcast i8* %call4 to %struct.attrib*
  store %struct.attrib* %12, %struct.attrib** %pBuf2, align 8
  %13 = load %struct.state*, %struct.state** %pBuf, align 8
  %cmp5 = icmp eq %struct.state* %13, null
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load %struct.attrib*, %struct.attrib** %pBuf2, align 8
  %cmp7 = icmp eq %struct.attrib* %14, null
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %name10 = getelementptr inbounds %struct.dfa, %struct.dfa* %16, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [80 x i8], [80 x i8]* %name10, i32 0, i32 0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i32 0, i32 0), i8* %arraydecay11)
  call void @exit(i32 1) #6
  unreachable

if.end.13:                                        ; preds = %lor.lhs.false
  %17 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_states14 = getelementptr inbounds %struct.dfa, %struct.dfa* %17, i32 0, i32 3
  %18 = load i32, i32* %max_states14, align 4
  store i32 %18, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %max_states.addr, align 4
  %cmp15 = icmp slt i32 %19, %20
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.state*, %struct.state** %pBuf, align 8
  %22 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds %struct.state, %struct.state* %21, i64 %idx.ext
  %23 = bitcast %struct.state* %add.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 20, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes17 = getelementptr inbounds %struct.dfa, %struct.dfa* %25, i32 0, i32 6
  %26 = load i32, i32* %max_indexes17, align 4
  store i32 %26, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.24, %for.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %max_indexes.addr, align 4
  %cmp19 = icmp slt i32 %27, %28
  br i1 %cmp19, label %for.body.21, label %for.end.26

for.body.21:                                      ; preds = %for.cond.18
  %29 = load %struct.attrib*, %struct.attrib** %pBuf2, align 8
  %30 = load i32, i32* %i, align 4
  %idx.ext22 = sext i32 %30 to i64
  %add.ptr23 = getelementptr inbounds %struct.attrib, %struct.attrib* %29, i64 %idx.ext22
  %31 = bitcast %struct.attrib* %add.ptr23 to i8*
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 8, i32 4, i1 false)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.21
  %32 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %32, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.18

for.end.26:                                       ; preds = %for.cond.18
  %33 = load %struct.state*, %struct.state** %pBuf, align 8
  %34 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states27 = getelementptr inbounds %struct.dfa, %struct.dfa* %34, i32 0, i32 2
  store %struct.state* %33, %struct.state** %states27, align 8
  %35 = load i32, i32* %max_states.addr, align 4
  %36 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_states28 = getelementptr inbounds %struct.dfa, %struct.dfa* %36, i32 0, i32 3
  store i32 %35, i32* %max_states28, align 4
  %37 = load %struct.attrib*, %struct.attrib** %pBuf2, align 8
  %38 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes29 = getelementptr inbounds %struct.dfa, %struct.dfa* %38, i32 0, i32 5
  store %struct.attrib* %37, %struct.attrib** %indexes29, align 8
  %39 = load i32, i32* %max_indexes.addr, align 4
  %40 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes30 = getelementptr inbounds %struct.dfa, %struct.dfa* %40, i32 0, i32 6
  store i32 %39, i32* %max_indexes30, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clean_dfa(%struct.dfa* %pdfa) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 2
  %1 = load %struct.state*, %struct.state** %states, align 8
  %2 = bitcast %struct.state* %1 to i8*
  %3 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_states = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 3
  %4 = load i32, i32* %max_states, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 20
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul, i32 4, i1 false)
  %5 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %5, i32 0, i32 5
  %6 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %7 = bitcast %struct.attrib* %6 to i8*
  %8 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %8, i32 0, i32 6
  %9 = load i32, i32* %max_indexes, align 4
  %conv1 = sext i32 %9 to i64
  %mul2 = mul i64 %conv1, 8
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %mul2, i32 4, i1 false)
  %10 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 4
  store i32 1, i32* %last_state, align 4
  %11 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index = getelementptr inbounds %struct.dfa, %struct.dfa* %11, i32 0, i32 7
  store i32 0, i32* %last_index, align 4
  %12 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes3 = getelementptr inbounds %struct.dfa, %struct.dfa* %12, i32 0, i32 5
  %13 = load %struct.attrib*, %struct.attrib** %indexes3, align 8
  %arrayidx = getelementptr inbounds %struct.attrib, %struct.attrib* %13, i64 0
  %val = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx, i32 0, i32 0
  store i32 -1, i32* %val, align 4
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @kill_dfa(%struct.dfa* %pdfa) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 2
  %1 = load %struct.state*, %struct.state** %states, align 8
  %2 = bitcast %struct.state* %1 to i8*
  call void @free(i8* %2) #2
  %3 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 5
  %4 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %5 = bitcast %struct.attrib* %4 to i8*
  call void @free(i8* %5) #2
  %6 = load i32, i32* @dfa_verbose, align 4
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %name = getelementptr inbounds %struct.dfa, %struct.dfa* %8, i32 0, i32 0
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %10 = bitcast %struct.dfa* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 120, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @copy_dfa(%struct.dfa* %p_to, %struct.dfa* %p_from) #0 {
entry:
  %p_to.addr = alloca %struct.dfa*, align 8
  %p_from.addr = alloca %struct.dfa*, align 8
  store %struct.dfa* %p_to, %struct.dfa** %p_to.addr, align 8
  store %struct.dfa* %p_from, %struct.dfa** %p_from.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %max_states = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 3
  %1 = load i32, i32* %max_states, align 4
  %2 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %2, i32 0, i32 4
  %3 = load i32, i32* %last_state, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %5 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %max_states1 = getelementptr inbounds %struct.dfa, %struct.dfa* %5, i32 0, i32 3
  %6 = load i32, i32* %max_states1, align 4
  %7 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %max_indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %7, i32 0, i32 6
  %8 = load i32, i32* %max_indexes, align 4
  call void @resize_dfa(%struct.dfa* %4, i32 %6, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %max_indexes2 = getelementptr inbounds %struct.dfa, %struct.dfa* %9, i32 0, i32 6
  %10 = load i32, i32* %max_indexes2, align 4
  %11 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %last_index = getelementptr inbounds %struct.dfa, %struct.dfa* %11, i32 0, i32 7
  %12 = load i32, i32* %last_index, align 4
  %cmp3 = icmp slt i32 %10, %12
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %14 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %max_states5 = getelementptr inbounds %struct.dfa, %struct.dfa* %14, i32 0, i32 3
  %15 = load i32, i32* %max_states5, align 4
  %16 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %max_indexes6 = getelementptr inbounds %struct.dfa, %struct.dfa* %16, i32 0, i32 6
  %17 = load i32, i32* %max_indexes6, align 4
  call void @resize_dfa(%struct.dfa* %13, i32 %15, i32 %17)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %18 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  call void @clean_dfa(%struct.dfa* %18)
  %19 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %19, i32 0, i32 2
  %20 = load %struct.state*, %struct.state** %states, align 8
  %21 = bitcast %struct.state* %20 to i8*
  %22 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %states8 = getelementptr inbounds %struct.dfa, %struct.dfa* %22, i32 0, i32 2
  %23 = load %struct.state*, %struct.state** %states8, align 8
  %24 = bitcast %struct.state* %23 to i8*
  %25 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %last_state9 = getelementptr inbounds %struct.dfa, %struct.dfa* %25, i32 0, i32 4
  %26 = load i32, i32* %last_state9, align 4
  %add = add nsw i32 %26, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 20, %conv
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %24, i64 %mul, i32 4, i1 false)
  %27 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %27, i32 0, i32 5
  %28 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %29 = bitcast %struct.attrib* %28 to i8*
  %30 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %indexes10 = getelementptr inbounds %struct.dfa, %struct.dfa* %30, i32 0, i32 5
  %31 = load %struct.attrib*, %struct.attrib** %indexes10, align 8
  %32 = bitcast %struct.attrib* %31 to i8*
  %33 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %last_index11 = getelementptr inbounds %struct.dfa, %struct.dfa* %33, i32 0, i32 7
  %34 = load i32, i32* %last_index11, align 4
  %add12 = add nsw i32 %34, 1
  %conv13 = sext i32 %add12 to i64
  %mul14 = mul i64 8, %conv13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %32, i64 %mul14, i32 4, i1 false)
  %35 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %last_state15 = getelementptr inbounds %struct.dfa, %struct.dfa* %35, i32 0, i32 4
  %36 = load i32, i32* %last_state15, align 4
  %37 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %last_state16 = getelementptr inbounds %struct.dfa, %struct.dfa* %37, i32 0, i32 4
  store i32 %36, i32* %last_state16, align 4
  %38 = load %struct.dfa*, %struct.dfa** %p_from.addr, align 8
  %last_index17 = getelementptr inbounds %struct.dfa, %struct.dfa* %38, i32 0, i32 7
  %39 = load i32, i32* %last_index17, align 4
  %40 = load %struct.dfa*, %struct.dfa** %p_to.addr, align 8
  %last_index18 = getelementptr inbounds %struct.dfa, %struct.dfa* %40, i32 0, i32 7
  store i32 %39, i32* %last_index18, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @print_c_dfa(%struct._IO_FILE* %of, i8* %name, %struct.dfa* %pdfa) #0 {
entry:
  %of.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  %pdfa.addr = alloca %struct.dfa*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._IO_FILE* %of, %struct._IO_FILE** %of.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %call = call i32 @dfa_minmax_delta(%struct.dfa* %0, i32 -1, i32 0)
  %cmp = icmp sgt i32 %call, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.16, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 7
  %4 = load i32, i32* %last_index, align 4
  %add = add nsw i32 %4, 1
  %cmp3 = icmp sgt i32 %add, 65535
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.7:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 4
  %11 = load i32, i32* %last_state, align 4
  %add9 = add nsw i32 %11, 1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i32 0, i32 0), i8* %9, i32 %add9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end.7
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state11 = getelementptr inbounds %struct.dfa, %struct.dfa* %13, i32 0, i32 4
  %14 = load i32, i32* %last_state11, align 4
  %add12 = add nsw i32 %14, 1
  %cmp13 = icmp ne i32 %12, %add12
  br i1 %cmp13, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %17, i32 0, i32 2
  %18 = load %struct.state*, %struct.state** %states, align 8
  %arrayidx = getelementptr inbounds %struct.state, %struct.state* %18, i64 %idxprom
  %att = getelementptr inbounds %struct.state, %struct.state* %arrayidx, i32 0, i32 0
  %19 = load i32, i32* %att, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %21 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %21, 4
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %22 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states21 = getelementptr inbounds %struct.dfa, %struct.dfa* %24, i32 0, i32 2
  %25 = load %struct.state*, %struct.state** %states21, align 8
  %arrayidx22 = getelementptr inbounds %struct.state, %struct.state* %25, i64 %idxprom20
  %next = getelementptr inbounds %struct.state, %struct.state* %arrayidx22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %next, i32 0, i64 %idxprom19
  %26 = load i32, i32* %arrayidx23, align 4
  store i32 %26, i32* %n, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %28 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.18
  %29 = load i32, i32* %n, align 4
  %30 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %29, %30
  br label %cond.end

cond.false:                                       ; preds = %for.body.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32 %cond)
  %31 = load i32, i32* %j, align 4
  %cmp25 = icmp ne i32 %31, 3
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %cond.end
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %33 = load i32, i32* %j, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %35 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %35, 1
  %rem = srem i32 %add29, 3
  %tobool30 = icmp ne i32 %rem, 0
  %cond31 = select i1 %tobool30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* %cond31)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %36 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %36, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %39 = load i8*, i8** %name.addr, align 8
  %40 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index37 = getelementptr inbounds %struct.dfa, %struct.dfa* %40, i32 0, i32 7
  %41 = load i32, i32* %last_index37, align 4
  %add38 = add nsw i32 %41, 1
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0), i8* %39, i32 %add38)
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.56, %for.end.35
  %42 = load i32, i32* %i, align 4
  %43 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index41 = getelementptr inbounds %struct.dfa, %struct.dfa* %43, i32 0, i32 7
  %44 = load i32, i32* %last_index41, align 4
  %add42 = add nsw i32 %44, 1
  %cmp43 = icmp ne i32 %42, %add42
  br i1 %cmp43, label %for.body.44, label %for.end.58

for.body.44:                                      ; preds = %for.cond.40
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %46 to i64
  %47 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %47, i32 0, i32 5
  %48 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %arrayidx46 = getelementptr inbounds %struct.attrib, %struct.attrib* %48, i64 %idxprom45
  %val = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx46, i32 0, i32 0
  %49 = load i32, i32* %val, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes48 = getelementptr inbounds %struct.dfa, %struct.dfa* %51, i32 0, i32 5
  %52 = load %struct.attrib*, %struct.attrib** %indexes48, align 8
  %arrayidx49 = getelementptr inbounds %struct.attrib, %struct.attrib* %52, i64 %idxprom47
  %next50 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx49, i32 0, i32 1
  %53 = load i32, i32* %next50, align 4
  %54 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %54, 1
  %rem52 = srem i32 %add51, 4
  %tobool53 = icmp ne i32 %rem52, 0
  %cond54 = select i1 %tobool53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 %49, i32 %53, i8* %cond54)
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.44
  %55 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %55, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.40

for.end.58:                                       ; preds = %for.cond.40
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %58 = load i8*, i8** %name.addr, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %60 = load i8*, i8** %name.addr, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* %60)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %62 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %pre_rotated = getelementptr inbounds %struct.dfa, %struct.dfa* %62, i32 0, i32 1
  %63 = load i32, i32* %pre_rotated, align 4
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %63)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %65 = load i8*, i8** %name.addr, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %67 = load i8*, i8** %name.addr, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %of.addr, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @dfa_minmax_delta(%struct.dfa* %pdfa, i32 %next_index, i32 %isMin) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %next_index.addr = alloca i32, align 4
  %isMin.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  store i32 %next_index, i32* %next_index.addr, align 4
  store i32 %isMin, i32* %isMin.addr, align 4
  %0 = load i32, i32* %isMin.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 99999, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 -1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %2, i32 0, i32 4
  %3 = load i32, i32* %last_state, align 4
  %cmp = icmp sle i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %4, 4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %next_index.addr, align 4
  %cmp4 = icmp eq i32 %5, %6
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.3
  %7 = load i32, i32* %next_index.addr, align 4
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.end.26

if.then.6:                                        ; preds = %lor.lhs.false, %for.body.3
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 2
  %11 = load %struct.state*, %struct.state** %states, align 8
  %arrayidx = getelementptr inbounds %struct.state, %struct.state* %11, i64 %idxprom7
  %next8 = getelementptr inbounds %struct.state, %struct.state* %arrayidx, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %next8, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx9, align 4
  store i32 %12, i32* %next, align 4
  %13 = load i32, i32* %next, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.then.6
  br label %for.inc

if.end.12:                                        ; preds = %if.then.6
  %14 = load i32, i32* %isMin.addr, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.then.14, label %if.else.19

if.then.14:                                       ; preds = %if.end.12
  %15 = load i32, i32* %ret, align 4
  %16 = load i32, i32* %next, align 4
  %17 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %16, %17
  %cmp15 = icmp sgt i32 %15, %sub
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.14
  %18 = load i32, i32* %next, align 4
  %19 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 %18, %19
  store i32 %sub17, i32* %ret, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.14
  br label %if.end.25

if.else.19:                                       ; preds = %if.end.12
  %20 = load i32, i32* %ret, align 4
  %21 = load i32, i32* %next, align 4
  %22 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %21, %22
  %cmp21 = icmp slt i32 %20, %sub20
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.else.19
  %23 = load i32, i32* %next, align 4
  %24 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 %23, %24
  store i32 %sub23, i32* %ret, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.else.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.11
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %27 = load i32, i32* %ret, align 4
  ret i32 %27
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @dfa_init() #0 {
entry:
  %ii = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load i32, i32* @dfa_verbose, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @dfa_was_initialized, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @dfa_was_initialized, align 4
  call void @buildSpiralOrder([8 x i32]* getelementptr inbounds ([1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %cmp1 = icmp slt i32 %3, 33
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom
  call void @new_dfa(%struct.dfa* %arrayidx, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %j, align 4
  %inc2 = add nsw i32 %5, 1
  store i32 %inc2, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @new_dfa(%struct.dfa* @aux_temp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0))
  store i32 0, i32* %ii, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.8, %for.end
  %6 = load i32, i32* %ii, align 4
  %cmp4 = icmp slt i32 %6, 7056
  br i1 %cmp4, label %for.body.5, label %for.end.10

for.body.5:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %ii, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [7056 x i32], [7056 x i32]* @dfa_p, i32 0, i64 %idxprom6
  store i32 3, i32* %arrayidx7, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.5
  %8 = load i32, i32* %ii, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, i32* %ii, align 4
  br label %for.cond.3

for.end.10:                                       ; preds = %for.cond.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @dfa_end() #0 {
entry:
  %j = alloca i32, align 4
  %0 = load i32, i32* @dfa_verbose, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %j, align 4
  %cmp1 = icmp slt i32 %2, 33
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom
  call void @kill_dfa(%struct.dfa* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @kill_dfa(%struct.dfa* @aux_temp)
  %5 = load i32, i32* @dfa_was_initialized, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @dfa_was_initialized, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @dfa_shuffle(%struct.dfa* %pdfa) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %old_states = alloca %struct.state*, align 8
  %state_to = alloca i32*, align 8
  %state_from = alloca i32*, align 8
  %queue1 = alloca i32*, align 8
  %queue2 = alloca i32*, align 8
  %tempq = alloca i32*, align 8
  %next_new_state = alloca i32, align 4
  %q1p = alloca i32, align 4
  %q2p = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 4
  %1 = load i32, i32* %last_state, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #2
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %state_to, align 8
  %3 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state1 = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 4
  %4 = load i32, i32* %last_state1, align 4
  %add2 = add nsw i32 %4, 1
  %conv3 = sext i32 %add2 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 4) #2
  %5 = bitcast i8* %call4 to i32*
  store i32* %5, i32** %state_from, align 8
  %6 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state5 = getelementptr inbounds %struct.dfa, %struct.dfa* %6, i32 0, i32 4
  %7 = load i32, i32* %last_state5, align 4
  %add6 = add nsw i32 %7, 1
  %conv7 = sext i32 %add6 to i64
  %mul = mul i64 %conv7, 4
  %call8 = call noalias i8* @malloc(i64 %mul) #2
  %8 = bitcast i8* %call8 to i32*
  store i32* %8, i32** %queue1, align 8
  %9 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state9 = getelementptr inbounds %struct.dfa, %struct.dfa* %9, i32 0, i32 4
  %10 = load i32, i32* %last_state9, align 4
  %add10 = add nsw i32 %10, 1
  %conv11 = sext i32 %add10 to i64
  %mul12 = mul i64 %conv11, 4
  %call13 = call noalias i8* @malloc(i64 %mul12) #2
  %11 = bitcast i8* %call13 to i32*
  store i32* %11, i32** %queue2, align 8
  store i32 1, i32* %q1p, align 4
  store i32 0, i32* %q2p, align 4
  %12 = load i32*, i32** %queue1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 0
  store i32 1, i32* %arrayidx, align 4
  %13 = load i32*, i32** %state_to, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %arrayidx14, align 4
  %14 = load i32*, i32** %state_from, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %arrayidx15, align 4
  %15 = load i32*, i32** %state_to, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 1, i32* %arrayidx16, align 4
  %16 = load i32*, i32** %state_from, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 1, i32* %arrayidx17, align 4
  store i32 2, i32* %next_new_state, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.42, %entry
  %17 = load i32, i32* %q1p, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %while.body
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %q1p, align 4
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4
  %cmp20 = icmp slt i32 %20, 4
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %21 = load i32, i32* %j, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load i32*, i32** %queue1, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %23, i64 %idxprom23
  %24 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %25, i32 0, i32 2
  %26 = load %struct.state*, %struct.state** %states, align 8
  %arrayidx26 = getelementptr inbounds %struct.state, %struct.state* %26, i64 %idxprom25
  %next = getelementptr inbounds %struct.state, %struct.state* %arrayidx26, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %next, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx27, align 4
  store i32 %27, i32* %n, align 4
  %28 = load i32, i32* %n, align 4
  %tobool28 = icmp ne i32 %28, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.22
  %29 = load i32, i32* %n, align 4
  %idxprom29 = sext i32 %29 to i64
  %30 = load i32*, i32** %state_to, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %30, i64 %idxprom29
  %31 = load i32, i32* %arrayidx30, align 4
  %tobool31 = icmp ne i32 %31, 0
  br i1 %tobool31, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %32 = load i32, i32* %next_new_state, align 4
  %33 = load i32, i32* %n, align 4
  %idxprom32 = sext i32 %33 to i64
  %34 = load i32*, i32** %state_to, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %34, i64 %idxprom32
  store i32 %32, i32* %arrayidx33, align 4
  %35 = load i32, i32* %n, align 4
  %36 = load i32, i32* %next_new_state, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load i32*, i32** %state_from, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %37, i64 %idxprom34
  store i32 %35, i32* %arrayidx35, align 4
  %38 = load i32, i32* %next_new_state, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %next_new_state, align 4
  %39 = load i32, i32* %n, align 4
  %40 = load i32, i32* %q2p, align 4
  %inc36 = add nsw i32 %40, 1
  store i32 %inc36, i32* %q2p, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load i32*, i32** %queue2, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %41, i64 %idxprom37
  store i32 %39, i32* %arrayidx38, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %42 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %42, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %43 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %43, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %44 = load i32*, i32** %queue1, align 8
  store i32* %44, i32** %tempq, align 8
  %45 = load i32*, i32** %queue2, align 8
  store i32* %45, i32** %queue1, align 8
  %46 = load i32*, i32** %tempq, align 8
  store i32* %46, i32** %queue2, align 8
  %47 = load i32, i32* %q2p, align 4
  store i32 %47, i32* %q1p, align 4
  store i32 0, i32* %q2p, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state43 = getelementptr inbounds %struct.dfa, %struct.dfa* %48, i32 0, i32 4
  %49 = load i32, i32* %last_state43, align 4
  %add44 = add nsw i32 %49, 1
  %conv45 = sext i32 %add44 to i64
  %mul46 = mul i64 %conv45, 20
  %call47 = call noalias i8* @malloc(i64 %mul46) #2
  %50 = bitcast i8* %call47 to %struct.state*
  store %struct.state* %50, %struct.state** %old_states, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.77, %while.end
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state49 = getelementptr inbounds %struct.dfa, %struct.dfa* %52, i32 0, i32 4
  %53 = load i32, i32* %last_state49, align 4
  %cmp50 = icmp sle i32 %51, %53
  br i1 %cmp50, label %for.body.52, label %for.end.79

for.body.52:                                      ; preds = %for.cond.48
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.74, %for.body.52
  %54 = load i32, i32* %j, align 4
  %cmp54 = icmp slt i32 %54, 4
  br i1 %cmp54, label %for.body.56, label %for.end.76

for.body.56:                                      ; preds = %for.cond.53
  %55 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %55 to i64
  %56 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %56 to i64
  %57 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states59 = getelementptr inbounds %struct.dfa, %struct.dfa* %57, i32 0, i32 2
  %58 = load %struct.state*, %struct.state** %states59, align 8
  %arrayidx60 = getelementptr inbounds %struct.state, %struct.state* %58, i64 %idxprom58
  %next61 = getelementptr inbounds %struct.state, %struct.state* %arrayidx60, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %next61, i32 0, i64 %idxprom57
  %59 = load i32, i32* %arrayidx62, align 4
  %60 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %61 to i64
  %62 = load %struct.state*, %struct.state** %old_states, align 8
  %arrayidx65 = getelementptr inbounds %struct.state, %struct.state* %62, i64 %idxprom64
  %next66 = getelementptr inbounds %struct.state, %struct.state* %arrayidx65, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %next66, i32 0, i64 %idxprom63
  store i32 %59, i32* %arrayidx67, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %63 to i64
  %64 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states69 = getelementptr inbounds %struct.dfa, %struct.dfa* %64, i32 0, i32 2
  %65 = load %struct.state*, %struct.state** %states69, align 8
  %arrayidx70 = getelementptr inbounds %struct.state, %struct.state* %65, i64 %idxprom68
  %att = getelementptr inbounds %struct.state, %struct.state* %arrayidx70, i32 0, i32 0
  %66 = load i32, i32* %att, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %67 to i64
  %68 = load %struct.state*, %struct.state** %old_states, align 8
  %arrayidx72 = getelementptr inbounds %struct.state, %struct.state* %68, i64 %idxprom71
  %att73 = getelementptr inbounds %struct.state, %struct.state* %arrayidx72, i32 0, i32 0
  store i32 %66, i32* %att73, align 4
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.56
  %69 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %69, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.53

for.end.76:                                       ; preds = %for.cond.53
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %70 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %70, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.48

for.end.79:                                       ; preds = %for.cond.48
  store i32 1, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.116, %for.end.79
  %71 = load i32, i32* %i, align 4
  %72 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state81 = getelementptr inbounds %struct.dfa, %struct.dfa* %72, i32 0, i32 4
  %73 = load i32, i32* %last_state81, align 4
  %cmp82 = icmp sle i32 %71, %73
  br i1 %cmp82, label %for.body.84, label %for.end.118

for.body.84:                                      ; preds = %for.cond.80
  store i32 0, i32* %j, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.104, %for.body.84
  %74 = load i32, i32* %j, align 4
  %cmp86 = icmp slt i32 %74, 4
  br i1 %cmp86, label %for.body.88, label %for.end.106

for.body.88:                                      ; preds = %for.cond.85
  %75 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %75 to i64
  %76 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %76 to i64
  %77 = load i32*, i32** %state_from, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %77, i64 %idxprom90
  %78 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %78 to i64
  %79 = load %struct.state*, %struct.state** %old_states, align 8
  %arrayidx93 = getelementptr inbounds %struct.state, %struct.state* %79, i64 %idxprom92
  %next94 = getelementptr inbounds %struct.state, %struct.state* %arrayidx93, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [4 x i32], [4 x i32]* %next94, i32 0, i64 %idxprom89
  %80 = load i32, i32* %arrayidx95, align 4
  %idxprom96 = sext i32 %80 to i64
  %81 = load i32*, i32** %state_to, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %81, i64 %idxprom96
  %82 = load i32, i32* %arrayidx97, align 4
  %83 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %83 to i64
  %84 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %84 to i64
  %85 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states100 = getelementptr inbounds %struct.dfa, %struct.dfa* %85, i32 0, i32 2
  %86 = load %struct.state*, %struct.state** %states100, align 8
  %arrayidx101 = getelementptr inbounds %struct.state, %struct.state* %86, i64 %idxprom99
  %next102 = getelementptr inbounds %struct.state, %struct.state* %arrayidx101, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [4 x i32], [4 x i32]* %next102, i32 0, i64 %idxprom98
  store i32 %82, i32* %arrayidx103, align 4
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.88
  %87 = load i32, i32* %j, align 4
  %inc105 = add nsw i32 %87, 1
  store i32 %inc105, i32* %j, align 4
  br label %for.cond.85

for.end.106:                                      ; preds = %for.cond.85
  %88 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %88 to i64
  %89 = load i32*, i32** %state_from, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %89, i64 %idxprom107
  %90 = load i32, i32* %arrayidx108, align 4
  %idxprom109 = sext i32 %90 to i64
  %91 = load %struct.state*, %struct.state** %old_states, align 8
  %arrayidx110 = getelementptr inbounds %struct.state, %struct.state* %91, i64 %idxprom109
  %att111 = getelementptr inbounds %struct.state, %struct.state* %arrayidx110, i32 0, i32 0
  %92 = load i32, i32* %att111, align 4
  %93 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %93 to i64
  %94 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states113 = getelementptr inbounds %struct.dfa, %struct.dfa* %94, i32 0, i32 2
  %95 = load %struct.state*, %struct.state** %states113, align 8
  %arrayidx114 = getelementptr inbounds %struct.state, %struct.state* %95, i64 %idxprom112
  %att115 = getelementptr inbounds %struct.state, %struct.state* %arrayidx114, i32 0, i32 0
  store i32 %92, i32* %att115, align 4
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end.106
  %96 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %96, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.80

for.end.118:                                      ; preds = %for.cond.80
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define void @dfa_finalize(%struct.dfa* %pdfa) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %j = alloca i32, align 4
  %next_bin = alloca i32, align 4
  %last_bin = alloca i32, align 4
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  %0 = load i32, i32* @aux_count, align 4
  store i32 %0, i32* %next_bin, align 4
  %1 = load i32, i32* @aux_count, align 4
  %add = add nsw i32 %1, 33
  %sub = sub nsw i32 %add, 1
  store i32 %sub, i32* %last_bin, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i32, i32* %next_bin, align 4
  %add1 = add nsw i32 %2, 1
  %3 = load i32, i32* %last_bin, align 4
  %cmp = icmp ne i32 %add1, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* @aux_count, align 4
  %add2 = add nsw i32 %4, 1
  store i32 %add2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %last_bin, align 4
  %cmp3 = icmp sle i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %7, 1
  %8 = load i32, i32* %next_bin, align 4
  %cmp5 = icmp eq i32 %add4, %8
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %next_bin, align 4
  %rem = srem i32 %9, 33
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom
  %10 = load i32, i32* %j, align 4
  %rem6 = srem i32 %10, 33
  %idxprom7 = sext i32 %rem6 to i64
  %arrayidx8 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom7
  call void @copy_dfa(%struct.dfa* %arrayidx, %struct.dfa* %arrayidx8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %next_bin, align 4
  %rem9 = srem i32 %11, 33
  %idxprom10 = sext i32 %rem9 to i64
  %arrayidx11 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom10
  %12 = load i32, i32* %j, align 4
  %rem12 = srem i32 %12, 33
  %idxprom13 = sext i32 %rem12 to i64
  %arrayidx14 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom13
  %13 = load i32, i32* %j, align 4
  %add15 = add nsw i32 %13, 1
  %rem16 = srem i32 %add15, 33
  %idxprom17 = sext i32 %rem16 to i64
  %arrayidx18 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom17
  call void @sync_product(%struct.dfa* %arrayidx11, %struct.dfa* %arrayidx14, %struct.dfa* %arrayidx18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %next_bin, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %next_bin, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %add19 = add nsw i32 %15, 2
  store i32 %add19, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %next_bin, align 4
  %sub20 = sub nsw i32 %16, 1
  store i32 %sub20, i32* %last_bin, align 4
  %17 = load i32, i32* @aux_count, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* @aux_count, align 4
  %18 = load i32, i32* @aux_count, align 4
  store i32 %18, i32* %next_bin, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %20 = load i32, i32* %last_bin, align 4
  %rem21 = srem i32 %20, 33
  %idxprom22 = sext i32 %rem21 to i64
  %arrayidx23 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom22
  call void @copy_dfa(%struct.dfa* %19, %struct.dfa* %arrayidx23)
  %21 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  call void @compactify_att(%struct.dfa* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sync_product(%struct.dfa* %pout, %struct.dfa* %pleft, %struct.dfa* %pright) #0 {
entry:
  %pout.addr = alloca %struct.dfa*, align 8
  %pleft.addr = alloca %struct.dfa*, align 8
  %pright.addr = alloca %struct.dfa*, align 8
  store %struct.dfa* %pout, %struct.dfa** %pout.addr, align 8
  store %struct.dfa* %pleft, %struct.dfa** %pleft.addr, align 8
  store %struct.dfa* %pright, %struct.dfa** %pright.addr, align 8
  %0 = load %struct.dfa*, %struct.dfa** %pout.addr, align 8
  %last_index = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 7
  store i32 0, i32* %last_index, align 4
  %1 = load i32, i32* @dfa_verbose, align 4
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load %struct.dfa*, %struct.dfa** %pleft.addr, align 8
  %name = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i32 0, i32 0
  %4 = load %struct.dfa*, %struct.dfa** %pright.addr, align 8
  %name1 = getelementptr inbounds %struct.dfa, %struct.dfa* %4, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [80 x i8], [80 x i8]* %name1, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay, i8* %arraydecay2)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct.dfa*, %struct.dfa** %pout.addr, align 8
  %name3 = getelementptr inbounds %struct.dfa, %struct.dfa* %6, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [80 x i8], [80 x i8]* %name3, i32 0, i32 0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i8* %arraydecay4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.dfa*, %struct.dfa** %pout.addr, align 8
  store %struct.dfa* %7, %struct.dfa** @gpout, align 8
  %8 = load %struct.dfa*, %struct.dfa** %pleft.addr, align 8
  store %struct.dfa* %8, %struct.dfa** @gpleft, align 8
  %9 = load %struct.dfa*, %struct.dfa** %pright.addr, align 8
  store %struct.dfa* %9, %struct.dfa** @gpright, align 8
  call void @new_test_array(%struct.test_array* @gtest)
  call void @add_to_test_array(%struct.test_array* @gtest, i32 1, i32 1, i32 1)
  %10 = load %struct.dfa*, %struct.dfa** %pout.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 4
  store i32 1, i32* %last_state, align 4
  call void @do_sync_product(i32 1, i32 1)
  call void @free_test_array(%struct.test_array* @gtest)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compactify_att(%struct.dfa* %pdfa) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %k = alloca i32, align 4
  %last = alloca i32, align 4
  %save_last = alloca i32, align 4
  %map = alloca i32*, align 8
  %search_first = alloca i32*, align 8
  %search_next = alloca i32*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  store i32 0, i32* %last, align 4
  %0 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 7
  %1 = load i32, i32* %last_index, align 4
  store i32 %1, i32* %save_last, align 4
  %2 = load i32, i32* %save_last, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %size, align 4
  %3 = load i32, i32* %size, align 4
  %conv2 = sext i32 %3 to i64
  %call = call noalias i8* @malloc(i64 %conv2) #2
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** %map, align 8
  %5 = load i32*, i32** %map, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0
  store i32 0, i32* %arrayidx, align 4
  %6 = load i32, i32* %size, align 4
  %conv3 = sext i32 %6 to i64
  %call4 = call noalias i8* @malloc(i64 %conv3) #2
  %7 = bitcast i8* %call4 to i32*
  store i32* %7, i32** %search_first, align 8
  %8 = load i32*, i32** %search_first, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load i32, i32* %size, align 4
  %conv5 = sext i32 %10 to i64
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %conv5, i32 4, i1 false)
  %11 = load i32, i32* %size, align 4
  %conv6 = sext i32 %11 to i64
  %call7 = call noalias i8* @malloc(i64 %conv6) #2
  %12 = bitcast i8* %call7 to i32*
  store i32* %12, i32** %search_next, align 8
  %13 = load i32*, i32** %search_next, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32, i32* %size, align 4
  %conv8 = sext i32 %15 to i64
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 %conv8, i32 4, i1 false)
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* %save_last, align 4
  %cmp = icmp sle i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %k, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %19, i32 0, i32 5
  %20 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %arrayidx10 = getelementptr inbounds %struct.attrib, %struct.attrib* %20, i64 %idxprom
  %val = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx10, i32 0, i32 0
  %21 = load i32, i32* %val, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load i32*, i32** %search_first, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %22, i64 %idxprom11
  %23 = load i32, i32* %arrayidx12, align 4
  store i32 %23, i32* %i, align 4
  %24 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %25 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes14 = getelementptr inbounds %struct.dfa, %struct.dfa* %26, i32 0, i32 5
  %27 = load %struct.attrib*, %struct.attrib** %indexes14, align 8
  %arrayidx15 = getelementptr inbounds %struct.attrib, %struct.attrib* %27, i64 %idxprom13
  %next = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx15, i32 0, i32 1
  %28 = load i32, i32* %next, align 4
  %29 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %29 to i64
  %30 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes17 = getelementptr inbounds %struct.dfa, %struct.dfa* %30, i32 0, i32 5
  %31 = load %struct.attrib*, %struct.attrib** %indexes17, align 8
  %arrayidx18 = getelementptr inbounds %struct.attrib, %struct.attrib* %31, i64 %idxprom16
  %next19 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx18, i32 0, i32 1
  %32 = load i32, i32* %next19, align 4
  %cmp20 = icmp ne i32 %28, %32
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %33 to i64
  %34 = load i32*, i32** %search_next, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  %35 = load i32, i32* %arrayidx23, align 4
  %tobool24 = icmp ne i32 %35, 0
  br i1 %tobool24, label %if.end, label %if.then.25

if.then.25:                                       ; preds = %while.body
  %36 = load i32, i32* %last, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %last, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %37 to i64
  %38 = load i32*, i32** %search_next, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %38, i64 %idxprom26
  store i32 %inc, i32* %arrayidx27, align 4
  store i32 0, i32* %i, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %39 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %40 = load i32*, i32** %search_next, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %40, i64 %idxprom28
  %41 = load i32, i32* %arrayidx29, align 4
  store i32 %41, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.25, %while.cond
  br label %if.end.37

if.else:                                          ; preds = %for.body
  %42 = load i32, i32* %last, align 4
  %inc30 = add nsw i32 %42, 1
  store i32 %inc30, i32* %last, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %43 to i64
  %44 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes32 = getelementptr inbounds %struct.dfa, %struct.dfa* %44, i32 0, i32 5
  %45 = load %struct.attrib*, %struct.attrib** %indexes32, align 8
  %arrayidx33 = getelementptr inbounds %struct.attrib, %struct.attrib* %45, i64 %idxprom31
  %val34 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx33, i32 0, i32 0
  %46 = load i32, i32* %val34, align 4
  %idxprom35 = sext i32 %46 to i64
  %47 = load i32*, i32** %search_first, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %47, i64 %idxprom35
  store i32 %inc30, i32* %arrayidx36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %while.end
  %48 = load i32, i32* %i, align 4
  %tobool38 = icmp ne i32 %48, 0
  br i1 %tobool38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.end.37
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %50 to i64
  %51 = load i32*, i32** %map, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %51, i64 %idxprom40
  store i32 %49, i32* %arrayidx41, align 4
  br label %if.end.51

if.else.42:                                       ; preds = %if.end.37
  %52 = load i32, i32* %last, align 4
  %53 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %53 to i64
  %54 = load i32*, i32** %map, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %54, i64 %idxprom43
  store i32 %52, i32* %arrayidx44, align 4
  %55 = load i32, i32* %last, align 4
  %idxprom45 = sext i32 %55 to i64
  %56 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes46 = getelementptr inbounds %struct.dfa, %struct.dfa* %56, i32 0, i32 5
  %57 = load %struct.attrib*, %struct.attrib** %indexes46, align 8
  %arrayidx47 = getelementptr inbounds %struct.attrib, %struct.attrib* %57, i64 %idxprom45
  %58 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %58 to i64
  %59 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes49 = getelementptr inbounds %struct.dfa, %struct.dfa* %59, i32 0, i32 5
  %60 = load %struct.attrib*, %struct.attrib** %indexes49, align 8
  %arrayidx50 = getelementptr inbounds %struct.attrib, %struct.attrib* %60, i64 %idxprom48
  %61 = bitcast %struct.attrib* %arrayidx47 to i8*
  %62 = bitcast %struct.attrib* %arrayidx50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 8, i32 4, i1 false)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.42, %if.then.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %63 = load i32, i32* %k, align 4
  %inc52 = add nsw i32 %63, 1
  store i32 %inc52, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load i32*, i32** %search_first, align 8
  %65 = bitcast i32* %64 to i8*
  call void @free(i8* %65) #2
  %66 = load i32*, i32** %search_next, align 8
  %67 = bitcast i32* %66 to i8*
  call void @free(i8* %67) #2
  %68 = load i32, i32* %last, align 4
  %69 = load i32, i32* %save_last, align 4
  %cmp53 = icmp slt i32 %68, %69
  br i1 %cmp53, label %if.then.55, label %if.end.90

if.then.55:                                       ; preds = %for.end
  %70 = load i32, i32* %last, align 4
  %71 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index56 = getelementptr inbounds %struct.dfa, %struct.dfa* %71, i32 0, i32 7
  store i32 %70, i32* %last_index56, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.72, %if.then.55
  %72 = load i32, i32* %k, align 4
  %73 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index58 = getelementptr inbounds %struct.dfa, %struct.dfa* %73, i32 0, i32 7
  %74 = load i32, i32* %last_index58, align 4
  %cmp59 = icmp sle i32 %72, %74
  br i1 %cmp59, label %for.body.61, label %for.end.74

for.body.61:                                      ; preds = %for.cond.57
  %75 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %75 to i64
  %76 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes63 = getelementptr inbounds %struct.dfa, %struct.dfa* %76, i32 0, i32 5
  %77 = load %struct.attrib*, %struct.attrib** %indexes63, align 8
  %arrayidx64 = getelementptr inbounds %struct.attrib, %struct.attrib* %77, i64 %idxprom62
  %next65 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx64, i32 0, i32 1
  %78 = load i32, i32* %next65, align 4
  %idxprom66 = sext i32 %78 to i64
  %79 = load i32*, i32** %map, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %79, i64 %idxprom66
  %80 = load i32, i32* %arrayidx67, align 4
  %81 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %81 to i64
  %82 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes69 = getelementptr inbounds %struct.dfa, %struct.dfa* %82, i32 0, i32 5
  %83 = load %struct.attrib*, %struct.attrib** %indexes69, align 8
  %arrayidx70 = getelementptr inbounds %struct.attrib, %struct.attrib* %83, i64 %idxprom68
  %next71 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx70, i32 0, i32 1
  store i32 %80, i32* %next71, align 4
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.61
  %84 = load i32, i32* %k, align 4
  %inc73 = add nsw i32 %84, 1
  store i32 %inc73, i32* %k, align 4
  br label %for.cond.57

for.end.74:                                       ; preds = %for.cond.57
  store i32 0, i32* %k, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.87, %for.end.74
  %85 = load i32, i32* %k, align 4
  %86 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %86, i32 0, i32 4
  %87 = load i32, i32* %last_state, align 4
  %cmp76 = icmp sle i32 %85, %87
  br i1 %cmp76, label %for.body.78, label %for.end.89

for.body.78:                                      ; preds = %for.cond.75
  %88 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %88 to i64
  %89 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %89, i32 0, i32 2
  %90 = load %struct.state*, %struct.state** %states, align 8
  %arrayidx80 = getelementptr inbounds %struct.state, %struct.state* %90, i64 %idxprom79
  %att = getelementptr inbounds %struct.state, %struct.state* %arrayidx80, i32 0, i32 0
  %91 = load i32, i32* %att, align 4
  %idxprom81 = sext i32 %91 to i64
  %92 = load i32*, i32** %map, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %92, i64 %idxprom81
  %93 = load i32, i32* %arrayidx82, align 4
  %94 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %94 to i64
  %95 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states84 = getelementptr inbounds %struct.dfa, %struct.dfa* %95, i32 0, i32 2
  %96 = load %struct.state*, %struct.state** %states84, align 8
  %arrayidx85 = getelementptr inbounds %struct.state, %struct.state* %96, i64 %idxprom83
  %att86 = getelementptr inbounds %struct.state, %struct.state* %arrayidx85, i32 0, i32 0
  store i32 %93, i32* %att86, align 4
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.78
  %97 = load i32, i32* %k, align 4
  %inc88 = add nsw i32 %97, 1
  store i32 %inc88, i32* %k, align 4
  br label %for.cond.75

for.end.89:                                       ; preds = %for.cond.75
  %98 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  call void @compactify_att(%struct.dfa* %98)
  br label %if.end.90

if.end.90:                                        ; preds = %for.end.89, %for.end
  %99 = load i32*, i32** %map, align 8
  %100 = bitcast i32* %99 to i8*
  call void @free(i8* %100) #2
  ret void
}

; Function Attrs: nounwind uwtable
define float @dfa_add_string(%struct.dfa* %pdfa, i8* %str, i32 %pattern_index, i32 %ll) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %str.addr = alloca i8*, align 8
  %pattern_index.addr = alloca i32, align 4
  %ll.addr = alloca i32, align 4
  %new_dfa = alloca %struct.dfa*, align 8
  %old_dfa = alloca %struct.dfa*, align 8
  %ratio = alloca float, align 4
  %strrot = alloca [1765 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %strdollar = alloca [1765 x i8], align 16
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %pattern_index, i32* %pattern_index.addr, align 4
  store i32 %ll, i32* %ll.addr, align 4
  %0 = load i32, i32* @aux_count, align 4
  %rem = srem i32 %0, 33
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom
  store %struct.dfa* %arrayidx, %struct.dfa** %new_dfa, align 8
  %1 = load i32, i32* @aux_count, align 4
  %add = add nsw i32 %1, 1
  %rem1 = srem i32 %add, 33
  %idxprom2 = sext i32 %rem1 to i64
  %arrayidx3 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i32 0, i64 %idxprom2
  store %struct.dfa* %arrayidx3, %struct.dfa** %old_dfa, align 8
  %2 = load i32, i32* %ll.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1765 x i8], [1765 x i8]* %strrot, i32 0, i32 0
  %3 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %3) #2
  br label %if.end.35

if.else:                                          ; preds = %entry
  %4 = bitcast [1765 x i8]* %strdollar to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 36, i64 1765, i32 16, i1 false)
  %arraydecay4 = getelementptr inbounds [1765 x i8], [1765 x i8]* %strdollar, i32 0, i32 0
  %5 = load i8*, i8** %str.addr, align 8
  %call5 = call i8* @strcpy(i8* %arraydecay4, i8* %5) #2
  %6 = load i8*, i8** %str.addr, align 8
  %call6 = call i64 @strlen(i8* %6) #7
  %arrayidx7 = getelementptr inbounds [1765 x i8], [1765 x i8]* %strdollar, i32 0, i64 %call6
  store i8 36, i8* %arrayidx7, align 1
  %7 = bitcast [1765 x i8]* %strrot to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 36, i64 1765, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.else
  %8 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %8, 882
  br i1 %cmp8, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %9, 1765
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx13, i32 0, i64 0
  %11 = load i32, i32* %arrayidx14, align 4
  %12 = load i32, i32* %ll.addr, align 4
  %idxprom15 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx17, i32 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp eq i32 %11, %14
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %for.body.11
  %15 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [1765 x i8], [1765 x i8]* %strdollar, i32 0, i64 %idxprom21
  %16 = load i8, i8* %arrayidx22, align 1
  %17 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [1765 x i8], [1765 x i8]* %strrot, i32 0, i64 %idxprom23
  store i8 %16, i8* %arrayidx24, align 1
  br label %for.end

if.end:                                           ; preds = %for.body.11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.9

for.end:                                          ; preds = %if.then.20, %for.cond.9
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %19, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  store i32 1764, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.27
  %20 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [1765 x i8], [1765 x i8]* %strrot, i32 0, i64 %idxprom28
  %21 = load i8, i8* %arrayidx29, align 1
  %conv = sext i8 %21 to i32
  %cmp30 = icmp eq i32 %conv, 36
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i32, i32* %j, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %j, align 4
  %add32 = add nsw i32 %23, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [1765 x i8], [1765 x i8]* %strrot, i32 0, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %while.end, %if.then
  %24 = load i32, i32* @dfa_verbose, align 4
  %cmp36 = icmp sgt i32 %24, 1
  br i1 %cmp36, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.end.35
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %name = getelementptr inbounds %struct.dfa, %struct.dfa* %26, i32 0, i32 0
  %arraydecay39 = getelementptr inbounds [80 x i8], [80 x i8]* %name, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [1765 x i8], [1765 x i8]* %strrot, i32 0, i32 0
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay39, i8* %arraydecay40)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i32, i32* %pattern_index.addr, align 4
  %29 = load i32, i32* %ll.addr, align 4
  %30 = load i32, i32* @aux_count, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0), i32 %28, i32 %29, i32 %30)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %if.end.35
  %31 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %pre_rotated = getelementptr inbounds %struct.dfa, %struct.dfa* %31, i32 0, i32 1
  %32 = load i32, i32* %pre_rotated, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.43
  %33 = load i32, i32* %pattern_index.addr, align 4
  %mul = mul nsw i32 %33, 8
  %34 = load i32, i32* %ll.addr, align 4
  %add45 = add nsw i32 %mul, %34
  store i32 %add45, i32* %pattern_index.addr, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.43
  %arraydecay47 = getelementptr inbounds [1765 x i8], [1765 x i8]* %strrot, i32 0, i32 0
  %35 = load i32, i32* %pattern_index.addr, align 4
  call void @create_dfa(%struct.dfa* @aux_temp, i8* %arraydecay47, i32 %35)
  %36 = load %struct.dfa*, %struct.dfa** %new_dfa, align 8
  %37 = load %struct.dfa*, %struct.dfa** %old_dfa, align 8
  call void @sync_product(%struct.dfa* %36, %struct.dfa* %37, %struct.dfa* @aux_temp)
  %38 = load i32, i32* @aux_count, align 4
  %inc48 = add nsw i32 %38, 1
  store i32 %inc48, i32* @aux_count, align 4
  store float 1.000000e+00, float* %ratio, align 4
  %39 = load %struct.dfa*, %struct.dfa** %old_dfa, align 8
  %call49 = call i32 @dfa_size(%struct.dfa* %39)
  %cmp50 = icmp sgt i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.end.46
  %40 = load %struct.dfa*, %struct.dfa** %new_dfa, align 8
  %call53 = call i32 @dfa_size(%struct.dfa* %40)
  %41 = load %struct.dfa*, %struct.dfa** %old_dfa, align 8
  %call54 = call i32 @dfa_size(%struct.dfa* %41)
  %div = sdiv i32 %call53, %call54
  %conv55 = sitofp i32 %div to float
  store float %conv55, float* %ratio, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.end.46
  %42 = load float, float* %ratio, align 4
  ret float %42
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @create_dfa(%struct.dfa* %pdfa, i8* %str, i32 %att_val) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %str.addr = alloca i8*, align 8
  %att_val.addr = alloca i32, align 4
  %new_state = alloca i32, align 4
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %att_val, i32* %att_val.addr, align 4
  %0 = load i32, i32* @dfa_verbose, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %name = getelementptr inbounds %struct.dfa, %struct.dfa* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %name, i32 0, i32 0
  %3 = load i8*, i8** %str.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i32 0, i32 0), i8* %arraydecay, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  call void @clean_dfa(%struct.dfa* %4)
  store i32 1, i32* %new_state, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %call4 = call i8* @strchr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i32 %conv3) #7
  %tobool = icmp ne i8* %call4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load i32, i32* %new_state, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %11, i32 0, i32 2
  %12 = load %struct.state*, %struct.state** %states, align 8
  %arrayidx = getelementptr inbounds %struct.state, %struct.state* %12, i64 %idxprom
  %next = getelementptr inbounds %struct.state, %struct.state* %arrayidx, i32 0, i32 1
  %13 = bitcast [4 x i32]* %next to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i32 4, i1 false)
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv5 = sext i8 %15 to i32
  %call6 = call i8* @strchr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 %conv5) #7
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %for.body
  %16 = load i32, i32* %new_state, align 4
  %add = add nsw i32 %16, 1
  %17 = load i32, i32* %new_state, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states10 = getelementptr inbounds %struct.dfa, %struct.dfa* %18, i32 0, i32 2
  %19 = load %struct.state*, %struct.state** %states10, align 8
  %arrayidx11 = getelementptr inbounds %struct.state, %struct.state* %19, i64 %idxprom9
  %next12 = getelementptr inbounds %struct.state, %struct.state* %arrayidx11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %next12, i32 0, i64 0
  store i32 %add, i32* %arrayidx13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %for.body
  %20 = load i8*, i8** %str.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv15 = sext i8 %21 to i32
  %call16 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 %conv15) #7
  %tobool17 = icmp ne i8* %call16, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.end.14
  %22 = load i32, i32* %new_state, align 4
  %add19 = add nsw i32 %22, 1
  %23 = load i32, i32* %new_state, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states21 = getelementptr inbounds %struct.dfa, %struct.dfa* %24, i32 0, i32 2
  %25 = load %struct.state*, %struct.state** %states21, align 8
  %arrayidx22 = getelementptr inbounds %struct.state, %struct.state* %25, i64 %idxprom20
  %next23 = getelementptr inbounds %struct.state, %struct.state* %arrayidx22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %next23, i32 0, i64 1
  store i32 %add19, i32* %arrayidx24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %if.end.14
  %26 = load i8*, i8** %str.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv26 = sext i8 %27 to i32
  %call27 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 %conv26) #7
  %tobool28 = icmp ne i8* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.end.25
  %28 = load i32, i32* %new_state, align 4
  %add30 = add nsw i32 %28, 1
  %29 = load i32, i32* %new_state, align 4
  %idxprom31 = sext i32 %29 to i64
  %30 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states32 = getelementptr inbounds %struct.dfa, %struct.dfa* %30, i32 0, i32 2
  %31 = load %struct.state*, %struct.state** %states32, align 8
  %arrayidx33 = getelementptr inbounds %struct.state, %struct.state* %31, i64 %idxprom31
  %next34 = getelementptr inbounds %struct.state, %struct.state* %arrayidx33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %next34, i32 0, i64 2
  store i32 %add30, i32* %arrayidx35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.29, %if.end.25
  %32 = load i8*, i8** %str.addr, align 8
  %33 = load i8, i8* %32, align 1
  %conv37 = sext i8 %33 to i32
  %call38 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 %conv37) #7
  %tobool39 = icmp ne i8* %call38, null
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %if.end.36
  %34 = load i32, i32* %new_state, align 4
  %add41 = add nsw i32 %34, 1
  %35 = load i32, i32* %new_state, align 4
  %idxprom42 = sext i32 %35 to i64
  %36 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states43 = getelementptr inbounds %struct.dfa, %struct.dfa* %36, i32 0, i32 2
  %37 = load %struct.state*, %struct.state** %states43, align 8
  %arrayidx44 = getelementptr inbounds %struct.state, %struct.state* %37, i64 %idxprom42
  %next45 = getelementptr inbounds %struct.state, %struct.state* %arrayidx44, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %next45, i32 0, i64 3
  store i32 %add41, i32* %arrayidx46, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.40, %if.end.36
  %38 = load i32, i32* %new_state, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %new_state, align 4
  %39 = load i32, i32* %new_state, align 4
  %40 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_states = getelementptr inbounds %struct.dfa, %struct.dfa* %40, i32 0, i32 3
  %41 = load i32, i32* %max_states, align 4
  %cmp48 = icmp sge i32 %39, %41
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.47
  %42 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %43 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_states51 = getelementptr inbounds %struct.dfa, %struct.dfa* %43, i32 0, i32 3
  %44 = load i32, i32* %max_states51, align 4
  %add52 = add nsw i32 %44, 20000
  %45 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %45, i32 0, i32 6
  %46 = load i32, i32* %max_indexes, align 4
  call void @resize_dfa(%struct.dfa* %42, i32 %add52, i32 %46)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %47 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %48 = load i32, i32* %new_state, align 4
  %idxprom54 = sext i32 %48 to i64
  %49 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states55 = getelementptr inbounds %struct.dfa, %struct.dfa* %49, i32 0, i32 2
  %50 = load %struct.state*, %struct.state** %states55, align 8
  %arrayidx56 = getelementptr inbounds %struct.state, %struct.state* %50, i64 %idxprom54
  %next57 = getelementptr inbounds %struct.state, %struct.state* %arrayidx56, i32 0, i32 1
  %51 = bitcast [4 x i32]* %next57 to i8*
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 16, i32 4, i1 false)
  %52 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index = getelementptr inbounds %struct.dfa, %struct.dfa* %52, i32 0, i32 7
  %53 = load i32, i32* %last_index, align 4
  %inc58 = add nsw i32 %53, 1
  store i32 %inc58, i32* %last_index, align 4
  %54 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index59 = getelementptr inbounds %struct.dfa, %struct.dfa* %54, i32 0, i32 7
  %55 = load i32, i32* %last_index59, align 4
  %56 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes60 = getelementptr inbounds %struct.dfa, %struct.dfa* %56, i32 0, i32 6
  %57 = load i32, i32* %max_indexes60, align 4
  %cmp61 = icmp sge i32 %55, %57
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %for.end
  %58 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %59 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_states64 = getelementptr inbounds %struct.dfa, %struct.dfa* %59, i32 0, i32 3
  %60 = load i32, i32* %max_states64, align 4
  %61 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes65 = getelementptr inbounds %struct.dfa, %struct.dfa* %61, i32 0, i32 6
  %62 = load i32, i32* %max_indexes65, align 4
  %add66 = add nsw i32 %62, 20000
  call void @resize_dfa(%struct.dfa* %58, i32 %60, i32 %add66)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %for.end
  %63 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index68 = getelementptr inbounds %struct.dfa, %struct.dfa* %63, i32 0, i32 7
  %64 = load i32, i32* %last_index68, align 4
  %idxprom69 = sext i32 %64 to i64
  %65 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %65, i32 0, i32 5
  %66 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %arrayidx70 = getelementptr inbounds %struct.attrib, %struct.attrib* %66, i64 %idxprom69
  %67 = bitcast %struct.attrib* %arrayidx70 to i8*
  call void @llvm.memset.p0i8.i64(i8* %67, i8 0, i64 8, i32 4, i1 false)
  %68 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index71 = getelementptr inbounds %struct.dfa, %struct.dfa* %68, i32 0, i32 7
  %69 = load i32, i32* %last_index71, align 4
  %70 = load i32, i32* %new_state, align 4
  %idxprom72 = sext i32 %70 to i64
  %71 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states73 = getelementptr inbounds %struct.dfa, %struct.dfa* %71, i32 0, i32 2
  %72 = load %struct.state*, %struct.state** %states73, align 8
  %arrayidx74 = getelementptr inbounds %struct.state, %struct.state* %72, i64 %idxprom72
  %att = getelementptr inbounds %struct.state, %struct.state* %arrayidx74, i32 0, i32 0
  store i32 %69, i32* %att, align 4
  %73 = load i32, i32* %att_val.addr, align 4
  %74 = load i32, i32* %new_state, align 4
  %idxprom75 = sext i32 %74 to i64
  %75 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states76 = getelementptr inbounds %struct.dfa, %struct.dfa* %75, i32 0, i32 2
  %76 = load %struct.state*, %struct.state** %states76, align 8
  %arrayidx77 = getelementptr inbounds %struct.state, %struct.state* %76, i64 %idxprom75
  %att78 = getelementptr inbounds %struct.state, %struct.state* %arrayidx77, i32 0, i32 0
  %77 = load i32, i32* %att78, align 4
  %idxprom79 = sext i32 %77 to i64
  %78 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes80 = getelementptr inbounds %struct.dfa, %struct.dfa* %78, i32 0, i32 5
  %79 = load %struct.attrib*, %struct.attrib** %indexes80, align 8
  %arrayidx81 = getelementptr inbounds %struct.attrib, %struct.attrib* %79, i64 %idxprom79
  %val = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx81, i32 0, i32 0
  store i32 %73, i32* %val, align 4
  %80 = load i32, i32* %new_state, align 4
  %idxprom82 = sext i32 %80 to i64
  %81 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %states83 = getelementptr inbounds %struct.dfa, %struct.dfa* %81, i32 0, i32 2
  %82 = load %struct.state*, %struct.state** %states83, align 8
  %arrayidx84 = getelementptr inbounds %struct.state, %struct.state* %82, i64 %idxprom82
  %att85 = getelementptr inbounds %struct.state, %struct.state* %arrayidx84, i32 0, i32 0
  %83 = load i32, i32* %att85, align 4
  %idxprom86 = sext i32 %83 to i64
  %84 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes87 = getelementptr inbounds %struct.dfa, %struct.dfa* %84, i32 0, i32 5
  %85 = load %struct.attrib*, %struct.attrib** %indexes87, align 8
  %arrayidx88 = getelementptr inbounds %struct.attrib, %struct.attrib* %85, i64 %idxprom86
  %next89 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx88, i32 0, i32 1
  store i32 0, i32* %next89, align 4
  %86 = load i32, i32* %new_state, align 4
  %87 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %87, i32 0, i32 4
  store i32 %86, i32* %last_state, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @pattern_2_string(%struct.pattern* %pat, %struct.patval_b* %elements, i8* %str, i32 %trans, i32 %ci, i32 %cj) #0 {
entry:
  %pat.addr = alloca %struct.pattern*, align 8
  %elements.addr = alloca %struct.patval_b*, align 8
  %str.addr = alloca i8*, align 8
  %trans.addr = alloca i32, align 4
  %ci.addr = alloca i32, align 4
  %cj.addr = alloca i32, align 4
  %work_space = alloca [84 x [84 x i8]], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %edges = alloca i32, align 4
  %borders = alloca i32, align 4
  %to_test = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.pattern* %pat, %struct.pattern** %pat.addr, align 8
  store %struct.patval_b* %elements, %struct.patval_b** %elements.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %ci, i32* %ci.addr, align 4
  store i32 %cj, i32* %cj.addr, align 4
  %0 = load i32, i32* %ci.addr, align 4
  %add = add nsw i32 42, %0
  store i32 %add, i32* %m, align 4
  %1 = load i32, i32* %cj.addr, align 4
  %add1 = add nsw i32 42, %1
  store i32 %add1, i32* %n, align 4
  %2 = load i8*, i8** %str.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 1764, i32 1, i1 false)
  %3 = bitcast [84 x [84 x i8]]* %work_space to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 35, i64 7056, i32 16, i1 false)
  %4 = load i32, i32* @dfa_verbose, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 21, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %if.end
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %6, 63
  br i1 %cmp2, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 21, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %cmp4 = icmp ne i32 %7, 63
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 36, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %12 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %mini = getelementptr inbounds %struct.pattern, %struct.pattern* %12, i32 0, i32 4
  %13 = load i32, i32* %mini, align 4
  %14 = load i32, i32* %m, align 4
  %add11 = add nsw i32 %13, %14
  store i32 %add11, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.30, %for.end.10
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxi = getelementptr inbounds %struct.pattern, %struct.pattern* %16, i32 0, i32 6
  %17 = load i32, i32* %maxi, align 4
  %18 = load i32, i32* %m, align 4
  %add13 = add nsw i32 %17, %18
  %add14 = add nsw i32 %add13, 1
  %cmp15 = icmp ne i32 %15, %add14
  br i1 %cmp15, label %for.body.16, label %for.end.32

for.body.16:                                      ; preds = %for.cond.12
  %19 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %minj = getelementptr inbounds %struct.pattern, %struct.pattern* %19, i32 0, i32 5
  %20 = load i32, i32* %minj, align 4
  %21 = load i32, i32* %n, align 4
  %add17 = add nsw i32 %20, %21
  store i32 %add17, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.27, %for.body.16
  %22 = load i32, i32* %j, align 4
  %23 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxj = getelementptr inbounds %struct.pattern, %struct.pattern* %23, i32 0, i32 7
  %24 = load i32, i32* %maxj, align 4
  %25 = load i32, i32* %n, align 4
  %add19 = add nsw i32 %24, %25
  %add20 = add nsw i32 %add19, 1
  %cmp21 = icmp ne i32 %22, %add20
  br i1 %cmp21, label %for.body.22, label %for.end.29

for.body.22:                                      ; preds = %for.cond.18
  %26 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx25, i32 0, i64 %idxprom23
  store i8 63, i8* %arrayidx26, align 1
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.22
  %28 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond.18

for.end.29:                                       ; preds = %for.cond.18
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.29
  %29 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %29, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.12

for.end.32:                                       ; preds = %for.cond.12
  %30 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %edge_constraints = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 10
  %31 = load i32, i32* %edge_constraints, align 4
  %and = and i32 %31, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.33, label %if.end.53

if.then.33:                                       ; preds = %for.end.32
  %32 = load i32, i32* %m, align 4
  %33 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxi34 = getelementptr inbounds %struct.pattern, %struct.pattern* %33, i32 0, i32 6
  %34 = load i32, i32* %maxi34, align 4
  %add35 = add nsw i32 %32, %34
  %add36 = add nsw i32 %add35, 1
  store i32 %add36, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.50, %if.then.33
  %35 = load i32, i32* %i, align 4
  %cmp38 = icmp ne i32 %35, 63
  br i1 %cmp38, label %for.body.39, label %for.end.52

for.body.39:                                      ; preds = %for.cond.37
  store i32 0, i32* %j, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %for.body.39
  %36 = load i32, i32* %j, align 4
  %cmp41 = icmp ne i32 %36, 63
  br i1 %cmp41, label %for.body.42, label %for.end.49

for.body.42:                                      ; preds = %for.cond.40
  %37 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %38 to i64
  %arrayidx45 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx45, i32 0, i64 %idxprom43
  store i8 45, i8* %arrayidx46, align 1
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.42
  %39 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %39, 1
  store i32 %inc48, i32* %j, align 4
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %40 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %40, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.37

for.end.52:                                       ; preds = %for.cond.37
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %for.end.32
  %41 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %edge_constraints54 = getelementptr inbounds %struct.pattern, %struct.pattern* %41, i32 0, i32 10
  %42 = load i32, i32* %edge_constraints54, align 4
  %and55 = and i32 %42, 4
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.77

if.then.57:                                       ; preds = %if.end.53
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.74, %if.then.57
  %43 = load i32, i32* %i, align 4
  %cmp59 = icmp ne i32 %43, 63
  br i1 %cmp59, label %for.body.60, label %for.end.76

for.body.60:                                      ; preds = %for.cond.58
  %44 = load i32, i32* %n, align 4
  %45 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxj61 = getelementptr inbounds %struct.pattern, %struct.pattern* %45, i32 0, i32 7
  %46 = load i32, i32* %maxj61, align 4
  %add62 = add nsw i32 %44, %46
  %add63 = add nsw i32 %add62, 1
  store i32 %add63, i32* %j, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.71, %for.body.60
  %47 = load i32, i32* %j, align 4
  %cmp65 = icmp ne i32 %47, 63
  br i1 %cmp65, label %for.body.66, label %for.end.73

for.body.66:                                      ; preds = %for.cond.64
  %48 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %49 to i64
  %arrayidx69 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx69, i32 0, i64 %idxprom67
  store i8 124, i8* %arrayidx70, align 1
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.66
  %50 = load i32, i32* %j, align 4
  %inc72 = add nsw i32 %50, 1
  store i32 %inc72, i32* %j, align 4
  br label %for.cond.64

for.end.73:                                       ; preds = %for.cond.64
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.73
  %51 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %51, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.58

for.end.76:                                       ; preds = %for.cond.58
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %if.end.53
  %52 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %edge_constraints78 = getelementptr inbounds %struct.pattern, %struct.pattern* %52, i32 0, i32 10
  %53 = load i32, i32* %edge_constraints78, align 4
  %and79 = and i32 %53, 1
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.100

if.then.81:                                       ; preds = %if.end.77
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.97, %if.then.81
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %m, align 4
  %56 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %mini83 = getelementptr inbounds %struct.pattern, %struct.pattern* %56, i32 0, i32 4
  %57 = load i32, i32* %mini83, align 4
  %add84 = add nsw i32 %55, %57
  %cmp85 = icmp ne i32 %54, %add84
  br i1 %cmp85, label %for.body.86, label %for.end.99

for.body.86:                                      ; preds = %for.cond.82
  store i32 0, i32* %j, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.94, %for.body.86
  %58 = load i32, i32* %j, align 4
  %cmp88 = icmp ne i32 %58, 84
  br i1 %cmp88, label %for.body.89, label %for.end.96

for.body.89:                                      ; preds = %for.cond.87
  %59 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %60 to i64
  %arrayidx92 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx92, i32 0, i64 %idxprom90
  store i8 45, i8* %arrayidx93, align 1
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.89
  %61 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %61, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond.87

for.end.96:                                       ; preds = %for.cond.87
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %62 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %62, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond.82

for.end.99:                                       ; preds = %for.cond.82
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %if.end.77
  %63 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %edge_constraints101 = getelementptr inbounds %struct.pattern, %struct.pattern* %63, i32 0, i32 10
  %64 = load i32, i32* %edge_constraints101, align 4
  %and102 = and i32 %64, 8
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.152

if.then.104:                                      ; preds = %if.end.100
  store i32 0, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.123, %if.then.104
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %m, align 4
  %67 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxi106 = getelementptr inbounds %struct.pattern, %struct.pattern* %67, i32 0, i32 6
  %68 = load i32, i32* %maxi106, align 4
  %add107 = add nsw i32 %66, %68
  %add108 = add nsw i32 %add107, 1
  %cmp109 = icmp ne i32 %65, %add108
  br i1 %cmp109, label %for.body.110, label %for.end.125

for.body.110:                                     ; preds = %for.cond.105
  store i32 0, i32* %j, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.120, %for.body.110
  %69 = load i32, i32* %j, align 4
  %70 = load i32, i32* %n, align 4
  %71 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %minj112 = getelementptr inbounds %struct.pattern, %struct.pattern* %71, i32 0, i32 5
  %72 = load i32, i32* %minj112, align 4
  %add113 = add nsw i32 %70, %72
  %cmp114 = icmp ne i32 %69, %add113
  br i1 %cmp114, label %for.body.115, label %for.end.122

for.body.115:                                     ; preds = %for.cond.111
  %73 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %74 to i64
  %arrayidx118 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx118, i32 0, i64 %idxprom116
  store i8 124, i8* %arrayidx119, align 1
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.115
  %75 = load i32, i32* %j, align 4
  %inc121 = add nsw i32 %75, 1
  store i32 %inc121, i32* %j, align 4
  br label %for.cond.111

for.end.122:                                      ; preds = %for.cond.111
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.end.122
  %76 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %76, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.105

for.end.125:                                      ; preds = %for.cond.105
  %77 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %edge_constraints126 = getelementptr inbounds %struct.pattern, %struct.pattern* %77, i32 0, i32 10
  %78 = load i32, i32* %edge_constraints126, align 4
  %and127 = and i32 %78, 2
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.end.151, label %if.then.129

if.then.129:                                      ; preds = %for.end.125
  %79 = load i32, i32* %m, align 4
  %80 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxi130 = getelementptr inbounds %struct.pattern, %struct.pattern* %80, i32 0, i32 6
  %81 = load i32, i32* %maxi130, align 4
  %add131 = add nsw i32 %79, %81
  %add132 = add nsw i32 %add131, 1
  store i32 %add132, i32* %i, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.148, %if.then.129
  %82 = load i32, i32* %i, align 4
  %cmp134 = icmp ne i32 %82, 63
  br i1 %cmp134, label %for.body.135, label %for.end.150

for.body.135:                                     ; preds = %for.cond.133
  store i32 0, i32* %j, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.145, %for.body.135
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %n, align 4
  %85 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %minj137 = getelementptr inbounds %struct.pattern, %struct.pattern* %85, i32 0, i32 5
  %86 = load i32, i32* %minj137, align 4
  %add138 = add nsw i32 %84, %86
  %cmp139 = icmp ne i32 %83, %add138
  br i1 %cmp139, label %for.body.140, label %for.end.147

for.body.140:                                     ; preds = %for.cond.136
  %87 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %87 to i64
  %88 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %88 to i64
  %arrayidx143 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx143, i32 0, i64 %idxprom141
  store i8 124, i8* %arrayidx144, align 1
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.140
  %89 = load i32, i32* %j, align 4
  %inc146 = add nsw i32 %89, 1
  store i32 %inc146, i32* %j, align 4
  br label %for.cond.136

for.end.147:                                      ; preds = %for.cond.136
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.end.147
  %90 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %90, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond.133

for.end.150:                                      ; preds = %for.cond.133
  br label %if.end.151

if.end.151:                                       ; preds = %for.end.150, %for.end.125
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.100
  %91 = load i32, i32* @dfa_verbose, align 4
  %cmp153 = icmp sgt i32 %91, 4
  br i1 %cmp153, label %if.then.154, label %if.end.179

if.then.154:                                      ; preds = %if.end.152
  store i32 20, i32* %i, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.175, %if.then.154
  %92 = load i32, i32* %i, align 4
  %cmp156 = icmp ne i32 %92, 64
  br i1 %cmp156, label %for.body.157, label %for.end.177

for.body.157:                                     ; preds = %for.cond.155
  store i32 20, i32* %j, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.171, %for.body.157
  %93 = load i32, i32* %j, align 4
  %cmp159 = icmp ne i32 %93, 64
  br i1 %cmp159, label %for.body.160, label %for.end.173

for.body.160:                                     ; preds = %for.cond.158
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %m, align 4
  %cmp161 = icmp eq i32 %94, %95
  br i1 %cmp161, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.160
  %96 = load i32, i32* %j, align 4
  %97 = load i32, i32* %n, align 4
  %cmp162 = icmp eq i32 %96, %97
  br i1 %cmp162, label %if.then.163, label %if.else

if.then.163:                                      ; preds = %land.lhs.true
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.170

if.else:                                          ; preds = %land.lhs.true, %for.body.160
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %100 to i64
  %101 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %101 to i64
  %arrayidx167 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx167, i32 0, i64 %idxprom165
  %102 = load i8, i8* %arrayidx168, align 1
  %conv = sext i8 %102 to i32
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i32 %conv)
  br label %if.end.170

if.end.170:                                       ; preds = %if.else, %if.then.163
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.170
  %103 = load i32, i32* %j, align 4
  %inc172 = add nsw i32 %103, 1
  store i32 %inc172, i32* %j, align 4
  br label %for.cond.158

for.end.173:                                      ; preds = %for.cond.158
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.end.173
  %105 = load i32, i32* %i, align 4
  %inc176 = add nsw i32 %105, 1
  store i32 %inc176, i32* %i, align 4
  br label %for.cond.155

for.end.177:                                      ; preds = %for.cond.155
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.179

if.end.179:                                       ; preds = %for.end.177, %if.end.152
  store i32 0, i32* %k, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.199, %if.end.179
  %107 = load i32, i32* %k, align 4
  %108 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %108, i32 0, i32 1
  %109 = load i32, i32* %patlen, align 4
  %cmp181 = icmp ne i32 %107, %109
  br i1 %cmp181, label %for.body.183, label %for.end.201

for.body.183:                                     ; preds = %for.cond.180
  %110 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %110 to i64
  %111 = load %struct.patval_b*, %struct.patval_b** %elements.addr, align 8
  %arrayidx185 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %111, i64 %idxprom184
  %att = getelementptr inbounds %struct.patval_b, %struct.patval_b* %arrayidx185, i32 0, i32 2
  %112 = load i32, i32* %att, align 4
  %idxprom186 = sext i32 %112 to i64
  %arrayidx187 = getelementptr inbounds [8 x i8], [8 x i8]* @att2val, i32 0, i64 %idxprom186
  %113 = load i8, i8* %arrayidx187, align 1
  store i8 %113, i8* %c, align 1
  %114 = load i8, i8* %c, align 1
  %115 = load i32, i32* %n, align 4
  %116 = load i32, i32* %k, align 4
  %idxprom188 = sext i32 %116 to i64
  %117 = load %struct.patval_b*, %struct.patval_b** %elements.addr, align 8
  %arrayidx189 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %117, i64 %idxprom188
  %y = getelementptr inbounds %struct.patval_b, %struct.patval_b* %arrayidx189, i32 0, i32 1
  %118 = load i32, i32* %y, align 4
  %add190 = add nsw i32 %115, %118
  %119 = load i32, i32* %cj.addr, align 4
  %sub = sub nsw i32 %add190, %119
  %idxprom191 = sext i32 %sub to i64
  %120 = load i32, i32* %m, align 4
  %121 = load i32, i32* %k, align 4
  %idxprom192 = sext i32 %121 to i64
  %122 = load %struct.patval_b*, %struct.patval_b** %elements.addr, align 8
  %arrayidx193 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %122, i64 %idxprom192
  %x = getelementptr inbounds %struct.patval_b, %struct.patval_b* %arrayidx193, i32 0, i32 0
  %123 = load i32, i32* %x, align 4
  %add194 = add nsw i32 %120, %123
  %124 = load i32, i32* %ci.addr, align 4
  %sub195 = sub nsw i32 %add194, %124
  %idxprom196 = sext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom196
  %arrayidx198 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx197, i32 0, i64 %idxprom191
  store i8 %114, i8* %arrayidx198, align 1
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.183
  %125 = load i32, i32* %k, align 4
  %inc200 = add nsw i32 %125, 1
  store i32 %inc200, i32* %k, align 4
  br label %for.cond.180

for.end.201:                                      ; preds = %for.cond.180
  %126 = load i32, i32* @dfa_verbose, align 4
  %cmp202 = icmp sgt i32 %126, 3
  br i1 %cmp202, label %if.then.204, label %if.end.236

if.then.204:                                      ; preds = %for.end.201
  store i32 20, i32* %i, align 4
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.232, %if.then.204
  %127 = load i32, i32* %i, align 4
  %cmp206 = icmp ne i32 %127, 64
  br i1 %cmp206, label %for.body.208, label %for.end.234

for.body.208:                                     ; preds = %for.cond.205
  store i32 20, i32* %j, align 4
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.228, %for.body.208
  %128 = load i32, i32* %j, align 4
  %cmp210 = icmp ne i32 %128, 64
  br i1 %cmp210, label %for.body.212, label %for.end.230

for.body.212:                                     ; preds = %for.cond.209
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %m, align 4
  %cmp213 = icmp eq i32 %129, %130
  br i1 %cmp213, label %land.lhs.true.215, label %if.else.220

land.lhs.true.215:                                ; preds = %for.body.212
  %131 = load i32, i32* %j, align 4
  %132 = load i32, i32* %n, align 4
  %cmp216 = icmp eq i32 %131, %132
  br i1 %cmp216, label %if.then.218, label %if.else.220

if.then.218:                                      ; preds = %land.lhs.true.215
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.227

if.else.220:                                      ; preds = %land.lhs.true.215, %for.body.212
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = load i32, i32* %j, align 4
  %idxprom221 = sext i32 %135 to i64
  %136 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %136 to i64
  %arrayidx223 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom222
  %arrayidx224 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx223, i32 0, i64 %idxprom221
  %137 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %137 to i32
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i32 %conv225)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.220, %if.then.218
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %138 = load i32, i32* %j, align 4
  %inc229 = add nsw i32 %138, 1
  store i32 %inc229, i32* %j, align 4
  br label %for.cond.209

for.end.230:                                      ; preds = %for.cond.209
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %for.inc.232

for.inc.232:                                      ; preds = %for.end.230
  %140 = load i32, i32* %i, align 4
  %inc233 = add nsw i32 %140, 1
  store i32 %inc233, i32* %i, align 4
  br label %for.cond.205

for.end.234:                                      ; preds = %for.cond.205
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.236

if.end.236:                                       ; preds = %for.end.234, %for.end.201
  %142 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %patlen237 = getelementptr inbounds %struct.pattern, %struct.pattern* %142, i32 0, i32 1
  %143 = load i32, i32* %patlen237, align 4
  store i32 %143, i32* %to_test, align 4
  %144 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %edge_constraints238 = getelementptr inbounds %struct.pattern, %struct.pattern* %144, i32 0, i32 10
  %145 = load i32, i32* %edge_constraints238, align 4
  store i32 %145, i32* %edges, align 4
  store i32 15, i32* %borders, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.337, %if.end.236
  %146 = load i32, i32* %k, align 4
  %cmp240 = icmp ne i32 %146, 1763
  br i1 %cmp240, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.239
  %147 = load i32, i32* %borders, align 4
  %cmp242 = icmp sgt i32 %147, 0
  br i1 %cmp242, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %148 = load i32, i32* %edges, align 4
  %tobool244 = icmp ne i32 %148, 0
  br i1 %tobool244, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %149 = load i32, i32* %to_test, align 4
  %cmp245 = icmp sgt i32 %149, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %150 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp245, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond.239
  %151 = phi i1 [ false, %for.cond.239 ], [ %150, %lor.end ]
  br i1 %151, label %for.body.247, label %for.end.339

for.body.247:                                     ; preds = %land.end
  %152 = load i32, i32* %trans.addr, align 4
  %idxprom248 = sext i32 %152 to i64
  %153 = load i32, i32* %k, align 4
  %idxprom249 = sext i32 %153 to i64
  %arrayidx250 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i32 0, i64 %idxprom249
  %arrayidx251 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx250, i32 0, i64 %idxprom248
  %154 = load i32, i32* %arrayidx251, align 4
  %rem = srem i32 %154, 84
  store i32 %rem, i32* %j, align 4
  %155 = load i32, i32* %j, align 4
  %cmp252 = icmp sge i32 %155, 42
  br i1 %cmp252, label %if.then.254, label %if.end.256

if.then.254:                                      ; preds = %for.body.247
  %156 = load i32, i32* %j, align 4
  %sub255 = sub nsw i32 %156, 84
  store i32 %sub255, i32* %j, align 4
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.254, %for.body.247
  %157 = load i32, i32* %j, align 4
  %cmp257 = icmp slt i32 %157, -42
  br i1 %cmp257, label %if.then.259, label %if.end.261

if.then.259:                                      ; preds = %if.end.256
  %158 = load i32, i32* %j, align 4
  %add260 = add nsw i32 %158, 84
  store i32 %add260, i32* %j, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %if.end.256
  %159 = load i32, i32* %trans.addr, align 4
  %idxprom262 = sext i32 %159 to i64
  %160 = load i32, i32* %k, align 4
  %idxprom263 = sext i32 %160 to i64
  %arrayidx264 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i32 0, i64 %idxprom263
  %arrayidx265 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx264, i32 0, i64 %idxprom262
  %161 = load i32, i32* %arrayidx265, align 4
  %162 = load i32, i32* %j, align 4
  %sub266 = sub nsw i32 %161, %162
  %div = sdiv i32 %sub266, 84
  store i32 %div, i32* %i, align 4
  %163 = load i32, i32* %i, align 4
  %164 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxi267 = getelementptr inbounds %struct.pattern, %struct.pattern* %164, i32 0, i32 6
  %165 = load i32, i32* %maxi267, align 4
  %cmp268 = icmp eq i32 %163, %165
  br i1 %cmp268, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %if.end.261
  %166 = load i32, i32* %borders, align 4
  %and271 = and i32 %166, -3
  store i32 %and271, i32* %borders, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %if.end.261
  %167 = load i32, i32* %i, align 4
  %168 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %mini273 = getelementptr inbounds %struct.pattern, %struct.pattern* %168, i32 0, i32 4
  %169 = load i32, i32* %mini273, align 4
  %cmp274 = icmp eq i32 %167, %169
  br i1 %cmp274, label %if.then.276, label %if.end.278

if.then.276:                                      ; preds = %if.end.272
  %170 = load i32, i32* %borders, align 4
  %and277 = and i32 %170, -2
  store i32 %and277, i32* %borders, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.276, %if.end.272
  %171 = load i32, i32* %j, align 4
  %172 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxj279 = getelementptr inbounds %struct.pattern, %struct.pattern* %172, i32 0, i32 7
  %173 = load i32, i32* %maxj279, align 4
  %cmp280 = icmp eq i32 %171, %173
  br i1 %cmp280, label %if.then.282, label %if.end.284

if.then.282:                                      ; preds = %if.end.278
  %174 = load i32, i32* %borders, align 4
  %and283 = and i32 %174, -5
  store i32 %and283, i32* %borders, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.282, %if.end.278
  %175 = load i32, i32* %j, align 4
  %176 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %minj285 = getelementptr inbounds %struct.pattern, %struct.pattern* %176, i32 0, i32 5
  %177 = load i32, i32* %minj285, align 4
  %cmp286 = icmp eq i32 %175, %177
  br i1 %cmp286, label %if.then.288, label %if.end.290

if.then.288:                                      ; preds = %if.end.284
  %178 = load i32, i32* %borders, align 4
  %and289 = and i32 %178, -9
  store i32 %and289, i32* %borders, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.288, %if.end.284
  %179 = load i32, i32* %n, align 4
  %180 = load i32, i32* %j, align 4
  %add291 = add nsw i32 %179, %180
  %idxprom292 = sext i32 %add291 to i64
  %181 = load i32, i32* %m, align 4
  %182 = load i32, i32* %i, align 4
  %add293 = add nsw i32 %181, %182
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %work_space, i32 0, i64 %idxprom294
  %arrayidx296 = getelementptr inbounds [84 x i8], [84 x i8]* %arrayidx295, i32 0, i64 %idxprom292
  %183 = load i8, i8* %arrayidx296, align 1
  %184 = load i32, i32* %k, align 4
  %idxprom297 = sext i32 %184 to i64
  %185 = load i8*, i8** %str.addr, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %185, i64 %idxprom297
  store i8 %183, i8* %arrayidx298, align 1
  %186 = load i32, i32* %k, align 4
  %idxprom299 = sext i32 %186 to i64
  %187 = load i8*, i8** %str.addr, align 8
  %arrayidx300 = getelementptr inbounds i8, i8* %187, i64 %idxprom299
  %188 = load i8, i8* %arrayidx300, align 1
  %conv301 = sext i8 %188 to i32
  %call302 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %conv301) #7
  %tobool303 = icmp ne i8* %call302, null
  br i1 %tobool303, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.end.290
  %189 = load i32, i32* %to_test, align 4
  %dec = add nsw i32 %189, -1
  store i32 %dec, i32* %to_test, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.304, %if.end.290
  %190 = load i32, i32* %k, align 4
  %idxprom306 = sext i32 %190 to i64
  %191 = load i8*, i8** %str.addr, align 8
  %arrayidx307 = getelementptr inbounds i8, i8* %191, i64 %idxprom306
  %192 = load i8, i8* %arrayidx307, align 1
  %conv308 = sext i8 %192 to i32
  %call309 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 %conv308) #7
  %tobool310 = icmp ne i8* %call309, null
  br i1 %tobool310, label %if.then.311, label %if.end.336

if.then.311:                                      ; preds = %if.end.305
  %193 = load i32, i32* %i, align 4
  %194 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxi312 = getelementptr inbounds %struct.pattern, %struct.pattern* %194, i32 0, i32 6
  %195 = load i32, i32* %maxi312, align 4
  %cmp313 = icmp sgt i32 %193, %195
  br i1 %cmp313, label %if.then.315, label %if.end.317

if.then.315:                                      ; preds = %if.then.311
  %196 = load i32, i32* %edges, align 4
  %and316 = and i32 %196, -3
  store i32 %and316, i32* %edges, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.315, %if.then.311
  %197 = load i32, i32* %i, align 4
  %198 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %mini318 = getelementptr inbounds %struct.pattern, %struct.pattern* %198, i32 0, i32 4
  %199 = load i32, i32* %mini318, align 4
  %cmp319 = icmp slt i32 %197, %199
  br i1 %cmp319, label %if.then.321, label %if.end.323

if.then.321:                                      ; preds = %if.end.317
  %200 = load i32, i32* %edges, align 4
  %and322 = and i32 %200, -2
  store i32 %and322, i32* %edges, align 4
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.321, %if.end.317
  %201 = load i32, i32* %j, align 4
  %202 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %maxj324 = getelementptr inbounds %struct.pattern, %struct.pattern* %202, i32 0, i32 7
  %203 = load i32, i32* %maxj324, align 4
  %cmp325 = icmp sgt i32 %201, %203
  br i1 %cmp325, label %if.then.327, label %if.end.329

if.then.327:                                      ; preds = %if.end.323
  %204 = load i32, i32* %edges, align 4
  %and328 = and i32 %204, -5
  store i32 %and328, i32* %edges, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.327, %if.end.323
  %205 = load i32, i32* %j, align 4
  %206 = load %struct.pattern*, %struct.pattern** %pat.addr, align 8
  %minj330 = getelementptr inbounds %struct.pattern, %struct.pattern* %206, i32 0, i32 5
  %207 = load i32, i32* %minj330, align 4
  %cmp331 = icmp slt i32 %205, %207
  br i1 %cmp331, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %if.end.329
  %208 = load i32, i32* %edges, align 4
  %and334 = and i32 %208, -9
  store i32 %and334, i32* %edges, align 4
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.333, %if.end.329
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.305
  br label %for.inc.337

for.inc.337:                                      ; preds = %if.end.336
  %209 = load i32, i32* %k, align 4
  %inc338 = add nsw i32 %209, 1
  store i32 %inc338, i32* %k, align 4
  br label %for.cond.239

for.end.339:                                      ; preds = %land.end
  %210 = load i32, i32* %k, align 4
  %idxprom340 = sext i32 %210 to i64
  %211 = load i8*, i8** %str.addr, align 8
  %arrayidx341 = getelementptr inbounds i8, i8* %211, i64 %idxprom340
  store i8 0, i8* %arrayidx341, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @new_test_array(%struct.test_array* %pta) #0 {
entry:
  %pta.addr = alloca %struct.test_array*, align 8
  %h = alloca i32, align 4
  store %struct.test_array* %pta, %struct.test_array** %pta.addr, align 8
  store i32 0, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %h, align 4
  %cmp = icmp ne i32 %0, 4096
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %h, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.test_array*, %struct.test_array** %pta.addr, align 8
  %hash = getelementptr inbounds %struct.test_array, %struct.test_array* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %hash, i32 0, i64 %idxprom
  store %struct.entry* null, %struct.entry** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %h, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_to_test_array(%struct.test_array* %pta, i32 %l, i32 %r, i32 %val) #0 {
entry:
  %pta.addr = alloca %struct.test_array*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.test_array* %pta, %struct.test_array** %pta.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %1 = load i32, i32* %r.addr, align 4
  %add = add nsw i32 %0, %1
  %rem = srem i32 %add, 4096
  %idxprom = sext i32 %rem to i64
  %2 = load %struct.test_array*, %struct.test_array** %pta.addr, align 8
  %hash = getelementptr inbounds %struct.test_array, %struct.test_array* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %hash, i32 0, i64 %idxprom
  %3 = load i32, i32* %l.addr, align 4
  %4 = load i32, i32* %r.addr, align 4
  %5 = load i32, i32* %val.addr, align 4
  call void @add_to_entry_list(%struct.entry** %arrayidx, i32 %3, i32 %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_sync_product(i32 %l, i32 %r) #0 {
entry:
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %nextl = alloca i32, align 4
  %nextr = alloca i32, align 4
  %state = alloca i32, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %last_state = getelementptr inbounds %struct.dfa, %struct.dfa* %0, i32 0, i32 4
  %1 = load i32, i32* %last_state, align 4
  store i32 %1, i32* %state, align 4
  %2 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %3 = load %struct.dfa*, %struct.dfa** @gpleft, align 8
  %4 = load i32, i32* %l.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.dfa*, %struct.dfa** @gpleft, align 8
  %states = getelementptr inbounds %struct.dfa, %struct.dfa* %5, i32 0, i32 2
  %6 = load %struct.state*, %struct.state** %states, align 8
  %arrayidx = getelementptr inbounds %struct.state, %struct.state* %6, i64 %idxprom
  %att = getelementptr inbounds %struct.state, %struct.state* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %att, align 4
  %8 = load %struct.dfa*, %struct.dfa** @gpright, align 8
  %9 = load i32, i32* %r.addr, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.dfa*, %struct.dfa** @gpright, align 8
  %states2 = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 2
  %11 = load %struct.state*, %struct.state** %states2, align 8
  %arrayidx3 = getelementptr inbounds %struct.state, %struct.state* %11, i64 %idxprom1
  %att4 = getelementptr inbounds %struct.state, %struct.state* %arrayidx3, i32 0, i32 0
  %12 = load i32, i32* %att4, align 4
  %call = call i32 @union_att(%struct.dfa* %2, %struct.dfa* %3, i32 %7, %struct.dfa* %8, i32 %12)
  %13 = load i32, i32* %state, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %states6 = getelementptr inbounds %struct.dfa, %struct.dfa* %14, i32 0, i32 2
  %15 = load %struct.state*, %struct.state** %states6, align 8
  %arrayidx7 = getelementptr inbounds %struct.state, %struct.state* %15, i64 %idxprom5
  %att8 = getelementptr inbounds %struct.state, %struct.state* %arrayidx7, i32 0, i32 0
  store i32 %call, i32* %att8, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %16, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %c, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load i32, i32* %l.addr, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct.dfa*, %struct.dfa** @gpleft, align 8
  %states11 = getelementptr inbounds %struct.dfa, %struct.dfa* %19, i32 0, i32 2
  %20 = load %struct.state*, %struct.state** %states11, align 8
  %arrayidx12 = getelementptr inbounds %struct.state, %struct.state* %20, i64 %idxprom10
  %next = getelementptr inbounds %struct.state, %struct.state* %arrayidx12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %next, i32 0, i64 %idxprom9
  %21 = load i32, i32* %arrayidx13, align 4
  store i32 %21, i32* %nextl, align 4
  %22 = load i32, i32* %c, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load i32, i32* %r.addr, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.dfa*, %struct.dfa** @gpright, align 8
  %states16 = getelementptr inbounds %struct.dfa, %struct.dfa* %24, i32 0, i32 2
  %25 = load %struct.state*, %struct.state** %states16, align 8
  %arrayidx17 = getelementptr inbounds %struct.state, %struct.state* %25, i64 %idxprom15
  %next18 = getelementptr inbounds %struct.state, %struct.state* %arrayidx17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %next18, i32 0, i64 %idxprom14
  %26 = load i32, i32* %arrayidx19, align 4
  store i32 %26, i32* %nextr, align 4
  %27 = load i32, i32* %nextl, align 4
  %cmp20 = icmp ne i32 %27, 0
  br i1 %cmp20, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %28 = load i32, i32* %nextr, align 4
  %cmp21 = icmp ne i32 %28, 0
  br i1 %cmp21, label %if.then, label %if.else.46

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %29 = load i32, i32* %nextl, align 4
  %30 = load i32, i32* %nextr, align 4
  %call22 = call i32 @get_from_test_array(%struct.test_array* @gtest, i32 %29, i32 %30)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then
  %31 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %last_state25 = getelementptr inbounds %struct.dfa, %struct.dfa* %31, i32 0, i32 4
  %32 = load i32, i32* %last_state25, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %last_state25, align 4
  %33 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %last_state26 = getelementptr inbounds %struct.dfa, %struct.dfa* %33, i32 0, i32 4
  %34 = load i32, i32* %last_state26, align 4
  %35 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %max_states = getelementptr inbounds %struct.dfa, %struct.dfa* %35, i32 0, i32 3
  %36 = load i32, i32* %max_states, align 4
  %cmp27 = icmp sge i32 %34, %36
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then.24
  %37 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %38 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %max_states29 = getelementptr inbounds %struct.dfa, %struct.dfa* %38, i32 0, i32 3
  %39 = load i32, i32* %max_states29, align 4
  %add = add nsw i32 %39, 20000
  %40 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %max_indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %40, i32 0, i32 6
  %41 = load i32, i32* %max_indexes, align 4
  call void @resize_dfa(%struct.dfa* %37, i32 %add, i32 %41)
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.then.24
  %42 = load i32, i32* %nextl, align 4
  %43 = load i32, i32* %nextr, align 4
  %44 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %last_state30 = getelementptr inbounds %struct.dfa, %struct.dfa* %44, i32 0, i32 4
  %45 = load i32, i32* %last_state30, align 4
  call void @add_to_test_array(%struct.test_array* @gtest, i32 %42, i32 %43, i32 %45)
  %46 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %last_state31 = getelementptr inbounds %struct.dfa, %struct.dfa* %46, i32 0, i32 4
  %47 = load i32, i32* %last_state31, align 4
  %48 = load i32, i32* %c, align 4
  %idxprom32 = sext i32 %48 to i64
  %49 = load i32, i32* %state, align 4
  %idxprom33 = sext i32 %49 to i64
  %50 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %states34 = getelementptr inbounds %struct.dfa, %struct.dfa* %50, i32 0, i32 2
  %51 = load %struct.state*, %struct.state** %states34, align 8
  %arrayidx35 = getelementptr inbounds %struct.state, %struct.state* %51, i64 %idxprom33
  %next36 = getelementptr inbounds %struct.state, %struct.state* %arrayidx35, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %next36, i32 0, i64 %idxprom32
  store i32 %47, i32* %arrayidx37, align 4
  %52 = load i32, i32* %nextl, align 4
  %53 = load i32, i32* %nextr, align 4
  call void @do_sync_product(i32 %52, i32 %53)
  br label %if.end.45

if.else:                                          ; preds = %if.then
  %54 = load i32, i32* %nextl, align 4
  %55 = load i32, i32* %nextr, align 4
  %call38 = call i32 @get_from_test_array(%struct.test_array* @gtest, i32 %54, i32 %55)
  %56 = load i32, i32* %c, align 4
  %idxprom39 = sext i32 %56 to i64
  %57 = load i32, i32* %state, align 4
  %idxprom40 = sext i32 %57 to i64
  %58 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %states41 = getelementptr inbounds %struct.dfa, %struct.dfa* %58, i32 0, i32 2
  %59 = load %struct.state*, %struct.state** %states41, align 8
  %arrayidx42 = getelementptr inbounds %struct.state, %struct.state* %59, i64 %idxprom40
  %next43 = getelementptr inbounds %struct.state, %struct.state* %arrayidx42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %next43, i32 0, i64 %idxprom39
  store i32 %call38, i32* %arrayidx44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.end
  br label %if.end.53

if.else.46:                                       ; preds = %lor.lhs.false
  %60 = load i32, i32* %c, align 4
  %idxprom47 = sext i32 %60 to i64
  %61 = load i32, i32* %state, align 4
  %idxprom48 = sext i32 %61 to i64
  %62 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %states49 = getelementptr inbounds %struct.dfa, %struct.dfa* %62, i32 0, i32 2
  %63 = load %struct.state*, %struct.state** %states49, align 8
  %arrayidx50 = getelementptr inbounds %struct.state, %struct.state* %63, i64 %idxprom48
  %next51 = getelementptr inbounds %struct.state, %struct.state* %arrayidx50, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %next51, i32 0, i64 %idxprom47
  store i32 0, i32* %arrayidx52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.46, %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %64 = load i32, i32* %c, align 4
  %inc54 = add nsw i32 %64, 1
  store i32 %inc54, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_test_array(%struct.test_array* %pta) #0 {
entry:
  %pta.addr = alloca %struct.test_array*, align 8
  %h = alloca i32, align 4
  store %struct.test_array* %pta, %struct.test_array** %pta.addr, align 8
  store i32 0, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %h, align 4
  %cmp = icmp ne i32 %0, 4096
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %h, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.test_array*, %struct.test_array** %pta.addr, align 8
  %hash = getelementptr inbounds %struct.test_array, %struct.test_array* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %hash, i32 0, i64 %idxprom
  %3 = load %struct.entry*, %struct.entry** %arrayidx, align 8
  call void @free_entry_list(%struct.entry* %3)
  %4 = load i32, i32* %h, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.test_array*, %struct.test_array** %pta.addr, align 8
  %hash2 = getelementptr inbounds %struct.test_array, %struct.test_array* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %hash2, i32 0, i64 %idxprom1
  store %struct.entry* null, %struct.entry** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %h, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %h, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_to_entry_list(%struct.entry** %pplist, i32 %l, i32 %r, i32 %val) #0 {
entry:
  %pplist.addr = alloca %struct.entry**, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %new_entry = alloca %struct.entry*, align 8
  store %struct.entry** %pplist, %struct.entry*** %pplist.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %call = call noalias i8* @malloc(i64 24) #2
  %0 = bitcast i8* %call to %struct.entry*
  store %struct.entry* %0, %struct.entry** %new_entry, align 8
  %1 = load %struct.entry*, %struct.entry** %new_entry, align 8
  %cmp = icmp eq %struct.entry* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct.entry**, %struct.entry*** %pplist.addr, align 8
  %4 = load %struct.entry*, %struct.entry** %3, align 8
  %5 = load %struct.entry*, %struct.entry** %new_entry, align 8
  %pnext = getelementptr inbounds %struct.entry, %struct.entry* %5, i32 0, i32 3
  store %struct.entry* %4, %struct.entry** %pnext, align 8
  %6 = load i32, i32* %l.addr, align 4
  %7 = load %struct.entry*, %struct.entry** %new_entry, align 8
  %l2 = getelementptr inbounds %struct.entry, %struct.entry* %7, i32 0, i32 0
  store i32 %6, i32* %l2, align 4
  %8 = load i32, i32* %r.addr, align 4
  %9 = load %struct.entry*, %struct.entry** %new_entry, align 8
  %r3 = getelementptr inbounds %struct.entry, %struct.entry* %9, i32 0, i32 1
  store i32 %8, i32* %r3, align 4
  %10 = load i32, i32* %val.addr, align 4
  %11 = load %struct.entry*, %struct.entry** %new_entry, align 8
  %val4 = getelementptr inbounds %struct.entry, %struct.entry* %11, i32 0, i32 2
  store i32 %10, i32* %val4, align 4
  %12 = load %struct.entry*, %struct.entry** %new_entry, align 8
  %13 = load %struct.entry**, %struct.entry*** %pplist.addr, align 8
  store %struct.entry* %12, %struct.entry** %13, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @union_att(%struct.dfa* %pdfa, %struct.dfa* %pdfa1, i32 %att1, %struct.dfa* %pdfa2, i32 %att2) #0 {
entry:
  %pdfa.addr = alloca %struct.dfa*, align 8
  %pdfa1.addr = alloca %struct.dfa*, align 8
  %att1.addr = alloca i32, align 4
  %pdfa2.addr = alloca %struct.dfa*, align 8
  %att2.addr = alloca i32, align 4
  %att = alloca i32, align 4
  %att_aux = alloca i32, align 4
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  store %struct.dfa* %pdfa1, %struct.dfa** %pdfa1.addr, align 8
  store i32 %att1, i32* %att1.addr, align 4
  store %struct.dfa* %pdfa2, %struct.dfa** %pdfa2.addr, align 8
  store i32 %att2, i32* %att2.addr, align 4
  store i32 0, i32* %att, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %att1.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index = getelementptr inbounds %struct.dfa, %struct.dfa* %1, i32 0, i32 7
  %2 = load i32, i32* %last_index, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %last_index, align 4
  %3 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index1 = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 7
  %4 = load i32, i32* %last_index1, align 4
  %5 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %5, i32 0, i32 6
  %6 = load i32, i32* %max_indexes, align 4
  %cmp2 = icmp sge i32 %4, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %8 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_states = getelementptr inbounds %struct.dfa, %struct.dfa* %8, i32 0, i32 3
  %9 = load i32, i32* %max_states, align 4
  %10 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes3 = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 6
  %11 = load i32, i32* %max_indexes3, align 4
  %add = add nsw i32 %11, 20000
  call void @resize_dfa(%struct.dfa* %7, i32 %9, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index4 = getelementptr inbounds %struct.dfa, %struct.dfa* %12, i32 0, i32 7
  %13 = load i32, i32* %last_index4, align 4
  store i32 %13, i32* %att_aux, align 4
  %14 = load i32, i32* %att1.addr, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.dfa*, %struct.dfa** %pdfa1.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %15, i32 0, i32 5
  %16 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %arrayidx = getelementptr inbounds %struct.attrib, %struct.attrib* %16, i64 %idxprom
  %val = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx, i32 0, i32 0
  %17 = load i32, i32* %val, align 4
  %18 = load i32, i32* %att_aux, align 4
  %idxprom5 = sext i32 %18 to i64
  %19 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes6 = getelementptr inbounds %struct.dfa, %struct.dfa* %19, i32 0, i32 5
  %20 = load %struct.attrib*, %struct.attrib** %indexes6, align 8
  %arrayidx7 = getelementptr inbounds %struct.attrib, %struct.attrib* %20, i64 %idxprom5
  %val8 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx7, i32 0, i32 0
  store i32 %17, i32* %val8, align 4
  %21 = load i32, i32* %att, align 4
  %22 = load i32, i32* %att_aux, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes10 = getelementptr inbounds %struct.dfa, %struct.dfa* %23, i32 0, i32 5
  %24 = load %struct.attrib*, %struct.attrib** %indexes10, align 8
  %arrayidx11 = getelementptr inbounds %struct.attrib, %struct.attrib* %24, i64 %idxprom9
  %next = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx11, i32 0, i32 1
  store i32 %21, i32* %next, align 4
  %25 = load i32, i32* %att_aux, align 4
  store i32 %25, i32* %att, align 4
  %26 = load i32, i32* %att1.addr, align 4
  %idxprom12 = sext i32 %26 to i64
  %27 = load %struct.dfa*, %struct.dfa** %pdfa1.addr, align 8
  %indexes13 = getelementptr inbounds %struct.dfa, %struct.dfa* %27, i32 0, i32 5
  %28 = load %struct.attrib*, %struct.attrib** %indexes13, align 8
  %arrayidx14 = getelementptr inbounds %struct.attrib, %struct.attrib* %28, i64 %idxprom12
  %next15 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx14, i32 0, i32 1
  %29 = load i32, i32* %next15, align 4
  store i32 %29, i32* %att1.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.16

while.cond.16:                                    ; preds = %if.end.47, %while.end
  %30 = load i32, i32* %att2.addr, align 4
  %cmp17 = icmp ne i32 %30, 0
  br i1 %cmp17, label %while.body.18, label %while.end.52

while.body.18:                                    ; preds = %while.cond.16
  %31 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %32 = load i32, i32* %att, align 4
  %33 = load i32, i32* %att2.addr, align 4
  %idxprom19 = sext i32 %33 to i64
  %34 = load %struct.dfa*, %struct.dfa** %pdfa2.addr, align 8
  %indexes20 = getelementptr inbounds %struct.dfa, %struct.dfa* %34, i32 0, i32 5
  %35 = load %struct.attrib*, %struct.attrib** %indexes20, align 8
  %arrayidx21 = getelementptr inbounds %struct.attrib, %struct.attrib* %35, i64 %idxprom19
  %val22 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx21, i32 0, i32 0
  %36 = load i32, i32* %val22, align 4
  %call = call i32 @member_att(%struct.dfa* %31, i32 %32, i32 %36)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.47, label %if.then.23

if.then.23:                                       ; preds = %while.body.18
  %37 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index24 = getelementptr inbounds %struct.dfa, %struct.dfa* %37, i32 0, i32 7
  %38 = load i32, i32* %last_index24, align 4
  %inc25 = add nsw i32 %38, 1
  store i32 %inc25, i32* %last_index24, align 4
  %39 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index26 = getelementptr inbounds %struct.dfa, %struct.dfa* %39, i32 0, i32 7
  %40 = load i32, i32* %last_index26, align 4
  %41 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes27 = getelementptr inbounds %struct.dfa, %struct.dfa* %41, i32 0, i32 6
  %42 = load i32, i32* %max_indexes27, align 4
  %cmp28 = icmp sge i32 %40, %42
  br i1 %cmp28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.then.23
  %43 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %44 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_states30 = getelementptr inbounds %struct.dfa, %struct.dfa* %44, i32 0, i32 3
  %45 = load i32, i32* %max_states30, align 4
  %46 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %max_indexes31 = getelementptr inbounds %struct.dfa, %struct.dfa* %46, i32 0, i32 6
  %47 = load i32, i32* %max_indexes31, align 4
  %add32 = add nsw i32 %47, 20000
  call void @resize_dfa(%struct.dfa* %43, i32 %45, i32 %add32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.then.23
  %48 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %last_index34 = getelementptr inbounds %struct.dfa, %struct.dfa* %48, i32 0, i32 7
  %49 = load i32, i32* %last_index34, align 4
  store i32 %49, i32* %att_aux, align 4
  %50 = load i32, i32* %att2.addr, align 4
  %idxprom35 = sext i32 %50 to i64
  %51 = load %struct.dfa*, %struct.dfa** %pdfa2.addr, align 8
  %indexes36 = getelementptr inbounds %struct.dfa, %struct.dfa* %51, i32 0, i32 5
  %52 = load %struct.attrib*, %struct.attrib** %indexes36, align 8
  %arrayidx37 = getelementptr inbounds %struct.attrib, %struct.attrib* %52, i64 %idxprom35
  %val38 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx37, i32 0, i32 0
  %53 = load i32, i32* %val38, align 4
  %54 = load i32, i32* %att_aux, align 4
  %idxprom39 = sext i32 %54 to i64
  %55 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes40 = getelementptr inbounds %struct.dfa, %struct.dfa* %55, i32 0, i32 5
  %56 = load %struct.attrib*, %struct.attrib** %indexes40, align 8
  %arrayidx41 = getelementptr inbounds %struct.attrib, %struct.attrib* %56, i64 %idxprom39
  %val42 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx41, i32 0, i32 0
  store i32 %53, i32* %val42, align 4
  %57 = load i32, i32* %att, align 4
  %58 = load i32, i32* %att_aux, align 4
  %idxprom43 = sext i32 %58 to i64
  %59 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes44 = getelementptr inbounds %struct.dfa, %struct.dfa* %59, i32 0, i32 5
  %60 = load %struct.attrib*, %struct.attrib** %indexes44, align 8
  %arrayidx45 = getelementptr inbounds %struct.attrib, %struct.attrib* %60, i64 %idxprom43
  %next46 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx45, i32 0, i32 1
  store i32 %57, i32* %next46, align 4
  %61 = load i32, i32* %att_aux, align 4
  store i32 %61, i32* %att, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.33, %while.body.18
  %62 = load i32, i32* %att2.addr, align 4
  %idxprom48 = sext i32 %62 to i64
  %63 = load %struct.dfa*, %struct.dfa** %pdfa2.addr, align 8
  %indexes49 = getelementptr inbounds %struct.dfa, %struct.dfa* %63, i32 0, i32 5
  %64 = load %struct.attrib*, %struct.attrib** %indexes49, align 8
  %arrayidx50 = getelementptr inbounds %struct.attrib, %struct.attrib* %64, i64 %idxprom48
  %next51 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx50, i32 0, i32 1
  %65 = load i32, i32* %next51, align 4
  store i32 %65, i32* %att2.addr, align 4
  br label %while.cond.16

while.end.52:                                     ; preds = %while.cond.16
  %66 = load i32, i32* %att, align 4
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @get_from_test_array(%struct.test_array* %pta, i32 %l, i32 %r) #0 {
entry:
  %pta.addr = alloca %struct.test_array*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  store %struct.test_array* %pta, %struct.test_array** %pta.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %1 = load i32, i32* %r.addr, align 4
  %add = add nsw i32 %0, %1
  %rem = srem i32 %add, 4096
  %idxprom = sext i32 %rem to i64
  %2 = load %struct.test_array*, %struct.test_array** %pta.addr, align 8
  %hash = getelementptr inbounds %struct.test_array, %struct.test_array* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %hash, i32 0, i64 %idxprom
  %3 = load %struct.entry*, %struct.entry** %arrayidx, align 8
  %4 = load i32, i32* %l.addr, align 4
  %5 = load i32, i32* %r.addr, align 4
  %call = call i32 @get_from_entry_list(%struct.entry* %3, i32 %4, i32 %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @member_att(%struct.dfa* %pdfa, i32 %att, i32 %val) #0 {
entry:
  %retval = alloca i32, align 4
  %pdfa.addr = alloca %struct.dfa*, align 8
  %att.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.dfa* %pdfa, %struct.dfa** %pdfa.addr, align 8
  store i32 %att, i32* %att.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %att.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %att.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes = getelementptr inbounds %struct.dfa, %struct.dfa* %2, i32 0, i32 5
  %3 = load %struct.attrib*, %struct.attrib** %indexes, align 8
  %arrayidx = getelementptr inbounds %struct.attrib, %struct.attrib* %3, i64 %idxprom
  %val1 = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %val1, align 4
  %5 = load i32, i32* %val.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %att.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.dfa*, %struct.dfa** %pdfa.addr, align 8
  %indexes4 = getelementptr inbounds %struct.dfa, %struct.dfa* %7, i32 0, i32 5
  %8 = load %struct.attrib*, %struct.attrib** %indexes4, align 8
  %arrayidx5 = getelementptr inbounds %struct.attrib, %struct.attrib* %8, i64 %idxprom3
  %next = getelementptr inbounds %struct.attrib, %struct.attrib* %arrayidx5, i32 0, i32 1
  %9 = load i32, i32* %next, align 4
  store i32 %9, i32* %att.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @get_from_entry_list(%struct.entry* %plist, i32 %l, i32 %r) #0 {
entry:
  %plist.addr = alloca %struct.entry*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.entry* %plist, %struct.entry** %plist.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 0, i32* %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.entry*, %struct.entry** %plist.addr, align 8
  %cmp = icmp ne %struct.entry* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.entry*, %struct.entry** %plist.addr, align 8
  %l1 = getelementptr inbounds %struct.entry, %struct.entry* %1, i32 0, i32 0
  %2 = load i32, i32* %l1, align 4
  %3 = load i32, i32* %l.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct.entry*, %struct.entry** %plist.addr, align 8
  %r3 = getelementptr inbounds %struct.entry, %struct.entry* %4, i32 0, i32 1
  %5 = load i32, i32* %r3, align 4
  %6 = load i32, i32* %r.addr, align 4
  %cmp4 = icmp eq i32 %5, %6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.entry*, %struct.entry** %plist.addr, align 8
  %val5 = getelementptr inbounds %struct.entry, %struct.entry* %7, i32 0, i32 2
  %8 = load i32, i32* %val5, align 4
  store i32 %8, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %9 = load %struct.entry*, %struct.entry** %plist.addr, align 8
  %pnext = getelementptr inbounds %struct.entry, %struct.entry* %9, i32 0, i32 3
  %10 = load %struct.entry*, %struct.entry** %pnext, align 8
  store %struct.entry* %10, %struct.entry** %plist.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %val, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @free_entry_list(%struct.entry* %plist) #0 {
entry:
  %plist.addr = alloca %struct.entry*, align 8
  %pentry = alloca %struct.entry*, align 8
  store %struct.entry* %plist, %struct.entry** %plist.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.entry*, %struct.entry** %plist.addr, align 8
  %cmp = icmp ne %struct.entry* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.entry*, %struct.entry** %plist.addr, align 8
  store %struct.entry* %1, %struct.entry** %pentry, align 8
  %2 = load %struct.entry*, %struct.entry** %plist.addr, align 8
  %pnext = getelementptr inbounds %struct.entry, %struct.entry* %2, i32 0, i32 3
  %3 = load %struct.entry*, %struct.entry** %pnext, align 8
  store %struct.entry* %3, %struct.entry** %plist.addr, align 8
  %4 = load %struct.entry*, %struct.entry** %pentry, align 8
  %5 = bitcast %struct.entry* %4 to i8*
  call void @free(i8* %5) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
