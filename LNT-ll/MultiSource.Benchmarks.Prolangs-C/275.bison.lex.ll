; ModuleID = './MultiSource.Benchmarks.Prolangs-C/275.bison.lex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bucket = type { %struct.bucket*, %struct.bucket*, i8*, i8*, i16, i16, i16, i16, i8 }

@unlexed = internal global i32 0, align 4
@finput = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"unexpected '/%c' found\00", align 1
@lineno = external global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@symval = common global %struct.bucket* null, align 8
@unlexed_symval = internal global %struct.bucket* null, align 8
@token_buffer = common global [1025 x i8] zeroinitializer, align 16
@numval = common global i32 0, align 4
@translations = external global i32, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"malformatted literal token '\5C%03o'\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid literal token '\5C%c'\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"multicharacter literal tokens NOT supported\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unterminated type name\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"type name too long (%d max)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"guard\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"expect\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"nonassoc\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"semantic_parser\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"pure_parser\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"prec\00", align 1

; Function Attrs: nounwind uwtable
define void @init_lex() #0 {
entry:
  store i32 -1, i32* @unlexed, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @skip_white_space() #0 {
entry:
  %c = alloca i32, align 4
  %inside = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %1 = load i32, i32* %c, align 4
  switch i32 %1, label %sw.default [
    i32 47, label %sw.bb
    i32 10, label %sw.bb.25
    i32 32, label %sw.bb.27
    i32 9, label %sw.bb.27
    i32 12, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call1, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %3, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load i32, i32* %c, align 4
  call void @fatals(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call2, i32* %c, align 4
  store i32 1, i32* %inside, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.end
  %6 = load i32, i32* %inside, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end.24

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %7, 42
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %while.body
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.7, %if.then.4
  %8 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %8, 42
  br i1 %cmp6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  store i32 %call8, i32* %c, align 4
  br label %while.cond.5

while.end:                                        ; preds = %while.cond.5
  %10 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %10, 47
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %while.end
  store i32 0, i32* %inside, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call11 = call i32 @_IO_getc(%struct._IO_FILE* %11)
  store i32 %call11, i32* %c, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %while.end
  br label %if.end.23

if.else:                                          ; preds = %while.body
  %12 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %12, 10
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else
  %13 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @lineno, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call15 = call i32 @_IO_getc(%struct._IO_FILE* %14)
  store i32 %call15, i32* %c, align 4
  br label %if.end.22

if.else.16:                                       ; preds = %if.else
  %15 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %15, -1
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.16
  call void @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.21

if.else.19:                                       ; preds = %if.else.16
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call20 = call i32 @_IO_getc(%struct._IO_FILE* %16)
  store i32 %call20, i32* %c, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.12
  br label %while.cond

while.end.24:                                     ; preds = %while.cond
  br label %sw.epilog

sw.bb.25:                                         ; preds = %for.cond
  %17 = load i32, i32* @lineno, align 4
  %inc26 = add nsw i32 %17, 1
  store i32 %inc26, i32* @lineno, align 4
  br label %sw.bb.27

sw.bb.27:                                         ; preds = %for.cond, %for.cond, %for.cond, %sw.bb.25
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call28 = call i32 @_IO_getc(%struct._IO_FILE* %18)
  store i32 %call28, i32* %c, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %19 = load i32, i32* %c, align 4
  ret i32 %19

sw.epilog:                                        ; preds = %sw.bb.27, %while.end.24
  br label %for.cond
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare void @fatals(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @fatal(i8*) #1

; Function Attrs: nounwind uwtable
define void @unlex(i32 %token) #0 {
entry:
  %token.addr = alloca i32, align 4
  store i32 %token, i32* %token.addr, align 4
  %0 = load i32, i32* %token.addr, align 4
  store i32 %0, i32* @unlexed, align 4
  %1 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %1, %struct.bucket** @unlexed_symval, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lex() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca i8*, align 8
  %code = alloca i32, align 4
  %0 = load i32, i32* @unlexed, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bucket*, %struct.bucket** @unlexed_symval, align 8
  store %struct.bucket* %1, %struct.bucket** @symval, align 8
  %2 = load i32, i32* @unlexed, align 4
  store i32 %2, i32* %c, align 4
  store i32 -1, i32* @unlexed, align 4
  %3 = load i32, i32* %c, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @skip_white_space()
  store i32 %call, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  switch i32 %4, label %sw.default [
    i32 -1, label %sw.bb
    i32 65, label %sw.bb.1
    i32 66, label %sw.bb.1
    i32 67, label %sw.bb.1
    i32 68, label %sw.bb.1
    i32 69, label %sw.bb.1
    i32 70, label %sw.bb.1
    i32 71, label %sw.bb.1
    i32 72, label %sw.bb.1
    i32 73, label %sw.bb.1
    i32 74, label %sw.bb.1
    i32 75, label %sw.bb.1
    i32 76, label %sw.bb.1
    i32 77, label %sw.bb.1
    i32 78, label %sw.bb.1
    i32 79, label %sw.bb.1
    i32 80, label %sw.bb.1
    i32 81, label %sw.bb.1
    i32 82, label %sw.bb.1
    i32 83, label %sw.bb.1
    i32 84, label %sw.bb.1
    i32 85, label %sw.bb.1
    i32 86, label %sw.bb.1
    i32 87, label %sw.bb.1
    i32 88, label %sw.bb.1
    i32 89, label %sw.bb.1
    i32 90, label %sw.bb.1
    i32 97, label %sw.bb.1
    i32 98, label %sw.bb.1
    i32 99, label %sw.bb.1
    i32 100, label %sw.bb.1
    i32 101, label %sw.bb.1
    i32 102, label %sw.bb.1
    i32 103, label %sw.bb.1
    i32 104, label %sw.bb.1
    i32 105, label %sw.bb.1
    i32 106, label %sw.bb.1
    i32 107, label %sw.bb.1
    i32 108, label %sw.bb.1
    i32 109, label %sw.bb.1
    i32 110, label %sw.bb.1
    i32 111, label %sw.bb.1
    i32 112, label %sw.bb.1
    i32 113, label %sw.bb.1
    i32 114, label %sw.bb.1
    i32 115, label %sw.bb.1
    i32 116, label %sw.bb.1
    i32 117, label %sw.bb.1
    i32 118, label %sw.bb.1
    i32 119, label %sw.bb.1
    i32 120, label %sw.bb.1
    i32 121, label %sw.bb.1
    i32 122, label %sw.bb.1
    i32 46, label %sw.bb.1
    i32 95, label %sw.bb.1
    i32 48, label %sw.bb.15
    i32 49, label %sw.bb.15
    i32 50, label %sw.bb.15
    i32 51, label %sw.bb.15
    i32 52, label %sw.bb.15
    i32 53, label %sw.bb.15
    i32 54, label %sw.bb.15
    i32 55, label %sw.bb.15
    i32 56, label %sw.bb.15
    i32 57, label %sw.bb.15
    i32 39, label %sw.bb.27
    i32 44, label %sw.bb.184
    i32 58, label %sw.bb.185
    i32 59, label %sw.bb.186
    i32 124, label %sw.bb.187
    i32 123, label %sw.bb.188
    i32 61, label %sw.bb.189
    i32 60, label %sw.bb.209
    i32 37, label %sw.bb.230
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %sw.bb.1
  %5 = load i32, i32* %c, align 4
  %idxprom = sext i32 %5 to i64
  %call2 = call i16** @__ctype_b_loc() #4
  %6 = load i16*, i16** %call2, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %8 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %8, 95
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load i32, i32* %c, align 4
  %cmp5 = icmp eq i32 %9, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %10 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp5, %lor.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load i8*, i8** %p, align 8
  %cmp7 = icmp ult i8* %11, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1024)
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %while.body
  %12 = load i32, i32* %c, align 4
  %conv10 = trunc i32 %12 to i8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv10, i8* %13, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %while.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call12 = call i32 @_IO_getc(%struct._IO_FILE* %14)
  store i32 %call12, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %15 = load i8*, i8** %p, align 8
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* %c, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call13 = call i32 @ungetc(i32 %16, %struct._IO_FILE* %17)
  %call14 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (...)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0))
  store %struct.bucket* %call14, %struct.bucket** @symval, align 8
  store i32 1, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 0, i32* @numval, align 4
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.23, %sw.bb.15
  %18 = load i32, i32* %c, align 4
  %idxprom17 = sext i32 %18 to i64
  %call18 = call i16** @__ctype_b_loc() #4
  %19 = load i16*, i16** %call18, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %19, i64 %idxprom17
  %20 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %20 to i32
  %and21 = and i32 %conv20, 2048
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %while.body.23, label %while.end.25

while.body.23:                                    ; preds = %while.cond.16
  %21 = load i32, i32* @numval, align 4
  %mul = mul nsw i32 %21, 10
  %22 = load i32, i32* %c, align 4
  %add = add nsw i32 %mul, %22
  %sub = sub nsw i32 %add, 48
  store i32 %sub, i32* @numval, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call24 = call i32 @_IO_getc(%struct._IO_FILE* %23)
  store i32 %call24, i32* %c, align 4
  br label %while.cond.16

while.end.25:                                     ; preds = %while.cond.16
  %24 = load i32, i32* %c, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call26 = call i32 @ungetc(i32 %24, %struct._IO_FILE* %25)
  store i32 22, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %if.end
  store i32 -1, i32* @translations, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call28 = call i32 @_IO_getc(%struct._IO_FILE* %26)
  store i32 %call28, i32* %c, align 4
  store i32 0, i32* %code, align 4
  %27 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %27, 92
  br i1 %cmp29, label %if.then.31, label %if.else.98

if.then.31:                                       ; preds = %sw.bb.27
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call32 = call i32 @_IO_getc(%struct._IO_FILE* %28)
  store i32 %call32, i32* %c, align 4
  %29 = load i32, i32* %c, align 4
  %cmp33 = icmp sle i32 %29, 55
  br i1 %cmp33, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.31
  %30 = load i32, i32* %c, align 4
  %cmp35 = icmp sge i32 %30, 48
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %land.lhs.true
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.43, %if.then.37
  %31 = load i32, i32* %c, align 4
  %cmp39 = icmp sle i32 %31, 55
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.38
  %32 = load i32, i32* %c, align 4
  %cmp41 = icmp sge i32 %32, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.38
  %33 = phi i1 [ false, %while.cond.38 ], [ %cmp41, %land.rhs ]
  br i1 %33, label %while.body.43, label %while.end.48

while.body.43:                                    ; preds = %land.end
  %34 = load i32, i32* %code, align 4
  %mul44 = mul nsw i32 %34, 8
  %35 = load i32, i32* %c, align 4
  %sub45 = sub nsw i32 %35, 48
  %add46 = add nsw i32 %mul44, %sub45
  store i32 %add46, i32* %code, align 4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call47 = call i32 @_IO_getc(%struct._IO_FILE* %36)
  store i32 %call47, i32* %c, align 4
  br label %while.cond.38

while.end.48:                                     ; preds = %land.end
  %37 = load i32, i32* %code, align 4
  %cmp49 = icmp sge i32 %37, 128
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %while.end.48
  %38 = load i32, i32* %code, align 4
  %cmp52 = icmp slt i32 %38, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.51, %while.end.48
  %39 = load i32, i32* %code, align 4
  call void @fatals(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %39, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %lor.lhs.false.51
  br label %if.end.97

if.else:                                          ; preds = %land.lhs.true, %if.then.31
  %40 = load i32, i32* %c, align 4
  %cmp56 = icmp eq i32 %40, 116
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else
  store i32 9, i32* %code, align 4
  br label %if.end.95

if.else.59:                                       ; preds = %if.else
  %41 = load i32, i32* %c, align 4
  %cmp60 = icmp eq i32 %41, 110
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.else.59
  store i32 10, i32* %code, align 4
  br label %if.end.94

if.else.63:                                       ; preds = %if.else.59
  %42 = load i32, i32* %c, align 4
  %cmp64 = icmp eq i32 %42, 114
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.else.63
  store i32 13, i32* %code, align 4
  br label %if.end.93

if.else.67:                                       ; preds = %if.else.63
  %43 = load i32, i32* %c, align 4
  %cmp68 = icmp eq i32 %43, 102
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.67
  store i32 12, i32* %code, align 4
  br label %if.end.92

if.else.71:                                       ; preds = %if.else.67
  %44 = load i32, i32* %c, align 4
  %cmp72 = icmp eq i32 %44, 98
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.else.71
  store i32 8, i32* %code, align 4
  br label %if.end.91

if.else.75:                                       ; preds = %if.else.71
  %45 = load i32, i32* %c, align 4
  %cmp76 = icmp eq i32 %45, 92
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.else.75
  store i32 92, i32* %code, align 4
  br label %if.end.90

if.else.79:                                       ; preds = %if.else.75
  %46 = load i32, i32* %c, align 4
  %cmp80 = icmp eq i32 %46, 39
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %if.else.79
  store i32 39, i32* %code, align 4
  br label %if.end.89

if.else.83:                                       ; preds = %if.else.79
  %47 = load i32, i32* %c, align 4
  %cmp84 = icmp eq i32 %47, 34
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.else.83
  store i32 34, i32* %code, align 4
  br label %if.end.88

if.else.87:                                       ; preds = %if.else.83
  %48 = load i32, i32* %c, align 4
  call void @fatals(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.82
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.78
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.74
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.70
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.66
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.62
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.58
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call96 = call i32 @_IO_getc(%struct._IO_FILE* %49)
  store i32 %call96, i32* %c, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.95, %if.end.55
  br label %if.end.100

if.else.98:                                       ; preds = %sw.bb.27
  %50 = load i32, i32* %c, align 4
  store i32 %50, i32* %code, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call99 = call i32 @_IO_getc(%struct._IO_FILE* %51)
  store i32 %call99, i32* %c, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.98, %if.end.97
  %52 = load i32, i32* %c, align 4
  %cmp101 = icmp ne i32 %52, 39
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.100
  call void @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.end.100
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8** %p, align 8
  %53 = load i8*, i8** %p, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr105, i8** %p, align 8
  store i8 39, i8* %53, align 1
  %54 = load i32, i32* %code, align 4
  %cmp106 = icmp eq i32 %54, 92
  br i1 %cmp106, label %if.then.108, label %if.else.111

if.then.108:                                      ; preds = %if.end.104
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1), i8** %p, align 8
  %55 = load i8*, i8** %p, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr109, i8** %p, align 8
  store i8 92, i8* %55, align 1
  %56 = load i8*, i8** %p, align 8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr110, i8** %p, align 8
  store i8 92, i8* %56, align 1
  br label %if.end.176

if.else.111:                                      ; preds = %if.end.104
  %57 = load i32, i32* %code, align 4
  %cmp112 = icmp eq i32 %57, 39
  br i1 %cmp112, label %if.then.114, label %if.else.117

if.then.114:                                      ; preds = %if.else.111
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1), i8** %p, align 8
  %58 = load i8*, i8** %p, align 8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr115, i8** %p, align 8
  store i8 92, i8* %58, align 1
  %59 = load i8*, i8** %p, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr116, i8** %p, align 8
  store i8 39, i8* %59, align 1
  br label %if.end.175

if.else.117:                                      ; preds = %if.else.111
  %60 = load i32, i32* %code, align 4
  %cmp118 = icmp sge i32 %60, 32
  br i1 %cmp118, label %land.lhs.true.120, label %if.else.126

land.lhs.true.120:                                ; preds = %if.else.117
  %61 = load i32, i32* %code, align 4
  %cmp121 = icmp ne i32 %61, 127
  br i1 %cmp121, label %if.then.123, label %if.else.126

if.then.123:                                      ; preds = %land.lhs.true.120
  %62 = load i32, i32* %code, align 4
  %conv124 = trunc i32 %62 to i8
  %63 = load i8*, i8** %p, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr125, i8** %p, align 8
  store i8 %conv124, i8* %63, align 1
  br label %if.end.174

if.else.126:                                      ; preds = %land.lhs.true.120, %if.else.117
  %64 = load i32, i32* %code, align 4
  %cmp127 = icmp eq i32 %64, 9
  br i1 %cmp127, label %if.then.129, label %if.else.132

if.then.129:                                      ; preds = %if.else.126
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1), i8** %p, align 8
  %65 = load i8*, i8** %p, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr130, i8** %p, align 8
  store i8 92, i8* %65, align 1
  %66 = load i8*, i8** %p, align 8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr131, i8** %p, align 8
  store i8 116, i8* %66, align 1
  br label %if.end.173

