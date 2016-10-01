; ModuleID = './MultiSource.Benchmarks.Prolangs-C/69.agrep.sgrep.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@TR = common global [256 x i8] zeroinitializer, align 16
@NOUPPER = external global i32, align 4
@WORDBOUND = external global i32, align 4
@WHOLELINE = external global i32, align 4
@SILENT = external global i32, align 4
@COUNT = external global i32, align 4
@FNAME = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@CurrentFileName = external global [0 x i8], align 1
@shift_1 = common global i32 0, align 4
@SHIFT = common global [256 x i8] zeroinitializer, align 16
@num_of_matched = external global i32, align 4
@FILENAMEONLY = external global i32, align 4
@MEMBER = common global [8192 x i8] zeroinitializer, align 16
@endposition = external global i32, align 4
@Mask = external global [0 x i32], align 4
@Hashmask = common global i32 0, align 4
@MEMBER_1 = common global [65536 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SHIFT_2 = common global [4096 x i8] zeroinitializer, align 16
@char_map = common global [256 x i8] zeroinitializer, align 16
@MEMBER_D = common global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@BSize = common global i8 0, align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@Progname = external global [0 x i8], align 1
@DNA = external global i32, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@pat = common global [256 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @char_tr(i8* %pat, i32* %m) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %m.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %temp = alloca [256 x i8], align 16
  store i8* %pat, i8** %pat.addr, align 8
  store i32* %m, i32** %m.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* @NOUPPER, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 65, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.8, %if.then
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %5, 90
  br i1 %cmp2, label %for.body.4, label %for.end.10

for.body.4:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 97
  %sub = sub nsw i32 %add, 65
  %conv5 = trunc i32 %sub to i8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom6
  store i8 %conv5, i8* %arrayidx7, align 1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.4
  %8 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.1

for.end.10:                                       ; preds = %for.cond.1
  br label %if.end

if.end:                                           ; preds = %for.end.10, %for.end
  %9 = load i32, i32* @WORDBOUND, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %if.then.12, label %if.end.28

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.25, %if.then.12
  %10 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %10, 128
  br i1 %cmp14, label %for.body.16, label %for.end.27

for.body.16:                                      ; preds = %for.cond.13
  %11 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %11 to i64
  %call = call i16** @__ctype_b_loc() #7
  %12 = load i16*, i16** %call, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %12, i64 %idxprom17
  %13 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %13 to i32
  %and = and i32 %conv19, 8
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %for.body.16
  %14 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom22
  store i8 -128, i8* %arrayidx23, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %for.body.16
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %15 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %15, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.13

for.end.27:                                       ; preds = %for.cond.13
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %if.end
  %16 = load i32, i32* @WHOLELINE, align 4
  %tobool29 = icmp ne i32 %16, 0
  br i1 %tobool29, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %if.end.28
  %17 = bitcast [256 x i8]* %temp to i8*
  %18 = load i8*, i8** %pat.addr, align 8
  %19 = load i32*, i32** %m.addr, align 8
  %20 = load i32, i32* %19, align 4
  %conv31 = sext i32 %20 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 %conv31, i32 1, i1 false)
  %21 = load i8*, i8** %pat.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 10, i8* %arrayidx32, align 1
  %22 = load i8*, i8** %pat.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %23 = bitcast [256 x i8]* %temp to i8*
  %24 = load i32*, i32** %m.addr, align 8
  %25 = load i32, i32* %24, align 4
  %conv33 = sext i32 %25 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %23, i64 %conv33, i32 1, i1 false)
  %26 = load i32*, i32** %m.addr, align 8
  %27 = load i32, i32* %26, align 4
  %add34 = add nsw i32 %27, 1
  %idxprom35 = sext i32 %add34 to i64
  %28 = load i8*, i8** %pat.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %28, i64 %idxprom35
  store i8 10, i8* %arrayidx36, align 1
  %29 = load i32*, i32** %m.addr, align 8
  %30 = load i32, i32* %29, align 4
  %add37 = add nsw i32 %30, 2
  %idxprom38 = sext i32 %add37 to i64
  %31 = load i8*, i8** %pat.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %31, i64 %idxprom38
  store i8 0, i8* %arrayidx39, align 1
  %32 = load i32*, i32** %m.addr, align 8
  %33 = load i32, i32* %32, align 4
  %add40 = add nsw i32 %33, 2
  %34 = load i32*, i32** %m.addr, align 8
  store i32 %add40, i32* %34, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.30, %if.end.28
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @s_output(i8* %text, i32* %i) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %i.addr = alloca i32*, align 8
  %bp = alloca i32, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  %0 = load i32, i32* @SILENT, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @COUNT, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.2
  %2 = load i32*, i32** %i.addr, align 8
  %3 = load i32, i32* %2, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %text.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32*, i32** %i.addr, align 8
  %7 = load i32, i32* %6, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32*, i32** %i.addr, align 8
  store i32 %add, i32* %8, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load i32, i32* @FNAME, align 4
  %cmp5 = icmp eq i32 %9, 1
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %10 = load i32*, i32** %i.addr, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %bp, align 4
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.15, %if.end.8
  %12 = load i32, i32* %bp, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %bp, align 4
  %idxprom10 = sext i32 %dec to i64
  %13 = load i8*, i8** %text.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %cmp13 = icmp ne i32 %conv12, 10
  br i1 %cmp13, label %while.body.15, label %while.end.16

while.body.15:                                    ; preds = %while.cond.9
  br label %while.cond.9

while.end.16:                                     ; preds = %while.cond.9
  br label %while.cond.17

while.cond.17:                                    ; preds = %while.body.23, %while.end.16
  %15 = load i32, i32* %bp, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %bp, align 4
  %idxprom18 = sext i32 %inc to i64
  %16 = load i8*, i8** %text.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %16, i64 %idxprom18
  %17 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %cmp21 = icmp ne i32 %conv20, 10
  br i1 %cmp21, label %while.body.23, label %while.end.28

while.body.23:                                    ; preds = %while.cond.17
  %18 = load i32, i32* %bp, align 4
  %idxprom24 = sext i32 %18 to i64
  %19 = load i8*, i8** %text.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %19, i64 %idxprom24
  %20 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %20 to i32
  %call27 = call i32 @putchar(i32 %conv26)
  br label %while.cond.17

while.end.28:                                     ; preds = %while.cond.17
  %call29 = call i32 @putchar(i32 10)
  %21 = load i32, i32* %bp, align 4
  %22 = load i32*, i32** %i.addr, align 8
  store i32 %21, i32* %22, align 4
  br label %return

return:                                           ; preds = %while.end.28, %while.end, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #3

declare i32 @putchar(i32) #3

; Function Attrs: nounwind uwtable
define i32 @verify(i32 %m, i32 %n, i32 %D, i8* %pat, i8* %text) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %pat.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %A = alloca [256 x i32], align 16
  %B = alloca [256 x i32], align 16
  %last = alloca i32, align 4
  %cost = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %m1 = alloca i32, align 4
  %textend = alloca i8*, align 8
  %textbegin = alloca i8*, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load i32, i32* %D.addr, align 4
  store i32 %0, i32* %last, align 4
  store i32 0, i32* %cost, align 4
  %1 = load i32, i32* %m.addr, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %m1, align 4
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i32, i32* %n.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %textend, align 8
  %4 = load i8*, i8** %text.addr, align 8
  store i8* %4, i8** %textbegin, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %m1, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom
  store i32 %7, i32* %arrayidx, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom1
  store i32 %7, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.206, %for.end
  %11 = load i8*, i8** %text.addr, align 8
  %12 = load i8*, i8** %textend, align 8
  %cmp3 = icmp ult i8* %11, %12
  br i1 %cmp3, label %while.body, label %while.end.207

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.41, %while.body
  %13 = load i32, i32* %k, align 4
  %14 = load i32, i32* %last, align 4
  %cmp5 = icmp sle i32 %13, %14
  br i1 %cmp5, label %for.body.6, label %for.end.43

for.body.6:                                       ; preds = %for.cond.4
  %15 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %add9 = add nsw i32 %16, 1
  store i32 %add9, i32* %cost, align 4
  %17 = load i32, i32* %k, align 4
  %sub10 = sub nsw i32 %17, 1
  %idxprom11 = sext i32 %sub10 to i64
  %18 = load i8*, i8** %pat.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %18, i64 %idxprom11
  %19 = load i8, i8* %arrayidx12, align 1
  %conv = zext i8 %19 to i32
  %20 = load i8*, i8** %text.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv13 = zext i8 %21 to i32
  %cmp14 = icmp ne i32 %conv, %conv13
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.6
  %22 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom16
  %23 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %23, 1
  %24 = load i32, i32* %cost, align 4
  %cmp19 = icmp slt i32 %add18, %24
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  %25 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom22
  %26 = load i32, i32* %arrayidx23, align 4
  %add24 = add nsw i32 %26, 1
  store i32 %add24, i32* %cost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  %27 = load i32, i32* %k, align 4
  %sub25 = sub nsw i32 %27, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom26
  %28 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %28, 1
  %29 = load i32, i32* %cost, align 4
  %cmp29 = icmp slt i32 %add28, %29
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end
  %30 = load i32, i32* %k, align 4
  %sub32 = sub nsw i32 %30, 1
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom33
  %31 = load i32, i32* %arrayidx34, align 4
  %add35 = add nsw i32 %31, 1
  store i32 %add35, i32* %cost, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.end
  br label %if.end.38

if.else:                                          ; preds = %for.body.6
  %32 = load i32, i32* %cost, align 4
  %sub37 = sub nsw i32 %32, 1
  store i32 %sub37, i32* %cost, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.end.36
  %33 = load i32, i32* %cost, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom39
  store i32 %33, i32* %arrayidx40, align 4
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.38
  %35 = load i32, i32* %k, align 4
  %inc42 = add nsw i32 %35, 1
  store i32 %inc42, i32* %k, align 4
  br label %for.cond.4

for.end.43:                                       ; preds = %for.cond.4
  %36 = load i32, i32* %last, align 4
  %idxprom44 = sext i32 %36 to i64
  %37 = load i8*, i8** %pat.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %37, i64 %idxprom44
  %38 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %38 to i32
  %39 = load i8*, i8** %text.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %text.addr, align 8
  %40 = load i8, i8* %39, align 1
  %conv47 = zext i8 %40 to i32
  %cmp48 = icmp eq i32 %conv46, %conv47
  br i1 %cmp48, label %if.then.50, label %if.end.57

if.then.50:                                       ; preds = %for.end.43
  %41 = load i32, i32* %last, align 4
  %idxprom51 = sext i32 %41 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom51
  %42 = load i32, i32* %arrayidx52, align 4
  %43 = load i32, i32* %last, align 4
  %add53 = add nsw i32 %43, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom54
  store i32 %42, i32* %arrayidx55, align 4
  %44 = load i32, i32* %last, align 4
  %inc56 = add nsw i32 %44, 1
  store i32 %inc56, i32* %last, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.50, %for.end.43
  %45 = load i32, i32* %last, align 4
  %idxprom58 = sext i32 %45 to i64
  %arrayidx59 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom58
  %46 = load i32, i32* %arrayidx59, align 4
  %47 = load i32, i32* %D.addr, align 4
  %cmp60 = icmp slt i32 %46, %47
  br i1 %cmp60, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.end.57
  %48 = load i32, i32* %last, align 4
  %inc63 = add nsw i32 %48, 1
  store i32 %inc63, i32* %last, align 4
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom64
  %49 = load i32, i32* %arrayidx65, align 4
  %add66 = add nsw i32 %49, 1
  %50 = load i32, i32* %last, align 4
  %add67 = add nsw i32 %50, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom68
  store i32 %add66, i32* %arrayidx69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.62, %if.end.57
  br label %while.cond.71

while.cond.71:                                    ; preds = %while.body.76, %if.end.70
  %51 = load i32, i32* %last, align 4
  %idxprom72 = sext i32 %51 to i64
  %arrayidx73 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom72
  %52 = load i32, i32* %arrayidx73, align 4
  %53 = load i32, i32* %D.addr, align 4
  %cmp74 = icmp sgt i32 %52, %53
  br i1 %cmp74, label %while.body.76, label %while.end

while.body.76:                                    ; preds = %while.cond.71
  %54 = load i32, i32* %last, align 4
  %sub77 = sub nsw i32 %54, 1
  store i32 %sub77, i32* %last, align 4
  br label %while.cond.71

while.end:                                        ; preds = %while.cond.71
  %55 = load i32, i32* %last, align 4
  %56 = load i32, i32* %m.addr, align 4
  %cmp78 = icmp sge i32 %55, %56
  br i1 %cmp78, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %while.end
  %57 = load i8*, i8** %text.addr, align 8
  %58 = load i8*, i8** %textbegin, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %58 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub81 = sub nsw i64 %sub.ptr.sub, 1
  %conv82 = trunc i64 %sub81 to i32
  store i32 %conv82, i32* %retval
  br label %return

if.end.83:                                        ; preds = %while.end
  %59 = load i8*, i8** %text.addr, align 8
  %60 = load i8, i8* %59, align 1
  %conv84 = zext i8 %60 to i32
  %cmp85 = icmp eq i32 %conv84, 10
  br i1 %cmp85, label %if.then.87, label %if.end.99

if.then.87:                                       ; preds = %if.end.83
  %61 = load i32, i32* %D.addr, align 4
  store i32 %61, i32* %last, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.96, %if.then.87
  %62 = load i32, i32* %c, align 4
  %63 = load i32, i32* %m1, align 4
  %cmp89 = icmp sle i32 %62, %63
  br i1 %cmp89, label %for.body.91, label %for.end.98

for.body.91:                                      ; preds = %for.cond.88
  %64 = load i32, i32* %c, align 4
  %65 = load i32, i32* %c, align 4
  %idxprom92 = sext i32 %65 to i64
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom92
  store i32 %64, i32* %arrayidx93, align 4
  %66 = load i32, i32* %c, align 4
  %idxprom94 = sext i32 %66 to i64
  %arrayidx95 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom94
  store i32 %64, i32* %arrayidx95, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.91
  %67 = load i32, i32* %c, align 4
  %inc97 = add nsw i32 %67, 1
  store i32 %inc97, i32* %c, align 4
  br label %for.cond.88

for.end.98:                                       ; preds = %for.cond.88
  br label %if.end.99

if.end.99:                                        ; preds = %for.end.98, %if.end.83
  store i32 1, i32* %k, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.143, %if.end.99
  %68 = load i32, i32* %k, align 4
  %69 = load i32, i32* %last, align 4
  %cmp101 = icmp sle i32 %68, %69
  br i1 %cmp101, label %for.body.103, label %for.end.145

for.body.103:                                     ; preds = %for.cond.100
  %70 = load i32, i32* %k, align 4
  %sub104 = sub nsw i32 %70, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom105
  %71 = load i32, i32* %arrayidx106, align 4
  %add107 = add nsw i32 %71, 1
  store i32 %add107, i32* %cost, align 4
  %72 = load i32, i32* %k, align 4
  %sub108 = sub nsw i32 %72, 1
  %idxprom109 = sext i32 %sub108 to i64
  %73 = load i8*, i8** %pat.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %73, i64 %idxprom109
  %74 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %74 to i32
  %75 = load i8*, i8** %text.addr, align 8
  %76 = load i8, i8* %75, align 1
  %conv112 = zext i8 %76 to i32
  %cmp113 = icmp ne i32 %conv111, %conv112
  br i1 %cmp113, label %if.then.115, label %if.else.138

