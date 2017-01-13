; ModuleID = './MultiSource.Benchmarks.Prolangs-C/8.plot2fig.plot.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@signed_input = global i32 1, align 4
@high_byte_first = global i32 0, align 4
@guess_byte_order = global i32 1, align 4
@known_size = global [32 x i32] [i32 504, i32 2048, i32 2100, i32 3120, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [16 x i8] c"realloc failed:\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Unrecognized plot command `%c' ignored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"malloc failed:\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-fontsize\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-fs\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"-fontname\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-fn\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"-high-byte-first\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"-low-byte-first\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"-warranty\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"-copying\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"%s version %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"-signed\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"-unsigned\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Unrecognized option or file `%s' ignored.\0A\00", align 1
@.str.22 = private unnamed_addr constant [169 x i8] c"\0Ausage: %s [-fontsize|-fs SIZE] [-high-byte-first|-h]\0A       [-low-byte-first|-l] [-fontname|-fn FONTNAME]\0A       [-help|-V] [-copying|-warranty] [PLOT_FILE_NAMES ...]\0A\00", align 1
@.str.23 = private unnamed_addr constant [252 x i8] c"\0A    %s version 0.9, Copyright (C) 1989 Free Software Foundation, Inc.\0A    %s comes with ABSOLUTELY NO WARRANTY.  This is free software, and\0A    you are welcome to redistribute it. Type `%s -warranty' for warranty\0A    details and copying conditions.\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @swap_bytes(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %and = and i32 %0, 255
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %a, align 1
  %1 = load i32, i32* %x.addr, align 4
  %shr = ashr i32 %1, 8
  %and1 = and i32 %shr, 255
  %conv2 = trunc i32 %and1 to i8
  store i8 %conv2, i8* %b, align 1
  %2 = load i8, i8* %a, align 1
  %conv3 = zext i8 %2 to i32
  %shl = shl i32 %conv3, 8
  %3 = load i8, i8* %b, align 1
  %conv4 = zext i8 %3 to i32
  %or = or i32 %shl, %conv4
  ret i32 %or
}

; Function Attrs: nounwind uwtable
define void @find_byte_order(i32* %x0, i32* %y0, i32* %x1, i32* %y1) #0 {
entry:
  %x0.addr = alloca i32*, align 8
  %y0.addr = alloca i32*, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %x0, i32** %x0.addr, align 8
  store i32* %y0, i32** %y0.addr, align 8
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* @known_size, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %x1.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [32 x i32], [32 x i32]* @known_size, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %3, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end.20

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.18, %for.end
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* @known_size, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %for.body.8, label %for.end.20

for.body.8:                                       ; preds = %for.cond.4
  %9 = load i32*, i32** %x1.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* @known_size, i32 0, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  %call = call i32 @swap_bytes(i32 %12)
  %cmp11 = icmp eq i32 %10, %call
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %for.body.8
  %13 = load i32*, i32** %x0.addr, align 8
  %14 = load i32, i32* %13, align 4
  %call13 = call i32 @swap_bytes(i32 %14)
  %15 = load i32*, i32** %x0.addr, align 8
  store i32 %call13, i32* %15, align 4
  %16 = load i32*, i32** %y0.addr, align 8
  %17 = load i32, i32* %16, align 4
  %call14 = call i32 @swap_bytes(i32 %17)
  %18 = load i32*, i32** %y0.addr, align 8
  store i32 %call14, i32* %18, align 4
  %19 = load i32*, i32** %x1.addr, align 8
  %20 = load i32, i32* %19, align 4
  %call15 = call i32 @swap_bytes(i32 %20)
  %21 = load i32*, i32** %x1.addr, align 8
  store i32 %call15, i32* %21, align 4
  %22 = load i32*, i32** %y1.addr, align 8
  %23 = load i32, i32* %22, align 4
  %call16 = call i32 @swap_bytes(i32 %23)
  %24 = load i32*, i32** %y1.addr, align 8
  store i32 %call16, i32* %24, align 4
  %25 = load i32, i32* @high_byte_first, align 4
  %tobool = icmp ne i32 %25, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @high_byte_first, align 4
  br label %for.end.20