if.else.132:                                      ; preds = %if.else.126
  %67 = load i32, i32* %code, align 4
  %cmp133 = icmp eq i32 %67, 10
  br i1 %cmp133, label %if.then.135, label %if.else.138

if.then.135:                                      ; preds = %if.else.132
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1), i8** %p, align 8
  %68 = load i8*, i8** %p, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr136, i8** %p, align 8
  store i8 92, i8* %68, align 1
  %69 = load i8*, i8** %p, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr137, i8** %p, align 8
  store i8 110, i8* %69, align 1
  br label %if.end.172

if.else.138:                                      ; preds = %if.else.132
  %70 = load i32, i32* %code, align 4
  %cmp139 = icmp eq i32 %70, 13
  br i1 %cmp139, label %if.then.141, label %if.else.144

if.then.141:                                      ; preds = %if.else.138
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1), i8** %p, align 8
  %71 = load i8*, i8** %p, align 8
  %incdec.ptr142 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr142, i8** %p, align 8
  store i8 92, i8* %71, align 1
  %72 = load i8*, i8** %p, align 8
  %incdec.ptr143 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr143, i8** %p, align 8
  store i8 114, i8* %72, align 1
  br label %if.end.171

if.else.144:                                      ; preds = %if.else.138
  %73 = load i32, i32* %code, align 4
  %cmp145 = icmp eq i32 %73, 8
  br i1 %cmp145, label %if.then.147, label %if.else.150