if.then.115:                                      ; preds = %for.body.103
  %77 = load i32, i32* %k, align 4
  %idxprom116 = sext i32 %77 to i64
  %arrayidx117 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom116
  %78 = load i32, i32* %arrayidx117, align 4
  %add118 = add nsw i32 %78, 1
  %79 = load i32, i32* %cost, align 4
  %cmp119 = icmp slt i32 %add118, %79
  br i1 %cmp119, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %if.then.115
  %80 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %80 to i64
  %arrayidx123 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom122
  %81 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %81, 1
  store i32 %add124, i32* %cost, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %if.then.115
  %82 = load i32, i32* %k, align 4
  %sub126 = sub nsw i32 %82, 1
  %idxprom127 = sext i32 %sub126 to i64
  %arrayidx128 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom127
  %83 = load i32, i32* %arrayidx128, align 4
  %add129 = add nsw i32 %83, 1
  %84 = load i32, i32* %cost, align 4
  %cmp130 = icmp slt i32 %add129, %84
  br i1 %cmp130, label %if.then.132, label %if.end.137

if.then.132:                                      ; preds = %if.end.125
  %85 = load i32, i32* %k, align 4
  %sub133 = sub nsw i32 %85, 1
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom134
  %86 = load i32, i32* %arrayidx135, align 4
  %add136 = add nsw i32 %86, 1
  store i32 %add136, i32* %cost, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.132, %if.end.125
  br label %if.end.140

if.else.138:                                      ; preds = %for.body.103
  %87 = load i32, i32* %cost, align 4
  %sub139 = sub nsw i32 %87, 1
  store i32 %sub139, i32* %cost, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.138, %if.end.137
  %88 = load i32, i32* %cost, align 4
  %89 = load i32, i32* %k, align 4
  %idxprom141 = sext i32 %89 to i64
  %arrayidx142 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom141
  store i32 %88, i32* %arrayidx142, align 4
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.140
  %90 = load i32, i32* %k, align 4
  %inc144 = add nsw i32 %90, 1
  store i32 %inc144, i32* %k, align 4
  br label %for.cond.100

for.end.145:                                      ; preds = %for.cond.100
  %91 = load i32, i32* %last, align 4
  %idxprom146 = sext i32 %91 to i64
  %92 = load i8*, i8** %pat.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %92, i64 %idxprom146
  %93 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %93 to i32
  %94 = load i8*, i8** %text.addr, align 8
  %incdec.ptr149 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr149, i8** %text.addr, align 8
  %95 = load i8, i8* %94, align 1
  %conv150 = zext i8 %95 to i32
  %cmp151 = icmp eq i32 %conv148, %conv150
  br i1 %cmp151, label %if.then.153, label %if.end.160

if.then.153:                                      ; preds = %for.end.145
  %96 = load i32, i32* %last, align 4
  %idxprom154 = sext i32 %96 to i64
  %arrayidx155 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom154
  %97 = load i32, i32* %arrayidx155, align 4
  %98 = load i32, i32* %last, align 4
  %add156 = add nsw i32 %98, 1
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom157
  store i32 %97, i32* %arrayidx158, align 4
  %99 = load i32, i32* %last, align 4
  %inc159 = add nsw i32 %99, 1
  store i32 %inc159, i32* %last, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.153, %for.end.145
  %100 = load i32, i32* %last, align 4
  %idxprom161 = sext i32 %100 to i64
  %arrayidx162 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom161
  %101 = load i32, i32* %arrayidx162, align 4
  %102 = load i32, i32* %D.addr, align 4
  %cmp163 = icmp slt i32 %101, %102
  br i1 %cmp163, label %if.then.165, label %if.end.173

if.then.165:                                      ; preds = %if.end.160
  %103 = load i32, i32* %last, align 4
  %inc166 = add nsw i32 %103, 1
  store i32 %inc166, i32* %last, align 4
  %idxprom167 = sext i32 %103 to i64
  %arrayidx168 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom167
  %104 = load i32, i32* %arrayidx168, align 4
  %add169 = add nsw i32 %104, 1
  %105 = load i32, i32* %last, align 4
  %add170 = add nsw i32 %105, 1
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom171
  store i32 %add169, i32* %arrayidx172, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.165, %if.end.160
  br label %while.cond.174

while.cond.174:                                   ; preds = %while.body.179, %if.end.173
  %106 = load i32, i32* %last, align 4
  %idxprom175 = sext i32 %106 to i64
  %arrayidx176 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom175
  %107 = load i32, i32* %arrayidx176, align 4
  %108 = load i32, i32* %D.addr, align 4
  %cmp177 = icmp sgt i32 %107, %108
  br i1 %cmp177, label %while.body.179, label %while.end.181

while.body.179:                                   ; preds = %while.cond.174
  %109 = load i32, i32* %last, align 4
  %sub180 = sub nsw i32 %109, 1
  store i32 %sub180, i32* %last, align 4
  br label %while.cond.174

while.end.181:                                    ; preds = %while.cond.174
  %110 = load i32, i32* %last, align 4
  %111 = load i32, i32* %m.addr, align 4
  %cmp182 = icmp sge i32 %110, %111
  br i1 %cmp182, label %if.then.184, label %if.end.190

if.then.184:                                      ; preds = %while.end.181
  %112 = load i8*, i8** %text.addr, align 8
  %113 = load i8*, i8** %textbegin, align 8
  %sub.ptr.lhs.cast185 = ptrtoint i8* %112 to i64
  %sub.ptr.rhs.cast186 = ptrtoint i8* %113 to i64
  %sub.ptr.sub187 = sub i64 %sub.ptr.lhs.cast185, %sub.ptr.rhs.cast186
  %sub188 = sub nsw i64 %sub.ptr.sub187, 1
  %conv189 = trunc i64 %sub188 to i32
  store i32 %conv189, i32* %retval
  br label %return

if.end.190:                                       ; preds = %while.end.181
  %114 = load i8*, i8** %text.addr, align 8
  %115 = load i8, i8* %114, align 1
  %conv191 = zext i8 %115 to i32
  %cmp192 = icmp eq i32 %conv191, 10
  br i1 %cmp192, label %if.then.194, label %if.end.206

if.then.194:                                      ; preds = %if.end.190
  %116 = load i32, i32* %D.addr, align 4
  store i32 %116, i32* %last, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.203, %if.then.194
  %117 = load i32, i32* %c, align 4
  %118 = load i32, i32* %m1, align 4
  %cmp196 = icmp sle i32 %117, %118
  br i1 %cmp196, label %for.body.198, label %for.end.205

for.body.198:                                     ; preds = %for.cond.195
  %119 = load i32, i32* %c, align 4
  %120 = load i32, i32* %c, align 4
  %idxprom199 = sext i32 %120 to i64
  %arrayidx200 = getelementptr inbounds [256 x i32], [256 x i32]* %B, i32 0, i64 %idxprom199
  store i32 %119, i32* %arrayidx200, align 4
  %121 = load i32, i32* %c, align 4
  %idxprom201 = sext i32 %121 to i64
  %arrayidx202 = getelementptr inbounds [256 x i32], [256 x i32]* %A, i32 0, i64 %idxprom201
  store i32 %119, i32* %arrayidx202, align 4
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.198
  %122 = load i32, i32* %c, align 4
  %inc204 = add nsw i32 %122, 1
  store i32 %inc204, i32* %c, align 4
  br label %for.cond.195

for.end.205:                                      ; preds = %for.cond.195
  br label %if.end.206

if.end.206:                                       ; preds = %for.end.205, %if.end.190
  br label %while.cond

while.end.207:                                    ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.207, %if.then.184, %if.then.80
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define void @bm(i8* %pat, i32 %m, i8* %text, i8* %textend) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %textend.addr = alloca i8*, align 8
  %shift = alloca i32, align 4
  %m1 = alloca i32, align 4
  %j = alloca i32, align 4
  %d1 = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i8* %textend, i8** %textend.addr, align 8
  %0 = load i32, i32* @shift_1, align 4
  store i32 %0, i32* %d1, align 4
  %1 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %m1, align 4
  store i32 0, i32* %shift, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.99, %entry
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i8*, i8** %textend.addr, align 8
  %cmp = icmp ule i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end.100

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %shift, align 4
  %5 = load i8*, i8** %text.addr, align 8
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %text.addr, align 8
  %6 = load i8, i8* %add.ptr, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  store i32 %conv, i32* %shift, align 4
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.2, %while.body
  %8 = load i32, i32* %shift, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.cond.1
  %9 = load i32, i32* %shift, align 4
  %10 = load i8*, i8** %text.addr, align 8
  %idx.ext3 = sext i32 %9 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 %idx.ext3
  store i8* %add.ptr4, i8** %text.addr, align 8
  %11 = load i8, i8* %add.ptr4, align 1
  %idxprom5 = zext i8 %11 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom5
  %12 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  store i32 %conv7, i32* %shift, align 4
  %13 = load i32, i32* %shift, align 4
  %14 = load i8*, i8** %text.addr, align 8
  %idx.ext8 = sext i32 %13 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %14, i64 %idx.ext8
  store i8* %add.ptr9, i8** %text.addr, align 8
  %15 = load i8, i8* %add.ptr9, align 1
  %idxprom10 = zext i8 %15 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom10
  %16 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %16 to i32
  store i32 %conv12, i32* %shift, align 4
  %17 = load i32, i32* %shift, align 4
  %18 = load i8*, i8** %text.addr, align 8
  %idx.ext13 = sext i32 %17 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %18, i64 %idx.ext13
  store i8* %add.ptr14, i8** %text.addr, align 8
  %19 = load i8, i8* %add.ptr14, align 1
  %idxprom15 = zext i8 %19 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom15
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %20 to i32
  store i32 %conv17, i32* %shift, align 4
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  store i32 0, i32* %j, align 4
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end, %while.end
  %21 = load i32, i32* %m1, align 4
  %22 = load i32, i32* %j, align 4
  %sub19 = sub nsw i32 %21, %22
  %idxprom20 = sext i32 %sub19 to i64
  %23 = load i8*, i8** %pat.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %23, i64 %idxprom20
  %24 = load i8, i8* %arrayidx21, align 1
  %idxprom22 = zext i8 %24 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom22
  %25 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %25 to i32
  %26 = load i8*, i8** %text.addr, align 8
  %27 = load i32, i32* %j, align 4
  %idx.ext25 = sext i32 %27 to i64
  %idx.neg = sub i64 0, %idx.ext25
  %add.ptr26 = getelementptr inbounds i8, i8* %26, i64 %idx.neg
  %28 = load i8, i8* %add.ptr26, align 1
  %idxprom27 = zext i8 %28 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom27
  %29 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %29 to i32
  %cmp30 = icmp eq i32 %conv24, %conv29
  br i1 %cmp30, label %while.body.32, label %while.end.35

while.body.32:                                    ; preds = %while.cond.18
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  %31 = load i32, i32* %m.addr, align 4
  %cmp33 = icmp eq i32 %inc, %31
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.32
  br label %while.end.35

if.end:                                           ; preds = %while.body.32
  br label %while.cond.18

while.end.35:                                     ; preds = %if.then, %while.cond.18
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %m.addr, align 4
  %cmp36 = icmp eq i32 %32, %33
  br i1 %cmp36, label %if.then.38, label %if.else.98

if.then.38:                                       ; preds = %while.end.35
  %34 = load i8*, i8** %text.addr, align 8
  %35 = load i8*, i8** %textend.addr, align 8
  %cmp39 = icmp ugt i8* %34, %35
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  br label %return

if.end.42:                                        ; preds = %if.then.38
  %36 = load i32, i32* @WORDBOUND, align 4
  %tobool43 = icmp ne i32 %36, 0
  br i1 %tobool43, label %if.then.44, label %if.end.63

if.then.44:                                       ; preds = %if.end.42
  %37 = load i8*, i8** %text.addr, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %add.ptr45, align 1
  %idxprom46 = zext i8 %38 to i64
  %arrayidx47 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom46
  %39 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %39 to i32
  %cmp49 = icmp ne i32 %conv48, 128
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.44
  br label %CONT

if.end.52:                                        ; preds = %if.then.44
  %40 = load i8*, i8** %text.addr, align 8
  %41 = load i32, i32* %m.addr, align 4
  %idx.ext53 = sext i32 %41 to i64
  %idx.neg54 = sub i64 0, %idx.ext53
  %add.ptr55 = getelementptr inbounds i8, i8* %40, i64 %idx.neg54
  %42 = load i8, i8* %add.ptr55, align 1
  %idxprom56 = zext i8 %42 to i64
  %arrayidx57 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom56
  %43 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %43 to i32
  %cmp59 = icmp ne i32 %conv58, 128
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.52
  br label %CONT

if.end.62:                                        ; preds = %if.end.52
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.42
  %44 = load i32, i32* @num_of_matched, align 4
  %inc64 = add nsw i32 %44, 1
  store i32 %inc64, i32* @num_of_matched, align 4
  %45 = load i32, i32* @FILENAMEONLY, align 4
  %tobool65 = icmp ne i32 %45, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.63
  br label %return

if.end.67:                                        ; preds = %if.end.63
  %46 = load i32, i32* @COUNT, align 4
  %tobool68 = icmp ne i32 %46, 0
  br i1 %tobool68, label %if.else, label %if.then.69

if.then.69:                                       ; preds = %if.end.67
  %47 = load i32, i32* @FNAME, align 4
  %tobool70 = icmp ne i32 %47, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.69
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.then.69
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.77, %if.end.72
  %48 = load i8*, i8** %text.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %incdec.ptr, i8** %text.addr, align 8
  %49 = load i8, i8* %incdec.ptr, align 1
  %conv74 = zext i8 %49 to i32
  %cmp75 = icmp ne i32 %conv74, 10
  br i1 %cmp75, label %while.body.77, label %while.end.78

while.body.77:                                    ; preds = %while.cond.73
  br label %while.cond.73

while.end.78:                                     ; preds = %while.cond.73
  br label %while.cond.79

while.cond.79:                                    ; preds = %while.body.84, %while.end.78
  %50 = load i8*, i8** %text.addr, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr80, i8** %text.addr, align 8
  %51 = load i8, i8* %incdec.ptr80, align 1
  %conv81 = zext i8 %51 to i32
  %cmp82 = icmp ne i32 %conv81, 10
  br i1 %cmp82, label %while.body.84, label %while.end.87

while.body.84:                                    ; preds = %while.cond.79
  %52 = load i8*, i8** %text.addr, align 8
  %53 = load i8, i8* %52, align 1
  %conv85 = zext i8 %53 to i32
  %call86 = call i32 @putchar(i32 %conv85)
  br label %while.cond.79

while.end.87:                                     ; preds = %while.cond.79
  %54 = load i8*, i8** %text.addr, align 8
  %55 = load i8, i8* %54, align 1
  %conv88 = zext i8 %55 to i32
  %call89 = call i32 @putchar(i32 %conv88)
  br label %if.end.97

