; ModuleID = './MultiSource.Benchmarks.MiBench/171.office-ispell.term.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }

@co = external global i32, align 4
@li = external global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@contextsize = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Screen too small:  need at least %d lines\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Can't deal with non-interactive use yet.\0A\00", align 1
@osbuf = internal global %struct.termios zeroinitializer, align 4
@termchanged = internal global i32 0, align 4
@sbuf = internal global %struct.termios zeroinitializer, align 4
@uerasechar = external global i32, align 4
@ukillchar = external global i32, align 4
@oldint = internal global void (...)* null, align 8
@oldterm = internal global void (...)* null, align 8
@oldttin = internal global void (...)* null, align 8
@oldttou = internal global void (...)* null, align 8
@oldtstp = internal global void (...)* null, align 8
@tempfile = external global [4096 x i8], align 16
@.str.4 = private unnamed_addr constant [28 x i8] c"Couldn't fork, try later.\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\0A-- Type space to continue --\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @erase() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @move(i32 %row, i32 %col) #0 {
entry:
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @inverse() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @normal() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @backup() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @terminit() #0 {
entry:
  %tpgrp = alloca i32, align 4
  %wsize = alloca %struct.winsize, align 2
  %0 = bitcast %struct.winsize* %wsize to i8*
  %call = call i32 (i32, i64, ...) @ioctl(i32 0, i64 21523, i8* %0) #5
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %ws_col = getelementptr inbounds %struct.winsize, %struct.winsize* %wsize, i32 0, i32 1
  %1 = load i16, i16* %ws_col, align 2
  %conv = zext i16 %1 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %ws_col4 = getelementptr inbounds %struct.winsize, %struct.winsize* %wsize, i32 0, i32 1
  %2 = load i16, i16* %ws_col4, align 2
  %conv5 = zext i16 %2 to i32
  store i32 %conv5, i32* @co, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %ws_row = getelementptr inbounds %struct.winsize, %struct.winsize* %wsize, i32 0, i32 0
  %3 = load i16, i16* %ws_row, align 2
  %conv6 = zext i16 %3 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %ws_row10 = getelementptr inbounds %struct.winsize, %struct.winsize* %wsize, i32 0, i32 0
  %4 = load i16, i16* %ws_row10, align 2
  %conv11 = zext i16 %4 to i32
  store i32 %conv11, i32* @li, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %call14 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #5
  %cmp15 = icmp ne i8* %call14, null
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.13
  %call18 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #5
  %call19 = call i32 @atoi(i8* %call18) #7
  store i32 %call19, i32* @co, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.13
  %call21 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp22 = icmp ne i8* %call21, null
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.20
  %call25 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #5
  %call26 = call i32 @atoi(i8* %call25) #7
  store i32 %call26, i32* @li, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.20
  %5 = load i32, i32* @contextsize, align 4
  %cmp28 = icmp eq i32 %5, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %6 = load i32, i32* @li, align 4
  %mul = mul nsw i32 %6, 10
  %div = sdiv i32 %mul, 100
  store i32 %div, i32* @contextsize, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %7 = load i32, i32* @contextsize, align 4
  %cmp32 = icmp sgt i32 %7, 10
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.31
  store i32 10, i32* @contextsize, align 4
  br label %if.end.39

if.else:                                          ; preds = %if.end.31
  %8 = load i32, i32* @contextsize, align 4
  %cmp35 = icmp slt i32 %8, 2
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else
  store i32 2, i32* @contextsize, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.34
  %9 = load i32, i32* @li, align 4
  %10 = load i32, i32* @contextsize, align 4
  %add = add nsw i32 %10, 8
  %cmp40 = icmp slt i32 %9, %add
  br i1 %cmp40, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.39
  %11 = load i32, i32* @contextsize, align 4
  %cmp42 = icmp sgt i32 %11, 2
  br i1 %cmp42, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* @li, align 4
  %sub = sub nsw i32 %12, 8
  store i32 %sub, i32* @contextsize, align 4
  %13 = load i32, i32* @contextsize, align 4
  %cmp45 = icmp slt i32 %13, 2
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.44
  store i32 2, i32* @contextsize, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true, %if.end.39
  %14 = load i32, i32* @li, align 4
  %cmp50 = icmp slt i32 %14, 10
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.49
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i32 10)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.49
  %call55 = call i32 @isatty(i32 0) #5
  %tobool = icmp ne i32 %call55, 0
  br i1 %tobool, label %if.end.58, label %if.then.56