if.then.147:                                      ; preds = %if.else.144
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1), i8** %p, align 8
  %74 = load i8*, i8** %p, align 8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr148, i8** %p, align 8
  store i8 92, i8* %74, align 1
  %75 = load i8*, i8** %p, align 8
  %incdec.ptr149 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr149, i8** %p, align 8
  store i8 98, i8* %75, align 1
  br label %if.end.170

if.else.150:                                      ; preds = %if.else.144
  %76 = load i32, i32* %code, align 4
  %cmp151 = icmp eq i32 %76, 12
  br i1 %cmp151, label %if.then.153, label %if.else.156

if.then.153:                                      ; preds = %if.else.150
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1), i8** %p, align 8
  %77 = load i8*, i8** %p, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr154, i8** %p, align 8
  store i8 92, i8* %77, align 1
  %78 = load i8*, i8** %p, align 8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr155, i8** %p, align 8
  store i8 102, i8* %78, align 1
  br label %if.end.169

if.else.156:                                      ; preds = %if.else.150
  %79 = load i32, i32* %code, align 4
  %div = sdiv i32 %79, 64
  %add157 = add nsw i32 %div, 48
  %conv158 = trunc i32 %add157 to i8
  %80 = load i8*, i8** %p, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr159, i8** %p, align 8
  store i8 %conv158, i8* %80, align 1
  %81 = load i32, i32* %code, align 4
  %div160 = sdiv i32 %81, 8
  %and161 = and i32 %div160, 7
  %add162 = add nsw i32 %and161, 48
  %conv163 = trunc i32 %add162 to i8
  %82 = load i8*, i8** %p, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr164, i8** %p, align 8
  store i8 %conv163, i8* %82, align 1
  %83 = load i32, i32* %code, align 4
  %and165 = and i32 %83, 7
  %add166 = add nsw i32 %and165, 48
  %conv167 = trunc i32 %add166 to i8
  %84 = load i8*, i8** %p, align 8
  %incdec.ptr168 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr168, i8** %p, align 8
  store i8 %conv167, i8* %84, align 1
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.156, %if.then.153
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.147
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.141
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.135
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.129
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.123
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.114
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.108
  %85 = load i8*, i8** %p, align 8
  %incdec.ptr177 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr177, i8** %p, align 8
  store i8 39, i8* %85, align 1
  %86 = load i8*, i8** %p, align 8
  store i8 0, i8* %86, align 1
  %call178 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (...)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0))
  store %struct.bucket* %call178, %struct.bucket** @symval, align 8
  %87 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %class = getelementptr inbounds %struct.bucket, %struct.bucket* %87, i32 0, i32 8
  store i8 1, i8* %class, align 1
  %88 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %user_token_number = getelementptr inbounds %struct.bucket, %struct.bucket* %88, i32 0, i32 7
  %89 = load i16, i16* %user_token_number, align 2
  %tobool179 = icmp ne i16 %89, 0
  br i1 %tobool179, label %if.end.183, label %if.then.180