if.else:                                          ; preds = %if.end.67
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.94, %if.else
  %56 = load i8*, i8** %text.addr, align 8
  %57 = load i8, i8* %56, align 1
  %conv91 = zext i8 %57 to i32
  %cmp92 = icmp ne i32 %conv91, 10
  br i1 %cmp92, label %while.body.94, label %while.end.96

while.body.94:                                    ; preds = %while.cond.90
  %58 = load i8*, i8** %text.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr95, i8** %text.addr, align 8
  br label %while.cond.90

while.end.96:                                     ; preds = %while.cond.90
  br label %if.end.97

if.end.97:                                        ; preds = %while.end.96, %while.end.87
  br label %CONT

CONT:                                             ; preds = %if.end.97, %if.then.61, %if.then.51
  store i32 1, i32* %shift, align 4
  br label %if.end.99

if.else.98:                                       ; preds = %while.end.35
  %59 = load i32, i32* %d1, align 4
  store i32 %59, i32* %shift, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %CONT
  br label %while.cond

while.end.100:                                    ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end.100, %if.then.66, %if.then.41
  ret void
}

; Function Attrs: nounwind uwtable
define void @initmask(i8* %pattern, i32* %Mask, i32 %m, i32 %D, i32* %endposition) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %Mask.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %endposition.addr = alloca i32*, align 8
  %Bit1 = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %frag_num = alloca i32, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32* %Mask, i32** %Mask.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  store i32* %endposition, i32** %endposition.addr, align 8
  store i32 -2147483648, i32* %Bit1, align 4
  %0 = load i32, i32* %D.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %frag_num, align 4
  %1 = load i32*, i32** %endposition.addr, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %frag_num, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %endposition.addr, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %Bit1, align 4
  %7 = load i32, i32* %i, align 4
  %shr = lshr i32 %6, %7
  %or = or i32 %5, %shr
  %8 = load i32*, i32** %endposition.addr, align 8
  store i32 %or, i32* %8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32*, i32** %endposition.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %m.addr, align 4
  %13 = load i32, i32* %frag_num, align 4
  %sub = sub nsw i32 %12, %13
  %shr1 = lshr i32 %11, %sub
  %14 = load i32*, i32** %endposition.addr, align 8
  store i32 %shr1, i32* %14, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.14, %for.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %m.addr, align 4
  %cmp3 = icmp slt i32 %15, %16
  br i1 %cmp3, label %for.body.4, label %for.end.16

for.body.4:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8*, i8** %pattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %cmp5 = icmp eq i32 %conv, 94
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.4
  %20 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %20 to i64
  %21 = load i8*, i8** %pattern.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %21, i64 %idxprom7
  %22 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %22 to i32
  %cmp10 = icmp eq i32 %conv9, 36
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.4
  %23 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load i8*, i8** %pattern.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %24, i64 %idxprom12
  store i8 10, i8* %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %25, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.2

for.end.16:                                       ; preds = %for.cond.2
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.23, %for.end.16
  %26 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %26, 256
  br i1 %cmp18, label %for.body.20, label %for.end.25

for.body.20:                                      ; preds = %for.cond.17
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i32*, i32** %Mask.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %28, i64 %idxprom21
  store i32 -1, i32* %arrayidx22, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.20
  %29 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.17

for.end.25:                                       ; preds = %for.cond.17
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.52, %for.end.25
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %m.addr, align 4
  %cmp27 = icmp slt i32 %30, %31
  br i1 %cmp27, label %for.body.29, label %for.end.54

for.body.29:                                      ; preds = %for.cond.26
  %32 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load i8*, i8** %pattern.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %33, i64 %idxprom30
  %34 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %34 to i32
  store i32 %conv32, i32* %c, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.49, %for.body.29
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %m.addr, align 4
  %cmp34 = icmp slt i32 %35, %36
  br i1 %cmp34, label %for.body.36, label %for.end.51

for.body.36:                                      ; preds = %for.cond.33
  %37 = load i32, i32* %c, align 4
  %38 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load i8*, i8** %pattern.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %39, i64 %idxprom37
  %40 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %40 to i32
  %cmp40 = icmp eq i32 %37, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %for.body.36
  %41 = load i32, i32* %c, align 4
  %idxprom43 = zext i32 %41 to i64
  %42 = load i32*, i32** %Mask.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %42, i64 %idxprom43
  %43 = load i32, i32* %arrayidx44, align 4
  %44 = load i32, i32* %Bit1, align 4
  %45 = load i32, i32* %j, align 4
  %shr45 = lshr i32 %44, %45
  %neg = xor i32 %shr45, -1
  %and = and i32 %43, %neg
  %46 = load i32, i32* %c, align 4
  %idxprom46 = zext i32 %46 to i64
  %47 = load i32*, i32** %Mask.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %47, i64 %idxprom46
  store i32 %and, i32* %arrayidx47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %for.body.36
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %48 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %48, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond.33

for.end.51:                                       ; preds = %for.cond.33
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.51
  %49 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %49, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.26

for.end.54:                                       ; preds = %for.cond.26
  ret void
}

; Function Attrs: nounwind uwtable
define void @prep(i8* %Pattern, i32 %M, i32 %D) #0 {
entry:
  %Pattern.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  %shift = alloca i32, align 4
  %m = alloca i32, align 4
  %hash = alloca i32, align 4
  %b_size = alloca i32, align 4
  store i8* %Pattern, i8** %Pattern.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  store i32 3, i32* %b_size, align 4
  %0 = load i32, i32* %M.addr, align 4
  %1 = load i32, i32* %D.addr, align 4
  %add = add nsw i32 %1, 1
  %div = sdiv i32 %0, %add
  store i32 %div, i32* %m, align 4
  %2 = load i32, i32* %M.addr, align 4
  %3 = load i32, i32* %m, align 4
  %4 = load i32, i32* %D.addr, align 4
  %add1 = add nsw i32 %4, 1
  %mul = mul i32 %3, %add1
  %sub = sub i32 %2, %mul
  store i32 %sub, i32* %p, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %m, align 4
  %conv = trunc i32 %6 to i8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %M.addr, align 4
  %sub2 = sub nsw i32 %9, 1
  store i32 %sub2, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.20, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %p, align 4
  %cmp4 = icmp sge i32 %10, %11
  br i1 %cmp4, label %for.body.6, label %for.end.21

for.body.6:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %M.addr, align 4
  %sub7 = sub nsw i32 %12, 1
  %13 = load i32, i32* %i, align 4
  %sub8 = sub nsw i32 %sub7, %13
  %14 = load i32, i32* %m, align 4
  %rem = urem i32 %sub8, %14
  store i32 %rem, i32* %shift, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %idxprom9
  %17 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %17 to i32
  store i32 %conv11, i32* %hash, align 4
  %18 = load i32, i32* %hash, align 4
  %idxprom12 = zext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom12
  %19 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %19 to i32
  %20 = load i32, i32* %shift, align 4
  %cmp15 = icmp sgt i32 %conv14, %20
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %21 = load i32, i32* %shift, align 4
  %conv17 = trunc i32 %21 to i8
  %22 = load i32, i32* %hash, align 4
  %idxprom18 = zext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom18
  store i8 %conv17, i8* %arrayidx19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.3

for.end.21:                                       ; preds = %for.cond.3
  %24 = load i32, i32* %m, align 4
  store i32 %24, i32* @shift_1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.63, %for.end.21
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %D.addr, align 4
  %add23 = add nsw i32 %26, 1
  %cmp24 = icmp slt i32 %25, %add23
  br i1 %cmp24, label %for.body.26, label %for.end.65

for.body.26:                                      ; preds = %for.cond.22
  %27 = load i32, i32* %M.addr, align 4
  %sub27 = sub nsw i32 %27, 1
  %28 = load i32, i32* %m, align 4
  %29 = load i32, i32* %i, align 4
  %mul28 = mul i32 %28, %29
  %sub29 = sub i32 %sub27, %mul28
  store i32 %sub29, i32* %j, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.60, %for.body.26
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %m, align 4
  %cmp31 = icmp ult i32 %30, %31
  br i1 %cmp31, label %for.body.33, label %for.end.62

for.body.33:                                      ; preds = %for.cond.30
  store i32 0, i32* %p, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.57, %for.body.33
  %32 = load i32, i32* %p, align 4
  %33 = load i32, i32* %D.addr, align 4
  %add35 = add nsw i32 %33, 1
  %cmp36 = icmp slt i32 %32, %add35
  br i1 %cmp36, label %for.body.38, label %for.end.59

for.body.38:                                      ; preds = %for.cond.34
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %k, align 4
  %sub39 = sub nsw i32 %34, %35
  %idxprom40 = sext i32 %sub39 to i64
  %36 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %36, i64 %idxprom40
  %37 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %37 to i32
  %38 = load i32, i32* %M.addr, align 4
  %sub43 = sub nsw i32 %38, 1
  %39 = load i32, i32* %m, align 4
  %40 = load i32, i32* %p, align 4
  %mul44 = mul i32 %39, %40
  %sub45 = sub i32 %sub43, %mul44
  %idxprom46 = zext i32 %sub45 to i64
  %41 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %41, i64 %idxprom46
  %42 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %42 to i32
  %cmp49 = icmp eq i32 %conv42, %conv48
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %for.body.38
  %43 = load i32, i32* %k, align 4
  %44 = load i32, i32* @shift_1, align 4
  %cmp52 = icmp slt i32 %43, %44
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.51
  %45 = load i32, i32* %k, align 4
  store i32 %45, i32* @shift_1, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.body.38
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %46 = load i32, i32* %p, align 4
  %inc58 = add nsw i32 %46, 1
  store i32 %inc58, i32* %p, align 4
  br label %for.cond.34

for.end.59:                                       ; preds = %for.cond.34
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %47 = load i32, i32* %k, align 4
  %inc61 = add nsw i32 %47, 1
  store i32 %inc61, i32* %k, align 4
  br label %for.cond.30

for.end.62:                                       ; preds = %for.cond.30
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %48 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %48, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.22

for.end.65:                                       ; preds = %for.cond.22
  %49 = load i32, i32* @shift_1, align 4
  %cmp66 = icmp eq i32 %49, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.end.65
  store i32 1, i32* @shift_1, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %for.end.65
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.76, %if.end.69
  %50 = load i32, i32* %i, align 4
  %cmp71 = icmp slt i32 %50, 8192
  br i1 %cmp71, label %for.body.73, label %for.end.78

for.body.73:                                      ; preds = %for.cond.70
  %51 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %51 to i64
  %arrayidx75 = getelementptr inbounds [8192 x i8], [8192 x i8]* @MEMBER, i32 0, i64 %idxprom74
  store i8 0, i8* %arrayidx75, align 1
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.73
  %52 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %52, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.70

for.end.78:                                       ; preds = %for.cond.70
  %53 = load i32, i32* %m, align 4
  %cmp79 = icmp ult i32 %53, 3
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end.78
  %54 = load i32, i32* %m, align 4
  store i32 %54, i32* %b_size, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %for.end.78
  store i32 0, i32* %i, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.105, %if.end.82
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %D.addr, align 4
  %add84 = add nsw i32 %56, 1
  %cmp85 = icmp slt i32 %55, %add84
  br i1 %cmp85, label %for.body.87, label %for.end.107

for.body.87:                                      ; preds = %for.cond.83
  %57 = load i32, i32* %M.addr, align 4
  %sub88 = sub nsw i32 %57, 1
  %58 = load i32, i32* %m, align 4
  %59 = load i32, i32* %i, align 4
  %mul89 = mul i32 %58, %59
  %sub90 = sub i32 %sub88, %mul89
  store i32 %sub90, i32* %j, align 4
  store i32 0, i32* %hash, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.100, %for.body.87
  %60 = load i32, i32* %k, align 4
  %61 = load i32, i32* %b_size, align 4
  %cmp92 = icmp ult i32 %60, %61
  br i1 %cmp92, label %for.body.94, label %for.end.102

for.body.94:                                      ; preds = %for.cond.91
  %62 = load i32, i32* %hash, align 4
  %shl = shl i32 %62, 2
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %k, align 4
  %sub95 = sub nsw i32 %63, %64
  %idxprom96 = sext i32 %sub95 to i64
  %65 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %65, i64 %idxprom96
  %66 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %66 to i32
  %add99 = add i32 %shl, %conv98
  store i32 %add99, i32* %hash, align 4
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.94
  %67 = load i32, i32* %k, align 4
  %inc101 = add nsw i32 %67, 1
  store i32 %inc101, i32* %k, align 4
  br label %for.cond.91

for.end.102:                                      ; preds = %for.cond.91
  %68 = load i32, i32* %hash, align 4
  %idxprom103 = zext i32 %68 to i64
  %arrayidx104 = getelementptr inbounds [8192 x i8], [8192 x i8]* @MEMBER, i32 0, i64 %idxprom103
  store i8 1, i8* %arrayidx104, align 1
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.102
  %69 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %69, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.83

for.end.107:                                      ; preds = %for.cond.83
  ret void
}

; Function Attrs: nounwind uwtable
define void @agrep(i8* %pat, i32 %M, i8* %text, i8* %textend, i32 %D) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %textend.addr = alloca i8*, align 8
  %D.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %textstart = alloca i8*, align 8
  %shift = alloca i32, align 4
  %HASH = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d1 = alloca i32, align 4
  %n = alloca i32, align 4
  %cdx = alloca i32, align 4
  %Candidate = alloca [2048 x [2 x i32]], align 16
  %round = alloca i32, align 4
  %lastend = alloca i32, align 4
  %R1 = alloca [21 x i32], align 16
  %R2 = alloca [21 x i32], align 16
  %r1 = alloca i32, align 4
  %endpos = alloca i32, align 4
  %c = alloca i32, align 4
  %currentpos = alloca i32, align 4
  %Bit1 = alloca i32, align 4
  %r_newline = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i8* %textend, i8** %textend.addr, align 8
  store i32 %D, i32* %D.addr, align 4
  %0 = load i32, i32* %M.addr, align 4
  %1 = load i32, i32* %D.addr, align 4
  %add = add nsw i32 %1, 1
  %div = sdiv i32 %0, %add
  store i32 %div, i32* %m, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %lastend, align 4
  %arrayidx = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 1
  store i32 0, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  store i32 0, i32* %arrayidx3, align 4
  %2 = load i32, i32* @shift_1, align 4
  store i32 %2, i32* %d1, align 4
  store i32 0, i32* %cdx, align 4
  %3 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %m, align 4
  store i32 %4, i32* %r1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 3, i32* %r1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %text.addr, align 8
  store i8* %5, i8** %textstart, align 8
  %6 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %shift, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.78, %if.end
  %7 = load i8*, i8** %text.addr, align 8
  %8 = load i8*, i8** %textend.addr, align 8
  %cmp4 = icmp ult i8* %7, %8
  br i1 %cmp4, label %while.body, label %while.end.79

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %shift, align 4
  %10 = load i8*, i8** %text.addr, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %text.addr, align 8
  %11 = load i8, i8* %add.ptr, align 1
  %idxprom = zext i8 %11 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %shift, align 4
  %13 = load i8*, i8** %text.addr, align 8
  %14 = load i8*, i8** %textend.addr, align 8
  %cmp6 = icmp uge i8* %13, %14
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  br label %while.end.79

