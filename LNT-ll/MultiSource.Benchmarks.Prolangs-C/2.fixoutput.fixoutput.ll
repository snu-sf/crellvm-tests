; ModuleID = './MultiSource.Benchmarks.Prolangs-C/2.fixoutput.fixoutput.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@LEX_LEN = external global i32, align 4
@LEXEME = external global i8*, align 8
@EOF_FLAG = internal global i32 1, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Scanner ERROR: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"===================> LINE NUMBER: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"   ADDOP: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"+\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"OR\0A\00", align 1
@ERROR_CNT = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"---------->ERROR: Expected an ADDOP Found: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"   MULOP: \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"/\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"AND\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"DIV\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"---------->ERROR: Expected an MULOP Found: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"   RELOP: \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"=\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"<>\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"<=\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"<\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c">=\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"---------->ERROR: Expected an RELOP Found: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"   ASSIGN (:=) \0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"   COLON (:) \0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"   DOTDOT (..) \0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"   DOT (.) \0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"   Integer: \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"illegal\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"---------->ERROR: Expected a VALID/ILLEGAL Code \0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"                  found: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"   Real: \00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"   PROGRAM \0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"   VAR \0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"   INTEGER (KEYWORD) \0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"   REAL (KEYWORD) \0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"   ARRAY \0A\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"   OF \0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"   PROCEDURE \0A\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"   FORWARD \0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"   FUNCTION \0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"   BEGIN \0A\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"   END \0A\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"   READ \0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"   WRITE \0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"   WRITELN \0A\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"   IF \0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"   THEN \0A\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"   ELSE \0A\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"   WHILE \0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"   DO \0A\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"   NOT \0A\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"   Identifier:  \00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"   LEFT PAREN '(' \0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"   RIGHT PAREN ')' \0A\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"   LEFT BRACKET ([) \0A\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"   RIGHT BRACKET (]) \0A\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"   COMMA (,) \0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"   SEMICOLON (;) \0A\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"------------>ERROR: A Valid TOKEN Code is not the\0A\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"                    first item on the input line.\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c" <--------\0A\00", align 1
@CH = external global i8, align 1
@.str.65 = private unnamed_addr constant [60 x i8] c"------------>ERROR: Expected a Newline Character <--------\0A\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@.str.67 = private unnamed_addr constant [58 x i8] c"****** %d format errors found in output of your scanner.\0A\00", align 1
@.str.68 = private unnamed_addr constant [61 x i8] c"------------>ERROR: Expected a SPACE between Token Code and\0A\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"                    the string following it <--------\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %CODE = alloca i32, align 4
  %I1 = alloca i32, align 4
  %I2 = alloca i32, align 4
  %D1 = alloca double, align 8
  store i32 0, i32* %retval
  %0 = load i32, i32* @LEX_LEN, align 4
  %add = add i32 1, %0
  %conv = zext i32 %add to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #4
  store i8* %call, i8** @LEXEME, align 8
  call void (...) @FLUSH()
  br label %while.cond

while.cond:                                       ; preds = %if.end.165, %entry
  %1 = load i32, i32* @EOF_FLAG, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %CODE)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call2 = call i32 @feof(%struct._IO_FILE* %2) #4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else.164, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %CODE, align 4
  switch i32 %3, label %sw.default.150 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.18
    i32 4, label %sw.bb.33
    i32 5, label %sw.bb.52
    i32 6, label %sw.bb.54
    i32 7, label %sw.bb.56
    i32 8, label %sw.bb.58
    i32 9, label %sw.bb.60
    i32 10, label %sw.bb.76
    i32 11, label %sw.bb.95
    i32 12, label %sw.bb.97
    i32 13, label %sw.bb.99
    i32 14, label %sw.bb.101
    i32 15, label %sw.bb.103
    i32 16, label %sw.bb.105
    i32 18, label %sw.bb.107
    i32 17, label %sw.bb.109
    i32 19, label %sw.bb.111
    i32 20, label %sw.bb.113
    i32 21, label %sw.bb.115
    i32 22, label %sw.bb.117
    i32 23, label %sw.bb.119
    i32 24, label %sw.bb.121
    i32 25, label %sw.bb.123
    i32 26, label %sw.bb.125
    i32 27, label %sw.bb.127
    i32 28, label %sw.bb.129
    i32 29, label %sw.bb.131
    i32 30, label %sw.bb.133
    i32 31, label %sw.bb.135
    i32 32, label %sw.bb.138
    i32 33, label %sw.bb.140
    i32 34, label %sw.bb.142
    i32 35, label %sw.bb.144
    i32 36, label %sw.bb.146
    i32 37, label %sw.bb.148
  ]

