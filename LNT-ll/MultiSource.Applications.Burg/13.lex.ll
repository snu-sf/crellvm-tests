; ModuleID = './MultiSource.Applications.Burg/13.lex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.YYSTYPE = type { i8* }

@rcsid_lex = global [45 x i8] c"$Id: lex.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@done = internal global i32 0, align 4
@buf = internal global [8192 x i8] zeroinitializer, align 16
@yyline = internal global i32 1, align 4
@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"illegal char /\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ID too long\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gram\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"illegal character after %%\00", align 1
@yylval = external global %union.YYSTYPE, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"illegal char \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"(\5C%03o)\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"line %d: %s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@outfile = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"Unexpected EOF in comment on line \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"bad %%\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Unclosed block of C code started on line \00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Unexpected EOF in string on line \00", align 1

; Function Attrs: nounwind uwtable
define void @yypurge() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @code_get()
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @code_get() #0 {
entry:
  %ch = alloca i32, align 4
  %call = call i32 @getchar()
  store i32 %call, i32* %ch, align 4
  %cmp = icmp eq i32 %call, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @yyline, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @yyline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %ch, align 4
  %cmp1 = icmp ne i32 %1, -1
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* %ch, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call3 = call i32 @fputc(i32 %2, %struct._IO_FILE* %3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* %ch, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @yyfinished() #0 {
entry:
  store i32 1, i32* @done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @yylex() #0 {
entry:
  %retval = alloca i32, align 4
  %ch = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %val = alloca i32, align 4
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @buf, i32 0, i32 0), i8** %ptr, align 8
  %0 = load i32, i32* @done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.default, %if.end.41, %sw.bb.11, %if.else, %if.then.6, %sw.bb.1, %sw.bb, %if.end
  %call = call i32 @getchar()
  store i32 %call, i32* %ch, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %ch, align 4
  switch i32 %1, label %sw.default.42 [
    i32 32, label %sw.bb
    i32 12, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb.1
    i32 40, label %sw.bb.2
    i32 41, label %sw.bb.2
    i32 44, label %sw.bb.2
    i32 58, label %sw.bb.2
    i32 59, label %sw.bb.2
    i32 61, label %sw.bb.2
    i32 47, label %sw.bb.3
    i32 37, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  br label %while.cond

sw.bb.1:                                          ; preds = %while.body
  %2 = load i32, i32* @yyline, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @yyline, align 4
  br label %while.cond

sw.bb.2:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %3 = load i32, i32* %ch, align 4
  store i32 %3, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %while.body
  %call4 = call i32 @getchar()
  store i32 %call4, i32* %ch, align 4
  %4 = load i32, i32* %ch, align 4
  %cmp5 = icmp eq i32 %4, 42
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %sw.bb.3
  call void @ReadOldComment(i32 ()* @simple_get)
  br label %while.cond

if.else:                                          ; preds = %sw.bb.3
  %5 = load i32, i32* %ch, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call7 = call i32 @ungetc(i32 %5, %struct._IO_FILE* %6)
  call void @yyerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %while.cond

sw.bb.8:                                          ; preds = %while.body
  %call9 = call i32 @getchar()
  store i32 %call9, i32* %ch, align 4
  %7 = load i32, i32* %ch, align 4
  switch i32 %7, label %sw.default [
    i32 37, label %sw.bb.10
    i32 123, label %sw.bb.11
    i32 115, label %sw.bb.12
    i32 103, label %sw.bb.12
    i32 116, label %sw.bb.12
  ]

sw.bb.10:                                         ; preds = %sw.bb.8
  store i32 261, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %sw.bb.8
  call void @ReadCodeBlock()
  br label %while.cond

sw.bb.12:                                         ; preds = %sw.bb.8, %sw.bb.8, %sw.bb.8
  br label %do.body

do.body:                                          ; preds = %lor.end, %sw.bb.12
  %8 = load i8*, i8** %ptr, align 8
  %cmp13 = icmp uge i8* %8, getelementptr inbounds ([8192 x i8], [8192 x i8]* @buf, i64 1, i64 0)
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  call void @yyerror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 257, i32* %retval
  br label %return

if.else.15:                                       ; preds = %do.body
  %9 = load i32, i32* %ch, align 4
  %conv = trunc i32 %9 to i8
  %10 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %conv, i8* %10, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15
  %call17 = call i32 @getchar()
  store i32 %call17, i32* %ch, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  %11 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %11 to i64
  %call18 = call i16** @__ctype_b_loc() #6
  %12 = load i16*, i16** %call18, align 8
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %conv19 = zext i16 %13 to i32
  %and = and i32 %conv19, 1024
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %14 = load i32, i32* %ch, align 4
  %idxprom21 = sext i32 %14 to i64
  %call22 = call i16** @__ctype_b_loc() #6
  %15 = load i16*, i16** %call22, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %15, i64 %idxprom21
  %16 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %16 to i32
  %and25 = and i32 %conv24, 2048
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %17 = load i32, i32* %ch, align 4
  %cmp27 = icmp eq i32 %17, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.cond
  %18 = phi i1 [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp27, %lor.rhs ]
  br i1 %18, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %19 = load i32, i32* %ch, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call29 = call i32 @ungetc(i32 %19, %struct._IO_FILE* %20)
  %21 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %21, align 1
  %call30 = call i32 @strcmp(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @buf, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #7
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %do.end
  store i32 258, i32* %retval
  br label %return

if.end.33:                                        ; preds = %do.end
  %call34 = call i32 @strcmp(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @buf, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.33
  store i32 260, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  %call38 = call i32 @strcmp(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @buf, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #7
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  store i32 259, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  call void @yyerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %while.cond

sw.default:                                       ; preds = %sw.bb.8
  call void @yyerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %while.cond

sw.default.42:                                    ; preds = %while.body
  %22 = load i32, i32* %ch, align 4
  %idxprom43 = sext i32 %22 to i64
  %call44 = call i16** @__ctype_b_loc() #6
  %23 = load i16*, i16** %call44, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %23, i64 %idxprom43
  %24 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %24 to i32
  %and47 = and i32 %conv46, 1024
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.80

if.then.49:                                       ; preds = %sw.default.42
  br label %do.body.50

do.body.50:                                       ; preds = %lor.end.76, %if.then.49
  %25 = load i8*, i8** %ptr, align 8
  %cmp51 = icmp uge i8* %25, getelementptr inbounds ([8192 x i8], [8192 x i8]* @buf, i64 1, i64 0)
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.50
  call void @yyerror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 257, i32* %retval
  br label %return

if.else.54:                                       ; preds = %do.body.50
  %26 = load i32, i32* %ch, align 4
  %conv55 = trunc i32 %26 to i8
  %27 = load i8*, i8** %ptr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr56, i8** %ptr, align 8
  store i8 %conv55, i8* %27, align 1
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54
  %call58 = call i32 @getchar()
  store i32 %call58, i32* %ch, align 4
  br label %do.cond.59

do.cond.59:                                       ; preds = %if.end.57
  %28 = load i32, i32* %ch, align 4
  %idxprom60 = sext i32 %28 to i64
  %call61 = call i16** @__ctype_b_loc() #6
  %29 = load i16*, i16** %call61, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %29, i64 %idxprom60
  %30 = load i16, i16* %arrayidx62, align 2
  %conv63 = zext i16 %30 to i32
  %and64 = and i32 %conv63, 1024
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %lor.end.76, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %do.cond.59
  %31 = load i32, i32* %ch, align 4
  %idxprom67 = sext i32 %31 to i64
  %call68 = call i16** @__ctype_b_loc() #6
  %32 = load i16*, i16** %call68, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %32, i64 %idxprom67
  %33 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %33 to i32
  %and71 = and i32 %conv70, 2048
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %lor.end.76, label %lor.rhs.73

lor.rhs.73:                                       ; preds = %lor.lhs.false.66
  %34 = load i32, i32* %ch, align 4
  %cmp74 = icmp eq i32 %34, 95
  br label %lor.end.76

lor.end.76:                                       ; preds = %lor.rhs.73, %lor.lhs.false.66, %do.cond.59
  %35 = phi i1 [ true, %lor.lhs.false.66 ], [ true, %do.cond.59 ], [ %cmp74, %lor.rhs.73 ]
  br i1 %35, label %do.body.50, label %do.end.77

do.end.77:                                        ; preds = %lor.end.76
  %36 = load i32, i32* %ch, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call78 = call i32 @ungetc(i32 %36, %struct._IO_FILE* %37)
  %38 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %38, align 1
  %call79 = call i8* @StrCopy(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @buf, i32 0, i32 0))
  store i8* %call79, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 263, i32* %retval
  br label %return

if.end.80:                                        ; preds = %sw.default.42
  %39 = load i32, i32* %ch, align 4
  %idxprom81 = sext i32 %39 to i64
  %call82 = call i16** @__ctype_b_loc() #6
  %40 = load i16*, i16** %call82, align 8
  %arrayidx83 = getelementptr inbounds i16, i16* %40, i64 %idxprom81
  %41 = load i16, i16* %arrayidx83, align 2
  %conv84 = zext i16 %41 to i32
  %and85 = and i32 %conv84, 2048
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.99

if.then.87:                                       ; preds = %if.end.80
  store i32 0, i32* %val, align 4
  br label %do.body.88

do.body.88:                                       ; preds = %do.cond.90, %if.then.87
  %42 = load i32, i32* %val, align 4
  %mul = mul nsw i32 %42, 10
  store i32 %mul, i32* %val, align 4
  %43 = load i32, i32* %ch, align 4
  %sub = sub nsw i32 %43, 48
  %44 = load i32, i32* %val, align 4
  %add = add nsw i32 %44, %sub
  store i32 %add, i32* %val, align 4
  %call89 = call i32 @getchar()
  store i32 %call89, i32* %ch, align 4
  br label %do.cond.90

do.cond.90:                                       ; preds = %do.body.88
  %45 = load i32, i32* %ch, align 4
  %idxprom91 = sext i32 %45 to i64
  %call92 = call i16** @__ctype_b_loc() #6
  %46 = load i16*, i16** %call92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %46, i64 %idxprom91
  %47 = load i16, i16* %arrayidx93, align 2
  %conv94 = zext i16 %47 to i32
  %and95 = and i32 %conv94, 2048
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %do.body.88, label %do.end.97

do.end.97:                                        ; preds = %do.cond.90
  %48 = load i32, i32* %ch, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call98 = call i32 @ungetc(i32 %48, %struct._IO_FILE* %49)
  %50 = load i32, i32* %val, align 4
  store i32 %50, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 262, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.end.80
  call void @yyerror1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i32, i32* %ch, align 4
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %52)
  call void @exit(i32 1) #8
  unreachable

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %do.end.97, %do.end.77, %if.then.53, %if.then.40, %if.then.36, %if.then.32, %if.then.14, %sw.bb.10, %sw.bb.2, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @getchar() #1

; Function Attrs: nounwind uwtable
define internal void @ReadOldComment(i32 ()* %rdfn) #0 {
entry:
  %rdfn.addr = alloca i32 ()*, align 8
  %ch = alloca i32, align 4
  %starred = alloca i32, align 4
  %firstline = alloca i32, align 4
  store i32 ()* %rdfn, i32 ()** %rdfn.addr, align 8
  store i32 0, i32* %starred, align 4
  %0 = load i32, i32* @yyline, align 4
  store i32 %0, i32* %firstline, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %1 = load i32 ()*, i32 ()** %rdfn.addr, align 8
  %call = call i32 %1()
  store i32 %call, i32* %ch, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %ch, align 4
  %cmp1 = icmp eq i32 %2, 42
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %starred, align 4
  br label %if.end.5

if.else:                                          ; preds = %while.body
  %3 = load i32, i32* %ch, align 4
  %cmp2 = icmp eq i32 %3, 47
  br i1 %cmp2, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %4 = load i32, i32* %starred, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  ret void

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  store i32 0, i32* %starred, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @yyerror1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %firstline, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %6)
  call void @exit(i32 1) #8
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @simple_get() #0 {
entry:
  %ch = alloca i32, align 4
  %call = call i32 @getchar()
  store i32 %call, i32* %ch, align 4
  %cmp = icmp eq i32 %call, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @yyline, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @yyline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %ch, align 4
  ret i32 %1
}

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @yyerror(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  call void @yyerror1(i8* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ReadCodeBlock() #0 {
entry:
  %ch = alloca i32, align 4
  %firstline = alloca i32, align 4
  %0 = load i32, i32* @yyline, align 4
  store i32 %0, i32* %firstline, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %if.then.17, %entry
  %call = call i32 @getchar()
  store i32 %call, i32* %ch, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %ch, align 4
  %cmp1 = icmp eq i32 %1, 37
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %while.body
  %call2 = call i32 @getchar()
  store i32 %call2, i32* %ch, align 4
  %2 = load i32, i32* %ch, align 4
  %cmp3 = icmp ne i32 %2, 125
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  call void @yyerror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  ret void

if.end.5:                                         ; preds = %while.body
  %3 = load i32, i32* %ch, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call6 = call i32 @fputc(i32 %3, %struct._IO_FILE* %4)
  %5 = load i32, i32* %ch, align 4
  %cmp7 = icmp eq i32 %5, 10
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %6 = load i32, i32* @yyline, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @yyline, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %7 = load i32, i32* %ch, align 4
  %cmp10 = icmp eq i32 %7, 34
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %8 = load i32, i32* %ch, align 4
  %cmp11 = icmp eq i32 %8, 39
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.9
  %9 = load i32, i32* %ch, align 4
  call void @ReadCharString(i32 ()* @code_get, i32 %9)
  br label %if.end.23

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, i32* %ch, align 4
  %cmp13 = icmp eq i32 %10, 47
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.else
  %call15 = call i32 @getchar()
  store i32 %call15, i32* %ch, align 4
  %11 = load i32, i32* %ch, align 4
  %cmp16 = icmp eq i32 %11, 42
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.then.14
  %12 = load i32, i32* %ch, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call18 = call i32 @fputc(i32 %12, %struct._IO_FILE* %13)
  call void @ReadOldComment(i32 ()* @code_get)
  br label %while.cond

if.else.19:                                       ; preds = %if.then.14
  %14 = load i32, i32* %ch, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call20 = call i32 @ungetc(i32 %14, %struct._IO_FILE* %15)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @yyerror1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i32, i32* %firstline, align 4
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %17)
  call void @exit(i32 1) #8
  unreachable
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @StrCopy(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  %call1 = call i8* @zalloc(i32 %conv)
  store i8* %call1, i8** %t, align 8
  %1 = load i8*, i8** %t, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call2 = call i8* @strcpy(i8* %1, i8* %2) #9
  %3 = load i8*, i8** %t, align 8
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define void @yyerror1(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i32, i32* @yyline, align 4
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 %1, i8* %2)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #4

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @ReadCharString(i32 ()* %rdfn, i32 %which) #0 {
entry:
  %rdfn.addr = alloca i32 ()*, align 8
  %which.addr = alloca i32, align 4
  %ch = alloca i32, align 4
  %backslash = alloca i32, align 4
  %firstline = alloca i32, align 4
  store i32 ()* %rdfn, i32 ()** %rdfn.addr, align 8
  store i32 %which, i32* %which.addr, align 4
  store i32 0, i32* %backslash, align 4
  %0 = load i32, i32* @yyline, align 4
  store i32 %0, i32* %firstline, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %entry
  %1 = load i32 ()*, i32 ()** %rdfn.addr, align 8
  %call = call i32 %1()
  store i32 %call, i32* %ch, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %ch, align 4
  %3 = load i32, i32* %which.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, i32* %backslash, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  ret void

if.end:                                           ; preds = %land.lhs.true, %while.body
  %5 = load i32, i32* %ch, align 4
  %cmp2 = icmp eq i32 %5, 92
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %if.end
  %6 = load i32, i32* %backslash, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true.3
  store i32 1, i32* %backslash, align 4
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true.3, %if.end
  store i32 0, i32* %backslash, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @yyerror1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i32, i32* %firstline, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %8)
  call void @exit(i32 1) #8
  unreachable
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