if.end.9:                                         ; preds = %while.body
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.29, %if.end.9
  %15 = load i32, i32* %shift, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.10
  %16 = load i32, i32* %shift, align 4
  %17 = load i8*, i8** %text.addr, align 8
  %idx.ext12 = sext i32 %16 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %17, i64 %idx.ext12
  store i8* %add.ptr13, i8** %text.addr, align 8
  %18 = load i8, i8* %add.ptr13, align 1
  %idxprom14 = zext i8 %18 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom14
  %19 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %19 to i32
  store i32 %conv16, i32* %shift, align 4
  %20 = load i8*, i8** %text.addr, align 8
  %21 = load i8*, i8** %textend.addr, align 8
  %cmp17 = icmp uge i8* %20, %21
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.body.11
  br label %while.end

if.end.20:                                        ; preds = %while.body.11
  %22 = load i32, i32* %shift, align 4
  %23 = load i8*, i8** %text.addr, align 8
  %idx.ext21 = sext i32 %22 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %23, i64 %idx.ext21
  store i8* %add.ptr22, i8** %text.addr, align 8
  %24 = load i8, i8* %add.ptr22, align 1
  %idxprom23 = zext i8 %24 to i64
  %arrayidx24 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom23
  %25 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %25 to i32
  store i32 %conv25, i32* %shift, align 4
  %26 = load i8*, i8** %text.addr, align 8
  %27 = load i8*, i8** %textend.addr, align 8
  %cmp26 = icmp uge i8* %26, %27
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.20
  br label %while.end

if.end.29:                                        ; preds = %if.end.20
  br label %while.cond.10

while.end:                                        ; preds = %if.then.28, %if.then.19, %while.cond.10
  %28 = load i8*, i8** %text.addr, align 8
  %29 = load i8*, i8** %textend.addr, align 8
  %cmp30 = icmp uge i8* %28, %29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %while.end
  br label %while.end.79

if.end.33:                                        ; preds = %while.end
  store i32 1, i32* %j, align 4
  %30 = load i8*, i8** %text.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv34 = zext i8 %31 to i32
  store i32 %conv34, i32* %HASH, align 4
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.38, %if.end.33
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %r1, align 4
  %cmp36 = icmp ult i32 %32, %33
  br i1 %cmp36, label %while.body.38, label %while.end.43

while.body.38:                                    ; preds = %while.cond.35
  %34 = load i32, i32* %HASH, align 4
  %shl = shl i32 %34, 2
  %35 = load i8*, i8** %text.addr, align 8
  %36 = load i32, i32* %j, align 4
  %idx.ext39 = sext i32 %36 to i64
  %idx.neg = sub i64 0, %idx.ext39
  %add.ptr40 = getelementptr inbounds i8, i8* %35, i64 %idx.neg
  %37 = load i8, i8* %add.ptr40, align 1
  %conv41 = zext i8 %37 to i32
  %add42 = add nsw i32 %shl, %conv41
  store i32 %add42, i32* %HASH, align 4
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond.35

while.end.43:                                     ; preds = %while.cond.35
  %39 = load i32, i32* %HASH, align 4
  %idxprom44 = sext i32 %39 to i64
  %arrayidx45 = getelementptr inbounds [8192 x i8], [8192 x i8]* @MEMBER, i32 0, i64 %idxprom44
  %40 = load i8, i8* %arrayidx45, align 1
  %tobool46 = icmp ne i8 %40, 0
  br i1 %tobool46, label %if.then.47, label %if.else.77

if.then.47:                                       ; preds = %while.end.43
  %41 = load i8*, i8** %text.addr, align 8
  %42 = load i8*, i8** %textstart, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv48 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv48, i32* %i, align 4
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %M.addr, align 4
  %sub49 = sub nsw i32 %43, %44
  %45 = load i32, i32* %D.addr, align 4
  %sub50 = sub nsw i32 %sub49, %45
  %sub51 = sub nsw i32 %sub50, 10
  %46 = load i32, i32* %cdx, align 4
  %idxprom52 = sext i32 %46 to i64
  %arrayidx53 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 %idxprom52
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx53, i32 0, i64 1
  %47 = load i32, i32* %arrayidx54, align 4
  %cmp55 = icmp sgt i32 %sub51, %47
  br i1 %cmp55, label %if.then.57, label %if.else.70

if.then.57:                                       ; preds = %if.then.47
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %M.addr, align 4
  %sub58 = sub nsw i32 %48, %49
  %50 = load i32, i32* %D.addr, align 4
  %sub59 = sub nsw i32 %sub58, %50
  %sub60 = sub nsw i32 %sub59, 2
  %51 = load i32, i32* %cdx, align 4
  %inc61 = add nsw i32 %51, 1
  store i32 %inc61, i32* %cdx, align 4
  %idxprom62 = sext i32 %inc61 to i64
  %arrayidx63 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx63, i32 0, i64 0
  store i32 %sub60, i32* %arrayidx64, align 4
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %M.addr, align 4
  %add65 = add nsw i32 %52, %53
  %54 = load i32, i32* %D.addr, align 4
  %add66 = add nsw i32 %add65, %54
  %55 = load i32, i32* %cdx, align 4
  %idxprom67 = sext i32 %55 to i64
  %arrayidx68 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx68, i32 0, i64 1
  store i32 %add66, i32* %arrayidx69, align 4
  br label %if.end.76

if.else.70:                                       ; preds = %if.then.47
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %M.addr, align 4
  %add71 = add nsw i32 %56, %57
  %58 = load i32, i32* %D.addr, align 4
  %add72 = add nsw i32 %add71, %58
  %59 = load i32, i32* %cdx, align 4
  %idxprom73 = sext i32 %59 to i64
  %arrayidx74 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx74, i32 0, i64 1
  store i32 %add72, i32* %arrayidx75, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.70, %if.then.57
  %60 = load i32, i32* %d1, align 4
  store i32 %60, i32* %shift, align 4
  br label %if.end.78

if.else.77:                                       ; preds = %while.end.43
  %61 = load i32, i32* %d1, align 4
  store i32 %61, i32* %shift, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.end.76
  br label %while.cond

while.end.79:                                     ; preds = %if.then.32, %if.then.8, %while.cond
  %62 = load i8*, i8** %textstart, align 8
  store i8* %62, i8** %text.addr, align 8
  %63 = load i8*, i8** %textend.addr, align 8
  %64 = load i8*, i8** %textstart, align 8
  %sub.ptr.lhs.cast80 = ptrtoint i8* %63 to i64
  %sub.ptr.rhs.cast81 = ptrtoint i8* %64 to i64
  %sub.ptr.sub82 = sub i64 %sub.ptr.lhs.cast80, %sub.ptr.rhs.cast81
  %conv83 = trunc i64 %sub.ptr.sub82 to i32
  store i32 %conv83, i32* %n, align 4
  store i32 10, i32* %r_newline, align 4
  %arrayidx84 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 1
  %arrayidx85 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx84, i32 0, i64 0
  %65 = load i32, i32* %arrayidx85, align 4
  %cmp86 = icmp slt i32 %65, 0
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %while.end.79
  %arrayidx89 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 1
  %arrayidx90 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx89, i32 0, i64 0
  store i32 0, i32* %arrayidx90, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %while.end.79
  %66 = load i32, i32* @endposition, align 4
  store i32 %66, i32* %endpos, align 4
  store i32 -2147483648, i32* %Bit1, align 4
  store i32 0, i32* %round, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.293, %if.end.91
  %67 = load i32, i32* %round, align 4
  %68 = load i32, i32* %cdx, align 4
  %cmp92 = icmp sle i32 %67, %68
  br i1 %cmp92, label %for.body, label %for.end.295

for.body:                                         ; preds = %for.cond
  %69 = load i32, i32* %round, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx95, i32 0, i64 0
  %70 = load i32, i32* %arrayidx96, align 4
  store i32 %70, i32* %i, align 4
  %71 = load i32, i32* %round, align 4
  %idxprom97 = sext i32 %71 to i64
  %arrayidx98 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx98, i32 0, i64 1
  %72 = load i32, i32* %arrayidx99, align 4
  %73 = load i32, i32* %n, align 4
  %cmp100 = icmp sgt i32 %72, %73
  br i1 %cmp100, label %if.then.102, label %if.end.106

if.then.102:                                      ; preds = %for.body
  %74 = load i32, i32* %n, align 4
  %75 = load i32, i32* %round, align 4
  %idxprom103 = sext i32 %75 to i64
  %arrayidx104 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx104, i32 0, i64 1
  store i32 %74, i32* %arrayidx105, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.102, %for.body
  %76 = load i32, i32* %i, align 4
  %cmp107 = icmp slt i32 %76, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.106
  store i32 0, i32* %i, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.106
  %arrayidx111 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 0
  store i32 -1, i32* %arrayidx111, align 4
  %arrayidx112 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 0
  store i32 -1, i32* %arrayidx112, align 4
  %77 = load i32, i32* %Bit1, align 4
  %neg = xor i32 %77, -1
  %arrayidx113 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 1
  store i32 %neg, i32* %arrayidx113, align 4
  %arrayidx114 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 1
  store i32 %neg, i32* %arrayidx114, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc, %if.end.110
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* %D.addr, align 4
  %cmp116 = icmp sle i32 %78, %79
  br i1 %cmp116, label %for.body.118, label %for.end

for.body.118:                                     ; preds = %for.cond.115
  %80 = load i32, i32* %k, align 4
  %sub119 = sub nsw i32 %80, 1
  %idxprom120 = sext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom120
  %81 = load i32, i32* %arrayidx121, align 4
  %shr = lshr i32 %81, 1
  %82 = load i32, i32* %k, align 4
  %sub122 = sub nsw i32 %82, 1
  %idxprom123 = sext i32 %sub122 to i64
  %arrayidx124 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom123
  %83 = load i32, i32* %arrayidx124, align 4
  %and = and i32 %shr, %83
  %84 = load i32, i32* %k, align 4
  %idxprom125 = sext i32 %84 to i64
  %arrayidx126 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom125
  store i32 %and, i32* %arrayidx126, align 4
  %85 = load i32, i32* %k, align 4
  %idxprom127 = sext i32 %85 to i64
  %arrayidx128 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom127
  store i32 %and, i32* %arrayidx128, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.118
  %86 = load i32, i32* %k, align 4
  %inc129 = add nsw i32 %86, 1
  store i32 %inc129, i32* %k, align 4
  br label %for.cond.115

for.end:                                          ; preds = %for.cond.115
  br label %while.cond.130

while.cond.130:                                   ; preds = %if.end.291, %for.end
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %round, align 4
  %idxprom131 = sext i32 %88 to i64
  %arrayidx132 = getelementptr inbounds [2048 x [2 x i32]], [2048 x [2 x i32]]* %Candidate, i32 0, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx132, i32 0, i64 1
  %89 = load i32, i32* %arrayidx133, align 4
  %cmp134 = icmp slt i32 %87, %89
  br i1 %cmp134, label %while.body.136, label %while.end.292

while.body.136:                                   ; preds = %while.cond.130
  %90 = load i32, i32* %i, align 4
  %inc137 = add nsw i32 %90, 1
  store i32 %inc137, i32* %i, align 4
  %idxprom138 = sext i32 %90 to i64
  %91 = load i8*, i8** %text.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %91, i64 %idxprom138
  %92 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %92 to i32
  store i32 %conv140, i32* %c, align 4
  %93 = load i32, i32* %c, align 4
  %94 = load i32, i32* %r_newline, align 4
  %cmp141 = icmp eq i32 %93, %94
  br i1 %cmp141, label %if.then.143, label %if.end.155

if.then.143:                                      ; preds = %while.body.136
  store i32 0, i32* %k, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.152, %if.then.143
  %95 = load i32, i32* %k, align 4
  %96 = load i32, i32* %D.addr, align 4
  %cmp145 = icmp sle i32 %95, %96
  br i1 %cmp145, label %for.body.147, label %for.end.154

for.body.147:                                     ; preds = %for.cond.144
  %97 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %97 to i64
  %arrayidx149 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom148
  store i32 -1, i32* %arrayidx149, align 4
  %98 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %98 to i64
  %arrayidx151 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom150
  store i32 -1, i32* %arrayidx151, align 4
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.147
  %99 = load i32, i32* %k, align 4
  %inc153 = add nsw i32 %99, 1
  store i32 %inc153, i32* %k, align 4
  br label %for.cond.144

for.end.154:                                      ; preds = %for.cond.144
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %while.body.136
  %100 = load i32, i32* %c, align 4
  %idxprom156 = zext i32 %100 to i64
  %arrayidx157 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom156
  %101 = load i32, i32* %arrayidx157, align 4
  store i32 %101, i32* %r1, align 4
  %arrayidx158 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 0
  %102 = load i32, i32* %arrayidx158, align 4
  %shr159 = lshr i32 %102, 1
  %103 = load i32, i32* %r1, align 4
  %or = or i32 %shr159, %103
  %arrayidx160 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 0
  store i32 %or, i32* %arrayidx160, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.184, %if.end.155
  %104 = load i32, i32* %k, align 4
  %105 = load i32, i32* %D.addr, align 4
  %cmp162 = icmp sle i32 %104, %105
  br i1 %cmp162, label %for.body.164, label %for.end.186

for.body.164:                                     ; preds = %for.cond.161
  %106 = load i32, i32* %k, align 4
  %idxprom165 = sext i32 %106 to i64
  %arrayidx166 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom165
  %107 = load i32, i32* %arrayidx166, align 4
  %shr167 = lshr i32 %107, 1
  %108 = load i32, i32* %r1, align 4
  %or168 = or i32 %shr167, %108
  %109 = load i32, i32* %k, align 4
  %sub169 = sub nsw i32 %109, 1
  %idxprom170 = sext i32 %sub169 to i64
  %arrayidx171 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom170
  %110 = load i32, i32* %arrayidx171, align 4
  %and172 = and i32 %or168, %110
  %111 = load i32, i32* %k, align 4
  %sub173 = sub nsw i32 %111, 1
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom174
  %112 = load i32, i32* %arrayidx175, align 4
  %113 = load i32, i32* %k, align 4
  %sub176 = sub nsw i32 %113, 1
  %idxprom177 = sext i32 %sub176 to i64
  %arrayidx178 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom177
  %114 = load i32, i32* %arrayidx178, align 4
  %and179 = and i32 %112, %114
  %shr180 = lshr i32 %and179, 1
  %and181 = and i32 %and172, %shr180
  %115 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %115 to i64
  %arrayidx183 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom182
  store i32 %and181, i32* %arrayidx183, align 4
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.body.164
  %116 = load i32, i32* %k, align 4
  %inc185 = add nsw i32 %116, 1
  store i32 %inc185, i32* %k, align 4
  br label %for.cond.161

for.end.186:                                      ; preds = %for.cond.161
  %117 = load i32, i32* %D.addr, align 4
  %idxprom187 = sext i32 %117 to i64
  %arrayidx188 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom187
  %118 = load i32, i32* %arrayidx188, align 4
  %119 = load i32, i32* %endpos, align 4
  %and189 = and i32 %118, %119
  %cmp190 = icmp eq i32 %and189, 0
  br i1 %cmp190, label %if.then.192, label %if.end.213