sw.bb:                                            ; preds = %if.then
  call void @GETSTR()
  %4 = load i8*, i8** @LEXEME, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  br label %sw.epilog.155

sw.bb.5:                                          ; preds = %if.then
  %call6 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %I1)
  %5 = load i32, i32* %I1, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i32 %5)
  br label %sw.epilog.155

sw.bb.8:                                          ; preds = %if.then
  %call9 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %I1)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  %6 = load i32, i32* %I1, align 4
  switch i32 %6, label %sw.default [
    i32 43, label %sw.bb.11
    i32 45, label %sw.bb.13
    i32 260, label %sw.bb.15
  ]

sw.bb.11:                                         ; preds = %sw.bb.8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

sw.bb.13:                                         ; preds = %sw.bb.8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog

sw.bb.15:                                         ; preds = %sw.bb.8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.8
  %7 = load i32, i32* @ERROR_CNT, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @ERROR_CNT, align 4
  %8 = load i32, i32* %I1, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0), i32 %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.13, %sw.bb.11
  br label %sw.epilog.155

sw.bb.18:                                         ; preds = %if.then
  %call19 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %I1)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0))
  %9 = load i32, i32* %I1, align 4
  switch i32 %9, label %sw.default.29 [
    i32 42, label %sw.bb.21
    i32 47, label %sw.bb.23
    i32 259, label %sw.bb.25
    i32 261, label %sw.bb.27
  ]

sw.bb.21:                                         ; preds = %sw.bb.18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  br label %sw.epilog.32

sw.bb.23:                                         ; preds = %sw.bb.18
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.32

sw.bb.25:                                         ; preds = %sw.bb.18
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog.32

sw.bb.27:                                         ; preds = %sw.bb.18
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog.32

sw.default.29:                                    ; preds = %sw.bb.18
  %10 = load i32, i32* @ERROR_CNT, align 4
  %inc30 = add nsw i32 %10, 1
  store i32 %inc30, i32* @ERROR_CNT, align 4
  %11 = load i32, i32* %I1, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i32 %11)
  br label %sw.epilog.32

sw.epilog.32:                                     ; preds = %sw.default.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21
  br label %sw.epilog.155

sw.bb.33:                                         ; preds = %if.then
  %call34 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %I1)
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0))
  %12 = load i32, i32* %I1, align 4
  switch i32 %12, label %sw.default.48 [
    i32 61, label %sw.bb.36
    i32 256, label %sw.bb.38
    i32 257, label %sw.bb.40
    i32 60, label %sw.bb.42
    i32 258, label %sw.bb.44
    i32 62, label %sw.bb.46
  ]

sw.bb.36:                                         ; preds = %sw.bb.33
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog.51

sw.bb.38:                                         ; preds = %sw.bb.33
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog.51

sw.bb.40:                                         ; preds = %sw.bb.33
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.epilog.51

sw.bb.42:                                         ; preds = %sw.bb.33
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog.51

sw.bb.44:                                         ; preds = %sw.bb.33
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog.51

sw.bb.46:                                         ; preds = %sw.bb.33
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  br label %sw.epilog.51

