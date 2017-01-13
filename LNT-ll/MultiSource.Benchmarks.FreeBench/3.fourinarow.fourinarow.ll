; ModuleID = './MultiSource.Benchmarks.FreeBench/3.fourinarow.fourinarow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@DEPTH = global i32 3, align 4
@off = global i32 0, align 4
@C4VERT = common global i64 0, align 8
@C3VERT = common global i64 0, align 8
@C2VERT = common global i64 0, align 8
@C4HORIZ = common global i64 0, align 8
@C3HORIZ = common global i64 0, align 8
@C2HORIZ = common global i64 0, align 8
@C4UP_R = common global i64 0, align 8
@C3UP_R = common global i64 0, align 8
@C2UP_R = common global i64 0, align 8
@C4UP_L = common global i64 0, align 8
@C3UP_L = common global i64 0, align 8
@C2UP_L = common global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ERROR: Faulty column: %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ERROR: Unknown player.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"test.in\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ERROR: Could not open indata file\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Recursion depth: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Alpha-Beta pruning: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Using pruning method 1\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Using pruning method 2\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"The player is the winner.\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"The computer is the winner.\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"It's a tie.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @init_patterns() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* @C4VERT, align 8
  %or = or i64 %1, 1
  store i64 %or, i64* @C4VERT, align 8
  %2 = load i64, i64* @C4VERT, align 8
  %shl = shl i64 %2, 7
  store i64 %shl, i64* @C4VERT, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i64, i64* @C4VERT, align 8
  %or1 = or i64 %4, 1
  store i64 %or1, i64* @C4VERT, align 8
  %5 = load i64, i64* @C4VERT, align 8
  %shr = lshr i64 %5, 7
  store i64 %shr, i64* @C3VERT, align 8
  %6 = load i64, i64* @C3VERT, align 8
  %shr2 = lshr i64 %6, 7
  store i64 %shr2, i64* @C2VERT, align 8
  store i64 15, i64* @C4HORIZ, align 8
  %7 = load i64, i64* @C4HORIZ, align 8
  %shr3 = lshr i64 %7, 1
  store i64 %shr3, i64* @C3HORIZ, align 8
  %8 = load i64, i64* @C3HORIZ, align 8
  %shr4 = lshr i64 %8, 1
  store i64 %shr4, i64* @C2HORIZ, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.10, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %9, 3
  br i1 %cmp6, label %for.body.7, label %for.end.12

for.body.7:                                       ; preds = %for.cond.5
  %10 = load i64, i64* @C4UP_R, align 8
  %or8 = or i64 %10, 1
  store i64 %or8, i64* @C4UP_R, align 8
  %11 = load i64, i64* @C4UP_R, align 8
  %shl9 = shl i64 %11, 8
  store i64 %shl9, i64* @C4UP_R, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.7
  %12 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.5

for.end.12:                                       ; preds = %for.cond.5
  %13 = load i64, i64* @C4UP_R, align 8
  %or13 = or i64 %13, 1
  store i64 %or13, i64* @C4UP_R, align 8
  %14 = load i64, i64* @C4UP_R, align 8
  %shr14 = lshr i64 %14, 8
  store i64 %shr14, i64* @C3UP_R, align 8
  %15 = load i64, i64* @C3UP_R, align 8
  %shr15 = lshr i64 %15, 8
  store i64 %shr15, i64* @C2UP_R, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.21, %for.end.12
  %16 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %16, 3
  br i1 %cmp17, label %for.body.18, label %for.end.23

for.body.18:                                      ; preds = %for.cond.16
  %17 = load i64, i64* @C4UP_L, align 8
  %or19 = or i64 %17, 8
  store i64 %or19, i64* @C4UP_L, align 8
  %18 = load i64, i64* @C4UP_L, align 8
  %shl20 = shl i64 %18, 6
  store i64 %shl20, i64* @C4UP_L, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.18
  %19 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.16

for.end.23:                                       ; preds = %for.cond.16
  %20 = load i64, i64* @C4UP_L, align 8
  %or24 = or i64 %20, 8
  store i64 %or24, i64* @C4UP_L, align 8
  %21 = load i64, i64* @C4UP_L, align 8
  %shr25 = lshr i64 %21, 6
  store i64 %shr25, i64* @C3UP_L, align 8
  %22 = load i64, i64* @C3UP_L, align 8
  %shr26 = lshr i64 %22, 6
  store i64 %shr26, i64* @C2UP_L, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_board([7 x i8]* %b) #0 {
entry:
  %b.addr = alloca [7 x i8]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [7 x i8]* %b, [7 x i8]** %b.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx, i32 0, i64 %idxprom
  store i8 46, i8* %arrayidx5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %6 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.15, %for.end.8
  %7 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %7, 7
  br i1 %cmp10, label %for.body.11, label %for.end.17

for.body.11:                                      ; preds = %for.cond.9
  %8 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %9 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx13 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx13, i32 0, i64 6
  store i8 0, i8* %arrayidx14, align 1
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.11
  %10 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %10, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.9

for.end.17:                                       ; preds = %for.cond.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_board([7 x i8]* %b) #0 {
entry:
  %b.addr = alloca [7 x i8]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [7 x i8]* %b, [7 x i8]** %b.addr, align 8
  %call = call i32 @putchar(i32 32)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx, i32 0, i64 6
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @putchar(i32 10)
  store i32 5, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.23, %for.end
  %5 = load i32, i32* %j, align 4
  %cmp5 = icmp sge i32 %5, 0
  br i1 %cmp5, label %for.body.7, label %for.end.24

for.body.7:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %j, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %6)
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.19, %for.body.7
  %7 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %7, 7
  br i1 %cmp10, label %for.body.12, label %for.end.21

for.body.12:                                      ; preds = %for.cond.9
  %8 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %9 to i64
  %10 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx15 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx15, i32 0, i64 %idxprom13
  %11 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %11 to i32
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %conv17)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.12
  %12 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %12, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.9

for.end.21:                                       ; preds = %for.cond.9
  %call22 = call i32 @putchar(i32 10)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.21
  %13 = load i32, i32* %j, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.4

for.end.24:                                       ; preds = %for.cond.4
  %call25 = call i32 @putchar(i32 32)
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.31, %for.end.24
  %14 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %14, 7
  br i1 %cmp27, label %for.body.29, label %for.end.33

for.body.29:                                      ; preds = %for.cond.26
  %15 = load i32, i32* %i, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %15)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.29
  %16 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %16, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.26

for.end.33:                                       ; preds = %for.cond.26
  %call34 = call i32 @putchar(i32 10)
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

declare i32 @putchar(i32) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @place_piece(i32 %col, i32 %player, [7 x i8]* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %player.addr = alloca i32, align 4
  %b.addr = alloca [7 x i8]*, align 8
  store i32 %col, i32* %col.addr, align 4
  store i32 %player, i32* %player.addr, align 4
  store [7 x i8]* %b, [7 x i8]** %b.addr, align 8
  %0 = load i32, i32* %col.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %col.addr, align 4
  %cmp1 = icmp sgt i32 %1, 6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %col.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 %2)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %col.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx, i32 0, i64 6
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp sge i32 %conv, 6
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load i32, i32* %player.addr, align 4
  %cmp7 = icmp eq i32 %6, 1
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  %7 = load i32, i32* %col.addr, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx11 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx11, i32 0, i64 6
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %9 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %10 = load i32, i32* %col.addr, align 4
  %idxprom15 = sext i32 %10 to i64
  %11 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx16 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx16, i32 0, i64 %idxprom14
  store i8 111, i8* %arrayidx17, align 1
  br label %if.end.32

if.else:                                          ; preds = %if.end.6
  %12 = load i32, i32* %player.addr, align 4
  %cmp18 = icmp eq i32 %12, 2
  br i1 %cmp18, label %if.then.20, label %if.else.29

if.then.20:                                       ; preds = %if.else
  %13 = load i32, i32* %col.addr, align 4
  %idxprom21 = sext i32 %13 to i64
  %14 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx22 = getelementptr inbounds [7 x i8], [7 x i8]* %14, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx22, i32 0, i64 6
  %15 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %15 to i32
  %idxprom25 = sext i32 %conv24 to i64
  %16 = load i32, i32* %col.addr, align 4
  %idxprom26 = sext i32 %16 to i64
  %17 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx27 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx27, i32 0, i64 %idxprom25
  store i8 120, i8* %arrayidx28, align 1
  br label %if.end.31