if.end.17:                                        ; preds = %for.body.8
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end.17
  %26 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %26, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.4

for.end.20:                                       ; preds = %if.then, %if.then.12, %for.cond.4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @coord(%struct._IO_FILE* %input) #0 {
entry:
  %input.addr = alloca %struct._IO_FILE*, align 8
  %x = alloca i32, align 4
  store %struct._IO_FILE* %input, %struct._IO_FILE** %input.addr, align 8
  %0 = load i32, i32* @high_byte_first, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  %conv = trunc i32 %call to i8
  %conv1 = sext i8 %conv to i32
  %shl = shl i32 %conv1, 8
  store i32 %shl, i32* %x, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  %and = and i32 %call2, 255
  %3 = load i32, i32* %x, align 4
  %or = or i32 %3, %and
  store i32 %or, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  %and4 = and i32 %call3, 255
  store i32 %and4, i32* %x, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call5 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  %conv6 = trunc i32 %call5 to i8
  %conv7 = sext i8 %conv6 to i32
  %shl8 = shl i32 %conv7, 8
  %6 = load i32, i32* %x, align 4
  %or9 = or i32 %6, %shl8
  store i32 %or9, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* @signed_input, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %8 = load i32, i32* %x, align 4
  %and12 = and i32 %8, 65535
  store i32 %and12, i32* %x, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  %9 = load i32, i32* %x, align 4
  ret i32 %9
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @read_string(%struct._IO_FILE* %input, i8* %buffer, i32 %buffer_length) #0 {
entry:
  %input.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %length = alloca i32, align 4
  %termination = alloca i8, align 1
  %c = alloca i8, align 1
  store %struct._IO_FILE* %input, %struct._IO_FILE** %input.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  store i32 0, i32* %length, align 4
  store i8 10, i8* %termination, align 1
  store i8 0, i8* %c, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #5
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %length, align 4
  %2 = load i32, i32* %buffer_length.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %buffer_length.addr, align 4
  %mul = mul nsw i32 %3, 2
  store i32 %mul, i32* %buffer_length.addr, align 4
  %4 = load i8*, i8** %buffer.addr, align 8
  %5 = load i32, i32* %buffer_length.addr, align 4
  %conv = sext i32 %5 to i64
  %call1 = call i8* @realloc(i8* %4, i64 %conv) #5
  store i8* %call1, i8** %buffer.addr, align 8
  %6 = load i8*, i8** %buffer.addr, align 8
  %cmp2 = icmp ule i8* %6, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %while.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call6 = call i32 @_IO_getc(%struct._IO_FILE* %7)
  %conv7 = trunc i32 %call6 to i8
  store i8 %conv7, i8* %c, align 1
  %8 = load i8, i8* %c, align 1
  %conv8 = sext i8 %8 to i32
  %9 = load i8, i8* %termination, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.5
  br label %while.end