if.then.180:                                      ; preds = %if.end.176
  %90 = load i32, i32* %code, align 4
  %conv181 = trunc i32 %90 to i16
  %91 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %user_token_number182 = getelementptr inbounds %struct.bucket, %struct.bucket* %91, i32 0, i32 7
  store i16 %conv181, i16* %user_token_number182, align 2
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.180, %if.end.176
  store i32 1, i32* %retval
  br label %return

sw.bb.184:                                        ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

sw.bb.185:                                        ; preds = %if.end
  store i32 3, i32* %retval
  br label %return

sw.bb.186:                                        ; preds = %if.end
  store i32 4, i32* %retval
  br label %return

sw.bb.187:                                        ; preds = %if.end
  store i32 5, i32* %retval
  br label %return

sw.bb.188:                                        ; preds = %if.end
  store i32 6, i32* %retval
  br label %return

sw.bb.189:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %lor.end.203, %sw.bb.189
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call190 = call i32 @_IO_getc(%struct._IO_FILE* %92)
  store i32 %call190, i32* %c, align 4
  %93 = load i32, i32* %c, align 4
  %cmp191 = icmp eq i32 %93, 10
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %do.body
  %94 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* @lineno, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.194
  %95 = load i32, i32* %c, align 4
  %cmp195 = icmp eq i32 %95, 32
  br i1 %cmp195, label %lor.end.203, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %do.cond
  %96 = load i32, i32* %c, align 4
  %cmp198 = icmp eq i32 %96, 10
  br i1 %cmp198, label %lor.end.203, label %lor.rhs.200