if.else.29:                                       ; preds = %if.else
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.20
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.9
  %18 = load i32, i32* %col.addr, align 4
  %idxprom33 = sext i32 %18 to i64
  %19 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx34 = getelementptr inbounds [7 x i8], [7 x i8]* %19, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx34, i32 0, i64 6
  %20 = load i8, i8* %arrayidx35, align 1
  %inc = add i8 %20, 1
  store i8 %inc, i8* %arrayidx35, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.else.29, %if.then.5, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @board_full([7 x i8]* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca [7 x i8]*, align 8
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store [7 x i8]* %b, [7 x i8]** %b.addr, align 8
  store i32 0, i32* %temp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx, i32 0, i64 6
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, i32* %temp, align 4
  %add = add nsw i32 %4, %conv
  store i32 %add, i32* %temp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %temp, align 4
  %cmp2 = icmp eq i32 %6, 42
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @find_winner_p([7 x i8]* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca [7 x i8]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp_board = alloca i64, align 8
  %one = alloca i64, align 8
  %player = alloca i8, align 1
  store [7 x i8]* %b, [7 x i8]** %b.addr, align 8
  store i64 0, i64* %temp_board, align 8
  store i64 1, i64* %one, align 8
  %0 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %call = call i32 @board_full([7 x i8]* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8 111, i8* %player, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %if.end
  %1 = load i32, i32* %j, align 4
  %cmp = icmp ult i32 %1, 6
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp ult i32 %2, 7
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %4 to i64
  %5 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8, i8* %player, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.3
  %8 = load i64, i64* %temp_board, align 8
  %9 = load i64, i64* %one, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %mul = mul i32 %11, 7
  %add = add i32 %10, %mul
  %sh_prom = zext i32 %add to i64
  %shl = shl i64 %9, %sh_prom
  %or = or i64 %8, %shl
  store i64 %or, i64* %temp_board, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %13 = load i32, i32* %j, align 4
  %inc12 = add i32 %13, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.26, %for.end.13
  %14 = load i32, i32* %i, align 4
  %cmp15 = icmp ult i32 %14, 21
  br i1 %cmp15, label %for.body.17, label %for.end.28

for.body.17:                                      ; preds = %for.cond.14
  %15 = load i64, i64* %temp_board, align 8
  %16 = load i64, i64* @C4VERT, align 8
  %17 = load i32, i32* %i, align 4
  %sh_prom18 = zext i32 %17 to i64
  %shl19 = shl i64 %16, %sh_prom18
  %and = and i64 %15, %shl19
  %18 = load i64, i64* @C4VERT, align 8
  %19 = load i32, i32* %i, align 4
  %sh_prom20 = zext i32 %19 to i64
  %shl21 = shl i64 %18, %sh_prom20
  %cmp22 = icmp eq i64 %and, %shl21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.17
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %for.body.17
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %20 = load i32, i32* %i, align 4
  %inc27 = add i32 %20, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.14

for.end.28:                                       ; preds = %for.cond.14
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.53, %for.end.28
  %21 = load i32, i32* %i, align 4
  %cmp30 = icmp ult i32 %21, 6
  br i1 %cmp30, label %for.body.32, label %for.end.55

for.body.32:                                      ; preds = %for.cond.29
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.50, %for.body.32
  %22 = load i32, i32* %j, align 4
  %cmp34 = icmp ult i32 %22, 4
  br i1 %cmp34, label %for.body.36, label %for.end.52

for.body.36:                                      ; preds = %for.cond.33
  %23 = load i64, i64* %temp_board, align 8
  %24 = load i64, i64* @C4HORIZ, align 8
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %i, align 4
  %mul37 = mul i32 %26, 7
  %add38 = add i32 %25, %mul37
  %sh_prom39 = zext i32 %add38 to i64
  %shl40 = shl i64 %24, %sh_prom39
  %and41 = and i64 %23, %shl40
  %27 = load i64, i64* @C4HORIZ, align 8
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %i, align 4
  %mul42 = mul i32 %29, 7
  %add43 = add i32 %28, %mul42
  %sh_prom44 = zext i32 %add43 to i64
  %shl45 = shl i64 %27, %sh_prom44
  %cmp46 = icmp eq i64 %and41, %shl45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.36
  store i32 1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %for.body.36
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %30 = load i32, i32* %j, align 4
  %inc51 = add i32 %30, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.33

for.end.52:                                       ; preds = %for.cond.33
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %31 = load i32, i32* %i, align 4
  %inc54 = add i32 %31, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.29

for.end.55:                                       ; preds = %for.cond.29
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.80, %for.end.55
  %32 = load i32, i32* %i, align 4
  %cmp57 = icmp ult i32 %32, 3
  br i1 %cmp57, label %for.body.59, label %for.end.82

for.body.59:                                      ; preds = %for.cond.56
  store i32 0, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.77, %for.body.59
  %33 = load i32, i32* %j, align 4
  %cmp61 = icmp ult i32 %33, 4
  br i1 %cmp61, label %for.body.63, label %for.end.79

for.body.63:                                      ; preds = %for.cond.60
  %34 = load i64, i64* %temp_board, align 8
  %35 = load i64, i64* @C4UP_R, align 8
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %i, align 4
  %mul64 = mul i32 %37, 7
  %add65 = add i32 %36, %mul64
  %sh_prom66 = zext i32 %add65 to i64
  %shl67 = shl i64 %35, %sh_prom66
  %and68 = and i64 %34, %shl67
  %38 = load i64, i64* @C4UP_R, align 8
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %i, align 4
  %mul69 = mul i32 %40, 7
  %add70 = add i32 %39, %mul69
  %sh_prom71 = zext i32 %add70 to i64
  %shl72 = shl i64 %38, %sh_prom71
  %cmp73 = icmp eq i64 %and68, %shl72
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.body.63
  store i32 1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %for.body.63
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %41 = load i32, i32* %j, align 4
  %inc78 = add i32 %41, 1
  store i32 %inc78, i32* %j, align 4
  br label %for.cond.60

for.end.79:                                       ; preds = %for.cond.60
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end.79
  %42 = load i32, i32* %i, align 4
  %inc81 = add i32 %42, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.56

for.end.82:                                       ; preds = %for.cond.56
  store i32 0, i32* %i, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.107, %for.end.82
  %43 = load i32, i32* %i, align 4
  %cmp84 = icmp ult i32 %43, 3
  br i1 %cmp84, label %for.body.86, label %for.end.109

for.body.86:                                      ; preds = %for.cond.83
  store i32 0, i32* %j, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.104, %for.body.86
  %44 = load i32, i32* %j, align 4
  %cmp88 = icmp ult i32 %44, 4
  br i1 %cmp88, label %for.body.90, label %for.end.106

for.body.90:                                      ; preds = %for.cond.87
  %45 = load i64, i64* %temp_board, align 8
  %46 = load i64, i64* @C4UP_L, align 8
  %47 = load i32, i32* %j, align 4
  %48 = load i32, i32* %i, align 4
  %mul91 = mul i32 %48, 7
  %add92 = add i32 %47, %mul91
  %sh_prom93 = zext i32 %add92 to i64
  %shl94 = shl i64 %46, %sh_prom93
  %and95 = and i64 %45, %shl94
  %49 = load i64, i64* @C4UP_L, align 8
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %i, align 4
  %mul96 = mul i32 %51, 7
  %add97 = add i32 %50, %mul96
  %sh_prom98 = zext i32 %add97 to i64
  %shl99 = shl i64 %49, %sh_prom98
  %cmp100 = icmp eq i64 %and95, %shl99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.body.90
  store i32 1, i32* %retval
  br label %return

if.end.103:                                       ; preds = %for.body.90
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %52 = load i32, i32* %j, align 4
  %inc105 = add i32 %52, 1
  store i32 %inc105, i32* %j, align 4
  br label %for.cond.87

for.end.106:                                      ; preds = %for.cond.87
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end.106
  %53 = load i32, i32* %i, align 4
  %inc108 = add i32 %53, 1
  store i32 %inc108, i32* %i, align 4
  br label %for.cond.83

for.end.109:                                      ; preds = %for.cond.83
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.109, %if.then.102, %if.then.75, %if.then.48, %if.then.24, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define i32 @find_winner_c([7 x i8]* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca [7 x i8]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp_board = alloca i64, align 8
  %one = alloca i64, align 8
  %player = alloca i8, align 1
  store [7 x i8]* %b, [7 x i8]** %b.addr, align 8
  store i64 0, i64* %temp_board, align 8
  store i64 1, i64* %one, align 8
  %0 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %call = call i32 @board_full([7 x i8]* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8 120, i8* %player, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %if.end
  %1 = load i32, i32* %j, align 4
  %cmp = icmp ult i32 %1, 6
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp ult i32 %2, 7
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %4 to i64
  %5 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8, i8* %player, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.3
  %8 = load i64, i64* %temp_board, align 8
  %9 = load i64, i64* %one, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %mul = mul i32 %11, 7
  %add = add i32 %10, %mul
  %sh_prom = zext i32 %add to i64
  %shl = shl i64 %9, %sh_prom
  %or = or i64 %8, %shl
  store i64 %or, i64* %temp_board, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %13 = load i32, i32* %j, align 4
  %inc12 = add i32 %13, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.26, %for.end.13
  %14 = load i32, i32* %i, align 4
  %cmp15 = icmp ult i32 %14, 21
  br i1 %cmp15, label %for.body.17, label %for.end.28

for.body.17:                                      ; preds = %for.cond.14
  %15 = load i64, i64* %temp_board, align 8
  %16 = load i64, i64* @C4VERT, align 8
  %17 = load i32, i32* %i, align 4
  %sh_prom18 = zext i32 %17 to i64
  %shl19 = shl i64 %16, %sh_prom18
  %and = and i64 %15, %shl19
  %18 = load i64, i64* @C4VERT, align 8
  %19 = load i32, i32* %i, align 4
  %sh_prom20 = zext i32 %19 to i64
  %shl21 = shl i64 %18, %sh_prom20
  %cmp22 = icmp eq i64 %and, %shl21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body.17
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %for.body.17
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %20 = load i32, i32* %i, align 4
  %inc27 = add i32 %20, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.14

for.end.28:                                       ; preds = %for.cond.14
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.53, %for.end.28
  %21 = load i32, i32* %i, align 4
  %cmp30 = icmp ult i32 %21, 6
  br i1 %cmp30, label %for.body.32, label %for.end.55

for.body.32:                                      ; preds = %for.cond.29
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.50, %for.body.32
  %22 = load i32, i32* %j, align 4
  %cmp34 = icmp ult i32 %22, 4
  br i1 %cmp34, label %for.body.36, label %for.end.52

for.body.36:                                      ; preds = %for.cond.33
  %23 = load i64, i64* %temp_board, align 8
  %24 = load i64, i64* @C4HORIZ, align 8
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %i, align 4
  %mul37 = mul i32 %26, 7
  %add38 = add i32 %25, %mul37
  %sh_prom39 = zext i32 %add38 to i64
  %shl40 = shl i64 %24, %sh_prom39
  %and41 = and i64 %23, %shl40
  %27 = load i64, i64* @C4HORIZ, align 8
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %i, align 4
  %mul42 = mul i32 %29, 7
  %add43 = add i32 %28, %mul42
  %sh_prom44 = zext i32 %add43 to i64
  %shl45 = shl i64 %27, %sh_prom44
  %cmp46 = icmp eq i64 %and41, %shl45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.36
  store i32 1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %for.body.36
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %30 = load i32, i32* %j, align 4
  %inc51 = add i32 %30, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.33

for.end.52:                                       ; preds = %for.cond.33
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %31 = load i32, i32* %i, align 4
  %inc54 = add i32 %31, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.29

for.end.55:                                       ; preds = %for.cond.29
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.80, %for.end.55
  %32 = load i32, i32* %i, align 4
  %cmp57 = icmp ult i32 %32, 3
  br i1 %cmp57, label %for.body.59, label %for.end.82

for.body.59:                                      ; preds = %for.cond.56
  store i32 0, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.77, %for.body.59
  %33 = load i32, i32* %j, align 4
  %cmp61 = icmp ult i32 %33, 4
  br i1 %cmp61, label %for.body.63, label %for.end.79

for.body.63:                                      ; preds = %for.cond.60
  %34 = load i64, i64* %temp_board, align 8
  %35 = load i64, i64* @C4UP_R, align 8
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %i, align 4
  %mul64 = mul i32 %37, 7
  %add65 = add i32 %36, %mul64
  %sh_prom66 = zext i32 %add65 to i64
  %shl67 = shl i64 %35, %sh_prom66
  %and68 = and i64 %34, %shl67
  %38 = load i64, i64* @C4UP_R, align 8
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %i, align 4
  %mul69 = mul i32 %40, 7
  %add70 = add i32 %39, %mul69
  %sh_prom71 = zext i32 %add70 to i64
  %shl72 = shl i64 %38, %sh_prom71
  %cmp73 = icmp eq i64 %and68, %shl72
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.body.63
  store i32 1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %for.body.63
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %41 = load i32, i32* %j, align 4
  %inc78 = add i32 %41, 1
  store i32 %inc78, i32* %j, align 4
  br label %for.cond.60

for.end.79:                                       ; preds = %for.cond.60
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end.79
  %42 = load i32, i32* %i, align 4
  %inc81 = add i32 %42, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.56

for.end.82:                                       ; preds = %for.cond.56
  store i32 0, i32* %i, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.107, %for.end.82
  %43 = load i32, i32* %i, align 4
  %cmp84 = icmp ult i32 %43, 3
  br i1 %cmp84, label %for.body.86, label %for.end.109

for.body.86:                                      ; preds = %for.cond.83
  store i32 0, i32* %j, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.104, %for.body.86
  %44 = load i32, i32* %j, align 4
  %cmp88 = icmp ult i32 %44, 4
  br i1 %cmp88, label %for.body.90, label %for.end.106

for.body.90:                                      ; preds = %for.cond.87
  %45 = load i64, i64* %temp_board, align 8
  %46 = load i64, i64* @C4UP_L, align 8
  %47 = load i32, i32* %j, align 4
  %48 = load i32, i32* %i, align 4
  %mul91 = mul i32 %48, 7
  %add92 = add i32 %47, %mul91
  %sh_prom93 = zext i32 %add92 to i64
  %shl94 = shl i64 %46, %sh_prom93
  %and95 = and i64 %45, %shl94
  %49 = load i64, i64* @C4UP_L, align 8
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %i, align 4
  %mul96 = mul i32 %51, 7
  %add97 = add i32 %50, %mul96
  %sh_prom98 = zext i32 %add97 to i64
  %shl99 = shl i64 %49, %sh_prom98
  %cmp100 = icmp eq i64 %and95, %shl99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.body.90
  store i32 1, i32* %retval
  br label %return

if.end.103:                                       ; preds = %for.body.90
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %52 = load i32, i32* %j, align 4
  %inc105 = add i32 %52, 1
  store i32 %inc105, i32* %j, align 4
  br label %for.cond.87

for.end.106:                                      ; preds = %for.cond.87
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end.106
  %53 = load i32, i32* %i, align 4
  %inc108 = add i32 %53, 1
  store i32 %inc108, i32* %i, align 4
  br label %for.cond.83

for.end.109:                                      ; preds = %for.cond.83
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.109, %if.then.102, %if.then.75, %if.then.48, %if.then.24, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define i32 @value(i64 %b1, i64 %b2) #0 {
entry:
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %b = alloca i64, align 8
  %bo = alloca i64, align 8
  %mod = alloca float, align 4
  %value = alloca i32, align 4
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  store i32 0, i32* %value, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.345, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.347

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %2 = load i64, i64* %b1.addr, align 8
  store i64 %2, i64* %b, align 8
  %3 = load i64, i64* %b2.addr, align 8
  store i64 %3, i64* %bo, align 8
  %4 = load i32, i32* @off, align 4
  %conv = sitofp i32 %4 to float
  %div = fdiv float %conv, 1.000000e+01
  %add = fadd float -1.000000e+00, %div
  store float %add, float* %mod, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %5 = load i64, i64* %b2.addr, align 8
  store i64 %5, i64* %b, align 8
  %6 = load i64, i64* %b1.addr, align 8
  store i64 %6, i64* %bo, align 8
  %7 = load i32, i32* @off, align 4
  %conv2 = sitofp i32 %7 to float
  %div3 = fdiv float %conv2, 1.000000e+01
  %add4 = fadd float 1.000000e+00, %div3
  store float %add4, float* %mod, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %8, 21
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %9 = load i64, i64* %b, align 8
  %10 = load i64, i64* @C4VERT, align 8
  %11 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 %10, %sh_prom
  %and = and i64 %9, %shl
  %12 = load i64, i64* @C4VERT, align 8
  %13 = load i32, i32* %i, align 4
  %sh_prom9 = zext i32 %13 to i64
  %shl10 = shl i64 %12, %sh_prom9
  %cmp11 = icmp eq i64 %and, %shl10
  br i1 %cmp11, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %for.body.8
  %14 = load float, float* %mod, align 4
  %mul = fmul float 1.000000e+03, %14
  %15 = load i32, i32* %value, align 4
  %conv14 = sitofp i32 %15 to float
  %add15 = fadd float %conv14, %mul
  %conv16 = fptosi float %add15 to i32
  store i32 %conv16, i32* %value, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.46, %for.end
  %17 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %17, 6
  br i1 %cmp19, label %for.body.21, label %for.end.48

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %j, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.43, %for.body.21
  %18 = load i32, i32* %j, align 4
  %cmp23 = icmp slt i32 %18, 4
  br i1 %cmp23, label %for.body.25, label %for.end.45

for.body.25:                                      ; preds = %for.cond.22
  %19 = load i64, i64* %b, align 8
  %20 = load i64, i64* @C4HORIZ, align 8
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %i, align 4
  %mul26 = mul nsw i32 %22, 6
  %add27 = add nsw i32 %21, %mul26
  %sh_prom28 = zext i32 %add27 to i64
  %shl29 = shl i64 %20, %sh_prom28
  %and30 = and i64 %19, %shl29
  %23 = load i64, i64* @C4HORIZ, align 8
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %i, align 4
  %mul31 = mul nsw i32 %25, 6
  %add32 = add nsw i32 %24, %mul31
  %sh_prom33 = zext i32 %add32 to i64
  %shl34 = shl i64 %23, %sh_prom33
  %cmp35 = icmp eq i64 %and30, %shl34
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %for.body.25
  %26 = load float, float* %mod, align 4
  %mul38 = fmul float 1.000000e+03, %26
  %27 = load i32, i32* %value, align 4
  %conv39 = sitofp i32 %27 to float
  %add40 = fadd float %conv39, %mul38
  %conv41 = fptosi float %add40 to i32
  store i32 %conv41, i32* %value, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %for.body.25
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %28 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %28, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.22

for.end.45:                                       ; preds = %for.cond.22
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %29 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %29, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.18

for.end.48:                                       ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.77, %for.end.48
  %30 = load i32, i32* %i, align 4
  %cmp50 = icmp slt i32 %30, 3
  br i1 %cmp50, label %for.body.52, label %for.end.79

for.body.52:                                      ; preds = %for.cond.49
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.74, %for.body.52
  %31 = load i32, i32* %j, align 4
  %cmp54 = icmp slt i32 %31, 4
  br i1 %cmp54, label %for.body.56, label %for.end.76

for.body.56:                                      ; preds = %for.cond.53
  %32 = load i64, i64* %b, align 8
  %33 = load i64, i64* @C4UP_R, align 8
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %i, align 4
  %mul57 = mul nsw i32 %35, 6
  %add58 = add nsw i32 %34, %mul57
  %sh_prom59 = zext i32 %add58 to i64
  %shl60 = shl i64 %33, %sh_prom59
  %and61 = and i64 %32, %shl60
  %36 = load i64, i64* @C4UP_R, align 8
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %i, align 4
  %mul62 = mul nsw i32 %38, 6
  %add63 = add nsw i32 %37, %mul62
  %sh_prom64 = zext i32 %add63 to i64
  %shl65 = shl i64 %36, %sh_prom64
  %cmp66 = icmp eq i64 %and61, %shl65
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %for.body.56
  %39 = load float, float* %mod, align 4
  %mul69 = fmul float 1.000000e+03, %39
  %40 = load i32, i32* %value, align 4
  %conv70 = sitofp i32 %40 to float
  %add71 = fadd float %conv70, %mul69
  %conv72 = fptosi float %add71 to i32
  store i32 %conv72, i32* %value, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %for.body.56
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %41 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %41, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond.53

for.end.76:                                       ; preds = %for.cond.53
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %42 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %42, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.49

for.end.79:                                       ; preds = %for.cond.49
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.108, %for.end.79
  %43 = load i32, i32* %i, align 4
  %cmp81 = icmp slt i32 %43, 3
  br i1 %cmp81, label %for.body.83, label %for.end.110

for.body.83:                                      ; preds = %for.cond.80
  store i32 0, i32* %j, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.105, %for.body.83
  %44 = load i32, i32* %j, align 4
  %cmp85 = icmp slt i32 %44, 4
  br i1 %cmp85, label %for.body.87, label %for.end.107

for.body.87:                                      ; preds = %for.cond.84
  %45 = load i64, i64* %b, align 8
  %46 = load i64, i64* @C4UP_L, align 8
  %47 = load i32, i32* %j, align 4
  %48 = load i32, i32* %i, align 4
  %mul88 = mul nsw i32 %48, 6
  %add89 = add nsw i32 %47, %mul88
  %sh_prom90 = zext i32 %add89 to i64
  %shl91 = shl i64 %46, %sh_prom90
  %and92 = and i64 %45, %shl91
  %49 = load i64, i64* @C4UP_L, align 8
  %50 = load i32, i32* %j, align 4
  %51 = load i32, i32* %i, align 4
  %mul93 = mul nsw i32 %51, 6
  %add94 = add nsw i32 %50, %mul93
  %sh_prom95 = zext i32 %add94 to i64
  %shl96 = shl i64 %49, %sh_prom95
  %cmp97 = icmp eq i64 %and92, %shl96
  br i1 %cmp97, label %if.then.99, label %if.end.104

if.then.99:                                       ; preds = %for.body.87
  %52 = load float, float* %mod, align 4
  %mul100 = fmul float 1.000000e+03, %52
  %53 = load i32, i32* %value, align 4
  %conv101 = sitofp i32 %53 to float
  %add102 = fadd float %conv101, %mul100
  %conv103 = fptosi float %add102 to i32
  store i32 %conv103, i32* %value, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.99, %for.body.87
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %54 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %54, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.84

for.end.107:                                      ; preds = %for.cond.84
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %55 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %55, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond.80

for.end.110:                                      ; preds = %for.cond.80
  store i32 0, i32* %i, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.131, %for.end.110
  %56 = load i32, i32* %i, align 4
  %cmp112 = icmp slt i32 %56, 21
  br i1 %cmp112, label %for.body.114, label %for.end.133

for.body.114:                                     ; preds = %for.cond.111
  %57 = load i64, i64* %b, align 8
  %58 = load i64, i64* @C3VERT, align 8
  %59 = load i32, i32* %i, align 4
  %sh_prom115 = zext i32 %59 to i64
  %shl116 = shl i64 %58, %sh_prom115
  %and117 = and i64 %57, %shl116
  %60 = load i64, i64* @C3VERT, align 8
  %61 = load i32, i32* %i, align 4
  %sh_prom118 = zext i32 %61 to i64
  %shl119 = shl i64 %60, %sh_prom118
  %cmp120 = icmp eq i64 %and117, %shl119
  br i1 %cmp120, label %land.lhs.true, label %if.end.130

land.lhs.true:                                    ; preds = %for.body.114
  %62 = load i64, i64* %bo, align 8
  %63 = load i64, i64* @C4VERT, align 8
  %64 = load i32, i32* %i, align 4
  %sh_prom122 = zext i32 %64 to i64
  %shl123 = shl i64 %63, %sh_prom122
  %and124 = and i64 %62, %shl123
  %tobool = icmp ne i64 %and124, 0
  br i1 %tobool, label %if.end.130, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true
  %65 = load float, float* %mod, align 4
  %mul126 = fmul float 2.000000e+01, %65
  %66 = load i32, i32* %value, align 4
  %conv127 = sitofp i32 %66 to float
  %add128 = fadd float %conv127, %mul126
  %conv129 = fptosi float %add128 to i32
  store i32 %conv129, i32* %value, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.125, %land.lhs.true, %for.body.114
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %67 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %67, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond.111

for.end.133:                                      ; preds = %for.cond.111
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.162, %for.end.133
  %68 = load i32, i32* %i, align 4
  %cmp135 = icmp slt i32 %68, 6
  br i1 %cmp135, label %for.body.137, label %for.end.164

for.body.137:                                     ; preds = %for.cond.134
  store i32 0, i32* %j, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.159, %for.body.137
  %69 = load i32, i32* %j, align 4
  %cmp139 = icmp slt i32 %69, 5
  br i1 %cmp139, label %for.body.141, label %for.end.161

for.body.141:                                     ; preds = %for.cond.138
  %70 = load i64, i64* %b, align 8
  %71 = load i64, i64* @C3HORIZ, align 8
  %72 = load i32, i32* %j, align 4
  %73 = load i32, i32* %i, align 4
  %mul142 = mul nsw i32 %73, 6
  %add143 = add nsw i32 %72, %mul142
  %sh_prom144 = zext i32 %add143 to i64
  %shl145 = shl i64 %71, %sh_prom144
  %and146 = and i64 %70, %shl145
  %74 = load i64, i64* @C3HORIZ, align 8
  %75 = load i32, i32* %j, align 4
  %76 = load i32, i32* %i, align 4
  %mul147 = mul nsw i32 %76, 6
  %add148 = add nsw i32 %75, %mul147
  %sh_prom149 = zext i32 %add148 to i64
  %shl150 = shl i64 %74, %sh_prom149
  %cmp151 = icmp eq i64 %and146, %shl150
  br i1 %cmp151, label %if.then.153, label %if.end.158

if.then.153:                                      ; preds = %for.body.141
  %77 = load float, float* %mod, align 4
  %mul154 = fmul float 2.000000e+01, %77
  %78 = load i32, i32* %value, align 4
  %conv155 = sitofp i32 %78 to float
  %add156 = fadd float %conv155, %mul154
  %conv157 = fptosi float %add156 to i32
  store i32 %conv157, i32* %value, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.153, %for.body.141
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.158
  %79 = load i32, i32* %j, align 4
  %inc160 = add nsw i32 %79, 1
  store i32 %inc160, i32* %j, align 4
  br label %for.cond.138

for.end.161:                                      ; preds = %for.cond.138
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.end.161
  %80 = load i32, i32* %i, align 4
  %inc163 = add nsw i32 %80, 1
  store i32 %inc163, i32* %i, align 4
  br label %for.cond.134

for.end.164:                                      ; preds = %for.cond.134
  store i32 0, i32* %i, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.193, %for.end.164
  %81 = load i32, i32* %i, align 4
  %cmp166 = icmp slt i32 %81, 3
  br i1 %cmp166, label %for.body.168, label %for.end.195

for.body.168:                                     ; preds = %for.cond.165
  store i32 0, i32* %j, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.190, %for.body.168
  %82 = load i32, i32* %j, align 4
  %cmp170 = icmp slt i32 %82, 4
  br i1 %cmp170, label %for.body.172, label %for.end.192

for.body.172:                                     ; preds = %for.cond.169
  %83 = load i64, i64* %b, align 8
  %84 = load i64, i64* @C3UP_R, align 8
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %i, align 4
  %mul173 = mul nsw i32 %86, 6
  %add174 = add nsw i32 %85, %mul173
  %sh_prom175 = zext i32 %add174 to i64
  %shl176 = shl i64 %84, %sh_prom175
  %and177 = and i64 %83, %shl176
  %87 = load i64, i64* @C3UP_R, align 8
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %i, align 4
  %mul178 = mul nsw i32 %89, 6
  %add179 = add nsw i32 %88, %mul178
  %sh_prom180 = zext i32 %add179 to i64
  %shl181 = shl i64 %87, %sh_prom180
  %cmp182 = icmp eq i64 %and177, %shl181
  br i1 %cmp182, label %if.then.184, label %if.end.189

if.then.184:                                      ; preds = %for.body.172
  %90 = load float, float* %mod, align 4
  %mul185 = fmul float 2.000000e+01, %90
  %91 = load i32, i32* %value, align 4
  %conv186 = sitofp i32 %91 to float
  %add187 = fadd float %conv186, %mul185
  %conv188 = fptosi float %add187 to i32
  store i32 %conv188, i32* %value, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.184, %for.body.172
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %92 = load i32, i32* %j, align 4
  %inc191 = add nsw i32 %92, 1
  store i32 %inc191, i32* %j, align 4
  br label %for.cond.169

for.end.192:                                      ; preds = %for.cond.169
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %93 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %93, 1
  store i32 %inc194, i32* %i, align 4
  br label %for.cond.165

for.end.195:                                      ; preds = %for.cond.165
  store i32 0, i32* %i, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.224, %for.end.195
  %94 = load i32, i32* %i, align 4
  %cmp197 = icmp slt i32 %94, 3
  br i1 %cmp197, label %for.body.199, label %for.end.226

for.body.199:                                     ; preds = %for.cond.196
  store i32 0, i32* %j, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.221, %for.body.199
  %95 = load i32, i32* %j, align 4
  %cmp201 = icmp slt i32 %95, 4
  br i1 %cmp201, label %for.body.203, label %for.end.223

for.body.203:                                     ; preds = %for.cond.200
  %96 = load i64, i64* %b, align 8
  %97 = load i64, i64* @C3UP_L, align 8
  %98 = load i32, i32* %j, align 4
  %99 = load i32, i32* %i, align 4
  %mul204 = mul nsw i32 %99, 6
  %add205 = add nsw i32 %98, %mul204
  %sh_prom206 = zext i32 %add205 to i64
  %shl207 = shl i64 %97, %sh_prom206
  %and208 = and i64 %96, %shl207
  %100 = load i64, i64* @C3UP_L, align 8
  %101 = load i32, i32* %j, align 4
  %102 = load i32, i32* %i, align 4
  %mul209 = mul nsw i32 %102, 6
  %add210 = add nsw i32 %101, %mul209
  %sh_prom211 = zext i32 %add210 to i64
  %shl212 = shl i64 %100, %sh_prom211
  %cmp213 = icmp eq i64 %and208, %shl212
  br i1 %cmp213, label %if.then.215, label %if.end.220

if.then.215:                                      ; preds = %for.body.203
  %103 = load float, float* %mod, align 4
  %mul216 = fmul float 2.000000e+01, %103
  %104 = load i32, i32* %value, align 4
  %conv217 = sitofp i32 %104 to float
  %add218 = fadd float %conv217, %mul216
  %conv219 = fptosi float %add218 to i32
  store i32 %conv219, i32* %value, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.215, %for.body.203
  br label %for.inc.221

for.inc.221:                                      ; preds = %if.end.220
  %105 = load i32, i32* %j, align 4
  %inc222 = add nsw i32 %105, 1
  store i32 %inc222, i32* %j, align 4
  br label %for.cond.200

for.end.223:                                      ; preds = %for.cond.200
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.end.223
  %106 = load i32, i32* %i, align 4
  %inc225 = add nsw i32 %106, 1
  store i32 %inc225, i32* %i, align 4
  br label %for.cond.196

for.end.226:                                      ; preds = %for.cond.196
  store i32 0, i32* %i, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.249, %for.end.226
  %107 = load i32, i32* %i, align 4
  %cmp228 = icmp slt i32 %107, 21
  br i1 %cmp228, label %for.body.230, label %for.end.251

for.body.230:                                     ; preds = %for.cond.227
  %108 = load i64, i64* %b, align 8
  %109 = load i64, i64* @C2VERT, align 8
  %110 = load i32, i32* %i, align 4
  %sh_prom231 = zext i32 %110 to i64
  %shl232 = shl i64 %109, %sh_prom231
  %and233 = and i64 %108, %shl232
  %111 = load i64, i64* @C2VERT, align 8
  %112 = load i32, i32* %i, align 4
  %sh_prom234 = zext i32 %112 to i64
  %shl235 = shl i64 %111, %sh_prom234
  %cmp236 = icmp eq i64 %and233, %shl235
  br i1 %cmp236, label %land.lhs.true.238, label %if.end.248

land.lhs.true.238:                                ; preds = %for.body.230
  %113 = load i64, i64* %bo, align 8
  %114 = load i64, i64* @C4VERT, align 8
  %115 = load i32, i32* %i, align 4
  %sh_prom239 = zext i32 %115 to i64
  %shl240 = shl i64 %114, %sh_prom239
  %and241 = and i64 %113, %shl240
  %tobool242 = icmp ne i64 %and241, 0
  br i1 %tobool242, label %if.end.248, label %if.then.243

if.then.243:                                      ; preds = %land.lhs.true.238
  %116 = load float, float* %mod, align 4
  %mul244 = fmul float 5.000000e+00, %116
  %117 = load i32, i32* %value, align 4
  %conv245 = sitofp i32 %117 to float
  %add246 = fadd float %conv245, %mul244
  %conv247 = fptosi float %add246 to i32
  store i32 %conv247, i32* %value, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.243, %land.lhs.true.238, %for.body.230
  br label %for.inc.249

for.inc.249:                                      ; preds = %if.end.248
  %118 = load i32, i32* %i, align 4
  %inc250 = add nsw i32 %118, 1
  store i32 %inc250, i32* %i, align 4
  br label %for.cond.227

for.end.251:                                      ; preds = %for.cond.227
  store i32 0, i32* %i, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.280, %for.end.251
  %119 = load i32, i32* %i, align 4
  %cmp253 = icmp slt i32 %119, 6
  br i1 %cmp253, label %for.body.255, label %for.end.282

for.body.255:                                     ; preds = %for.cond.252
  store i32 0, i32* %j, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.277, %for.body.255
  %120 = load i32, i32* %j, align 4
  %cmp257 = icmp slt i32 %120, 6
  br i1 %cmp257, label %for.body.259, label %for.end.279

for.body.259:                                     ; preds = %for.cond.256
  %121 = load i64, i64* %b, align 8
  %122 = load i64, i64* @C2HORIZ, align 8
  %123 = load i32, i32* %j, align 4
  %124 = load i32, i32* %i, align 4
  %mul260 = mul nsw i32 %124, 6
  %add261 = add nsw i32 %123, %mul260
  %sh_prom262 = zext i32 %add261 to i64
  %shl263 = shl i64 %122, %sh_prom262
  %and264 = and i64 %121, %shl263
  %125 = load i64, i64* @C2HORIZ, align 8
  %126 = load i32, i32* %j, align 4
  %127 = load i32, i32* %i, align 4
  %mul265 = mul nsw i32 %127, 6
  %add266 = add nsw i32 %126, %mul265
  %sh_prom267 = zext i32 %add266 to i64
  %shl268 = shl i64 %125, %sh_prom267
  %cmp269 = icmp eq i64 %and264, %shl268
  br i1 %cmp269, label %if.then.271, label %if.end.276

if.then.271:                                      ; preds = %for.body.259
  %128 = load float, float* %mod, align 4
  %mul272 = fmul float 5.000000e+00, %128
  %129 = load i32, i32* %value, align 4
  %conv273 = sitofp i32 %129 to float
  %add274 = fadd float %conv273, %mul272
  %conv275 = fptosi float %add274 to i32
  store i32 %conv275, i32* %value, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.271, %for.body.259
  br label %for.inc.277

for.inc.277:                                      ; preds = %if.end.276
  %130 = load i32, i32* %j, align 4
  %inc278 = add nsw i32 %130, 1
  store i32 %inc278, i32* %j, align 4
  br label %for.cond.256

for.end.279:                                      ; preds = %for.cond.256
  br label %for.inc.280

for.inc.280:                                      ; preds = %for.end.279
  %131 = load i32, i32* %i, align 4
  %inc281 = add nsw i32 %131, 1
  store i32 %inc281, i32* %i, align 4
  br label %for.cond.252

for.end.282:                                      ; preds = %for.cond.252
  store i32 0, i32* %i, align 4
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.311, %for.end.282
  %132 = load i32, i32* %i, align 4
  %cmp284 = icmp slt i32 %132, 3
  br i1 %cmp284, label %for.body.286, label %for.end.313

for.body.286:                                     ; preds = %for.cond.283
  store i32 0, i32* %j, align 4
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc.308, %for.body.286
  %133 = load i32, i32* %j, align 4
  %cmp288 = icmp slt i32 %133, 4
  br i1 %cmp288, label %for.body.290, label %for.end.310

for.body.290:                                     ; preds = %for.cond.287
  %134 = load i64, i64* %b, align 8
  %135 = load i64, i64* @C2UP_R, align 8
  %136 = load i32, i32* %j, align 4
  %137 = load i32, i32* %i, align 4
  %mul291 = mul nsw i32 %137, 6
  %add292 = add nsw i32 %136, %mul291
  %sh_prom293 = zext i32 %add292 to i64
  %shl294 = shl i64 %135, %sh_prom293
  %and295 = and i64 %134, %shl294
  %138 = load i64, i64* @C2UP_R, align 8
  %139 = load i32, i32* %j, align 4
  %140 = load i32, i32* %i, align 4
  %mul296 = mul nsw i32 %140, 6
  %add297 = add nsw i32 %139, %mul296
  %sh_prom298 = zext i32 %add297 to i64
  %shl299 = shl i64 %138, %sh_prom298
  %cmp300 = icmp eq i64 %and295, %shl299
  br i1 %cmp300, label %if.then.302, label %if.end.307

if.then.302:                                      ; preds = %for.body.290
  %141 = load float, float* %mod, align 4
  %mul303 = fmul float 5.000000e+00, %141
  %142 = load i32, i32* %value, align 4
  %conv304 = sitofp i32 %142 to float
  %add305 = fadd float %conv304, %mul303
  %conv306 = fptosi float %add305 to i32
  store i32 %conv306, i32* %value, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.302, %for.body.290
  br label %for.inc.308

for.inc.308:                                      ; preds = %if.end.307
  %143 = load i32, i32* %j, align 4
  %inc309 = add nsw i32 %143, 1
  store i32 %inc309, i32* %j, align 4
  br label %for.cond.287

for.end.310:                                      ; preds = %for.cond.287
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.end.310
  %144 = load i32, i32* %i, align 4
  %inc312 = add nsw i32 %144, 1
  store i32 %inc312, i32* %i, align 4
  br label %for.cond.283

for.end.313:                                      ; preds = %for.cond.283
  store i32 0, i32* %i, align 4
  br label %for.cond.314

for.cond.314:                                     ; preds = %for.inc.342, %for.end.313
  %145 = load i32, i32* %i, align 4
  %cmp315 = icmp slt i32 %145, 3
  br i1 %cmp315, label %for.body.317, label %for.end.344

for.body.317:                                     ; preds = %for.cond.314
  store i32 0, i32* %j, align 4
  br label %for.cond.318

for.cond.318:                                     ; preds = %for.inc.339, %for.body.317
  %146 = load i32, i32* %j, align 4
  %cmp319 = icmp slt i32 %146, 4
  br i1 %cmp319, label %for.body.321, label %for.end.341

for.body.321:                                     ; preds = %for.cond.318
  %147 = load i64, i64* %b, align 8
  %148 = load i64, i64* @C2UP_L, align 8
  %149 = load i32, i32* %j, align 4
  %150 = load i32, i32* %i, align 4
  %mul322 = mul nsw i32 %150, 6
  %add323 = add nsw i32 %149, %mul322
  %sh_prom324 = zext i32 %add323 to i64
  %shl325 = shl i64 %148, %sh_prom324
  %and326 = and i64 %147, %shl325
  %151 = load i64, i64* @C2UP_L, align 8
  %152 = load i32, i32* %j, align 4
  %153 = load i32, i32* %i, align 4
  %mul327 = mul nsw i32 %153, 6
  %add328 = add nsw i32 %152, %mul327
  %sh_prom329 = zext i32 %add328 to i64
  %shl330 = shl i64 %151, %sh_prom329
  %cmp331 = icmp eq i64 %and326, %shl330
  br i1 %cmp331, label %if.then.333, label %if.end.338

if.then.333:                                      ; preds = %for.body.321
  %154 = load float, float* %mod, align 4
  %mul334 = fmul float 5.000000e+00, %154
  %155 = load i32, i32* %value, align 4
  %conv335 = sitofp i32 %155 to float
  %add336 = fadd float %conv335, %mul334
  %conv337 = fptosi float %add336 to i32
  store i32 %conv337, i32* %value, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.333, %for.body.321
  br label %for.inc.339

for.inc.339:                                      ; preds = %if.end.338
  %156 = load i32, i32* %j, align 4
  %inc340 = add nsw i32 %156, 1
  store i32 %inc340, i32* %j, align 4
  br label %for.cond.318

for.end.341:                                      ; preds = %for.cond.318
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.end.341
  %157 = load i32, i32* %i, align 4
  %inc343 = add nsw i32 %157, 1
  store i32 %inc343, i32* %i, align 4
  br label %for.cond.314

for.end.344:                                      ; preds = %for.cond.314
  br label %for.inc.345

for.inc.345:                                      ; preds = %for.end.344
  %158 = load i32, i32* %k, align 4
  %inc346 = add nsw i32 %158, 1
  store i32 %inc346, i32* %k, align 4
  br label %for.cond

for.end.347:                                      ; preds = %for.cond
  %159 = load i32, i32* %value, align 4
  ret i32 %159
}

; Function Attrs: nounwind uwtable
define i32 @think([7 x i8]* %b, i32 %who, i32 %ab) #0 {
entry:
  %b.addr = alloca [7 x i8]*, align 8
  %who.addr = alloca i32, align 4
  %ab.addr = alloca i32, align 4
  %b1 = alloca i64, align 8
  %b2 = alloca i64, align 8
  %one = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %player = alloca i8, align 1
  %col = alloca i32, align 4
  store [7 x i8]* %b, [7 x i8]** %b.addr, align 8
  store i32 %who, i32* %who.addr, align 4
  store i32 %ab, i32* %ab.addr, align 4
  store i64 0, i64* %b1, align 8
  store i64 0, i64* %b2, align 8
  store i64 1, i64* %one, align 8
  store i8 111, i8* %player, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 7
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %5 to i32
  %6 = load i8, i8* %player, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %7 = load i64, i64* %b1, align 8
  %8 = load i64, i64* %one, align 8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %10, 7
  %add = add nsw i32 %9, %mul
  %sh_prom = zext i32 %add to i64
  %shl = shl i64 %8, %sh_prom
  %or = or i64 %7, %shl
  store i64 %or, i64* %b1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %12 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, i32* %j, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  store i8 120, i8* %player, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.38, %for.end.11
  %13 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %13, 6
  br i1 %cmp13, label %for.body.15, label %for.end.40

for.body.15:                                      ; preds = %for.cond.12
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.35, %for.body.15
  %14 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %14, 7
  br i1 %cmp17, label %for.body.19, label %for.end.37

for.body.19:                                      ; preds = %for.cond.16
  %15 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %16 to i64
  %17 = load [7 x i8]*, [7 x i8]** %b.addr, align 8
  %arrayidx22 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [7 x i8], [7 x i8]* %arrayidx22, i32 0, i64 %idxprom20
  %18 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %18 to i32
  %19 = load i8, i8* %player, align 1
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp eq i32 %conv24, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %for.body.19
  %20 = load i64, i64* %b2, align 8
  %21 = load i64, i64* %one, align 8
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %mul29 = mul nsw i32 %23, 7
  %add30 = add nsw i32 %22, %mul29
  %sh_prom31 = zext i32 %add30 to i64
  %shl32 = shl i64 %21, %sh_prom31
  %or33 = or i64 %20, %shl32
  store i64 %or33, i64* %b2, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %for.body.19
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %24 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %24, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.16

for.end.37:                                       ; preds = %for.cond.16
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %25 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %25, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond.12

for.end.40:                                       ; preds = %for.cond.12
  %26 = load i32, i32* %ab.addr, align 4
  %cmp41 = icmp eq i32 %26, 1
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %for.end.40
  %27 = load i32, i32* %who.addr, align 4
  %cmp44 = icmp eq i32 %27, 2
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.43
  %28 = load i64, i64* %b1, align 8
  %29 = load i64, i64* %b2, align 8
  %call = call i32 @minimax_comp_ab(i32 1, i64 %28, i64 %29, i32* %col, i32 -100000, i32 100000)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.43
  %30 = load i32, i32* %who.addr, align 4
  %cmp48 = icmp eq i32 %30, 1
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %31 = load i64, i64* %b1, align 8
  %32 = load i64, i64* %b2, align 8
  %call51 = call i32 @minimax_player_ab(i32 1, i64 %31, i64 %32, i32* %col, i32 -100000, i32 100000)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  br label %if.end.78

if.else:                                          ; preds = %for.end.40
  %33 = load i32, i32* %ab.addr, align 4
  %cmp53 = icmp eq i32 %33, 2
  br i1 %cmp53, label %if.then.55, label %if.else.66

if.then.55:                                       ; preds = %if.else
  %34 = load i32, i32* %who.addr, align 4
  %cmp56 = icmp eq i32 %34, 2
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.55
  %35 = load i64, i64* %b1, align 8
  %36 = load i64, i64* %b2, align 8
  %call59 = call i32 @minimax_comp_ab2(i32 1, i64 %35, i64 %36, i32* %col, i32 100000)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.then.55
  %37 = load i32, i32* %who.addr, align 4
  %cmp61 = icmp eq i32 %37, 1
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.60
  %38 = load i64, i64* %b1, align 8
  %39 = load i64, i64* %b2, align 8
  %call64 = call i32 @minimax_player_ab2(i32 1, i64 %38, i64 %39, i32* %col, i32 -100000)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.60
  br label %if.end.77

if.else.66:                                       ; preds = %if.else
  %40 = load i32, i32* %who.addr, align 4
  %cmp67 = icmp eq i32 %40, 2
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.else.66
  %41 = load i64, i64* %b1, align 8
  %42 = load i64, i64* %b2, align 8
  %call70 = call i32 @minimax_comp(i32 1, i64 %41, i64 %42, i32* %col)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.else.66
  %43 = load i32, i32* %who.addr, align 4
  %cmp72 = icmp eq i32 %43, 1
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.71
  %44 = load i64, i64* %b1, align 8
  %45 = load i64, i64* %b2, align 8
  %call75 = call i32 @minimax_player(i32 1, i64 %44, i64 %45, i32* %col)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.71
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.65
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.52
  %46 = load i32, i32* %col, align 4
  %call79 = call i32 @bit_place_piece(i32 %46, i32 2, i64* %b1, i64* %b2)
  %47 = load i32, i32* %col, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define i32 @minimax_comp_ab(i32 %depth, i64 %b1, i64 %b2, i32* %col, i32 %alpha, i32 %beta) #0 {
entry:
  %retval = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %col.addr = alloca i32*, align 8
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %max_col = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp_b = alloca i64, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  %0 = load i32, i32* %alpha.addr, align 4
  store i32 %0, i32* %max, align 4
  store i32 0, i32* %max_col, align 4
  %1 = load i32, i32* %depth.addr, align 4
  %2 = load i32, i32* @DEPTH, align 4
  %cmp = icmp sge i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %b1.addr, align 8
  %4 = load i64, i64* %b2.addr, align 8
  %call = call i32 @value(i64 %3, i64 %4)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 7
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %max, align 4
  %7 = load i32, i32* %beta.addr, align 4
  %cmp3 = icmp slt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load i64, i64* %b2.addr, align 8
  store i64 %9, i64* %tmp_b, align 8
  %10 = load i32, i32* %i, align 4
  %call4 = call i32 @bit_place_piece(i32 %10, i32 2, i64* %b1.addr, i64* %tmp_b)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %for.inc

if.end.6:                                         ; preds = %for.body
  %11 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i64, i64* %b1.addr, align 8
  %13 = load i64, i64* %tmp_b, align 8
  %14 = load i32*, i32** %col.addr, align 8
  %15 = load i32, i32* %max, align 4
  %16 = load i32, i32* %beta.addr, align 4
  %call7 = call i32 @minimax_player_ab(i32 %add, i64 %12, i64 %13, i32* %14, i32 %15, i32 %16)
  store i32 %call7, i32* %tmp, align 4
  %17 = load i32, i32* %tmp, align 4
  %18 = load i32, i32* %max, align 4
  %cmp8 = icmp sgt i32 %17, %18
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %19 = load i32, i32* %tmp, align 4
  store i32 %19, i32* %max, align 4
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %max_col, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.10, %if.then.5
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %max_col, align 4
  %23 = load i32*, i32** %col.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %max, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @minimax_player_ab(i32 %depth, i64 %b1, i64 %b2, i32* %col, i32 %alpha, i32 %beta) #0 {
entry:
  %retval = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %col.addr = alloca i32*, align 8
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %min_col = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp_b = alloca i64, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  %0 = load i32, i32* %beta.addr, align 4
  store i32 %0, i32* %min, align 4
  store i32 0, i32* %min_col, align 4
  %1 = load i32, i32* %depth.addr, align 4
  %2 = load i32, i32* @DEPTH, align 4
  %cmp = icmp sge i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %b1.addr, align 8
  %4 = load i64, i64* %b2.addr, align 8
  %call = call i32 @value(i64 %3, i64 %4)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 7
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %min, align 4
  %7 = load i32, i32* %alpha.addr, align 4
  %cmp3 = icmp sgt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load i64, i64* %b1.addr, align 8
  store i64 %9, i64* %tmp_b, align 8
  %10 = load i32, i32* %i, align 4
  %call4 = call i32 @bit_place_piece(i32 %10, i32 1, i64* %tmp_b, i64* %b2.addr)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %for.inc

if.end.6:                                         ; preds = %for.body
  %11 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i64, i64* %tmp_b, align 8
  %13 = load i64, i64* %b2.addr, align 8
  %14 = load i32*, i32** %col.addr, align 8
  %15 = load i32, i32* %alpha.addr, align 4
  %16 = load i32, i32* %min, align 4
  %call7 = call i32 @minimax_comp_ab(i32 %add, i64 %12, i64 %13, i32* %14, i32 %15, i32 %16)
  store i32 %call7, i32* %tmp, align 4
  %17 = load i32, i32* %tmp, align 4
  %18 = load i32, i32* %min, align 4
  %cmp8 = icmp sle i32 %17, %18
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %19 = load i32, i32* %tmp, align 4
  store i32 %19, i32* %min, align 4
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %min_col, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.10, %if.then.5
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %min_col, align 4
  %23 = load i32*, i32** %col.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %min, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @minimax_comp_ab2(i32 %depth, i64 %b1, i64 %b2, i32* %col, i32 %beta) #0 {
entry:
  %retval = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %col.addr = alloca i32*, align 8
  %beta.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %max_col = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp_b = alloca i64, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store i32 %beta, i32* %beta.addr, align 4
  store i32 -100000, i32* %max, align 4
  store i32 0, i32* %max_col, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %1 = load i32, i32* @DEPTH, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %b1.addr, align 8
  %3 = load i64, i64* %b2.addr, align 8
  %call = call i32 @value(i64 %2, i64 %3)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %b2.addr, align 8
  store i64 %5, i64* %tmp_b, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call i32 @bit_place_piece(i32 %6, i32 2, i64* %b1.addr, i64* %tmp_b)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  br label %for.inc

if.end.5:                                         ; preds = %for.body
  %7 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %7, 1
  %8 = load i64, i64* %b1.addr, align 8
  %9 = load i64, i64* %tmp_b, align 8
  %10 = load i32*, i32** %col.addr, align 8
  %11 = load i32, i32* %max, align 4
  %call6 = call i32 @minimax_player_ab2(i32 %add, i64 %8, i64 %9, i32* %10, i32 %11)
  store i32 %call6, i32* %tmp, align 4
  %12 = load i32, i32* %tmp, align 4
  %13 = load i32, i32* %max, align 4
  %cmp7 = icmp sgt i32 %12, %13
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %14 = load i32, i32* %tmp, align 4
  store i32 %14, i32* %max, align 4
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %max_col, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %16 = load i32, i32* %max, align 4
  %17 = load i32, i32* %beta.addr, align 4
  %cmp10 = icmp sgt i32 %16, %17
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %18 = load i32, i32* %max, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then.4
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %max_col, align 4
  %21 = load i32*, i32** %col.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %max, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @minimax_player_ab2(i32 %depth, i64 %b1, i64 %b2, i32* %col, i32 %alpha) #0 {
entry:
  %retval = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %col.addr = alloca i32*, align 8
  %alpha.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %min_col = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp_b = alloca i64, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 100000, i32* %min, align 4
  store i32 0, i32* %min_col, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %1 = load i32, i32* @DEPTH, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %b1.addr, align 8
  %3 = load i64, i64* %b2.addr, align 8
  %call = call i32 @value(i64 %2, i64 %3)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %b1.addr, align 8
  store i64 %5, i64* %tmp_b, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call i32 @bit_place_piece(i32 %6, i32 1, i64* %tmp_b, i64* %b2.addr)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  br label %for.inc

if.end.5:                                         ; preds = %for.body
  %7 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %7, 1
  %8 = load i64, i64* %tmp_b, align 8
  %9 = load i64, i64* %b2.addr, align 8
  %10 = load i32*, i32** %col.addr, align 8
  %11 = load i32, i32* %min, align 4
  %call6 = call i32 @minimax_comp_ab2(i32 %add, i64 %8, i64 %9, i32* %10, i32 %11)
  store i32 %call6, i32* %tmp, align 4
  %12 = load i32, i32* %tmp, align 4
  %13 = load i32, i32* %min, align 4
  %cmp7 = icmp sle i32 %12, %13
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %14 = load i32, i32* %tmp, align 4
  store i32 %14, i32* %min, align 4
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %min_col, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %16 = load i32, i32* %min, align 4
  %17 = load i32, i32* %alpha.addr, align 4
  %cmp10 = icmp slt i32 %16, %17
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %18 = load i32, i32* %min, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then.4
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %min_col, align 4
  %21 = load i32*, i32** %col.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %min, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @minimax_comp(i32 %depth, i64 %b1, i64 %b2, i32* %col) #0 {
entry:
  %retval = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %col.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %max_col = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp_b = alloca i64, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store i32 -100000, i32* %max, align 4
  store i32 0, i32* %max_col, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %1 = load i32, i32* @DEPTH, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %b1.addr, align 8
  %3 = load i64, i64* %b2.addr, align 8
  %call = call i32 @value(i64 %2, i64 %3)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %b2.addr, align 8
  store i64 %5, i64* %tmp_b, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call i32 @bit_place_piece(i32 %6, i32 2, i64* %b1.addr, i64* %tmp_b)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  br label %for.inc

if.end.5:                                         ; preds = %for.body
  %7 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %7, 1
  %8 = load i64, i64* %b1.addr, align 8
  %9 = load i64, i64* %tmp_b, align 8
  %10 = load i32*, i32** %col.addr, align 8
  %call6 = call i32 @minimax_player(i32 %add, i64 %8, i64 %9, i32* %10)
  store i32 %call6, i32* %tmp, align 4
  %11 = load i32, i32* %tmp, align 4
  %12 = load i32, i32* %max, align 4
  %cmp7 = icmp sgt i32 %11, %12
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %13 = load i32, i32* %tmp, align 4
  store i32 %13, i32* %max, align 4
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %max_col, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.9, %if.then.4
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %max_col, align 4
  %17 = load i32*, i32** %col.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %max, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @minimax_player(i32 %depth, i64 %b1, i64 %b2, i32* %col) #0 {
entry:
  %retval = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %col.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %min_col = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp_b = alloca i64, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  store i32 100000, i32* %min, align 4
  store i32 0, i32* %min_col, align 4
  %0 = load i32, i32* %depth.addr, align 4
  %1 = load i32, i32* @DEPTH, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %b1.addr, align 8
  %3 = load i64, i64* %b2.addr, align 8
  %call = call i32 @value(i64 %2, i64 %3)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %b1.addr, align 8
  store i64 %5, i64* %tmp_b, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call i32 @bit_place_piece(i32 %6, i32 1, i64* %tmp_b, i64* %b2.addr)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  br label %for.inc

if.end.5:                                         ; preds = %for.body
  %7 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %7, 1
  %8 = load i64, i64* %tmp_b, align 8
  %9 = load i64, i64* %b2.addr, align 8
  %10 = load i32*, i32** %col.addr, align 8
  %call6 = call i32 @minimax_comp(i32 %add, i64 %8, i64 %9, i32* %10)
  store i32 %call6, i32* %tmp, align 4
  %11 = load i32, i32* %tmp, align 4
  %12 = load i32, i32* %min, align 4
  %cmp7 = icmp sle i32 %11, %12
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %13 = load i32, i32* %tmp, align 4
  store i32 %13, i32* %min, align 4
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %min_col, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.9, %if.then.4
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %min_col, align 4
  %17 = load i32*, i32** %col.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %min, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @bit_place_piece(i32 %col, i32 %player, i64* %b1, i64* %b2) #0 {
entry:
  %retval = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %player.addr = alloca i32, align 4
  %b1.addr = alloca i64*, align 8
  %b2.addr = alloca i64*, align 8
  %board = alloca i64, align 8
  %one = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %col, i32* %col.addr, align 4
  store i32 %player, i32* %player.addr, align 4
  store i64* %b1, i64** %b1.addr, align 8
  store i64* %b2, i64** %b2.addr, align 8
  %0 = load i64*, i64** %b1.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %b2.addr, align 8
  %3 = load i64, i64* %2, align 8
  %or = or i64 %1, %3
  store i64 %or, i64* %board, align 8
  store i64 1, i64* %one, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %board, align 8
  %6 = load i64, i64* %one, align 8
  %7 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %7, 7
  %8 = load i32, i32* %col.addr, align 4
  %add = add nsw i32 %mul, %8
  %sh_prom = zext i32 %add to i64
  %shl = shl i64 %6, %sh_prom
  %and = and i64 %5, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.end.13, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %player.addr, align 4
  %cmp1 = icmp eq i32 %9, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %10 = load i64*, i64** %b1.addr, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %one, align 8
  %13 = load i32, i32* %i, align 4
  %mul3 = mul nsw i32 %13, 7
  %14 = load i32, i32* %col.addr, align 4
  %add4 = add nsw i32 %mul3, %14
  %sh_prom5 = zext i32 %add4 to i64
  %shl6 = shl i64 %12, %sh_prom5
  %or7 = or i64 %11, %shl6
  %15 = load i64*, i64** %b1.addr, align 8
  store i64 %or7, i64* %15, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load i64*, i64** %b2.addr, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %one, align 8
  %19 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %19, 7
  %20 = load i32, i32* %col.addr, align 4
  %add9 = add nsw i32 %mul8, %20
  %sh_prom10 = zext i32 %add9 to i64
  %shl11 = shl i64 %18, %sh_prom10
  %or12 = or i64 %17, %shl11
  %21 = load i64*, i64** %b2.addr, align 8
  store i64 %or12, i64* %21, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %c, i8** %v) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %v.addr = alloca i8**, align 8
  %b = alloca [7 x [7 x i8]], align 16
  %ab = alloca i32, align 4
  %cvsc = alloca i32, align 4
  %in = alloca i32, align 4
  %in_fp = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval
  store i32 %c, i32* %c.addr, align 4
  store i8** %v, i8*** %v.addr, align 8
  store i32 0, i32* %ab, align 4
  store i32 1, i32* %cvsc, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  %2 = load i8**, i8*** %v.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %in_fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %in_fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %tobool4 = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32* @DEPTH)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32* %ab)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* %8)
  %9 = load i32, i32* @DEPTH, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i32 %9)
  %10 = load i32, i32* %ab, align 4
  %tobool12 = icmp ne i32 %10, 0
  %cond = select i1 %tobool12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* %cond)
  %11 = load i32, i32* %ab, align 4
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.7
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.7
  %12 = load i32, i32* %ab, align 4
  %cmp17 = icmp eq i32 %12, 2
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  call void @init_patterns()
  %arraydecay = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  call void @init_board([7 x i8]* %arraydecay)
  %arraydecay21 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  call void @print_board([7 x i8]* %arraydecay21)
  br label %while.cond