if.end.13:                                        ; preds = %if.end.5
  %10 = load i8, i8* %c, align 1
  %11 = load i32, i32* %length, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %length, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 %10, i8* %arrayidx, align 1
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  %13 = load i32, i32* %length, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i8*, i8** %buffer.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 %idxprom14
  store i8 0, i8* %arrayidx15, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare void @perror(i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @read_plot(%struct._IO_FILE* %in_stream, i8* %buffer, i32 %buffer_length) #0 {
entry:
  %in_stream.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %x_adjust = alloca i8, align 1
  %y_adjust = alloca i8, align 1
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %instruction = alloca i32, align 4
  store %struct._IO_FILE* %in_stream, %struct._IO_FILE** %in_stream.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %instruction, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call1 = call i32 @feof(%struct._IO_FILE* %1) #5
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %instruction, align 4
  switch i32 %2, label %sw.default [
    i32 84, label %sw.bb
    i32 97, label %sw.bb.8
    i32 99, label %sw.bb.16
    i32 67, label %sw.bb.21
    i32 110, label %sw.bb.28
    i32 101, label %sw.bb.32
    i32 76, label %sw.bb.34
    i32 70, label %sw.bb.38
    i32 83, label %sw.bb.40
    i32 116, label %sw.bb.43
    i32 108, label %sw.bb.45
    i32 102, label %sw.bb.51
    i32 109, label %sw.bb.53
    i32 112, label %sw.bb.57
    i32 114, label %sw.bb.61
    i32 115, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  %conv = trunc i32 %call2 to i8
  store i8 %conv, i8* %x_adjust, align 1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  %conv4 = trunc i32 %call3 to i8
  store i8 %conv4, i8* %y_adjust, align 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %6 = load i8*, i8** %buffer.addr, align 8
  %7 = load i32, i32* %buffer_length.addr, align 4
  call void @read_string(%struct._IO_FILE* %5, i8* %6, i32 %7)
  %8 = load i8, i8* %x_adjust, align 1
  %conv5 = sext i8 %8 to i32
  %9 = load i8, i8* %y_adjust, align 1
  %conv6 = sext i8 %9 to i32
  %10 = load i8*, i8** %buffer.addr, align 8
  %call7 = call i32 @alabel(i32 %conv5, i32 %conv6, i8* %10)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call9 = call i32 @coord(%struct._IO_FILE* %11)
  store i32 %call9, i32* %x0, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call10 = call i32 @coord(%struct._IO_FILE* %12)
  store i32 %call10, i32* %y0, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call11 = call i32 @coord(%struct._IO_FILE* %13)
  store i32 %call11, i32* %x1, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call12 = call i32 @coord(%struct._IO_FILE* %14)
  store i32 %call12, i32* %y1, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call13 = call i32 @coord(%struct._IO_FILE* %15)
  store i32 %call13, i32* %x2, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call14 = call i32 @coord(%struct._IO_FILE* %16)
  store i32 %call14, i32* %y2, align 4
  %17 = load i32, i32* %x0, align 4
  %18 = load i32, i32* %y0, align 4
  %19 = load i32, i32* %x1, align 4
  %20 = load i32, i32* %y1, align 4
  %21 = load i32, i32* %x2, align 4
  %22 = load i32, i32* %y2, align 4
  %call15 = call i32 @arc(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call17 = call i32 @coord(%struct._IO_FILE* %23)
  store i32 %call17, i32* %x0, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call18 = call i32 @coord(%struct._IO_FILE* %24)
  store i32 %call18, i32* %y0, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call19 = call i32 @coord(%struct._IO_FILE* %25)
  store i32 %call19, i32* %x1, align 4
  %26 = load i32, i32* %x0, align 4
  %27 = load i32, i32* %y0, align 4
  %28 = load i32, i32* %x1, align 4
  %call20 = call i32 @circle(i32 %26, i32 %27, i32 %28)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %while.body
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call22 = call i32 @coord(%struct._IO_FILE* %29)
  %and = and i32 %call22, 65535
  store i32 %and, i32* %x0, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call23 = call i32 @coord(%struct._IO_FILE* %30)
  %and24 = and i32 %call23, 65535
  store i32 %and24, i32* %y0, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call25 = call i32 @coord(%struct._IO_FILE* %31)
  %and26 = and i32 %call25, 65535
  store i32 %and26, i32* %x1, align 4
  %32 = load i32, i32* %x0, align 4
  %33 = load i32, i32* %y0, align 4
  %34 = load i32, i32* %x1, align 4
  %call27 = call i32 @color(i32 %32, i32 %33, i32 %34)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %while.body
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call29 = call i32 @coord(%struct._IO_FILE* %35)
  store i32 %call29, i32* %x0, align 4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call30 = call i32 @coord(%struct._IO_FILE* %36)
  store i32 %call30, i32* %y0, align 4
  %37 = load i32, i32* %x0, align 4
  %38 = load i32, i32* %y0, align 4
  %call31 = call i32 @cont(i32 %37, i32 %38)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %while.body
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call33 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (...)* @erase to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %39)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %while.body
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call35 = call i32 @coord(%struct._IO_FILE* %40)
  %and36 = and i32 %call35, 65535
  %call37 = call i32 @fill(i32 %and36)
  br label %sw.epilog

sw.bb.38:                                         ; preds = %while.body
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %42 = load i8*, i8** %buffer.addr, align 8
  %43 = load i32, i32* %buffer_length.addr, align 4
  call void @read_string(%struct._IO_FILE* %41, i8* %42, i32 %43)
  %44 = load i8*, i8** %buffer.addr, align 8
  %call39 = call i32 @fontname(i8* %44)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %while.body
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call41 = call i32 @coord(%struct._IO_FILE* %45)
  %call42 = call i32 @fontsize(i32 %call41)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %while.body
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %47 = load i8*, i8** %buffer.addr, align 8
  %48 = load i32, i32* %buffer_length.addr, align 4
  call void @read_string(%struct._IO_FILE* %46, i8* %47, i32 %48)
  %49 = load i8*, i8** %buffer.addr, align 8
  %call44 = call i32 @label(i8* %49)
  br label %sw.epilog

sw.bb.45:                                         ; preds = %while.body
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call46 = call i32 @coord(%struct._IO_FILE* %50)
  store i32 %call46, i32* %x0, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call47 = call i32 @coord(%struct._IO_FILE* %51)
  store i32 %call47, i32* %y0, align 4
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call48 = call i32 @coord(%struct._IO_FILE* %52)
  store i32 %call48, i32* %x1, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call49 = call i32 @coord(%struct._IO_FILE* %53)
  store i32 %call49, i32* %y1, align 4
  %54 = load i32, i32* %x0, align 4
  %55 = load i32, i32* %y0, align 4
  %56 = load i32, i32* %x1, align 4
  %57 = load i32, i32* %y1, align 4
  %call50 = call i32 @line(i32 %54, i32 %55, i32 %56, i32 %57)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %while.body
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %59 = load i8*, i8** %buffer.addr, align 8
  %60 = load i32, i32* %buffer_length.addr, align 4
  call void @read_string(%struct._IO_FILE* %58, i8* %59, i32 %60)
  %61 = load i8*, i8** %buffer.addr, align 8
  %call52 = call i32 @linemod(i8* %61)
  br label %sw.epilog

sw.bb.53:                                         ; preds = %while.body
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call54 = call i32 @coord(%struct._IO_FILE* %62)
  store i32 %call54, i32* %x0, align 4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call55 = call i32 @coord(%struct._IO_FILE* %63)
  store i32 %call55, i32* %y0, align 4
  %64 = load i32, i32* %x0, align 4
  %65 = load i32, i32* %y0, align 4
  %call56 = call i32 @move_nasko(i32 %64, i32 %65)
  br label %sw.epilog

sw.bb.57:                                         ; preds = %while.body
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call58 = call i32 @coord(%struct._IO_FILE* %66)
  store i32 %call58, i32* %x0, align 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call59 = call i32 @coord(%struct._IO_FILE* %67)
  store i32 %call59, i32* %y0, align 4
  %68 = load i32, i32* %x0, align 4
  %69 = load i32, i32* %y0, align 4
  %call60 = call i32 @point(i32 %68, i32 %69)
  br label %sw.epilog

sw.bb.61:                                         ; preds = %while.body
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call62 = call i32 @coord(%struct._IO_FILE* %70)
  store i32 %call62, i32* %x0, align 4
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call63 = call i32 @coord(%struct._IO_FILE* %71)
  store i32 %call63, i32* %y0, align 4
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call64 = call i32 @coord(%struct._IO_FILE* %72)
  store i32 %call64, i32* %x1, align 4
  %73 = load i32, i32* %x0, align 4
  %74 = load i32, i32* %y0, align 4
  %75 = load i32, i32* %x1, align 4
  %call65 = call i32 @rotate(i32 %73, i32 %74, i32 %75)
  br label %sw.epilog

sw.bb.66:                                         ; preds = %while.body
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call67 = call i32 @coord(%struct._IO_FILE* %76)
  store i32 %call67, i32* %x0, align 4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call68 = call i32 @coord(%struct._IO_FILE* %77)
  store i32 %call68, i32* %y0, align 4
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call69 = call i32 @coord(%struct._IO_FILE* %78)
  store i32 %call69, i32* %x1, align 4
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call70 = call i32 @coord(%struct._IO_FILE* %79)
  store i32 %call70, i32* %y1, align 4
  %80 = load i32, i32* @guess_byte_order, align 4
  %tobool71 = icmp ne i32 %80, 0
  br i1 %tobool71, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.66
  call void @find_byte_order(i32* %x0, i32* %y0, i32* %x1, i32* %y1)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.66
  %81 = load i32, i32* %x0, align 4
  %82 = load i32, i32* %y0, align 4
  %83 = load i32, i32* %x1, align 4
  %84 = load i32, i32* %y1, align 4
  %call72 = call i32 @space(i32 %81, i32 %82, i32 %83, i32 %84)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = load i32, i32* %instruction, align 4
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %86)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb.61, %sw.bb.57, %sw.bb.53, %sw.bb.51, %sw.bb.45, %sw.bb.43, %sw.bb.40, %sw.bb.38, %sw.bb.34, %sw.bb.32, %sw.bb.28, %sw.bb.21, %sw.bb.16, %sw.bb.8, %sw.bb
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %in_stream.addr, align 8
  %call74 = call i32 @_IO_getc(%struct._IO_FILE* %87)
  store i32 %call74, i32* %instruction, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @alabel(i32, i32, i8*) #1

declare i32 @arc(i32, i32, i32, i32, i32, i32) #1

declare i32 @circle(i32, i32, i32) #1

declare i32 @color(i32, i32, i32) #1

declare i32 @cont(i32, i32) #1

declare i32 @erase(...) #1

declare i32 @fill(i32) #1

declare i32 @fontname(i8*) #1

declare i32 @fontsize(i32) #1

declare i32 @label(i8*) #1

declare i32 @line(i32, i32, i32, i32) #1

declare i32 @linemod(i8*) #1

declare i32 @move_nasko(i32, i32) #1

declare i32 @point(i32, i32) #1

declare i32 @rotate(i32, i32, i32) #1

declare i32 @space(i32, i32, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %buffer_length = alloca i32, align 4
  %named_plot = alloca i32, align 4
  %show_usage = alloca i32, align 4
  %opened = alloca i32, align 4
  %filep = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %named_plot, align 4
  store i32 0, i32* %show_usage, align 4
  store i32 0, i32* %opened, align 4
  store i32 1024, i32* %buffer_length, align 4
  %0 = load i32, i32* %buffer_length, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %buffer, align 8
  %1 = load i8*, i8** %buffer, align 8
  %cmp = icmp ule i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call4 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %8, i64 %idxprom7
  %9 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %for.body
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, 1
  %idxprom13 = sext i32 %add to i64
  %11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %11, i64 %idxprom13
  %12 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i32 @atoi(i8* %12) #7
  %call16 = call i32 @fontsize(i32 %call15)
  %13 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %13, 1
  store i32 %add17, i32* %i, align 4
  br label %if.end.140

if.else:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %15, i64 %idxprom18
  %16 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0)) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.29, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.else
  %17 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %18, i64 %idxprom24
  %19 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #7
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %lor.lhs.false.23, %if.else
  %20 = load i32, i32* %i, align 4
  %add30 = add nsw i32 %20, 1
  %idxprom31 = sext i32 %add30 to i64
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %21, i64 %idxprom31
  %22 = load i8*, i8** %arrayidx32, align 8
  %call33 = call i32 @fontname(i8* %22)
  %23 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %23, 1
  store i32 %add34, i32* %i, align 4
  br label %if.end.139