if.then.192:                                      ; preds = %for.end.186
  %120 = load i32, i32* @num_of_matched, align 4
  %inc193 = add nsw i32 %120, 1
  store i32 %inc193, i32* @num_of_matched, align 4
  %121 = load i32, i32* @FILENAMEONLY, align 4
  %tobool194 = icmp ne i32 %121, 0
  br i1 %tobool194, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.then.192
  br label %return

if.end.196:                                       ; preds = %if.then.192
  %122 = load i32, i32* %i, align 4
  store i32 %122, i32* %currentpos, align 4
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %lastend, align 4
  %cmp197 = icmp sle i32 %123, %124
  br i1 %cmp197, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %if.end.196
  %125 = load i32, i32* %lastend, align 4
  store i32 %125, i32* %i, align 4
  br label %if.end.201

if.else.200:                                      ; preds = %if.end.196
  %126 = load i8*, i8** %text.addr, align 8
  call void @s_output(i8* %126, i32* %currentpos)
  %127 = load i32, i32* %currentpos, align 4
  store i32 %127, i32* %i, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.200, %if.then.199
  %128 = load i32, i32* %i, align 4
  store i32 %128, i32* %lastend, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.210, %if.end.201
  %129 = load i32, i32* %k, align 4
  %130 = load i32, i32* %D.addr, align 4
  %cmp203 = icmp sle i32 %129, %130
  br i1 %cmp203, label %for.body.205, label %for.end.212

for.body.205:                                     ; preds = %for.cond.202
  %131 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %131 to i64
  %arrayidx207 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom206
  store i32 -1, i32* %arrayidx207, align 4
  %132 = load i32, i32* %k, align 4
  %idxprom208 = sext i32 %132 to i64
  %arrayidx209 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom208
  store i32 -1, i32* %arrayidx209, align 4
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.body.205
  %133 = load i32, i32* %k, align 4
  %inc211 = add nsw i32 %133, 1
  store i32 %inc211, i32* %k, align 4
  br label %for.cond.202

for.end.212:                                      ; preds = %for.cond.202
  br label %if.end.213

if.end.213:                                       ; preds = %for.end.212, %for.end.186
  %134 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %134, 1
  store i32 %inc214, i32* %i, align 4
  %idxprom215 = sext i32 %134 to i64
  %135 = load i8*, i8** %text.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %135, i64 %idxprom215
  %136 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %136 to i32
  store i32 %conv217, i32* %c, align 4
  %137 = load i32, i32* %c, align 4
  %138 = load i32, i32* %r_newline, align 4
  %cmp218 = icmp eq i32 %137, %138
  br i1 %cmp218, label %if.then.220, label %if.end.232

if.then.220:                                      ; preds = %if.end.213
  store i32 0, i32* %k, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.229, %if.then.220
  %139 = load i32, i32* %k, align 4
  %140 = load i32, i32* %D.addr, align 4
  %cmp222 = icmp sle i32 %139, %140
  br i1 %cmp222, label %for.body.224, label %for.end.231

for.body.224:                                     ; preds = %for.cond.221
  %141 = load i32, i32* %k, align 4
  %idxprom225 = sext i32 %141 to i64
  %arrayidx226 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom225
  store i32 -1, i32* %arrayidx226, align 4
  %142 = load i32, i32* %k, align 4
  %idxprom227 = sext i32 %142 to i64
  %arrayidx228 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom227
  store i32 -1, i32* %arrayidx228, align 4
  br label %for.inc.229

for.inc.229:                                      ; preds = %for.body.224
  %143 = load i32, i32* %k, align 4
  %inc230 = add nsw i32 %143, 1
  store i32 %inc230, i32* %k, align 4
  br label %for.cond.221

for.end.231:                                      ; preds = %for.cond.221
  br label %if.end.232

if.end.232:                                       ; preds = %for.end.231, %if.end.213
  %144 = load i32, i32* %c, align 4
  %idxprom233 = zext i32 %144 to i64
  %arrayidx234 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom233
  %145 = load i32, i32* %arrayidx234, align 4
  store i32 %145, i32* %r1, align 4
  %arrayidx235 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 0
  %146 = load i32, i32* %arrayidx235, align 4
  %shr236 = lshr i32 %146, 1
  %147 = load i32, i32* %r1, align 4
  %or237 = or i32 %shr236, %147
  %arrayidx238 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 0
  store i32 %or237, i32* %arrayidx238, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.262, %if.end.232
  %148 = load i32, i32* %k, align 4
  %149 = load i32, i32* %D.addr, align 4
  %cmp240 = icmp sle i32 %148, %149
  br i1 %cmp240, label %for.body.242, label %for.end.264

for.body.242:                                     ; preds = %for.cond.239
  %150 = load i32, i32* %k, align 4
  %idxprom243 = sext i32 %150 to i64
  %arrayidx244 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom243
  %151 = load i32, i32* %arrayidx244, align 4
  %shr245 = lshr i32 %151, 1
  %152 = load i32, i32* %r1, align 4
  %or246 = or i32 %shr245, %152
  %153 = load i32, i32* %k, align 4
  %sub247 = sub nsw i32 %153, 1
  %idxprom248 = sext i32 %sub247 to i64
  %arrayidx249 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom248
  %154 = load i32, i32* %arrayidx249, align 4
  %and250 = and i32 %or246, %154
  %155 = load i32, i32* %k, align 4
  %sub251 = sub nsw i32 %155, 1
  %idxprom252 = sext i32 %sub251 to i64
  %arrayidx253 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom252
  %156 = load i32, i32* %arrayidx253, align 4
  %157 = load i32, i32* %k, align 4
  %sub254 = sub nsw i32 %157, 1
  %idxprom255 = sext i32 %sub254 to i64
  %arrayidx256 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom255
  %158 = load i32, i32* %arrayidx256, align 4
  %and257 = and i32 %156, %158
  %shr258 = lshr i32 %and257, 1
  %and259 = and i32 %and250, %shr258
  %159 = load i32, i32* %k, align 4
  %idxprom260 = sext i32 %159 to i64
  %arrayidx261 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom260
  store i32 %and259, i32* %arrayidx261, align 4
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.body.242
  %160 = load i32, i32* %k, align 4
  %inc263 = add nsw i32 %160, 1
  store i32 %inc263, i32* %k, align 4
  br label %for.cond.239

for.end.264:                                      ; preds = %for.cond.239
  %161 = load i32, i32* %D.addr, align 4
  %idxprom265 = sext i32 %161 to i64
  %arrayidx266 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom265
  %162 = load i32, i32* %arrayidx266, align 4
  %163 = load i32, i32* %endpos, align 4
  %and267 = and i32 %162, %163
  %cmp268 = icmp eq i32 %and267, 0
  br i1 %cmp268, label %if.then.270, label %if.end.291

if.then.270:                                      ; preds = %for.end.264
  %164 = load i32, i32* %i, align 4
  store i32 %164, i32* %currentpos, align 4
  %165 = load i32, i32* @num_of_matched, align 4
  %inc271 = add nsw i32 %165, 1
  store i32 %inc271, i32* @num_of_matched, align 4
  %166 = load i32, i32* @FILENAMEONLY, align 4
  %tobool272 = icmp ne i32 %166, 0
  br i1 %tobool272, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.then.270
  br label %return

if.end.274:                                       ; preds = %if.then.270
  %167 = load i32, i32* %i, align 4
  %168 = load i32, i32* %lastend, align 4
  %cmp275 = icmp sle i32 %167, %168
  br i1 %cmp275, label %if.then.277, label %if.else.278

if.then.277:                                      ; preds = %if.end.274
  %169 = load i32, i32* %lastend, align 4
  store i32 %169, i32* %i, align 4
  br label %if.end.279

if.else.278:                                      ; preds = %if.end.274
  %170 = load i8*, i8** %text.addr, align 8
  call void @s_output(i8* %170, i32* %currentpos)
  %171 = load i32, i32* %currentpos, align 4
  store i32 %171, i32* %i, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.278, %if.then.277
  %172 = load i32, i32* %i, align 4
  store i32 %172, i32* %lastend, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.288, %if.end.279
  %173 = load i32, i32* %k, align 4
  %174 = load i32, i32* %D.addr, align 4
  %cmp281 = icmp sle i32 %173, %174
  br i1 %cmp281, label %for.body.283, label %for.end.290

for.body.283:                                     ; preds = %for.cond.280
  %175 = load i32, i32* %k, align 4
  %idxprom284 = sext i32 %175 to i64
  %arrayidx285 = getelementptr inbounds [21 x i32], [21 x i32]* %R2, i32 0, i64 %idxprom284
  store i32 -1, i32* %arrayidx285, align 4
  %176 = load i32, i32* %k, align 4
  %idxprom286 = sext i32 %176 to i64
  %arrayidx287 = getelementptr inbounds [21 x i32], [21 x i32]* %R1, i32 0, i64 %idxprom286
  store i32 -1, i32* %arrayidx287, align 4
  br label %for.inc.288

for.inc.288:                                      ; preds = %for.body.283
  %177 = load i32, i32* %k, align 4
  %inc289 = add nsw i32 %177, 1
  store i32 %inc289, i32* %k, align 4
  br label %for.cond.280

for.end.290:                                      ; preds = %for.cond.280
  br label %if.end.291

if.end.291:                                       ; preds = %for.end.290, %for.end.264
  br label %while.cond.130

while.end.292:                                    ; preds = %while.cond.130
  br label %for.inc.293

for.inc.293:                                      ; preds = %while.end.292
  %178 = load i32, i32* %round, align 4
  %inc294 = add nsw i32 %178, 1
  store i32 %inc294, i32* %round, align 4
  br label %for.cond

for.end.295:                                      ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end.295, %if.then.273, %if.then.195
  ret void
}

; Function Attrs: nounwind uwtable
define void @prep_bm(i8* %Pattern, i32 %m) #0 {
entry:
  %Pattern.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %hash = alloca i32, align 4
  %lastc = alloca i8, align 1
  store i8* %Pattern, i8** %Pattern.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %m.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.21, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %5, 0
  br i1 %cmp2, label %for.body.4, label %for.end.22

for.body.4:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %idxprom7 = zext i8 %8 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  store i32 %conv9, i32* %hash, align 4
  %10 = load i32, i32* %hash, align 4
  %idxprom10 = zext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom10
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %12 = load i32, i32* %m.addr, align 4
  %sub13 = sub nsw i32 %12, 1
  %cmp14 = icmp sge i32 %conv12, %sub13
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %13 = load i32, i32* %m.addr, align 4
  %sub16 = sub nsw i32 %13, 1
  %14 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 %sub16, %14
  %conv18 = trunc i32 %sub17 to i8
  %15 = load i32, i32* %hash, align 4
  %idxprom19 = zext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom19
  store i8 %conv18, i8* %arrayidx20, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.1

for.end.22:                                       ; preds = %for.cond.1
  %17 = load i32, i32* %m.addr, align 4
  %sub23 = sub nsw i32 %17, 1
  store i32 %sub23, i32* @shift_1, align 4
  %18 = load i32, i32* %m.addr, align 4
  %sub24 = sub nsw i32 %18, 1
  %idxprom25 = sext i32 %sub24 to i64
  %19 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %19, i64 %idxprom25
  %20 = load i8, i8* %arrayidx26, align 1
  %idxprom27 = zext i8 %20 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom27
  %21 = load i8, i8* %arrayidx28, align 1
  store i8 %21, i8* %lastc, align 1
  %22 = load i32, i32* %m.addr, align 4
  %sub29 = sub nsw i32 %22, 2
  store i32 %sub29, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.46, %for.end.22
  %23 = load i32, i32* %i, align 4
  %cmp31 = icmp sge i32 %23, 0
  br i1 %cmp31, label %for.body.33, label %for.end.48

for.body.33:                                      ; preds = %for.cond.30
  %24 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %24 to i64
  %25 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 %idxprom34
  %26 = load i8, i8* %arrayidx35, align 1
  %idxprom36 = zext i8 %26 to i64
  %arrayidx37 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom36
  %27 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %27 to i32
  %28 = load i8, i8* %lastc, align 1
  %conv39 = zext i8 %28 to i32
  %cmp40 = icmp eq i32 %conv38, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %for.body.33
  %29 = load i32, i32* %m.addr, align 4
  %sub43 = sub nsw i32 %29, 1
  %30 = load i32, i32* %i, align 4
  %sub44 = sub nsw i32 %sub43, %30
  store i32 %sub44, i32* @shift_1, align 4
  store i32 -1, i32* %i, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %for.body.33
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %31 = load i32, i32* %i, align 4
  %dec47 = add nsw i32 %31, -1
  store i32 %dec47, i32* %i, align 4
  br label %for.cond.30

for.end.48:                                       ; preds = %for.cond.30
  %32 = load i32, i32* @shift_1, align 4
  %cmp49 = icmp eq i32 %32, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.end.48
  store i32 1, i32* @shift_1, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %for.end.48
  %33 = load i32, i32* @NOUPPER, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.53, label %if.end.66

if.then.53:                                       ; preds = %if.end.52
  store i32 65, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.63, %if.then.53
  %34 = load i32, i32* %i, align 4
  %cmp55 = icmp sle i32 %34, 90
  br i1 %cmp55, label %for.body.57, label %for.end.65

for.body.57:                                      ; preds = %for.cond.54
  %35 = load i32, i32* %i, align 4
  %add = add nsw i32 %35, 97
  %sub58 = sub nsw i32 %add, 65
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom59
  %36 = load i8, i8* %arrayidx60, align 1
  %37 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %37 to i64
  %arrayidx62 = getelementptr inbounds [256 x i8], [256 x i8]* @SHIFT, i32 0, i64 %idxprom61
  store i8 %36, i8* %arrayidx62, align 1
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.57
  %38 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %38, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.54

for.end.65:                                       ; preds = %for.cond.54
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %if.end.52
  ret void
}

; Function Attrs: nounwind uwtable
define void @a_monkey(i8* %pat, i32 %m, i8* %text, i8* %textend, i32 %D) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %textend.addr = alloca i8*, align 8
  %D.addr = alloca i32, align 4
  %oldtext = alloca i8*, align 8
  %hash = alloca i32, align 4
  %hashmask = alloca i32, align 4
  %suffix_error = alloca i32, align 4
  %m1 = alloca i32, align 4
  %pos = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i8* %textend, i8** %textend.addr, align 8
  store i32 %D, i32* %D.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load i32, i32* %D.addr, align 4
  %sub1 = sub nsw i32 %sub, %1
  store i32 %sub1, i32* %m1, align 4
  %2 = load i32, i32* @Hashmask, align 4
  store i32 %2, i32* %hashmask, align 4
  %3 = load i8*, i8** %text.addr, align 8
  store i8* %3, i8** %oldtext, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.60, %entry
  %4 = load i8*, i8** %text.addr, align 8
  %5 = load i8*, i8** %textend.addr, align 8
  %cmp = icmp ult i8* %4, %5
  br i1 %cmp, label %while.body, label %while.end.61

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %text.addr, align 8
  %7 = load i32, i32* %m1, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %text.addr, align 8
  store i32 0, i32* %suffix_error, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.end, %while.body
  %8 = load i32, i32* %suffix_error, align 4
  %9 = load i32, i32* %D.addr, align 4
  %cmp3 = icmp ule i32 %8, %9
  br i1 %cmp3, label %while.body.4, label %while.end.9