lor.rhs.200:                                      ; preds = %lor.lhs.false.197
  %97 = load i32, i32* %c, align 4
  %cmp201 = icmp eq i32 %97, 9
  br label %lor.end.203

lor.end.203:                                      ; preds = %lor.rhs.200, %lor.lhs.false.197, %do.cond
  %98 = phi i1 [ true, %lor.lhs.false.197 ], [ true, %do.cond ], [ %cmp201, %lor.rhs.200 ]
  br i1 %98, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end.203
  %99 = load i32, i32* %c, align 4
  %cmp204 = icmp eq i32 %99, 123
  br i1 %cmp204, label %if.then.206, label %if.else.207

if.then.206:                                      ; preds = %do.end
  store i32 6, i32* %retval
  br label %return

if.else.207:                                      ; preds = %do.end
  %100 = load i32, i32* %c, align 4
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call208 = call i32 @ungetc(i32 %100, %struct._IO_FILE* %101)
  store i32 24, i32* %retval
  br label %return

sw.bb.209:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8** %p, align 8
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call210 = call i32 @_IO_getc(%struct._IO_FILE* %102)
  store i32 %call210, i32* %c, align 4
  br label %while.cond.211

while.cond.211:                                   ; preds = %if.end.225, %sw.bb.209
  %103 = load i32, i32* %c, align 4
  %cmp212 = icmp ne i32 %103, 62
  br i1 %cmp212, label %while.body.214, label %while.end.229