sw.default.48:                                    ; preds = %sw.bb.33
  %13 = load i32, i32* @ERROR_CNT, align 4
  %inc49 = add nsw i32 %13, 1
  store i32 %inc49, i32* @ERROR_CNT, align 4
  %14 = load i32, i32* %I1, align 4
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i32 0, i32 0), i32 %14)
  br label %sw.epilog.51

sw.epilog.51:                                     ; preds = %sw.default.48, %sw.bb.46, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36
  br label %sw.epilog.155

sw.bb.52:                                         ; preds = %if.then
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.54:                                         ; preds = %if.then
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.56:                                         ; preds = %if.then
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.58:                                         ; preds = %if.then
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.60:                                         ; preds = %if.then
  %call61 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %I1)
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0))
  %15 = load i32, i32* %I1, align 4
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %sw.bb.60
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.75

if.else:                                          ; preds = %sw.bb.60
  %16 = load i32, i32* %I1, align 4
  %cmp66 = icmp eq i32 %16, 1
  br i1 %cmp66, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %if.else
  %call69 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %I2)
  %17 = load i32, i32* %I2, align 4
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 %17)
  br label %if.end

if.else.71:                                       ; preds = %if.else
  %18 = load i32, i32* @ERROR_CNT, align 4
  %inc72 = add nsw i32 %18, 1
  store i32 %inc72, i32* @ERROR_CNT, align 4
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i32 0, i32 0))
  %19 = load i32, i32* %I1, align 4
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.else.71, %if.then.68
  br label %if.end.75

if.end.75:                                        ; preds = %if.end, %if.then.64
  br label %sw.epilog.155

sw.bb.76:                                         ; preds = %if.then
  %call77 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %I1)
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0))
  %20 = load i32, i32* %I1, align 4
  %cmp79 = icmp eq i32 %20, 0
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %sw.bb.76
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.94

if.else.83:                                       ; preds = %sw.bb.76
  %21 = load i32, i32* %I1, align 4
  %cmp84 = icmp eq i32 %21, 1
  br i1 %cmp84, label %if.then.86, label %if.else.89

if.then.86:                                       ; preds = %if.else.83
  %call87 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), double* %D1)
  %22 = load double, double* %D1, align 8
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), double %22)
  br label %if.end.93

if.else.89:                                       ; preds = %if.else.83
  %23 = load i32, i32* @ERROR_CNT, align 4
  %inc90 = add nsw i32 %23, 1
  store i32 %inc90, i32* @ERROR_CNT, align 4
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.29, i32 0, i32 0))
  %24 = load i32, i32* %I1, align 4
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i32 %24)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.then.86
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.81
  br label %sw.epilog.155

sw.bb.95:                                         ; preds = %if.then
  %call96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.97:                                         ; preds = %if.then
  %call98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.99:                                         ; preds = %if.then
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.101:                                        ; preds = %if.then
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.103:                                        ; preds = %if.then
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.105:                                        ; preds = %if.then
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.107:                                        ; preds = %if.then
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.109:                                        ; preds = %if.then
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.111:                                        ; preds = %if.then
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.113:                                        ; preds = %if.then
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.115:                                        ; preds = %if.then
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.117:                                        ; preds = %if.then
  %call118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.119:                                        ; preds = %if.then
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.121:                                        ; preds = %if.then
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.123:                                        ; preds = %if.then
  %call124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.125:                                        ; preds = %if.then
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.127:                                        ; preds = %if.then
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.129:                                        ; preds = %if.then
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.131:                                        ; preds = %if.then
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.133:                                        ; preds = %if.then
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.135:                                        ; preds = %if.then
  %call136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0))
  call void @GETSTR()
  %25 = load i8*, i8** @LEXEME, align 8
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i8* %25)
  br label %sw.epilog.155