if.then.56:                                       ; preds = %if.end.54
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end.58:                                        ; preds = %if.end.54
  %call59 = call i32 @tcgetattr(i32 0, %struct.termios* @osbuf) #5
  store i32 1, i32* @termchanged, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.termios* @sbuf to i8*), i8* bitcast (%struct.termios* @osbuf to i8*), i64 60, i32 4, i1 false)
  %17 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 3), align 4
  %and = and i32 %17, -107
  store i32 %and, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 3), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 1), align 4
  %and60 = and i32 %18, -2
  store i32 %and60, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 1), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 0), align 4
  %and61 = and i32 %19, -449
  store i32 %and61, i32* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 0), align 4
  store i8 1, i8* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 5, i64 6), align 1
  store i8 1, i8* getelementptr inbounds (%struct.termios, %struct.termios* @sbuf, i32 0, i32 5, i64 5), align 1
  %call62 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @sbuf) #5
  %20 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @osbuf, i32 0, i32 5, i64 2), align 1
  %conv63 = zext i8 %20 to i32
  store i32 %conv63, i32* @uerasechar, align 4
  %21 = load i8, i8* getelementptr inbounds (%struct.termios, %struct.termios* @osbuf, i32 0, i32 5, i64 3), align 1
  %conv64 = zext i8 %21 to i32
  store i32 %conv64, i32* @ukillchar, align 4
  %22 = bitcast i32* %tpgrp to i8*
  %call65 = call i32 (i32, i64, ...) @ioctl(i32 0, i64 21519, i8* %22) #5
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.58
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end.70:                                        ; preds = %if.end.58
  %call71 = call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  %24 = bitcast void (i32)* %call71 to void (...)*
  store void (...)* %24, void (...)** @oldint, align 8
  %cmp72 = icmp ne void (...)* %24, inttoptr (i64 1 to void (...)*)
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.70
  %call75 = call void (i32)* @signal(i32 2, void (i32)* @done) #5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.70
  %call77 = call void (i32)* @signal(i32 15, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  %25 = bitcast void (i32)* %call77 to void (...)*
  store void (...)* %25, void (...)** @oldterm, align 8
  %cmp78 = icmp ne void (...)* %25, inttoptr (i64 1 to void (...)*)
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.76
  %call81 = call void (i32)* @signal(i32 15, void (i32)* @done) #5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.76
  %call83 = call void (i32)* @signal(i32 21, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  %26 = bitcast void (i32)* %call83 to void (...)*
  store void (...)* %26, void (...)** @oldttin, align 8
  %cmp84 = icmp ne void (...)* %26, inttoptr (i64 1 to void (...)*)
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.82
  %call87 = call void (i32)* @signal(i32 21, void (i32)* @onstop) #5
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.end.82
  %call89 = call void (i32)* @signal(i32 22, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  %27 = bitcast void (i32)* %call89 to void (...)*
  store void (...)* %27, void (...)** @oldttou, align 8
  %cmp90 = icmp ne void (...)* %27, inttoptr (i64 1 to void (...)*)
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.88
  %call93 = call void (i32)* @signal(i32 22, void (i32)* @onstop) #5
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.88
  %call95 = call void (i32)* @signal(i32 20, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  %28 = bitcast void (i32)* %call95 to void (...)*
  store void (...)* %28, void (...)** @oldtstp, align 8
  %cmp96 = icmp ne void (...)* %28, inttoptr (i64 1 to void (...)*)
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.end.94
  %call99 = call void (i32)* @signal(i32 20, void (i32)* @onstop) #5
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.end.94
  ret void
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @isatty(i32) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @tcsetattr(i32, i32, %struct.termios*) #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define void @done(i32 %signo) #0 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, i32* %signo.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i64 0), align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @unlink(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @tempfile, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @termchanged, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  call void @exit(i32 0) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @onstop(i32 %signo) #0 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, i32* %signo.addr, align 4
  %call = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @osbuf) #5
  %0 = load i32, i32* %signo.addr, align 4
  %call1 = call void (i32)* @signal(i32 %0, void (i32)* null) #5
  %1 = load i32, i32* %signo.addr, align 4
  %call2 = call i32 @kill(i32 0, i32 %1) #5
  %2 = load i32, i32* %signo.addr, align 4
  %call3 = call void (i32)* @signal(i32 %2, void (i32)* @onstop) #5
  %call4 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @sbuf) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

; Function Attrs: nounwind uwtable
define void @stop() #0 {
entry:
  call void @onstop(i32 20)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @shellescape(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %argv = alloca [100 x i8*], align 16
  %cp = alloca i8*, align 8
  %i = alloca i32, align 4
  %termstat = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %entry
  %1 = load i8*, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end.32

while.body:                                       ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.9, %while.body
  %3 = load i8*, i8** %cp, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.2
  %5 = load i8*, i8** %cp, align 8
  %6 = load i8, i8* %5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.2
  %7 = phi i1 [ true, %while.cond.2 ], [ %cmp7, %lor.rhs ]
  br i1 %7, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %lor.end
  %8 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond.2

while.end:                                        ; preds = %lor.end
  %9 = load i8*, i8** %cp, align 8
  %10 = load i8, i8* %9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.end.32

if.end:                                           ; preds = %while.end
  %11 = load i8*, i8** %cp, align 8
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [100 x i8*], [100 x i8*]* %argv, i32 0, i64 %idxprom
  store i8* %11, i8** %arrayidx, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.23, %if.end
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp ne i32 %conv14, 32
  br i1 %cmp15, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.13
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv17 = sext i8 %16 to i32
  %cmp18 = icmp ne i32 %conv17, 9
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %17 = load i8*, i8** %cp, align 8
  %18 = load i8, i8* %17, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.13
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.13 ], [ %cmp21, %land.rhs ]
  br i1 %19, label %while.body.23, label %while.end.25

while.body.23:                                    ; preds = %land.end
  %20 = load i8*, i8** %cp, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr24, i8** %cp, align 8
  br label %while.cond.13

while.end.25:                                     ; preds = %land.end
  %21 = load i8*, i8** %cp, align 8
  %22 = load i8, i8* %21, align 1
  %conv26 = sext i8 %22 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %while.end.25
  %23 = load i8*, i8** %cp, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr30, i8** %cp, align 8
  store i8 0, i8* %23, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %while.end.25
  br label %while.cond

while.end.32:                                     ; preds = %if.then, %while.cond
  %24 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [100 x i8*], [100 x i8*]* %argv, i32 0, i64 %idxprom33
  store i8* null, i8** %arrayidx34, align 8
  %call = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @osbuf) #5
  %25 = load void (...)*, void (...)** @oldint, align 8
  %26 = bitcast void (...)* %25 to void (i32)*
  %call35 = call void (i32)* @signal(i32 2, void (i32)* %26) #5
  %27 = load void (...)*, void (...)** @oldterm, align 8
  %28 = bitcast void (...)* %27 to void (i32)*
  %call36 = call void (i32)* @signal(i32 15, void (i32)* %28) #5
  %29 = load void (...)*, void (...)** @oldttin, align 8
  %30 = bitcast void (...)* %29 to void (i32)*
  %call37 = call void (i32)* @signal(i32 21, void (i32)* %30) #5
  %31 = load void (...)*, void (...)** @oldttou, align 8
  %32 = bitcast void (...)* %31 to void (i32)*
  %call38 = call void (i32)* @signal(i32 22, void (i32)* %32) #5
  %33 = load void (...)*, void (...)** @oldtstp, align 8
  %34 = bitcast void (...)* %33 to void (i32)*
  %call39 = call void (i32)* @signal(i32 20, void (i32)* %34) #5
  %call40 = call i32 @fork() #5
  store i32 %call40, i32* %i, align 4
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %while.end.32
  %arrayidx44 = getelementptr inbounds [100 x i8*], [100 x i8*]* %argv, i32 0, i64 0
  %35 = load i8*, i8** %arrayidx44, align 8
  %arraydecay = getelementptr inbounds [100 x i8*], [100 x i8*]* %argv, i32 0, i32 0
  %call45 = call i32 @execvp(i8* %35, i8** %arraydecay) #5
  call void @_exit(i32 123) #9
  unreachable

if.else:                                          ; preds = %while.end.32
  %36 = load i32, i32* %i, align 4
  %cmp46 = icmp sgt i32 %36, 0
  br i1 %cmp46, label %if.then.48, label %if.else.57

if.then.48:                                       ; preds = %if.else
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.53, %if.then.48
  %call50 = call i32 (i32*, ...) bitcast (i32 (...)* @wait to i32 (i32*, ...)*)(i32* %termstat)
  %37 = load i32, i32* %i, align 4
  %cmp51 = icmp ne i32 %call50, %37
  br i1 %cmp51, label %while.body.53, label %while.end.54

while.body.53:                                    ; preds = %while.cond.49
  br label %while.cond.49

while.end.54:                                     ; preds = %while.cond.49
  %38 = load i32, i32* %termstat, align 4
  %cmp55 = icmp eq i32 %38, 31488
  %cond = select i1 %cmp55, i32 0, i32 -1
  store i32 %cond, i32* %termstat, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %if.else
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %termstat, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %while.end.54
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  %39 = load void (...)*, void (...)** @oldint, align 8
  %cmp61 = icmp ne void (...)* %39, inttoptr (i64 1 to void (...)*)
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.60
  %call64 = call void (i32)* @signal(i32 2, void (i32)* @done) #5
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.60
  %40 = load void (...)*, void (...)** @oldterm, align 8
  %cmp66 = icmp ne void (...)* %40, inttoptr (i64 1 to void (...)*)
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.65
  %call69 = call void (i32)* @signal(i32 15, void (i32)* @done) #5
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.65
  %41 = load void (...)*, void (...)** @oldttin, align 8
  %cmp71 = icmp ne void (...)* %41, inttoptr (i64 1 to void (...)*)
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.70
  %call74 = call void (i32)* @signal(i32 21, void (i32)* @onstop) #5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.70
  %42 = load void (...)*, void (...)** @oldttou, align 8
  %cmp76 = icmp ne void (...)* %42, inttoptr (i64 1 to void (...)*)
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.75
  %call79 = call void (i32)* @signal(i32 22, void (i32)* @onstop) #5
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.end.75
  %43 = load void (...)*, void (...)** @oldtstp, align 8
  %cmp81 = icmp ne void (...)* %43, inttoptr (i64 1 to void (...)*)
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.80
  %call84 = call void (i32)* @signal(i32 20, void (i32)* @onstop) #5
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.80
  %call86 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @sbuf) #5
  %44 = load i32, i32* %termstat, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.87, label %if.end.96

if.then.87:                                       ; preds = %if.end.85
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call89 = call i32 @fflush(%struct._IO_FILE* %45)
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.94, %if.then.87
  %call91 = call i32 @getchar()
  %cmp92 = icmp ne i32 %call91, 32
  br i1 %cmp92, label %while.body.94, label %while.end.95

while.body.94:                                    ; preds = %while.cond.90
  br label %while.cond.90

while.end.95:                                     ; preds = %while.cond.90
  br label %if.end.96

if.end.96:                                        ; preds = %while.end.95, %if.end.85
  %46 = load i32, i32* %termstat, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #1

; Function Attrs: noreturn
declare void @_exit(i32) #6

declare i32 @wait(...) #3

declare i32 @printf(i8*, ...) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @getchar() #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