if.else.35:                                       ; preds = %lor.lhs.false.23
  %24 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %24 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %25, i64 %idxprom36
  %26 = load i8*, i8** %arrayidx37, align 8
  %call38 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.47, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.else.35
  %27 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %27 to i64
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %28, i64 %idxprom42
  %29 = load i8*, i8** %arrayidx43, align 8
  %call44 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.41, %if.else.35
  store i32 0, i32* @guess_byte_order, align 4
  store i32 1, i32* @high_byte_first, align 4
  br label %if.end.138

if.else.48:                                       ; preds = %lor.lhs.false.41
  %30 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %30 to i64
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %31, i64 %idxprom49
  %32 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #7
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then.60, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.else.48
  %33 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %33 to i64
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %34, i64 %idxprom55
  %35 = load i8*, i8** %arrayidx56, align 8
  %call57 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #7
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %lor.lhs.false.54, %if.else.48
  store i32 0, i32* @guess_byte_order, align 4
  store i32 0, i32* @high_byte_first, align 4
  br label %if.end.137

if.else.61:                                       ; preds = %lor.lhs.false.54
  %36 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %36 to i64
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %37, i64 %idxprom62
  %38 = load i8*, i8** %arrayidx63, align 8
  %call64 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #7
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then.73, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.else.61
  %39 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %39 to i64
  %40 = load i8**, i8*** %argv.addr, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %40, i64 %idxprom68
  %41 = load i8*, i8** %arrayidx69, align 8
  %call70 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %lor.lhs.false.67, %if.else.61
  %42 = load i32, i32* %named_plot, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %named_plot, align 4
  br label %if.end.136