while.body.4:                                     ; preds = %while.cond.2
  %10 = load i8*, i8** %text.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %text.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %hash, align 4
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.6, %while.body.4
  %12 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds [65536 x i8], [65536 x i8]* @MEMBER_1, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %while.body.6, label %while.end

while.body.6:                                     ; preds = %while.cond.5
  %14 = load i32, i32* %hash, align 4
  %shl = shl i32 %14, 8
  %15 = load i8*, i8** %text.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr7, i8** %text.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv8 = zext i8 %16 to i32
  %add = add i32 %shl, %conv8
  %17 = load i32, i32* %hashmask, align 4
  %and = and i32 %add, %17
  store i32 %and, i32* %hash, align 4
  br label %while.cond.5

while.end:                                        ; preds = %while.cond.5
  %18 = load i32, i32* %suffix_error, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %suffix_error, align 4
  br label %while.cond.2

while.end.9:                                      ; preds = %while.cond.2
  %19 = load i8*, i8** %text.addr, align 8
  %20 = load i8*, i8** %oldtext, align 8
  %cmp10 = icmp ule i8* %19, %20
  br i1 %cmp10, label %if.then, label %if.end.60

if.then:                                          ; preds = %while.end.9
  %21 = load i32, i32* %m.addr, align 4
  %22 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 2, %22
  %23 = load i32, i32* %D.addr, align 4
  %add12 = add nsw i32 %mul, %23
  %24 = load i32, i32* %D.addr, align 4
  %25 = load i8*, i8** %pat.addr, align 8
  %26 = load i8*, i8** %oldtext, align 8
  %call = call i32 @verify(i32 %21, i32 %add12, i32 %24, i8* %25, i8* %26)
  store i32 %call, i32* %pos, align 4
  %cmp13 = icmp sgt i32 %call, 0
  br i1 %cmp13, label %if.then.15, label %if.else.56

if.then.15:                                       ; preds = %if.then
  %27 = load i8*, i8** %oldtext, align 8
  %28 = load i32, i32* %pos, align 4
  %idx.ext16 = sext i32 %28 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %27, i64 %idx.ext16
  store i8* %add.ptr17, i8** %text.addr, align 8
  %29 = load i8*, i8** %text.addr, align 8
  %30 = load i8*, i8** %textend.addr, align 8
  %cmp18 = icmp ugt i8* %29, %30
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.15
  br label %while.end.61

if.end:                                           ; preds = %if.then.15
  %31 = load i32, i32* @num_of_matched, align 4
  %inc21 = add nsw i32 %31, 1
  store i32 %inc21, i32* @num_of_matched, align 4
  %32 = load i32, i32* @FILENAMEONLY, align 4
  %tobool22 = icmp ne i32 %32, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  br label %while.end.61

if.end.24:                                        ; preds = %if.end
  %33 = load i32, i32* @COUNT, align 4
  %tobool25 = icmp ne i32 %33, 0
  br i1 %tobool25, label %if.else, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %34 = load i32, i32* @FNAME, align 4
  %tobool27 = icmp ne i32 %34, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.26
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.26
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.36, %if.end.30
  %35 = load i8*, i8** %text.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %incdec.ptr32, i8** %text.addr, align 8
  %36 = load i8, i8* %incdec.ptr32, align 1
  %conv33 = zext i8 %36 to i32
  %cmp34 = icmp ne i32 %conv33, 10
  br i1 %cmp34, label %while.body.36, label %while.end.37

while.body.36:                                    ; preds = %while.cond.31
  br label %while.cond.31

while.end.37:                                     ; preds = %while.cond.31
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.43, %while.end.37
  %37 = load i8*, i8** %text.addr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr39, i8** %text.addr, align 8
  %38 = load i8, i8* %incdec.ptr39, align 1
  %conv40 = zext i8 %38 to i32
  %cmp41 = icmp ne i32 %conv40, 10
  br i1 %cmp41, label %while.body.43, label %while.end.46

while.body.43:                                    ; preds = %while.cond.38
  %39 = load i8*, i8** %text.addr, align 8
  %40 = load i8, i8* %39, align 1
  %conv44 = zext i8 %40 to i32
  %call45 = call i32 @putchar(i32 %conv44)
  br label %while.cond.38

while.end.46:                                     ; preds = %while.cond.38
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.55

if.else:                                          ; preds = %if.end.24
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.52, %if.else
  %41 = load i8*, i8** %text.addr, align 8
  %42 = load i8, i8* %41, align 1
  %conv49 = zext i8 %42 to i32
  %cmp50 = icmp ne i32 %conv49, 10
  br i1 %cmp50, label %while.body.52, label %while.end.54

while.body.52:                                    ; preds = %while.cond.48
  %43 = load i8*, i8** %text.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr53, i8** %text.addr, align 8
  br label %while.cond.48

while.end.54:                                     ; preds = %while.cond.48
  br label %if.end.55

if.end.55:                                        ; preds = %while.end.54, %while.end.46
  br label %if.end.59

if.else.56:                                       ; preds = %if.then
  %44 = load i8*, i8** %oldtext, align 8
  %45 = load i32, i32* %m.addr, align 4
  %idx.ext57 = sext i32 %45 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %44, i64 %idx.ext57
  store i8* %add.ptr58, i8** %text.addr, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.end.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %while.end.9
  %46 = load i8*, i8** %text.addr, align 8
  store i8* %46, i8** %oldtext, align 8
  br label %while.cond

while.end.61:                                     ; preds = %if.then.20, %if.then.23, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @monkey(i8* %pat, i32 %m, i8* %text, i8* %textend) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %textend.addr = alloca i8*, align 8
  %hash = alloca i32, align 4
  %shift = alloca i8, align 1
  %m1 = alloca i32, align 4
  %j = alloca i32, align 4
  %r_newline = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i8* %textend, i8** %textend.addr, align 8
  store i32 10, i32* %r_newline, align 4
  %0 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %m1, align 4
  %1 = load i8*, i8** %text.addr, align 8
  %2 = load i32, i32* %m1, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %text.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.75, %entry
  %3 = load i8*, i8** %text.addr, align 8
  %4 = load i8*, i8** %textend.addr, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %while.body, label %while.end.77

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %text.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %hash, align 4
  %7 = load i32, i32* %hash, align 4
  %shl = shl i32 %7, 3
  %8 = load i8*, i8** %text.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %8, i64 -1
  %9 = load i8, i8* %add.ptr1, align 1
  %conv2 = zext i8 %9 to i32
  %add = add i32 %shl, %conv2
  store i32 %add, i32* %hash, align 4
  %10 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  store i8 %11, i8* %shift, align 1
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.4, %while.body
  %12 = load i8, i8* %shift, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %while.body.4, label %while.end

while.body.4:                                     ; preds = %while.cond.3
  %13 = load i8*, i8** %text.addr, align 8
  %14 = load i8, i8* %shift, align 1
  %conv5 = zext i8 %14 to i32
  %idx.ext6 = sext i32 %conv5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 %idx.ext6
  store i8* %add.ptr7, i8** %text.addr, align 8
  %15 = load i8*, i8** %text.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv8 = zext i8 %16 to i32
  %shl9 = shl i32 %conv8, 3
  %17 = load i8*, i8** %text.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %17, i64 -1
  %18 = load i8, i8* %add.ptr10, align 1
  %conv11 = zext i8 %18 to i32
  %add12 = add nsw i32 %shl9, %conv11
  store i32 %add12, i32* %hash, align 4
  %19 = load i32, i32* %hash, align 4
  %idxprom13 = zext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i32 0, i64 %idxprom13
  %20 = load i8, i8* %arrayidx14, align 1
  store i8 %20, i8* %shift, align 1
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  store i32 0, i32* %j, align 4
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end, %while.end
  %21 = load i32, i32* %m1, align 4
  %22 = load i32, i32* %j, align 4
  %sub16 = sub nsw i32 %21, %22
  %idxprom17 = sext i32 %sub16 to i64
  %23 = load i8*, i8** %pat.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %23, i64 %idxprom17
  %24 = load i8, i8* %arrayidx18, align 1
  %idxprom19 = zext i8 %24 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom19
  %25 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %25 to i32
  %26 = load i8*, i8** %text.addr, align 8
  %27 = load i32, i32* %j, align 4
  %idx.ext22 = sext i32 %27 to i64
  %idx.neg = sub i64 0, %idx.ext22
  %add.ptr23 = getelementptr inbounds i8, i8* %26, i64 %idx.neg
  %28 = load i8, i8* %add.ptr23, align 1
  %idxprom24 = zext i8 %28 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @TR, i32 0, i64 %idxprom24
  %29 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %29 to i32
  %cmp27 = icmp eq i32 %conv21, %conv26
  br i1 %cmp27, label %while.body.29, label %while.end.32

while.body.29:                                    ; preds = %while.cond.15
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  %31 = load i32, i32* %m.addr, align 4
  %cmp30 = icmp eq i32 %inc, %31
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.29
  br label %while.end.32

if.end:                                           ; preds = %while.body.29
  br label %while.cond.15

while.end.32:                                     ; preds = %if.then, %while.cond.15
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %m.addr, align 4
  %cmp33 = icmp eq i32 %32, %33
  br i1 %cmp33, label %if.then.35, label %if.end.75

if.then.35:                                       ; preds = %while.end.32
  %34 = load i8*, i8** %text.addr, align 8
  %35 = load i8*, i8** %textend.addr, align 8
  %cmp36 = icmp uge i8* %34, %35
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.35
  br label %while.end.77

if.end.39:                                        ; preds = %if.then.35
  %36 = load i32, i32* @num_of_matched, align 4
  %inc40 = add nsw i32 %36, 1
  store i32 %inc40, i32* @num_of_matched, align 4
  %37 = load i32, i32* @FILENAMEONLY, align 4
  %tobool41 = icmp ne i32 %37, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  br label %while.end.77

if.end.43:                                        ; preds = %if.end.39
  %38 = load i32, i32* @COUNT, align 4
  %tobool44 = icmp ne i32 %38, 0
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.43
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.50, %if.then.45
  %39 = load i8*, i8** %text.addr, align 8
  %40 = load i8, i8* %39, align 1
  %conv47 = zext i8 %40 to i32
  %41 = load i32, i32* %r_newline, align 4
  %cmp48 = icmp ne i32 %conv47, %41
  br i1 %cmp48, label %while.body.50, label %while.end.51

while.body.50:                                    ; preds = %while.cond.46
  %42 = load i8*, i8** %text.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %text.addr, align 8
  br label %while.cond.46

while.end.51:                                     ; preds = %while.cond.46
  %43 = load i8*, i8** %text.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %incdec.ptr52, i8** %text.addr, align 8
  br label %if.end.74

if.else:                                          ; preds = %if.end.43
  %44 = load i32, i32* @FNAME, align 4
  %tobool53 = icmp ne i32 %44, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.else
  br label %while.cond.56

while.cond.56:                                    ; preds = %while.body.61, %if.end.55
  %45 = load i8*, i8** %text.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %incdec.ptr57, i8** %text.addr, align 8
  %46 = load i8, i8* %incdec.ptr57, align 1
  %conv58 = zext i8 %46 to i32
  %47 = load i32, i32* %r_newline, align 4
  %cmp59 = icmp ne i32 %conv58, %47
  br i1 %cmp59, label %while.body.61, label %while.end.62

while.body.61:                                    ; preds = %while.cond.56
  br label %while.cond.56

while.end.62:                                     ; preds = %while.cond.56
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.68, %while.end.62
  %48 = load i8*, i8** %text.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr64, i8** %text.addr, align 8
  %49 = load i8, i8* %incdec.ptr64, align 1
  %conv65 = zext i8 %49 to i32
  %50 = load i32, i32* %r_newline, align 4
  %cmp66 = icmp ne i32 %conv65, %50
  br i1 %cmp66, label %while.body.68, label %while.end.71

while.body.68:                                    ; preds = %while.cond.63
  %51 = load i8*, i8** %text.addr, align 8
  %52 = load i8, i8* %51, align 1
  %conv69 = zext i8 %52 to i32
  %call70 = call i32 @putchar(i32 %conv69)
  br label %while.cond.63

while.end.71:                                     ; preds = %while.cond.63
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %53 = load i8*, i8** %text.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %incdec.ptr73, i8** %text.addr, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %while.end.71, %while.end.51
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %while.end.32
  %54 = load i8*, i8** %text.addr, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr76, i8** %text.addr, align 8
  br label %while.cond

while.end.77:                                     ; preds = %if.then.38, %if.then.42, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @am_preprocess(i8* %Pattern) #0 {
entry:
  %Pattern.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  store i8* %Pattern, i8** %Pattern.addr, align 8
  %0 = load i8*, i8** %Pattern.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %m, align 4
  store i32 1, i32* %i, align 4
  store i32 1, i32* @Hashmask, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @Hashmask, align 4
  %shl = shl i32 %2, 1
  %add = add i32 %shl, 1
  store i32 %add, i32* @Hashmask, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.6, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 65536
  br i1 %cmp3, label %for.body.5, label %for.end.8

for.body.5:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [65536 x i8], [65536 x i8]* @MEMBER_1, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.5
  %6 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.2

for.end.8:                                        ; preds = %for.cond.2
  %7 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.17, %for.end.8
  %8 = load i32, i32* %i, align 4
  %cmp10 = icmp sge i32 %8, 0
  br i1 %cmp10, label %for.body.12, label %for.end.18

for.body.12:                                      ; preds = %for.cond.9
  %9 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %9 to i64
  %10 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 %idxprom13
  %11 = load i8, i8* %arrayidx14, align 1
  %idxprom15 = zext i8 %11 to i64
  %arrayidx16 = getelementptr inbounds [65536 x i8], [65536 x i8]* @MEMBER_1, i32 0, i64 %idxprom15
  store i8 1, i8* %arrayidx16, align 1
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.12
  %12 = load i32, i32* %i, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.9

for.end.18:                                       ; preds = %for.cond.9
  %13 = load i32, i32* %m, align 4
  %sub19 = sub nsw i32 %13, 1
  store i32 %sub19, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.35, %for.end.18
  %14 = load i32, i32* %i, align 4
  %cmp21 = icmp sgt i32 %14, 0
  br i1 %cmp21, label %for.body.23, label %for.end.37

for.body.23:                                      ; preds = %for.cond.20
  %15 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %15 to i64
  %16 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %16, i64 %idxprom24
  %17 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %17 to i32
  %shl27 = shl i32 %conv26, 8
  %18 = load i32, i32* %i, align 4
  %sub28 = sub nsw i32 %18, 1
  %idxprom29 = sext i32 %sub28 to i64
  %19 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %19, i64 %idxprom29
  %20 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %20 to i32
  %add32 = add nsw i32 %shl27, %conv31
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [65536 x i8], [65536 x i8]* @MEMBER_1, i32 0, i64 %idxprom33
  store i8 1, i8* %arrayidx34, align 1
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.23
  %21 = load i32, i32* %i, align 4
  %dec36 = add nsw i32 %21, -1
  store i32 %dec36, i32* %i, align 4
  br label %for.cond.20