while.body.214:                                   ; preds = %while.cond.211
  %104 = load i32, i32* %c, align 4
  %cmp215 = icmp eq i32 %104, 10
  br i1 %cmp215, label %if.then.220, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %while.body.214
  %105 = load i32, i32* %c, align 4
  %cmp218 = icmp eq i32 %105, -1
  br i1 %cmp218, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %lor.lhs.false.217, %while.body.214
  call void @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %lor.lhs.false.217
  %106 = load i8*, i8** %p, align 8
  %cmp222 = icmp uge i8* %106, getelementptr inbounds (i8, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1024), i64 -1)
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.221
  call void @fatals(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 1023, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.221
  %107 = load i32, i32* %c, align 4
  %conv226 = trunc i32 %107 to i8
  %108 = load i8*, i8** %p, align 8
  %incdec.ptr227 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr227, i8** %p, align 8
  store i8 %conv226, i8* %108, align 1
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call228 = call i32 @_IO_getc(%struct._IO_FILE* %109)
  store i32 %call228, i32* %c, align 4
  br label %while.cond.211

while.end.229:                                    ; preds = %while.cond.211
  %110 = load i8*, i8** %p, align 8
  store i8 0, i8* %110, align 1
  store i32 21, i32* %retval
  br label %return

sw.bb.230:                                        ; preds = %if.end
  %call231 = call i32 @parse_percent_token()
  store i32 %call231, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 24, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.230, %while.end.229, %if.else.207, %if.then.206, %sw.bb.188, %sw.bb.187, %sw.bb.186, %sw.bb.185, %sw.bb.184, %if.end.183, %while.end.25, %while.end, %sw.bb, %if.then
  %111 = load i32, i32* %retval
  ret i32 %111
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare %struct.bucket* @getsym(...) #1

; Function Attrs: nounwind uwtable
define i32 @parse_percent_token() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8** %p, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  switch i32 %1, label %sw.epilog [
    i32 37, label %sw.bb
    i32 123, label %sw.bb.1
    i32 60, label %sw.bb.2
    i32 62, label %sw.bb.3
    i32 50, label %sw.bb.4
    i32 48, label %sw.bb.5
    i32 61, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 15, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 16, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 18, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %2 = load i32, i32* %c, align 4
  %idxprom = sext i32 %2 to i64
  %call7 = call i16** @__ctype_b_loc() #4
  %3 = load i16*, i16** %call7, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  store i32 24, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end
  %5 = load i32, i32* %c, align 4
  %idxprom8 = sext i32 %5 to i64
  %call9 = call i16** @__ctype_b_loc() #4
  %6 = load i16*, i16** %call9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 %idxprom8
  %7 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %7 to i32
  %and12 = and i32 %conv11, 1024
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %8 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %8, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %9 = phi i1 [ true, %while.cond ], [ %cmp, %lor.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %10 = load i8*, i8** %p, align 8
  %cmp15 = icmp ult i8* %10, getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i64 1024)
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %while.body
  %11 = load i32, i32* %c, align 4
  %conv18 = trunc i32 %11 to i8
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv18, i8* %12, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %while.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call20 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  store i32 %call20, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %14 = load i32, i32* %c, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call21 = call i32 @ungetc(i32 %14, %struct._IO_FILE* %15)
  %16 = load i8*, i8** %p, align 8
  store i8 0, i8* %16, align 1
  %call22 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #5
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %call25 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %lor.lhs.false, %while.end
  store i32 9, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %call29 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #5
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else
  store i32 10, i32* %retval
  br label %return

if.else.33:                                       ; preds = %if.else
  %call34 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #5
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.33
  store i32 12, i32* %retval
  br label %return

if.else.38:                                       ; preds = %if.else.33
  %call39 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #5
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.else.38
  store i32 11, i32* %retval
  br label %return

if.else.43:                                       ; preds = %if.else.38
  %call44 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.43
  store i32 13, i32* %retval
  br label %return

if.else.48:                                       ; preds = %if.else.43
  %call49 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else.48
  store i32 23, i32* %retval
  br label %return

if.else.53:                                       ; preds = %if.else.48
  %call54 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.53
  store i32 14, i32* %retval
  br label %return

if.else.58:                                       ; preds = %if.else.53
  %call59 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #5
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.else.58
  store i32 15, i32* %retval
  br label %return

if.else.63:                                       ; preds = %if.else.58
  %call64 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #5
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.else.63
  store i32 16, i32* %retval
  br label %return

if.else.68:                                       ; preds = %if.else.63
  %call69 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #5
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.else.68
  %call73 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #5
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %lor.lhs.false.72, %if.else.68
  store i32 17, i32* %retval
  br label %return

if.else.77:                                       ; preds = %lor.lhs.false.72
  %call78 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)) #5
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.else.77
  store i32 19, i32* %retval
  br label %return

if.else.82:                                       ; preds = %if.else.77
  %call83 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0)) #5
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.else.82
  store i32 20, i32* %retval
  br label %return

if.else.87:                                       ; preds = %if.else.82
  %call88 = call i32 @strcmp(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #5
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.else.87
  store i32 18, i32* %retval
  br label %return

if.else.92:                                       ; preds = %if.else.87
  store i32 24, i32* %retval
  br label %return

return:                                           ; preds = %if.else.92, %if.then.91, %if.then.86, %if.then.81, %if.then.76, %if.then.67, %if.then.62, %if.then.57, %if.then.52, %if.then.47, %if.then.42, %if.then.37, %if.then.32, %if.then.28, %if.then, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