if.else.74:                                       ; preds = %lor.lhs.false.67
  %43 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %43 to i64
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %44, i64 %idxprom75
  %45 = load i8*, i8** %arrayidx76, align 8
  %call77 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #7
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then.86, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.else.74
  %46 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %46 to i64
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %47, i64 %idxprom81
  %48 = load i8*, i8** %arrayidx82, align 8
  %call83 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)) #7
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.91

if.then.86:                                       ; preds = %lor.lhs.false.80, %if.else.74
  %49 = load i8**, i8*** %argv.addr, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx87, align 8
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %51 = load i32, i32* %show_usage, align 4
  %inc89 = add nsw i32 %51, 1
  store i32 %inc89, i32* %show_usage, align 4
  %52 = load i32, i32* %named_plot, align 4
  %inc90 = add nsw i32 %52, 1
  store i32 %inc90, i32* %named_plot, align 4
  br label %if.end.135

if.else.91:                                       ; preds = %lor.lhs.false.80
  %53 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %53 to i64
  %54 = load i8**, i8*** %argv.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %54, i64 %idxprom92
  %55 = load i8*, i8** %arrayidx93, align 8
  %call94 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #7
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %if.else.91
  store i32 1, i32* @signed_input, align 4
  br label %if.end.134

if.else.98:                                       ; preds = %if.else.91
  %56 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %56 to i64
  %57 = load i8**, i8*** %argv.addr, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %57, i64 %idxprom99
  %58 = load i8*, i8** %arrayidx100, align 8
  %call101 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.else.98
  store i32 0, i32* @signed_input, align 4
  br label %if.end.133