sw.bb.138:                                        ; preds = %if.then
  %call139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.140:                                        ; preds = %if.then
  %call141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.142:                                        ; preds = %if.then
  %call143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.144:                                        ; preds = %if.then
  %call145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.146:                                        ; preds = %if.then
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0))
  br label %sw.epilog.155

sw.bb.148:                                        ; preds = %if.then
  %call149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0))
  br label %sw.epilog.155

sw.default.150:                                   ; preds = %if.then
  %26 = load i32, i32* @ERROR_CNT, align 4
  %inc151 = add nsw i32 %26, 1
  store i32 %inc151, i32* @ERROR_CNT, align 4
  %call152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.62, i32 0, i32 0))
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i32 0, i32 0))
  %call154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0))
  call void @GETSTR()
  br label %sw.epilog.155

sw.epilog.155:                                    ; preds = %sw.default.150, %sw.bb.148, %sw.bb.146, %sw.bb.144, %sw.bb.142, %sw.bb.140, %sw.bb.138, %sw.bb.135, %sw.bb.133, %sw.bb.131, %sw.bb.129, %sw.bb.127, %sw.bb.125, %sw.bb.123, %sw.bb.121, %sw.bb.119, %sw.bb.117, %sw.bb.115, %sw.bb.113, %sw.bb.111, %sw.bb.109, %sw.bb.107, %sw.bb.105, %sw.bb.103, %sw.bb.101, %sw.bb.99, %sw.bb.97, %sw.bb.95, %if.end.94, %if.end.75, %sw.bb.58, %sw.bb.56, %sw.bb.54, %sw.bb.52, %sw.epilog.51, %sw.epilog.32, %sw.epilog, %sw.bb.5, %sw.bb
  call void (...) @GETCHR()
  %27 = load i8, i8* @CH, align 1
  %conv156 = sext i8 %27 to i32
  %cmp157 = icmp ne i32 %conv156, 10
  br i1 %cmp157, label %land.lhs.true, label %if.end.163

land.lhs.true:                                    ; preds = %sw.epilog.155
  %28 = load i32, i32* @EOF_FLAG, align 4
  %tobool159 = icmp ne i32 %28, 0
  br i1 %tobool159, label %if.then.160, label %if.end.163

if.then.160:                                      ; preds = %land.lhs.true
  %29 = load i32, i32* @ERROR_CNT, align 4
  %inc161 = add nsw i32 %29, 1
  store i32 %inc161, i32* @ERROR_CNT, align 4
  %call162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.160, %land.lhs.true, %sw.epilog.155
  call void (...) @FLUSH()
  br label %if.end.165

if.else.164:                                      ; preds = %while.body
  store i32 0, i32* @EOF_FLAG, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.164, %if.end.163
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0))
  %30 = load i32, i32* @ERROR_CNT, align 4
  %tobool167 = icmp ne i32 %30, 0
  br i1 %tobool167, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %while.end
  %31 = load i32, i32* @ERROR_CNT, align 4
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.67, i32 0, i32 0), i32 %31)
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %while.end
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @FLUSH(...) #2

declare i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @GETSTR() #0 {
entry:
  call void (...) @GETCHR()
  %0 = load i8, i8* @CH, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (...) @FLUSH()
  call void (...) @GETCHR()
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @ERROR_CNT, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @ERROR_CNT, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.68, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i8, i8* @CH, align 1
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp ne i32 %conv3, 10
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8, i8* @CH, align 1
  %conv6 = sext i8 %3 to i32
  %cmp7 = icmp ne i32 %conv6, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void (...) @GETCHR()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %5 = load i8, i8* @CH, align 1
  %conv9 = sext i8 %5 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %while.end
  call void (...) @BACKUP()
  br label %if.end.14

if.else.13:                                       ; preds = %while.end
  store i32 0, i32* @EOF_FLAG, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  ret void
}

declare i32 @printf(i8*, ...) #2

declare void @GETCHR(...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @BACKUP(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