while.cond:                                       ; preds = %if.end.40, %if.then.38, %if.end.20
  %arraydecay22 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call23 = call i32 @find_winner_p([7 x i8]* %arraydecay22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %arraydecay25 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call26 = call i32 @find_winner_c([7 x i8]* %arraydecay25)
  %tobool27 = icmp ne i32 %call26, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %13 = phi i1 [ true, %while.cond ], [ %tobool27, %lor.rhs ]
  %lnot = xor i1 %13, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %14 = load i32, i32* %cvsc, align 4
  %tobool28 = icmp ne i32 %14, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %while.body
  %arraydecay30 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %15 = load i32, i32* %ab, align 4
  %call31 = call i32 @think([7 x i8]* %arraydecay30, i32 1, i32 %15)
  %arraydecay32 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call33 = call i32 @place_piece(i32 %call31, i32 1, [7 x i8]* %arraydecay32)
  br label %if.end.40

if.else:                                          ; preds = %while.body
  %call34 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32* %in)
  %16 = load i32, i32* %in, align 4
  %arraydecay35 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call36 = call i32 @place_piece(i32 %16, i32 1, [7 x i8]* %arraydecay35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else
  br label %while.cond

if.end.39:                                        ; preds = %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.29
  %arraydecay41 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %17 = load i32, i32* %ab, align 4
  %call42 = call i32 @think([7 x i8]* %arraydecay41, i32 2, i32 %17)
  %arraydecay43 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call44 = call i32 @place_piece(i32 %call42, i32 2, [7 x i8]* %arraydecay43)
  %arraydecay45 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  call void @print_board([7 x i8]* %arraydecay45)
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %arraydecay46 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call47 = call i32 @find_winner_p([7 x i8]* %arraydecay46)
  %cmp48 = icmp eq i32 %call47, 1
  br i1 %cmp48, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %while.end
  %arraydecay49 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call50 = call i32 @find_winner_c([7 x i8]* %arraydecay49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.54, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %land.lhs.true, %while.end
  %arraydecay55 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call56 = call i32 @find_winner_c([7 x i8]* %arraydecay55)
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.64

land.lhs.true.58:                                 ; preds = %if.end.54
  %arraydecay59 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call60 = call i32 @find_winner_p([7 x i8]* %arraydecay59)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.58
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %land.lhs.true.58, %if.end.54
  %arraydecay65 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call66 = call i32 @find_winner_p([7 x i8]* %arraydecay65)
  %cmp67 = icmp eq i32 %call66, 2
  br i1 %cmp67, label %if.then.75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.64
  %arraydecay68 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call69 = call i32 @find_winner_c([7 x i8]* %arraydecay68)
  %cmp70 = icmp eq i32 %call69, 1
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.77

land.lhs.true.71:                                 ; preds = %lor.lhs.false
  %arraydecay72 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %b, i32 0, i32 0
  %call73 = call i32 @find_winner_p([7 x i8]* %arraydecay72)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %land.lhs.true.71, %if.end.64
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %land.lhs.true.71, %lor.lhs.false
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