if.else.105:                                      ; preds = %if.else.98
  %59 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %59 to i64
  %60 = load i8**, i8*** %argv.addr, align 8
  %arrayidx107 = getelementptr inbounds i8*, i8** %60, i64 %idxprom106
  %61 = load i8*, i8** %arrayidx107, align 8
  %call108 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #7
  %cmp109 = icmp eq i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %if.else.105
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %63 = load i8*, i8** %buffer, align 8
  %64 = load i32, i32* %buffer_length, align 4
  call void @read_plot(%struct._IO_FILE* %62, i8* %63, i32 %64)
  %65 = load i32, i32* %named_plot, align 4
  %inc112 = add nsw i32 %65, 1
  store i32 %inc112, i32* %named_plot, align 4
  br label %if.end.132

if.else.113:                                      ; preds = %if.else.105
  %66 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %66 to i64
  %67 = load i8**, i8*** %argv.addr, align 8
  %arrayidx115 = getelementptr inbounds i8*, i8** %67, i64 %idxprom114
  %68 = load i8*, i8** %arrayidx115, align 8
  %call116 = call %struct._IO_FILE* @fopen(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  store %struct._IO_FILE* %call116, %struct._IO_FILE** %filep, align 8
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %filep, align 8
  %cmp117 = icmp eq %struct._IO_FILE* %69, null
  br i1 %cmp117, label %if.then.119, label %if.else.124

if.then.119:                                      ; preds = %if.else.113
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %71 to i64
  %72 = load i8**, i8*** %argv.addr, align 8
  %arrayidx121 = getelementptr inbounds i8*, i8** %72, i64 %idxprom120
  %73 = load i8*, i8** %arrayidx121, align 8
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* %73)
  %74 = load i32, i32* %show_usage, align 4
  %inc123 = add nsw i32 %74, 1
  store i32 %inc123, i32* %show_usage, align 4
  br label %if.end.131