for.end.37:                                       ; preds = %for.cond.20
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @m_preprocess(i8* %Pattern) #0 {
entry:
  %Pattern.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %hash = alloca i32, align 4
  store i8* %Pattern, i8** %Pattern.addr, align 8
  %0 = load i8*, i8** %Pattern.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4096
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %m, align 4
  %conv2 = trunc i32 %2 to i8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i32 0, i64 %idxprom
  store i8 %conv2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.45, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp sge i32 %6, 1
  br i1 %cmp4, label %for.body.6, label %for.end.46

for.body.6:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  store i32 %conv9, i32* %hash, align 4
  %10 = load i32, i32* %hash, align 4
  %shl = shl i32 %10, 3
  store i32 %shl, i32* %hash, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.24, %for.body.6
  %11 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %11, 256
  br i1 %cmp11, label %for.body.13, label %for.end.26

for.body.13:                                      ; preds = %for.cond.10
  %12 = load i32, i32* %hash, align 4
  %13 = load i32, i32* %j, align 4
  %add = add i32 %12, %13
  %idxprom14 = zext i32 %add to i64
  %arrayidx15 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i32 0, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %15 = load i32, i32* %m, align 4
  %cmp17 = icmp eq i32 %conv16, %15
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.13
  %16 = load i32, i32* %m, align 4
  %sub19 = sub nsw i32 %16, 1
  %conv20 = trunc i32 %sub19 to i8
  %17 = load i32, i32* %hash, align 4
  %18 = load i32, i32* %j, align 4
  %add21 = add i32 %17, %18
  %idxprom22 = zext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i32 0, i64 %idxprom22
  store i8 %conv20, i8* %arrayidx23, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.13
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %19 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  %20 = load i32, i32* %hash, align 4
  %21 = load i32, i32* %i, align 4
  %sub27 = sub nsw i32 %21, 1
  %idxprom28 = sext i32 %sub27 to i64
  %22 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 %idxprom28
  %23 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %add31 = add i32 %20, %conv30
  store i32 %add31, i32* %hash, align 4
  %24 = load i32, i32* %hash, align 4
  %idxprom32 = zext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i32 0, i64 %idxprom32
  %25 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %25 to i32
  %26 = load i32, i32* %m, align 4
  %sub35 = sub nsw i32 %26, 1
  %cmp36 = icmp sge i32 %conv34, %sub35
  br i1 %cmp36, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %for.end.26
  %27 = load i32, i32* %m, align 4
  %sub39 = sub nsw i32 %27, 1
  %28 = load i32, i32* %i, align 4
  %sub40 = sub nsw i32 %sub39, %28
  %conv41 = trunc i32 %sub40 to i8
  %29 = load i32, i32* %hash, align 4
  %idxprom42 = zext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [4096 x i8], [4096 x i8]* @SHIFT_2, i32 0, i64 %idxprom42
  store i8 %conv41, i8* %arrayidx43, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.38, %for.end.26
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %30 = load i32, i32* %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.3

for.end.46:                                       ; preds = %for.cond.3
  %31 = load i32, i32* %m, align 4
  %sub47 = sub nsw i32 %31, 1
  store i32 %sub47, i32* @shift_1, align 4
  %32 = load i32, i32* %m, align 4
  %sub48 = sub nsw i32 %32, 2
  store i32 %sub48, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.66, %for.end.46
  %33 = load i32, i32* %i, align 4
  %cmp50 = icmp sge i32 %33, 0
  br i1 %cmp50, label %for.body.52, label %for.end.68

for.body.52:                                      ; preds = %for.cond.49
  %34 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %34 to i64
  %35 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %35, i64 %idxprom53
  %36 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %36 to i32
  %37 = load i32, i32* %m, align 4
  %sub56 = sub nsw i32 %37, 1
  %idxprom57 = sext i32 %sub56 to i64
  %38 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %38, i64 %idxprom57
  %39 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %39 to i32
  %cmp60 = icmp eq i32 %conv55, %conv59
  br i1 %cmp60, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %for.body.52
  %40 = load i32, i32* %m, align 4
  %sub63 = sub nsw i32 %40, 1
  %41 = load i32, i32* %i, align 4
  %sub64 = sub nsw i32 %sub63, %41
  store i32 %sub64, i32* @shift_1, align 4
  store i32 -1, i32* %i, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %for.body.52
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %42 = load i32, i32* %i, align 4
  %dec67 = add nsw i32 %42, -1
  store i32 %dec67, i32* %i, align 4
  br label %for.cond.49

for.end.68:                                       ; preds = %for.cond.49
  %43 = load i32, i32* @shift_1, align 4
  %cmp69 = icmp eq i32 %43, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.end.68
  store i32 1, i32* @shift_1, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %for.end.68
  store i8 0, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @SHIFT_2, i32 0, i64 0), align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @monkey4(i8* %pat, i32 %m, i8* %text, i8* %textend, i32 %D) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %textend.addr = alloca i8*, align 8
  %D.addr = alloca i32, align 4
  %oldtext = alloca i8*, align 8
  %hash = alloca i32, align 4
  %hashmask = alloca i32, align 4
  %suffix_error = alloca i32, align 4
  %m1 = alloca i32, align 4
  %pos = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i8* %textend, i8** %textend.addr, align 8
  store i32 %D, i32* %D.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load i32, i32* %D.addr, align 4
  %sub1 = sub nsw i32 %sub, %1
  store i32 %sub1, i32* %m1, align 4
  %2 = load i32, i32* @Hashmask, align 4
  store i32 %2, i32* %hashmask, align 4
  %3 = load i8*, i8** %text.addr, align 8
  store i8* %3, i8** %oldtext, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.73, %entry
  %4 = load i8*, i8** %text.addr, align 8
  %5 = load i8*, i8** %textend.addr, align 8
  %cmp = icmp ult i8* %4, %5
  br i1 %cmp, label %while.body, label %while.end.74

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %text.addr, align 8
  %7 = load i32, i32* %m1, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %text.addr, align 8
  store i32 0, i32* %suffix_error, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.end, %while.body
  %8 = load i32, i32* %suffix_error, align 4
  %9 = load i32, i32* %D.addr, align 4
  %cmp3 = icmp ule i32 %8, %9
  br i1 %cmp3, label %while.body.4, label %while.end.20

while.body.4:                                     ; preds = %while.cond.2
  %10 = load i8*, i8** %text.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %text.addr, align 8
  %11 = load i8, i8* %10, align 1
  %idxprom = zext i8 %11 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %hash, align 4
  %13 = load i32, i32* %hash, align 4
  %shl = shl i32 %13, 3
  %14 = load i8*, i8** %text.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %incdec.ptr5, i8** %text.addr, align 8
  %15 = load i8, i8* %14, align 1
  %idxprom6 = zext i8 %15 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i32 0, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %16 to i32
  %add = add i32 %shl, %conv8
  %17 = load i32, i32* %hashmask, align 4
  %and = and i32 %add, %17
  store i32 %and, i32* %hash, align 4
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.12, %while.body.4
  %18 = load i32, i32* %hash, align 4
  %idxprom10 = zext i32 %18 to i64
  %19 = load i8*, i8** @MEMBER_D, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %19, i64 %idxprom10
  %20 = load i8, i8* %arrayidx11, align 1
  %tobool = icmp ne i8 %20, 0
  br i1 %tobool, label %while.body.12, label %while.end

while.body.12:                                    ; preds = %while.cond.9
  %21 = load i32, i32* %hash, align 4
  %shl13 = shl i32 %21, 3
  %22 = load i8*, i8** %text.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr14, i8** %text.addr, align 8
  %23 = load i8, i8* %22, align 1
  %idxprom15 = zext i8 %23 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i32 0, i64 %idxprom15
  %24 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %24 to i32
  %add18 = add i32 %shl13, %conv17
  %25 = load i32, i32* %hashmask, align 4
  %and19 = and i32 %add18, %25
  store i32 %and19, i32* %hash, align 4
  br label %while.cond.9

while.end:                                        ; preds = %while.cond.9
  %26 = load i32, i32* %suffix_error, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %suffix_error, align 4
  br label %while.cond.2

while.end.20:                                     ; preds = %while.cond.2
  %27 = load i8*, i8** %text.addr, align 8
  %28 = load i8*, i8** %oldtext, align 8
  %cmp21 = icmp ule i8* %27, %28
  br i1 %cmp21, label %if.then, label %if.end.73

if.then:                                          ; preds = %while.end.20
  %29 = load i32, i32* %m.addr, align 4
  %30 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 2, %30
  %31 = load i32, i32* %D.addr, align 4
  %add23 = add nsw i32 %mul, %31
  %32 = load i32, i32* %D.addr, align 4
  %33 = load i8*, i8** %pat.addr, align 8
  %34 = load i8*, i8** %oldtext, align 8
  %call = call i32 @verify(i32 %29, i32 %add23, i32 %32, i8* %33, i8* %34)
  store i32 %call, i32* %pos, align 4
  %cmp24 = icmp sgt i32 %call, 0
  br i1 %cmp24, label %if.then.26, label %if.else.69

if.then.26:                                       ; preds = %if.then
  %35 = load i8*, i8** %oldtext, align 8
  %36 = load i32, i32* %pos, align 4
  %idx.ext27 = sext i32 %36 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %35, i64 %idx.ext27
  store i8* %add.ptr28, i8** %text.addr, align 8
  %37 = load i8*, i8** %text.addr, align 8
  %38 = load i8*, i8** %textend.addr, align 8
  %cmp29 = icmp ugt i8* %37, %38
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %if.then.26
  br label %while.end.74

if.end:                                           ; preds = %if.then.26
  %39 = load i32, i32* @num_of_matched, align 4
  %inc32 = add nsw i32 %39, 1
  store i32 %inc32, i32* @num_of_matched, align 4
  %40 = load i32, i32* @FILENAMEONLY, align 4
  %tobool33 = icmp ne i32 %40, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end
  br label %while.end.74

if.end.35:                                        ; preds = %if.end
  %41 = load i32, i32* @COUNT, align 4
  %tobool36 = icmp ne i32 %41, 0
  br i1 %tobool36, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %if.end.35
  %42 = load i32, i32* @FNAME, align 4
  %tobool38 = icmp ne i32 %42, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.then.37
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.then.37
  br label %while.cond.42

while.cond.42:                                    ; preds = %while.body.47, %if.end.41
  %43 = load i8*, i8** %text.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %incdec.ptr43, i8** %text.addr, align 8
  %44 = load i8, i8* %incdec.ptr43, align 1
  %conv44 = zext i8 %44 to i32
  %cmp45 = icmp ne i32 %conv44, 10
  br i1 %cmp45, label %while.body.47, label %while.end.48

while.body.47:                                    ; preds = %while.cond.42
  br label %while.cond.42

while.end.48:                                     ; preds = %while.cond.42
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.54, %while.end.48
  %45 = load i8*, i8** %text.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr50, i8** %text.addr, align 8
  %46 = load i8, i8* %incdec.ptr50, align 1
  %conv51 = zext i8 %46 to i32
  %cmp52 = icmp ne i32 %conv51, 10
  br i1 %cmp52, label %while.body.54, label %while.end.57

while.body.54:                                    ; preds = %while.cond.49
  %47 = load i8*, i8** %text.addr, align 8
  %48 = load i8, i8* %47, align 1
  %conv55 = zext i8 %48 to i32
  %call56 = call i32 @putchar(i32 %conv55)
  br label %while.cond.49

while.end.57:                                     ; preds = %while.cond.49
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %49 = load i8*, i8** %text.addr, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr59, i8** %text.addr, align 8
  br label %if.end.68

if.else:                                          ; preds = %if.end.35
  br label %while.cond.60

while.cond.60:                                    ; preds = %while.body.64, %if.else
  %50 = load i8*, i8** %text.addr, align 8
  %51 = load i8, i8* %50, align 1
  %conv61 = zext i8 %51 to i32
  %cmp62 = icmp ne i32 %conv61, 10
  br i1 %cmp62, label %while.body.64, label %while.end.66

while.body.64:                                    ; preds = %while.cond.60
  %52 = load i8*, i8** %text.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr65, i8** %text.addr, align 8
  br label %while.cond.60

while.end.66:                                     ; preds = %while.cond.60
  %53 = load i8*, i8** %text.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr67, i8** %text.addr, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %while.end.66, %while.end.57
  br label %if.end.72

if.else.69:                                       ; preds = %if.then
  %54 = load i8*, i8** %oldtext, align 8
  %55 = load i32, i32* %m.addr, align 4
  %idx.ext70 = sext i32 %55 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %54, i64 %idx.ext70
  store i8* %add.ptr71, i8** %text.addr, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.end.68
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %while.end.20
  %56 = load i8*, i8** %text.addr, align 8
  store i8* %56, i8** %oldtext, align 8
  br label %while.cond

while.end.74:                                     ; preds = %if.then.31, %if.then.34, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @blog(i32 %base, i32 %m) #0 {
entry:
  %base.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %exp = alloca i32, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %base.addr, align 4
  store i32 %0, i32* %exp, align 4
  %1 = load i32, i32* %m.addr, align 4
  %2 = load i32, i32* %m.addr, align 4
  %div = sdiv i32 %2, 2
  %add = add nsw i32 %1, %div
  store i32 %add, i32* %m.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %exp, align 4
  %4 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %exp, align 4
  %6 = load i32, i32* %base.addr, align 4
  %mul = mul nsw i32 %5, %6
  store i32 %mul, i32* %exp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @prep4(i8* %Pattern, i32 %m) #0 {
entry:
  %Pattern.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %hash = alloca i32, align 4
  store i8* %Pattern, i8** %Pattern.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 65), align 1
  store i8 4, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 97), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 103), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 103), align 1
  store i8 2, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 116), align 1
  store i8 2, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 116), align 1
  store i8 3, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 99), align 1
  store i8 3, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 99), align 1
  store i8 5, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 110), align 1
  store i8 5, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @char_map, i32 0, i64 110), align 1
  %3 = load i32, i32* %m.addr, align 4
  %call = call i32 @blog(i32 4, i32 %3)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* @BSize, align 1
  store i32 1, i32* %i, align 4
  store i32 1, i32* @Hashmask, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %4 = load i32, i32* %i, align 4
  %5 = load i8, i8* @BSize, align 1
  %conv2 = zext i8 %5 to i32
  %mul = mul nsw i32 %conv2, 3
  %cmp3 = icmp slt i32 %4, %mul
  br i1 %cmp3, label %for.body.5, label %for.end.8

for.body.5:                                       ; preds = %for.cond.1
  %6 = load i32, i32* @Hashmask, align 4
  %shl = shl i32 %6, 1
  %add = add i32 %shl, 1
  store i32 %add, i32* @Hashmask, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.5
  %7 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  %8 = load i32, i32* @Hashmask, align 4
  %add9 = add i32 %8, 1
  %conv10 = zext i32 %add9 to i64
  %mul11 = mul i64 %conv10, 1
  %call12 = call noalias i8* @malloc(i64 %mul11) #2
  store i8* %call12, i8** @MEMBER_D, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %for.end.8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @Hashmask, align 4
  %cmp14 = icmp ule i32 %9, %10
  br i1 %cmp14, label %for.body.16, label %for.end.21

for.body.16:                                      ; preds = %for.cond.13
  %11 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %11 to i64
  %12 = load i8*, i8** @MEMBER_D, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 %idxprom17
  store i8 0, i8* %arrayidx18, align 1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.16
  %13 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %13, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  store i32 0, i32* %j, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.50, %for.end.21
  %14 = load i32, i32* %j, align 4
  %15 = load i8, i8* @BSize, align 1
  %conv23 = zext i8 %15 to i32
  %cmp24 = icmp slt i32 %14, %conv23
  br i1 %cmp24, label %for.body.26, label %for.end.52

for.body.26:                                      ; preds = %for.cond.22
  %16 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %16, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.48, %for.body.26
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  %cmp28 = icmp sge i32 %17, %18
  br i1 %cmp28, label %for.body.30, label %for.end.49

for.body.30:                                      ; preds = %for.cond.27
  store i32 0, i32* %hash, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.43, %for.body.30
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %j, align 4
  %cmp32 = icmp sle i32 %19, %20
  br i1 %cmp32, label %for.body.34, label %for.end.45

for.body.34:                                      ; preds = %for.cond.31
  %21 = load i32, i32* %hash, align 4
  %shl35 = shl i32 %21, 3
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %k, align 4
  %sub36 = sub nsw i32 %22, %23
  %idxprom37 = sext i32 %sub36 to i64
  %24 = load i8*, i8** %Pattern.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %24, i64 %idxprom37
  %25 = load i8, i8* %arrayidx38, align 1
  %idxprom39 = sext i8 %25 to i64
  %arrayidx40 = getelementptr inbounds [256 x i8], [256 x i8]* @char_map, i32 0, i64 %idxprom39
  %26 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %26 to i32
  %add42 = add i32 %shl35, %conv41
  store i32 %add42, i32* %hash, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.34
  %27 = load i32, i32* %k, align 4
  %inc44 = add nsw i32 %27, 1
  store i32 %inc44, i32* %k, align 4
  br label %for.cond.31

for.end.45:                                       ; preds = %for.cond.31
  %28 = load i32, i32* %hash, align 4
  %idxprom46 = zext i32 %28 to i64
  %29 = load i8*, i8** @MEMBER_D, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %29, i64 %idxprom46
  store i8 1, i8* %arrayidx47, align 1
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.45
  %30 = load i32, i32* %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.27

for.end.49:                                       ; preds = %for.cond.27
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %31 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %31, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.22

for.end.52:                                       ; preds = %for.cond.22
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind uwtable
define void @sgrep(i8* %pat, i32 %m, i32 %fd, i32 %D) #0 {
entry:
  %pat.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %text = alloca [10496 x i8], align 16
  %offset = alloca i32, align 4
  %buf_end = alloca i32, align 4
  %num_read = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %residue = alloca i32, align 4
  store i8* %pat, i8** %pat.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  store i32 2048, i32* %offset, align 4
  store i32 0, i32* %residue, align 4
  %0 = load i8*, i8** %pat.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 94
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %pat.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 36
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %pat.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 10, i8* %arrayidx6, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i32, i32* %m.addr, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load i8*, i8** %pat.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 94
  br i1 %cmp9, label %if.then.18, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end
  %8 = load i32, i32* %m.addr, align 4
  %sub12 = sub nsw i32 %8, 1
  %idxprom13 = sext i32 %sub12 to i64
  %9 = load i8*, i8** %pat.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %9, i64 %idxprom13
  %10 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 36
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %lor.lhs.false.11, %if.end
  %11 = load i32, i32* %m.addr, align 4
  %sub19 = sub nsw i32 %11, 1
  %idxprom20 = sext i32 %sub19 to i64
  %12 = load i8*, i8** %pat.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %12, i64 %idxprom20
  store i8 10, i8* %arrayidx21, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %lor.lhs.false.11
  %13 = load i8*, i8** %pat.addr, align 8
  call void @char_tr(i8* %13, i32* %m.addr)
  %14 = load i32, i32* %offset, align 4
  %sub23 = sub nsw i32 %14, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i64 %idxprom24
  store i8 10, i8* %arrayidx25, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %15 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %15, 1024
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i64 %idxprom28
  store i8 0, i8* %arrayidx29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %offset, align 4
  store i32 %18, i32* %start, align 4
  %19 = load i32, i32* @WHOLELINE, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end
  %20 = load i32, i32* %start, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %start, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %for.end
  %21 = load i32, i32* %m.addr, align 4
  %cmp32 = icmp sge i32 %21, 256
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end.35:                                        ; preds = %if.end.31
  %23 = load i32, i32* %D.addr, align 4
  %cmp36 = icmp eq i32 %23, 0
  br i1 %cmp36, label %if.then.38, label %if.else.43

if.then.38:                                       ; preds = %if.end.35
  %24 = load i32, i32* %m.addr, align 4
  %cmp39 = icmp sgt i32 %24, 20
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.then.38
  %25 = load i8*, i8** %pat.addr, align 8
  call void @m_preprocess(i8* %25)
  br label %if.end.42

if.else:                                          ; preds = %if.then.38
  %26 = load i8*, i8** %pat.addr, align 8
  %27 = load i32, i32* %m.addr, align 4
  call void @prep_bm(i8* %26, i32 %27)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  br label %if.end.53

if.else.43:                                       ; preds = %if.end.35
  %28 = load i32, i32* @DNA, align 4
  %tobool44 = icmp ne i32 %28, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.43
  %29 = load i8*, i8** %pat.addr, align 8
  %30 = load i32, i32* %m.addr, align 4
  call void @prep4(i8* %29, i32 %30)
  br label %if.end.52

if.else.46:                                       ; preds = %if.else.43
  %31 = load i32, i32* %m.addr, align 4
  %cmp47 = icmp sge i32 %31, 24
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.else.46
  %32 = load i8*, i8** %pat.addr, align 8
  call void @am_preprocess(i8* %32)
  br label %if.end.51

if.else.50:                                       ; preds = %if.else.46
  %33 = load i8*, i8** %pat.addr, align 8
  %34 = load i32, i32* %m.addr, align 4
  %35 = load i32, i32* %D.addr, align 4
  call void @prep(i8* %33, i32 %34, i32 %35)
  %36 = load i8*, i8** %pat.addr, align 8
  %37 = load i32, i32* %m.addr, align 4
  call void @initmask(i8* %36, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Mask, i32 0, i32 0), i32 %37, i32 0, i32* @endposition)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.49
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.45
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.42
  store i32 1, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.64, %if.end.53
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %m.addr, align 4
  %cmp55 = icmp sle i32 %38, %39
  br i1 %cmp55, label %for.body.57, label %for.end.66

for.body.57:                                      ; preds = %for.cond.54
  %40 = load i32, i32* %m.addr, align 4
  %sub58 = sub nsw i32 %40, 1
  %idxprom59 = sext i32 %sub58 to i64
  %41 = load i8*, i8** %pat.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %41, i64 %idxprom59
  %42 = load i8, i8* %arrayidx60, align 1
  %43 = load i32, i32* %offset, align 4
  %add = add nsw i32 8192, %43
  %44 = load i32, i32* %i, align 4
  %add61 = add nsw i32 %add, %44
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i64 %idxprom62
  store i8 %42, i8* %arrayidx63, align 1
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.57
  %45 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %45, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.54

for.end.66:                                       ; preds = %for.cond.54
  br label %while.cond

while.cond:                                       ; preds = %if.end.146, %for.end.66
  %46 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %47 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %47 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %call67 = call i64 @read(i32 %46, i8* %add.ptr, i64 8192)
  %conv68 = trunc i64 %call67 to i32
  store i32 %conv68, i32* %num_read, align 4
  %cmp69 = icmp sgt i32 %conv68, 0
  br i1 %cmp69, label %while.body, label %while.end.156

while.body:                                       ; preds = %while.cond
  %48 = load i32, i32* %offset, align 4
  %49 = load i32, i32* %num_read, align 4
  %add71 = add nsw i32 %48, %49
  %sub72 = sub nsw i32 %add71, 1
  store i32 %sub72, i32* %end, align 4
  store i32 %sub72, i32* %buf_end, align 4
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.81, %while.body
  %50 = load i32, i32* %end, align 4
  %idxprom74 = sext i32 %50 to i64
  %arrayidx75 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i64 %idxprom74
  %51 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %51 to i32
  %cmp77 = icmp ne i32 %conv76, 10
  br i1 %cmp77, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.73
  %52 = load i32, i32* %end, align 4
  %53 = load i32, i32* %offset, align 4
  %cmp79 = icmp sgt i32 %52, %53
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.73
  %54 = phi i1 [ false, %while.cond.73 ], [ %cmp79, %land.rhs ]
  br i1 %54, label %while.body.81, label %while.end

while.body.81:                                    ; preds = %land.end
  %55 = load i32, i32* %end, align 4
  %dec82 = add nsw i32 %55, -1
  store i32 %dec82, i32* %end, align 4
  br label %while.cond.73

while.end:                                        ; preds = %land.end
  %56 = load i32, i32* %buf_end, align 4
  %57 = load i32, i32* %end, align 4
  %sub83 = sub nsw i32 %56, %57
  %add84 = add nsw i32 %sub83, 1
  store i32 %add84, i32* %residue, align 4
  %58 = load i32, i32* %start, align 4
  %sub85 = sub nsw i32 %58, 1
  %idxprom86 = sext i32 %sub85 to i64
  %arrayidx87 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i64 %idxprom86
  store i8 10, i8* %arrayidx87, align 1
  %59 = load i32, i32* %D.addr, align 4
  %cmp88 = icmp eq i32 %59, 0
  br i1 %cmp88, label %if.then.90, label %if.else.108

if.then.90:                                       ; preds = %while.end
  %60 = load i32, i32* %m.addr, align 4
  %cmp91 = icmp sgt i32 %60, 20
  br i1 %cmp91, label %if.then.93, label %if.else.100

if.then.93:                                       ; preds = %if.then.90
  %61 = load i8*, i8** %pat.addr, align 8
  %62 = load i32, i32* %m.addr, align 4
  %arraydecay94 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %63 = load i32, i32* %start, align 4
  %idx.ext95 = sext i32 %63 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %arraydecay94, i64 %idx.ext95
  %arraydecay97 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %64 = load i32, i32* %end, align 4
  %idx.ext98 = sext i32 %64 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %arraydecay97, i64 %idx.ext98
  call void @monkey(i8* %61, i32 %62, i8* %add.ptr96, i8* %add.ptr99)
  br label %if.end.107

if.else.100:                                      ; preds = %if.then.90
  %65 = load i8*, i8** %pat.addr, align 8
  %66 = load i32, i32* %m.addr, align 4
  %arraydecay101 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %67 = load i32, i32* %start, align 4
  %idx.ext102 = sext i32 %67 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay101, i64 %idx.ext102
  %arraydecay104 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %68 = load i32, i32* %end, align 4
  %idx.ext105 = sext i32 %68 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %arraydecay104, i64 %idx.ext105
  call void @bm(i8* %65, i32 %66, i8* %add.ptr103, i8* %add.ptr106)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.100, %if.then.93
  br label %if.end.136

if.else.108:                                      ; preds = %while.end
  %69 = load i32, i32* @DNA, align 4
  %tobool109 = icmp ne i32 %69, 0
  br i1 %tobool109, label %if.then.110, label %if.else.117

if.then.110:                                      ; preds = %if.else.108
  %70 = load i8*, i8** %pat.addr, align 8
  %71 = load i32, i32* %m.addr, align 4
  %arraydecay111 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %72 = load i32, i32* %start, align 4
  %idx.ext112 = sext i32 %72 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %arraydecay111, i64 %idx.ext112
  %arraydecay114 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %73 = load i32, i32* %end, align 4
  %idx.ext115 = sext i32 %73 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %arraydecay114, i64 %idx.ext115
  %74 = load i32, i32* %D.addr, align 4
  call void @monkey4(i8* %70, i32 %71, i8* %add.ptr113, i8* %add.ptr116, i32 %74)
  br label %if.end.135

if.else.117:                                      ; preds = %if.else.108
  %75 = load i32, i32* %m.addr, align 4
  %cmp118 = icmp sge i32 %75, 24
  br i1 %cmp118, label %if.then.120, label %if.else.127

if.then.120:                                      ; preds = %if.else.117
  %76 = load i8*, i8** %pat.addr, align 8
  %77 = load i32, i32* %m.addr, align 4
  %arraydecay121 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %78 = load i32, i32* %start, align 4
  %idx.ext122 = sext i32 %78 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %arraydecay121, i64 %idx.ext122
  %arraydecay124 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %79 = load i32, i32* %end, align 4
  %idx.ext125 = sext i32 %79 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %arraydecay124, i64 %idx.ext125
  %80 = load i32, i32* %D.addr, align 4
  call void @a_monkey(i8* %76, i32 %77, i8* %add.ptr123, i8* %add.ptr126, i32 %80)
  br label %if.end.134

if.else.127:                                      ; preds = %if.else.117
  %81 = load i8*, i8** %pat.addr, align 8
  %82 = load i32, i32* %m.addr, align 4
  %arraydecay128 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %83 = load i32, i32* %start, align 4
  %idx.ext129 = sext i32 %83 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %arraydecay128, i64 %idx.ext129
  %arraydecay131 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %84 = load i32, i32* %end, align 4
  %idx.ext132 = sext i32 %84 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %arraydecay131, i64 %idx.ext132
  %85 = load i32, i32* %D.addr, align 4
  call void @agrep(i8* %81, i32 %82, i8* %add.ptr130, i8* %add.ptr133, i32 %85)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.127, %if.then.120
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.110
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.107
  %86 = load i32, i32* @FILENAMEONLY, align 4
  %tobool137 = icmp ne i32 %86, 0
  br i1 %tobool137, label %land.lhs.true, label %if.end.141

land.lhs.true:                                    ; preds = %if.end.136
  %87 = load i32, i32* @num_of_matched, align 4
  %tobool138 = icmp ne i32 %87, 0
  br i1 %tobool138, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %land.lhs.true
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.141:                                       ; preds = %land.lhs.true, %if.end.136
  %88 = load i32, i32* %offset, align 4
  %89 = load i32, i32* %residue, align 4
  %sub142 = sub nsw i32 %88, %89
  store i32 %sub142, i32* %start, align 4
  %90 = load i32, i32* %start, align 4
  %cmp143 = icmp slt i32 %90, 1024
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.141
  store i32 1024, i32* %start, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %if.end.141
  %arraydecay147 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %91 = load i32, i32* %start, align 4
  %idx.ext148 = sext i32 %91 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %arraydecay147, i64 %idx.ext148
  %arraydecay150 = getelementptr inbounds [10496 x i8], [10496 x i8]* %text, i32 0, i32 0
  %92 = load i32, i32* %end, align 4
  %idx.ext151 = sext i32 %92 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %arraydecay150, i64 %idx.ext151
  %93 = load i32, i32* %residue, align 4
  %conv153 = sext i32 %93 to i64
  %call154 = call i8* @strncpy(i8* %add.ptr149, i8* %add.ptr152, i64 %conv153) #2
  %94 = load i32, i32* %start, align 4
  %inc155 = add nsw i32 %94, 1
  store i32 %inc155, i32* %start, align 4
  br label %while.cond

while.end.156:                                    ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end.156, %if.then.139
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