if.else.124:                                      ; preds = %if.else.113
  %75 = load i32, i32* %named_plot, align 4
  %inc125 = add nsw i32 %75, 1
  store i32 %inc125, i32* %named_plot, align 4
  %76 = load i32, i32* %opened, align 4
  %tobool = icmp ne i32 %76, 0
  br i1 %tobool, label %if.end.129, label %if.then.126

if.then.126:                                      ; preds = %if.else.124
  %call127 = call i32 (...) @openpl()
  %77 = load i32, i32* %opened, align 4
  %inc128 = add nsw i32 %77, 1
  store i32 %inc128, i32* %opened, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.else.124
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %filep, align 8
  %79 = load i8*, i8** %buffer, align 8
  %80 = load i32, i32* %buffer_length, align 4
  call void @read_plot(%struct._IO_FILE* %78, i8* %79, i32 %80)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %filep, align 8
  %call130 = call i32 @fclose(%struct._IO_FILE* %81)
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.129, %if.then.119
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.111
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.104
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.97
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.86
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.73
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.60
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.47
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.29
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.140
  %82 = load i32, i32* %i, align 4
  %inc141 = add nsw i32 %82, 1
  store i32 %inc141, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load i32, i32* %named_plot, align 4
  %cmp142 = icmp eq i32 %83, 0
  br i1 %cmp142, label %if.then.144, label %if.end.150

if.then.144:                                      ; preds = %for.end
  %84 = load i32, i32* %opened, align 4
  %tobool145 = icmp ne i32 %84, 0
  br i1 %tobool145, label %if.end.149, label %if.then.146

if.then.146:                                      ; preds = %if.then.144
  %call147 = call i32 (...) @openpl()
  %85 = load i32, i32* %opened, align 4
  %inc148 = add nsw i32 %85, 1
  store i32 %inc148, i32* %opened, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.146, %if.then.144
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %87 = load i8*, i8** %buffer, align 8
  %88 = load i32, i32* %buffer_length, align 4
  call void @read_plot(%struct._IO_FILE* %86, i8* %87, i32 %88)
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %for.end
  %89 = load i32, i32* %opened, align 4
  %tobool151 = icmp ne i32 %89, 0
  br i1 %tobool151, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %if.end.150
  %call153 = call i32 (...) @closepl()
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.152, %if.end.150
  %90 = load i32, i32* %show_usage, align 4
  %tobool155 = icmp ne i32 %90, 0
  br i1 %tobool155, label %if.then.158, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %if.end.154
  %91 = load i32, i32* %opened, align 4
  %tobool157 = icmp ne i32 %91, 0
  br i1 %tobool157, label %if.end.161, label %if.then.158

if.then.158:                                      ; preds = %lor.lhs.false.156, %if.end.154
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %93 = load i8**, i8*** %argv.addr, align 8
  %94 = load i8*, i8** %93, align 8
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.22, i32 0, i32 0), i8* %94)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %96 = load i8**, i8*** %argv.addr, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8**, i8*** %argv.addr, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %argv.addr, align 8
  %101 = load i8*, i8** %100, align 8
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @.str.23, i32 0, i32 0), i8* %97, i8* %99, i8* %101)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %lor.lhs.false.156
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare i32 @printf(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @openpl(...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @closepl(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
