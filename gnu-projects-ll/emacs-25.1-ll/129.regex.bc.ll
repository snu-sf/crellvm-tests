; ModuleID = './lib-src/regex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_registers = type { i32, i64*, i64* }
%struct.fail_stack_type = type { %union.fail_stack_elt*, i64, i64, i64 }
%union.fail_stack_elt = type { i8* }
%struct.compile_stack_type = type { %struct.compile_stack_elt_t*, i64, i64 }
%struct.compile_stack_elt_t = type { i64, i64, i64, i32 }
%struct.range_table_work_area = type { i32*, i32, i32, i32 }
%struct.regmatch_t = type { i64, i64 }

@re_syntax_options = common global i64 0, align 8
@whitespace_regexp = internal global i8* null, align 8
@re_max_failures = global i64 40000, align 8
@.str = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"nonascii\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unibyte\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"multibyte\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@re_error_msgid = internal global [18 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0)], align 16
@re_syntax_table = internal global [256 x i8] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [26 x i8] c"virtual memory exhausted\0A\00", align 1
@init_syntax_once.done = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"No match\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Invalid regular expression\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Invalid collation character\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Invalid character class name\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Trailing backslash\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Invalid back reference\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Unmatched [ or [^\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Unmatched ( or \5C(\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Unmatched \5C{\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Invalid content of \5C{\5C}\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Invalid range end\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Invalid preceding regular expression\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Premature end of regular expression\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Regular expression too big\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Unmatched ) or \5C)\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Range striding over charsets\00", align 1

; Function Attrs: nounwind uwtable
define i64 @re_set_syntax(i64 %syntax) #0 {
entry:
  %syntax.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %syntax, i64* %syntax.addr, align 8
  %0 = load i64, i64* @re_syntax_options, align 8
  store i64 %0, i64* %ret, align 8
  %1 = load i64, i64* %syntax.addr, align 8
  store i64 %1, i64* @re_syntax_options, align 8
  %2 = load i64, i64* %ret, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @re_set_whitespace_regexp(i8* %regexp) #0 {
entry:
  %regexp.addr = alloca i8*, align 8
  store i8* %regexp, i8** %regexp.addr, align 8
  %0 = load i8*, i8** %regexp.addr, align 8
  store i8* %0, i8** @whitespace_regexp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @re_wctype(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %string = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %string, align 8
  %1 = load i8*, i8** %string, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %string, align 8
  %call1 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #7
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 2, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %3 = load i8*, i8** %string, align 8
  %call5 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store i32 3, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else.4
  %4 = load i8*, i8** %string, align 8
  %call9 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 16, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else.8
  %5 = load i8*, i8** %string, align 8
  %call13 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 15, i32* %retval
  br label %return

if.else.16:                                       ; preds = %if.else.12
  %6 = load i8*, i8** %string, align 8
  %call17 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  store i32 4, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else.16
  %7 = load i8*, i8** %string, align 8
  %call21 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #7
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  store i32 6, i32* %retval
  br label %return

if.else.24:                                       ; preds = %if.else.20
  %8 = load i8*, i8** %string, align 8
  %call25 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else.24
  store i32 5, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.else.24
  %9 = load i8*, i8** %string, align 8
  %call29 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.28
  store i32 8, i32* %retval
  br label %return

if.else.32:                                       ; preds = %if.else.28
  %10 = load i8*, i8** %string, align 8
  %call33 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #7
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.32
  store i32 13, i32* %retval
  br label %return

if.else.36:                                       ; preds = %if.else.32
  %11 = load i8*, i8** %string, align 8
  %call37 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #7
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.36
  store i32 7, i32* %retval
  br label %return

if.else.40:                                       ; preds = %if.else.36
  %12 = load i8*, i8** %string, align 8
  %call41 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #7
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.40
  store i32 17, i32* %retval
  br label %return

if.else.44:                                       ; preds = %if.else.40
  %13 = load i8*, i8** %string, align 8
  %call45 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.44
  store i32 14, i32* %retval
  br label %return

if.else.48:                                       ; preds = %if.else.44
  %14 = load i8*, i8** %string, align 8
  %call49 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #7
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.48
  store i32 10, i32* %retval
  br label %return

if.else.52:                                       ; preds = %if.else.48
  %15 = load i8*, i8** %string, align 8
  %call53 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)) #7
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.52
  store i32 11, i32* %retval
  br label %return

if.else.56:                                       ; preds = %if.else.52
  %16 = load i8*, i8** %string, align 8
  %call57 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #7
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.56
  store i32 9, i32* %retval
  br label %return

if.else.60:                                       ; preds = %if.else.56
  %17 = load i8*, i8** %string, align 8
  %call61 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #7
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.else.60
  store i32 12, i32* %retval
  br label %return

if.else.64:                                       ; preds = %if.else.60
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.64, %if.then.63, %if.then.59, %if.then.55, %if.then.51, %if.then.47, %if.then.43, %if.then.39, %if.then.35, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define signext i8 @re_iswctype(i32 %ch, i32 %cc) #0 {
entry:
  %retval = alloca i8, align 1
  %ch.addr = alloca i32, align 4
  %cc.addr = alloca i32, align 4
  store i32 %ch, i32* %ch.addr, align 4
  store i32 %cc, i32* %cc.addr, align 4
  %0 = load i32, i32* %cc.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 12, label %sw.bb.12
    i32 9, label %sw.bb.21
    i32 10, label %sw.bb.30
    i32 4, label %sw.bb.39
    i32 6, label %sw.bb.48
    i32 5, label %sw.bb.57
    i32 8, label %sw.bb.66
    i32 13, label %sw.bb.75
    i32 7, label %sw.bb.84
    i32 11, label %sw.bb.93
    i32 16, label %sw.bb.102
    i32 15, label %sw.bb.108
    i32 17, label %sw.bb.112
    i32 14, label %sw.bb.113
    i32 3, label %sw.bb.114
    i32 0, label %sw.bb.123
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %ch.addr, align 4
  %idxprom = sext i32 %1 to i64
  %call = call i16** @__ctype_b_loc() #8
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 8
  %cmp = icmp ne i32 %and, 0
  %conv1 = zext i1 %cmp to i32
  %conv2 = trunc i32 %conv1 to i8
  store i8 %conv2, i8* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %4 = load i32, i32* %ch.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %call5 = call i16** @__ctype_b_loc() #8
  %5 = load i16*, i16** %call5, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %5, i64 %idxprom4
  %6 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 1024
  %cmp9 = icmp ne i32 %and8, 0
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = trunc i32 %conv10 to i8
  store i8 %conv11, i8* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  %7 = load i32, i32* %ch.addr, align 4
  %idxprom13 = sext i32 %7 to i64
  %call14 = call i16** @__ctype_b_loc() #8
  %8 = load i16*, i16** %call14, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %8, i64 %idxprom13
  %9 = load i16, i16* %arrayidx15, align 2
  %conv16 = zext i16 %9 to i32
  %and17 = and i32 %conv16, 1
  %cmp18 = icmp ne i32 %and17, 0
  %conv19 = zext i1 %cmp18 to i32
  %conv20 = trunc i32 %conv19 to i8
  store i8 %conv20, i8* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  %10 = load i32, i32* %ch.addr, align 4
  %idxprom22 = sext i32 %10 to i64
  %call23 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %call23, align 8
  %arrayidx24 = getelementptr inbounds i16, i16* %11, i64 %idxprom22
  %12 = load i16, i16* %arrayidx24, align 2
  %conv25 = zext i16 %12 to i32
  %and26 = and i32 %conv25, 2
  %cmp27 = icmp ne i32 %and26, 0
  %conv28 = zext i1 %cmp27 to i32
  %conv29 = trunc i32 %conv28 to i8
  store i8 %conv29, i8* %retval
  br label %return

sw.bb.30:                                         ; preds = %entry
  %13 = load i32, i32* %ch.addr, align 4
  %idxprom31 = sext i32 %13 to i64
  %call32 = call i16** @__ctype_b_loc() #8
  %14 = load i16*, i16** %call32, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %14, i64 %idxprom31
  %15 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %15 to i32
  %and35 = and i32 %conv34, 2048
  %cmp36 = icmp ne i32 %and35, 0
  %conv37 = zext i1 %cmp36 to i32
  %conv38 = trunc i32 %conv37 to i8
  store i8 %conv38, i8* %retval
  br label %return

sw.bb.39:                                         ; preds = %entry
  %16 = load i32, i32* %ch.addr, align 4
  %idxprom40 = sext i32 %16 to i64
  %call41 = call i16** @__ctype_b_loc() #8
  %17 = load i16*, i16** %call41, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %17, i64 %idxprom40
  %18 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %18 to i32
  %and44 = and i32 %conv43, 32768
  %cmp45 = icmp ne i32 %and44, 0
  %conv46 = zext i1 %cmp45 to i32
  %conv47 = trunc i32 %conv46 to i8
  store i8 %conv47, i8* %retval
  br label %return

sw.bb.48:                                         ; preds = %entry
  %19 = load i32, i32* %ch.addr, align 4
  %idxprom49 = sext i32 %19 to i64
  %call50 = call i16** @__ctype_b_loc() #8
  %20 = load i16*, i16** %call50, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %20, i64 %idxprom49
  %21 = load i16, i16* %arrayidx51, align 2
  %conv52 = zext i16 %21 to i32
  %and53 = and i32 %conv52, 512
  %cmp54 = icmp ne i32 %and53, 0
  %conv55 = zext i1 %cmp54 to i32
  %conv56 = trunc i32 %conv55 to i8
  store i8 %conv56, i8* %retval
  br label %return

sw.bb.57:                                         ; preds = %entry
  %22 = load i32, i32* %ch.addr, align 4
  %idxprom58 = sext i32 %22 to i64
  %call59 = call i16** @__ctype_b_loc() #8
  %23 = load i16*, i16** %call59, align 8
  %arrayidx60 = getelementptr inbounds i16, i16* %23, i64 %idxprom58
  %24 = load i16, i16* %arrayidx60, align 2
  %conv61 = zext i16 %24 to i32
  %and62 = and i32 %conv61, 16384
  %cmp63 = icmp ne i32 %and62, 0
  %conv64 = zext i1 %cmp63 to i32
  %conv65 = trunc i32 %conv64 to i8
  store i8 %conv65, i8* %retval
  br label %return

sw.bb.66:                                         ; preds = %entry
  %25 = load i32, i32* %ch.addr, align 4
  %idxprom67 = sext i32 %25 to i64
  %call68 = call i16** @__ctype_b_loc() #8
  %26 = load i16*, i16** %call68, align 8
  %arrayidx69 = getelementptr inbounds i16, i16* %26, i64 %idxprom67
  %27 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %27 to i32
  %and71 = and i32 %conv70, 4
  %cmp72 = icmp ne i32 %and71, 0
  %conv73 = zext i1 %cmp72 to i32
  %conv74 = trunc i32 %conv73 to i8
  store i8 %conv74, i8* %retval
  br label %return

sw.bb.75:                                         ; preds = %entry
  %28 = load i32, i32* %ch.addr, align 4
  %idxprom76 = sext i32 %28 to i64
  %call77 = call i16** @__ctype_b_loc() #8
  %29 = load i16*, i16** %call77, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %29, i64 %idxprom76
  %30 = load i16, i16* %arrayidx78, align 2
  %conv79 = zext i16 %30 to i32
  %and80 = and i32 %conv79, 8192
  %cmp81 = icmp ne i32 %and80, 0
  %conv82 = zext i1 %cmp81 to i32
  %conv83 = trunc i32 %conv82 to i8
  store i8 %conv83, i8* %retval
  br label %return

sw.bb.84:                                         ; preds = %entry
  %31 = load i32, i32* %ch.addr, align 4
  %idxprom85 = sext i32 %31 to i64
  %call86 = call i16** @__ctype_b_loc() #8
  %32 = load i16*, i16** %call86, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %32, i64 %idxprom85
  %33 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %33 to i32
  %and89 = and i32 %conv88, 256
  %cmp90 = icmp ne i32 %and89, 0
  %conv91 = zext i1 %cmp90 to i32
  %conv92 = trunc i32 %conv91 to i8
  store i8 %conv92, i8* %retval
  br label %return

sw.bb.93:                                         ; preds = %entry
  %34 = load i32, i32* %ch.addr, align 4
  %idxprom94 = sext i32 %34 to i64
  %call95 = call i16** @__ctype_b_loc() #8
  %35 = load i16*, i16** %call95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %35, i64 %idxprom94
  %36 = load i16, i16* %arrayidx96, align 2
  %conv97 = zext i16 %36 to i32
  %and98 = and i32 %conv97, 4096
  %cmp99 = icmp ne i32 %and98, 0
  %conv100 = zext i1 %cmp99 to i32
  %conv101 = trunc i32 %conv100 to i8
  store i8 %conv101, i8* %retval
  br label %return

sw.bb.102:                                        ; preds = %entry
  %37 = load i32, i32* %ch.addr, align 4
  %cmp103 = icmp slt i32 %37, 128
  %conv104 = zext i1 %cmp103 to i32
  %cmp105 = icmp ne i32 %conv104, 0
  %conv106 = zext i1 %cmp105 to i32
  %conv107 = trunc i32 %conv106 to i8
  store i8 %conv107, i8* %retval
  br label %return

sw.bb.108:                                        ; preds = %entry
  %38 = load i32, i32* %ch.addr, align 4
  %cmp109 = icmp slt i32 %38, 128
  %lnot = xor i1 %cmp109, true
  %lnot.ext = zext i1 %lnot to i32
  %conv111 = trunc i32 %lnot.ext to i8
  store i8 %conv111, i8* %retval
  br label %return

sw.bb.112:                                        ; preds = %entry
  store i8 1, i8* %retval
  br label %return

sw.bb.113:                                        ; preds = %entry
  store i8 0, i8* %retval
  br label %return

sw.bb.114:                                        ; preds = %entry
  %39 = load i32, i32* %ch.addr, align 4
  %idxprom115 = sext i32 %39 to i64
  %call116 = call i16** @__ctype_b_loc() #8
  %40 = load i16*, i16** %call116, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %40, i64 %idxprom115
  %41 = load i16, i16* %arrayidx117, align 2
  %conv118 = zext i16 %41 to i32
  %and119 = and i32 %conv118, 1024
  %cmp120 = icmp ne i32 %and119, 0
  %conv121 = zext i1 %cmp120 to i32
  %conv122 = trunc i32 %conv121 to i8
  store i8 %conv122, i8* %retval
  br label %return

sw.bb.123:                                        ; preds = %entry
  store i8 0, i8* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @abort() #9
  unreachable

return:                                           ; preds = %sw.bb.123, %sw.bb.114, %sw.bb.113, %sw.bb.112, %sw.bb.108, %sw.bb.102, %sw.bb.93, %sw.bb.84, %sw.bb.75, %sw.bb.66, %sw.bb.57, %sw.bb.48, %sw.bb.39, %sw.bb.30, %sw.bb.21, %sw.bb.12, %sw.bb.3, %sw.bb
  %42 = load i8, i8* %retval
  ret i8 %42
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind uwtable
define i32 @re_compile_fastmap(%struct.re_pattern_buffer* %bufp) #0 {
entry:
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %fastmap = alloca i8*, align 8
  %analysis = alloca i32, align 4
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 4
  %1 = load i8*, i8** %fastmap1, align 8
  store i8* %1, i8** %fastmap, align 8
  %2 = load i8*, i8** %fastmap, align 8
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 256, i32 1, i1 false)
  %3 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i32 0, i32 7
  %bf.load = load i8, i8* %fastmap_accurate, align 8
  %bf.clear = and i8 %bf.load, -9
  %bf.set = or i8 %bf.clear, 8
  store i8 %bf.set, i8* %fastmap_accurate, align 8
  %4 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i32 0, i32 0
  %5 = load i8*, i8** %buffer, align 8
  %6 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %6, i32 0, i32 0
  %7 = load i8*, i8** %buffer2, align 8
  %8 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %8, i32 0, i32 2
  %9 = load i64, i64* %used, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %9
  %10 = load i8*, i8** %fastmap, align 8
  %call = call i32 @analyze_first(i8* %5, i8* %add.ptr, i8* %10, i32 0)
  store i32 %call, i32* %analysis, align 4
  %11 = load i32, i32* %analysis, align 4
  %cmp = icmp ne i32 %11, 0
  %conv = zext i1 %cmp to i32
  %12 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %12, i32 0, i32 7
  %13 = trunc i32 %conv to i8
  %bf.load3 = load i8, i8* %can_be_null, align 8
  %bf.value = and i8 %13, 1
  %bf.clear4 = and i8 %bf.load3, -2
  %bf.set5 = or i8 %bf.clear4, %bf.value
  store i8 %bf.set5, i8* %can_be_null, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @analyze_first(i8* %p, i8* %pend, i8* %fastmap, i32 %multibyte) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %pend.addr = alloca i8*, align 8
  %fastmap.addr = alloca i8*, align 8
  %multibyte.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %not = alloca i8, align 1
  %match_any_multibyte_characters = alloca i8, align 1
  %p1 = alloca i8*, align 8
  %c = alloca i32, align 4
  %r = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i8* %pend, i8** %pend.addr, align 8
  store i8* %fastmap, i8** %fastmap.addr, align 8
  store i32 %multibyte, i32* %multibyte.addr, align 4
  store i8 0, i8* %match_any_multibyte_characters, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.bb.119, %sw.bb.117, %sw.bb.115, %sw.bb.113, %if.end.112, %sw.default, %sw.bb.89, %sw.bb.1, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8*, i8** %pend.addr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %p.addr, align 8
  store i8* %2, i8** %p1, align 8
  %3 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  switch i32 %conv, label %sw.default.121 [
    i32 1, label %sw.bb
    i32 8, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.12
    i32 5, label %sw.bb.16
    i32 4, label %sw.bb.27
    i32 28, label %sw.bb.59
    i32 29, label %sw.bb.59
    i32 0, label %sw.bb.89
    i32 9, label %sw.bb.89
    i32 10, label %sw.bb.89
    i32 11, label %sw.bb.89
    i32 12, label %sw.bb.89
    i32 24, label %sw.bb.89
    i32 25, label %sw.bb.89
    i32 22, label %sw.bb.89
    i32 23, label %sw.bb.89
    i32 26, label %sw.bb.89
    i32 27, label %sw.bb.89
    i32 13, label %sw.bb.90
    i32 14, label %sw.bb.99
    i32 15, label %sw.bb.99
    i32 17, label %sw.bb.99
    i32 16, label %sw.bb.99
    i32 18, label %sw.bb.99
    i32 20, label %sw.bb.113
    i32 19, label %sw.bb.115
    i32 21, label %sw.bb.117
    i32 6, label %sw.bb.119
    i32 7, label %sw.bb.119
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %while.body
  %5 = load i8*, i8** %p.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %p.addr, align 8
  br label %while.cond

sw.bb.3:                                          ; preds = %while.body
  %6 = load i8*, i8** %fastmap.addr, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %sw.bb.3
  %7 = load i8*, i8** %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %8 to i64
  %9 = load i8*, i8** %fastmap.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 %idxprom
  store i8 1, i8* %arrayidx4, align 1
  %10 = load i32, i32* %multibyte.addr, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %11 = load i8*, i8** %p.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  store i32 %conv8, i32* %c, align 4
  %13 = load i32, i32* %c, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i8*, i8** %fastmap.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  store i8 1, i8* %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %sw.bb.3
  br label %sw.epilog.122

sw.bb.12:                                         ; preds = %while.body
  %15 = load i8*, i8** %fastmap.addr, align 8
  %tobool13 = icmp ne i8* %15, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %sw.bb.12
  br label %sw.epilog.122

if.end.15:                                        ; preds = %sw.bb.12
  store i32 -1, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %while.body
  %16 = load i8*, i8** %fastmap.addr, align 8
  %tobool17 = icmp ne i8* %16, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.16
  br label %sw.epilog.122

if.end.19:                                        ; preds = %sw.bb.16
  %17 = load i8*, i8** %p.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 -1
  %arrayidx21 = getelementptr inbounds i8, i8* %arrayidx20, i64 1
  %18 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %18 to i32
  %and = and i32 %conv22, 127
  %mul = mul nsw i32 %and, 8
  store i32 %mul, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %19 = load i32, i32* %j, align 4
  %cmp23 = icmp slt i32 %19, 256
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load i8*, i8** %fastmap.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  store i8 1, i8* %arrayidx26, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.bb.27

sw.bb.27:                                         ; preds = %while.body, %for.end
  %23 = load i8*, i8** %fastmap.addr, align 8
  %tobool28 = icmp ne i8* %23, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %sw.bb.27
  br label %sw.epilog.122

if.end.30:                                        ; preds = %sw.bb.27
  %24 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 -1
  %25 = load i8, i8* %add.ptr, align 1
  %conv31 = zext i8 %25 to i32
  %cmp32 = icmp eq i32 %conv31, 5
  %conv33 = zext i1 %cmp32 to i32
  %conv34 = trunc i32 %conv33 to i8
  store i8 %conv34, i8* %not, align 1
  %26 = load i8*, i8** %p.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %26, i64 -1
  %arrayidx36 = getelementptr inbounds i8, i8* %arrayidx35, i64 1
  %27 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %27 to i32
  %and38 = and i32 %conv37, 127
  %mul39 = mul nsw i32 %and38, 8
  %sub = sub nsw i32 %mul39, 1
  store i32 %sub, i32* %j, align 4
  %28 = load i8*, i8** %p.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr40, i8** %p.addr, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.57, %if.end.30
  %29 = load i32, i32* %j, align 4
  %cmp42 = icmp sge i32 %29, 0
  br i1 %cmp42, label %for.body.44, label %for.end.58

for.body.44:                                      ; preds = %for.cond.41
  %30 = load i32, i32* %j, align 4
  %div = sdiv i32 %30, 8
  %idxprom45 = sext i32 %div to i64
  %31 = load i8*, i8** %p.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %31, i64 %idxprom45
  %32 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %32 to i32
  %33 = load i32, i32* %j, align 4
  %rem = srem i32 %33, 8
  %shl = shl i32 1, %rem
  %and48 = and i32 %conv47, %shl
  %tobool49 = icmp ne i32 %and48, 0
  %lnot = xor i1 %tobool49, true
  %lnot50 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot50 to i32
  %34 = load i8, i8* %not, align 1
  %conv51 = sext i8 %34 to i32
  %xor = xor i32 %lnot.ext, %conv51
  %tobool52 = icmp ne i32 %xor, 0
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %for.body.44
  %35 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %35 to i64
  %36 = load i8*, i8** %fastmap.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %36, i64 %idxprom54
  store i8 1, i8* %arrayidx55, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %for.body.44
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %37 = load i32, i32* %j, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.41

for.end.58:                                       ; preds = %for.cond.41
  br label %sw.epilog.122

sw.bb.59:                                         ; preds = %while.body, %while.body
  %38 = load i8*, i8** %fastmap.addr, align 8
  %tobool60 = icmp ne i8* %38, null
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %sw.bb.59
  br label %sw.epilog.122

if.end.62:                                        ; preds = %sw.bb.59
  %39 = load i8*, i8** %p.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %39, i64 -1
  %40 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %40 to i32
  %cmp65 = icmp eq i32 %conv64, 29
  %conv66 = zext i1 %cmp65 to i32
  %conv67 = trunc i32 %conv66 to i8
  store i8 %conv67, i8* %not, align 1
  %41 = load i8*, i8** %p.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr68, i8** %p.addr, align 8
  %42 = load i8, i8* %41, align 1
  %conv69 = zext i8 %42 to i32
  store i32 %conv69, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.86, %if.end.62
  %43 = load i32, i32* %j, align 4
  %cmp71 = icmp slt i32 %43, 256
  br i1 %cmp71, label %for.body.73, label %for.end.88

for.body.73:                                      ; preds = %for.cond.70
  %44 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %44 to i64
  %arrayidx75 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom74
  %45 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %45 to i32
  %46 = load i32, i32* %k, align 4
  %cmp77 = icmp eq i32 %conv76, %46
  %conv78 = zext i1 %cmp77 to i32
  %47 = load i8, i8* %not, align 1
  %conv79 = sext i8 %47 to i32
  %xor80 = xor i32 %conv78, %conv79
  %tobool81 = icmp ne i32 %xor80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %for.body.73
  %48 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %48 to i64
  %49 = load i8*, i8** %fastmap.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %49, i64 %idxprom83
  store i8 1, i8* %arrayidx84, align 1
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %for.body.73
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %50 = load i32, i32* %j, align 4
  %inc87 = add nsw i32 %50, 1
  store i32 %inc87, i32* %j, align 4
  br label %for.cond.70

for.end.88:                                       ; preds = %for.cond.70
  br label %sw.epilog.122

sw.bb.89:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br label %while.cond

sw.bb.90:                                         ; preds = %while.body
  %call = call i32 @extract_number_and_incr(i8** %p.addr)
  store i32 %call, i32* %j, align 4
  %51 = load i32, i32* %j, align 4
  %cmp91 = icmp slt i32 %51, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %sw.bb.90
  br label %sw.epilog.122

if.end.94:                                        ; preds = %sw.bb.90
  %52 = load i32, i32* %j, align 4
  %53 = load i8*, i8** %p.addr, align 8
  %idx.ext = sext i32 %52 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr95, i8** %p.addr, align 8
  %54 = load i8*, i8** %p.addr, align 8
  %55 = load i8, i8* %54, align 1
  %conv96 = zext i8 %55 to i32
  switch i32 %conv96, label %sw.default [
    i32 14, label %sw.bb.97
    i32 15, label %sw.bb.97
    i32 16, label %sw.bb.97
    i32 17, label %sw.bb.97
    i32 18, label %sw.bb.97
  ]

sw.bb.97:                                         ; preds = %if.end.94, %if.end.94, %if.end.94, %if.end.94, %if.end.94
  %56 = load i8*, i8** %p.addr, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr98, i8** %p.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.94
  br label %while.cond

sw.epilog:                                        ; preds = %sw.bb.97
  br label %sw.bb.99

sw.bb.99:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %sw.epilog
  %call100 = call i32 @extract_number_and_incr(i8** %p.addr)
  store i32 %call100, i32* %j, align 4
  %57 = load i8*, i8** %p.addr, align 8
  %58 = load i32, i32* %j, align 4
  %idx.ext101 = sext i32 %58 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %57, i64 %idx.ext101
  %59 = load i8*, i8** %p1, align 8
  %cmp103 = icmp ule i8* %add.ptr102, %59
  br i1 %cmp103, label %if.then.105, label %if.else

if.then.105:                                      ; preds = %sw.bb.99
  br label %if.end.112

if.else:                                          ; preds = %sw.bb.99
  %60 = load i8*, i8** %p.addr, align 8
  %61 = load i8*, i8** %pend.addr, align 8
  %62 = load i8*, i8** %fastmap.addr, align 8
  %63 = load i32, i32* %multibyte.addr, align 4
  %call106 = call i32 @analyze_first(i8* %60, i8* %61, i8* %62, i32 %63)
  store i32 %call106, i32* %r, align 4
  %64 = load i32, i32* %r, align 4
  %tobool107 = icmp ne i32 %64, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.else
  %65 = load i32, i32* %r, align 4
  store i32 %65, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.else
  %66 = load i32, i32* %j, align 4
  %67 = load i8*, i8** %p.addr, align 8
  %idx.ext110 = sext i32 %66 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %67, i64 %idx.ext110
  store i8* %add.ptr111, i8** %p.addr, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.109, %if.then.105
  br label %while.cond

sw.bb.113:                                        ; preds = %while.body
  %68 = load i8*, i8** %p.addr, align 8
  %add.ptr114 = getelementptr inbounds i8, i8* %68, i64 4
  store i8* %add.ptr114, i8** %p.addr, align 8
  br label %while.cond

sw.bb.115:                                        ; preds = %while.body
  %69 = load i8*, i8** %p.addr, align 8
  %add.ptr116 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %add.ptr116, i8** %p.addr, align 8
  br label %while.cond

sw.bb.117:                                        ; preds = %while.body
  %70 = load i8*, i8** %p.addr, align 8
  %add.ptr118 = getelementptr inbounds i8, i8* %70, i64 4
  store i8* %add.ptr118, i8** %p.addr, align 8
  br label %while.cond

sw.bb.119:                                        ; preds = %while.body, %while.body
  %71 = load i8*, i8** %p.addr, align 8
  %add.ptr120 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %add.ptr120, i8** %p.addr, align 8
  br label %while.cond

sw.default.121:                                   ; preds = %while.body
  call void @abort() #9
  unreachable

sw.epilog.122:                                    ; preds = %if.then.93, %for.end.88, %if.then.61, %for.end.58, %if.then.29, %if.then.18, %if.then.14, %if.end.11
  store i32 0, i32* %retval
  br label %return

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.epilog.122, %if.then.108, %if.end.15, %sw.bb
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define void @re_set_registers(%struct.re_pattern_buffer* %bufp, %struct.re_registers* %regs, i32 %num_regs, i64* %starts, i64* %ends) #0 {
entry:
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %regs.addr = alloca %struct.re_registers*, align 8
  %num_regs.addr = alloca i32, align 4
  %starts.addr = alloca i64*, align 8
  %ends.addr = alloca i64*, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  store i32 %num_regs, i32* %num_regs.addr, align 4
  store i64* %starts, i64** %starts.addr, align 8
  store i64* %ends, i64** %ends.addr, align 8
  %0 = load i32, i32* %num_regs.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i32 0, i32 7
  %bf.load = load i8, i8* %regs_allocated, align 8
  %bf.clear = and i8 %bf.load, -7
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %regs_allocated, align 8
  %2 = load i32, i32* %num_regs.addr, align 4
  %3 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs1 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %3, i32 0, i32 0
  store i32 %2, i32* %num_regs1, align 4
  %4 = load i64*, i64** %starts.addr, align 8
  %5 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i32 0, i32 1
  store i64* %4, i64** %start, align 8
  %6 = load i64*, i64** %ends.addr, align 8
  %7 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %7, i32 0, i32 2
  store i64* %6, i64** %end, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated2 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %8, i32 0, i32 7
  %bf.load3 = load i8, i8* %regs_allocated2, align 8
  %bf.clear4 = and i8 %bf.load3, -7
  store i8 %bf.clear4, i8* %regs_allocated2, align 8
  %9 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs5 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 0
  store i32 0, i32* %num_regs5, align 4
  %10 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end6 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %10, i32 0, i32 2
  store i64* null, i64** %end6, align 8
  %11 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start7 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %11, i32 0, i32 1
  store i64* null, i64** %start7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @re_search(%struct.re_pattern_buffer* %bufp, i8* %string, i64 %size, i64 %startpos, i64 %range, %struct.re_registers* %regs) #0 {
entry:
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %string.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %startpos.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %regs.addr = alloca %struct.re_registers*, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %startpos, i64* %startpos.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i64, i64* %startpos.addr, align 8
  %4 = load i64, i64* %range.addr, align 8
  %5 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %6 = load i64, i64* %size.addr, align 8
  %call = call i64 @re_search_2(%struct.re_pattern_buffer* %0, i8* null, i64 0, i8* %1, i64 %2, i64 %3, i64 %4, %struct.re_registers* %5, i64 %6)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @re_search_2(%struct.re_pattern_buffer* %bufp, i8* %str1, i64 %size1, i8* %str2, i64 %size2, i64 %startpos, i64 %range, %struct.re_registers* %regs, i64 %stop) #0 {
entry:
  %retval = alloca i64, align 8
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %str1.addr = alloca i8*, align 8
  %size1.addr = alloca i64, align 8
  %str2.addr = alloca i8*, align 8
  %size2.addr = alloca i64, align 8
  %startpos.addr = alloca i64, align 8
  %range.addr = alloca i64, align 8
  %regs.addr = alloca %struct.re_registers*, align 8
  %stop.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %string1 = alloca i8*, align 8
  %string2 = alloca i8*, align 8
  %fastmap = alloca i8*, align 8
  %translate = alloca i8*, align 8
  %total_size = alloca i64, align 8
  %endpos = alloca i64, align 8
  %anchored_start = alloca i8, align 1
  %multibyte = alloca i8, align 1
  %d = alloca i8*, align 8
  %buf_ch = alloca i32, align 4
  %irange = alloca i64, align 8
  %lim = alloca i64, align 8
  %ch = alloca i32, align 4
  %translated = alloca i32, align 4
  %ch119 = alloca i32, align 4
  %translated120 = alloca i32, align 4
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i64 %size1, i64* %size1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  store i64 %size2, i64* %size2.addr, align 8
  store i64 %startpos, i64* %startpos.addr, align 8
  store i64 %range, i64* %range.addr, align 8
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  store i64 %stop, i64* %stop.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  store i8* %0, i8** %string1, align 8
  %1 = load i8*, i8** %str2.addr, align 8
  store i8* %1, i8** %string2, align 8
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2, i32 0, i32 4
  %3 = load i8*, i8** %fastmap1, align 8
  store i8* %3, i8** %fastmap, align 8
  %4 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %translate2 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i32 0, i32 5
  %5 = load i8*, i8** %translate2, align 8
  store i8* %5, i8** %translate, align 8
  %6 = load i64, i64* %size1.addr, align 8
  %7 = load i64, i64* %size2.addr, align 8
  %add = add i64 %6, %7
  store i64 %add, i64* %total_size, align 8
  %8 = load i64, i64* %startpos.addr, align 8
  %9 = load i64, i64* %range.addr, align 8
  %add3 = add nsw i64 %8, %9
  store i64 %add3, i64* %endpos, align 8
  store i8 0, i8* %multibyte, align 1
  %10 = load i64, i64* %startpos.addr, align 8
  %cmp = icmp slt i64 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i64, i64* %startpos.addr, align 8
  %12 = load i64, i64* %total_size, align 8
  %cmp4 = icmp ugt i64 %11, %12
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i64, i64* %endpos, align 8
  %cmp5 = icmp slt i64 %13, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %14 = load i64, i64* %startpos.addr, align 8
  %sub = sub nsw i64 0, %14
  store i64 %sub, i64* %range.addr, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %15 = load i64, i64* %endpos, align 8
  %16 = load i64, i64* %total_size, align 8
  %cmp7 = icmp ugt i64 %15, %16
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %17 = load i64, i64* %total_size, align 8
  %18 = load i64, i64* %startpos.addr, align 8
  %sub9 = sub i64 %17, %18
  store i64 %sub9, i64* %range.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.6
  %19 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %19, i32 0, i32 2
  %20 = load i64, i64* %used, align 8
  %cmp12 = icmp ugt i64 %20, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.11
  %21 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %21, i32 0, i32 0
  %22 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %23 to i32
  %cmp13 = icmp eq i32 %conv, 11
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.24

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %24 = load i64, i64* %range.addr, align 8
  %cmp16 = icmp sgt i64 %24, 0
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %land.lhs.true.15
  %25 = load i64, i64* %startpos.addr, align 8
  %cmp19 = icmp sgt i64 %25, 0
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.then.18
  store i64 -1, i64* %retval
  br label %return

if.else.22:                                       ; preds = %if.then.18
  store i64 0, i64* %range.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true.15, %land.lhs.true, %if.end.11
  %26 = load i8*, i8** %fastmap, align 8
  %tobool = icmp ne i8* %26, null
  br i1 %tobool, label %land.lhs.true.25, label %if.end.28

land.lhs.true.25:                                 ; preds = %if.end.24
  %27 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %27, i32 0, i32 7
  %bf.load = load i8, i8* %fastmap_accurate, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool26 = icmp ne i32 %bf.cast, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %land.lhs.true.25
  %28 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %call = call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true.25, %if.end.24
  %29 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer29 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %29, i32 0, i32 0
  %30 = load i8*, i8** %buffer29, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %31 to i32
  %cmp32 = icmp eq i32 %conv31, 9
  %conv33 = zext i1 %cmp32 to i32
  %conv34 = trunc i32 %conv33 to i8
  store i8 %conv34, i8* %anchored_start, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end.187, %if.end.28
  %32 = load i8, i8* %anchored_start, align 1
  %conv35 = sext i8 %32 to i32
  %tobool36 = icmp ne i32 %conv35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.54

land.lhs.true.37:                                 ; preds = %for.cond
  %33 = load i64, i64* %startpos.addr, align 8
  %cmp38 = icmp sgt i64 %33, 0
  br i1 %cmp38, label %if.then.40, label %if.end.54

if.then.40:                                       ; preds = %land.lhs.true.37
  %34 = load i64, i64* %startpos.addr, align 8
  %35 = load i64, i64* %size1.addr, align 8
  %cmp41 = icmp ule i64 %34, %35
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.40
  %36 = load i64, i64* %startpos.addr, align 8
  %sub43 = sub nsw i64 %36, 1
  %37 = load i8*, i8** %string1, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %37, i64 %sub43
  %38 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %38 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.40
  %39 = load i64, i64* %startpos.addr, align 8
  %40 = load i64, i64* %size1.addr, align 8
  %sub46 = sub i64 %39, %40
  %sub47 = sub i64 %sub46, 1
  %41 = load i8*, i8** %string2, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %41, i64 %sub47
  %42 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %42 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv45, %cond.true ], [ %conv49, %cond.false ]
  %cmp50 = icmp eq i32 %cond, 10
  br i1 %cmp50, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %cond.end
  br label %advance

if.end.53:                                        ; preds = %cond.end
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.37, %for.cond
  %43 = load i8*, i8** %fastmap, align 8
  %tobool55 = icmp ne i8* %43, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.151

land.lhs.true.56:                                 ; preds = %if.end.54
  %44 = load i64, i64* %startpos.addr, align 8
  %45 = load i64, i64* %total_size, align 8
  %cmp57 = icmp ult i64 %44, %45
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.151

land.lhs.true.59:                                 ; preds = %land.lhs.true.56
  %46 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %46, i32 0, i32 7
  %bf.load60 = load i8, i8* %can_be_null, align 8
  %bf.clear61 = and i8 %bf.load60, 1
  %bf.cast62 = zext i8 %bf.clear61 to i32
  %tobool63 = icmp ne i32 %bf.cast62, 0
  br i1 %tobool63, label %if.end.151, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.59
  %47 = load i64, i64* %startpos.addr, align 8
  %48 = load i64, i64* %size1.addr, align 8
  %cmp65 = icmp uge i64 %47, %48
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %if.then.64
  %49 = load i8*, i8** %string2, align 8
  %50 = load i64, i64* %size1.addr, align 8
  %idx.neg = sub i64 0, %50
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 %idx.neg
  br label %cond.end.69

cond.false.68:                                    ; preds = %if.then.64
  %51 = load i8*, i8** %string1, align 8
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi i8* [ %add.ptr, %cond.true.67 ], [ %51, %cond.false.68 ]
  %52 = load i64, i64* %startpos.addr, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %cond70, i64 %52
  store i8* %add.ptr71, i8** %d, align 8
  %53 = load i64, i64* %range.addr, align 8
  %cmp72 = icmp sgt i64 %53, 0
  br i1 %cmp72, label %if.then.74, label %if.else.118

if.then.74:                                       ; preds = %cond.end.69
  %54 = load i64, i64* %range.addr, align 8
  store i64 %54, i64* %irange, align 8
  store i64 0, i64* %lim, align 8
  %55 = load i64, i64* %startpos.addr, align 8
  %56 = load i64, i64* %size1.addr, align 8
  %cmp75 = icmp ult i64 %55, %56
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.84

land.lhs.true.77:                                 ; preds = %if.then.74
  %57 = load i64, i64* %startpos.addr, align 8
  %58 = load i64, i64* %range.addr, align 8
  %add78 = add nsw i64 %57, %58
  %59 = load i64, i64* %size1.addr, align 8
  %cmp79 = icmp uge i64 %add78, %59
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %land.lhs.true.77
  %60 = load i64, i64* %range.addr, align 8
  %61 = load i64, i64* %size1.addr, align 8
  %62 = load i64, i64* %startpos.addr, align 8
  %sub82 = sub i64 %61, %62
  %sub83 = sub i64 %60, %sub82
  store i64 %sub83, i64* %lim, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %land.lhs.true.77, %if.then.74
  %63 = load i8*, i8** %translate, align 8
  %tobool85 = icmp ne i8* %63, null
  br i1 %tobool85, label %if.then.86, label %if.else.104

if.then.86:                                       ; preds = %if.end.84
  br label %while.cond

while.cond:                                       ; preds = %if.end.103, %if.then.86
  %64 = load i64, i64* %range.addr, align 8
  %65 = load i64, i64* %lim, align 8
  %cmp87 = icmp sgt i64 %64, %65
  br i1 %cmp87, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %66 = load i8*, i8** %d, align 8
  %67 = load i8, i8* %66, align 1
  %conv89 = zext i8 %67 to i32
  store i32 %conv89, i32* %buf_ch, align 4
  %68 = load i32, i32* %buf_ch, align 4
  store i32 %68, i32* %ch, align 4
  %69 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %69 to i64
  %70 = load i8*, i8** %translate, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %70, i64 %idxprom
  %71 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %71 to i32
  store i32 %conv91, i32* %translated, align 4
  %72 = load i32, i32* %translated, align 4
  %73 = load i32, i32* %ch, align 4
  %cmp92 = icmp ne i32 %72, %73
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.98

land.lhs.true.94:                                 ; preds = %while.body
  %74 = load i32, i32* %translated, align 4
  store i32 %74, i32* %ch, align 4
  %cmp95 = icmp sge i32 %74, 0
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %land.lhs.true.94
  %75 = load i32, i32* %ch, align 4
  store i32 %75, i32* %buf_ch, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %land.lhs.true.94, %while.body
  %76 = load i32, i32* %buf_ch, align 4
  %idxprom99 = sext i32 %76 to i64
  %77 = load i8*, i8** %fastmap, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %77, i64 %idxprom99
  %78 = load i8, i8* %arrayidx100, align 1
  %tobool101 = icmp ne i8 %78, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  br label %while.end

if.end.103:                                       ; preds = %if.end.98
  %79 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  %80 = load i64, i64* %range.addr, align 8
  %dec = add nsw i64 %80, -1
  store i64 %dec, i64* %range.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.102, %while.cond
  br label %if.end.115

if.else.104:                                      ; preds = %if.end.84
  br label %while.cond.105

while.cond.105:                                   ; preds = %while.body.111, %if.else.104
  %81 = load i64, i64* %range.addr, align 8
  %82 = load i64, i64* %lim, align 8
  %cmp106 = icmp sgt i64 %81, %82
  br i1 %cmp106, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.105
  %83 = load i8*, i8** %d, align 8
  %84 = load i8, i8* %83, align 1
  %idxprom108 = zext i8 %84 to i64
  %85 = load i8*, i8** %fastmap, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %85, i64 %idxprom108
  %86 = load i8, i8* %arrayidx109, align 1
  %tobool110 = icmp ne i8 %86, 0
  %lnot = xor i1 %tobool110, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.105
  %87 = phi i1 [ false, %while.cond.105 ], [ %lnot, %land.rhs ]
  br i1 %87, label %while.body.111, label %while.end.114

while.body.111:                                   ; preds = %land.end
  %88 = load i8*, i8** %d, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr112, i8** %d, align 8
  %89 = load i64, i64* %range.addr, align 8
  %dec113 = add nsw i64 %89, -1
  store i64 %dec113, i64* %range.addr, align 8
  br label %while.cond.105

while.end.114:                                    ; preds = %land.end
  br label %if.end.115

if.end.115:                                       ; preds = %while.end.114, %while.end
  %90 = load i64, i64* %irange, align 8
  %91 = load i64, i64* %range.addr, align 8
  %sub116 = sub nsw i64 %90, %91
  %92 = load i64, i64* %startpos.addr, align 8
  %add117 = add nsw i64 %92, %sub116
  store i64 %add117, i64* %startpos.addr, align 8
  br label %if.end.150

if.else.118:                                      ; preds = %cond.end.69
  %93 = load i8*, i8** %d, align 8
  %94 = load i8, i8* %93, align 1
  %conv121 = zext i8 %94 to i32
  store i32 %conv121, i32* %buf_ch, align 4
  %95 = load i32, i32* %buf_ch, align 4
  store i32 %95, i32* %ch119, align 4
  %96 = load i8*, i8** %translate, align 8
  %tobool122 = icmp ne i8* %96, null
  br i1 %tobool122, label %cond.true.123, label %cond.false.127

cond.true.123:                                    ; preds = %if.else.118
  %97 = load i32, i32* %ch119, align 4
  %idxprom124 = sext i32 %97 to i64
  %98 = load i8*, i8** %translate, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %98, i64 %idxprom124
  %99 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %99 to i32
  br label %cond.end.128

cond.false.127:                                   ; preds = %if.else.118
  %100 = load i32, i32* %ch119, align 4
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.127, %cond.true.123
  %cond129 = phi i32 [ %conv126, %cond.true.123 ], [ %100, %cond.false.127 ]
  store i32 %cond129, i32* %translated120, align 4
  %101 = load i32, i32* %translated120, align 4
  %102 = load i32, i32* %ch119, align 4
  %cmp130 = icmp ne i32 %101, %102
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.136

land.lhs.true.132:                                ; preds = %cond.end.128
  %103 = load i32, i32* %translated120, align 4
  store i32 %103, i32* %ch119, align 4
  %cmp133 = icmp sge i32 %103, 0
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %land.lhs.true.132
  %104 = load i32, i32* %ch119, align 4
  store i32 %104, i32* %buf_ch, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %land.lhs.true.132, %cond.end.128
  %105 = load i8*, i8** %translate, align 8
  %tobool137 = icmp ne i8* %105, null
  br i1 %tobool137, label %cond.true.138, label %cond.false.142

cond.true.138:                                    ; preds = %if.end.136
  %106 = load i32, i32* %buf_ch, align 4
  %idxprom139 = sext i32 %106 to i64
  %107 = load i8*, i8** %translate, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %107, i64 %idxprom139
  %108 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %108 to i32
  br label %cond.end.143

cond.false.142:                                   ; preds = %if.end.136
  %109 = load i32, i32* %buf_ch, align 4
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.138
  %cond144 = phi i32 [ %conv141, %cond.true.138 ], [ %109, %cond.false.142 ]
  %idxprom145 = sext i32 %cond144 to i64
  %110 = load i8*, i8** %fastmap, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %110, i64 %idxprom145
  %111 = load i8, i8* %arrayidx146, align 1
  %tobool147 = icmp ne i8 %111, 0
  br i1 %tobool147, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %cond.end.143
  br label %advance

if.end.149:                                       ; preds = %cond.end.143
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.115
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %land.lhs.true.59, %land.lhs.true.56, %if.end.54
  %112 = load i64, i64* %range.addr, align 8
  %cmp152 = icmp sge i64 %112, 0
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.166

land.lhs.true.154:                                ; preds = %if.end.151
  %113 = load i64, i64* %startpos.addr, align 8
  %114 = load i64, i64* %total_size, align 8
  %cmp155 = icmp eq i64 %113, %114
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.166

land.lhs.true.157:                                ; preds = %land.lhs.true.154
  %115 = load i8*, i8** %fastmap, align 8
  %tobool158 = icmp ne i8* %115, null
  br i1 %tobool158, label %land.lhs.true.159, label %if.end.166

land.lhs.true.159:                                ; preds = %land.lhs.true.157
  %116 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null160 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %116, i32 0, i32 7
  %bf.load161 = load i8, i8* %can_be_null160, align 8
  %bf.clear162 = and i8 %bf.load161, 1
  %bf.cast163 = zext i8 %bf.clear162 to i32
  %tobool164 = icmp ne i32 %bf.cast163, 0
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %land.lhs.true.159
  store i64 -1, i64* %retval
  br label %return

if.end.166:                                       ; preds = %land.lhs.true.159, %land.lhs.true.157, %land.lhs.true.154, %if.end.151
  %117 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %118 = load i8*, i8** %string1, align 8
  %119 = load i64, i64* %size1.addr, align 8
  %120 = load i8*, i8** %string2, align 8
  %121 = load i64, i64* %size2.addr, align 8
  %122 = load i64, i64* %startpos.addr, align 8
  %123 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %124 = load i64, i64* %stop.addr, align 8
  %call167 = call i64 @re_match_2_internal(%struct.re_pattern_buffer* %117, i8* %118, i64 %119, i8* %120, i64 %121, i64 %122, %struct.re_registers* %123, i64 %124)
  store i64 %call167, i64* %val, align 8
  %125 = load i64, i64* %val, align 8
  %cmp168 = icmp sge i64 %125, 0
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.166
  %126 = load i64, i64* %startpos.addr, align 8
  store i64 %126, i64* %retval
  br label %return

if.end.171:                                       ; preds = %if.end.166
  %127 = load i64, i64* %val, align 8
  %cmp172 = icmp eq i64 %127, -2
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.171
  store i64 -2, i64* %retval
  br label %return

if.end.175:                                       ; preds = %if.end.171
  br label %advance

advance:                                          ; preds = %if.end.175, %if.then.148, %if.then.52
  %128 = load i64, i64* %range.addr, align 8
  %tobool176 = icmp ne i64 %128, 0
  br i1 %tobool176, label %if.else.178, label %if.then.177

if.then.177:                                      ; preds = %advance
  br label %for.end

if.else.178:                                      ; preds = %advance
  %129 = load i64, i64* %range.addr, align 8
  %cmp179 = icmp sgt i64 %129, 0
  br i1 %cmp179, label %if.then.181, label %if.else.183

if.then.181:                                      ; preds = %if.else.178
  %130 = load i64, i64* %range.addr, align 8
  %dec182 = add nsw i64 %130, -1
  store i64 %dec182, i64* %range.addr, align 8
  %131 = load i64, i64* %startpos.addr, align 8
  %inc = add nsw i64 %131, 1
  store i64 %inc, i64* %startpos.addr, align 8
  br label %if.end.186

if.else.183:                                      ; preds = %if.else.178
  %132 = load i64, i64* %range.addr, align 8
  %inc184 = add nsw i64 %132, 1
  store i64 %inc184, i64* %range.addr, align 8
  %133 = load i64, i64* %startpos.addr, align 8
  %dec185 = add nsw i64 %133, -1
  store i64 %dec185, i64* %startpos.addr, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.183, %if.then.181
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186
  br label %for.cond

for.end:                                          ; preds = %if.then.177
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.174, %if.then.170, %if.then.165, %if.then.21, %if.then
  %134 = load i64, i64* %retval
  ret i64 %134
}

; Function Attrs: nounwind uwtable
define internal i64 @re_match_2_internal(%struct.re_pattern_buffer* %bufp, i8* %string1, i64 %size1, i8* %string2, i64 %size2, i64 %pos, %struct.re_registers* %regs, i64 %stop) #0 {
entry:
  %retval = alloca i64, align 8
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %string1.addr = alloca i8*, align 8
  %size1.addr = alloca i64, align 8
  %string2.addr = alloca i8*, align 8
  %size2.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %regs.addr = alloca %struct.re_registers*, align 8
  %stop.addr = alloca i64, align 8
  %mcnt = alloca i32, align 4
  %reg = alloca i64, align 8
  %end1 = alloca i8*, align 8
  %end2 = alloca i8*, align 8
  %end_match_1 = alloca i8*, align 8
  %end_match_2 = alloca i8*, align 8
  %d = alloca i8*, align 8
  %dend = alloca i8*, align 8
  %dfail = alloca i8*, align 8
  %p = alloca i8*, align 8
  %pend = alloca i8*, align 8
  %translate = alloca i8*, align 8
  %multibyte = alloca i8, align 1
  %target_multibyte = alloca i8, align 1
  %fail_stack = alloca %struct.fail_stack_type, align 8
  %num_regs = alloca i64, align 8
  %regstart = alloca i8**, align 8
  %regend = alloca i8**, align 8
  %best_regs_set = alloca i32, align 4
  %best_regstart = alloca i8**, align 8
  %best_regend = alloca i8**, align 8
  %match_end = alloca i8*, align 8
  %dcnt = alloca i64, align 8
  %same_str_p = alloca i8, align 1
  %best_match_p = alloca i8, align 1
  %buf_charlen = alloca i32, align 4
  %buf_ch = alloca i32, align 4
  %c = alloca i32, align 4
  %corig = alloca i32, align 4
  %not = alloca i8, align 1
  %len = alloca i32, align 4
  %range_table = alloca i8*, align 8
  %range_table_exists = alloca i32, align 4
  %count = alloca i32, align 4
  %unibyte_char = alloca i8, align 1
  %c1 = alloca i32, align 4
  %destination = alloca i8*, align 8
  %n = alloca i64, align 8
  %d2 = alloca i8*, align 8
  %dend2 = alloca i8*, align 8
  %regno = alloca i32, align 4
  %dcnt779 = alloca i64, align 8
  %c854 = alloca i32, align 4
  %destination912 = alloca i8*, align 8
  %cycle = alloca i32, align 4
  %failure = alloca i64, align 8
  %destination1035 = alloca i8*, align 8
  %cycle1119 = alloca i32, align 4
  %failure1121 = alloca i64, align 8
  %destination1166 = alloca i8*, align 8
  %destination1251 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %p3 = alloca i8*, align 8
  %p21367 = alloca i8*, align 8
  %destination1372 = alloca i8*, align 8
  %c1373 = alloca i32, align 4
  %p21469 = alloca i8*, align 8
  %destination1473 = alloca i8*, align 8
  %c1474 = alloca i32, align 4
  %p21566 = alloca i8*, align 8
  %destination1572 = alloca i8*, align 8
  %c1573 = alloca i32, align 4
  %not1662 = alloca i8, align 1
  %c11686 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %dummy = alloca i32, align 4
  %c11733 = alloca i32, align 4
  %c21734 = alloca i32, align 4
  %s11735 = alloca i32, align 4
  %s21736 = alloca i32, align 4
  %dummy1737 = alloca i32, align 4
  %c11796 = alloca i32, align 4
  %c21797 = alloca i32, align 4
  %s11798 = alloca i32, align 4
  %s21799 = alloca i32, align 4
  %dummy1800 = alloca i32, align 4
  %c11840 = alloca i32, align 4
  %c21841 = alloca i32, align 4
  %s11842 = alloca i32, align 4
  %s21843 = alloca i32, align 4
  %c11908 = alloca i32, align 4
  %c21909 = alloca i32, align 4
  %s11910 = alloca i32, align 4
  %s21911 = alloca i32, align 4
  %not1953 = alloca i8, align 1
  %len1970 = alloca i32, align 4
  %c1971 = alloca i32, align 4
  %str = alloca i8*, align 8
  %pat = alloca i8*, align 8
  %pfreg = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %destination2063 = alloca i8*, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %string1, i8** %string1.addr, align 8
  store i64 %size1, i64* %size1.addr, align 8
  store i8* %string2, i8** %string2.addr, align 8
  store i64 %size2, i64* %size2.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  store i64 %stop, i64* %stop.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i32 0, i32 2
  %4 = load i64, i64* %used, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  store i8* %add.ptr, i8** %pend, align 8
  %5 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %translate1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %5, i32 0, i32 5
  %6 = load i8*, i8** %translate1, align 8
  store i8* %6, i8** %translate, align 8
  store i8 0, i8* %multibyte, align 1
  store i8 0, i8* %target_multibyte, align 1
  %7 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %7, i32 0, i32 6
  %8 = load i64, i64* %re_nsub, align 8
  %add = add i64 %8, 1
  store i64 %add, i64* %num_regs, align 8
  store i32 0, i32* %best_regs_set, align 4
  store i8* null, i8** %match_end, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = alloca i8, i64 3200
  %10 = bitcast i8* %9 to %union.fail_stack_elt*
  %stack = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %10, %union.fail_stack_elt** %stack, align 8
  %stack2 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %11 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2, align 8
  %cmp = icmp eq %union.fail_stack_elt* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i64 -2, i64* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %size = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 20, i64* %size, align 8
  %avail = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  store i64 0, i64* %avail, align 8
  %frame = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  store i64 0, i64* %frame, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub3 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %12, i32 0, i32 6
  %13 = load i64, i64* %re_nsub3, align 8
  %tobool = icmp ne i64 %13, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.end
  %14 = load i64, i64* %num_regs, align 8
  %mul = mul i64 %14, 8
  %15 = alloca i8, i64 %mul
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %regstart, align 8
  %17 = load i64, i64* %num_regs, align 8
  %mul5 = mul i64 %17, 8
  %18 = alloca i8, i64 %mul5
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** %regend, align 8
  %20 = load i64, i64* %num_regs, align 8
  %mul6 = mul i64 %20, 8
  %21 = alloca i8, i64 %mul6
  %22 = bitcast i8* %21 to i8**
  store i8** %22, i8*** %best_regstart, align 8
  %23 = load i64, i64* %num_regs, align 8
  %mul7 = mul i64 %23, 8
  %24 = alloca i8, i64 %mul7
  %25 = bitcast i8* %24 to i8**
  store i8** %25, i8*** %best_regend, align 8
  %26 = load i8**, i8*** %regstart, align 8
  %tobool8 = icmp ne i8** %26, null
  br i1 %tobool8, label %land.lhs.true, label %if.then.14

land.lhs.true:                                    ; preds = %if.then.4
  %27 = load i8**, i8*** %regend, align 8
  %tobool9 = icmp ne i8** %27, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.then.14

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %28 = load i8**, i8*** %best_regstart, align 8
  %tobool11 = icmp ne i8** %28, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.then.14

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %29 = load i8**, i8*** %best_regend, align 8
  %tobool13 = icmp ne i8** %29, null
  br i1 %tobool13, label %if.end.37, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true, %if.then.4
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.body.15
  %30 = load i8**, i8*** %regstart, align 8
  %tobool17 = icmp ne i8** %30, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.body.16
  store i8** null, i8*** %regstart, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.body.16
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  %31 = load i8**, i8*** %regend, align 8
  %tobool22 = icmp ne i8** %31, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.body.21
  store i8** null, i8*** %regend, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %do.body.21
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %32 = load i8**, i8*** %best_regstart, align 8
  %tobool27 = icmp ne i8** %32, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.body.26
  store i8** null, i8*** %best_regstart, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %do.body.26
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %33 = load i8**, i8*** %best_regend, align 8
  %tobool32 = icmp ne i8** %33, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.body.31
  store i8** null, i8*** %best_regend, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %do.body.31
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.end.35
  store i64 -2, i64* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.12
  br label %if.end.38

if.else:                                          ; preds = %do.end
  store i8** null, i8*** %best_regend, align 8
  store i8** null, i8*** %best_regstart, align 8
  store i8** null, i8*** %regend, align 8
  store i8** null, i8*** %regstart, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.end.37
  %34 = load i64, i64* %pos.addr, align 8
  %cmp39 = icmp slt i64 %34, 0
  br i1 %cmp39, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.38
  %35 = load i64, i64* %pos.addr, align 8
  %36 = load i64, i64* %size1.addr, align 8
  %37 = load i64, i64* %size2.addr, align 8
  %add40 = add i64 %36, %37
  %cmp41 = icmp ugt i64 %35, %add40
  br i1 %cmp41, label %if.then.42, label %if.end.65

if.then.42:                                       ; preds = %lor.lhs.false, %if.end.38
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.body.43
  %38 = load i8**, i8*** %regstart, align 8
  %tobool45 = icmp ne i8** %38, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.body.44
  store i8** null, i8*** %regstart, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %do.body.44
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %39 = load i8**, i8*** %regend, align 8
  %tobool50 = icmp ne i8** %39, null
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %do.body.49
  store i8** null, i8*** %regend, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %do.body.49
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %40 = load i8**, i8*** %best_regstart, align 8
  %tobool55 = icmp ne i8** %40, null
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %do.body.54
  store i8** null, i8*** %best_regstart, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %do.body.54
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %do.body.59

do.body.59:                                       ; preds = %do.end.58
  %41 = load i8**, i8*** %best_regend, align 8
  %tobool60 = icmp ne i8** %41, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.body.59
  store i8** null, i8*** %best_regend, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %do.body.59
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.end.63
  store i64 -1, i64* %retval
  br label %return

if.end.65:                                        ; preds = %lor.lhs.false
  store i64 1, i64* %reg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.65
  %42 = load i64, i64* %reg, align 8
  %43 = load i64, i64* %num_regs, align 8
  %cmp66 = icmp ult i64 %42, %43
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i64, i64* %reg, align 8
  %45 = load i8**, i8*** %regend, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %45, i64 %44
  store i8* null, i8** %arrayidx, align 8
  %46 = load i64, i64* %reg, align 8
  %47 = load i8**, i8*** %regstart, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %47, i64 %46
  store i8* null, i8** %arrayidx67, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i64, i64* %reg, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %reg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i64, i64* %size2.addr, align 8
  %cmp68 = icmp eq i64 %49, 0
  br i1 %cmp68, label %land.lhs.true.69, label %if.end.72

land.lhs.true.69:                                 ; preds = %for.end
  %50 = load i8*, i8** %string1.addr, align 8
  %cmp70 = icmp ne i8* %50, null
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.69
  %51 = load i8*, i8** %string1.addr, align 8
  store i8* %51, i8** %string2.addr, align 8
  %52 = load i64, i64* %size1.addr, align 8
  store i64 %52, i64* %size2.addr, align 8
  store i8* null, i8** %string1.addr, align 8
  store i64 0, i64* %size1.addr, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %land.lhs.true.69, %for.end
  %53 = load i8*, i8** %string1.addr, align 8
  %54 = load i64, i64* %size1.addr, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %add.ptr73, i8** %end1, align 8
  %55 = load i8*, i8** %string2.addr, align 8
  %56 = load i64, i64* %size2.addr, align 8
  %add.ptr74 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %add.ptr74, i8** %end2, align 8
  %57 = load i64, i64* %pos.addr, align 8
  %58 = load i64, i64* %size1.addr, align 8
  %cmp75 = icmp uge i64 %57, %58
  br i1 %cmp75, label %if.then.76, label %if.else.82

if.then.76:                                       ; preds = %if.end.72
  %59 = load i8*, i8** %string2.addr, align 8
  %60 = load i64, i64* %pos.addr, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %59, i64 %60
  %61 = load i64, i64* %size1.addr, align 8
  %idx.neg = sub i64 0, %61
  %add.ptr78 = getelementptr inbounds i8, i8* %add.ptr77, i64 %idx.neg
  store i8* %add.ptr78, i8** %d, align 8
  %62 = load i8*, i8** %string2.addr, align 8
  %63 = load i64, i64* %stop.addr, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %62, i64 %63
  %64 = load i64, i64* %size1.addr, align 8
  %idx.neg80 = sub i64 0, %64
  %add.ptr81 = getelementptr inbounds i8, i8* %add.ptr79, i64 %idx.neg80
  store i8* %add.ptr81, i8** %end_match_2, align 8
  store i8* %add.ptr81, i8** %dend, align 8
  %65 = load i8*, i8** %end1, align 8
  store i8* %65, i8** %end_match_1, align 8
  br label %if.end.92

if.else.82:                                       ; preds = %if.end.72
  %66 = load i64, i64* %stop.addr, align 8
  %67 = load i64, i64* %size1.addr, align 8
  %cmp83 = icmp ult i64 %66, %67
  br i1 %cmp83, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %if.else.82
  %68 = load i8*, i8** %string1.addr, align 8
  %69 = load i64, i64* %stop.addr, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %add.ptr85, i8** %end_match_1, align 8
  %70 = load i8*, i8** %end_match_1, align 8
  store i8* %70, i8** %end_match_2, align 8
  br label %if.end.90

if.else.86:                                       ; preds = %if.else.82
  %71 = load i8*, i8** %end1, align 8
  store i8* %71, i8** %end_match_1, align 8
  %72 = load i8*, i8** %string2.addr, align 8
  %73 = load i64, i64* %stop.addr, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %72, i64 %73
  %74 = load i64, i64* %size1.addr, align 8
  %idx.neg88 = sub i64 0, %74
  %add.ptr89 = getelementptr inbounds i8, i8* %add.ptr87, i64 %idx.neg88
  store i8* %add.ptr89, i8** %end_match_2, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.86, %if.then.84
  %75 = load i8*, i8** %string1.addr, align 8
  %76 = load i64, i64* %pos.addr, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %add.ptr91, i8** %d, align 8
  %77 = load i8*, i8** %end_match_1, align 8
  store i8* %77, i8** %dend, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.90, %if.then.76
  br label %for.cond.93

for.cond.93:                                      ; preds = %if.end.2159, %sw.epilog, %if.end.92
  %78 = load i8*, i8** %p, align 8
  %79 = load i8*, i8** %pend, align 8
  %cmp94 = icmp eq i8* %78, %79
  br i1 %cmp94, label %if.then.95, label %if.end.464

if.then.95:                                       ; preds = %for.cond.93
  %80 = load i8*, i8** %d, align 8
  %81 = load i8*, i8** %end_match_2, align 8
  %cmp96 = icmp ne i8* %80, %81
  br i1 %cmp96, label %if.then.97, label %if.end.175

if.then.97:                                       ; preds = %if.then.95
  %82 = load i64, i64* %size1.addr, align 8
  %tobool98 = icmp ne i64 %82, 0
  br i1 %tobool98, label %land.lhs.true.99, label %land.end

land.lhs.true.99:                                 ; preds = %if.then.97
  %83 = load i8*, i8** %string1.addr, align 8
  %84 = load i8*, i8** %match_end, align 8
  %cmp100 = icmp ule i8* %83, %84
  br i1 %cmp100, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.99
  %85 = load i8*, i8** %match_end, align 8
  %86 = load i8*, i8** %string1.addr, align 8
  %87 = load i64, i64* %size1.addr, align 8
  %add.ptr101 = getelementptr inbounds i8, i8* %86, i64 %87
  %cmp102 = icmp ule i8* %85, %add.ptr101
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.99, %if.then.97
  %88 = phi i1 [ false, %land.lhs.true.99 ], [ false, %if.then.97 ], [ %cmp102, %land.rhs ]
  %land.ext = zext i1 %88 to i32
  %89 = load i64, i64* %size1.addr, align 8
  %tobool103 = icmp ne i64 %89, 0
  br i1 %tobool103, label %land.lhs.true.104, label %land.end.109

land.lhs.true.104:                                ; preds = %land.end
  %90 = load i8*, i8** %string1.addr, align 8
  %91 = load i8*, i8** %d, align 8
  %cmp105 = icmp ule i8* %90, %91
  br i1 %cmp105, label %land.rhs.106, label %land.end.109

land.rhs.106:                                     ; preds = %land.lhs.true.104
  %92 = load i8*, i8** %d, align 8
  %93 = load i8*, i8** %string1.addr, align 8
  %94 = load i64, i64* %size1.addr, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %93, i64 %94
  %cmp108 = icmp ule i8* %92, %add.ptr107
  br label %land.end.109

land.end.109:                                     ; preds = %land.rhs.106, %land.lhs.true.104, %land.end
  %95 = phi i1 [ false, %land.lhs.true.104 ], [ false, %land.end ], [ %cmp108, %land.rhs.106 ]
  %land.ext110 = zext i1 %95 to i32
  %cmp111 = icmp eq i32 %land.ext, %land.ext110
  %conv = zext i1 %cmp111 to i32
  %conv112 = trunc i32 %conv to i8
  store i8 %conv112, i8* %same_str_p, align 1
  %96 = load i8, i8* %same_str_p, align 1
  %tobool113 = icmp ne i8 %96, 0
  br i1 %tobool113, label %if.then.114, label %if.else.118

if.then.114:                                      ; preds = %land.end.109
  %97 = load i8*, i8** %d, align 8
  %98 = load i8*, i8** %match_end, align 8
  %cmp115 = icmp ugt i8* %97, %98
  %conv116 = zext i1 %cmp115 to i32
  %conv117 = trunc i32 %conv116 to i8
  store i8 %conv117, i8* %best_match_p, align 1
  br label %if.end.130

if.else.118:                                      ; preds = %land.end.109
  %99 = load i64, i64* %size1.addr, align 8
  %tobool119 = icmp ne i64 %99, 0
  br i1 %tobool119, label %land.lhs.true.120, label %land.end.127

land.lhs.true.120:                                ; preds = %if.else.118
  %100 = load i8*, i8** %string1.addr, align 8
  %101 = load i8*, i8** %d, align 8
  %cmp121 = icmp ule i8* %100, %101
  br i1 %cmp121, label %land.rhs.123, label %land.end.127

land.rhs.123:                                     ; preds = %land.lhs.true.120
  %102 = load i8*, i8** %d, align 8
  %103 = load i8*, i8** %string1.addr, align 8
  %104 = load i64, i64* %size1.addr, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %103, i64 %104
  %cmp125 = icmp ule i8* %102, %add.ptr124
  br label %land.end.127

land.end.127:                                     ; preds = %land.rhs.123, %land.lhs.true.120, %if.else.118
  %105 = phi i1 [ false, %land.lhs.true.120 ], [ false, %if.else.118 ], [ %cmp125, %land.rhs.123 ]
  %lnot = xor i1 %105, true
  %lnot.ext = zext i1 %lnot to i32
  %conv129 = trunc i32 %lnot.ext to i8
  store i8 %conv129, i8* %best_match_p, align 1
  br label %if.end.130

if.end.130:                                       ; preds = %land.end.127, %if.then.114
  %frame131 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %106 = load i64, i64* %frame131, align 8
  %cmp132 = icmp eq i64 %106, 0
  br i1 %cmp132, label %if.else.152, label %if.then.134

if.then.134:                                      ; preds = %if.end.130
  %107 = load i32, i32* %best_regs_set, align 4
  %tobool135 = icmp ne i32 %107, 0
  br i1 %tobool135, label %lor.lhs.false.136, label %if.then.139

lor.lhs.false.136:                                ; preds = %if.then.134
  %108 = load i8, i8* %best_match_p, align 1
  %conv137 = sext i8 %108 to i32
  %tobool138 = icmp ne i32 %conv137, 0
  br i1 %tobool138, label %if.then.139, label %if.end.151

if.then.139:                                      ; preds = %lor.lhs.false.136, %if.then.134
  store i32 1, i32* %best_regs_set, align 4
  %109 = load i8*, i8** %d, align 8
  store i8* %109, i8** %match_end, align 8
  store i64 1, i64* %reg, align 8
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.148, %if.then.139
  %110 = load i64, i64* %reg, align 8
  %111 = load i64, i64* %num_regs, align 8
  %cmp141 = icmp ult i64 %110, %111
  br i1 %cmp141, label %for.body.143, label %for.end.150

for.body.143:                                     ; preds = %for.cond.140
  %112 = load i64, i64* %reg, align 8
  %113 = load i8**, i8*** %regstart, align 8
  %arrayidx144 = getelementptr inbounds i8*, i8** %113, i64 %112
  %114 = load i8*, i8** %arrayidx144, align 8
  %115 = load i64, i64* %reg, align 8
  %116 = load i8**, i8*** %best_regstart, align 8
  %arrayidx145 = getelementptr inbounds i8*, i8** %116, i64 %115
  store i8* %114, i8** %arrayidx145, align 8
  %117 = load i64, i64* %reg, align 8
  %118 = load i8**, i8*** %regend, align 8
  %arrayidx146 = getelementptr inbounds i8*, i8** %118, i64 %117
  %119 = load i8*, i8** %arrayidx146, align 8
  %120 = load i64, i64* %reg, align 8
  %121 = load i8**, i8*** %best_regend, align 8
  %arrayidx147 = getelementptr inbounds i8*, i8** %121, i64 %120
  store i8* %119, i8** %arrayidx147, align 8
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.143
  %122 = load i64, i64* %reg, align 8
  %inc149 = add i64 %122, 1
  store i64 %inc149, i64* %reg, align 8
  br label %for.cond.140

for.end.150:                                      ; preds = %for.cond.140
  br label %if.end.151

if.end.151:                                       ; preds = %for.end.150, %lor.lhs.false.136
  br label %fail

if.else.152:                                      ; preds = %if.end.130
  %123 = load i32, i32* %best_regs_set, align 4
  %tobool153 = icmp ne i32 %123, 0
  br i1 %tobool153, label %land.lhs.true.154, label %if.end.173

land.lhs.true.154:                                ; preds = %if.else.152
  %124 = load i8, i8* %best_match_p, align 1
  %tobool155 = icmp ne i8 %124, 0
  br i1 %tobool155, label %if.end.173, label %if.then.156

if.then.156:                                      ; preds = %land.lhs.true.154
  br label %restore_best_regs

restore_best_regs:                                ; preds = %if.then.2162, %if.then.156
  %125 = load i8*, i8** %match_end, align 8
  store i8* %125, i8** %d, align 8
  %126 = load i8*, i8** %d, align 8
  %127 = load i8*, i8** %string1.addr, align 8
  %cmp157 = icmp uge i8* %126, %127
  br i1 %cmp157, label %land.lhs.true.159, label %cond.false

land.lhs.true.159:                                ; preds = %restore_best_regs
  %128 = load i8*, i8** %d, align 8
  %129 = load i8*, i8** %end1, align 8
  %cmp160 = icmp ule i8* %128, %129
  br i1 %cmp160, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.159
  %130 = load i8*, i8** %end_match_1, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.159, %restore_best_regs
  %131 = load i8*, i8** %end_match_2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %130, %cond.true ], [ %131, %cond.false ]
  store i8* %cond, i8** %dend, align 8
  store i64 1, i64* %reg, align 8
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.170, %cond.end
  %132 = load i64, i64* %reg, align 8
  %133 = load i64, i64* %num_regs, align 8
  %cmp163 = icmp ult i64 %132, %133
  br i1 %cmp163, label %for.body.165, label %for.end.172

for.body.165:                                     ; preds = %for.cond.162
  %134 = load i64, i64* %reg, align 8
  %135 = load i8**, i8*** %best_regstart, align 8
  %arrayidx166 = getelementptr inbounds i8*, i8** %135, i64 %134
  %136 = load i8*, i8** %arrayidx166, align 8
  %137 = load i64, i64* %reg, align 8
  %138 = load i8**, i8*** %regstart, align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %138, i64 %137
  store i8* %136, i8** %arrayidx167, align 8
  %139 = load i64, i64* %reg, align 8
  %140 = load i8**, i8*** %best_regend, align 8
  %arrayidx168 = getelementptr inbounds i8*, i8** %140, i64 %139
  %141 = load i8*, i8** %arrayidx168, align 8
  %142 = load i64, i64* %reg, align 8
  %143 = load i8**, i8*** %regend, align 8
  %arrayidx169 = getelementptr inbounds i8*, i8** %143, i64 %142
  store i8* %141, i8** %arrayidx169, align 8
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.165
  %144 = load i64, i64* %reg, align 8
  %inc171 = add i64 %144, 1
  store i64 %inc171, i64* %reg, align 8
  br label %for.cond.162

for.end.172:                                      ; preds = %for.cond.162
  br label %if.end.173

if.end.173:                                       ; preds = %for.end.172, %land.lhs.true.154, %if.else.152
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.95
  br label %succeed_label

succeed_label:                                    ; preds = %sw.bb.466, %if.end.175
  %145 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %tobool176 = icmp ne %struct.re_registers* %145, null
  br i1 %tobool176, label %land.lhs.true.177, label %if.end.422

land.lhs.true.177:                                ; preds = %succeed_label
  %146 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %146, i32 0, i32 7
  %bf.load = load i8, i8* %no_sub, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool178 = icmp ne i32 %bf.cast, 0
  br i1 %tobool178, label %if.end.422, label %if.then.179

if.then.179:                                      ; preds = %land.lhs.true.177
  %147 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %147, i32 0, i32 7
  %bf.load180 = load i8, i8* %regs_allocated, align 8
  %bf.lshr181 = lshr i8 %bf.load180, 1
  %bf.clear182 = and i8 %bf.lshr181, 3
  %bf.cast183 = zext i8 %bf.clear182 to i32
  %cmp184 = icmp eq i32 %bf.cast183, 0
  br i1 %cmp184, label %if.then.186, label %if.else.238

if.then.186:                                      ; preds = %if.then.179
  %148 = load i64, i64* %num_regs, align 8
  %add187 = add i64 %148, 1
  %cmp188 = icmp ugt i64 30, %add187
  br i1 %cmp188, label %cond.true.190, label %cond.false.191

cond.true.190:                                    ; preds = %if.then.186
  br label %cond.end.193

cond.false.191:                                   ; preds = %if.then.186
  %149 = load i64, i64* %num_regs, align 8
  %add192 = add i64 %149, 1
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.191, %cond.true.190
  %cond194 = phi i64 [ 30, %cond.true.190 ], [ %add192, %cond.false.191 ]
  %conv195 = trunc i64 %cond194 to i32
  %150 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs196 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %150, i32 0, i32 0
  store i32 %conv195, i32* %num_regs196, align 4
  %151 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs197 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %151, i32 0, i32 0
  %152 = load i32, i32* %num_regs197, align 4
  %conv198 = zext i32 %152 to i64
  %mul199 = mul i64 %conv198, 8
  %call = call i8* @xmalloc(i64 %mul199)
  %153 = bitcast i8* %call to i64*
  %154 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %154, i32 0, i32 1
  store i64* %153, i64** %start, align 8
  %155 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs200 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %155, i32 0, i32 0
  %156 = load i32, i32* %num_regs200, align 4
  %conv201 = zext i32 %156 to i64
  %mul202 = mul i64 %conv201, 8
  %call203 = call i8* @xmalloc(i64 %mul202)
  %157 = bitcast i8* %call203 to i64*
  %158 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %158, i32 0, i32 2
  store i64* %157, i64** %end, align 8
  %159 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start204 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %159, i32 0, i32 1
  %160 = load i64*, i64** %start204, align 8
  %cmp205 = icmp eq i64* %160, null
  br i1 %cmp205, label %if.then.211, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %cond.end.193
  %161 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end208 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %161, i32 0, i32 2
  %162 = load i64*, i64** %end208, align 8
  %cmp209 = icmp eq i64* %162, null
  br i1 %cmp209, label %if.then.211, label %if.end.234

if.then.211:                                      ; preds = %lor.lhs.false.207, %cond.end.193
  br label %do.body.212

do.body.212:                                      ; preds = %if.then.211
  br label %do.body.213

do.body.213:                                      ; preds = %do.body.212
  %163 = load i8**, i8*** %regstart, align 8
  %tobool214 = icmp ne i8** %163, null
  br i1 %tobool214, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %do.body.213
  store i8** null, i8*** %regstart, align 8
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %do.body.213
  br label %do.end.217

do.end.217:                                       ; preds = %if.end.216
  br label %do.body.218

do.body.218:                                      ; preds = %do.end.217
  %164 = load i8**, i8*** %regend, align 8
  %tobool219 = icmp ne i8** %164, null
  br i1 %tobool219, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %do.body.218
  store i8** null, i8*** %regend, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %do.body.218
  br label %do.end.222

do.end.222:                                       ; preds = %if.end.221
  br label %do.body.223

do.body.223:                                      ; preds = %do.end.222
  %165 = load i8**, i8*** %best_regstart, align 8
  %tobool224 = icmp ne i8** %165, null
  br i1 %tobool224, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %do.body.223
  store i8** null, i8*** %best_regstart, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.225, %do.body.223
  br label %do.end.227

do.end.227:                                       ; preds = %if.end.226
  br label %do.body.228

do.body.228:                                      ; preds = %do.end.227
  %166 = load i8**, i8*** %best_regend, align 8
  %tobool229 = icmp ne i8** %166, null
  br i1 %tobool229, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %do.body.228
  store i8** null, i8*** %best_regend, align 8
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %do.body.228
  br label %do.end.232

do.end.232:                                       ; preds = %if.end.231
  br label %do.end.233

do.end.233:                                       ; preds = %do.end.232
  store i64 -2, i64* %retval
  br label %return

if.end.234:                                       ; preds = %lor.lhs.false.207
  %167 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated235 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %167, i32 0, i32 7
  %bf.load236 = load i8, i8* %regs_allocated235, align 8
  %bf.clear237 = and i8 %bf.load236, -7
  %bf.set = or i8 %bf.clear237, 2
  store i8 %bf.set, i8* %regs_allocated235, align 8
  br label %if.end.302

if.else.238:                                      ; preds = %if.then.179
  %168 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated239 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %168, i32 0, i32 7
  %bf.load240 = load i8, i8* %regs_allocated239, align 8
  %bf.lshr241 = lshr i8 %bf.load240, 1
  %bf.clear242 = and i8 %bf.lshr241, 3
  %bf.cast243 = zext i8 %bf.clear242 to i32
  %cmp244 = icmp eq i32 %bf.cast243, 1
  br i1 %cmp244, label %if.then.246, label %if.else.300

if.then.246:                                      ; preds = %if.else.238
  %169 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs247 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %169, i32 0, i32 0
  %170 = load i32, i32* %num_regs247, align 4
  %conv248 = zext i32 %170 to i64
  %171 = load i64, i64* %num_regs, align 8
  %add249 = add i64 %171, 1
  %cmp250 = icmp ult i64 %conv248, %add249
  br i1 %cmp250, label %if.then.252, label %if.end.299

if.then.252:                                      ; preds = %if.then.246
  %172 = load i64, i64* %num_regs, align 8
  %add253 = add i64 %172, 1
  %conv254 = trunc i64 %add253 to i32
  %173 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs255 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %173, i32 0, i32 0
  store i32 %conv254, i32* %num_regs255, align 4
  %174 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start256 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %174, i32 0, i32 1
  %175 = load i64*, i64** %start256, align 8
  %176 = bitcast i64* %175 to i8*
  %177 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs257 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %177, i32 0, i32 0
  %178 = load i32, i32* %num_regs257, align 4
  %conv258 = zext i32 %178 to i64
  %mul259 = mul i64 %conv258, 8
  %call260 = call i8* @xrealloc(i8* %176, i64 %mul259)
  %179 = bitcast i8* %call260 to i64*
  %180 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start261 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %180, i32 0, i32 1
  store i64* %179, i64** %start261, align 8
  %181 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end262 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %181, i32 0, i32 2
  %182 = load i64*, i64** %end262, align 8
  %183 = bitcast i64* %182 to i8*
  %184 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs263 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %184, i32 0, i32 0
  %185 = load i32, i32* %num_regs263, align 4
  %conv264 = zext i32 %185 to i64
  %mul265 = mul i64 %conv264, 8
  %call266 = call i8* @xrealloc(i8* %183, i64 %mul265)
  %186 = bitcast i8* %call266 to i64*
  %187 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end267 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %187, i32 0, i32 2
  store i64* %186, i64** %end267, align 8
  %188 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start268 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %188, i32 0, i32 1
  %189 = load i64*, i64** %start268, align 8
  %cmp269 = icmp eq i64* %189, null
  br i1 %cmp269, label %if.then.275, label %lor.lhs.false.271

lor.lhs.false.271:                                ; preds = %if.then.252
  %190 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end272 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %190, i32 0, i32 2
  %191 = load i64*, i64** %end272, align 8
  %cmp273 = icmp eq i64* %191, null
  br i1 %cmp273, label %if.then.275, label %if.end.298

if.then.275:                                      ; preds = %lor.lhs.false.271, %if.then.252
  br label %do.body.276

do.body.276:                                      ; preds = %if.then.275
  br label %do.body.277

do.body.277:                                      ; preds = %do.body.276
  %192 = load i8**, i8*** %regstart, align 8
  %tobool278 = icmp ne i8** %192, null
  br i1 %tobool278, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %do.body.277
  store i8** null, i8*** %regstart, align 8
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %do.body.277
  br label %do.end.281

do.end.281:                                       ; preds = %if.end.280
  br label %do.body.282

do.body.282:                                      ; preds = %do.end.281
  %193 = load i8**, i8*** %regend, align 8
  %tobool283 = icmp ne i8** %193, null
  br i1 %tobool283, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %do.body.282
  store i8** null, i8*** %regend, align 8
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.284, %do.body.282
  br label %do.end.286

do.end.286:                                       ; preds = %if.end.285
  br label %do.body.287

do.body.287:                                      ; preds = %do.end.286
  %194 = load i8**, i8*** %best_regstart, align 8
  %tobool288 = icmp ne i8** %194, null
  br i1 %tobool288, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %do.body.287
  store i8** null, i8*** %best_regstart, align 8
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.289, %do.body.287
  br label %do.end.291

do.end.291:                                       ; preds = %if.end.290
  br label %do.body.292

do.body.292:                                      ; preds = %do.end.291
  %195 = load i8**, i8*** %best_regend, align 8
  %tobool293 = icmp ne i8** %195, null
  br i1 %tobool293, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %do.body.292
  store i8** null, i8*** %best_regend, align 8
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.294, %do.body.292
  br label %do.end.296

do.end.296:                                       ; preds = %if.end.295
  br label %do.end.297

do.end.297:                                       ; preds = %do.end.296
  store i64 -2, i64* %retval
  br label %return

if.end.298:                                       ; preds = %lor.lhs.false.271
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.then.246
  br label %if.end.301

if.else.300:                                      ; preds = %if.else.238
  br label %if.end.301

if.end.301:                                       ; preds = %if.else.300, %if.end.299
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %if.end.234
  %196 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs303 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %196, i32 0, i32 0
  %197 = load i32, i32* %num_regs303, align 4
  %cmp304 = icmp ugt i32 %197, 0
  br i1 %cmp304, label %if.then.306, label %if.end.327

if.then.306:                                      ; preds = %if.end.302
  %198 = load i64, i64* %pos.addr, align 8
  %199 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start307 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %199, i32 0, i32 1
  %200 = load i64*, i64** %start307, align 8
  %arrayidx308 = getelementptr inbounds i64, i64* %200, i64 0
  store i64 %198, i64* %arrayidx308, align 8
  %201 = load i64, i64* %size1.addr, align 8
  %tobool309 = icmp ne i64 %201, 0
  br i1 %tobool309, label %land.lhs.true.310, label %cond.false.318

land.lhs.true.310:                                ; preds = %if.then.306
  %202 = load i8*, i8** %string1.addr, align 8
  %203 = load i8*, i8** %d, align 8
  %cmp311 = icmp ule i8* %202, %203
  br i1 %cmp311, label %land.lhs.true.313, label %cond.false.318

land.lhs.true.313:                                ; preds = %land.lhs.true.310
  %204 = load i8*, i8** %d, align 8
  %205 = load i8*, i8** %string1.addr, align 8
  %206 = load i64, i64* %size1.addr, align 8
  %add.ptr314 = getelementptr inbounds i8, i8* %205, i64 %206
  %cmp315 = icmp ule i8* %204, %add.ptr314
  br i1 %cmp315, label %cond.true.317, label %cond.false.318

cond.true.317:                                    ; preds = %land.lhs.true.313
  %207 = load i8*, i8** %d, align 8
  %208 = load i8*, i8** %string1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %207 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %208 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end.323

cond.false.318:                                   ; preds = %land.lhs.true.313, %land.lhs.true.310, %if.then.306
  %209 = load i8*, i8** %d, align 8
  %210 = load i8*, i8** %string2.addr, align 8
  %sub.ptr.lhs.cast319 = ptrtoint i8* %209 to i64
  %sub.ptr.rhs.cast320 = ptrtoint i8* %210 to i64
  %sub.ptr.sub321 = sub i64 %sub.ptr.lhs.cast319, %sub.ptr.rhs.cast320
  %211 = load i64, i64* %size1.addr, align 8
  %add322 = add nsw i64 %sub.ptr.sub321, %211
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.318, %cond.true.317
  %cond324 = phi i64 [ %sub.ptr.sub, %cond.true.317 ], [ %add322, %cond.false.318 ]
  %212 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end325 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %212, i32 0, i32 2
  %213 = load i64*, i64** %end325, align 8
  %arrayidx326 = getelementptr inbounds i64, i64* %213, i64 0
  store i64 %cond324, i64* %arrayidx326, align 8
  br label %if.end.327

if.end.327:                                       ; preds = %cond.end.323, %if.end.302
  store i64 1, i64* %reg, align 8
  br label %for.cond.328

for.cond.328:                                     ; preds = %for.inc.406, %if.end.327
  %214 = load i64, i64* %reg, align 8
  %215 = load i64, i64* %num_regs, align 8
  %216 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs329 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %216, i32 0, i32 0
  %217 = load i32, i32* %num_regs329, align 4
  %conv330 = zext i32 %217 to i64
  %cmp331 = icmp ult i64 %215, %conv330
  br i1 %cmp331, label %cond.true.333, label %cond.false.334

cond.true.333:                                    ; preds = %for.cond.328
  %218 = load i64, i64* %num_regs, align 8
  br label %cond.end.337

cond.false.334:                                   ; preds = %for.cond.328
  %219 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs335 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %219, i32 0, i32 0
  %220 = load i32, i32* %num_regs335, align 4
  %conv336 = zext i32 %220 to i64
  br label %cond.end.337

cond.end.337:                                     ; preds = %cond.false.334, %cond.true.333
  %cond338 = phi i64 [ %218, %cond.true.333 ], [ %conv336, %cond.false.334 ]
  %cmp339 = icmp ult i64 %214, %cond338
  br i1 %cmp339, label %for.body.341, label %for.end.408

for.body.341:                                     ; preds = %cond.end.337
  %221 = load i64, i64* %reg, align 8
  %222 = load i8**, i8*** %regstart, align 8
  %arrayidx342 = getelementptr inbounds i8*, i8** %222, i64 %221
  %223 = load i8*, i8** %arrayidx342, align 8
  %cmp343 = icmp eq i8* %223, null
  br i1 %cmp343, label %if.then.349, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %for.body.341
  %224 = load i64, i64* %reg, align 8
  %225 = load i8**, i8*** %regend, align 8
  %arrayidx346 = getelementptr inbounds i8*, i8** %225, i64 %224
  %226 = load i8*, i8** %arrayidx346, align 8
  %cmp347 = icmp eq i8* %226, null
  br i1 %cmp347, label %if.then.349, label %if.else.354

if.then.349:                                      ; preds = %lor.lhs.false.345, %for.body.341
  %227 = load i64, i64* %reg, align 8
  %228 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end350 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %228, i32 0, i32 2
  %229 = load i64*, i64** %end350, align 8
  %arrayidx351 = getelementptr inbounds i64, i64* %229, i64 %227
  store i64 -1, i64* %arrayidx351, align 8
  %230 = load i64, i64* %reg, align 8
  %231 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start352 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %231, i32 0, i32 1
  %232 = load i64*, i64** %start352, align 8
  %arrayidx353 = getelementptr inbounds i64, i64* %232, i64 %230
  store i64 -1, i64* %arrayidx353, align 8
  br label %if.end.405

if.else.354:                                      ; preds = %lor.lhs.false.345
  %233 = load i64, i64* %size1.addr, align 8
  %tobool355 = icmp ne i64 %233, 0
  br i1 %tobool355, label %land.lhs.true.356, label %cond.false.370

land.lhs.true.356:                                ; preds = %if.else.354
  %234 = load i8*, i8** %string1.addr, align 8
  %235 = load i64, i64* %reg, align 8
  %236 = load i8**, i8*** %regstart, align 8
  %arrayidx357 = getelementptr inbounds i8*, i8** %236, i64 %235
  %237 = load i8*, i8** %arrayidx357, align 8
  %cmp358 = icmp ule i8* %234, %237
  br i1 %cmp358, label %land.lhs.true.360, label %cond.false.370

land.lhs.true.360:                                ; preds = %land.lhs.true.356
  %238 = load i64, i64* %reg, align 8
  %239 = load i8**, i8*** %regstart, align 8
  %arrayidx361 = getelementptr inbounds i8*, i8** %239, i64 %238
  %240 = load i8*, i8** %arrayidx361, align 8
  %241 = load i8*, i8** %string1.addr, align 8
  %242 = load i64, i64* %size1.addr, align 8
  %add.ptr362 = getelementptr inbounds i8, i8* %241, i64 %242
  %cmp363 = icmp ule i8* %240, %add.ptr362
  br i1 %cmp363, label %cond.true.365, label %cond.false.370

cond.true.365:                                    ; preds = %land.lhs.true.360
  %243 = load i64, i64* %reg, align 8
  %244 = load i8**, i8*** %regstart, align 8
  %arrayidx366 = getelementptr inbounds i8*, i8** %244, i64 %243
  %245 = load i8*, i8** %arrayidx366, align 8
  %246 = load i8*, i8** %string1.addr, align 8
  %sub.ptr.lhs.cast367 = ptrtoint i8* %245 to i64
  %sub.ptr.rhs.cast368 = ptrtoint i8* %246 to i64
  %sub.ptr.sub369 = sub i64 %sub.ptr.lhs.cast367, %sub.ptr.rhs.cast368
  br label %cond.end.376

cond.false.370:                                   ; preds = %land.lhs.true.360, %land.lhs.true.356, %if.else.354
  %247 = load i64, i64* %reg, align 8
  %248 = load i8**, i8*** %regstart, align 8
  %arrayidx371 = getelementptr inbounds i8*, i8** %248, i64 %247
  %249 = load i8*, i8** %arrayidx371, align 8
  %250 = load i8*, i8** %string2.addr, align 8
  %sub.ptr.lhs.cast372 = ptrtoint i8* %249 to i64
  %sub.ptr.rhs.cast373 = ptrtoint i8* %250 to i64
  %sub.ptr.sub374 = sub i64 %sub.ptr.lhs.cast372, %sub.ptr.rhs.cast373
  %251 = load i64, i64* %size1.addr, align 8
  %add375 = add nsw i64 %sub.ptr.sub374, %251
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.370, %cond.true.365
  %cond377 = phi i64 [ %sub.ptr.sub369, %cond.true.365 ], [ %add375, %cond.false.370 ]
  %252 = load i64, i64* %reg, align 8
  %253 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start378 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %253, i32 0, i32 1
  %254 = load i64*, i64** %start378, align 8
  %arrayidx379 = getelementptr inbounds i64, i64* %254, i64 %252
  store i64 %cond377, i64* %arrayidx379, align 8
  %255 = load i64, i64* %size1.addr, align 8
  %tobool380 = icmp ne i64 %255, 0
  br i1 %tobool380, label %land.lhs.true.381, label %cond.false.395

land.lhs.true.381:                                ; preds = %cond.end.376
  %256 = load i8*, i8** %string1.addr, align 8
  %257 = load i64, i64* %reg, align 8
  %258 = load i8**, i8*** %regend, align 8
  %arrayidx382 = getelementptr inbounds i8*, i8** %258, i64 %257
  %259 = load i8*, i8** %arrayidx382, align 8
  %cmp383 = icmp ule i8* %256, %259
  br i1 %cmp383, label %land.lhs.true.385, label %cond.false.395

land.lhs.true.385:                                ; preds = %land.lhs.true.381
  %260 = load i64, i64* %reg, align 8
  %261 = load i8**, i8*** %regend, align 8
  %arrayidx386 = getelementptr inbounds i8*, i8** %261, i64 %260
  %262 = load i8*, i8** %arrayidx386, align 8
  %263 = load i8*, i8** %string1.addr, align 8
  %264 = load i64, i64* %size1.addr, align 8
  %add.ptr387 = getelementptr inbounds i8, i8* %263, i64 %264
  %cmp388 = icmp ule i8* %262, %add.ptr387
  br i1 %cmp388, label %cond.true.390, label %cond.false.395

cond.true.390:                                    ; preds = %land.lhs.true.385
  %265 = load i64, i64* %reg, align 8
  %266 = load i8**, i8*** %regend, align 8
  %arrayidx391 = getelementptr inbounds i8*, i8** %266, i64 %265
  %267 = load i8*, i8** %arrayidx391, align 8
  %268 = load i8*, i8** %string1.addr, align 8
  %sub.ptr.lhs.cast392 = ptrtoint i8* %267 to i64
  %sub.ptr.rhs.cast393 = ptrtoint i8* %268 to i64
  %sub.ptr.sub394 = sub i64 %sub.ptr.lhs.cast392, %sub.ptr.rhs.cast393
  br label %cond.end.401

cond.false.395:                                   ; preds = %land.lhs.true.385, %land.lhs.true.381, %cond.end.376
  %269 = load i64, i64* %reg, align 8
  %270 = load i8**, i8*** %regend, align 8
  %arrayidx396 = getelementptr inbounds i8*, i8** %270, i64 %269
  %271 = load i8*, i8** %arrayidx396, align 8
  %272 = load i8*, i8** %string2.addr, align 8
  %sub.ptr.lhs.cast397 = ptrtoint i8* %271 to i64
  %sub.ptr.rhs.cast398 = ptrtoint i8* %272 to i64
  %sub.ptr.sub399 = sub i64 %sub.ptr.lhs.cast397, %sub.ptr.rhs.cast398
  %273 = load i64, i64* %size1.addr, align 8
  %add400 = add nsw i64 %sub.ptr.sub399, %273
  br label %cond.end.401

cond.end.401:                                     ; preds = %cond.false.395, %cond.true.390
  %cond402 = phi i64 [ %sub.ptr.sub394, %cond.true.390 ], [ %add400, %cond.false.395 ]
  %274 = load i64, i64* %reg, align 8
  %275 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end403 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %275, i32 0, i32 2
  %276 = load i64*, i64** %end403, align 8
  %arrayidx404 = getelementptr inbounds i64, i64* %276, i64 %274
  store i64 %cond402, i64* %arrayidx404, align 8
  br label %if.end.405

if.end.405:                                       ; preds = %cond.end.401, %if.then.349
  br label %for.inc.406

for.inc.406:                                      ; preds = %if.end.405
  %277 = load i64, i64* %reg, align 8
  %inc407 = add i64 %277, 1
  store i64 %inc407, i64* %reg, align 8
  br label %for.cond.328

for.end.408:                                      ; preds = %cond.end.337
  %278 = load i64, i64* %num_regs, align 8
  store i64 %278, i64* %reg, align 8
  br label %for.cond.409

for.cond.409:                                     ; preds = %for.inc.419, %for.end.408
  %279 = load i64, i64* %reg, align 8
  %280 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs410 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %280, i32 0, i32 0
  %281 = load i32, i32* %num_regs410, align 4
  %conv411 = zext i32 %281 to i64
  %cmp412 = icmp ult i64 %279, %conv411
  br i1 %cmp412, label %for.body.414, label %for.end.421

for.body.414:                                     ; preds = %for.cond.409
  %282 = load i64, i64* %reg, align 8
  %283 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end415 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %283, i32 0, i32 2
  %284 = load i64*, i64** %end415, align 8
  %arrayidx416 = getelementptr inbounds i64, i64* %284, i64 %282
  store i64 -1, i64* %arrayidx416, align 8
  %285 = load i64, i64* %reg, align 8
  %286 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start417 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %286, i32 0, i32 1
  %287 = load i64*, i64** %start417, align 8
  %arrayidx418 = getelementptr inbounds i64, i64* %287, i64 %285
  store i64 -1, i64* %arrayidx418, align 8
  br label %for.inc.419

for.inc.419:                                      ; preds = %for.body.414
  %288 = load i64, i64* %reg, align 8
  %inc420 = add i64 %288, 1
  store i64 %inc420, i64* %reg, align 8
  br label %for.cond.409

for.end.421:                                      ; preds = %for.cond.409
  br label %if.end.422

if.end.422:                                       ; preds = %for.end.421, %land.lhs.true.177, %succeed_label
  %289 = load i64, i64* %size1.addr, align 8
  %tobool423 = icmp ne i64 %289, 0
  br i1 %tobool423, label %land.lhs.true.424, label %cond.false.435

land.lhs.true.424:                                ; preds = %if.end.422
  %290 = load i8*, i8** %string1.addr, align 8
  %291 = load i8*, i8** %d, align 8
  %cmp425 = icmp ule i8* %290, %291
  br i1 %cmp425, label %land.lhs.true.427, label %cond.false.435

land.lhs.true.427:                                ; preds = %land.lhs.true.424
  %292 = load i8*, i8** %d, align 8
  %293 = load i8*, i8** %string1.addr, align 8
  %294 = load i64, i64* %size1.addr, align 8
  %add.ptr428 = getelementptr inbounds i8, i8* %293, i64 %294
  %cmp429 = icmp ule i8* %292, %add.ptr428
  br i1 %cmp429, label %cond.true.431, label %cond.false.435

cond.true.431:                                    ; preds = %land.lhs.true.427
  %295 = load i8*, i8** %d, align 8
  %296 = load i8*, i8** %string1.addr, align 8
  %sub.ptr.lhs.cast432 = ptrtoint i8* %295 to i64
  %sub.ptr.rhs.cast433 = ptrtoint i8* %296 to i64
  %sub.ptr.sub434 = sub i64 %sub.ptr.lhs.cast432, %sub.ptr.rhs.cast433
  br label %cond.end.440

cond.false.435:                                   ; preds = %land.lhs.true.427, %land.lhs.true.424, %if.end.422
  %297 = load i8*, i8** %d, align 8
  %298 = load i8*, i8** %string2.addr, align 8
  %sub.ptr.lhs.cast436 = ptrtoint i8* %297 to i64
  %sub.ptr.rhs.cast437 = ptrtoint i8* %298 to i64
  %sub.ptr.sub438 = sub i64 %sub.ptr.lhs.cast436, %sub.ptr.rhs.cast437
  %299 = load i64, i64* %size1.addr, align 8
  %add439 = add nsw i64 %sub.ptr.sub438, %299
  br label %cond.end.440

cond.end.440:                                     ; preds = %cond.false.435, %cond.true.431
  %cond441 = phi i64 [ %sub.ptr.sub434, %cond.true.431 ], [ %add439, %cond.false.435 ]
  %300 = load i64, i64* %pos.addr, align 8
  %sub = sub nsw i64 %cond441, %300
  store i64 %sub, i64* %dcnt, align 8
  br label %do.body.442

do.body.442:                                      ; preds = %cond.end.440
  br label %do.body.443

do.body.443:                                      ; preds = %do.body.442
  %301 = load i8**, i8*** %regstart, align 8
  %tobool444 = icmp ne i8** %301, null
  br i1 %tobool444, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %do.body.443
  store i8** null, i8*** %regstart, align 8
  br label %if.end.446

if.end.446:                                       ; preds = %if.then.445, %do.body.443
  br label %do.end.447

do.end.447:                                       ; preds = %if.end.446
  br label %do.body.448

do.body.448:                                      ; preds = %do.end.447
  %302 = load i8**, i8*** %regend, align 8
  %tobool449 = icmp ne i8** %302, null
  br i1 %tobool449, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %do.body.448
  store i8** null, i8*** %regend, align 8
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.450, %do.body.448
  br label %do.end.452

do.end.452:                                       ; preds = %if.end.451
  br label %do.body.453

do.body.453:                                      ; preds = %do.end.452
  %303 = load i8**, i8*** %best_regstart, align 8
  %tobool454 = icmp ne i8** %303, null
  br i1 %tobool454, label %if.then.455, label %if.end.456

if.then.455:                                      ; preds = %do.body.453
  store i8** null, i8*** %best_regstart, align 8
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.455, %do.body.453
  br label %do.end.457

do.end.457:                                       ; preds = %if.end.456
  br label %do.body.458

do.body.458:                                      ; preds = %do.end.457
  %304 = load i8**, i8*** %best_regend, align 8
  %tobool459 = icmp ne i8** %304, null
  br i1 %tobool459, label %if.then.460, label %if.end.461

if.then.460:                                      ; preds = %do.body.458
  store i8** null, i8*** %best_regend, align 8
  br label %if.end.461

if.end.461:                                       ; preds = %if.then.460, %do.body.458
  br label %do.end.462

do.end.462:                                       ; preds = %if.end.461
  br label %do.end.463

do.end.463:                                       ; preds = %do.end.462
  %305 = load i64, i64* %dcnt, align 8
  store i64 %305, i64* %retval
  br label %return

if.end.464:                                       ; preds = %for.cond.93
  %306 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %307 = load i8, i8* %306, align 1
  %conv465 = zext i8 %307 to i32
  switch i32 %conv465, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.466
    i32 2, label %sw.bb.467
    i32 3, label %sw.bb.514
    i32 4, label %sw.bb.547
    i32 5, label %sw.bb.547
    i32 6, label %sw.bb.638
    i32 7, label %sw.bb.722
    i32 8, label %sw.bb.726
    i32 9, label %sw.bb.835
    i32 10, label %sw.bb.870
    i32 11, label %sw.bb.892
    i32 12, label %sw.bb.904
    i32 15, label %sw.bb.909
    i32 17, label %sw.bb.993
    i32 16, label %sw.bb.1117
    i32 14, label %sw.bb.1248
    i32 18, label %sw.bb.1332
    i32 13, label %sw.bb.1357
    i32 19, label %sw.bb.1361
    i32 20, label %sw.bb.1463
    i32 21, label %sw.bb.1565
    i32 24, label %sw.bb.1661
    i32 25, label %sw.bb.1661
    i32 22, label %sw.bb.1728
    i32 23, label %sw.bb.1784
    i32 26, label %sw.bb.1835
    i32 27, label %sw.bb.1896
    i32 28, label %sw.bb.1952
    i32 29, label %sw.bb.1952
  ]

sw.bb:                                            ; preds = %if.end.464
  br label %sw.epilog

sw.bb.466:                                        ; preds = %if.end.464
  br label %succeed_label

sw.bb.467:                                        ; preds = %if.end.464
  %308 = load i8*, i8** %p, align 8
  %incdec.ptr468 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %incdec.ptr468, i8** %p, align 8
  %309 = load i8, i8* %308, align 1
  %conv469 = zext i8 %309 to i32
  store i32 %conv469, i32* %mcnt, align 4
  %310 = load i8*, i8** %d, align 8
  store i8* %310, i8** %dfail, align 8
  %311 = load i8*, i8** %translate, align 8
  %tobool470 = icmp ne i8* %311, null
  br i1 %tobool470, label %if.then.471, label %if.else.490

if.then.471:                                      ; preds = %sw.bb.467
  br label %do.body.472

do.body.472:                                      ; preds = %do.cond, %if.then.471
  br label %while.cond

while.cond:                                       ; preds = %if.end.478, %do.body.472
  %312 = load i8*, i8** %d, align 8
  %313 = load i8*, i8** %dend, align 8
  %cmp473 = icmp eq i8* %312, %313
  br i1 %cmp473, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %314 = load i8*, i8** %dend, align 8
  %315 = load i8*, i8** %end_match_2, align 8
  %cmp475 = icmp eq i8* %314, %315
  br i1 %cmp475, label %if.then.477, label %if.end.478

if.then.477:                                      ; preds = %while.body
  br label %fail

if.end.478:                                       ; preds = %while.body
  %316 = load i8*, i8** %string2.addr, align 8
  store i8* %316, i8** %d, align 8
  %317 = load i8*, i8** %end_match_2, align 8
  store i8* %317, i8** %dend, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %318 = load i8*, i8** %d, align 8
  %319 = load i8, i8* %318, align 1
  %idxprom = zext i8 %319 to i64
  %320 = load i8*, i8** %translate, align 8
  %arrayidx479 = getelementptr inbounds i8, i8* %320, i64 %idxprom
  %321 = load i8, i8* %arrayidx479, align 1
  %conv480 = zext i8 %321 to i32
  %322 = load i8*, i8** %p, align 8
  %incdec.ptr481 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %incdec.ptr481, i8** %p, align 8
  %323 = load i8, i8* %322, align 1
  %conv482 = zext i8 %323 to i32
  %cmp483 = icmp ne i32 %conv480, %conv482
  br i1 %cmp483, label %if.then.485, label %if.end.486

if.then.485:                                      ; preds = %while.end
  %324 = load i8*, i8** %dfail, align 8
  store i8* %324, i8** %d, align 8
  br label %fail

if.end.486:                                       ; preds = %while.end
  %325 = load i8*, i8** %d, align 8
  %incdec.ptr487 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %incdec.ptr487, i8** %d, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.486
  %326 = load i32, i32* %mcnt, align 4
  %dec = add nsw i32 %326, -1
  store i32 %dec, i32* %mcnt, align 4
  %tobool488 = icmp ne i32 %dec, 0
  br i1 %tobool488, label %do.body.472, label %do.end.489

do.end.489:                                       ; preds = %do.cond
  br label %if.end.513

if.else.490:                                      ; preds = %sw.bb.467
  br label %do.body.491

do.body.491:                                      ; preds = %do.cond.509, %if.else.490
  br label %while.cond.492

while.cond.492:                                   ; preds = %if.end.499, %do.body.491
  %327 = load i8*, i8** %d, align 8
  %328 = load i8*, i8** %dend, align 8
  %cmp493 = icmp eq i8* %327, %328
  br i1 %cmp493, label %while.body.495, label %while.end.500

while.body.495:                                   ; preds = %while.cond.492
  %329 = load i8*, i8** %dend, align 8
  %330 = load i8*, i8** %end_match_2, align 8
  %cmp496 = icmp eq i8* %329, %330
  br i1 %cmp496, label %if.then.498, label %if.end.499

if.then.498:                                      ; preds = %while.body.495
  br label %fail

if.end.499:                                       ; preds = %while.body.495
  %331 = load i8*, i8** %string2.addr, align 8
  store i8* %331, i8** %d, align 8
  %332 = load i8*, i8** %end_match_2, align 8
  store i8* %332, i8** %dend, align 8
  br label %while.cond.492

while.end.500:                                    ; preds = %while.cond.492
  %333 = load i8*, i8** %d, align 8
  %incdec.ptr501 = getelementptr inbounds i8, i8* %333, i32 1
  store i8* %incdec.ptr501, i8** %d, align 8
  %334 = load i8, i8* %333, align 1
  %conv502 = zext i8 %334 to i32
  %335 = load i8*, i8** %p, align 8
  %incdec.ptr503 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %incdec.ptr503, i8** %p, align 8
  %336 = load i8, i8* %335, align 1
  %conv504 = zext i8 %336 to i32
  %cmp505 = icmp ne i32 %conv502, %conv504
  br i1 %cmp505, label %if.then.507, label %if.end.508

if.then.507:                                      ; preds = %while.end.500
  %337 = load i8*, i8** %dfail, align 8
  store i8* %337, i8** %d, align 8
  br label %fail

if.end.508:                                       ; preds = %while.end.500
  br label %do.cond.509

do.cond.509:                                      ; preds = %if.end.508
  %338 = load i32, i32* %mcnt, align 4
  %dec510 = add nsw i32 %338, -1
  store i32 %dec510, i32* %mcnt, align 4
  %tobool511 = icmp ne i32 %dec510, 0
  br i1 %tobool511, label %do.body.491, label %do.end.512

do.end.512:                                       ; preds = %do.cond.509
  br label %if.end.513

if.end.513:                                       ; preds = %do.end.512, %do.end.489
  br label %sw.epilog

sw.bb.514:                                        ; preds = %if.end.464
  br label %while.cond.515

while.cond.515:                                   ; preds = %if.end.522, %sw.bb.514
  %339 = load i8*, i8** %d, align 8
  %340 = load i8*, i8** %dend, align 8
  %cmp516 = icmp eq i8* %339, %340
  br i1 %cmp516, label %while.body.518, label %while.end.523

while.body.518:                                   ; preds = %while.cond.515
  %341 = load i8*, i8** %dend, align 8
  %342 = load i8*, i8** %end_match_2, align 8
  %cmp519 = icmp eq i8* %341, %342
  br i1 %cmp519, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %while.body.518
  br label %fail

if.end.522:                                       ; preds = %while.body.518
  %343 = load i8*, i8** %string2.addr, align 8
  store i8* %343, i8** %d, align 8
  %344 = load i8*, i8** %end_match_2, align 8
  store i8* %344, i8** %dend, align 8
  br label %while.cond.515

while.end.523:                                    ; preds = %while.cond.515
  store i32 1, i32* %buf_charlen, align 4
  %345 = load i8*, i8** %d, align 8
  %346 = load i8, i8* %345, align 1
  %conv524 = zext i8 %346 to i32
  store i32 %conv524, i32* %buf_ch, align 4
  %347 = load i8*, i8** %translate, align 8
  %tobool525 = icmp ne i8* %347, null
  br i1 %tobool525, label %cond.true.526, label %cond.false.530

cond.true.526:                                    ; preds = %while.end.523
  %348 = load i32, i32* %buf_ch, align 4
  %idxprom527 = sext i32 %348 to i64
  %349 = load i8*, i8** %translate, align 8
  %arrayidx528 = getelementptr inbounds i8, i8* %349, i64 %idxprom527
  %350 = load i8, i8* %arrayidx528, align 1
  %conv529 = zext i8 %350 to i32
  br label %cond.end.531

cond.false.530:                                   ; preds = %while.end.523
  %351 = load i32, i32* %buf_ch, align 4
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.false.530, %cond.true.526
  %cond532 = phi i32 [ %conv529, %cond.true.526 ], [ %351, %cond.false.530 ]
  store i32 %cond532, i32* %buf_ch, align 4
  %352 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %syntax = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %352, i32 0, i32 3
  %353 = load i64, i64* %syntax, align 8
  %and = and i64 %353, 64
  %tobool533 = icmp ne i64 %and, 0
  br i1 %tobool533, label %lor.lhs.false.537, label %land.lhs.true.534

land.lhs.true.534:                                ; preds = %cond.end.531
  %354 = load i32, i32* %buf_ch, align 4
  %cmp535 = icmp eq i32 %354, 10
  br i1 %cmp535, label %if.then.544, label %lor.lhs.false.537

lor.lhs.false.537:                                ; preds = %land.lhs.true.534, %cond.end.531
  %355 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %syntax538 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %355, i32 0, i32 3
  %356 = load i64, i64* %syntax538, align 8
  %and539 = and i64 %356, 128
  %tobool540 = icmp ne i64 %and539, 0
  br i1 %tobool540, label %land.lhs.true.541, label %if.end.545

land.lhs.true.541:                                ; preds = %lor.lhs.false.537
  %357 = load i32, i32* %buf_ch, align 4
  %cmp542 = icmp eq i32 %357, 0
  br i1 %cmp542, label %if.then.544, label %if.end.545

if.then.544:                                      ; preds = %land.lhs.true.541, %land.lhs.true.534
  br label %fail

if.end.545:                                       ; preds = %land.lhs.true.541, %lor.lhs.false.537
  %358 = load i32, i32* %buf_charlen, align 4
  %359 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %358 to i64
  %add.ptr546 = getelementptr inbounds i8, i8* %359, i64 %idx.ext
  store i8* %add.ptr546, i8** %d, align 8
  br label %sw.epilog

sw.bb.547:                                        ; preds = %if.end.464, %if.end.464
  %360 = load i8*, i8** %p, align 8
  %add.ptr548 = getelementptr inbounds i8, i8* %360, i64 -1
  %361 = load i8, i8* %add.ptr548, align 1
  %conv549 = zext i8 %361 to i32
  %cmp550 = icmp eq i32 %conv549, 5
  %conv551 = zext i1 %cmp550 to i32
  %conv552 = trunc i32 %conv551 to i8
  store i8 %conv552, i8* %not, align 1
  store i32 0, i32* %count, align 4
  store i8 0, i8* %unibyte_char, align 1
  %362 = load i8*, i8** %p, align 8
  %arrayidx553 = getelementptr inbounds i8, i8* %362, i64 -1
  %arrayidx554 = getelementptr inbounds i8, i8* %arrayidx553, i64 1
  %363 = load i8, i8* %arrayidx554, align 1
  %conv555 = zext i8 %363 to i32
  %and556 = and i32 %conv555, 128
  store i32 %and556, i32* %range_table_exists, align 4
  %364 = load i32, i32* %range_table_exists, align 4
  %tobool557 = icmp ne i32 %364, 0
  br i1 %tobool557, label %if.then.558, label %if.end.568

if.then.558:                                      ; preds = %sw.bb.547
  %365 = load i8*, i8** %p, align 8
  %arrayidx559 = getelementptr inbounds i8, i8* %365, i64 -1
  %arrayidx560 = getelementptr inbounds i8, i8* %arrayidx559, i64 1
  %366 = load i8, i8* %arrayidx560, align 1
  %conv561 = zext i8 %366 to i32
  %and562 = and i32 %conv561, 127
  %add563 = add nsw i32 4, %and562
  %idxprom564 = sext i32 %add563 to i64
  %367 = load i8*, i8** %p, align 8
  %arrayidx565 = getelementptr inbounds i8, i8* %367, i64 -1
  %arrayidx566 = getelementptr inbounds i8, i8* %arrayidx565, i64 %idxprom564
  store i8* %arrayidx566, i8** %range_table, align 8
  %call567 = call i32 @extract_number_and_incr(i8** %range_table)
  store i32 %call567, i32* %count, align 4
  br label %if.end.568

if.end.568:                                       ; preds = %if.then.558, %sw.bb.547
  br label %while.cond.569

while.cond.569:                                   ; preds = %if.end.576, %if.end.568
  %368 = load i8*, i8** %d, align 8
  %369 = load i8*, i8** %dend, align 8
  %cmp570 = icmp eq i8* %368, %369
  br i1 %cmp570, label %while.body.572, label %while.end.577

while.body.572:                                   ; preds = %while.cond.569
  %370 = load i8*, i8** %dend, align 8
  %371 = load i8*, i8** %end_match_2, align 8
  %cmp573 = icmp eq i8* %370, %371
  br i1 %cmp573, label %if.then.575, label %if.end.576

if.then.575:                                      ; preds = %while.body.572
  br label %fail

if.end.576:                                       ; preds = %while.body.572
  %372 = load i8*, i8** %string2.addr, align 8
  store i8* %372, i8** %d, align 8
  %373 = load i8*, i8** %end_match_2, align 8
  store i8* %373, i8** %dend, align 8
  br label %while.cond.569

while.end.577:                                    ; preds = %while.cond.569
  store i32 1, i32* %len, align 4
  %374 = load i8*, i8** %d, align 8
  %375 = load i8, i8* %374, align 1
  %conv578 = zext i8 %375 to i32
  store i32 %conv578, i32* %c, align 4
  store i32 %conv578, i32* %corig, align 4
  %376 = load i32, i32* %c, align 4
  store i32 %376, i32* %c1, align 4
  %377 = load i8*, i8** %translate, align 8
  %tobool579 = icmp ne i8* %377, null
  br i1 %tobool579, label %cond.true.580, label %cond.false.584

cond.true.580:                                    ; preds = %while.end.577
  %378 = load i32, i32* %c1, align 4
  %idxprom581 = sext i32 %378 to i64
  %379 = load i8*, i8** %translate, align 8
  %arrayidx582 = getelementptr inbounds i8, i8* %379, i64 %idxprom581
  %380 = load i8, i8* %arrayidx582, align 1
  %conv583 = zext i8 %380 to i32
  br label %cond.end.585

cond.false.584:                                   ; preds = %while.end.577
  %381 = load i32, i32* %c1, align 4
  br label %cond.end.585

cond.end.585:                                     ; preds = %cond.false.584, %cond.true.580
  %cond586 = phi i32 [ %conv583, %cond.true.580 ], [ %381, %cond.false.584 ]
  store i32 %cond586, i32* %c1, align 4
  %382 = load i32, i32* %c1, align 4
  store i32 %382, i32* %c1, align 4
  %383 = load i32, i32* %c1, align 4
  %cmp587 = icmp sge i32 %383, 0
  br i1 %cmp587, label %if.then.589, label %if.end.590

if.then.589:                                      ; preds = %cond.end.585
  store i8 1, i8* %unibyte_char, align 1
  %384 = load i32, i32* %c1, align 4
  store i32 %384, i32* %c, align 4
  br label %if.end.590

if.end.590:                                       ; preds = %if.then.589, %cond.end.585
  %385 = load i8, i8* %unibyte_char, align 1
  %conv591 = sext i8 %385 to i32
  %tobool592 = icmp ne i32 %conv591, 0
  br i1 %tobool592, label %land.lhs.true.593, label %if.end.617

land.lhs.true.593:                                ; preds = %if.end.590
  %386 = load i32, i32* %c, align 4
  %cmp594 = icmp ult i32 %386, 256
  br i1 %cmp594, label %if.then.596, label %if.end.617

if.then.596:                                      ; preds = %land.lhs.true.593
  %387 = load i32, i32* %c, align 4
  %388 = load i8*, i8** %p, align 8
  %arrayidx597 = getelementptr inbounds i8, i8* %388, i64 -1
  %arrayidx598 = getelementptr inbounds i8, i8* %arrayidx597, i64 1
  %389 = load i8, i8* %arrayidx598, align 1
  %conv599 = zext i8 %389 to i32
  %and600 = and i32 %conv599, 127
  %mul601 = mul nsw i32 %and600, 8
  %cmp602 = icmp ult i32 %387, %mul601
  br i1 %cmp602, label %land.lhs.true.604, label %if.end.616

land.lhs.true.604:                                ; preds = %if.then.596
  %390 = load i32, i32* %c, align 4
  %div = udiv i32 %390, 8
  %add605 = add i32 1, %div
  %idxprom606 = zext i32 %add605 to i64
  %391 = load i8*, i8** %p, align 8
  %arrayidx607 = getelementptr inbounds i8, i8* %391, i64 %idxprom606
  %392 = load i8, i8* %arrayidx607, align 1
  %conv608 = zext i8 %392 to i32
  %393 = load i32, i32* %c, align 4
  %rem = urem i32 %393, 8
  %shl = shl i32 1, %rem
  %and609 = and i32 %conv608, %shl
  %tobool610 = icmp ne i32 %and609, 0
  br i1 %tobool610, label %if.then.611, label %if.end.616

if.then.611:                                      ; preds = %land.lhs.true.604
  %394 = load i8, i8* %not, align 1
  %tobool612 = icmp ne i8 %394, 0
  %lnot613 = xor i1 %tobool612, true
  %lnot.ext614 = zext i1 %lnot613 to i32
  %conv615 = trunc i32 %lnot.ext614 to i8
  store i8 %conv615, i8* %not, align 1
  br label %if.end.616

if.end.616:                                       ; preds = %if.then.611, %land.lhs.true.604, %if.then.596
  br label %if.end.617

if.end.617:                                       ; preds = %if.end.616, %land.lhs.true.593, %if.end.590
  %395 = load i32, i32* %range_table_exists, align 4
  %tobool618 = icmp ne i32 %395, 0
  br i1 %tobool618, label %if.then.619, label %if.else.624

if.then.619:                                      ; preds = %if.end.617
  %396 = load i8*, i8** %range_table, align 8
  %397 = load i32, i32* %count, align 4
  %mul620 = mul nsw i32 %397, 2
  %mul621 = mul nsw i32 %mul620, 3
  %idx.ext622 = sext i32 %mul621 to i64
  %add.ptr623 = getelementptr inbounds i8, i8* %396, i64 %idx.ext622
  store i8* %add.ptr623, i8** %p, align 8
  br label %if.end.632

if.else.624:                                      ; preds = %if.end.617
  %398 = load i8*, i8** %p, align 8
  %arrayidx625 = getelementptr inbounds i8, i8* %398, i64 -1
  %arrayidx626 = getelementptr inbounds i8, i8* %arrayidx625, i64 1
  %399 = load i8, i8* %arrayidx626, align 1
  %conv627 = zext i8 %399 to i32
  %and628 = and i32 %conv627, 127
  %add629 = add nsw i32 %and628, 1
  %400 = load i8*, i8** %p, align 8
  %idx.ext630 = sext i32 %add629 to i64
  %add.ptr631 = getelementptr inbounds i8, i8* %400, i64 %idx.ext630
  store i8* %add.ptr631, i8** %p, align 8
  br label %if.end.632

if.end.632:                                       ; preds = %if.else.624, %if.then.619
  %401 = load i8, i8* %not, align 1
  %tobool633 = icmp ne i8 %401, 0
  br i1 %tobool633, label %if.end.635, label %if.then.634

if.then.634:                                      ; preds = %if.end.632
  br label %fail

if.end.635:                                       ; preds = %if.end.632
  %402 = load i32, i32* %len, align 4
  %403 = load i8*, i8** %d, align 8
  %idx.ext636 = sext i32 %402 to i64
  %add.ptr637 = getelementptr inbounds i8, i8* %403, i64 %idx.ext636
  store i8* %add.ptr637, i8** %d, align 8
  br label %sw.epilog

sw.bb.638:                                        ; preds = %if.end.464
  br label %do.body.639

do.body.639:                                      ; preds = %sw.bb.638
  %404 = load i8*, i8** %p, align 8
  %405 = load i8, i8* %404, align 1
  %conv640 = zext i8 %405 to i64
  store i64 %conv640, i64* %n, align 8
  br label %while.cond.641

while.cond.641:                                   ; preds = %if.end.698, %do.body.639
  %size642 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %406 = load i64, i64* %size642, align 8
  %avail643 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %407 = load i64, i64* %avail643, align 8
  %sub644 = sub i64 %406, %407
  %cmp645 = icmp ule i64 %sub644, 3
  br i1 %cmp645, label %while.body.647, label %while.end.699

while.body.647:                                   ; preds = %while.cond.641
  %size648 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %408 = load i64, i64* %size648, align 8
  %mul649 = mul i64 %408, 8
  %409 = load i64, i64* @re_max_failures, align 8
  %mul650 = mul i64 %409, 20
  %cmp651 = icmp uge i64 %mul649, %mul650
  br i1 %cmp651, label %cond.true.653, label %cond.false.654

cond.true.653:                                    ; preds = %while.body.647
  br i1 false, label %if.end.698, label %if.then.697

cond.false.654:                                   ; preds = %while.body.647
  %410 = load i64, i64* @re_max_failures, align 8
  %mul655 = mul i64 %410, 20
  %size656 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %411 = load i64, i64* %size656, align 8
  %mul657 = mul i64 %411, 8
  %mul658 = mul i64 %mul657, 4
  %cmp659 = icmp ult i64 %mul655, %mul658
  br i1 %cmp659, label %cond.true.661, label %cond.false.663

cond.true.661:                                    ; preds = %cond.false.654
  %412 = load i64, i64* @re_max_failures, align 8
  %mul662 = mul i64 %412, 20
  br label %cond.end.667

cond.false.663:                                   ; preds = %cond.false.654
  %size664 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %413 = load i64, i64* %size664, align 8
  %mul665 = mul i64 %413, 8
  %mul666 = mul i64 %mul665, 4
  br label %cond.end.667

cond.end.667:                                     ; preds = %cond.false.663, %cond.true.661
  %cond668 = phi i64 [ %mul662, %cond.true.661 ], [ %mul666, %cond.false.663 ]
  %414 = alloca i8, i64 %cond668
  store i8* %414, i8** %destination, align 8
  %415 = load i8*, i8** %destination, align 8
  %stack669 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %416 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack669, align 8
  %417 = bitcast %union.fail_stack_elt* %416 to i8*
  %size670 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %418 = load i64, i64* %size670, align 8
  %mul671 = mul i64 %418, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %415, i8* %417, i64 %mul671, i32 1, i1 false)
  %419 = bitcast i8* %415 to %union.fail_stack_elt*
  %stack672 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %419, %union.fail_stack_elt** %stack672, align 8
  %stack673 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %420 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack673, align 8
  %cmp674 = icmp eq %union.fail_stack_elt* %420, null
  br i1 %cmp674, label %cond.true.676, label %cond.false.677

cond.true.676:                                    ; preds = %cond.end.667
  br label %cond.end.694

cond.false.677:                                   ; preds = %cond.end.667
  %421 = load i64, i64* @re_max_failures, align 8
  %mul678 = mul i64 %421, 20
  %size679 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %422 = load i64, i64* %size679, align 8
  %mul680 = mul i64 %422, 8
  %mul681 = mul i64 %mul680, 4
  %cmp682 = icmp ult i64 %mul678, %mul681
  br i1 %cmp682, label %cond.true.684, label %cond.false.686

cond.true.684:                                    ; preds = %cond.false.677
  %423 = load i64, i64* @re_max_failures, align 8
  %mul685 = mul i64 %423, 20
  br label %cond.end.690

cond.false.686:                                   ; preds = %cond.false.677
  %size687 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %424 = load i64, i64* %size687, align 8
  %mul688 = mul i64 %424, 8
  %mul689 = mul i64 %mul688, 4
  br label %cond.end.690

cond.end.690:                                     ; preds = %cond.false.686, %cond.true.684
  %cond691 = phi i64 [ %mul685, %cond.true.684 ], [ %mul689, %cond.false.686 ]
  %div692 = udiv i64 %cond691, 8
  %size693 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 %div692, i64* %size693, align 8
  br label %cond.end.694

cond.end.694:                                     ; preds = %cond.end.690, %cond.true.676
  %cond695 = phi i32 [ 0, %cond.true.676 ], [ 1, %cond.end.690 ]
  %tobool696 = icmp ne i32 %cond695, 0
  br i1 %tobool696, label %if.end.698, label %if.then.697

if.then.697:                                      ; preds = %cond.end.694, %cond.true.653
  store i64 -2, i64* %retval
  br label %return

if.end.698:                                       ; preds = %cond.end.694, %cond.true.653
  br label %while.cond.641

while.end.699:                                    ; preds = %while.cond.641
  %425 = load i64, i64* %n, align 8
  %426 = load i8**, i8*** %regstart, align 8
  %arrayidx700 = getelementptr inbounds i8*, i8** %426, i64 %425
  %427 = load i8*, i8** %arrayidx700, align 8
  %avail701 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %428 = load i64, i64* %avail701, align 8
  %inc702 = add i64 %428, 1
  store i64 %inc702, i64* %avail701, align 8
  %stack703 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %429 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack703, align 8
  %arrayidx704 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %429, i64 %428
  %pointer = bitcast %union.fail_stack_elt* %arrayidx704 to i8**
  store i8* %427, i8** %pointer, align 8
  %430 = load i64, i64* %n, align 8
  %431 = load i8**, i8*** %regend, align 8
  %arrayidx705 = getelementptr inbounds i8*, i8** %431, i64 %430
  %432 = load i8*, i8** %arrayidx705, align 8
  %avail706 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %433 = load i64, i64* %avail706, align 8
  %inc707 = add i64 %433, 1
  store i64 %inc707, i64* %avail706, align 8
  %stack708 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %434 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack708, align 8
  %arrayidx709 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %434, i64 %433
  %pointer710 = bitcast %union.fail_stack_elt* %arrayidx709 to i8**
  store i8* %432, i8** %pointer710, align 8
  %435 = load i64, i64* %n, align 8
  %avail711 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %436 = load i64, i64* %avail711, align 8
  %inc712 = add i64 %436, 1
  store i64 %inc712, i64* %avail711, align 8
  %stack713 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %437 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack713, align 8
  %arrayidx714 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %437, i64 %436
  %integer = bitcast %union.fail_stack_elt* %arrayidx714 to i64*
  store i64 %435, i64* %integer, align 8
  br label %do.end.716

do.end.716:                                       ; preds = %while.end.699
  %438 = load i8*, i8** %d, align 8
  %439 = load i8*, i8** %p, align 8
  %440 = load i8, i8* %439, align 1
  %idxprom717 = zext i8 %440 to i64
  %441 = load i8**, i8*** %regstart, align 8
  %arrayidx718 = getelementptr inbounds i8*, i8** %441, i64 %idxprom717
  store i8* %438, i8** %arrayidx718, align 8
  %442 = load i8*, i8** %p, align 8
  %443 = load i8, i8* %442, align 1
  %idxprom719 = zext i8 %443 to i64
  %444 = load i8**, i8*** %regend, align 8
  %arrayidx720 = getelementptr inbounds i8*, i8** %444, i64 %idxprom719
  store i8* null, i8** %arrayidx720, align 8
  %445 = load i8*, i8** %p, align 8
  %add.ptr721 = getelementptr inbounds i8, i8* %445, i64 1
  store i8* %add.ptr721, i8** %p, align 8
  br label %sw.epilog

sw.bb.722:                                        ; preds = %if.end.464
  %446 = load i8*, i8** %d, align 8
  %447 = load i8*, i8** %p, align 8
  %448 = load i8, i8* %447, align 1
  %idxprom723 = zext i8 %448 to i64
  %449 = load i8**, i8*** %regend, align 8
  %arrayidx724 = getelementptr inbounds i8*, i8** %449, i64 %idxprom723
  store i8* %446, i8** %arrayidx724, align 8
  %450 = load i8*, i8** %p, align 8
  %add.ptr725 = getelementptr inbounds i8, i8* %450, i64 1
  store i8* %add.ptr725, i8** %p, align 8
  br label %sw.epilog

sw.bb.726:                                        ; preds = %if.end.464
  %451 = load i8*, i8** %p, align 8
  %incdec.ptr727 = getelementptr inbounds i8, i8* %451, i32 1
  store i8* %incdec.ptr727, i8** %p, align 8
  %452 = load i8, i8* %451, align 1
  %conv728 = zext i8 %452 to i32
  store i32 %conv728, i32* %regno, align 4
  %453 = load i32, i32* %regno, align 4
  %idxprom729 = sext i32 %453 to i64
  %454 = load i8**, i8*** %regstart, align 8
  %arrayidx730 = getelementptr inbounds i8*, i8** %454, i64 %idxprom729
  %455 = load i8*, i8** %arrayidx730, align 8
  %cmp731 = icmp eq i8* %455, null
  br i1 %cmp731, label %if.then.738, label %lor.lhs.false.733

lor.lhs.false.733:                                ; preds = %sw.bb.726
  %456 = load i32, i32* %regno, align 4
  %idxprom734 = sext i32 %456 to i64
  %457 = load i8**, i8*** %regend, align 8
  %arrayidx735 = getelementptr inbounds i8*, i8** %457, i64 %idxprom734
  %458 = load i8*, i8** %arrayidx735, align 8
  %cmp736 = icmp eq i8* %458, null
  br i1 %cmp736, label %if.then.738, label %if.end.739

if.then.738:                                      ; preds = %lor.lhs.false.733, %sw.bb.726
  br label %fail

if.end.739:                                       ; preds = %lor.lhs.false.733
  %459 = load i32, i32* %regno, align 4
  %idxprom740 = sext i32 %459 to i64
  %460 = load i8**, i8*** %regstart, align 8
  %arrayidx741 = getelementptr inbounds i8*, i8** %460, i64 %idxprom740
  %461 = load i8*, i8** %arrayidx741, align 8
  store i8* %461, i8** %d2, align 8
  %462 = load i8*, i8** %d, align 8
  store i8* %462, i8** %dfail, align 8
  %463 = load i64, i64* %size1.addr, align 8
  %tobool742 = icmp ne i64 %463, 0
  br i1 %tobool742, label %land.lhs.true.743, label %land.end.754

land.lhs.true.743:                                ; preds = %if.end.739
  %464 = load i8*, i8** %string1.addr, align 8
  %465 = load i32, i32* %regno, align 4
  %idxprom744 = sext i32 %465 to i64
  %466 = load i8**, i8*** %regstart, align 8
  %arrayidx745 = getelementptr inbounds i8*, i8** %466, i64 %idxprom744
  %467 = load i8*, i8** %arrayidx745, align 8
  %cmp746 = icmp ule i8* %464, %467
  br i1 %cmp746, label %land.rhs.748, label %land.end.754

land.rhs.748:                                     ; preds = %land.lhs.true.743
  %468 = load i32, i32* %regno, align 4
  %idxprom749 = sext i32 %468 to i64
  %469 = load i8**, i8*** %regstart, align 8
  %arrayidx750 = getelementptr inbounds i8*, i8** %469, i64 %idxprom749
  %470 = load i8*, i8** %arrayidx750, align 8
  %471 = load i8*, i8** %string1.addr, align 8
  %472 = load i64, i64* %size1.addr, align 8
  %add.ptr751 = getelementptr inbounds i8, i8* %471, i64 %472
  %cmp752 = icmp ule i8* %470, %add.ptr751
  br label %land.end.754

land.end.754:                                     ; preds = %land.rhs.748, %land.lhs.true.743, %if.end.739
  %473 = phi i1 [ false, %land.lhs.true.743 ], [ false, %if.end.739 ], [ %cmp752, %land.rhs.748 ]
  %land.ext755 = zext i1 %473 to i32
  %474 = load i64, i64* %size1.addr, align 8
  %tobool756 = icmp ne i64 %474, 0
  br i1 %tobool756, label %land.lhs.true.757, label %land.end.768

land.lhs.true.757:                                ; preds = %land.end.754
  %475 = load i8*, i8** %string1.addr, align 8
  %476 = load i32, i32* %regno, align 4
  %idxprom758 = sext i32 %476 to i64
  %477 = load i8**, i8*** %regend, align 8
  %arrayidx759 = getelementptr inbounds i8*, i8** %477, i64 %idxprom758
  %478 = load i8*, i8** %arrayidx759, align 8
  %cmp760 = icmp ule i8* %475, %478
  br i1 %cmp760, label %land.rhs.762, label %land.end.768

land.rhs.762:                                     ; preds = %land.lhs.true.757
  %479 = load i32, i32* %regno, align 4
  %idxprom763 = sext i32 %479 to i64
  %480 = load i8**, i8*** %regend, align 8
  %arrayidx764 = getelementptr inbounds i8*, i8** %480, i64 %idxprom763
  %481 = load i8*, i8** %arrayidx764, align 8
  %482 = load i8*, i8** %string1.addr, align 8
  %483 = load i64, i64* %size1.addr, align 8
  %add.ptr765 = getelementptr inbounds i8, i8* %482, i64 %483
  %cmp766 = icmp ule i8* %481, %add.ptr765
  br label %land.end.768

land.end.768:                                     ; preds = %land.rhs.762, %land.lhs.true.757, %land.end.754
  %484 = phi i1 [ false, %land.lhs.true.757 ], [ false, %land.end.754 ], [ %cmp766, %land.rhs.762 ]
  %land.ext769 = zext i1 %484 to i32
  %cmp770 = icmp eq i32 %land.ext755, %land.ext769
  br i1 %cmp770, label %cond.true.772, label %cond.false.775

cond.true.772:                                    ; preds = %land.end.768
  %485 = load i32, i32* %regno, align 4
  %idxprom773 = sext i32 %485 to i64
  %486 = load i8**, i8*** %regend, align 8
  %arrayidx774 = getelementptr inbounds i8*, i8** %486, i64 %idxprom773
  %487 = load i8*, i8** %arrayidx774, align 8
  br label %cond.end.776

cond.false.775:                                   ; preds = %land.end.768
  %488 = load i8*, i8** %end_match_1, align 8
  br label %cond.end.776

cond.end.776:                                     ; preds = %cond.false.775, %cond.true.772
  %cond777 = phi i8* [ %487, %cond.true.772 ], [ %488, %cond.false.775 ]
  store i8* %cond777, i8** %dend2, align 8
  br label %for.cond.778

for.cond.778:                                     ; preds = %if.end.831, %cond.end.776
  br label %while.cond.780

while.cond.780:                                   ; preds = %if.end.793, %for.cond.778
  %489 = load i8*, i8** %d2, align 8
  %490 = load i8*, i8** %dend2, align 8
  %cmp781 = icmp eq i8* %489, %490
  br i1 %cmp781, label %while.body.783, label %while.end.796

while.body.783:                                   ; preds = %while.cond.780
  %491 = load i8*, i8** %dend2, align 8
  %492 = load i8*, i8** %end_match_2, align 8
  %cmp784 = icmp eq i8* %491, %492
  br i1 %cmp784, label %if.then.786, label %if.end.787

if.then.786:                                      ; preds = %while.body.783
  br label %while.end.796

if.end.787:                                       ; preds = %while.body.783
  %493 = load i8*, i8** %dend2, align 8
  %494 = load i32, i32* %regno, align 4
  %idxprom788 = sext i32 %494 to i64
  %495 = load i8**, i8*** %regend, align 8
  %arrayidx789 = getelementptr inbounds i8*, i8** %495, i64 %idxprom788
  %496 = load i8*, i8** %arrayidx789, align 8
  %cmp790 = icmp eq i8* %493, %496
  br i1 %cmp790, label %if.then.792, label %if.end.793

if.then.792:                                      ; preds = %if.end.787
  br label %while.end.796

if.end.793:                                       ; preds = %if.end.787
  %497 = load i8*, i8** %string2.addr, align 8
  store i8* %497, i8** %d2, align 8
  %498 = load i32, i32* %regno, align 4
  %idxprom794 = sext i32 %498 to i64
  %499 = load i8**, i8*** %regend, align 8
  %arrayidx795 = getelementptr inbounds i8*, i8** %499, i64 %idxprom794
  %500 = load i8*, i8** %arrayidx795, align 8
  store i8* %500, i8** %dend2, align 8
  br label %while.cond.780

while.end.796:                                    ; preds = %if.then.792, %if.then.786, %while.cond.780
  %501 = load i8*, i8** %d2, align 8
  %502 = load i8*, i8** %dend2, align 8
  %cmp797 = icmp eq i8* %501, %502
  br i1 %cmp797, label %if.then.799, label %if.end.800

if.then.799:                                      ; preds = %while.end.796
  br label %for.end.834

if.end.800:                                       ; preds = %while.end.796
  br label %while.cond.801

while.cond.801:                                   ; preds = %if.end.808, %if.end.800
  %503 = load i8*, i8** %d, align 8
  %504 = load i8*, i8** %dend, align 8
  %cmp802 = icmp eq i8* %503, %504
  br i1 %cmp802, label %while.body.804, label %while.end.809

while.body.804:                                   ; preds = %while.cond.801
  %505 = load i8*, i8** %dend, align 8
  %506 = load i8*, i8** %end_match_2, align 8
  %cmp805 = icmp eq i8* %505, %506
  br i1 %cmp805, label %if.then.807, label %if.end.808

if.then.807:                                      ; preds = %while.body.804
  br label %fail

if.end.808:                                       ; preds = %while.body.804
  %507 = load i8*, i8** %string2.addr, align 8
  store i8* %507, i8** %d, align 8
  %508 = load i8*, i8** %end_match_2, align 8
  store i8* %508, i8** %dend, align 8
  br label %while.cond.801

while.end.809:                                    ; preds = %while.cond.801
  %509 = load i8*, i8** %dend, align 8
  %510 = load i8*, i8** %d, align 8
  %sub.ptr.lhs.cast810 = ptrtoint i8* %509 to i64
  %sub.ptr.rhs.cast811 = ptrtoint i8* %510 to i64
  %sub.ptr.sub812 = sub i64 %sub.ptr.lhs.cast810, %sub.ptr.rhs.cast811
  store i64 %sub.ptr.sub812, i64* %dcnt779, align 8
  %511 = load i64, i64* %dcnt779, align 8
  %512 = load i8*, i8** %dend2, align 8
  %513 = load i8*, i8** %d2, align 8
  %sub.ptr.lhs.cast813 = ptrtoint i8* %512 to i64
  %sub.ptr.rhs.cast814 = ptrtoint i8* %513 to i64
  %sub.ptr.sub815 = sub i64 %sub.ptr.lhs.cast813, %sub.ptr.rhs.cast814
  %cmp816 = icmp sgt i64 %511, %sub.ptr.sub815
  br i1 %cmp816, label %if.then.818, label %if.end.822

if.then.818:                                      ; preds = %while.end.809
  %514 = load i8*, i8** %dend2, align 8
  %515 = load i8*, i8** %d2, align 8
  %sub.ptr.lhs.cast819 = ptrtoint i8* %514 to i64
  %sub.ptr.rhs.cast820 = ptrtoint i8* %515 to i64
  %sub.ptr.sub821 = sub i64 %sub.ptr.lhs.cast819, %sub.ptr.rhs.cast820
  store i64 %sub.ptr.sub821, i64* %dcnt779, align 8
  br label %if.end.822

if.end.822:                                       ; preds = %if.then.818, %while.end.809
  %516 = load i8*, i8** %translate, align 8
  %tobool823 = icmp ne i8* %516, null
  br i1 %tobool823, label %cond.true.824, label %cond.false.827

cond.true.824:                                    ; preds = %if.end.822
  %517 = load i8*, i8** %d, align 8
  %518 = load i8*, i8** %d2, align 8
  %519 = load i64, i64* %dcnt779, align 8
  %520 = load i8*, i8** %translate, align 8
  %call825 = call i32 @bcmp_translate(i8* %517, i8* %518, i64 %519, i8* %520, i32 0)
  %tobool826 = icmp ne i32 %call825, 0
  br i1 %tobool826, label %if.then.830, label %if.end.831

cond.false.827:                                   ; preds = %if.end.822
  %521 = load i8*, i8** %d, align 8
  %522 = load i8*, i8** %d2, align 8
  %523 = load i64, i64* %dcnt779, align 8
  %call828 = call i32 @memcmp(i8* %521, i8* %522, i64 %523) #7
  %tobool829 = icmp ne i32 %call828, 0
  br i1 %tobool829, label %if.then.830, label %if.end.831

if.then.830:                                      ; preds = %cond.false.827, %cond.true.824
  %524 = load i8*, i8** %dfail, align 8
  store i8* %524, i8** %d, align 8
  br label %fail

if.end.831:                                       ; preds = %cond.false.827, %cond.true.824
  %525 = load i64, i64* %dcnt779, align 8
  %526 = load i8*, i8** %d, align 8
  %add.ptr832 = getelementptr inbounds i8, i8* %526, i64 %525
  store i8* %add.ptr832, i8** %d, align 8
  %527 = load i64, i64* %dcnt779, align 8
  %528 = load i8*, i8** %d2, align 8
  %add.ptr833 = getelementptr inbounds i8, i8* %528, i64 %527
  store i8* %add.ptr833, i8** %d2, align 8
  br label %for.cond.778

for.end.834:                                      ; preds = %if.then.799
  br label %sw.epilog

sw.bb.835:                                        ; preds = %if.end.464
  %529 = load i8*, i8** %d, align 8
  %530 = load i64, i64* %size1.addr, align 8
  %tobool836 = icmp ne i64 %530, 0
  br i1 %tobool836, label %cond.true.837, label %cond.false.838

cond.true.837:                                    ; preds = %sw.bb.835
  %531 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.839

cond.false.838:                                   ; preds = %sw.bb.835
  %532 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.839

cond.end.839:                                     ; preds = %cond.false.838, %cond.true.837
  %cond840 = phi i8* [ %531, %cond.true.837 ], [ %532, %cond.false.838 ]
  %cmp841 = icmp eq i8* %529, %cond840
  br i1 %cmp841, label %if.then.845, label %lor.lhs.false.843

lor.lhs.false.843:                                ; preds = %cond.end.839
  %533 = load i64, i64* %size2.addr, align 8
  %tobool844 = icmp ne i64 %533, 0
  br i1 %tobool844, label %if.else.853, label %if.then.845

if.then.845:                                      ; preds = %lor.lhs.false.843, %cond.end.839
  %534 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %not_bol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %534, i32 0, i32 7
  %bf.load846 = load i8, i8* %not_bol, align 8
  %bf.lshr847 = lshr i8 %bf.load846, 5
  %bf.clear848 = and i8 %bf.lshr847, 1
  %bf.cast849 = zext i8 %bf.clear848 to i32
  %tobool850 = icmp ne i32 %bf.cast849, 0
  br i1 %tobool850, label %if.end.852, label %if.then.851

if.then.851:                                      ; preds = %if.then.845
  br label %sw.epilog

if.end.852:                                       ; preds = %if.then.845
  br label %if.end.869

if.else.853:                                      ; preds = %lor.lhs.false.843
  %535 = load i8*, i8** %d, align 8
  %536 = load i8*, i8** %string2.addr, align 8
  %cmp855 = icmp eq i8* %535, %536
  br i1 %cmp855, label %cond.true.857, label %cond.false.860

cond.true.857:                                    ; preds = %if.else.853
  %537 = load i8*, i8** %end1, align 8
  %add.ptr858 = getelementptr inbounds i8, i8* %537, i64 -1
  %538 = load i8, i8* %add.ptr858, align 1
  %conv859 = zext i8 %538 to i32
  br label %cond.end.863

cond.false.860:                                   ; preds = %if.else.853
  %539 = load i8*, i8** %d, align 8
  %add.ptr861 = getelementptr inbounds i8, i8* %539, i64 -1
  %540 = load i8, i8* %add.ptr861, align 1
  %conv862 = zext i8 %540 to i32
  br label %cond.end.863

cond.end.863:                                     ; preds = %cond.false.860, %cond.true.857
  %cond864 = phi i32 [ %conv859, %cond.true.857 ], [ %conv862, %cond.false.860 ]
  store i32 %cond864, i32* %c854, align 4
  %541 = load i32, i32* %c854, align 4
  %cmp865 = icmp eq i32 %541, 10
  br i1 %cmp865, label %if.then.867, label %if.end.868

if.then.867:                                      ; preds = %cond.end.863
  br label %sw.epilog

if.end.868:                                       ; preds = %cond.end.863
  br label %if.end.869

if.end.869:                                       ; preds = %if.end.868, %if.end.852
  br label %fail

sw.bb.870:                                        ; preds = %if.end.464
  %542 = load i8*, i8** %d, align 8
  %543 = load i8*, i8** %end2, align 8
  %cmp871 = icmp eq i8* %542, %543
  br i1 %cmp871, label %if.then.873, label %if.else.881

if.then.873:                                      ; preds = %sw.bb.870
  %544 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %not_eol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %544, i32 0, i32 7
  %bf.load874 = load i8, i8* %not_eol, align 8
  %bf.lshr875 = lshr i8 %bf.load874, 6
  %bf.clear876 = and i8 %bf.lshr875, 1
  %bf.cast877 = zext i8 %bf.clear876 to i32
  %tobool878 = icmp ne i32 %bf.cast877, 0
  br i1 %tobool878, label %if.end.880, label %if.then.879

if.then.879:                                      ; preds = %if.then.873
  br label %sw.epilog

if.end.880:                                       ; preds = %if.then.873
  br label %if.end.891

if.else.881:                                      ; preds = %sw.bb.870
  %545 = load i8*, i8** %d, align 8
  %546 = load i8*, i8** %end1, align 8
  %cmp882 = icmp eq i8* %545, %546
  br i1 %cmp882, label %if.then.884, label %if.end.885

if.then.884:                                      ; preds = %if.else.881
  %547 = load i8*, i8** %string2.addr, align 8
  store i8* %547, i8** %d, align 8
  %548 = load i8*, i8** %end_match_2, align 8
  store i8* %548, i8** %dend, align 8
  br label %if.end.885

if.end.885:                                       ; preds = %if.then.884, %if.else.881
  %549 = load i8*, i8** %d, align 8
  %550 = load i8, i8* %549, align 1
  %conv886 = zext i8 %550 to i32
  %cmp887 = icmp eq i32 %conv886, 10
  br i1 %cmp887, label %if.then.889, label %if.end.890

if.then.889:                                      ; preds = %if.end.885
  br label %sw.epilog

if.end.890:                                       ; preds = %if.end.885
  br label %if.end.891

if.end.891:                                       ; preds = %if.end.890, %if.end.880
  br label %fail

sw.bb.892:                                        ; preds = %if.end.464
  %551 = load i8*, i8** %d, align 8
  %552 = load i64, i64* %size1.addr, align 8
  %tobool893 = icmp ne i64 %552, 0
  br i1 %tobool893, label %cond.true.894, label %cond.false.895

cond.true.894:                                    ; preds = %sw.bb.892
  %553 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.896

cond.false.895:                                   ; preds = %sw.bb.892
  %554 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.896

cond.end.896:                                     ; preds = %cond.false.895, %cond.true.894
  %cond897 = phi i8* [ %553, %cond.true.894 ], [ %554, %cond.false.895 ]
  %cmp898 = icmp eq i8* %551, %cond897
  br i1 %cmp898, label %if.then.902, label %lor.lhs.false.900

lor.lhs.false.900:                                ; preds = %cond.end.896
  %555 = load i64, i64* %size2.addr, align 8
  %tobool901 = icmp ne i64 %555, 0
  br i1 %tobool901, label %if.end.903, label %if.then.902

if.then.902:                                      ; preds = %lor.lhs.false.900, %cond.end.896
  br label %sw.epilog

if.end.903:                                       ; preds = %lor.lhs.false.900
  br label %fail

sw.bb.904:                                        ; preds = %if.end.464
  %556 = load i8*, i8** %d, align 8
  %557 = load i8*, i8** %end2, align 8
  %cmp905 = icmp eq i8* %556, %557
  br i1 %cmp905, label %if.then.907, label %if.end.908

if.then.907:                                      ; preds = %sw.bb.904
  br label %sw.epilog

if.end.908:                                       ; preds = %sw.bb.904
  br label %fail

sw.bb.909:                                        ; preds = %if.end.464
  %call910 = call i32 @extract_number_and_incr(i8** %p)
  store i32 %call910, i32* %mcnt, align 4
  br label %do.body.911

do.body.911:                                      ; preds = %sw.bb.909
  br label %while.cond.913

while.cond.913:                                   ; preds = %if.end.970, %do.body.911
  %size914 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %558 = load i64, i64* %size914, align 8
  %avail915 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %559 = load i64, i64* %avail915, align 8
  %sub916 = sub i64 %558, %559
  %cmp917 = icmp ule i64 %sub916, 3
  br i1 %cmp917, label %while.body.919, label %while.end.971

while.body.919:                                   ; preds = %while.cond.913
  %size920 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %560 = load i64, i64* %size920, align 8
  %mul921 = mul i64 %560, 8
  %561 = load i64, i64* @re_max_failures, align 8
  %mul922 = mul i64 %561, 20
  %cmp923 = icmp uge i64 %mul921, %mul922
  br i1 %cmp923, label %cond.true.925, label %cond.false.926

cond.true.925:                                    ; preds = %while.body.919
  br i1 false, label %if.end.970, label %if.then.969

cond.false.926:                                   ; preds = %while.body.919
  %562 = load i64, i64* @re_max_failures, align 8
  %mul927 = mul i64 %562, 20
  %size928 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %563 = load i64, i64* %size928, align 8
  %mul929 = mul i64 %563, 8
  %mul930 = mul i64 %mul929, 4
  %cmp931 = icmp ult i64 %mul927, %mul930
  br i1 %cmp931, label %cond.true.933, label %cond.false.935

cond.true.933:                                    ; preds = %cond.false.926
  %564 = load i64, i64* @re_max_failures, align 8
  %mul934 = mul i64 %564, 20
  br label %cond.end.939

cond.false.935:                                   ; preds = %cond.false.926
  %size936 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %565 = load i64, i64* %size936, align 8
  %mul937 = mul i64 %565, 8
  %mul938 = mul i64 %mul937, 4
  br label %cond.end.939

cond.end.939:                                     ; preds = %cond.false.935, %cond.true.933
  %cond940 = phi i64 [ %mul934, %cond.true.933 ], [ %mul938, %cond.false.935 ]
  %566 = alloca i8, i64 %cond940
  store i8* %566, i8** %destination912, align 8
  %567 = load i8*, i8** %destination912, align 8
  %stack941 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %568 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack941, align 8
  %569 = bitcast %union.fail_stack_elt* %568 to i8*
  %size942 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %570 = load i64, i64* %size942, align 8
  %mul943 = mul i64 %570, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %567, i8* %569, i64 %mul943, i32 1, i1 false)
  %571 = bitcast i8* %567 to %union.fail_stack_elt*
  %stack944 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %571, %union.fail_stack_elt** %stack944, align 8
  %stack945 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %572 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack945, align 8
  %cmp946 = icmp eq %union.fail_stack_elt* %572, null
  br i1 %cmp946, label %cond.true.948, label %cond.false.949

cond.true.948:                                    ; preds = %cond.end.939
  br label %cond.end.966

cond.false.949:                                   ; preds = %cond.end.939
  %573 = load i64, i64* @re_max_failures, align 8
  %mul950 = mul i64 %573, 20
  %size951 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %574 = load i64, i64* %size951, align 8
  %mul952 = mul i64 %574, 8
  %mul953 = mul i64 %mul952, 4
  %cmp954 = icmp ult i64 %mul950, %mul953
  br i1 %cmp954, label %cond.true.956, label %cond.false.958

cond.true.956:                                    ; preds = %cond.false.949
  %575 = load i64, i64* @re_max_failures, align 8
  %mul957 = mul i64 %575, 20
  br label %cond.end.962

cond.false.958:                                   ; preds = %cond.false.949
  %size959 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %576 = load i64, i64* %size959, align 8
  %mul960 = mul i64 %576, 8
  %mul961 = mul i64 %mul960, 4
  br label %cond.end.962

cond.end.962:                                     ; preds = %cond.false.958, %cond.true.956
  %cond963 = phi i64 [ %mul957, %cond.true.956 ], [ %mul961, %cond.false.958 ]
  %div964 = udiv i64 %cond963, 8
  %size965 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 %div964, i64* %size965, align 8
  br label %cond.end.966

cond.end.966:                                     ; preds = %cond.end.962, %cond.true.948
  %cond967 = phi i32 [ 0, %cond.true.948 ], [ 1, %cond.end.962 ]
  %tobool968 = icmp ne i32 %cond967, 0
  br i1 %tobool968, label %if.end.970, label %if.then.969

if.then.969:                                      ; preds = %cond.end.966, %cond.true.925
  store i64 -2, i64* %retval
  br label %return

if.end.970:                                       ; preds = %cond.end.966, %cond.true.925
  br label %while.cond.913

while.end.971:                                    ; preds = %while.cond.913
  %frame972 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %577 = load i64, i64* %frame972, align 8
  %avail973 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %578 = load i64, i64* %avail973, align 8
  %inc974 = add i64 %578, 1
  store i64 %inc974, i64* %avail973, align 8
  %stack975 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %579 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack975, align 8
  %arrayidx976 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %579, i64 %578
  %integer977 = bitcast %union.fail_stack_elt* %arrayidx976 to i64*
  store i64 %577, i64* %integer977, align 8
  %avail978 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %580 = load i64, i64* %avail978, align 8
  %inc979 = add i64 %580, 1
  store i64 %inc979, i64* %avail978, align 8
  %stack980 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %581 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack980, align 8
  %arrayidx981 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %581, i64 %580
  %pointer982 = bitcast %union.fail_stack_elt* %arrayidx981 to i8**
  store i8* null, i8** %pointer982, align 8
  %582 = load i8*, i8** %p, align 8
  %add.ptr983 = getelementptr inbounds i8, i8* %582, i64 -3
  %avail984 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %583 = load i64, i64* %avail984, align 8
  %inc985 = add i64 %583, 1
  store i64 %inc985, i64* %avail984, align 8
  %stack986 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %584 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack986, align 8
  %arrayidx987 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %584, i64 %583
  %pointer988 = bitcast %union.fail_stack_elt* %arrayidx987 to i8**
  store i8* %add.ptr983, i8** %pointer988, align 8
  %avail989 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %585 = load i64, i64* %avail989, align 8
  %frame990 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  store i64 %585, i64* %frame990, align 8
  br label %do.end.992

do.end.992:                                       ; preds = %while.end.971
  br label %sw.epilog

sw.bb.993:                                        ; preds = %if.end.464
  %call994 = call i32 @extract_number_and_incr(i8** %p)
  store i32 %call994, i32* %mcnt, align 4
  store i32 0, i32* %cycle, align 4
  br label %do.body.995

do.body.995:                                      ; preds = %sw.bb.993
  %frame996 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %586 = load i64, i64* %frame996, align 8
  store i64 %586, i64* %failure, align 8
  br label %while.cond.997

while.cond.997:                                   ; preds = %if.end.1024, %do.body.995
  %587 = load i64, i64* %failure, align 8
  %cmp998 = icmp sgt i64 %587, 0
  br i1 %cmp998, label %land.rhs.1000, label %land.end.1013

land.rhs.1000:                                    ; preds = %while.cond.997
  %588 = load i64, i64* %failure, align 8
  %sub1001 = sub nsw i64 %588, 2
  %stack1002 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %589 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1002, align 8
  %arrayidx1003 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %589, i64 %sub1001
  %pointer1004 = bitcast %union.fail_stack_elt* %arrayidx1003 to i8**
  %590 = load i8*, i8** %pointer1004, align 8
  %591 = load i8*, i8** %d, align 8
  %cmp1005 = icmp eq i8* %590, %591
  br i1 %cmp1005, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.1000
  %592 = load i64, i64* %failure, align 8
  %sub1007 = sub nsw i64 %592, 2
  %stack1008 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %593 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1008, align 8
  %arrayidx1009 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %593, i64 %sub1007
  %pointer1010 = bitcast %union.fail_stack_elt* %arrayidx1009 to i8**
  %594 = load i8*, i8** %pointer1010, align 8
  %cmp1011 = icmp eq i8* %594, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.1000
  %595 = phi i1 [ true, %land.rhs.1000 ], [ %cmp1011, %lor.rhs ]
  br label %land.end.1013

land.end.1013:                                    ; preds = %lor.end, %while.cond.997
  %596 = phi i1 [ false, %while.cond.997 ], [ %595, %lor.end ]
  br i1 %596, label %while.body.1015, label %while.end.1029

while.body.1015:                                  ; preds = %land.end.1013
  %597 = load i64, i64* %failure, align 8
  %sub1016 = sub nsw i64 %597, 1
  %stack1017 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %598 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1017, align 8
  %arrayidx1018 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %598, i64 %sub1016
  %pointer1019 = bitcast %union.fail_stack_elt* %arrayidx1018 to i8**
  %599 = load i8*, i8** %pointer1019, align 8
  %600 = load i8*, i8** %p, align 8
  %add.ptr1020 = getelementptr inbounds i8, i8* %600, i64 -4
  %cmp1021 = icmp eq i8* %599, %add.ptr1020
  br i1 %cmp1021, label %if.then.1023, label %if.end.1024

if.then.1023:                                     ; preds = %while.body.1015
  store i32 1, i32* %cycle, align 4
  br label %while.end.1029

if.end.1024:                                      ; preds = %while.body.1015
  %601 = load i64, i64* %failure, align 8
  %sub1025 = sub nsw i64 %601, 3
  %stack1026 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %602 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1026, align 8
  %arrayidx1027 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %602, i64 %sub1025
  %integer1028 = bitcast %union.fail_stack_elt* %arrayidx1027 to i64*
  %603 = load i64, i64* %integer1028, align 8
  store i64 %603, i64* %failure, align 8
  br label %while.cond.997

while.end.1029:                                   ; preds = %if.then.1023, %land.end.1013
  br label %do.end.1031

do.end.1031:                                      ; preds = %while.end.1029
  %604 = load i32, i32* %cycle, align 4
  %tobool1032 = icmp ne i32 %604, 0
  br i1 %tobool1032, label %if.end.1116, label %if.then.1033

if.then.1033:                                     ; preds = %do.end.1031
  br label %do.body.1034

do.body.1034:                                     ; preds = %if.then.1033
  br label %while.cond.1036

while.cond.1036:                                  ; preds = %if.end.1093, %do.body.1034
  %size1037 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %605 = load i64, i64* %size1037, align 8
  %avail1038 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %606 = load i64, i64* %avail1038, align 8
  %sub1039 = sub i64 %605, %606
  %cmp1040 = icmp ule i64 %sub1039, 3
  br i1 %cmp1040, label %while.body.1042, label %while.end.1094

while.body.1042:                                  ; preds = %while.cond.1036
  %size1043 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %607 = load i64, i64* %size1043, align 8
  %mul1044 = mul i64 %607, 8
  %608 = load i64, i64* @re_max_failures, align 8
  %mul1045 = mul i64 %608, 20
  %cmp1046 = icmp uge i64 %mul1044, %mul1045
  br i1 %cmp1046, label %cond.true.1048, label %cond.false.1049

cond.true.1048:                                   ; preds = %while.body.1042
  br i1 false, label %if.end.1093, label %if.then.1092

cond.false.1049:                                  ; preds = %while.body.1042
  %609 = load i64, i64* @re_max_failures, align 8
  %mul1050 = mul i64 %609, 20
  %size1051 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %610 = load i64, i64* %size1051, align 8
  %mul1052 = mul i64 %610, 8
  %mul1053 = mul i64 %mul1052, 4
  %cmp1054 = icmp ult i64 %mul1050, %mul1053
  br i1 %cmp1054, label %cond.true.1056, label %cond.false.1058

cond.true.1056:                                   ; preds = %cond.false.1049
  %611 = load i64, i64* @re_max_failures, align 8
  %mul1057 = mul i64 %611, 20
  br label %cond.end.1062

cond.false.1058:                                  ; preds = %cond.false.1049
  %size1059 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %612 = load i64, i64* %size1059, align 8
  %mul1060 = mul i64 %612, 8
  %mul1061 = mul i64 %mul1060, 4
  br label %cond.end.1062

cond.end.1062:                                    ; preds = %cond.false.1058, %cond.true.1056
  %cond1063 = phi i64 [ %mul1057, %cond.true.1056 ], [ %mul1061, %cond.false.1058 ]
  %613 = alloca i8, i64 %cond1063
  store i8* %613, i8** %destination1035, align 8
  %614 = load i8*, i8** %destination1035, align 8
  %stack1064 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %615 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1064, align 8
  %616 = bitcast %union.fail_stack_elt* %615 to i8*
  %size1065 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %617 = load i64, i64* %size1065, align 8
  %mul1066 = mul i64 %617, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %614, i8* %616, i64 %mul1066, i32 1, i1 false)
  %618 = bitcast i8* %614 to %union.fail_stack_elt*
  %stack1067 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %618, %union.fail_stack_elt** %stack1067, align 8
  %stack1068 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %619 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1068, align 8
  %cmp1069 = icmp eq %union.fail_stack_elt* %619, null
  br i1 %cmp1069, label %cond.true.1071, label %cond.false.1072

cond.true.1071:                                   ; preds = %cond.end.1062
  br label %cond.end.1089

cond.false.1072:                                  ; preds = %cond.end.1062
  %620 = load i64, i64* @re_max_failures, align 8
  %mul1073 = mul i64 %620, 20
  %size1074 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %621 = load i64, i64* %size1074, align 8
  %mul1075 = mul i64 %621, 8
  %mul1076 = mul i64 %mul1075, 4
  %cmp1077 = icmp ult i64 %mul1073, %mul1076
  br i1 %cmp1077, label %cond.true.1079, label %cond.false.1081

cond.true.1079:                                   ; preds = %cond.false.1072
  %622 = load i64, i64* @re_max_failures, align 8
  %mul1080 = mul i64 %622, 20
  br label %cond.end.1085

cond.false.1081:                                  ; preds = %cond.false.1072
  %size1082 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %623 = load i64, i64* %size1082, align 8
  %mul1083 = mul i64 %623, 8
  %mul1084 = mul i64 %mul1083, 4
  br label %cond.end.1085

cond.end.1085:                                    ; preds = %cond.false.1081, %cond.true.1079
  %cond1086 = phi i64 [ %mul1080, %cond.true.1079 ], [ %mul1084, %cond.false.1081 ]
  %div1087 = udiv i64 %cond1086, 8
  %size1088 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 %div1087, i64* %size1088, align 8
  br label %cond.end.1089

cond.end.1089:                                    ; preds = %cond.end.1085, %cond.true.1071
  %cond1090 = phi i32 [ 0, %cond.true.1071 ], [ 1, %cond.end.1085 ]
  %tobool1091 = icmp ne i32 %cond1090, 0
  br i1 %tobool1091, label %if.end.1093, label %if.then.1092

if.then.1092:                                     ; preds = %cond.end.1089, %cond.true.1048
  store i64 -2, i64* %retval
  br label %return

if.end.1093:                                      ; preds = %cond.end.1089, %cond.true.1048
  br label %while.cond.1036

while.end.1094:                                   ; preds = %while.cond.1036
  %frame1095 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %624 = load i64, i64* %frame1095, align 8
  %avail1096 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %625 = load i64, i64* %avail1096, align 8
  %inc1097 = add i64 %625, 1
  store i64 %inc1097, i64* %avail1096, align 8
  %stack1098 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %626 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1098, align 8
  %arrayidx1099 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %626, i64 %625
  %integer1100 = bitcast %union.fail_stack_elt* %arrayidx1099 to i64*
  store i64 %624, i64* %integer1100, align 8
  %627 = load i8*, i8** %d, align 8
  %avail1101 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %628 = load i64, i64* %avail1101, align 8
  %inc1102 = add i64 %628, 1
  store i64 %inc1102, i64* %avail1101, align 8
  %stack1103 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %629 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1103, align 8
  %arrayidx1104 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %629, i64 %628
  %pointer1105 = bitcast %union.fail_stack_elt* %arrayidx1104 to i8**
  store i8* %627, i8** %pointer1105, align 8
  %630 = load i8*, i8** %p, align 8
  %add.ptr1106 = getelementptr inbounds i8, i8* %630, i64 -3
  %avail1107 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %631 = load i64, i64* %avail1107, align 8
  %inc1108 = add i64 %631, 1
  store i64 %inc1108, i64* %avail1107, align 8
  %stack1109 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %632 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1109, align 8
  %arrayidx1110 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %632, i64 %631
  %pointer1111 = bitcast %union.fail_stack_elt* %arrayidx1110 to i8**
  store i8* %add.ptr1106, i8** %pointer1111, align 8
  %avail1112 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %633 = load i64, i64* %avail1112, align 8
  %frame1113 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  store i64 %633, i64* %frame1113, align 8
  br label %do.end.1115

do.end.1115:                                      ; preds = %while.end.1094
  br label %if.end.1116

if.end.1116:                                      ; preds = %do.end.1115, %do.end.1031
  br label %sw.epilog

sw.bb.1117:                                       ; preds = %if.end.464
  br label %on_failure

on_failure:                                       ; preds = %if.else.1461, %sw.bb.1117
  %call1118 = call i32 @extract_number_and_incr(i8** %p)
  store i32 %call1118, i32* %mcnt, align 4
  store i32 0, i32* %cycle1119, align 4
  br label %do.body.1120

do.body.1120:                                     ; preds = %on_failure
  %frame1122 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %634 = load i64, i64* %frame1122, align 8
  store i64 %634, i64* %failure1121, align 8
  br label %while.cond.1123

while.cond.1123:                                  ; preds = %if.end.1152, %do.body.1120
  %635 = load i64, i64* %failure1121, align 8
  %cmp1124 = icmp sgt i64 %635, 0
  br i1 %cmp1124, label %land.rhs.1126, label %land.end.1141

land.rhs.1126:                                    ; preds = %while.cond.1123
  %636 = load i64, i64* %failure1121, align 8
  %sub1127 = sub nsw i64 %636, 2
  %stack1128 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %637 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1128, align 8
  %arrayidx1129 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %637, i64 %sub1127
  %pointer1130 = bitcast %union.fail_stack_elt* %arrayidx1129 to i8**
  %638 = load i8*, i8** %pointer1130, align 8
  %639 = load i8*, i8** %d, align 8
  %cmp1131 = icmp eq i8* %638, %639
  br i1 %cmp1131, label %lor.end.1140, label %lor.rhs.1133

lor.rhs.1133:                                     ; preds = %land.rhs.1126
  %640 = load i64, i64* %failure1121, align 8
  %sub1134 = sub nsw i64 %640, 2
  %stack1135 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %641 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1135, align 8
  %arrayidx1136 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %641, i64 %sub1134
  %pointer1137 = bitcast %union.fail_stack_elt* %arrayidx1136 to i8**
  %642 = load i8*, i8** %pointer1137, align 8
  %cmp1138 = icmp eq i8* %642, null
  br label %lor.end.1140

lor.end.1140:                                     ; preds = %lor.rhs.1133, %land.rhs.1126
  %643 = phi i1 [ true, %land.rhs.1126 ], [ %cmp1138, %lor.rhs.1133 ]
  br label %land.end.1141

land.end.1141:                                    ; preds = %lor.end.1140, %while.cond.1123
  %644 = phi i1 [ false, %while.cond.1123 ], [ %643, %lor.end.1140 ]
  br i1 %644, label %while.body.1143, label %while.end.1157

while.body.1143:                                  ; preds = %land.end.1141
  %645 = load i64, i64* %failure1121, align 8
  %sub1144 = sub nsw i64 %645, 1
  %stack1145 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %646 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1145, align 8
  %arrayidx1146 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %646, i64 %sub1144
  %pointer1147 = bitcast %union.fail_stack_elt* %arrayidx1146 to i8**
  %647 = load i8*, i8** %pointer1147, align 8
  %648 = load i8*, i8** %p, align 8
  %add.ptr1148 = getelementptr inbounds i8, i8* %648, i64 -3
  %cmp1149 = icmp eq i8* %647, %add.ptr1148
  br i1 %cmp1149, label %if.then.1151, label %if.end.1152

if.then.1151:                                     ; preds = %while.body.1143
  store i32 1, i32* %cycle1119, align 4
  br label %while.end.1157

if.end.1152:                                      ; preds = %while.body.1143
  %649 = load i64, i64* %failure1121, align 8
  %sub1153 = sub nsw i64 %649, 3
  %stack1154 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %650 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1154, align 8
  %arrayidx1155 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %650, i64 %sub1153
  %integer1156 = bitcast %union.fail_stack_elt* %arrayidx1155 to i64*
  %651 = load i64, i64* %integer1156, align 8
  store i64 %651, i64* %failure1121, align 8
  br label %while.cond.1123

while.end.1157:                                   ; preds = %if.then.1151, %land.end.1141
  br label %do.end.1159

do.end.1159:                                      ; preds = %while.end.1157
  %652 = load i32, i32* %cycle1119, align 4
  %tobool1160 = icmp ne i32 %652, 0
  br i1 %tobool1160, label %if.then.1161, label %if.else.1164

if.then.1161:                                     ; preds = %do.end.1159
  %653 = load i32, i32* %mcnt, align 4
  %654 = load i8*, i8** %p, align 8
  %idx.ext1162 = sext i32 %653 to i64
  %add.ptr1163 = getelementptr inbounds i8, i8* %654, i64 %idx.ext1162
  store i8* %add.ptr1163, i8** %p, align 8
  br label %if.end.1247

if.else.1164:                                     ; preds = %do.end.1159
  br label %do.body.1165

do.body.1165:                                     ; preds = %if.else.1164
  br label %while.cond.1167

while.cond.1167:                                  ; preds = %if.end.1224, %do.body.1165
  %size1168 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %655 = load i64, i64* %size1168, align 8
  %avail1169 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %656 = load i64, i64* %avail1169, align 8
  %sub1170 = sub i64 %655, %656
  %cmp1171 = icmp ule i64 %sub1170, 3
  br i1 %cmp1171, label %while.body.1173, label %while.end.1225

while.body.1173:                                  ; preds = %while.cond.1167
  %size1174 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %657 = load i64, i64* %size1174, align 8
  %mul1175 = mul i64 %657, 8
  %658 = load i64, i64* @re_max_failures, align 8
  %mul1176 = mul i64 %658, 20
  %cmp1177 = icmp uge i64 %mul1175, %mul1176
  br i1 %cmp1177, label %cond.true.1179, label %cond.false.1180

cond.true.1179:                                   ; preds = %while.body.1173
  br i1 false, label %if.end.1224, label %if.then.1223

cond.false.1180:                                  ; preds = %while.body.1173
  %659 = load i64, i64* @re_max_failures, align 8
  %mul1181 = mul i64 %659, 20
  %size1182 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %660 = load i64, i64* %size1182, align 8
  %mul1183 = mul i64 %660, 8
  %mul1184 = mul i64 %mul1183, 4
  %cmp1185 = icmp ult i64 %mul1181, %mul1184
  br i1 %cmp1185, label %cond.true.1187, label %cond.false.1189

cond.true.1187:                                   ; preds = %cond.false.1180
  %661 = load i64, i64* @re_max_failures, align 8
  %mul1188 = mul i64 %661, 20
  br label %cond.end.1193

cond.false.1189:                                  ; preds = %cond.false.1180
  %size1190 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %662 = load i64, i64* %size1190, align 8
  %mul1191 = mul i64 %662, 8
  %mul1192 = mul i64 %mul1191, 4
  br label %cond.end.1193

cond.end.1193:                                    ; preds = %cond.false.1189, %cond.true.1187
  %cond1194 = phi i64 [ %mul1188, %cond.true.1187 ], [ %mul1192, %cond.false.1189 ]
  %663 = alloca i8, i64 %cond1194
  store i8* %663, i8** %destination1166, align 8
  %664 = load i8*, i8** %destination1166, align 8
  %stack1195 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %665 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1195, align 8
  %666 = bitcast %union.fail_stack_elt* %665 to i8*
  %size1196 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %667 = load i64, i64* %size1196, align 8
  %mul1197 = mul i64 %667, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %664, i8* %666, i64 %mul1197, i32 1, i1 false)
  %668 = bitcast i8* %664 to %union.fail_stack_elt*
  %stack1198 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %668, %union.fail_stack_elt** %stack1198, align 8
  %stack1199 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %669 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1199, align 8
  %cmp1200 = icmp eq %union.fail_stack_elt* %669, null
  br i1 %cmp1200, label %cond.true.1202, label %cond.false.1203

cond.true.1202:                                   ; preds = %cond.end.1193
  br label %cond.end.1220

cond.false.1203:                                  ; preds = %cond.end.1193
  %670 = load i64, i64* @re_max_failures, align 8
  %mul1204 = mul i64 %670, 20
  %size1205 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %671 = load i64, i64* %size1205, align 8
  %mul1206 = mul i64 %671, 8
  %mul1207 = mul i64 %mul1206, 4
  %cmp1208 = icmp ult i64 %mul1204, %mul1207
  br i1 %cmp1208, label %cond.true.1210, label %cond.false.1212

cond.true.1210:                                   ; preds = %cond.false.1203
  %672 = load i64, i64* @re_max_failures, align 8
  %mul1211 = mul i64 %672, 20
  br label %cond.end.1216

cond.false.1212:                                  ; preds = %cond.false.1203
  %size1213 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %673 = load i64, i64* %size1213, align 8
  %mul1214 = mul i64 %673, 8
  %mul1215 = mul i64 %mul1214, 4
  br label %cond.end.1216

cond.end.1216:                                    ; preds = %cond.false.1212, %cond.true.1210
  %cond1217 = phi i64 [ %mul1211, %cond.true.1210 ], [ %mul1215, %cond.false.1212 ]
  %div1218 = udiv i64 %cond1217, 8
  %size1219 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 %div1218, i64* %size1219, align 8
  br label %cond.end.1220

cond.end.1220:                                    ; preds = %cond.end.1216, %cond.true.1202
  %cond1221 = phi i32 [ 0, %cond.true.1202 ], [ 1, %cond.end.1216 ]
  %tobool1222 = icmp ne i32 %cond1221, 0
  br i1 %tobool1222, label %if.end.1224, label %if.then.1223

if.then.1223:                                     ; preds = %cond.end.1220, %cond.true.1179
  store i64 -2, i64* %retval
  br label %return

if.end.1224:                                      ; preds = %cond.end.1220, %cond.true.1179
  br label %while.cond.1167

while.end.1225:                                   ; preds = %while.cond.1167
  %frame1226 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %674 = load i64, i64* %frame1226, align 8
  %avail1227 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %675 = load i64, i64* %avail1227, align 8
  %inc1228 = add i64 %675, 1
  store i64 %inc1228, i64* %avail1227, align 8
  %stack1229 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %676 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1229, align 8
  %arrayidx1230 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %676, i64 %675
  %integer1231 = bitcast %union.fail_stack_elt* %arrayidx1230 to i64*
  store i64 %674, i64* %integer1231, align 8
  %677 = load i8*, i8** %d, align 8
  %avail1232 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %678 = load i64, i64* %avail1232, align 8
  %inc1233 = add i64 %678, 1
  store i64 %inc1233, i64* %avail1232, align 8
  %stack1234 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %679 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1234, align 8
  %arrayidx1235 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %679, i64 %678
  %pointer1236 = bitcast %union.fail_stack_elt* %arrayidx1235 to i8**
  store i8* %677, i8** %pointer1236, align 8
  %680 = load i8*, i8** %p, align 8
  %add.ptr1237 = getelementptr inbounds i8, i8* %680, i64 -3
  %avail1238 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %681 = load i64, i64* %avail1238, align 8
  %inc1239 = add i64 %681, 1
  store i64 %inc1239, i64* %avail1238, align 8
  %stack1240 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %682 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1240, align 8
  %arrayidx1241 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %682, i64 %681
  %pointer1242 = bitcast %union.fail_stack_elt* %arrayidx1241 to i8**
  store i8* %add.ptr1237, i8** %pointer1242, align 8
  %avail1243 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %683 = load i64, i64* %avail1243, align 8
  %frame1244 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  store i64 %683, i64* %frame1244, align 8
  br label %do.end.1246

do.end.1246:                                      ; preds = %while.end.1225
  br label %if.end.1247

if.end.1247:                                      ; preds = %do.end.1246, %if.then.1161
  br label %sw.epilog

sw.bb.1248:                                       ; preds = %if.end.464
  %call1249 = call i32 @extract_number_and_incr(i8** %p)
  store i32 %call1249, i32* %mcnt, align 4
  br label %do.body.1250

do.body.1250:                                     ; preds = %sw.bb.1248
  br label %while.cond.1252

while.cond.1252:                                  ; preds = %if.end.1309, %do.body.1250
  %size1253 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %684 = load i64, i64* %size1253, align 8
  %avail1254 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %685 = load i64, i64* %avail1254, align 8
  %sub1255 = sub i64 %684, %685
  %cmp1256 = icmp ule i64 %sub1255, 3
  br i1 %cmp1256, label %while.body.1258, label %while.end.1310

while.body.1258:                                  ; preds = %while.cond.1252
  %size1259 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %686 = load i64, i64* %size1259, align 8
  %mul1260 = mul i64 %686, 8
  %687 = load i64, i64* @re_max_failures, align 8
  %mul1261 = mul i64 %687, 20
  %cmp1262 = icmp uge i64 %mul1260, %mul1261
  br i1 %cmp1262, label %cond.true.1264, label %cond.false.1265

cond.true.1264:                                   ; preds = %while.body.1258
  br i1 false, label %if.end.1309, label %if.then.1308

cond.false.1265:                                  ; preds = %while.body.1258
  %688 = load i64, i64* @re_max_failures, align 8
  %mul1266 = mul i64 %688, 20
  %size1267 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %689 = load i64, i64* %size1267, align 8
  %mul1268 = mul i64 %689, 8
  %mul1269 = mul i64 %mul1268, 4
  %cmp1270 = icmp ult i64 %mul1266, %mul1269
  br i1 %cmp1270, label %cond.true.1272, label %cond.false.1274

cond.true.1272:                                   ; preds = %cond.false.1265
  %690 = load i64, i64* @re_max_failures, align 8
  %mul1273 = mul i64 %690, 20
  br label %cond.end.1278

cond.false.1274:                                  ; preds = %cond.false.1265
  %size1275 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %691 = load i64, i64* %size1275, align 8
  %mul1276 = mul i64 %691, 8
  %mul1277 = mul i64 %mul1276, 4
  br label %cond.end.1278

cond.end.1278:                                    ; preds = %cond.false.1274, %cond.true.1272
  %cond1279 = phi i64 [ %mul1273, %cond.true.1272 ], [ %mul1277, %cond.false.1274 ]
  %692 = alloca i8, i64 %cond1279
  store i8* %692, i8** %destination1251, align 8
  %693 = load i8*, i8** %destination1251, align 8
  %stack1280 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %694 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1280, align 8
  %695 = bitcast %union.fail_stack_elt* %694 to i8*
  %size1281 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %696 = load i64, i64* %size1281, align 8
  %mul1282 = mul i64 %696, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %693, i8* %695, i64 %mul1282, i32 1, i1 false)
  %697 = bitcast i8* %693 to %union.fail_stack_elt*
  %stack1283 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %697, %union.fail_stack_elt** %stack1283, align 8
  %stack1284 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %698 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1284, align 8
  %cmp1285 = icmp eq %union.fail_stack_elt* %698, null
  br i1 %cmp1285, label %cond.true.1287, label %cond.false.1288

cond.true.1287:                                   ; preds = %cond.end.1278
  br label %cond.end.1305

cond.false.1288:                                  ; preds = %cond.end.1278
  %699 = load i64, i64* @re_max_failures, align 8
  %mul1289 = mul i64 %699, 20
  %size1290 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %700 = load i64, i64* %size1290, align 8
  %mul1291 = mul i64 %700, 8
  %mul1292 = mul i64 %mul1291, 4
  %cmp1293 = icmp ult i64 %mul1289, %mul1292
  br i1 %cmp1293, label %cond.true.1295, label %cond.false.1297

cond.true.1295:                                   ; preds = %cond.false.1288
  %701 = load i64, i64* @re_max_failures, align 8
  %mul1296 = mul i64 %701, 20
  br label %cond.end.1301

cond.false.1297:                                  ; preds = %cond.false.1288
  %size1298 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %702 = load i64, i64* %size1298, align 8
  %mul1299 = mul i64 %702, 8
  %mul1300 = mul i64 %mul1299, 4
  br label %cond.end.1301

cond.end.1301:                                    ; preds = %cond.false.1297, %cond.true.1295
  %cond1302 = phi i64 [ %mul1296, %cond.true.1295 ], [ %mul1300, %cond.false.1297 ]
  %div1303 = udiv i64 %cond1302, 8
  %size1304 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 %div1303, i64* %size1304, align 8
  br label %cond.end.1305

cond.end.1305:                                    ; preds = %cond.end.1301, %cond.true.1287
  %cond1306 = phi i32 [ 0, %cond.true.1287 ], [ 1, %cond.end.1301 ]
  %tobool1307 = icmp ne i32 %cond1306, 0
  br i1 %tobool1307, label %if.end.1309, label %if.then.1308

if.then.1308:                                     ; preds = %cond.end.1305, %cond.true.1264
  store i64 -2, i64* %retval
  br label %return

if.end.1309:                                      ; preds = %cond.end.1305, %cond.true.1264
  br label %while.cond.1252

while.end.1310:                                   ; preds = %while.cond.1252
  %frame1311 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %703 = load i64, i64* %frame1311, align 8
  %avail1312 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %704 = load i64, i64* %avail1312, align 8
  %inc1313 = add i64 %704, 1
  store i64 %inc1313, i64* %avail1312, align 8
  %stack1314 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %705 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1314, align 8
  %arrayidx1315 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %705, i64 %704
  %integer1316 = bitcast %union.fail_stack_elt* %arrayidx1315 to i64*
  store i64 %703, i64* %integer1316, align 8
  %706 = load i8*, i8** %d, align 8
  %avail1317 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %707 = load i64, i64* %avail1317, align 8
  %inc1318 = add i64 %707, 1
  store i64 %inc1318, i64* %avail1317, align 8
  %stack1319 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %708 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1319, align 8
  %arrayidx1320 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %708, i64 %707
  %pointer1321 = bitcast %union.fail_stack_elt* %arrayidx1320 to i8**
  store i8* %706, i8** %pointer1321, align 8
  %709 = load i8*, i8** %p, align 8
  %add.ptr1322 = getelementptr inbounds i8, i8* %709, i64 -3
  %avail1323 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %710 = load i64, i64* %avail1323, align 8
  %inc1324 = add i64 %710, 1
  store i64 %inc1324, i64* %avail1323, align 8
  %stack1325 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %711 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1325, align 8
  %arrayidx1326 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %711, i64 %710
  %pointer1327 = bitcast %union.fail_stack_elt* %arrayidx1326 to i8**
  store i8* %add.ptr1322, i8** %pointer1327, align 8
  %avail1328 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %712 = load i64, i64* %avail1328, align 8
  %frame1329 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  store i64 %712, i64* %frame1329, align 8
  br label %do.end.1331

do.end.1331:                                      ; preds = %while.end.1310
  br label %sw.epilog

sw.bb.1332:                                       ; preds = %if.end.464
  %call1333 = call i32 @extract_number_and_incr(i8** %p)
  store i32 %call1333, i32* %mcnt, align 4
  %713 = load i8*, i8** %p, align 8
  store i8* %713, i8** %p1, align 8
  %714 = load i8*, i8** %p, align 8
  %715 = load i32, i32* %mcnt, align 4
  %idx.ext1334 = sext i32 %715 to i64
  %add.ptr1335 = getelementptr inbounds i8, i8* %714, i64 %idx.ext1334
  store i8* %add.ptr1335, i8** %p2, align 8
  %716 = load i8*, i8** %p, align 8
  %add.ptr1336 = getelementptr inbounds i8, i8* %716, i64 -3
  store i8* %add.ptr1336, i8** %p3, align 8
  %717 = load i8*, i8** %p, align 8
  %add.ptr1337 = getelementptr inbounds i8, i8* %717, i64 -3
  store i8* %add.ptr1337, i8** %p, align 8
  %718 = load i8*, i8** %p2, align 8
  %add.ptr1338 = getelementptr inbounds i8, i8* %718, i64 -2
  %call1339 = call i32 @extract_number(i8* %add.ptr1338)
  store i32 %call1339, i32* %mcnt, align 4
  %719 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %720 = load i8*, i8** %p1, align 8
  %721 = load i8*, i8** %p2, align 8
  %call1340 = call i32 @mutually_exclusive_p(%struct.re_pattern_buffer* %719, i8* %720, i8* %721)
  %tobool1341 = icmp ne i32 %call1340, 0
  br i1 %tobool1341, label %if.then.1342, label %if.else.1355

if.then.1342:                                     ; preds = %sw.bb.1332
  %722 = load i8*, i8** %p3, align 8
  store i8 15, i8* %722, align 1
  br label %do.body.1343

do.body.1343:                                     ; preds = %if.then.1342
  %723 = load i32, i32* %mcnt, align 4
  %add1344 = add nsw i32 %723, 3
  %and1345 = and i32 %add1344, 255
  %conv1346 = trunc i32 %and1345 to i8
  %724 = load i8*, i8** %p2, align 8
  %add.ptr1347 = getelementptr inbounds i8, i8* %724, i64 -2
  %arrayidx1348 = getelementptr inbounds i8, i8* %add.ptr1347, i64 0
  store i8 %conv1346, i8* %arrayidx1348, align 1
  %725 = load i32, i32* %mcnt, align 4
  %add1349 = add nsw i32 %725, 3
  %shr = ashr i32 %add1349, 8
  %conv1350 = trunc i32 %shr to i8
  %726 = load i8*, i8** %p2, align 8
  %add.ptr1351 = getelementptr inbounds i8, i8* %726, i64 -2
  %arrayidx1352 = getelementptr inbounds i8, i8* %add.ptr1351, i64 1
  store i8 %conv1350, i8* %arrayidx1352, align 1
  br label %do.end.1354

do.end.1354:                                      ; preds = %do.body.1343
  br label %if.end.1356

if.else.1355:                                     ; preds = %sw.bb.1332
  %727 = load i8*, i8** %p3, align 8
  store i8 14, i8* %727, align 1
  br label %if.end.1356

if.end.1356:                                      ; preds = %if.else.1355, %do.end.1354
  br label %sw.epilog

sw.bb.1357:                                       ; preds = %if.end.464
  br label %unconditional_jump

unconditional_jump:                               ; preds = %do.end.1561, %sw.bb.1357
  %call1358 = call i32 @extract_number_and_incr(i8** %p)
  store i32 %call1358, i32* %mcnt, align 4
  %728 = load i32, i32* %mcnt, align 4
  %729 = load i8*, i8** %p, align 8
  %idx.ext1359 = sext i32 %728 to i64
  %add.ptr1360 = getelementptr inbounds i8, i8* %729, i64 %idx.ext1359
  store i8* %add.ptr1360, i8** %p, align 8
  br label %sw.epilog

sw.bb.1361:                                       ; preds = %if.end.464
  %730 = load i8*, i8** %p, align 8
  %add.ptr1362 = getelementptr inbounds i8, i8* %730, i64 2
  %call1363 = call i32 @extract_number(i8* %add.ptr1362)
  store i32 %call1363, i32* %mcnt, align 4
  %731 = load i32, i32* %mcnt, align 4
  %cmp1364 = icmp ne i32 %731, 0
  br i1 %cmp1364, label %if.then.1366, label %if.else.1461

if.then.1366:                                     ; preds = %sw.bb.1361
  %732 = load i8*, i8** %p, align 8
  %add.ptr1368 = getelementptr inbounds i8, i8* %732, i64 2
  store i8* %add.ptr1368, i8** %p21367, align 8
  %733 = load i32, i32* %mcnt, align 4
  %dec1369 = add nsw i32 %733, -1
  store i32 %dec1369, i32* %mcnt, align 4
  %734 = load i8*, i8** %p, align 8
  %add.ptr1370 = getelementptr inbounds i8, i8* %734, i64 4
  store i8* %add.ptr1370, i8** %p, align 8
  br label %do.body.1371

do.body.1371:                                     ; preds = %if.then.1366
  br label %while.cond.1374

while.cond.1374:                                  ; preds = %if.end.1431, %do.body.1371
  %size1375 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %735 = load i64, i64* %size1375, align 8
  %avail1376 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %736 = load i64, i64* %avail1376, align 8
  %sub1377 = sub i64 %735, %736
  %cmp1378 = icmp ule i64 %sub1377, 3
  br i1 %cmp1378, label %while.body.1380, label %while.end.1432

while.body.1380:                                  ; preds = %while.cond.1374
  %size1381 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %737 = load i64, i64* %size1381, align 8
  %mul1382 = mul i64 %737, 8
  %738 = load i64, i64* @re_max_failures, align 8
  %mul1383 = mul i64 %738, 20
  %cmp1384 = icmp uge i64 %mul1382, %mul1383
  br i1 %cmp1384, label %cond.true.1386, label %cond.false.1387

cond.true.1386:                                   ; preds = %while.body.1380
  br i1 false, label %if.end.1431, label %if.then.1430

cond.false.1387:                                  ; preds = %while.body.1380
  %739 = load i64, i64* @re_max_failures, align 8
  %mul1388 = mul i64 %739, 20
  %size1389 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %740 = load i64, i64* %size1389, align 8
  %mul1390 = mul i64 %740, 8
  %mul1391 = mul i64 %mul1390, 4
  %cmp1392 = icmp ult i64 %mul1388, %mul1391
  br i1 %cmp1392, label %cond.true.1394, label %cond.false.1396

cond.true.1394:                                   ; preds = %cond.false.1387
  %741 = load i64, i64* @re_max_failures, align 8
  %mul1395 = mul i64 %741, 20
  br label %cond.end.1400

cond.false.1396:                                  ; preds = %cond.false.1387
  %size1397 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %742 = load i64, i64* %size1397, align 8
  %mul1398 = mul i64 %742, 8
  %mul1399 = mul i64 %mul1398, 4
  br label %cond.end.1400

cond.end.1400:                                    ; preds = %cond.false.1396, %cond.true.1394
  %cond1401 = phi i64 [ %mul1395, %cond.true.1394 ], [ %mul1399, %cond.false.1396 ]
  %743 = alloca i8, i64 %cond1401
  store i8* %743, i8** %destination1372, align 8
  %744 = load i8*, i8** %destination1372, align 8
  %stack1402 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %745 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1402, align 8
  %746 = bitcast %union.fail_stack_elt* %745 to i8*
  %size1403 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %747 = load i64, i64* %size1403, align 8
  %mul1404 = mul i64 %747, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %744, i8* %746, i64 %mul1404, i32 1, i1 false)
  %748 = bitcast i8* %744 to %union.fail_stack_elt*
  %stack1405 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %748, %union.fail_stack_elt** %stack1405, align 8
  %stack1406 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %749 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1406, align 8
  %cmp1407 = icmp eq %union.fail_stack_elt* %749, null
  br i1 %cmp1407, label %cond.true.1409, label %cond.false.1410

cond.true.1409:                                   ; preds = %cond.end.1400
  br label %cond.end.1427

cond.false.1410:                                  ; preds = %cond.end.1400
  %750 = load i64, i64* @re_max_failures, align 8
  %mul1411 = mul i64 %750, 20
  %size1412 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %751 = load i64, i64* %size1412, align 8
  %mul1413 = mul i64 %751, 8
  %mul1414 = mul i64 %mul1413, 4
  %cmp1415 = icmp ult i64 %mul1411, %mul1414
  br i1 %cmp1415, label %cond.true.1417, label %cond.false.1419

cond.true.1417:                                   ; preds = %cond.false.1410
  %752 = load i64, i64* @re_max_failures, align 8
  %mul1418 = mul i64 %752, 20
  br label %cond.end.1423

cond.false.1419:                                  ; preds = %cond.false.1410
  %size1420 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %753 = load i64, i64* %size1420, align 8
  %mul1421 = mul i64 %753, 8
  %mul1422 = mul i64 %mul1421, 4
  br label %cond.end.1423

cond.end.1423:                                    ; preds = %cond.false.1419, %cond.true.1417
  %cond1424 = phi i64 [ %mul1418, %cond.true.1417 ], [ %mul1422, %cond.false.1419 ]
  %div1425 = udiv i64 %cond1424, 8
  %size1426 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 %div1425, i64* %size1426, align 8
  br label %cond.end.1427

cond.end.1427:                                    ; preds = %cond.end.1423, %cond.true.1409
  %cond1428 = phi i32 [ 0, %cond.true.1409 ], [ 1, %cond.end.1423 ]
  %tobool1429 = icmp ne i32 %cond1428, 0
  br i1 %tobool1429, label %if.end.1431, label %if.then.1430

if.then.1430:                                     ; preds = %cond.end.1427, %cond.true.1386
  store i64 -2, i64* %retval
  br label %return

if.end.1431:                                      ; preds = %cond.end.1427, %cond.true.1386
  br label %while.cond.1374

while.end.1432:                                   ; preds = %while.cond.1374
  %754 = load i8*, i8** %p21367, align 8
  %call1433 = call i32 @extract_number(i8* %754)
  store i32 %call1433, i32* %c1373, align 4
  %755 = load i32, i32* %c1373, align 4
  %conv1434 = sext i32 %755 to i64
  %avail1435 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %756 = load i64, i64* %avail1435, align 8
  %inc1436 = add i64 %756, 1
  store i64 %inc1436, i64* %avail1435, align 8
  %stack1437 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %757 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1437, align 8
  %arrayidx1438 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %757, i64 %756
  %integer1439 = bitcast %union.fail_stack_elt* %arrayidx1438 to i64*
  store i64 %conv1434, i64* %integer1439, align 8
  %758 = load i8*, i8** %p21367, align 8
  %avail1440 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %759 = load i64, i64* %avail1440, align 8
  %inc1441 = add i64 %759, 1
  store i64 %inc1441, i64* %avail1440, align 8
  %stack1442 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %760 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1442, align 8
  %arrayidx1443 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %760, i64 %759
  %pointer1444 = bitcast %union.fail_stack_elt* %arrayidx1443 to i8**
  store i8* %758, i8** %pointer1444, align 8
  %avail1445 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %761 = load i64, i64* %avail1445, align 8
  %inc1446 = add i64 %761, 1
  store i64 %inc1446, i64* %avail1445, align 8
  %stack1447 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %762 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1447, align 8
  %arrayidx1448 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %762, i64 %761
  %integer1449 = bitcast %union.fail_stack_elt* %arrayidx1448 to i64*
  store i64 -1, i64* %integer1449, align 8
  br label %do.body.1450

do.body.1450:                                     ; preds = %while.end.1432
  %763 = load i32, i32* %mcnt, align 4
  %and1451 = and i32 %763, 255
  %conv1452 = trunc i32 %and1451 to i8
  %764 = load i8*, i8** %p21367, align 8
  %arrayidx1453 = getelementptr inbounds i8, i8* %764, i64 0
  store i8 %conv1452, i8* %arrayidx1453, align 1
  %765 = load i32, i32* %mcnt, align 4
  %shr1454 = ashr i32 %765, 8
  %conv1455 = trunc i32 %shr1454 to i8
  %766 = load i8*, i8** %p21367, align 8
  %arrayidx1456 = getelementptr inbounds i8, i8* %766, i64 1
  store i8 %conv1455, i8* %arrayidx1456, align 1
  br label %do.end.1458

do.end.1458:                                      ; preds = %do.body.1450
  br label %do.end.1460

do.end.1460:                                      ; preds = %do.end.1458
  br label %if.end.1462

if.else.1461:                                     ; preds = %sw.bb.1361
  br label %on_failure

if.end.1462:                                      ; preds = %do.end.1460
  br label %sw.epilog

sw.bb.1463:                                       ; preds = %if.end.464
  %767 = load i8*, i8** %p, align 8
  %add.ptr1464 = getelementptr inbounds i8, i8* %767, i64 2
  %call1465 = call i32 @extract_number(i8* %add.ptr1464)
  store i32 %call1465, i32* %mcnt, align 4
  %768 = load i32, i32* %mcnt, align 4
  %cmp1466 = icmp ne i32 %768, 0
  br i1 %cmp1466, label %if.then.1468, label %if.else.1562

if.then.1468:                                     ; preds = %sw.bb.1463
  %769 = load i8*, i8** %p, align 8
  %add.ptr1470 = getelementptr inbounds i8, i8* %769, i64 2
  store i8* %add.ptr1470, i8** %p21469, align 8
  %770 = load i32, i32* %mcnt, align 4
  %dec1471 = add nsw i32 %770, -1
  store i32 %dec1471, i32* %mcnt, align 4
  br label %do.body.1472

do.body.1472:                                     ; preds = %if.then.1468
  br label %while.cond.1475

while.cond.1475:                                  ; preds = %if.end.1532, %do.body.1472
  %size1476 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %771 = load i64, i64* %size1476, align 8
  %avail1477 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %772 = load i64, i64* %avail1477, align 8
  %sub1478 = sub i64 %771, %772
  %cmp1479 = icmp ule i64 %sub1478, 3
  br i1 %cmp1479, label %while.body.1481, label %while.end.1533

while.body.1481:                                  ; preds = %while.cond.1475
  %size1482 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %773 = load i64, i64* %size1482, align 8
  %mul1483 = mul i64 %773, 8
  %774 = load i64, i64* @re_max_failures, align 8
  %mul1484 = mul i64 %774, 20
  %cmp1485 = icmp uge i64 %mul1483, %mul1484
  br i1 %cmp1485, label %cond.true.1487, label %cond.false.1488

cond.true.1487:                                   ; preds = %while.body.1481
  br i1 false, label %if.end.1532, label %if.then.1531

cond.false.1488:                                  ; preds = %while.body.1481
  %775 = load i64, i64* @re_max_failures, align 8
  %mul1489 = mul i64 %775, 20
  %size1490 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %776 = load i64, i64* %size1490, align 8
  %mul1491 = mul i64 %776, 8
  %mul1492 = mul i64 %mul1491, 4
  %cmp1493 = icmp ult i64 %mul1489, %mul1492
  br i1 %cmp1493, label %cond.true.1495, label %cond.false.1497

cond.true.1495:                                   ; preds = %cond.false.1488
  %777 = load i64, i64* @re_max_failures, align 8
  %mul1496 = mul i64 %777, 20
  br label %cond.end.1501

cond.false.1497:                                  ; preds = %cond.false.1488
  %size1498 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %778 = load i64, i64* %size1498, align 8
  %mul1499 = mul i64 %778, 8
  %mul1500 = mul i64 %mul1499, 4
  br label %cond.end.1501

cond.end.1501:                                    ; preds = %cond.false.1497, %cond.true.1495
  %cond1502 = phi i64 [ %mul1496, %cond.true.1495 ], [ %mul1500, %cond.false.1497 ]
  %779 = alloca i8, i64 %cond1502
  store i8* %779, i8** %destination1473, align 8
  %780 = load i8*, i8** %destination1473, align 8
  %stack1503 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %781 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1503, align 8
  %782 = bitcast %union.fail_stack_elt* %781 to i8*
  %size1504 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %783 = load i64, i64* %size1504, align 8
  %mul1505 = mul i64 %783, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %780, i8* %782, i64 %mul1505, i32 1, i1 false)
  %784 = bitcast i8* %780 to %union.fail_stack_elt*
  %stack1506 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %784, %union.fail_stack_elt** %stack1506, align 8
  %stack1507 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %785 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1507, align 8
  %cmp1508 = icmp eq %union.fail_stack_elt* %785, null
  br i1 %cmp1508, label %cond.true.1510, label %cond.false.1511

cond.true.1510:                                   ; preds = %cond.end.1501
  br label %cond.end.1528

cond.false.1511:                                  ; preds = %cond.end.1501
  %786 = load i64, i64* @re_max_failures, align 8
  %mul1512 = mul i64 %786, 20
  %size1513 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %787 = load i64, i64* %size1513, align 8
  %mul1514 = mul i64 %787, 8
  %mul1515 = mul i64 %mul1514, 4
  %cmp1516 = icmp ult i64 %mul1512, %mul1515
  br i1 %cmp1516, label %cond.true.1518, label %cond.false.1520

cond.true.1518:                                   ; preds = %cond.false.1511
  %788 = load i64, i64* @re_max_failures, align 8
  %mul1519 = mul i64 %788, 20
  br label %cond.end.1524

cond.false.1520:                                  ; preds = %cond.false.1511
  %size1521 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %789 = load i64, i64* %size1521, align 8
  %mul1522 = mul i64 %789, 8
  %mul1523 = mul i64 %mul1522, 4
  br label %cond.end.1524

cond.end.1524:                                    ; preds = %cond.false.1520, %cond.true.1518
  %cond1525 = phi i64 [ %mul1519, %cond.true.1518 ], [ %mul1523, %cond.false.1520 ]
  %div1526 = udiv i64 %cond1525, 8
  %size1527 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 %div1526, i64* %size1527, align 8
  br label %cond.end.1528

cond.end.1528:                                    ; preds = %cond.end.1524, %cond.true.1510
  %cond1529 = phi i32 [ 0, %cond.true.1510 ], [ 1, %cond.end.1524 ]
  %tobool1530 = icmp ne i32 %cond1529, 0
  br i1 %tobool1530, label %if.end.1532, label %if.then.1531

if.then.1531:                                     ; preds = %cond.end.1528, %cond.true.1487
  store i64 -2, i64* %retval
  br label %return

if.end.1532:                                      ; preds = %cond.end.1528, %cond.true.1487
  br label %while.cond.1475

while.end.1533:                                   ; preds = %while.cond.1475
  %790 = load i8*, i8** %p21469, align 8
  %call1534 = call i32 @extract_number(i8* %790)
  store i32 %call1534, i32* %c1474, align 4
  %791 = load i32, i32* %c1474, align 4
  %conv1535 = sext i32 %791 to i64
  %avail1536 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %792 = load i64, i64* %avail1536, align 8
  %inc1537 = add i64 %792, 1
  store i64 %inc1537, i64* %avail1536, align 8
  %stack1538 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %793 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1538, align 8
  %arrayidx1539 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %793, i64 %792
  %integer1540 = bitcast %union.fail_stack_elt* %arrayidx1539 to i64*
  store i64 %conv1535, i64* %integer1540, align 8
  %794 = load i8*, i8** %p21469, align 8
  %avail1541 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %795 = load i64, i64* %avail1541, align 8
  %inc1542 = add i64 %795, 1
  store i64 %inc1542, i64* %avail1541, align 8
  %stack1543 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %796 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1543, align 8
  %arrayidx1544 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %796, i64 %795
  %pointer1545 = bitcast %union.fail_stack_elt* %arrayidx1544 to i8**
  store i8* %794, i8** %pointer1545, align 8
  %avail1546 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %797 = load i64, i64* %avail1546, align 8
  %inc1547 = add i64 %797, 1
  store i64 %inc1547, i64* %avail1546, align 8
  %stack1548 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %798 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1548, align 8
  %arrayidx1549 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %798, i64 %797
  %integer1550 = bitcast %union.fail_stack_elt* %arrayidx1549 to i64*
  store i64 -1, i64* %integer1550, align 8
  br label %do.body.1551

do.body.1551:                                     ; preds = %while.end.1533
  %799 = load i32, i32* %mcnt, align 4
  %and1552 = and i32 %799, 255
  %conv1553 = trunc i32 %and1552 to i8
  %800 = load i8*, i8** %p21469, align 8
  %arrayidx1554 = getelementptr inbounds i8, i8* %800, i64 0
  store i8 %conv1553, i8* %arrayidx1554, align 1
  %801 = load i32, i32* %mcnt, align 4
  %shr1555 = ashr i32 %801, 8
  %conv1556 = trunc i32 %shr1555 to i8
  %802 = load i8*, i8** %p21469, align 8
  %arrayidx1557 = getelementptr inbounds i8, i8* %802, i64 1
  store i8 %conv1556, i8* %arrayidx1557, align 1
  br label %do.end.1559

do.end.1559:                                      ; preds = %do.body.1551
  br label %do.end.1561

do.end.1561:                                      ; preds = %do.end.1559
  br label %unconditional_jump

if.else.1562:                                     ; preds = %sw.bb.1463
  %803 = load i8*, i8** %p, align 8
  %add.ptr1563 = getelementptr inbounds i8, i8* %803, i64 4
  store i8* %add.ptr1563, i8** %p, align 8
  br label %if.end.1564

if.end.1564:                                      ; preds = %if.else.1562
  br label %sw.epilog

sw.bb.1565:                                       ; preds = %if.end.464
  %call1567 = call i32 @extract_number_and_incr(i8** %p)
  store i32 %call1567, i32* %mcnt, align 4
  %804 = load i8*, i8** %p, align 8
  %805 = load i32, i32* %mcnt, align 4
  %idx.ext1568 = sext i32 %805 to i64
  %add.ptr1569 = getelementptr inbounds i8, i8* %804, i64 %idx.ext1568
  store i8* %add.ptr1569, i8** %p21566, align 8
  %call1570 = call i32 @extract_number_and_incr(i8** %p)
  store i32 %call1570, i32* %mcnt, align 4
  br label %do.body.1571

do.body.1571:                                     ; preds = %sw.bb.1565
  br label %while.cond.1574

while.cond.1574:                                  ; preds = %if.end.1631, %do.body.1571
  %size1575 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %806 = load i64, i64* %size1575, align 8
  %avail1576 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %807 = load i64, i64* %avail1576, align 8
  %sub1577 = sub i64 %806, %807
  %cmp1578 = icmp ule i64 %sub1577, 3
  br i1 %cmp1578, label %while.body.1580, label %while.end.1632

while.body.1580:                                  ; preds = %while.cond.1574
  %size1581 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %808 = load i64, i64* %size1581, align 8
  %mul1582 = mul i64 %808, 8
  %809 = load i64, i64* @re_max_failures, align 8
  %mul1583 = mul i64 %809, 20
  %cmp1584 = icmp uge i64 %mul1582, %mul1583
  br i1 %cmp1584, label %cond.true.1586, label %cond.false.1587

cond.true.1586:                                   ; preds = %while.body.1580
  br i1 false, label %if.end.1631, label %if.then.1630

cond.false.1587:                                  ; preds = %while.body.1580
  %810 = load i64, i64* @re_max_failures, align 8
  %mul1588 = mul i64 %810, 20
  %size1589 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %811 = load i64, i64* %size1589, align 8
  %mul1590 = mul i64 %811, 8
  %mul1591 = mul i64 %mul1590, 4
  %cmp1592 = icmp ult i64 %mul1588, %mul1591
  br i1 %cmp1592, label %cond.true.1594, label %cond.false.1596

cond.true.1594:                                   ; preds = %cond.false.1587
  %812 = load i64, i64* @re_max_failures, align 8
  %mul1595 = mul i64 %812, 20
  br label %cond.end.1600

cond.false.1596:                                  ; preds = %cond.false.1587
  %size1597 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %813 = load i64, i64* %size1597, align 8
  %mul1598 = mul i64 %813, 8
  %mul1599 = mul i64 %mul1598, 4
  br label %cond.end.1600

cond.end.1600:                                    ; preds = %cond.false.1596, %cond.true.1594
  %cond1601 = phi i64 [ %mul1595, %cond.true.1594 ], [ %mul1599, %cond.false.1596 ]
  %814 = alloca i8, i64 %cond1601
  store i8* %814, i8** %destination1572, align 8
  %815 = load i8*, i8** %destination1572, align 8
  %stack1602 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %816 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1602, align 8
  %817 = bitcast %union.fail_stack_elt* %816 to i8*
  %size1603 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %818 = load i64, i64* %size1603, align 8
  %mul1604 = mul i64 %818, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %815, i8* %817, i64 %mul1604, i32 1, i1 false)
  %819 = bitcast i8* %815 to %union.fail_stack_elt*
  %stack1605 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %819, %union.fail_stack_elt** %stack1605, align 8
  %stack1606 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %820 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1606, align 8
  %cmp1607 = icmp eq %union.fail_stack_elt* %820, null
  br i1 %cmp1607, label %cond.true.1609, label %cond.false.1610

cond.true.1609:                                   ; preds = %cond.end.1600
  br label %cond.end.1627

cond.false.1610:                                  ; preds = %cond.end.1600
  %821 = load i64, i64* @re_max_failures, align 8
  %mul1611 = mul i64 %821, 20
  %size1612 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %822 = load i64, i64* %size1612, align 8
  %mul1613 = mul i64 %822, 8
  %mul1614 = mul i64 %mul1613, 4
  %cmp1615 = icmp ult i64 %mul1611, %mul1614
  br i1 %cmp1615, label %cond.true.1617, label %cond.false.1619

cond.true.1617:                                   ; preds = %cond.false.1610
  %823 = load i64, i64* @re_max_failures, align 8
  %mul1618 = mul i64 %823, 20
  br label %cond.end.1623

cond.false.1619:                                  ; preds = %cond.false.1610
  %size1620 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %824 = load i64, i64* %size1620, align 8
  %mul1621 = mul i64 %824, 8
  %mul1622 = mul i64 %mul1621, 4
  br label %cond.end.1623

cond.end.1623:                                    ; preds = %cond.false.1619, %cond.true.1617
  %cond1624 = phi i64 [ %mul1618, %cond.true.1617 ], [ %mul1622, %cond.false.1619 ]
  %div1625 = udiv i64 %cond1624, 8
  %size1626 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 %div1625, i64* %size1626, align 8
  br label %cond.end.1627

cond.end.1627:                                    ; preds = %cond.end.1623, %cond.true.1609
  %cond1628 = phi i32 [ 0, %cond.true.1609 ], [ 1, %cond.end.1623 ]
  %tobool1629 = icmp ne i32 %cond1628, 0
  br i1 %tobool1629, label %if.end.1631, label %if.then.1630

if.then.1630:                                     ; preds = %cond.end.1627, %cond.true.1586
  store i64 -2, i64* %retval
  br label %return

if.end.1631:                                      ; preds = %cond.end.1627, %cond.true.1586
  br label %while.cond.1574

while.end.1632:                                   ; preds = %while.cond.1574
  %825 = load i8*, i8** %p21566, align 8
  %call1633 = call i32 @extract_number(i8* %825)
  store i32 %call1633, i32* %c1573, align 4
  %826 = load i32, i32* %c1573, align 4
  %conv1634 = sext i32 %826 to i64
  %avail1635 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %827 = load i64, i64* %avail1635, align 8
  %inc1636 = add i64 %827, 1
  store i64 %inc1636, i64* %avail1635, align 8
  %stack1637 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %828 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1637, align 8
  %arrayidx1638 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %828, i64 %827
  %integer1639 = bitcast %union.fail_stack_elt* %arrayidx1638 to i64*
  store i64 %conv1634, i64* %integer1639, align 8
  %829 = load i8*, i8** %p21566, align 8
  %avail1640 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %830 = load i64, i64* %avail1640, align 8
  %inc1641 = add i64 %830, 1
  store i64 %inc1641, i64* %avail1640, align 8
  %stack1642 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %831 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1642, align 8
  %arrayidx1643 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %831, i64 %830
  %pointer1644 = bitcast %union.fail_stack_elt* %arrayidx1643 to i8**
  store i8* %829, i8** %pointer1644, align 8
  %avail1645 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %832 = load i64, i64* %avail1645, align 8
  %inc1646 = add i64 %832, 1
  store i64 %inc1646, i64* %avail1645, align 8
  %stack1647 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %833 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1647, align 8
  %arrayidx1648 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %833, i64 %832
  %integer1649 = bitcast %union.fail_stack_elt* %arrayidx1648 to i64*
  store i64 -1, i64* %integer1649, align 8
  br label %do.body.1650

do.body.1650:                                     ; preds = %while.end.1632
  %834 = load i32, i32* %mcnt, align 4
  %and1651 = and i32 %834, 255
  %conv1652 = trunc i32 %and1651 to i8
  %835 = load i8*, i8** %p21566, align 8
  %arrayidx1653 = getelementptr inbounds i8, i8* %835, i64 0
  store i8 %conv1652, i8* %arrayidx1653, align 1
  %836 = load i32, i32* %mcnt, align 4
  %shr1654 = ashr i32 %836, 8
  %conv1655 = trunc i32 %shr1654 to i8
  %837 = load i8*, i8** %p21566, align 8
  %arrayidx1656 = getelementptr inbounds i8, i8* %837, i64 1
  store i8 %conv1655, i8* %arrayidx1656, align 1
  br label %do.end.1658

do.end.1658:                                      ; preds = %do.body.1650
  br label %do.end.1660

do.end.1660:                                      ; preds = %do.end.1658
  br label %sw.epilog

sw.bb.1661:                                       ; preds = %if.end.464, %if.end.464
  %838 = load i8*, i8** %p, align 8
  %add.ptr1663 = getelementptr inbounds i8, i8* %838, i64 -1
  %839 = load i8, i8* %add.ptr1663, align 1
  %conv1664 = zext i8 %839 to i32
  %cmp1665 = icmp eq i32 %conv1664, 25
  %conv1666 = zext i1 %cmp1665 to i32
  %conv1667 = trunc i32 %conv1666 to i8
  store i8 %conv1667, i8* %not1662, align 1
  %840 = load i8*, i8** %d, align 8
  %841 = load i64, i64* %size1.addr, align 8
  %tobool1668 = icmp ne i64 %841, 0
  br i1 %tobool1668, label %cond.true.1669, label %cond.false.1670

cond.true.1669:                                   ; preds = %sw.bb.1661
  %842 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.1671

cond.false.1670:                                  ; preds = %sw.bb.1661
  %843 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.1671

cond.end.1671:                                    ; preds = %cond.false.1670, %cond.true.1669
  %cond1672 = phi i8* [ %842, %cond.true.1669 ], [ %843, %cond.false.1670 ]
  %cmp1673 = icmp eq i8* %840, %cond1672
  br i1 %cmp1673, label %if.then.1680, label %lor.lhs.false.1675

lor.lhs.false.1675:                               ; preds = %cond.end.1671
  %844 = load i64, i64* %size2.addr, align 8
  %tobool1676 = icmp ne i64 %844, 0
  br i1 %tobool1676, label %lor.lhs.false.1677, label %if.then.1680

lor.lhs.false.1677:                               ; preds = %lor.lhs.false.1675
  %845 = load i8*, i8** %d, align 8
  %846 = load i8*, i8** %end2, align 8
  %cmp1678 = icmp eq i8* %845, %846
  br i1 %cmp1678, label %if.then.1680, label %if.else.1685

if.then.1680:                                     ; preds = %lor.lhs.false.1677, %lor.lhs.false.1675, %cond.end.1671
  %847 = load i8, i8* %not1662, align 1
  %tobool1681 = icmp ne i8 %847, 0
  %lnot1682 = xor i1 %tobool1681, true
  %lnot.ext1683 = zext i1 %lnot1682 to i32
  %conv1684 = trunc i32 %lnot.ext1683 to i8
  store i8 %conv1684, i8* %not1662, align 1
  br label %if.end.1724

if.else.1685:                                     ; preds = %lor.lhs.false.1677
  %848 = load i8*, i8** %d, align 8
  %849 = load i8*, i8** %string2.addr, align 8
  %cmp1687 = icmp eq i8* %848, %849
  br i1 %cmp1687, label %cond.true.1689, label %cond.false.1692

cond.true.1689:                                   ; preds = %if.else.1685
  %850 = load i8*, i8** %end1, align 8
  %add.ptr1690 = getelementptr inbounds i8, i8* %850, i64 -1
  %851 = load i8, i8* %add.ptr1690, align 1
  %conv1691 = zext i8 %851 to i32
  br label %cond.end.1695

cond.false.1692:                                  ; preds = %if.else.1685
  %852 = load i8*, i8** %d, align 8
  %add.ptr1693 = getelementptr inbounds i8, i8* %852, i64 -1
  %853 = load i8, i8* %add.ptr1693, align 1
  %conv1694 = zext i8 %853 to i32
  br label %cond.end.1695

cond.end.1695:                                    ; preds = %cond.false.1692, %cond.true.1689
  %cond1696 = phi i32 [ %conv1691, %cond.true.1689 ], [ %conv1694, %cond.false.1692 ]
  store i32 %cond1696, i32* %c11686, align 4
  %854 = load i32, i32* %c11686, align 4
  %idxprom1697 = sext i32 %854 to i64
  %arrayidx1698 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1697
  %855 = load i8, i8* %arrayidx1698, align 1
  %conv1699 = sext i8 %855 to i32
  store i32 %conv1699, i32* %s1, align 4
  %856 = load i8*, i8** %d, align 8
  %857 = load i8*, i8** %end1, align 8
  %cmp1700 = icmp eq i8* %856, %857
  br i1 %cmp1700, label %if.then.1702, label %if.end.1703

if.then.1702:                                     ; preds = %cond.end.1695
  %858 = load i8*, i8** %string2.addr, align 8
  store i8* %858, i8** %d, align 8
  %859 = load i8*, i8** %end_match_2, align 8
  store i8* %859, i8** %dend, align 8
  br label %if.end.1703

if.end.1703:                                      ; preds = %if.then.1702, %cond.end.1695
  %860 = load i8*, i8** %d, align 8
  %861 = load i8, i8* %860, align 1
  %conv1704 = zext i8 %861 to i32
  store i32 %conv1704, i32* %c2, align 4
  store i32 1, i32* %dummy, align 4
  %862 = load i32, i32* %c2, align 4
  %idxprom1705 = sext i32 %862 to i64
  %arrayidx1706 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1705
  %863 = load i8, i8* %arrayidx1706, align 1
  %conv1707 = sext i8 %863 to i32
  store i32 %conv1707, i32* %s2, align 4
  %864 = load i32, i32* %s1, align 4
  %cmp1708 = icmp eq i32 %864, 1
  %conv1709 = zext i1 %cmp1708 to i32
  %865 = load i32, i32* %s2, align 4
  %cmp1710 = icmp eq i32 %865, 1
  %conv1711 = zext i1 %cmp1710 to i32
  %cmp1712 = icmp ne i32 %conv1709, %conv1711
  br i1 %cmp1712, label %if.then.1718, label %lor.lhs.false.1714

lor.lhs.false.1714:                               ; preds = %if.end.1703
  %866 = load i32, i32* %s1, align 4
  %cmp1715 = icmp eq i32 %866, 1
  br i1 %cmp1715, label %land.lhs.true.1717, label %if.end.1723

land.lhs.true.1717:                               ; preds = %lor.lhs.false.1714
  br i1 false, label %if.then.1718, label %if.end.1723

if.then.1718:                                     ; preds = %land.lhs.true.1717, %if.end.1703
  %867 = load i8, i8* %not1662, align 1
  %tobool1719 = icmp ne i8 %867, 0
  %lnot1720 = xor i1 %tobool1719, true
  %lnot.ext1721 = zext i1 %lnot1720 to i32
  %conv1722 = trunc i32 %lnot.ext1721 to i8
  store i8 %conv1722, i8* %not1662, align 1
  br label %if.end.1723

if.end.1723:                                      ; preds = %if.then.1718, %land.lhs.true.1717, %lor.lhs.false.1714
  br label %if.end.1724

if.end.1724:                                      ; preds = %if.end.1723, %if.then.1680
  %868 = load i8, i8* %not1662, align 1
  %tobool1725 = icmp ne i8 %868, 0
  br i1 %tobool1725, label %if.then.1726, label %if.else.1727

if.then.1726:                                     ; preds = %if.end.1724
  br label %sw.epilog

if.else.1727:                                     ; preds = %if.end.1724
  br label %fail

sw.bb.1728:                                       ; preds = %if.end.464
  %869 = load i8*, i8** %d, align 8
  %870 = load i8*, i8** %end2, align 8
  %cmp1729 = icmp eq i8* %869, %870
  br i1 %cmp1729, label %if.then.1731, label %if.else.1732

if.then.1731:                                     ; preds = %sw.bb.1728
  br label %fail

if.else.1732:                                     ; preds = %sw.bb.1728
  br label %while.cond.1738

while.cond.1738:                                  ; preds = %if.end.1745, %if.else.1732
  %871 = load i8*, i8** %d, align 8
  %872 = load i8*, i8** %dend, align 8
  %cmp1739 = icmp eq i8* %871, %872
  br i1 %cmp1739, label %while.body.1741, label %while.end.1746

while.body.1741:                                  ; preds = %while.cond.1738
  %873 = load i8*, i8** %dend, align 8
  %874 = load i8*, i8** %end_match_2, align 8
  %cmp1742 = icmp eq i8* %873, %874
  br i1 %cmp1742, label %if.then.1744, label %if.end.1745

if.then.1744:                                     ; preds = %while.body.1741
  br label %fail

if.end.1745:                                      ; preds = %while.body.1741
  %875 = load i8*, i8** %string2.addr, align 8
  store i8* %875, i8** %d, align 8
  %876 = load i8*, i8** %end_match_2, align 8
  store i8* %876, i8** %dend, align 8
  br label %while.cond.1738

while.end.1746:                                   ; preds = %while.cond.1738
  %877 = load i8*, i8** %d, align 8
  %878 = load i8, i8* %877, align 1
  %conv1747 = zext i8 %878 to i32
  store i32 %conv1747, i32* %c21734, align 4
  store i32 1, i32* %dummy1737, align 4
  %879 = load i32, i32* %c21734, align 4
  %idxprom1748 = sext i32 %879 to i64
  %arrayidx1749 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1748
  %880 = load i8, i8* %arrayidx1749, align 1
  %conv1750 = sext i8 %880 to i32
  store i32 %conv1750, i32* %s21736, align 4
  %881 = load i32, i32* %s21736, align 4
  %cmp1751 = icmp ne i32 %881, 1
  br i1 %cmp1751, label %if.then.1753, label %if.end.1754

if.then.1753:                                     ; preds = %while.end.1746
  br label %fail

if.end.1754:                                      ; preds = %while.end.1746
  %882 = load i8*, i8** %d, align 8
  %883 = load i64, i64* %size1.addr, align 8
  %tobool1755 = icmp ne i64 %883, 0
  br i1 %tobool1755, label %cond.true.1756, label %cond.false.1757

cond.true.1756:                                   ; preds = %if.end.1754
  %884 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.1758

cond.false.1757:                                  ; preds = %if.end.1754
  %885 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.1758

cond.end.1758:                                    ; preds = %cond.false.1757, %cond.true.1756
  %cond1759 = phi i8* [ %884, %cond.true.1756 ], [ %885, %cond.false.1757 ]
  %cmp1760 = icmp eq i8* %882, %cond1759
  br i1 %cmp1760, label %if.end.1782, label %lor.lhs.false.1762

lor.lhs.false.1762:                               ; preds = %cond.end.1758
  %886 = load i64, i64* %size2.addr, align 8
  %tobool1763 = icmp ne i64 %886, 0
  br i1 %tobool1763, label %if.then.1764, label %if.end.1782

if.then.1764:                                     ; preds = %lor.lhs.false.1762
  %887 = load i8*, i8** %d, align 8
  %888 = load i8*, i8** %string2.addr, align 8
  %cmp1765 = icmp eq i8* %887, %888
  br i1 %cmp1765, label %cond.true.1767, label %cond.false.1770

cond.true.1767:                                   ; preds = %if.then.1764
  %889 = load i8*, i8** %end1, align 8
  %add.ptr1768 = getelementptr inbounds i8, i8* %889, i64 -1
  %890 = load i8, i8* %add.ptr1768, align 1
  %conv1769 = zext i8 %890 to i32
  br label %cond.end.1773

cond.false.1770:                                  ; preds = %if.then.1764
  %891 = load i8*, i8** %d, align 8
  %add.ptr1771 = getelementptr inbounds i8, i8* %891, i64 -1
  %892 = load i8, i8* %add.ptr1771, align 1
  %conv1772 = zext i8 %892 to i32
  br label %cond.end.1773

cond.end.1773:                                    ; preds = %cond.false.1770, %cond.true.1767
  %cond1774 = phi i32 [ %conv1769, %cond.true.1767 ], [ %conv1772, %cond.false.1770 ]
  store i32 %cond1774, i32* %c11733, align 4
  %893 = load i32, i32* %c11733, align 4
  %idxprom1775 = sext i32 %893 to i64
  %arrayidx1776 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1775
  %894 = load i8, i8* %arrayidx1776, align 1
  %conv1777 = sext i8 %894 to i32
  store i32 %conv1777, i32* %s11735, align 4
  %895 = load i32, i32* %s11735, align 4
  %cmp1778 = icmp eq i32 %895, 1
  br i1 %cmp1778, label %if.then.1780, label %if.end.1781

if.then.1780:                                     ; preds = %cond.end.1773
  br label %fail

if.end.1781:                                      ; preds = %cond.end.1773
  br label %if.end.1782

if.end.1782:                                      ; preds = %if.end.1781, %lor.lhs.false.1762, %cond.end.1758
  br label %if.end.1783

if.end.1783:                                      ; preds = %if.end.1782
  br label %sw.epilog

sw.bb.1784:                                       ; preds = %if.end.464
  %896 = load i8*, i8** %d, align 8
  %897 = load i64, i64* %size1.addr, align 8
  %tobool1785 = icmp ne i64 %897, 0
  br i1 %tobool1785, label %cond.true.1786, label %cond.false.1787

cond.true.1786:                                   ; preds = %sw.bb.1784
  %898 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.1788

cond.false.1787:                                  ; preds = %sw.bb.1784
  %899 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.1788

cond.end.1788:                                    ; preds = %cond.false.1787, %cond.true.1786
  %cond1789 = phi i8* [ %898, %cond.true.1786 ], [ %899, %cond.false.1787 ]
  %cmp1790 = icmp eq i8* %896, %cond1789
  br i1 %cmp1790, label %if.then.1794, label %lor.lhs.false.1792

lor.lhs.false.1792:                               ; preds = %cond.end.1788
  %900 = load i64, i64* %size2.addr, align 8
  %tobool1793 = icmp ne i64 %900, 0
  br i1 %tobool1793, label %if.else.1795, label %if.then.1794

if.then.1794:                                     ; preds = %lor.lhs.false.1792, %cond.end.1788
  br label %fail

if.else.1795:                                     ; preds = %lor.lhs.false.1792
  %901 = load i8*, i8** %d, align 8
  %902 = load i8*, i8** %string2.addr, align 8
  %cmp1801 = icmp eq i8* %901, %902
  br i1 %cmp1801, label %cond.true.1803, label %cond.false.1806

cond.true.1803:                                   ; preds = %if.else.1795
  %903 = load i8*, i8** %end1, align 8
  %add.ptr1804 = getelementptr inbounds i8, i8* %903, i64 -1
  %904 = load i8, i8* %add.ptr1804, align 1
  %conv1805 = zext i8 %904 to i32
  br label %cond.end.1809

cond.false.1806:                                  ; preds = %if.else.1795
  %905 = load i8*, i8** %d, align 8
  %add.ptr1807 = getelementptr inbounds i8, i8* %905, i64 -1
  %906 = load i8, i8* %add.ptr1807, align 1
  %conv1808 = zext i8 %906 to i32
  br label %cond.end.1809

cond.end.1809:                                    ; preds = %cond.false.1806, %cond.true.1803
  %cond1810 = phi i32 [ %conv1805, %cond.true.1803 ], [ %conv1808, %cond.false.1806 ]
  store i32 %cond1810, i32* %c11796, align 4
  %907 = load i32, i32* %c11796, align 4
  %idxprom1811 = sext i32 %907 to i64
  %arrayidx1812 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1811
  %908 = load i8, i8* %arrayidx1812, align 1
  %conv1813 = sext i8 %908 to i32
  store i32 %conv1813, i32* %s11798, align 4
  %909 = load i32, i32* %s11798, align 4
  %cmp1814 = icmp ne i32 %909, 1
  br i1 %cmp1814, label %if.then.1816, label %if.end.1817

if.then.1816:                                     ; preds = %cond.end.1809
  br label %fail

if.end.1817:                                      ; preds = %cond.end.1809
  %910 = load i8*, i8** %d, align 8
  %911 = load i8*, i8** %end2, align 8
  %cmp1818 = icmp eq i8* %910, %911
  br i1 %cmp1818, label %if.end.1833, label %if.then.1820

if.then.1820:                                     ; preds = %if.end.1817
  %912 = load i8*, i8** %d, align 8
  %913 = load i8*, i8** %end1, align 8
  %cmp1821 = icmp eq i8* %912, %913
  br i1 %cmp1821, label %if.then.1823, label %if.end.1824

if.then.1823:                                     ; preds = %if.then.1820
  %914 = load i8*, i8** %string2.addr, align 8
  store i8* %914, i8** %d, align 8
  %915 = load i8*, i8** %end_match_2, align 8
  store i8* %915, i8** %dend, align 8
  br label %if.end.1824

if.end.1824:                                      ; preds = %if.then.1823, %if.then.1820
  %916 = load i8*, i8** %d, align 8
  %917 = load i8, i8* %916, align 1
  %conv1825 = zext i8 %917 to i32
  store i32 %conv1825, i32* %c21797, align 4
  store i32 1, i32* %dummy1800, align 4
  %918 = load i32, i32* %c21797, align 4
  %idxprom1826 = sext i32 %918 to i64
  %arrayidx1827 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1826
  %919 = load i8, i8* %arrayidx1827, align 1
  %conv1828 = sext i8 %919 to i32
  store i32 %conv1828, i32* %s21799, align 4
  %920 = load i32, i32* %s21799, align 4
  %cmp1829 = icmp eq i32 %920, 1
  br i1 %cmp1829, label %if.then.1831, label %if.end.1832

if.then.1831:                                     ; preds = %if.end.1824
  br label %fail

if.end.1832:                                      ; preds = %if.end.1824
  br label %if.end.1833

if.end.1833:                                      ; preds = %if.end.1832, %if.end.1817
  br label %if.end.1834

if.end.1834:                                      ; preds = %if.end.1833
  br label %sw.epilog

sw.bb.1835:                                       ; preds = %if.end.464
  %921 = load i8*, i8** %d, align 8
  %922 = load i8*, i8** %end2, align 8
  %cmp1836 = icmp eq i8* %921, %922
  br i1 %cmp1836, label %if.then.1838, label %if.else.1839

if.then.1838:                                     ; preds = %sw.bb.1835
  br label %fail

if.else.1839:                                     ; preds = %sw.bb.1835
  br label %while.cond.1844

while.cond.1844:                                  ; preds = %if.end.1851, %if.else.1839
  %923 = load i8*, i8** %d, align 8
  %924 = load i8*, i8** %dend, align 8
  %cmp1845 = icmp eq i8* %923, %924
  br i1 %cmp1845, label %while.body.1847, label %while.end.1852

while.body.1847:                                  ; preds = %while.cond.1844
  %925 = load i8*, i8** %dend, align 8
  %926 = load i8*, i8** %end_match_2, align 8
  %cmp1848 = icmp eq i8* %925, %926
  br i1 %cmp1848, label %if.then.1850, label %if.end.1851

if.then.1850:                                     ; preds = %while.body.1847
  br label %fail

if.end.1851:                                      ; preds = %while.body.1847
  %927 = load i8*, i8** %string2.addr, align 8
  store i8* %927, i8** %d, align 8
  %928 = load i8*, i8** %end_match_2, align 8
  store i8* %928, i8** %dend, align 8
  br label %while.cond.1844

while.end.1852:                                   ; preds = %while.cond.1844
  %929 = load i8*, i8** %d, align 8
  %930 = load i8, i8* %929, align 1
  %conv1853 = zext i8 %930 to i32
  store i32 %conv1853, i32* %c21841, align 4
  %931 = load i32, i32* %c21841, align 4
  %idxprom1854 = sext i32 %931 to i64
  %arrayidx1855 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1854
  %932 = load i8, i8* %arrayidx1855, align 1
  %conv1856 = sext i8 %932 to i32
  store i32 %conv1856, i32* %s21843, align 4
  %933 = load i32, i32* %s21843, align 4
  %cmp1857 = icmp ne i32 %933, 1
  br i1 %cmp1857, label %land.lhs.true.1859, label %if.end.1863

land.lhs.true.1859:                               ; preds = %while.end.1852
  %934 = load i32, i32* %s21843, align 4
  %cmp1860 = icmp ne i32 %934, 2
  br i1 %cmp1860, label %if.then.1862, label %if.end.1863

if.then.1862:                                     ; preds = %land.lhs.true.1859
  br label %fail

if.end.1863:                                      ; preds = %land.lhs.true.1859, %while.end.1852
  %935 = load i8*, i8** %d, align 8
  %936 = load i64, i64* %size1.addr, align 8
  %tobool1864 = icmp ne i64 %936, 0
  br i1 %tobool1864, label %cond.true.1865, label %cond.false.1866

cond.true.1865:                                   ; preds = %if.end.1863
  %937 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.1867

cond.false.1866:                                  ; preds = %if.end.1863
  %938 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.1867

cond.end.1867:                                    ; preds = %cond.false.1866, %cond.true.1865
  %cond1868 = phi i8* [ %937, %cond.true.1865 ], [ %938, %cond.false.1866 ]
  %cmp1869 = icmp eq i8* %935, %cond1868
  br i1 %cmp1869, label %if.end.1894, label %lor.lhs.false.1871

lor.lhs.false.1871:                               ; preds = %cond.end.1867
  %939 = load i64, i64* %size2.addr, align 8
  %tobool1872 = icmp ne i64 %939, 0
  br i1 %tobool1872, label %if.then.1873, label %if.end.1894

if.then.1873:                                     ; preds = %lor.lhs.false.1871
  %940 = load i8*, i8** %d, align 8
  %941 = load i8*, i8** %string2.addr, align 8
  %cmp1874 = icmp eq i8* %940, %941
  br i1 %cmp1874, label %cond.true.1876, label %cond.false.1879

cond.true.1876:                                   ; preds = %if.then.1873
  %942 = load i8*, i8** %end1, align 8
  %add.ptr1877 = getelementptr inbounds i8, i8* %942, i64 -1
  %943 = load i8, i8* %add.ptr1877, align 1
  %conv1878 = zext i8 %943 to i32
  br label %cond.end.1882

cond.false.1879:                                  ; preds = %if.then.1873
  %944 = load i8*, i8** %d, align 8
  %add.ptr1880 = getelementptr inbounds i8, i8* %944, i64 -1
  %945 = load i8, i8* %add.ptr1880, align 1
  %conv1881 = zext i8 %945 to i32
  br label %cond.end.1882

cond.end.1882:                                    ; preds = %cond.false.1879, %cond.true.1876
  %cond1883 = phi i32 [ %conv1878, %cond.true.1876 ], [ %conv1881, %cond.false.1879 ]
  store i32 %cond1883, i32* %c11840, align 4
  %946 = load i32, i32* %c11840, align 4
  %idxprom1884 = sext i32 %946 to i64
  %arrayidx1885 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1884
  %947 = load i8, i8* %arrayidx1885, align 1
  %conv1886 = sext i8 %947 to i32
  store i32 %conv1886, i32* %s11842, align 4
  %948 = load i32, i32* %s11842, align 4
  %cmp1887 = icmp eq i32 %948, 1
  br i1 %cmp1887, label %if.then.1892, label %lor.lhs.false.1889

lor.lhs.false.1889:                               ; preds = %cond.end.1882
  %949 = load i32, i32* %s11842, align 4
  %cmp1890 = icmp eq i32 %949, 2
  br i1 %cmp1890, label %if.then.1892, label %if.end.1893

if.then.1892:                                     ; preds = %lor.lhs.false.1889, %cond.end.1882
  br label %fail

if.end.1893:                                      ; preds = %lor.lhs.false.1889
  br label %if.end.1894

if.end.1894:                                      ; preds = %if.end.1893, %lor.lhs.false.1871, %cond.end.1867
  br label %if.end.1895

if.end.1895:                                      ; preds = %if.end.1894
  br label %sw.epilog

sw.bb.1896:                                       ; preds = %if.end.464
  %950 = load i8*, i8** %d, align 8
  %951 = load i64, i64* %size1.addr, align 8
  %tobool1897 = icmp ne i64 %951, 0
  br i1 %tobool1897, label %cond.true.1898, label %cond.false.1899

cond.true.1898:                                   ; preds = %sw.bb.1896
  %952 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.1900

cond.false.1899:                                  ; preds = %sw.bb.1896
  %953 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.1900

cond.end.1900:                                    ; preds = %cond.false.1899, %cond.true.1898
  %cond1901 = phi i8* [ %952, %cond.true.1898 ], [ %953, %cond.false.1899 ]
  %cmp1902 = icmp eq i8* %950, %cond1901
  br i1 %cmp1902, label %if.then.1906, label %lor.lhs.false.1904

lor.lhs.false.1904:                               ; preds = %cond.end.1900
  %954 = load i64, i64* %size2.addr, align 8
  %tobool1905 = icmp ne i64 %954, 0
  br i1 %tobool1905, label %if.else.1907, label %if.then.1906

if.then.1906:                                     ; preds = %lor.lhs.false.1904, %cond.end.1900
  br label %fail

if.else.1907:                                     ; preds = %lor.lhs.false.1904
  %955 = load i8*, i8** %d, align 8
  %956 = load i8*, i8** %string2.addr, align 8
  %cmp1912 = icmp eq i8* %955, %956
  br i1 %cmp1912, label %cond.true.1914, label %cond.false.1917

cond.true.1914:                                   ; preds = %if.else.1907
  %957 = load i8*, i8** %end1, align 8
  %add.ptr1915 = getelementptr inbounds i8, i8* %957, i64 -1
  %958 = load i8, i8* %add.ptr1915, align 1
  %conv1916 = zext i8 %958 to i32
  br label %cond.end.1920

cond.false.1917:                                  ; preds = %if.else.1907
  %959 = load i8*, i8** %d, align 8
  %add.ptr1918 = getelementptr inbounds i8, i8* %959, i64 -1
  %960 = load i8, i8* %add.ptr1918, align 1
  %conv1919 = zext i8 %960 to i32
  br label %cond.end.1920

cond.end.1920:                                    ; preds = %cond.false.1917, %cond.true.1914
  %cond1921 = phi i32 [ %conv1916, %cond.true.1914 ], [ %conv1919, %cond.false.1917 ]
  store i32 %cond1921, i32* %c11908, align 4
  %961 = load i32, i32* %c11908, align 4
  %idxprom1922 = sext i32 %961 to i64
  %arrayidx1923 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1922
  %962 = load i8, i8* %arrayidx1923, align 1
  %conv1924 = sext i8 %962 to i32
  store i32 %conv1924, i32* %s11910, align 4
  %963 = load i32, i32* %s11910, align 4
  %cmp1925 = icmp ne i32 %963, 1
  br i1 %cmp1925, label %land.lhs.true.1927, label %if.end.1931

land.lhs.true.1927:                               ; preds = %cond.end.1920
  %964 = load i32, i32* %s11910, align 4
  %cmp1928 = icmp ne i32 %964, 2
  br i1 %cmp1928, label %if.then.1930, label %if.end.1931

if.then.1930:                                     ; preds = %land.lhs.true.1927
  br label %fail

if.end.1931:                                      ; preds = %land.lhs.true.1927, %cond.end.1920
  %965 = load i8*, i8** %d, align 8
  %966 = load i8*, i8** %end2, align 8
  %cmp1932 = icmp eq i8* %965, %966
  br i1 %cmp1932, label %if.end.1950, label %if.then.1934

if.then.1934:                                     ; preds = %if.end.1931
  %967 = load i8*, i8** %d, align 8
  %968 = load i8*, i8** %end1, align 8
  %cmp1935 = icmp eq i8* %967, %968
  br i1 %cmp1935, label %if.then.1937, label %if.end.1938

if.then.1937:                                     ; preds = %if.then.1934
  %969 = load i8*, i8** %string2.addr, align 8
  store i8* %969, i8** %d, align 8
  %970 = load i8*, i8** %end_match_2, align 8
  store i8* %970, i8** %dend, align 8
  br label %if.end.1938

if.end.1938:                                      ; preds = %if.then.1937, %if.then.1934
  %971 = load i8*, i8** %d, align 8
  %972 = load i8, i8* %971, align 1
  %conv1939 = zext i8 %972 to i32
  store i32 %conv1939, i32* %c21909, align 4
  %973 = load i32, i32* %c21909, align 4
  %idxprom1940 = sext i32 %973 to i64
  %arrayidx1941 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1940
  %974 = load i8, i8* %arrayidx1941, align 1
  %conv1942 = sext i8 %974 to i32
  store i32 %conv1942, i32* %s21911, align 4
  %975 = load i32, i32* %s21911, align 4
  %cmp1943 = icmp eq i32 %975, 1
  br i1 %cmp1943, label %if.then.1948, label %lor.lhs.false.1945

lor.lhs.false.1945:                               ; preds = %if.end.1938
  %976 = load i32, i32* %s21911, align 4
  %cmp1946 = icmp eq i32 %976, 2
  br i1 %cmp1946, label %if.then.1948, label %if.end.1949

if.then.1948:                                     ; preds = %lor.lhs.false.1945, %if.end.1938
  br label %fail

if.end.1949:                                      ; preds = %lor.lhs.false.1945
  br label %if.end.1950

if.end.1950:                                      ; preds = %if.end.1949, %if.end.1931
  br label %if.end.1951

if.end.1951:                                      ; preds = %if.end.1950
  br label %sw.epilog

sw.bb.1952:                                       ; preds = %if.end.464, %if.end.464
  %977 = load i8*, i8** %p, align 8
  %add.ptr1954 = getelementptr inbounds i8, i8* %977, i64 -1
  %978 = load i8, i8* %add.ptr1954, align 1
  %conv1955 = zext i8 %978 to i32
  %cmp1956 = icmp eq i32 %conv1955, 29
  %conv1957 = zext i1 %cmp1956 to i32
  %conv1958 = trunc i32 %conv1957 to i8
  store i8 %conv1958, i8* %not1953, align 1
  %979 = load i8*, i8** %p, align 8
  %incdec.ptr1959 = getelementptr inbounds i8, i8* %979, i32 1
  store i8* %incdec.ptr1959, i8** %p, align 8
  %980 = load i8, i8* %979, align 1
  %conv1960 = zext i8 %980 to i32
  store i32 %conv1960, i32* %mcnt, align 4
  br label %while.cond.1961

while.cond.1961:                                  ; preds = %if.end.1968, %sw.bb.1952
  %981 = load i8*, i8** %d, align 8
  %982 = load i8*, i8** %dend, align 8
  %cmp1962 = icmp eq i8* %981, %982
  br i1 %cmp1962, label %while.body.1964, label %while.end.1969

while.body.1964:                                  ; preds = %while.cond.1961
  %983 = load i8*, i8** %dend, align 8
  %984 = load i8*, i8** %end_match_2, align 8
  %cmp1965 = icmp eq i8* %983, %984
  br i1 %cmp1965, label %if.then.1967, label %if.end.1968

if.then.1967:                                     ; preds = %while.body.1964
  br label %fail

if.end.1968:                                      ; preds = %while.body.1964
  %985 = load i8*, i8** %string2.addr, align 8
  store i8* %985, i8** %d, align 8
  %986 = load i8*, i8** %end_match_2, align 8
  store i8* %986, i8** %dend, align 8
  br label %while.cond.1961

while.end.1969:                                   ; preds = %while.cond.1961
  %987 = load i8*, i8** %d, align 8
  %988 = load i8, i8* %987, align 1
  %conv1972 = zext i8 %988 to i32
  store i32 %conv1972, i32* %c1971, align 4
  store i32 1, i32* %len1970, align 4
  %989 = load i32, i32* %c1971, align 4
  %idxprom1973 = sext i32 %989 to i64
  %arrayidx1974 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom1973
  %990 = load i8, i8* %arrayidx1974, align 1
  %conv1975 = sext i8 %990 to i32
  %991 = load i32, i32* %mcnt, align 4
  %cmp1976 = icmp ne i32 %conv1975, %991
  %conv1977 = zext i1 %cmp1976 to i32
  %992 = load i8, i8* %not1953, align 1
  %conv1978 = sext i8 %992 to i32
  %xor = xor i32 %conv1977, %conv1978
  %tobool1979 = icmp ne i32 %xor, 0
  br i1 %tobool1979, label %if.then.1980, label %if.end.1981

if.then.1980:                                     ; preds = %while.end.1969
  br label %fail

if.end.1981:                                      ; preds = %while.end.1969
  %993 = load i32, i32* %len1970, align 4
  %994 = load i8*, i8** %d, align 8
  %idx.ext1982 = sext i32 %993 to i64
  %add.ptr1983 = getelementptr inbounds i8, i8* %994, i64 %idx.ext1982
  store i8* %add.ptr1983, i8** %d, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.464
  call void @abort() #9
  unreachable

sw.epilog:                                        ; preds = %if.end.1981, %if.end.1951, %if.end.1895, %if.end.1834, %if.end.1783, %if.then.1726, %do.end.1660, %if.end.1564, %if.end.1462, %unconditional_jump, %if.end.1356, %do.end.1331, %if.end.1247, %if.end.1116, %do.end.992, %if.then.907, %if.then.902, %if.then.889, %if.then.879, %if.then.867, %if.then.851, %for.end.834, %sw.bb.722, %do.end.716, %if.end.635, %if.end.545, %if.end.513, %sw.bb
  br label %for.cond.93

fail:                                             ; preds = %sw.bb.2148, %if.then.1980, %if.then.1967, %if.then.1948, %if.then.1930, %if.then.1906, %if.then.1892, %if.then.1862, %if.then.1850, %if.then.1838, %if.then.1831, %if.then.1816, %if.then.1794, %if.then.1780, %if.then.1753, %if.then.1744, %if.then.1731, %if.else.1727, %if.end.908, %if.end.903, %if.end.891, %if.end.869, %if.then.830, %if.then.807, %if.then.738, %if.then.634, %if.then.575, %if.then.544, %if.then.521, %if.then.507, %if.then.498, %if.then.485, %if.then.477, %if.end.151
  %frame1984 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %995 = load i64, i64* %frame1984, align 8
  %cmp1985 = icmp eq i64 %995, 0
  br i1 %cmp1985, label %if.else.2158, label %if.then.1987

if.then.1987:                                     ; preds = %fail
  br label %do.body.1988

do.body.1988:                                     ; preds = %if.then.1987
  br label %while.cond.1989

while.cond.1989:                                  ; preds = %do.end.2038, %do.body.1988
  %frame1990 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %996 = load i64, i64* %frame1990, align 8
  %avail1991 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %997 = load i64, i64* %avail1991, align 8
  %cmp1992 = icmp ult i64 %996, %997
  br i1 %cmp1992, label %while.body.1994, label %while.end.2039

while.body.1994:                                  ; preds = %while.cond.1989
  br label %do.body.1995

do.body.1995:                                     ; preds = %while.body.1994
  %avail1996 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %998 = load i64, i64* %avail1996, align 8
  %dec1997 = add i64 %998, -1
  store i64 %dec1997, i64* %avail1996, align 8
  %stack1998 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %999 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1998, align 8
  %arrayidx1999 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %999, i64 %dec1997
  %integer2000 = bitcast %union.fail_stack_elt* %arrayidx1999 to i64*
  %1000 = load i64, i64* %integer2000, align 8
  store i64 %1000, i64* %pfreg, align 8
  %1001 = load i64, i64* %pfreg, align 8
  %cmp2001 = icmp eq i64 %1001, -1
  br i1 %cmp2001, label %if.then.2003, label %if.else.2023

if.then.2003:                                     ; preds = %do.body.1995
  %avail2004 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1002 = load i64, i64* %avail2004, align 8
  %dec2005 = add i64 %1002, -1
  store i64 %dec2005, i64* %avail2004, align 8
  %stack2006 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1003 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2006, align 8
  %arrayidx2007 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1003, i64 %dec2005
  %pointer2008 = bitcast %union.fail_stack_elt* %arrayidx2007 to i8**
  %1004 = load i8*, i8** %pointer2008, align 8
  store i8* %1004, i8** %ptr, align 8
  %avail2009 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1005 = load i64, i64* %avail2009, align 8
  %dec2010 = add i64 %1005, -1
  store i64 %dec2010, i64* %avail2009, align 8
  %stack2011 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1006 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2011, align 8
  %arrayidx2012 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1006, i64 %dec2010
  %integer2013 = bitcast %union.fail_stack_elt* %arrayidx2012 to i64*
  %1007 = load i64, i64* %integer2013, align 8
  store i64 %1007, i64* %pfreg, align 8
  br label %do.body.2014

do.body.2014:                                     ; preds = %if.then.2003
  %1008 = load i64, i64* %pfreg, align 8
  %and2015 = and i64 %1008, 255
  %conv2016 = trunc i64 %and2015 to i8
  %1009 = load i8*, i8** %ptr, align 8
  %arrayidx2017 = getelementptr inbounds i8, i8* %1009, i64 0
  store i8 %conv2016, i8* %arrayidx2017, align 1
  %1010 = load i64, i64* %pfreg, align 8
  %shr2018 = ashr i64 %1010, 8
  %conv2019 = trunc i64 %shr2018 to i8
  %1011 = load i8*, i8** %ptr, align 8
  %arrayidx2020 = getelementptr inbounds i8, i8* %1011, i64 1
  store i8 %conv2019, i8* %arrayidx2020, align 1
  br label %do.end.2022

do.end.2022:                                      ; preds = %do.body.2014
  br label %if.end.2036

if.else.2023:                                     ; preds = %do.body.1995
  %avail2024 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1012 = load i64, i64* %avail2024, align 8
  %dec2025 = add i64 %1012, -1
  store i64 %dec2025, i64* %avail2024, align 8
  %stack2026 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1013 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2026, align 8
  %arrayidx2027 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1013, i64 %dec2025
  %pointer2028 = bitcast %union.fail_stack_elt* %arrayidx2027 to i8**
  %1014 = load i8*, i8** %pointer2028, align 8
  %1015 = load i64, i64* %pfreg, align 8
  %1016 = load i8**, i8*** %regend, align 8
  %arrayidx2029 = getelementptr inbounds i8*, i8** %1016, i64 %1015
  store i8* %1014, i8** %arrayidx2029, align 8
  %avail2030 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1017 = load i64, i64* %avail2030, align 8
  %dec2031 = add i64 %1017, -1
  store i64 %dec2031, i64* %avail2030, align 8
  %stack2032 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1018 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2032, align 8
  %arrayidx2033 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1018, i64 %dec2031
  %pointer2034 = bitcast %union.fail_stack_elt* %arrayidx2033 to i8**
  %1019 = load i8*, i8** %pointer2034, align 8
  %1020 = load i64, i64* %pfreg, align 8
  %1021 = load i8**, i8*** %regstart, align 8
  %arrayidx2035 = getelementptr inbounds i8*, i8** %1021, i64 %1020
  store i8* %1019, i8** %arrayidx2035, align 8
  br label %if.end.2036

if.end.2036:                                      ; preds = %if.else.2023, %do.end.2022
  br label %do.end.2038

do.end.2038:                                      ; preds = %if.end.2036
  br label %while.cond.1989

while.end.2039:                                   ; preds = %while.cond.1989
  %avail2040 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1022 = load i64, i64* %avail2040, align 8
  %dec2041 = add i64 %1022, -1
  store i64 %dec2041, i64* %avail2040, align 8
  %stack2042 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1023 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2042, align 8
  %arrayidx2043 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1023, i64 %dec2041
  %pointer2044 = bitcast %union.fail_stack_elt* %arrayidx2043 to i8**
  %1024 = load i8*, i8** %pointer2044, align 8
  store i8* %1024, i8** %pat, align 8
  %avail2045 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1025 = load i64, i64* %avail2045, align 8
  %dec2046 = add i64 %1025, -1
  store i64 %dec2046, i64* %avail2045, align 8
  %stack2047 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1026 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2047, align 8
  %arrayidx2048 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1026, i64 %dec2046
  %pointer2049 = bitcast %union.fail_stack_elt* %arrayidx2048 to i8**
  %1027 = load i8*, i8** %pointer2049, align 8
  store i8* %1027, i8** %str, align 8
  %avail2050 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1028 = load i64, i64* %avail2050, align 8
  %dec2051 = add i64 %1028, -1
  store i64 %dec2051, i64* %avail2050, align 8
  %stack2052 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1029 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2052, align 8
  %arrayidx2053 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1029, i64 %dec2051
  %integer2054 = bitcast %union.fail_stack_elt* %arrayidx2053 to i64*
  %1030 = load i64, i64* %integer2054, align 8
  %frame2055 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  store i64 %1030, i64* %frame2055, align 8
  br label %do.end.2057

do.end.2057:                                      ; preds = %while.end.2039
  %1031 = load i8*, i8** %pat, align 8
  %incdec.ptr2058 = getelementptr inbounds i8, i8* %1031, i32 1
  store i8* %incdec.ptr2058, i8** %pat, align 8
  %1032 = load i8, i8* %1031, align 1
  %conv2059 = zext i8 %1032 to i32
  switch i32 %conv2059, label %sw.default.2149 [
    i32 15, label %sw.bb.2060
    i32 17, label %sw.bb.2061
    i32 16, label %sw.bb.2144
    i32 14, label %sw.bb.2144
    i32 19, label %sw.bb.2144
    i32 0, label %sw.bb.2148
  ]

sw.bb.2060:                                       ; preds = %do.end.2057
  br label %continue_failure_jump

sw.bb.2061:                                       ; preds = %do.end.2057
  br label %do.body.2062

do.body.2062:                                     ; preds = %sw.bb.2061
  br label %while.cond.2064

while.cond.2064:                                  ; preds = %if.end.2121, %do.body.2062
  %size2065 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1033 = load i64, i64* %size2065, align 8
  %avail2066 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1034 = load i64, i64* %avail2066, align 8
  %sub2067 = sub i64 %1033, %1034
  %cmp2068 = icmp ule i64 %sub2067, 3
  br i1 %cmp2068, label %while.body.2070, label %while.end.2122

while.body.2070:                                  ; preds = %while.cond.2064
  %size2071 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1035 = load i64, i64* %size2071, align 8
  %mul2072 = mul i64 %1035, 8
  %1036 = load i64, i64* @re_max_failures, align 8
  %mul2073 = mul i64 %1036, 20
  %cmp2074 = icmp uge i64 %mul2072, %mul2073
  br i1 %cmp2074, label %cond.true.2076, label %cond.false.2077

cond.true.2076:                                   ; preds = %while.body.2070
  br i1 false, label %if.end.2121, label %if.then.2120

cond.false.2077:                                  ; preds = %while.body.2070
  %1037 = load i64, i64* @re_max_failures, align 8
  %mul2078 = mul i64 %1037, 20
  %size2079 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1038 = load i64, i64* %size2079, align 8
  %mul2080 = mul i64 %1038, 8
  %mul2081 = mul i64 %mul2080, 4
  %cmp2082 = icmp ult i64 %mul2078, %mul2081
  br i1 %cmp2082, label %cond.true.2084, label %cond.false.2086

cond.true.2084:                                   ; preds = %cond.false.2077
  %1039 = load i64, i64* @re_max_failures, align 8
  %mul2085 = mul i64 %1039, 20
  br label %cond.end.2090

cond.false.2086:                                  ; preds = %cond.false.2077
  %size2087 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1040 = load i64, i64* %size2087, align 8
  %mul2088 = mul i64 %1040, 8
  %mul2089 = mul i64 %mul2088, 4
  br label %cond.end.2090

cond.end.2090:                                    ; preds = %cond.false.2086, %cond.true.2084
  %cond2091 = phi i64 [ %mul2085, %cond.true.2084 ], [ %mul2089, %cond.false.2086 ]
  %1041 = alloca i8, i64 %cond2091
  store i8* %1041, i8** %destination2063, align 8
  %1042 = load i8*, i8** %destination2063, align 8
  %stack2092 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1043 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2092, align 8
  %1044 = bitcast %union.fail_stack_elt* %1043 to i8*
  %size2093 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1045 = load i64, i64* %size2093, align 8
  %mul2094 = mul i64 %1045, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1042, i8* %1044, i64 %mul2094, i32 1, i1 false)
  %1046 = bitcast i8* %1042 to %union.fail_stack_elt*
  %stack2095 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %1046, %union.fail_stack_elt** %stack2095, align 8
  %stack2096 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1047 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2096, align 8
  %cmp2097 = icmp eq %union.fail_stack_elt* %1047, null
  br i1 %cmp2097, label %cond.true.2099, label %cond.false.2100

cond.true.2099:                                   ; preds = %cond.end.2090
  br label %cond.end.2117

cond.false.2100:                                  ; preds = %cond.end.2090
  %1048 = load i64, i64* @re_max_failures, align 8
  %mul2101 = mul i64 %1048, 20
  %size2102 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1049 = load i64, i64* %size2102, align 8
  %mul2103 = mul i64 %1049, 8
  %mul2104 = mul i64 %mul2103, 4
  %cmp2105 = icmp ult i64 %mul2101, %mul2104
  br i1 %cmp2105, label %cond.true.2107, label %cond.false.2109

cond.true.2107:                                   ; preds = %cond.false.2100
  %1050 = load i64, i64* @re_max_failures, align 8
  %mul2108 = mul i64 %1050, 20
  br label %cond.end.2113

cond.false.2109:                                  ; preds = %cond.false.2100
  %size2110 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1051 = load i64, i64* %size2110, align 8
  %mul2111 = mul i64 %1051, 8
  %mul2112 = mul i64 %mul2111, 4
  br label %cond.end.2113

cond.end.2113:                                    ; preds = %cond.false.2109, %cond.true.2107
  %cond2114 = phi i64 [ %mul2108, %cond.true.2107 ], [ %mul2112, %cond.false.2109 ]
  %div2115 = udiv i64 %cond2114, 8
  %size2116 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i64 %div2115, i64* %size2116, align 8
  br label %cond.end.2117

cond.end.2117:                                    ; preds = %cond.end.2113, %cond.true.2099
  %cond2118 = phi i32 [ 0, %cond.true.2099 ], [ 1, %cond.end.2113 ]
  %tobool2119 = icmp ne i32 %cond2118, 0
  br i1 %tobool2119, label %if.end.2121, label %if.then.2120

if.then.2120:                                     ; preds = %cond.end.2117, %cond.true.2076
  store i64 -2, i64* %retval
  br label %return

if.end.2121:                                      ; preds = %cond.end.2117, %cond.true.2076
  br label %while.cond.2064

while.end.2122:                                   ; preds = %while.cond.2064
  %frame2123 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  %1052 = load i64, i64* %frame2123, align 8
  %avail2124 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1053 = load i64, i64* %avail2124, align 8
  %inc2125 = add i64 %1053, 1
  store i64 %inc2125, i64* %avail2124, align 8
  %stack2126 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1054 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2126, align 8
  %arrayidx2127 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1054, i64 %1053
  %integer2128 = bitcast %union.fail_stack_elt* %arrayidx2127 to i64*
  store i64 %1052, i64* %integer2128, align 8
  %1055 = load i8*, i8** %str, align 8
  %avail2129 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1056 = load i64, i64* %avail2129, align 8
  %inc2130 = add i64 %1056, 1
  store i64 %inc2130, i64* %avail2129, align 8
  %stack2131 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1057 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2131, align 8
  %arrayidx2132 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1057, i64 %1056
  %pointer2133 = bitcast %union.fail_stack_elt* %arrayidx2132 to i8**
  store i8* %1055, i8** %pointer2133, align 8
  %1058 = load i8*, i8** %pat, align 8
  %add.ptr2134 = getelementptr inbounds i8, i8* %1058, i64 -2
  %avail2135 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1059 = load i64, i64* %avail2135, align 8
  %inc2136 = add i64 %1059, 1
  store i64 %inc2136, i64* %avail2135, align 8
  %stack2137 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1060 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2137, align 8
  %arrayidx2138 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1060, i64 %1059
  %pointer2139 = bitcast %union.fail_stack_elt* %arrayidx2138 to i8**
  store i8* %add.ptr2134, i8** %pointer2139, align 8
  %avail2140 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1061 = load i64, i64* %avail2140, align 8
  %frame2141 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 3
  store i64 %1061, i64* %frame2141, align 8
  br label %do.end.2143

do.end.2143:                                      ; preds = %while.end.2122
  br label %sw.bb.2144

sw.bb.2144:                                       ; preds = %do.end.2057, %do.end.2057, %do.end.2057, %do.end.2143
  %1062 = load i8*, i8** %str, align 8
  store i8* %1062, i8** %d, align 8
  br label %continue_failure_jump

continue_failure_jump:                            ; preds = %sw.bb.2144, %sw.bb.2060
  %call2145 = call i32 @extract_number_and_incr(i8** %pat)
  store i32 %call2145, i32* %mcnt, align 4
  %1063 = load i8*, i8** %pat, align 8
  %1064 = load i32, i32* %mcnt, align 4
  %idx.ext2146 = sext i32 %1064 to i64
  %add.ptr2147 = getelementptr inbounds i8, i8* %1063, i64 %idx.ext2146
  store i8* %add.ptr2147, i8** %p, align 8
  br label %sw.epilog.2150

sw.bb.2148:                                       ; preds = %do.end.2057
  br label %fail

sw.default.2149:                                  ; preds = %do.end.2057
  call void @abort() #9
  unreachable

sw.epilog.2150:                                   ; preds = %continue_failure_jump
  %1065 = load i8*, i8** %d, align 8
  %1066 = load i8*, i8** %string1.addr, align 8
  %cmp2151 = icmp uge i8* %1065, %1066
  br i1 %cmp2151, label %land.lhs.true.2153, label %if.end.2157

land.lhs.true.2153:                               ; preds = %sw.epilog.2150
  %1067 = load i8*, i8** %d, align 8
  %1068 = load i8*, i8** %end1, align 8
  %cmp2154 = icmp ule i8* %1067, %1068
  br i1 %cmp2154, label %if.then.2156, label %if.end.2157

if.then.2156:                                     ; preds = %land.lhs.true.2153
  %1069 = load i8*, i8** %end_match_1, align 8
  store i8* %1069, i8** %dend, align 8
  br label %if.end.2157

if.end.2157:                                      ; preds = %if.then.2156, %land.lhs.true.2153, %sw.epilog.2150
  br label %if.end.2159

if.else.2158:                                     ; preds = %fail
  br label %for.end.2160

if.end.2159:                                      ; preds = %if.end.2157
  br label %for.cond.93

for.end.2160:                                     ; preds = %if.else.2158
  %1070 = load i32, i32* %best_regs_set, align 4
  %tobool2161 = icmp ne i32 %1070, 0
  br i1 %tobool2161, label %if.then.2162, label %if.end.2163

if.then.2162:                                     ; preds = %for.end.2160
  br label %restore_best_regs

if.end.2163:                                      ; preds = %for.end.2160
  br label %do.body.2164

do.body.2164:                                     ; preds = %if.end.2163
  br label %do.body.2165

do.body.2165:                                     ; preds = %do.body.2164
  %1071 = load i8**, i8*** %regstart, align 8
  %tobool2166 = icmp ne i8** %1071, null
  br i1 %tobool2166, label %if.then.2167, label %if.end.2168

if.then.2167:                                     ; preds = %do.body.2165
  store i8** null, i8*** %regstart, align 8
  br label %if.end.2168

if.end.2168:                                      ; preds = %if.then.2167, %do.body.2165
  br label %do.end.2170

do.end.2170:                                      ; preds = %if.end.2168
  br label %do.body.2171

do.body.2171:                                     ; preds = %do.end.2170
  %1072 = load i8**, i8*** %regend, align 8
  %tobool2172 = icmp ne i8** %1072, null
  br i1 %tobool2172, label %if.then.2173, label %if.end.2174

if.then.2173:                                     ; preds = %do.body.2171
  store i8** null, i8*** %regend, align 8
  br label %if.end.2174

if.end.2174:                                      ; preds = %if.then.2173, %do.body.2171
  br label %do.end.2176

do.end.2176:                                      ; preds = %if.end.2174
  br label %do.body.2177

do.body.2177:                                     ; preds = %do.end.2176
  %1073 = load i8**, i8*** %best_regstart, align 8
  %tobool2178 = icmp ne i8** %1073, null
  br i1 %tobool2178, label %if.then.2179, label %if.end.2180

if.then.2179:                                     ; preds = %do.body.2177
  store i8** null, i8*** %best_regstart, align 8
  br label %if.end.2180

if.end.2180:                                      ; preds = %if.then.2179, %do.body.2177
  br label %do.end.2182

do.end.2182:                                      ; preds = %if.end.2180
  br label %do.body.2183

do.body.2183:                                     ; preds = %do.end.2182
  %1074 = load i8**, i8*** %best_regend, align 8
  %tobool2184 = icmp ne i8** %1074, null
  br i1 %tobool2184, label %if.then.2185, label %if.end.2186

if.then.2185:                                     ; preds = %do.body.2183
  store i8** null, i8*** %best_regend, align 8
  br label %if.end.2186

if.end.2186:                                      ; preds = %if.then.2185, %do.body.2183
  br label %do.end.2188

do.end.2188:                                      ; preds = %if.end.2186
  br label %do.end.2190

do.end.2190:                                      ; preds = %do.end.2188
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %do.end.2190, %if.then.2120, %if.then.1630, %if.then.1531, %if.then.1430, %if.then.1308, %if.then.1223, %if.then.1092, %if.then.969, %if.then.697, %do.end.463, %do.end.297, %do.end.233, %do.end.64, %do.end.36, %if.then
  %1075 = load i64, i64* %retval
  ret i64 %1075
}

; Function Attrs: nounwind uwtable
define i64 @re_match(%struct.re_pattern_buffer* %bufp, i8* %string, i64 %size, i64 %pos, %struct.re_registers* %regs) #0 {
entry:
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %string.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %regs.addr = alloca %struct.re_registers*, align 8
  %result = alloca i64, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i64, i64* %pos.addr, align 8
  %4 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  %call = call i64 @re_match_2_internal(%struct.re_pattern_buffer* %0, i8* null, i64 0, i8* %1, i64 %2, i64 %3, %struct.re_registers* %4, i64 %5)
  store i64 %call, i64* %result, align 8
  %6 = load i64, i64* %result, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @re_match_2(%struct.re_pattern_buffer* %bufp, i8* %string1, i64 %size1, i8* %string2, i64 %size2, i64 %pos, %struct.re_registers* %regs, i64 %stop) #0 {
entry:
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %string1.addr = alloca i8*, align 8
  %size1.addr = alloca i64, align 8
  %string2.addr = alloca i8*, align 8
  %size2.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %regs.addr = alloca %struct.re_registers*, align 8
  %stop.addr = alloca i64, align 8
  %result = alloca i64, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %string1, i8** %string1.addr, align 8
  store i64 %size1, i64* %size1.addr, align 8
  store i8* %string2, i8** %string2.addr, align 8
  store i64 %size2, i64* %size2.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  store i64 %stop, i64* %stop.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %1 = load i8*, i8** %string1.addr, align 8
  %2 = load i64, i64* %size1.addr, align 8
  %3 = load i8*, i8** %string2.addr, align 8
  %4 = load i64, i64* %size2.addr, align 8
  %5 = load i64, i64* %pos.addr, align 8
  %6 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %7 = load i64, i64* %stop.addr, align 8
  %call = call i64 @re_match_2_internal(%struct.re_pattern_buffer* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, %struct.re_registers* %6, i64 %7)
  store i64 %call, i64* %result, align 8
  %8 = load i64, i64* %result, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define i8* @re_compile_pattern(i8* %pattern, i64 %length, %struct.re_pattern_buffer* %bufp) #0 {
entry:
  %retval = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %ret = alloca i32, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 7
  %bf.load = load i8, i8* %regs_allocated, align 8
  %bf.clear = and i8 %bf.load, -7
  store i8 %bf.clear, i8* %regs_allocated, align 8
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i32 0, i32 7
  %bf.load1 = load i8, i8* %no_sub, align 8
  %bf.clear2 = and i8 %bf.load1, -17
  store i8 %bf.clear2, i8* %no_sub, align 8
  %2 = load i8*, i8** %pattern.addr, align 8
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i64, i64* @re_syntax_options, align 8
  %5 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %call = call i32 @regex_compile(i8* %2, i64 %3, i64 %4, %struct.re_pattern_buffer* %5)
  store i32 %call, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ret, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [18 x i8*], [18 x i8*]* @re_error_msgid, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i32 @regex_compile(i8* %pattern, i64 %size, i64 %syntax, %struct.re_pattern_buffer* %bufp) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %syntax.addr = alloca i64, align 8
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %c = alloca i32, align 4
  %c1 = alloca i32, align 4
  %b = alloca i8*, align 8
  %compile_stack = alloca %struct.compile_stack_type, align 8
  %p = alloca i8*, align 8
  %pend = alloca i8*, align 8
  %translate = alloca i8*, align 8
  %pending_exact = alloca i8*, align 8
  %laststart = alloca i8*, align 8
  %begalt = alloca i8*, align 8
  %beg_interval = alloca i8*, align 8
  %fixup_alt_jump = alloca i8*, align 8
  %range_table_work = alloca %struct.range_table_work_area, align 8
  %multibyte = alloca i8, align 1
  %in_subpattern = alloca i32, align 4
  %main_p = alloca i8*, align 8
  %main_pattern = alloca i8*, align 8
  %main_pend = alloca i8*, align 8
  %len = alloca i32, align 4
  %p1 = alloca i8*, align 8
  %old_buffer = alloca i8*, align 8
  %new_buffer = alloca i8*, align 8
  %old_buffer198 = alloca i8*, align 8
  %new_buffer227 = alloca i8*, align 8
  %zero_times_ok = alloca i8, align 1
  %many_times_ok = alloca i8, align 1
  %greedy = alloca i8, align 1
  %len376 = alloca i32, align 4
  %len392 = alloca i32, align 4
  %simple = alloca i8, align 1
  %startoffset = alloca i64, align 8
  %ofj = alloca i32, align 4
  %p1425 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %old_buffer440 = alloca i8*, align 8
  %new_buffer469 = alloca i8*, align 8
  %old_buffer522 = alloca i8*, align 8
  %new_buffer551 = alloca i8*, align 8
  %old_buffer625 = alloca i8*, align 8
  %new_buffer654 = alloca i8*, align 8
  %old_buffer708 = alloca i8*, align 8
  %new_buffer737 = alloca i8*, align 8
  %emptyp = alloca i8, align 1
  %old_buffer789 = alloca i8*, align 8
  %new_buffer818 = alloca i8*, align 8
  %old_buffer903 = alloca i8*, align 8
  %new_buffer932 = alloca i8*, align 8
  %p1969 = alloca i8*, align 8
  %old_buffer996 = alloca i8*, align 8
  %new_buffer1025 = alloca i8*, align 8
  %old_buffer1071 = alloca i8*, align 8
  %new_buffer1100 = alloca i8*, align 8
  %old_buffer1159 = alloca i8*, align 8
  %new_buffer1188 = alloca i8*, align 8
  %escaped_char = alloca i8, align 1
  %p21238 = alloca i8*, align 8
  %ch = alloca i32, align 4
  %len1254 = alloca i32, align 4
  %len1284 = alloca i32, align 4
  %str = alloca [10 x i8], align 1
  %class_beg = alloca i8*, align 8
  %len1315 = alloca i32, align 4
  %len1340 = alloca i32, align 4
  %cc = alloca i32, align 4
  %len1394 = alloca i32, align 4
  %len1473 = alloca i32, align 4
  %len1483 = alloca i32, align 4
  %i = alloca i32, align 4
  %used1567 = alloca i32, align 4
  %old_buffer1583 = alloca i8*, align 8
  %new_buffer1612 = alloca i8*, align 8
  %len1744 = alloca i32, align 4
  %shy = alloca i32, align 4
  %regnum = alloca i32, align 4
  %len1770 = alloca i32, align 4
  %len1784 = alloca i32, align 4
  %old_buffer1938 = alloca i8*, align 8
  %new_buffer1967 = alloca i8*, align 8
  %regnum2063 = alloca i32, align 4
  %old_buffer2116 = alloca i8*, align 8
  %new_buffer2145 = alloca i8*, align 8
  %old_buffer2207 = alloca i8*, align 8
  %new_buffer2236 = alloca i8*, align 8
  %old_buffer2298 = alloca i8*, align 8
  %new_buffer2327 = alloca i8*, align 8
  %lower_bound = alloca i32, align 4
  %upper_bound = alloca i32, align 4
  %len2386 = alloca i32, align 4
  %len2443 = alloca i32, align 4
  %len2474 = alloca i32, align 4
  %len2531 = alloca i32, align 4
  %len2597 = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %startoffset2664 = alloca i32, align 4
  %old_buffer2676 = alloca i8*, align 8
  %new_buffer2705 = alloca i8*, align 8
  %old_buffer2819 = alloca i8*, align 8
  %new_buffer2848 = alloca i8*, align 8
  %old_buffer2902 = alloca i8*, align 8
  %new_buffer2931 = alloca i8*, align 8
  %old_buffer2985 = alloca i8*, align 8
  %new_buffer3014 = alloca i8*, align 8
  %old_buffer3067 = alloca i8*, align 8
  %new_buffer3096 = alloca i8*, align 8
  %len3138 = alloca i32, align 4
  %old_buffer3162 = alloca i8*, align 8
  %new_buffer3191 = alloca i8*, align 8
  %old_buffer3243 = alloca i8*, align 8
  %new_buffer3272 = alloca i8*, align 8
  %old_buffer3338 = alloca i8*, align 8
  %new_buffer3367 = alloca i8*, align 8
  %old_buffer3420 = alloca i8*, align 8
  %new_buffer3449 = alloca i8*, align 8
  %old_buffer3502 = alloca i8*, align 8
  %new_buffer3531 = alloca i8*, align 8
  %old_buffer3584 = alloca i8*, align 8
  %new_buffer3613 = alloca i8*, align 8
  %reg = alloca i32, align 4
  %old_buffer3690 = alloca i8*, align 8
  %new_buffer3719 = alloca i8*, align 8
  %old_buffer3860 = alloca i8*, align 8
  %new_buffer3889 = alloca i8*, align 8
  %old_buffer3939 = alloca i8*, align 8
  %new_buffer3968 = alloca i8*, align 8
  %len4002 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %old_buffer4064 = alloca i8*, align 8
  %new_buffer4093 = alloca i8*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %syntax, i64* %syntax.addr, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  %0 = load i8*, i8** %pattern.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %pattern.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %pend, align 8
  %3 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %translate1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i32 0, i32 5
  %4 = load i8*, i8** %translate1, align 8
  store i8* %4, i8** %translate, align 8
  store i8* null, i8** %pending_exact, align 8
  store i8* null, i8** %laststart, align 8
  store i8* null, i8** %fixup_alt_jump, align 8
  store i8 0, i8* %multibyte, align 1
  store i32 0, i32* %in_subpattern, align 4
  %call = call i8* @xmalloc(i64 1024)
  %5 = bitcast i8* %call to %struct.compile_stack_elt_t*
  %stack = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  store %struct.compile_stack_elt_t* %5, %struct.compile_stack_elt_t** %stack, align 8
  %stack2 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %6 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2, align 8
  %cmp = icmp eq %struct.compile_stack_elt_t* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %do.end.4144

if.end:                                           ; preds = %entry
  %size3 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 1
  store i64 32, i64* %size3, align 8
  %avail = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  store i64 0, i64* %avail, align 8
  %table = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  store i32* null, i32** %table, align 8
  %allocated = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 1
  store i32 0, i32* %allocated, align 4
  %7 = load i64, i64* %syntax.addr, align 8
  %8 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %syntax4 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %8, i32 0, i32 3
  store i64 %7, i64* %syntax4, align 8
  %9 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %9, i32 0, i32 7
  %bf.load = load i8, i8* %fastmap_accurate, align 8
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, i8* %fastmap_accurate, align 8
  %10 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %not_eol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %10, i32 0, i32 7
  %bf.load5 = load i8, i8* %not_eol, align 8
  %bf.clear6 = and i8 %bf.load5, -65
  store i8 %bf.clear6, i8* %not_eol, align 8
  %11 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %not_bol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %11, i32 0, i32 7
  %bf.load7 = load i8, i8* %not_bol, align 8
  %bf.clear8 = and i8 %bf.load7, -33
  store i8 %bf.clear8, i8* %not_bol, align 8
  %12 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used_syntax = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %12, i32 0, i32 7
  %bf.load9 = load i8, i8* %used_syntax, align 8
  %bf.clear10 = and i8 %bf.load9, 127
  store i8 %bf.clear10, i8* %used_syntax, align 8
  %13 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %13, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %14 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %14, i32 0, i32 6
  store i64 0, i64* %re_nsub, align 8
  call void @init_syntax_once()
  %15 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated11 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %15, i32 0, i32 1
  %16 = load i64, i64* %allocated11, align 8
  %cmp12 = icmp eq i64 %16, 0
  br i1 %cmp12, label %if.then.13, label %if.end.34

if.then.13:                                       ; preds = %if.end
  %17 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %17, i32 0, i32 0
  %18 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %18, null
  br i1 %tobool, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.13
  %19 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer15 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %19, i32 0, i32 0
  %20 = load i8*, i8** %buffer15, align 8
  %call16 = call i8* @xrealloc(i8* %20, i64 32)
  %21 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer17 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %21, i32 0, i32 0
  store i8* %call16, i8** %buffer17, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.13
  %call18 = call i8* @xmalloc(i64 32)
  %22 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer19 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %22, i32 0, i32 0
  store i8* %call18, i8** %buffer19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.14
  %23 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer21 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %23, i32 0, i32 0
  %24 = load i8*, i8** %buffer21, align 8
  %tobool22 = icmp ne i8* %24, null
  br i1 %tobool22, label %if.end.32, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  br label %do.body

do.body:                                          ; preds = %if.then.23
  br label %do.body.24

do.body.24:                                       ; preds = %do.body
  %table25 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %25 = load i32*, i32** %table25, align 8
  %tobool26 = icmp ne i32* %25, null
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.body.24
  %table28 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %26 = load i32*, i32** %table28, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27) #4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %do.body.24
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %stack30 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %28 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack30, align 8
  %29 = bitcast %struct.compile_stack_elt_t* %28 to i8*
  call void @free(i8* %29) #4
  store i32 12, i32* %retval
  br label %do.end.4144

do.end.31:                                        ; No predecessors!
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %if.end.20
  %30 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated33 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %30, i32 0, i32 1
  store i64 32, i64* %allocated33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.32, %if.end
  %31 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer35 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %31, i32 0, i32 0
  %32 = load i8*, i8** %buffer35, align 8
  store i8* %32, i8** %b, align 8
  store i8* %32, i8** %begalt, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.34, %if.then.39, %sw.epilog.4023
  %33 = load i8*, i8** %p, align 8
  %34 = load i8*, i8** %pend, align 8
  %cmp36 = icmp eq i8* %33, %34
  br i1 %cmp36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %while.body
  %35 = load i32, i32* %in_subpattern, align 4
  %tobool38 = icmp ne i32 %35, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.37
  store i32 0, i32* %in_subpattern, align 4
  %36 = load i8*, i8** %main_pattern, align 8
  store i8* %36, i8** %pattern.addr, align 8
  %37 = load i8*, i8** %main_p, align 8
  store i8* %37, i8** %p, align 8
  %38 = load i8*, i8** %main_pend, align 8
  store i8* %38, i8** %pend, align 8
  br label %while.body

if.end.40:                                        ; preds = %if.then.37
  br label %while.end.4024

if.end.41:                                        ; preds = %while.body
  br label %do.body.42

do.body.42:                                       ; preds = %if.end.41
  %39 = load i8*, i8** %p, align 8
  %40 = load i8*, i8** %pend, align 8
  %cmp43 = icmp eq i8* %39, %40
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %do.body.42
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.45:                                        ; preds = %do.body.42
  store i32 1, i32* %len, align 4
  %41 = load i8*, i8** %p, align 8
  %42 = load i8, i8* %41, align 1
  %conv = zext i8 %42 to i32
  store i32 %conv, i32* %c, align 4
  %43 = load i32, i32* %len, align 4
  %44 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %43 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  store i8* %add.ptr46, i8** %p, align 8
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.45
  %45 = load i32, i32* %c, align 4
  switch i32 %45, label %sw.default.3764 [
    i32 32, label %sw.bb
    i32 94, label %sw.bb.90
    i32 36, label %sw.bb.175
    i32 43, label %sw.bb.269
    i32 63, label %sw.bb.269
    i32 42, label %sw.bb.277
    i32 46, label %sw.bb.890
    i32 91, label %sw.bb.968
    i32 40, label %sw.bb.1700
    i32 41, label %sw.bb.1705
    i32 10, label %sw.bb.1710
    i32 124, label %sw.bb.1715
    i32 123, label %sw.bb.1720
    i32 92, label %sw.bb.1728
  ]

sw.bb:                                            ; preds = %do.end.47
  %46 = load i8*, i8** %p, align 8
  store i8* %46, i8** %p1, align 8
  %47 = load i8*, i8** @whitespace_regexp, align 8
  %tobool48 = icmp ne i8* %47, null
  br i1 %tobool48, label %lor.lhs.false, label %if.then.50

lor.lhs.false:                                    ; preds = %sw.bb
  %48 = load i32, i32* %in_subpattern, align 4
  %tobool49 = icmp ne i32 %48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false, %sw.bb
  br label %normal_char

if.end.51:                                        ; preds = %lor.lhs.false
  br label %while.cond.52

while.cond.52:                                    ; preds = %if.end.60, %if.end.51
  %49 = load i8*, i8** %p1, align 8
  %50 = load i8*, i8** %pend, align 8
  %cmp53 = icmp ne i8* %49, %50
  br i1 %cmp53, label %while.body.55, label %while.end

while.body.55:                                    ; preds = %while.cond.52
  %51 = load i8*, i8** %p1, align 8
  %52 = load i8, i8* %51, align 1
  %conv56 = zext i8 %52 to i32
  %cmp57 = icmp ne i32 %conv56, 32
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %while.body.55
  br label %while.end

if.end.60:                                        ; preds = %while.body.55
  %53 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  br label %while.cond.52

while.end:                                        ; preds = %if.then.59, %while.cond.52
  %54 = load i8*, i8** %p1, align 8
  %55 = load i8*, i8** %pend, align 8
  %cmp61 = icmp ne i8* %54, %55
  br i1 %cmp61, label %land.lhs.true, label %if.end.87

land.lhs.true:                                    ; preds = %while.end
  %56 = load i8*, i8** %p1, align 8
  %57 = load i8, i8* %56, align 1
  %conv63 = zext i8 %57 to i32
  %cmp64 = icmp eq i32 %conv63, 42
  br i1 %cmp64, label %if.then.86, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %land.lhs.true
  %58 = load i8*, i8** %p1, align 8
  %59 = load i8, i8* %58, align 1
  %conv67 = zext i8 %59 to i32
  %cmp68 = icmp eq i32 %conv67, 43
  br i1 %cmp68, label %if.then.86, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.66
  %60 = load i8*, i8** %p1, align 8
  %61 = load i8, i8* %60, align 1
  %conv71 = zext i8 %61 to i32
  %cmp72 = icmp eq i32 %conv71, 63
  br i1 %cmp72, label %if.then.86, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.70
  %62 = load i8*, i8** %p1, align 8
  %63 = load i8, i8* %62, align 1
  %conv75 = zext i8 %63 to i32
  %cmp76 = icmp eq i32 %conv75, 92
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.87

land.lhs.true.78:                                 ; preds = %lor.lhs.false.74
  %64 = load i8*, i8** %p1, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8*, i8** %pend, align 8
  %cmp80 = icmp ne i8* %add.ptr79, %65
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.87

land.lhs.true.82:                                 ; preds = %land.lhs.true.78
  %66 = load i8*, i8** %p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx, align 1
  %conv83 = zext i8 %67 to i32
  %cmp84 = icmp eq i32 %conv83, 123
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %land.lhs.true.82, %lor.lhs.false.70, %lor.lhs.false.66, %land.lhs.true
  br label %normal_char

if.end.87:                                        ; preds = %land.lhs.true.82, %land.lhs.true.78, %lor.lhs.false.74, %while.end
  store i32 1, i32* %in_subpattern, align 4
  %68 = load i8*, i8** %p1, align 8
  store i8* %68, i8** %main_p, align 8
  %69 = load i8*, i8** %pend, align 8
  store i8* %69, i8** %main_pend, align 8
  %70 = load i8*, i8** %pattern.addr, align 8
  store i8* %70, i8** %main_pattern, align 8
  %71 = load i8*, i8** @whitespace_regexp, align 8
  store i8* %71, i8** %pattern.addr, align 8
  store i8* %71, i8** %p, align 8
  %72 = load i8*, i8** %p, align 8
  %73 = load i8*, i8** %p, align 8
  %call88 = call i64 @strlen(i8* %73) #7
  %add.ptr89 = getelementptr inbounds i8, i8* %72, i64 %call88
  store i8* %add.ptr89, i8** %pend, align 8
  br label %sw.epilog.4023

sw.bb.90:                                         ; preds = %do.end.47
  %74 = load i8*, i8** %p, align 8
  %75 = load i8*, i8** %pattern.addr, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %75, i64 1
  %cmp92 = icmp eq i8* %74, %add.ptr91
  br i1 %cmp92, label %if.then.100, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %sw.bb.90
  %76 = load i64, i64* %syntax.addr, align 8
  %and = and i64 %76, 8
  %tobool95 = icmp ne i64 %and, 0
  br i1 %tobool95, label %if.then.100, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.94
  %77 = load i8*, i8** %pattern.addr, align 8
  %78 = load i8*, i8** %p, align 8
  %79 = load i64, i64* %syntax.addr, align 8
  %call97 = call signext i8 @at_begline_loc_p(i8* %77, i8* %78, i64 %79)
  %conv98 = sext i8 %call97 to i32
  %tobool99 = icmp ne i32 %conv98, 0
  br i1 %tobool99, label %if.then.100, label %if.else.173

if.then.100:                                      ; preds = %lor.lhs.false.96, %lor.lhs.false.94, %sw.bb.90
  br label %do.body.101

do.body.101:                                      ; preds = %if.then.100
  br label %while.cond.102

while.cond.102:                                   ; preds = %do.end.166, %do.body.101
  %80 = load i8*, i8** %b, align 8
  %81 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer103 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %81, i32 0, i32 0
  %82 = load i8*, i8** %buffer103, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %80 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %82 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %83 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated104 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %83, i32 0, i32 1
  %84 = load i64, i64* %allocated104, align 8
  %cmp105 = icmp ugt i64 %add, %84
  br i1 %cmp105, label %while.body.107, label %while.end.167

while.body.107:                                   ; preds = %while.cond.102
  br label %do.body.108

do.body.108:                                      ; preds = %while.body.107
  %85 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer109 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %85, i32 0, i32 0
  %86 = load i8*, i8** %buffer109, align 8
  store i8* %86, i8** %old_buffer, align 8
  %87 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated110 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %87, i32 0, i32 1
  %88 = load i64, i64* %allocated110, align 8
  %cmp111 = icmp eq i64 %88, 32768
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %do.body.108
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.114:                                       ; preds = %do.body.108
  %89 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated115 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %89, i32 0, i32 1
  %90 = load i64, i64* %allocated115, align 8
  %shl = shl i64 %90, 1
  store i64 %shl, i64* %allocated115, align 8
  %91 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated116 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %91, i32 0, i32 1
  %92 = load i64, i64* %allocated116, align 8
  %cmp117 = icmp ugt i64 %92, 32768
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.end.114
  %93 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated120 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %93, i32 0, i32 1
  store i64 32768, i64* %allocated120, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.end.114
  %94 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer122 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %94, i32 0, i32 0
  %95 = load i8*, i8** %buffer122, align 8
  %96 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated123 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %96, i32 0, i32 1
  %97 = load i64, i64* %allocated123, align 8
  %mul = mul i64 %97, 1
  %call124 = call i8* @xrealloc(i8* %95, i64 %mul)
  %98 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer125 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %98, i32 0, i32 0
  store i8* %call124, i8** %buffer125, align 8
  %99 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer126 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %99, i32 0, i32 0
  %100 = load i8*, i8** %buffer126, align 8
  %cmp127 = icmp eq i8* %100, null
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.end.121
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.130:                                       ; preds = %if.end.121
  %101 = load i8*, i8** %old_buffer, align 8
  %102 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer131 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %102, i32 0, i32 0
  %103 = load i8*, i8** %buffer131, align 8
  %cmp132 = icmp ne i8* %101, %103
  br i1 %cmp132, label %if.then.134, label %if.end.165

if.then.134:                                      ; preds = %if.end.130
  %104 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer135 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %104, i32 0, i32 0
  %105 = load i8*, i8** %buffer135, align 8
  store i8* %105, i8** %new_buffer, align 8
  %106 = load i8*, i8** %new_buffer, align 8
  %107 = load i8*, i8** %b, align 8
  %108 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast136 = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast137 = ptrtoint i8* %108 to i64
  %sub.ptr.sub138 = sub i64 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast137
  %add.ptr139 = getelementptr inbounds i8, i8* %106, i64 %sub.ptr.sub138
  store i8* %add.ptr139, i8** %b, align 8
  %109 = load i8*, i8** %new_buffer, align 8
  %110 = load i8*, i8** %begalt, align 8
  %111 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast140 = ptrtoint i8* %110 to i64
  %sub.ptr.rhs.cast141 = ptrtoint i8* %111 to i64
  %sub.ptr.sub142 = sub i64 %sub.ptr.lhs.cast140, %sub.ptr.rhs.cast141
  %add.ptr143 = getelementptr inbounds i8, i8* %109, i64 %sub.ptr.sub142
  store i8* %add.ptr143, i8** %begalt, align 8
  %112 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool144 = icmp ne i8* %112, null
  br i1 %tobool144, label %if.then.145, label %if.end.150

if.then.145:                                      ; preds = %if.then.134
  %113 = load i8*, i8** %new_buffer, align 8
  %114 = load i8*, i8** %fixup_alt_jump, align 8
  %115 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast146 = ptrtoint i8* %114 to i64
  %sub.ptr.rhs.cast147 = ptrtoint i8* %115 to i64
  %sub.ptr.sub148 = sub i64 %sub.ptr.lhs.cast146, %sub.ptr.rhs.cast147
  %add.ptr149 = getelementptr inbounds i8, i8* %113, i64 %sub.ptr.sub148
  store i8* %add.ptr149, i8** %fixup_alt_jump, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.145, %if.then.134
  %116 = load i8*, i8** %laststart, align 8
  %tobool151 = icmp ne i8* %116, null
  br i1 %tobool151, label %if.then.152, label %if.end.157

if.then.152:                                      ; preds = %if.end.150
  %117 = load i8*, i8** %new_buffer, align 8
  %118 = load i8*, i8** %laststart, align 8
  %119 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast153 = ptrtoint i8* %118 to i64
  %sub.ptr.rhs.cast154 = ptrtoint i8* %119 to i64
  %sub.ptr.sub155 = sub i64 %sub.ptr.lhs.cast153, %sub.ptr.rhs.cast154
  %add.ptr156 = getelementptr inbounds i8, i8* %117, i64 %sub.ptr.sub155
  store i8* %add.ptr156, i8** %laststart, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.152, %if.end.150
  %120 = load i8*, i8** %pending_exact, align 8
  %tobool158 = icmp ne i8* %120, null
  br i1 %tobool158, label %if.then.159, label %if.end.164

if.then.159:                                      ; preds = %if.end.157
  %121 = load i8*, i8** %new_buffer, align 8
  %122 = load i8*, i8** %pending_exact, align 8
  %123 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast160 = ptrtoint i8* %122 to i64
  %sub.ptr.rhs.cast161 = ptrtoint i8* %123 to i64
  %sub.ptr.sub162 = sub i64 %sub.ptr.lhs.cast160, %sub.ptr.rhs.cast161
  %add.ptr163 = getelementptr inbounds i8, i8* %121, i64 %sub.ptr.sub162
  store i8* %add.ptr163, i8** %pending_exact, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.159, %if.end.157
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.end.130
  br label %do.end.166

do.end.166:                                       ; preds = %if.end.165
  br label %while.cond.102

while.end.167:                                    ; preds = %while.cond.102
  %124 = load i64, i64* %syntax.addr, align 8
  %and168 = and i64 %124, 4194304
  %tobool169 = icmp ne i64 %and168, 0
  %cond = select i1 %tobool169, i32 11, i32 9
  %conv170 = trunc i32 %cond to i8
  %125 = load i8*, i8** %b, align 8
  %incdec.ptr171 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr171, i8** %b, align 8
  store i8 %conv170, i8* %125, align 1
  br label %do.end.172

do.end.172:                                       ; preds = %while.end.167
  br label %if.end.174

if.else.173:                                      ; preds = %lor.lhs.false.96
  br label %normal_char

if.end.174:                                       ; preds = %do.end.172
  br label %sw.epilog.4023

sw.bb.175:                                        ; preds = %do.end.47
  %126 = load i8*, i8** %p, align 8
  %127 = load i8*, i8** %pend, align 8
  %cmp176 = icmp eq i8* %126, %127
  br i1 %cmp176, label %if.then.185, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %sw.bb.175
  %128 = load i64, i64* %syntax.addr, align 8
  %and179 = and i64 %128, 8
  %tobool180 = icmp ne i64 %and179, 0
  br i1 %tobool180, label %if.then.185, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %lor.lhs.false.178
  %129 = load i8*, i8** %p, align 8
  %130 = load i8*, i8** %pend, align 8
  %131 = load i64, i64* %syntax.addr, align 8
  %call182 = call signext i8 @at_endline_loc_p(i8* %129, i8* %130, i64 %131)
  %conv183 = sext i8 %call182 to i32
  %tobool184 = icmp ne i32 %conv183, 0
  br i1 %tobool184, label %if.then.185, label %if.else.267

if.then.185:                                      ; preds = %lor.lhs.false.181, %lor.lhs.false.178, %sw.bb.175
  br label %do.body.186

do.body.186:                                      ; preds = %if.then.185
  br label %while.cond.187

while.cond.187:                                   ; preds = %do.end.259, %do.body.186
  %132 = load i8*, i8** %b, align 8
  %133 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer188 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %133, i32 0, i32 0
  %134 = load i8*, i8** %buffer188, align 8
  %sub.ptr.lhs.cast189 = ptrtoint i8* %132 to i64
  %sub.ptr.rhs.cast190 = ptrtoint i8* %134 to i64
  %sub.ptr.sub191 = sub i64 %sub.ptr.lhs.cast189, %sub.ptr.rhs.cast190
  %add192 = add nsw i64 %sub.ptr.sub191, 1
  %135 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated193 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %135, i32 0, i32 1
  %136 = load i64, i64* %allocated193, align 8
  %cmp194 = icmp ugt i64 %add192, %136
  br i1 %cmp194, label %while.body.196, label %while.end.260

while.body.196:                                   ; preds = %while.cond.187
  br label %do.body.197

do.body.197:                                      ; preds = %while.body.196
  %137 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer199 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %137, i32 0, i32 0
  %138 = load i8*, i8** %buffer199, align 8
  store i8* %138, i8** %old_buffer198, align 8
  %139 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated200 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %139, i32 0, i32 1
  %140 = load i64, i64* %allocated200, align 8
  %cmp201 = icmp eq i64 %140, 32768
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %do.body.197
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.204:                                       ; preds = %do.body.197
  %141 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated205 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %141, i32 0, i32 1
  %142 = load i64, i64* %allocated205, align 8
  %shl206 = shl i64 %142, 1
  store i64 %shl206, i64* %allocated205, align 8
  %143 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated207 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %143, i32 0, i32 1
  %144 = load i64, i64* %allocated207, align 8
  %cmp208 = icmp ugt i64 %144, 32768
  br i1 %cmp208, label %if.then.210, label %if.end.212

if.then.210:                                      ; preds = %if.end.204
  %145 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated211 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %145, i32 0, i32 1
  store i64 32768, i64* %allocated211, align 8
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.210, %if.end.204
  %146 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer213 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %146, i32 0, i32 0
  %147 = load i8*, i8** %buffer213, align 8
  %148 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated214 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %148, i32 0, i32 1
  %149 = load i64, i64* %allocated214, align 8
  %mul215 = mul i64 %149, 1
  %call216 = call i8* @xrealloc(i8* %147, i64 %mul215)
  %150 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer217 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %150, i32 0, i32 0
  store i8* %call216, i8** %buffer217, align 8
  %151 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer218 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %151, i32 0, i32 0
  %152 = load i8*, i8** %buffer218, align 8
  %cmp219 = icmp eq i8* %152, null
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.end.212
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.222:                                       ; preds = %if.end.212
  %153 = load i8*, i8** %old_buffer198, align 8
  %154 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer223 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %154, i32 0, i32 0
  %155 = load i8*, i8** %buffer223, align 8
  %cmp224 = icmp ne i8* %153, %155
  br i1 %cmp224, label %if.then.226, label %if.end.258

if.then.226:                                      ; preds = %if.end.222
  %156 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer228 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %156, i32 0, i32 0
  %157 = load i8*, i8** %buffer228, align 8
  store i8* %157, i8** %new_buffer227, align 8
  %158 = load i8*, i8** %new_buffer227, align 8
  %159 = load i8*, i8** %b, align 8
  %160 = load i8*, i8** %old_buffer198, align 8
  %sub.ptr.lhs.cast229 = ptrtoint i8* %159 to i64
  %sub.ptr.rhs.cast230 = ptrtoint i8* %160 to i64
  %sub.ptr.sub231 = sub i64 %sub.ptr.lhs.cast229, %sub.ptr.rhs.cast230
  %add.ptr232 = getelementptr inbounds i8, i8* %158, i64 %sub.ptr.sub231
  store i8* %add.ptr232, i8** %b, align 8
  %161 = load i8*, i8** %new_buffer227, align 8
  %162 = load i8*, i8** %begalt, align 8
  %163 = load i8*, i8** %old_buffer198, align 8
  %sub.ptr.lhs.cast233 = ptrtoint i8* %162 to i64
  %sub.ptr.rhs.cast234 = ptrtoint i8* %163 to i64
  %sub.ptr.sub235 = sub i64 %sub.ptr.lhs.cast233, %sub.ptr.rhs.cast234
  %add.ptr236 = getelementptr inbounds i8, i8* %161, i64 %sub.ptr.sub235
  store i8* %add.ptr236, i8** %begalt, align 8
  %164 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool237 = icmp ne i8* %164, null
  br i1 %tobool237, label %if.then.238, label %if.end.243

if.then.238:                                      ; preds = %if.then.226
  %165 = load i8*, i8** %new_buffer227, align 8
  %166 = load i8*, i8** %fixup_alt_jump, align 8
  %167 = load i8*, i8** %old_buffer198, align 8
  %sub.ptr.lhs.cast239 = ptrtoint i8* %166 to i64
  %sub.ptr.rhs.cast240 = ptrtoint i8* %167 to i64
  %sub.ptr.sub241 = sub i64 %sub.ptr.lhs.cast239, %sub.ptr.rhs.cast240
  %add.ptr242 = getelementptr inbounds i8, i8* %165, i64 %sub.ptr.sub241
  store i8* %add.ptr242, i8** %fixup_alt_jump, align 8
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.238, %if.then.226
  %168 = load i8*, i8** %laststart, align 8
  %tobool244 = icmp ne i8* %168, null
  br i1 %tobool244, label %if.then.245, label %if.end.250

if.then.245:                                      ; preds = %if.end.243
  %169 = load i8*, i8** %new_buffer227, align 8
  %170 = load i8*, i8** %laststart, align 8
  %171 = load i8*, i8** %old_buffer198, align 8
  %sub.ptr.lhs.cast246 = ptrtoint i8* %170 to i64
  %sub.ptr.rhs.cast247 = ptrtoint i8* %171 to i64
  %sub.ptr.sub248 = sub i64 %sub.ptr.lhs.cast246, %sub.ptr.rhs.cast247
  %add.ptr249 = getelementptr inbounds i8, i8* %169, i64 %sub.ptr.sub248
  store i8* %add.ptr249, i8** %laststart, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.245, %if.end.243
  %172 = load i8*, i8** %pending_exact, align 8
  %tobool251 = icmp ne i8* %172, null
  br i1 %tobool251, label %if.then.252, label %if.end.257

if.then.252:                                      ; preds = %if.end.250
  %173 = load i8*, i8** %new_buffer227, align 8
  %174 = load i8*, i8** %pending_exact, align 8
  %175 = load i8*, i8** %old_buffer198, align 8
  %sub.ptr.lhs.cast253 = ptrtoint i8* %174 to i64
  %sub.ptr.rhs.cast254 = ptrtoint i8* %175 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %add.ptr256 = getelementptr inbounds i8, i8* %173, i64 %sub.ptr.sub255
  store i8* %add.ptr256, i8** %pending_exact, align 8
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.252, %if.end.250
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.end.222
  br label %do.end.259

do.end.259:                                       ; preds = %if.end.258
  br label %while.cond.187

while.end.260:                                    ; preds = %while.cond.187
  %176 = load i64, i64* %syntax.addr, align 8
  %and261 = and i64 %176, 4194304
  %tobool262 = icmp ne i64 %and261, 0
  %cond263 = select i1 %tobool262, i32 12, i32 10
  %conv264 = trunc i32 %cond263 to i8
  %177 = load i8*, i8** %b, align 8
  %incdec.ptr265 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %incdec.ptr265, i8** %b, align 8
  store i8 %conv264, i8* %177, align 1
  br label %do.end.266

do.end.266:                                       ; preds = %while.end.260
  br label %if.end.268

if.else.267:                                      ; preds = %lor.lhs.false.181
  br label %normal_char

if.end.268:                                       ; preds = %do.end.266
  br label %sw.epilog.4023

sw.bb.269:                                        ; preds = %do.end.47, %do.end.47
  %178 = load i64, i64* %syntax.addr, align 8
  %and270 = and i64 %178, 2
  %tobool271 = icmp ne i64 %and270, 0
  br i1 %tobool271, label %if.then.275, label %lor.lhs.false.272

lor.lhs.false.272:                                ; preds = %sw.bb.269
  %179 = load i64, i64* %syntax.addr, align 8
  %and273 = and i64 %179, 1024
  %tobool274 = icmp ne i64 %and273, 0
  br i1 %tobool274, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %lor.lhs.false.272, %sw.bb.269
  br label %normal_char

if.end.276:                                       ; preds = %lor.lhs.false.272
  br label %handle_plus

handle_plus:                                      ; preds = %if.then.3760, %if.end.276
  br label %sw.bb.277

sw.bb.277:                                        ; preds = %do.end.47, %handle_plus
  %180 = load i8*, i8** %laststart, align 8
  %tobool278 = icmp ne i8* %180, null
  br i1 %tobool278, label %if.end.299, label %if.then.279

if.then.279:                                      ; preds = %sw.bb.277
  %181 = load i64, i64* %syntax.addr, align 8
  %and280 = and i64 %181, 32
  %tobool281 = icmp ne i64 %and280, 0
  br i1 %tobool281, label %if.then.282, label %if.else.293

if.then.282:                                      ; preds = %if.then.279
  br label %do.body.283

do.body.283:                                      ; preds = %if.then.282
  br label %do.body.284

do.body.284:                                      ; preds = %do.body.283
  %table285 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %182 = load i32*, i32** %table285, align 8
  %tobool286 = icmp ne i32* %182, null
  br i1 %tobool286, label %if.then.287, label %if.end.289

if.then.287:                                      ; preds = %do.body.284
  %table288 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %183 = load i32*, i32** %table288, align 8
  %184 = bitcast i32* %183 to i8*
  call void @free(i8* %184) #4
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.287, %do.body.284
  br label %do.end.290

do.end.290:                                       ; preds = %if.end.289
  %stack291 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %185 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack291, align 8
  %186 = bitcast %struct.compile_stack_elt_t* %185 to i8*
  call void @free(i8* %186) #4
  store i32 13, i32* %retval
  br label %do.end.4144

do.end.292:                                       ; No predecessors!
  br label %if.end.298

if.else.293:                                      ; preds = %if.then.279
  %187 = load i64, i64* %syntax.addr, align 8
  %and294 = and i64 %187, 16
  %tobool295 = icmp ne i64 %and294, 0
  br i1 %tobool295, label %if.end.297, label %if.then.296

if.then.296:                                      ; preds = %if.else.293
  br label %normal_char

if.end.297:                                       ; preds = %if.else.293
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %do.end.292
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %sw.bb.277
  store i8 0, i8* %zero_times_ok, align 1
  store i8 0, i8* %many_times_ok, align 1
  store i8 1, i8* %greedy, align 1
  br label %for.cond

for.cond:                                         ; preds = %do.end.400, %if.end.299
  %188 = load i64, i64* %syntax.addr, align 8
  %and300 = and i64 %188, 1048576
  %tobool301 = icmp ne i64 %and300, 0
  br i1 %tobool301, label %land.lhs.true.302, label %if.else.312

land.lhs.true.302:                                ; preds = %for.cond
  %189 = load i32, i32* %c, align 4
  %cmp303 = icmp eq i32 %189, 63
  br i1 %cmp303, label %land.lhs.true.305, label %if.else.312

land.lhs.true.305:                                ; preds = %land.lhs.true.302
  %190 = load i8, i8* %zero_times_ok, align 1
  %conv306 = sext i8 %190 to i32
  %tobool307 = icmp ne i32 %conv306, 0
  br i1 %tobool307, label %if.then.311, label %lor.lhs.false.308

lor.lhs.false.308:                                ; preds = %land.lhs.true.305
  %191 = load i8, i8* %many_times_ok, align 1
  %conv309 = sext i8 %191 to i32
  %tobool310 = icmp ne i32 %conv309, 0
  br i1 %tobool310, label %if.then.311, label %if.else.312

if.then.311:                                      ; preds = %lor.lhs.false.308, %land.lhs.true.305
  store i8 0, i8* %greedy, align 1
  br label %if.end.322

if.else.312:                                      ; preds = %lor.lhs.false.308, %land.lhs.true.302, %for.cond
  %192 = load i32, i32* %c, align 4
  %cmp313 = icmp ne i32 %192, 43
  %conv314 = zext i1 %cmp313 to i32
  %193 = load i8, i8* %zero_times_ok, align 1
  %conv315 = sext i8 %193 to i32
  %or = or i32 %conv315, %conv314
  %conv316 = trunc i32 %or to i8
  store i8 %conv316, i8* %zero_times_ok, align 1
  %194 = load i32, i32* %c, align 4
  %cmp317 = icmp ne i32 %194, 63
  %conv318 = zext i1 %cmp317 to i32
  %195 = load i8, i8* %many_times_ok, align 1
  %conv319 = sext i8 %195 to i32
  %or320 = or i32 %conv319, %conv318
  %conv321 = trunc i32 %or320 to i8
  store i8 %conv321, i8* %many_times_ok, align 1
  br label %if.end.322

if.end.322:                                       ; preds = %if.else.312, %if.then.311
  %196 = load i8*, i8** %p, align 8
  %197 = load i8*, i8** %pend, align 8
  %cmp323 = icmp eq i8* %196, %197
  br i1 %cmp323, label %if.then.325, label %if.else.326

if.then.325:                                      ; preds = %if.end.322
  br label %for.end

if.else.326:                                      ; preds = %if.end.322
  %198 = load i8*, i8** %p, align 8
  %199 = load i8, i8* %198, align 1
  %conv327 = zext i8 %199 to i32
  %cmp328 = icmp eq i32 %conv327, 42
  br i1 %cmp328, label %if.then.341, label %lor.lhs.false.330

lor.lhs.false.330:                                ; preds = %if.else.326
  %200 = load i64, i64* %syntax.addr, align 8
  %and331 = and i64 %200, 2
  %tobool332 = icmp ne i64 %and331, 0
  br i1 %tobool332, label %if.else.342, label %land.lhs.true.333

land.lhs.true.333:                                ; preds = %lor.lhs.false.330
  %201 = load i8*, i8** %p, align 8
  %202 = load i8, i8* %201, align 1
  %conv334 = zext i8 %202 to i32
  %cmp335 = icmp eq i32 %conv334, 43
  br i1 %cmp335, label %if.then.341, label %lor.lhs.false.337

lor.lhs.false.337:                                ; preds = %land.lhs.true.333
  %203 = load i8*, i8** %p, align 8
  %204 = load i8, i8* %203, align 1
  %conv338 = zext i8 %204 to i32
  %cmp339 = icmp eq i32 %conv338, 63
  br i1 %cmp339, label %if.then.341, label %if.else.342

if.then.341:                                      ; preds = %lor.lhs.false.337, %land.lhs.true.333, %if.else.326
  br label %if.end.389

if.else.342:                                      ; preds = %lor.lhs.false.337, %lor.lhs.false.330
  %205 = load i64, i64* %syntax.addr, align 8
  %and343 = and i64 %205, 2
  %tobool344 = icmp ne i64 %and343, 0
  br i1 %tobool344, label %land.lhs.true.345, label %if.else.387

land.lhs.true.345:                                ; preds = %if.else.342
  %206 = load i8*, i8** %p, align 8
  %207 = load i8, i8* %206, align 1
  %conv346 = zext i8 %207 to i32
  %cmp347 = icmp eq i32 %conv346, 92
  br i1 %cmp347, label %if.then.349, label %if.else.387

if.then.349:                                      ; preds = %land.lhs.true.345
  %208 = load i8*, i8** %p, align 8
  %add.ptr350 = getelementptr inbounds i8, i8* %208, i64 1
  %209 = load i8*, i8** %pend, align 8
  %cmp351 = icmp eq i8* %add.ptr350, %209
  br i1 %cmp351, label %if.then.353, label %if.end.364

if.then.353:                                      ; preds = %if.then.349
  br label %do.body.354

do.body.354:                                      ; preds = %if.then.353
  br label %do.body.355

do.body.355:                                      ; preds = %do.body.354
  %table356 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %210 = load i32*, i32** %table356, align 8
  %tobool357 = icmp ne i32* %210, null
  br i1 %tobool357, label %if.then.358, label %if.end.360

if.then.358:                                      ; preds = %do.body.355
  %table359 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %211 = load i32*, i32** %table359, align 8
  %212 = bitcast i32* %211 to i8*
  call void @free(i8* %212) #4
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.358, %do.body.355
  br label %do.end.361

do.end.361:                                       ; preds = %if.end.360
  %stack362 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %213 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack362, align 8
  %214 = bitcast %struct.compile_stack_elt_t* %213 to i8*
  call void @free(i8* %214) #4
  store i32 5, i32* %retval
  br label %do.end.4144

do.end.363:                                       ; No predecessors!
  br label %if.end.364

if.end.364:                                       ; preds = %do.end.363, %if.then.349
  %215 = load i8*, i8** %p, align 8
  %arrayidx365 = getelementptr inbounds i8, i8* %215, i64 1
  %216 = load i8, i8* %arrayidx365, align 1
  %conv366 = zext i8 %216 to i32
  %cmp367 = icmp eq i32 %conv366, 43
  br i1 %cmp367, label %if.then.374, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %if.end.364
  %217 = load i8*, i8** %p, align 8
  %arrayidx370 = getelementptr inbounds i8, i8* %217, i64 1
  %218 = load i8, i8* %arrayidx370, align 1
  %conv371 = zext i8 %218 to i32
  %cmp372 = icmp eq i32 %conv371, 63
  br i1 %cmp372, label %if.then.374, label %if.else.385

if.then.374:                                      ; preds = %lor.lhs.false.369, %if.end.364
  br label %do.body.375

do.body.375:                                      ; preds = %if.then.374
  %219 = load i8*, i8** %p, align 8
  %220 = load i8*, i8** %pend, align 8
  %cmp377 = icmp eq i8* %219, %220
  br i1 %cmp377, label %if.then.379, label %if.end.380

if.then.379:                                      ; preds = %do.body.375
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.380:                                       ; preds = %do.body.375
  store i32 1, i32* %len376, align 4
  %221 = load i8*, i8** %p, align 8
  %222 = load i8, i8* %221, align 1
  %conv381 = zext i8 %222 to i32
  store i32 %conv381, i32* %c, align 4
  %223 = load i32, i32* %len376, align 4
  %224 = load i8*, i8** %p, align 8
  %idx.ext382 = sext i32 %223 to i64
  %add.ptr383 = getelementptr inbounds i8, i8* %224, i64 %idx.ext382
  store i8* %add.ptr383, i8** %p, align 8
  br label %do.end.384

do.end.384:                                       ; preds = %if.end.380
  br label %if.end.386

if.else.385:                                      ; preds = %lor.lhs.false.369
  br label %for.end

if.end.386:                                       ; preds = %do.end.384
  br label %if.end.388

if.else.387:                                      ; preds = %land.lhs.true.345, %if.else.342
  br label %for.end

if.end.388:                                       ; preds = %if.end.386
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %if.then.341
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389
  br label %do.body.391

do.body.391:                                      ; preds = %if.end.390
  %225 = load i8*, i8** %p, align 8
  %226 = load i8*, i8** %pend, align 8
  %cmp393 = icmp eq i8* %225, %226
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %do.body.391
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.396:                                       ; preds = %do.body.391
  store i32 1, i32* %len392, align 4
  %227 = load i8*, i8** %p, align 8
  %228 = load i8, i8* %227, align 1
  %conv397 = zext i8 %228 to i32
  store i32 %conv397, i32* %c, align 4
  %229 = load i32, i32* %len392, align 4
  %230 = load i8*, i8** %p, align 8
  %idx.ext398 = sext i32 %229 to i64
  %add.ptr399 = getelementptr inbounds i8, i8* %230, i64 %idx.ext398
  store i8* %add.ptr399, i8** %p, align 8
  br label %do.end.400

do.end.400:                                       ; preds = %if.end.396
  br label %for.cond

for.end:                                          ; preds = %if.else.387, %if.else.385, %if.then.325
  %231 = load i8*, i8** %laststart, align 8
  %tobool401 = icmp ne i8* %231, null
  br i1 %tobool401, label %lor.lhs.false.402, label %if.then.405

lor.lhs.false.402:                                ; preds = %for.end
  %232 = load i8*, i8** %laststart, align 8
  %233 = load i8*, i8** %b, align 8
  %cmp403 = icmp eq i8* %232, %233
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %lor.lhs.false.402, %for.end
  br label %sw.epilog.4023

if.end.406:                                       ; preds = %lor.lhs.false.402
  %234 = load i8, i8* %greedy, align 1
  %tobool407 = icmp ne i8 %234, 0
  br i1 %tobool407, label %if.then.408, label %if.else.696

if.then.408:                                      ; preds = %if.end.406
  %235 = load i8, i8* %many_times_ok, align 1
  %tobool409 = icmp ne i8 %235, 0
  br i1 %tobool409, label %if.then.410, label %if.else.613

if.then.410:                                      ; preds = %if.then.408
  %236 = load i8*, i8** %laststart, align 8
  %call411 = call i8* @skip_one_char(i8* %236)
  %237 = load i8*, i8** %b, align 8
  %cmp412 = icmp eq i8* %call411, %237
  %conv413 = zext i1 %cmp412 to i32
  %conv414 = trunc i32 %conv413 to i8
  store i8 %conv414, i8* %simple, align 1
  store i64 0, i64* %startoffset, align 8
  %238 = load i8, i8* %simple, align 1
  %conv415 = sext i8 %238 to i32
  %tobool416 = icmp ne i32 %conv415, 0
  br i1 %tobool416, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.410
  %239 = load i8*, i8** %laststart, align 8
  %240 = load i8*, i8** %b, align 8
  %call417 = call i32 @analyze_first(i8* %239, i8* %240, i8* null, i32 0)
  %tobool418 = icmp ne i32 %call417, 0
  %lnot = xor i1 %tobool418, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.410
  %241 = phi i1 [ true, %if.then.410 ], [ %lnot, %lor.rhs ]
  %cond419 = select i1 %241, i32 14, i32 16
  store i32 %cond419, i32* %ofj, align 4
  %242 = load i8, i8* %zero_times_ok, align 1
  %tobool420 = icmp ne i8 %242, 0
  br i1 %tobool420, label %if.end.510, label %land.lhs.true.421

land.lhs.true.421:                                ; preds = %lor.end
  %243 = load i8, i8* %simple, align 1
  %conv422 = sext i8 %243 to i32
  %tobool423 = icmp ne i32 %conv422, 0
  br i1 %tobool423, label %if.then.424, label %if.end.510

if.then.424:                                      ; preds = %land.lhs.true.421
  %244 = load i8*, i8** %b, align 8
  %245 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast426 = ptrtoint i8* %244 to i64
  %sub.ptr.rhs.cast427 = ptrtoint i8* %245 to i64
  %sub.ptr.sub428 = sub i64 %sub.ptr.lhs.cast426, %sub.ptr.rhs.cast427
  store i64 %sub.ptr.sub428, i64* %startoffset, align 8
  br label %while.cond.429

while.cond.429:                                   ; preds = %do.end.501, %if.then.424
  %246 = load i8*, i8** %b, align 8
  %247 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer430 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %247, i32 0, i32 0
  %248 = load i8*, i8** %buffer430, align 8
  %sub.ptr.lhs.cast431 = ptrtoint i8* %246 to i64
  %sub.ptr.rhs.cast432 = ptrtoint i8* %248 to i64
  %sub.ptr.sub433 = sub i64 %sub.ptr.lhs.cast431, %sub.ptr.rhs.cast432
  %249 = load i64, i64* %startoffset, align 8
  %add434 = add i64 %sub.ptr.sub433, %249
  %250 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated435 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %250, i32 0, i32 1
  %251 = load i64, i64* %allocated435, align 8
  %cmp436 = icmp ugt i64 %add434, %251
  br i1 %cmp436, label %while.body.438, label %while.end.502

while.body.438:                                   ; preds = %while.cond.429
  br label %do.body.439

do.body.439:                                      ; preds = %while.body.438
  %252 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer441 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %252, i32 0, i32 0
  %253 = load i8*, i8** %buffer441, align 8
  store i8* %253, i8** %old_buffer440, align 8
  %254 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated442 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %254, i32 0, i32 1
  %255 = load i64, i64* %allocated442, align 8
  %cmp443 = icmp eq i64 %255, 32768
  br i1 %cmp443, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %do.body.439
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.446:                                       ; preds = %do.body.439
  %256 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated447 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %256, i32 0, i32 1
  %257 = load i64, i64* %allocated447, align 8
  %shl448 = shl i64 %257, 1
  store i64 %shl448, i64* %allocated447, align 8
  %258 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated449 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %258, i32 0, i32 1
  %259 = load i64, i64* %allocated449, align 8
  %cmp450 = icmp ugt i64 %259, 32768
  br i1 %cmp450, label %if.then.452, label %if.end.454

if.then.452:                                      ; preds = %if.end.446
  %260 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated453 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %260, i32 0, i32 1
  store i64 32768, i64* %allocated453, align 8
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.452, %if.end.446
  %261 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer455 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %261, i32 0, i32 0
  %262 = load i8*, i8** %buffer455, align 8
  %263 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated456 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %263, i32 0, i32 1
  %264 = load i64, i64* %allocated456, align 8
  %mul457 = mul i64 %264, 1
  %call458 = call i8* @xrealloc(i8* %262, i64 %mul457)
  %265 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer459 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %265, i32 0, i32 0
  store i8* %call458, i8** %buffer459, align 8
  %266 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer460 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %266, i32 0, i32 0
  %267 = load i8*, i8** %buffer460, align 8
  %cmp461 = icmp eq i8* %267, null
  br i1 %cmp461, label %if.then.463, label %if.end.464

if.then.463:                                      ; preds = %if.end.454
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.464:                                       ; preds = %if.end.454
  %268 = load i8*, i8** %old_buffer440, align 8
  %269 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer465 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %269, i32 0, i32 0
  %270 = load i8*, i8** %buffer465, align 8
  %cmp466 = icmp ne i8* %268, %270
  br i1 %cmp466, label %if.then.468, label %if.end.500

if.then.468:                                      ; preds = %if.end.464
  %271 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer470 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %271, i32 0, i32 0
  %272 = load i8*, i8** %buffer470, align 8
  store i8* %272, i8** %new_buffer469, align 8
  %273 = load i8*, i8** %new_buffer469, align 8
  %274 = load i8*, i8** %b, align 8
  %275 = load i8*, i8** %old_buffer440, align 8
  %sub.ptr.lhs.cast471 = ptrtoint i8* %274 to i64
  %sub.ptr.rhs.cast472 = ptrtoint i8* %275 to i64
  %sub.ptr.sub473 = sub i64 %sub.ptr.lhs.cast471, %sub.ptr.rhs.cast472
  %add.ptr474 = getelementptr inbounds i8, i8* %273, i64 %sub.ptr.sub473
  store i8* %add.ptr474, i8** %b, align 8
  %276 = load i8*, i8** %new_buffer469, align 8
  %277 = load i8*, i8** %begalt, align 8
  %278 = load i8*, i8** %old_buffer440, align 8
  %sub.ptr.lhs.cast475 = ptrtoint i8* %277 to i64
  %sub.ptr.rhs.cast476 = ptrtoint i8* %278 to i64
  %sub.ptr.sub477 = sub i64 %sub.ptr.lhs.cast475, %sub.ptr.rhs.cast476
  %add.ptr478 = getelementptr inbounds i8, i8* %276, i64 %sub.ptr.sub477
  store i8* %add.ptr478, i8** %begalt, align 8
  %279 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool479 = icmp ne i8* %279, null
  br i1 %tobool479, label %if.then.480, label %if.end.485

if.then.480:                                      ; preds = %if.then.468
  %280 = load i8*, i8** %new_buffer469, align 8
  %281 = load i8*, i8** %fixup_alt_jump, align 8
  %282 = load i8*, i8** %old_buffer440, align 8
  %sub.ptr.lhs.cast481 = ptrtoint i8* %281 to i64
  %sub.ptr.rhs.cast482 = ptrtoint i8* %282 to i64
  %sub.ptr.sub483 = sub i64 %sub.ptr.lhs.cast481, %sub.ptr.rhs.cast482
  %add.ptr484 = getelementptr inbounds i8, i8* %280, i64 %sub.ptr.sub483
  store i8* %add.ptr484, i8** %fixup_alt_jump, align 8
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.480, %if.then.468
  %283 = load i8*, i8** %laststart, align 8
  %tobool486 = icmp ne i8* %283, null
  br i1 %tobool486, label %if.then.487, label %if.end.492

if.then.487:                                      ; preds = %if.end.485
  %284 = load i8*, i8** %new_buffer469, align 8
  %285 = load i8*, i8** %laststart, align 8
  %286 = load i8*, i8** %old_buffer440, align 8
  %sub.ptr.lhs.cast488 = ptrtoint i8* %285 to i64
  %sub.ptr.rhs.cast489 = ptrtoint i8* %286 to i64
  %sub.ptr.sub490 = sub i64 %sub.ptr.lhs.cast488, %sub.ptr.rhs.cast489
  %add.ptr491 = getelementptr inbounds i8, i8* %284, i64 %sub.ptr.sub490
  store i8* %add.ptr491, i8** %laststart, align 8
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.487, %if.end.485
  %287 = load i8*, i8** %pending_exact, align 8
  %tobool493 = icmp ne i8* %287, null
  br i1 %tobool493, label %if.then.494, label %if.end.499

if.then.494:                                      ; preds = %if.end.492
  %288 = load i8*, i8** %new_buffer469, align 8
  %289 = load i8*, i8** %pending_exact, align 8
  %290 = load i8*, i8** %old_buffer440, align 8
  %sub.ptr.lhs.cast495 = ptrtoint i8* %289 to i64
  %sub.ptr.rhs.cast496 = ptrtoint i8* %290 to i64
  %sub.ptr.sub497 = sub i64 %sub.ptr.lhs.cast495, %sub.ptr.rhs.cast496
  %add.ptr498 = getelementptr inbounds i8, i8* %288, i64 %sub.ptr.sub497
  store i8* %add.ptr498, i8** %pending_exact, align 8
  br label %if.end.499

if.end.499:                                       ; preds = %if.then.494, %if.end.492
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %if.end.464
  br label %do.end.501

do.end.501:                                       ; preds = %if.end.500
  br label %while.cond.429

while.end.502:                                    ; preds = %while.cond.429
  %291 = load i8*, i8** %b, align 8
  store i8* %291, i8** %p1425, align 8
  %292 = load i8*, i8** %laststart, align 8
  store i8* %292, i8** %p2, align 8
  br label %while.cond.503

while.cond.503:                                   ; preds = %while.body.506, %while.end.502
  %293 = load i8*, i8** %p2, align 8
  %294 = load i8*, i8** %p1425, align 8
  %cmp504 = icmp ult i8* %293, %294
  br i1 %cmp504, label %while.body.506, label %while.end.509

while.body.506:                                   ; preds = %while.cond.503
  %295 = load i8*, i8** %p2, align 8
  %incdec.ptr507 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %incdec.ptr507, i8** %p2, align 8
  %296 = load i8, i8* %295, align 1
  %297 = load i8*, i8** %b, align 8
  %incdec.ptr508 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %incdec.ptr508, i8** %b, align 8
  store i8 %296, i8* %297, align 1
  br label %while.cond.503

while.end.509:                                    ; preds = %while.cond.503
  store i8 1, i8* %zero_times_ok, align 1
  br label %if.end.510

if.end.510:                                       ; preds = %while.end.509, %land.lhs.true.421, %lor.end
  br label %while.cond.511

while.cond.511:                                   ; preds = %do.end.583, %if.end.510
  %298 = load i8*, i8** %b, align 8
  %299 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer512 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %299, i32 0, i32 0
  %300 = load i8*, i8** %buffer512, align 8
  %sub.ptr.lhs.cast513 = ptrtoint i8* %298 to i64
  %sub.ptr.rhs.cast514 = ptrtoint i8* %300 to i64
  %sub.ptr.sub515 = sub i64 %sub.ptr.lhs.cast513, %sub.ptr.rhs.cast514
  %add516 = add nsw i64 %sub.ptr.sub515, 6
  %301 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated517 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %301, i32 0, i32 1
  %302 = load i64, i64* %allocated517, align 8
  %cmp518 = icmp ugt i64 %add516, %302
  br i1 %cmp518, label %while.body.520, label %while.end.584

while.body.520:                                   ; preds = %while.cond.511
  br label %do.body.521

do.body.521:                                      ; preds = %while.body.520
  %303 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer523 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %303, i32 0, i32 0
  %304 = load i8*, i8** %buffer523, align 8
  store i8* %304, i8** %old_buffer522, align 8
  %305 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated524 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %305, i32 0, i32 1
  %306 = load i64, i64* %allocated524, align 8
  %cmp525 = icmp eq i64 %306, 32768
  br i1 %cmp525, label %if.then.527, label %if.end.528

if.then.527:                                      ; preds = %do.body.521
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.528:                                       ; preds = %do.body.521
  %307 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated529 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %307, i32 0, i32 1
  %308 = load i64, i64* %allocated529, align 8
  %shl530 = shl i64 %308, 1
  store i64 %shl530, i64* %allocated529, align 8
  %309 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated531 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %309, i32 0, i32 1
  %310 = load i64, i64* %allocated531, align 8
  %cmp532 = icmp ugt i64 %310, 32768
  br i1 %cmp532, label %if.then.534, label %if.end.536

if.then.534:                                      ; preds = %if.end.528
  %311 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated535 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %311, i32 0, i32 1
  store i64 32768, i64* %allocated535, align 8
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.534, %if.end.528
  %312 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer537 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %312, i32 0, i32 0
  %313 = load i8*, i8** %buffer537, align 8
  %314 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated538 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %314, i32 0, i32 1
  %315 = load i64, i64* %allocated538, align 8
  %mul539 = mul i64 %315, 1
  %call540 = call i8* @xrealloc(i8* %313, i64 %mul539)
  %316 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer541 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %316, i32 0, i32 0
  store i8* %call540, i8** %buffer541, align 8
  %317 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer542 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %317, i32 0, i32 0
  %318 = load i8*, i8** %buffer542, align 8
  %cmp543 = icmp eq i8* %318, null
  br i1 %cmp543, label %if.then.545, label %if.end.546

if.then.545:                                      ; preds = %if.end.536
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.546:                                       ; preds = %if.end.536
  %319 = load i8*, i8** %old_buffer522, align 8
  %320 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer547 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %320, i32 0, i32 0
  %321 = load i8*, i8** %buffer547, align 8
  %cmp548 = icmp ne i8* %319, %321
  br i1 %cmp548, label %if.then.550, label %if.end.582

if.then.550:                                      ; preds = %if.end.546
  %322 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer552 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %322, i32 0, i32 0
  %323 = load i8*, i8** %buffer552, align 8
  store i8* %323, i8** %new_buffer551, align 8
  %324 = load i8*, i8** %new_buffer551, align 8
  %325 = load i8*, i8** %b, align 8
  %326 = load i8*, i8** %old_buffer522, align 8
  %sub.ptr.lhs.cast553 = ptrtoint i8* %325 to i64
  %sub.ptr.rhs.cast554 = ptrtoint i8* %326 to i64
  %sub.ptr.sub555 = sub i64 %sub.ptr.lhs.cast553, %sub.ptr.rhs.cast554
  %add.ptr556 = getelementptr inbounds i8, i8* %324, i64 %sub.ptr.sub555
  store i8* %add.ptr556, i8** %b, align 8
  %327 = load i8*, i8** %new_buffer551, align 8
  %328 = load i8*, i8** %begalt, align 8
  %329 = load i8*, i8** %old_buffer522, align 8
  %sub.ptr.lhs.cast557 = ptrtoint i8* %328 to i64
  %sub.ptr.rhs.cast558 = ptrtoint i8* %329 to i64
  %sub.ptr.sub559 = sub i64 %sub.ptr.lhs.cast557, %sub.ptr.rhs.cast558
  %add.ptr560 = getelementptr inbounds i8, i8* %327, i64 %sub.ptr.sub559
  store i8* %add.ptr560, i8** %begalt, align 8
  %330 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool561 = icmp ne i8* %330, null
  br i1 %tobool561, label %if.then.562, label %if.end.567

if.then.562:                                      ; preds = %if.then.550
  %331 = load i8*, i8** %new_buffer551, align 8
  %332 = load i8*, i8** %fixup_alt_jump, align 8
  %333 = load i8*, i8** %old_buffer522, align 8
  %sub.ptr.lhs.cast563 = ptrtoint i8* %332 to i64
  %sub.ptr.rhs.cast564 = ptrtoint i8* %333 to i64
  %sub.ptr.sub565 = sub i64 %sub.ptr.lhs.cast563, %sub.ptr.rhs.cast564
  %add.ptr566 = getelementptr inbounds i8, i8* %331, i64 %sub.ptr.sub565
  store i8* %add.ptr566, i8** %fixup_alt_jump, align 8
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.562, %if.then.550
  %334 = load i8*, i8** %laststart, align 8
  %tobool568 = icmp ne i8* %334, null
  br i1 %tobool568, label %if.then.569, label %if.end.574

if.then.569:                                      ; preds = %if.end.567
  %335 = load i8*, i8** %new_buffer551, align 8
  %336 = load i8*, i8** %laststart, align 8
  %337 = load i8*, i8** %old_buffer522, align 8
  %sub.ptr.lhs.cast570 = ptrtoint i8* %336 to i64
  %sub.ptr.rhs.cast571 = ptrtoint i8* %337 to i64
  %sub.ptr.sub572 = sub i64 %sub.ptr.lhs.cast570, %sub.ptr.rhs.cast571
  %add.ptr573 = getelementptr inbounds i8, i8* %335, i64 %sub.ptr.sub572
  store i8* %add.ptr573, i8** %laststart, align 8
  br label %if.end.574

if.end.574:                                       ; preds = %if.then.569, %if.end.567
  %338 = load i8*, i8** %pending_exact, align 8
  %tobool575 = icmp ne i8* %338, null
  br i1 %tobool575, label %if.then.576, label %if.end.581

if.then.576:                                      ; preds = %if.end.574
  %339 = load i8*, i8** %new_buffer551, align 8
  %340 = load i8*, i8** %pending_exact, align 8
  %341 = load i8*, i8** %old_buffer522, align 8
  %sub.ptr.lhs.cast577 = ptrtoint i8* %340 to i64
  %sub.ptr.rhs.cast578 = ptrtoint i8* %341 to i64
  %sub.ptr.sub579 = sub i64 %sub.ptr.lhs.cast577, %sub.ptr.rhs.cast578
  %add.ptr580 = getelementptr inbounds i8, i8* %339, i64 %sub.ptr.sub579
  store i8* %add.ptr580, i8** %pending_exact, align 8
  br label %if.end.581

if.end.581:                                       ; preds = %if.then.576, %if.end.574
  br label %if.end.582

if.end.582:                                       ; preds = %if.end.581, %if.end.546
  br label %do.end.583

do.end.583:                                       ; preds = %if.end.582
  br label %while.cond.511

while.end.584:                                    ; preds = %while.cond.511
  %342 = load i8, i8* %zero_times_ok, align 1
  %tobool585 = icmp ne i8 %342, 0
  br i1 %tobool585, label %if.else.592, label %if.then.586

if.then.586:                                      ; preds = %while.end.584
  %343 = load i32, i32* %ofj, align 4
  %344 = load i8*, i8** %b, align 8
  %345 = load i8*, i8** %b, align 8
  %add.ptr587 = getelementptr inbounds i8, i8* %345, i64 6
  %346 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast588 = ptrtoint i8* %add.ptr587 to i64
  %sub.ptr.rhs.cast589 = ptrtoint i8* %346 to i64
  %sub.ptr.sub590 = sub i64 %sub.ptr.lhs.cast588, %sub.ptr.rhs.cast589
  %sub = sub nsw i64 %sub.ptr.sub590, 3
  %conv591 = trunc i64 %sub to i32
  call void @store_op1(i32 %343, i8* %344, i32 %conv591)
  br label %if.end.604

if.else.592:                                      ; preds = %while.end.584
  %347 = load i8, i8* %simple, align 1
  %conv593 = sext i8 %347 to i32
  %tobool594 = icmp ne i32 %conv593, 0
  br i1 %tobool594, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.592
  br label %cond.end

cond.false:                                       ; preds = %if.else.592
  %348 = load i32, i32* %ofj, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond595 = phi i32 [ 18, %cond.true ], [ %348, %cond.false ]
  %349 = load i8*, i8** %laststart, align 8
  %350 = load i64, i64* %startoffset, align 8
  %add.ptr596 = getelementptr inbounds i8, i8* %349, i64 %350
  %351 = load i8*, i8** %b, align 8
  %add.ptr597 = getelementptr inbounds i8, i8* %351, i64 6
  %352 = load i8*, i8** %laststart, align 8
  %353 = load i64, i64* %startoffset, align 8
  %add.ptr598 = getelementptr inbounds i8, i8* %352, i64 %353
  %sub.ptr.lhs.cast599 = ptrtoint i8* %add.ptr597 to i64
  %sub.ptr.rhs.cast600 = ptrtoint i8* %add.ptr598 to i64
  %sub.ptr.sub601 = sub i64 %sub.ptr.lhs.cast599, %sub.ptr.rhs.cast600
  %sub602 = sub nsw i64 %sub.ptr.sub601, 3
  %conv603 = trunc i64 %sub602 to i32
  %354 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 %cond595, i8* %add.ptr596, i32 %conv603, i8* %354)
  br label %if.end.604

if.end.604:                                       ; preds = %cond.end, %if.then.586
  %355 = load i8*, i8** %b, align 8
  %add.ptr605 = getelementptr inbounds i8, i8* %355, i64 3
  store i8* %add.ptr605, i8** %b, align 8
  %356 = load i8*, i8** %b, align 8
  %357 = load i8*, i8** %laststart, align 8
  %358 = load i64, i64* %startoffset, align 8
  %add.ptr606 = getelementptr inbounds i8, i8* %357, i64 %358
  %359 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast607 = ptrtoint i8* %add.ptr606 to i64
  %sub.ptr.rhs.cast608 = ptrtoint i8* %359 to i64
  %sub.ptr.sub609 = sub i64 %sub.ptr.lhs.cast607, %sub.ptr.rhs.cast608
  %sub610 = sub nsw i64 %sub.ptr.sub609, 3
  %conv611 = trunc i64 %sub610 to i32
  call void @store_op1(i32 13, i8* %356, i32 %conv611)
  %360 = load i8*, i8** %b, align 8
  %add.ptr612 = getelementptr inbounds i8, i8* %360, i64 3
  store i8* %add.ptr612, i8** %b, align 8
  br label %if.end.695

if.else.613:                                      ; preds = %if.then.408
  br label %while.cond.614

while.cond.614:                                   ; preds = %do.end.686, %if.else.613
  %361 = load i8*, i8** %b, align 8
  %362 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer615 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %362, i32 0, i32 0
  %363 = load i8*, i8** %buffer615, align 8
  %sub.ptr.lhs.cast616 = ptrtoint i8* %361 to i64
  %sub.ptr.rhs.cast617 = ptrtoint i8* %363 to i64
  %sub.ptr.sub618 = sub i64 %sub.ptr.lhs.cast616, %sub.ptr.rhs.cast617
  %add619 = add nsw i64 %sub.ptr.sub618, 3
  %364 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated620 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %364, i32 0, i32 1
  %365 = load i64, i64* %allocated620, align 8
  %cmp621 = icmp ugt i64 %add619, %365
  br i1 %cmp621, label %while.body.623, label %while.end.687

while.body.623:                                   ; preds = %while.cond.614
  br label %do.body.624

do.body.624:                                      ; preds = %while.body.623
  %366 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer626 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %366, i32 0, i32 0
  %367 = load i8*, i8** %buffer626, align 8
  store i8* %367, i8** %old_buffer625, align 8
  %368 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated627 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %368, i32 0, i32 1
  %369 = load i64, i64* %allocated627, align 8
  %cmp628 = icmp eq i64 %369, 32768
  br i1 %cmp628, label %if.then.630, label %if.end.631

if.then.630:                                      ; preds = %do.body.624
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.631:                                       ; preds = %do.body.624
  %370 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated632 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %370, i32 0, i32 1
  %371 = load i64, i64* %allocated632, align 8
  %shl633 = shl i64 %371, 1
  store i64 %shl633, i64* %allocated632, align 8
  %372 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated634 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %372, i32 0, i32 1
  %373 = load i64, i64* %allocated634, align 8
  %cmp635 = icmp ugt i64 %373, 32768
  br i1 %cmp635, label %if.then.637, label %if.end.639

if.then.637:                                      ; preds = %if.end.631
  %374 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated638 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %374, i32 0, i32 1
  store i64 32768, i64* %allocated638, align 8
  br label %if.end.639

if.end.639:                                       ; preds = %if.then.637, %if.end.631
  %375 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer640 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %375, i32 0, i32 0
  %376 = load i8*, i8** %buffer640, align 8
  %377 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated641 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %377, i32 0, i32 1
  %378 = load i64, i64* %allocated641, align 8
  %mul642 = mul i64 %378, 1
  %call643 = call i8* @xrealloc(i8* %376, i64 %mul642)
  %379 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer644 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %379, i32 0, i32 0
  store i8* %call643, i8** %buffer644, align 8
  %380 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer645 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %380, i32 0, i32 0
  %381 = load i8*, i8** %buffer645, align 8
  %cmp646 = icmp eq i8* %381, null
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %if.end.639
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.649:                                       ; preds = %if.end.639
  %382 = load i8*, i8** %old_buffer625, align 8
  %383 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer650 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %383, i32 0, i32 0
  %384 = load i8*, i8** %buffer650, align 8
  %cmp651 = icmp ne i8* %382, %384
  br i1 %cmp651, label %if.then.653, label %if.end.685

if.then.653:                                      ; preds = %if.end.649
  %385 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer655 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %385, i32 0, i32 0
  %386 = load i8*, i8** %buffer655, align 8
  store i8* %386, i8** %new_buffer654, align 8
  %387 = load i8*, i8** %new_buffer654, align 8
  %388 = load i8*, i8** %b, align 8
  %389 = load i8*, i8** %old_buffer625, align 8
  %sub.ptr.lhs.cast656 = ptrtoint i8* %388 to i64
  %sub.ptr.rhs.cast657 = ptrtoint i8* %389 to i64
  %sub.ptr.sub658 = sub i64 %sub.ptr.lhs.cast656, %sub.ptr.rhs.cast657
  %add.ptr659 = getelementptr inbounds i8, i8* %387, i64 %sub.ptr.sub658
  store i8* %add.ptr659, i8** %b, align 8
  %390 = load i8*, i8** %new_buffer654, align 8
  %391 = load i8*, i8** %begalt, align 8
  %392 = load i8*, i8** %old_buffer625, align 8
  %sub.ptr.lhs.cast660 = ptrtoint i8* %391 to i64
  %sub.ptr.rhs.cast661 = ptrtoint i8* %392 to i64
  %sub.ptr.sub662 = sub i64 %sub.ptr.lhs.cast660, %sub.ptr.rhs.cast661
  %add.ptr663 = getelementptr inbounds i8, i8* %390, i64 %sub.ptr.sub662
  store i8* %add.ptr663, i8** %begalt, align 8
  %393 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool664 = icmp ne i8* %393, null
  br i1 %tobool664, label %if.then.665, label %if.end.670

if.then.665:                                      ; preds = %if.then.653
  %394 = load i8*, i8** %new_buffer654, align 8
  %395 = load i8*, i8** %fixup_alt_jump, align 8
  %396 = load i8*, i8** %old_buffer625, align 8
  %sub.ptr.lhs.cast666 = ptrtoint i8* %395 to i64
  %sub.ptr.rhs.cast667 = ptrtoint i8* %396 to i64
  %sub.ptr.sub668 = sub i64 %sub.ptr.lhs.cast666, %sub.ptr.rhs.cast667
  %add.ptr669 = getelementptr inbounds i8, i8* %394, i64 %sub.ptr.sub668
  store i8* %add.ptr669, i8** %fixup_alt_jump, align 8
  br label %if.end.670

if.end.670:                                       ; preds = %if.then.665, %if.then.653
  %397 = load i8*, i8** %laststart, align 8
  %tobool671 = icmp ne i8* %397, null
  br i1 %tobool671, label %if.then.672, label %if.end.677

if.then.672:                                      ; preds = %if.end.670
  %398 = load i8*, i8** %new_buffer654, align 8
  %399 = load i8*, i8** %laststart, align 8
  %400 = load i8*, i8** %old_buffer625, align 8
  %sub.ptr.lhs.cast673 = ptrtoint i8* %399 to i64
  %sub.ptr.rhs.cast674 = ptrtoint i8* %400 to i64
  %sub.ptr.sub675 = sub i64 %sub.ptr.lhs.cast673, %sub.ptr.rhs.cast674
  %add.ptr676 = getelementptr inbounds i8, i8* %398, i64 %sub.ptr.sub675
  store i8* %add.ptr676, i8** %laststart, align 8
  br label %if.end.677

if.end.677:                                       ; preds = %if.then.672, %if.end.670
  %401 = load i8*, i8** %pending_exact, align 8
  %tobool678 = icmp ne i8* %401, null
  br i1 %tobool678, label %if.then.679, label %if.end.684

if.then.679:                                      ; preds = %if.end.677
  %402 = load i8*, i8** %new_buffer654, align 8
  %403 = load i8*, i8** %pending_exact, align 8
  %404 = load i8*, i8** %old_buffer625, align 8
  %sub.ptr.lhs.cast680 = ptrtoint i8* %403 to i64
  %sub.ptr.rhs.cast681 = ptrtoint i8* %404 to i64
  %sub.ptr.sub682 = sub i64 %sub.ptr.lhs.cast680, %sub.ptr.rhs.cast681
  %add.ptr683 = getelementptr inbounds i8, i8* %402, i64 %sub.ptr.sub682
  store i8* %add.ptr683, i8** %pending_exact, align 8
  br label %if.end.684

if.end.684:                                       ; preds = %if.then.679, %if.end.677
  br label %if.end.685

if.end.685:                                       ; preds = %if.end.684, %if.end.649
  br label %do.end.686

do.end.686:                                       ; preds = %if.end.685
  br label %while.cond.614

while.end.687:                                    ; preds = %while.cond.614
  %405 = load i8*, i8** %laststart, align 8
  %406 = load i8*, i8** %b, align 8
  %add.ptr688 = getelementptr inbounds i8, i8* %406, i64 3
  %407 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast689 = ptrtoint i8* %add.ptr688 to i64
  %sub.ptr.rhs.cast690 = ptrtoint i8* %407 to i64
  %sub.ptr.sub691 = sub i64 %sub.ptr.lhs.cast689, %sub.ptr.rhs.cast690
  %sub692 = sub nsw i64 %sub.ptr.sub691, 3
  %conv693 = trunc i64 %sub692 to i32
  %408 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 14, i8* %405, i32 %conv693, i8* %408)
  %409 = load i8*, i8** %b, align 8
  %add.ptr694 = getelementptr inbounds i8, i8* %409, i64 3
  store i8* %add.ptr694, i8** %b, align 8
  br label %if.end.695

if.end.695:                                       ; preds = %while.end.687, %if.end.604
  br label %if.end.889

if.else.696:                                      ; preds = %if.end.406
  br label %while.cond.697

while.cond.697:                                   ; preds = %do.end.769, %if.else.696
  %410 = load i8*, i8** %b, align 8
  %411 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer698 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %411, i32 0, i32 0
  %412 = load i8*, i8** %buffer698, align 8
  %sub.ptr.lhs.cast699 = ptrtoint i8* %410 to i64
  %sub.ptr.rhs.cast700 = ptrtoint i8* %412 to i64
  %sub.ptr.sub701 = sub i64 %sub.ptr.lhs.cast699, %sub.ptr.rhs.cast700
  %add702 = add nsw i64 %sub.ptr.sub701, 7
  %413 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated703 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %413, i32 0, i32 1
  %414 = load i64, i64* %allocated703, align 8
  %cmp704 = icmp ugt i64 %add702, %414
  br i1 %cmp704, label %while.body.706, label %while.end.770

while.body.706:                                   ; preds = %while.cond.697
  br label %do.body.707

do.body.707:                                      ; preds = %while.body.706
  %415 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer709 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %415, i32 0, i32 0
  %416 = load i8*, i8** %buffer709, align 8
  store i8* %416, i8** %old_buffer708, align 8
  %417 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated710 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %417, i32 0, i32 1
  %418 = load i64, i64* %allocated710, align 8
  %cmp711 = icmp eq i64 %418, 32768
  br i1 %cmp711, label %if.then.713, label %if.end.714

if.then.713:                                      ; preds = %do.body.707
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.714:                                       ; preds = %do.body.707
  %419 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated715 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %419, i32 0, i32 1
  %420 = load i64, i64* %allocated715, align 8
  %shl716 = shl i64 %420, 1
  store i64 %shl716, i64* %allocated715, align 8
  %421 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated717 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %421, i32 0, i32 1
  %422 = load i64, i64* %allocated717, align 8
  %cmp718 = icmp ugt i64 %422, 32768
  br i1 %cmp718, label %if.then.720, label %if.end.722

if.then.720:                                      ; preds = %if.end.714
  %423 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated721 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %423, i32 0, i32 1
  store i64 32768, i64* %allocated721, align 8
  br label %if.end.722

if.end.722:                                       ; preds = %if.then.720, %if.end.714
  %424 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer723 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %424, i32 0, i32 0
  %425 = load i8*, i8** %buffer723, align 8
  %426 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated724 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %426, i32 0, i32 1
  %427 = load i64, i64* %allocated724, align 8
  %mul725 = mul i64 %427, 1
  %call726 = call i8* @xrealloc(i8* %425, i64 %mul725)
  %428 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer727 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %428, i32 0, i32 0
  store i8* %call726, i8** %buffer727, align 8
  %429 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer728 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %429, i32 0, i32 0
  %430 = load i8*, i8** %buffer728, align 8
  %cmp729 = icmp eq i8* %430, null
  br i1 %cmp729, label %if.then.731, label %if.end.732

if.then.731:                                      ; preds = %if.end.722
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.732:                                       ; preds = %if.end.722
  %431 = load i8*, i8** %old_buffer708, align 8
  %432 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer733 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %432, i32 0, i32 0
  %433 = load i8*, i8** %buffer733, align 8
  %cmp734 = icmp ne i8* %431, %433
  br i1 %cmp734, label %if.then.736, label %if.end.768

if.then.736:                                      ; preds = %if.end.732
  %434 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer738 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %434, i32 0, i32 0
  %435 = load i8*, i8** %buffer738, align 8
  store i8* %435, i8** %new_buffer737, align 8
  %436 = load i8*, i8** %new_buffer737, align 8
  %437 = load i8*, i8** %b, align 8
  %438 = load i8*, i8** %old_buffer708, align 8
  %sub.ptr.lhs.cast739 = ptrtoint i8* %437 to i64
  %sub.ptr.rhs.cast740 = ptrtoint i8* %438 to i64
  %sub.ptr.sub741 = sub i64 %sub.ptr.lhs.cast739, %sub.ptr.rhs.cast740
  %add.ptr742 = getelementptr inbounds i8, i8* %436, i64 %sub.ptr.sub741
  store i8* %add.ptr742, i8** %b, align 8
  %439 = load i8*, i8** %new_buffer737, align 8
  %440 = load i8*, i8** %begalt, align 8
  %441 = load i8*, i8** %old_buffer708, align 8
  %sub.ptr.lhs.cast743 = ptrtoint i8* %440 to i64
  %sub.ptr.rhs.cast744 = ptrtoint i8* %441 to i64
  %sub.ptr.sub745 = sub i64 %sub.ptr.lhs.cast743, %sub.ptr.rhs.cast744
  %add.ptr746 = getelementptr inbounds i8, i8* %439, i64 %sub.ptr.sub745
  store i8* %add.ptr746, i8** %begalt, align 8
  %442 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool747 = icmp ne i8* %442, null
  br i1 %tobool747, label %if.then.748, label %if.end.753

if.then.748:                                      ; preds = %if.then.736
  %443 = load i8*, i8** %new_buffer737, align 8
  %444 = load i8*, i8** %fixup_alt_jump, align 8
  %445 = load i8*, i8** %old_buffer708, align 8
  %sub.ptr.lhs.cast749 = ptrtoint i8* %444 to i64
  %sub.ptr.rhs.cast750 = ptrtoint i8* %445 to i64
  %sub.ptr.sub751 = sub i64 %sub.ptr.lhs.cast749, %sub.ptr.rhs.cast750
  %add.ptr752 = getelementptr inbounds i8, i8* %443, i64 %sub.ptr.sub751
  store i8* %add.ptr752, i8** %fixup_alt_jump, align 8
  br label %if.end.753

if.end.753:                                       ; preds = %if.then.748, %if.then.736
  %446 = load i8*, i8** %laststart, align 8
  %tobool754 = icmp ne i8* %446, null
  br i1 %tobool754, label %if.then.755, label %if.end.760

if.then.755:                                      ; preds = %if.end.753
  %447 = load i8*, i8** %new_buffer737, align 8
  %448 = load i8*, i8** %laststart, align 8
  %449 = load i8*, i8** %old_buffer708, align 8
  %sub.ptr.lhs.cast756 = ptrtoint i8* %448 to i64
  %sub.ptr.rhs.cast757 = ptrtoint i8* %449 to i64
  %sub.ptr.sub758 = sub i64 %sub.ptr.lhs.cast756, %sub.ptr.rhs.cast757
  %add.ptr759 = getelementptr inbounds i8, i8* %447, i64 %sub.ptr.sub758
  store i8* %add.ptr759, i8** %laststart, align 8
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.755, %if.end.753
  %450 = load i8*, i8** %pending_exact, align 8
  %tobool761 = icmp ne i8* %450, null
  br i1 %tobool761, label %if.then.762, label %if.end.767

if.then.762:                                      ; preds = %if.end.760
  %451 = load i8*, i8** %new_buffer737, align 8
  %452 = load i8*, i8** %pending_exact, align 8
  %453 = load i8*, i8** %old_buffer708, align 8
  %sub.ptr.lhs.cast763 = ptrtoint i8* %452 to i64
  %sub.ptr.rhs.cast764 = ptrtoint i8* %453 to i64
  %sub.ptr.sub765 = sub i64 %sub.ptr.lhs.cast763, %sub.ptr.rhs.cast764
  %add.ptr766 = getelementptr inbounds i8, i8* %451, i64 %sub.ptr.sub765
  store i8* %add.ptr766, i8** %pending_exact, align 8
  br label %if.end.767

if.end.767:                                       ; preds = %if.then.762, %if.end.760
  br label %if.end.768

if.end.768:                                       ; preds = %if.end.767, %if.end.732
  br label %do.end.769

do.end.769:                                       ; preds = %if.end.768
  br label %while.cond.697

while.end.770:                                    ; preds = %while.cond.697
  %454 = load i8, i8* %many_times_ok, align 1
  %tobool771 = icmp ne i8 %454, 0
  br i1 %tobool771, label %if.then.772, label %if.else.873

if.then.772:                                      ; preds = %while.end.770
  %455 = load i8*, i8** %laststart, align 8
  %456 = load i8*, i8** %b, align 8
  %call773 = call i32 @analyze_first(i8* %455, i8* %456, i8* null, i32 0)
  %conv774 = trunc i32 %call773 to i8
  store i8 %conv774, i8* %emptyp, align 1
  %457 = load i8, i8* %emptyp, align 1
  %tobool775 = icmp ne i8 %457, 0
  br i1 %tobool775, label %if.then.776, label %if.end.854

if.then.776:                                      ; preds = %if.then.772
  br label %do.body.777

do.body.777:                                      ; preds = %if.then.776
  br label %while.cond.778

while.cond.778:                                   ; preds = %do.end.850, %do.body.777
  %458 = load i8*, i8** %b, align 8
  %459 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer779 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %459, i32 0, i32 0
  %460 = load i8*, i8** %buffer779, align 8
  %sub.ptr.lhs.cast780 = ptrtoint i8* %458 to i64
  %sub.ptr.rhs.cast781 = ptrtoint i8* %460 to i64
  %sub.ptr.sub782 = sub i64 %sub.ptr.lhs.cast780, %sub.ptr.rhs.cast781
  %add783 = add nsw i64 %sub.ptr.sub782, 1
  %461 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated784 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %461, i32 0, i32 1
  %462 = load i64, i64* %allocated784, align 8
  %cmp785 = icmp ugt i64 %add783, %462
  br i1 %cmp785, label %while.body.787, label %while.end.851

while.body.787:                                   ; preds = %while.cond.778
  br label %do.body.788

do.body.788:                                      ; preds = %while.body.787
  %463 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer790 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %463, i32 0, i32 0
  %464 = load i8*, i8** %buffer790, align 8
  store i8* %464, i8** %old_buffer789, align 8
  %465 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated791 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %465, i32 0, i32 1
  %466 = load i64, i64* %allocated791, align 8
  %cmp792 = icmp eq i64 %466, 32768
  br i1 %cmp792, label %if.then.794, label %if.end.795

if.then.794:                                      ; preds = %do.body.788
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.795:                                       ; preds = %do.body.788
  %467 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated796 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %467, i32 0, i32 1
  %468 = load i64, i64* %allocated796, align 8
  %shl797 = shl i64 %468, 1
  store i64 %shl797, i64* %allocated796, align 8
  %469 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated798 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %469, i32 0, i32 1
  %470 = load i64, i64* %allocated798, align 8
  %cmp799 = icmp ugt i64 %470, 32768
  br i1 %cmp799, label %if.then.801, label %if.end.803

if.then.801:                                      ; preds = %if.end.795
  %471 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated802 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %471, i32 0, i32 1
  store i64 32768, i64* %allocated802, align 8
  br label %if.end.803

if.end.803:                                       ; preds = %if.then.801, %if.end.795
  %472 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer804 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %472, i32 0, i32 0
  %473 = load i8*, i8** %buffer804, align 8
  %474 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated805 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %474, i32 0, i32 1
  %475 = load i64, i64* %allocated805, align 8
  %mul806 = mul i64 %475, 1
  %call807 = call i8* @xrealloc(i8* %473, i64 %mul806)
  %476 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer808 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %476, i32 0, i32 0
  store i8* %call807, i8** %buffer808, align 8
  %477 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer809 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %477, i32 0, i32 0
  %478 = load i8*, i8** %buffer809, align 8
  %cmp810 = icmp eq i8* %478, null
  br i1 %cmp810, label %if.then.812, label %if.end.813

if.then.812:                                      ; preds = %if.end.803
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.813:                                       ; preds = %if.end.803
  %479 = load i8*, i8** %old_buffer789, align 8
  %480 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer814 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %480, i32 0, i32 0
  %481 = load i8*, i8** %buffer814, align 8
  %cmp815 = icmp ne i8* %479, %481
  br i1 %cmp815, label %if.then.817, label %if.end.849

if.then.817:                                      ; preds = %if.end.813
  %482 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer819 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %482, i32 0, i32 0
  %483 = load i8*, i8** %buffer819, align 8
  store i8* %483, i8** %new_buffer818, align 8
  %484 = load i8*, i8** %new_buffer818, align 8
  %485 = load i8*, i8** %b, align 8
  %486 = load i8*, i8** %old_buffer789, align 8
  %sub.ptr.lhs.cast820 = ptrtoint i8* %485 to i64
  %sub.ptr.rhs.cast821 = ptrtoint i8* %486 to i64
  %sub.ptr.sub822 = sub i64 %sub.ptr.lhs.cast820, %sub.ptr.rhs.cast821
  %add.ptr823 = getelementptr inbounds i8, i8* %484, i64 %sub.ptr.sub822
  store i8* %add.ptr823, i8** %b, align 8
  %487 = load i8*, i8** %new_buffer818, align 8
  %488 = load i8*, i8** %begalt, align 8
  %489 = load i8*, i8** %old_buffer789, align 8
  %sub.ptr.lhs.cast824 = ptrtoint i8* %488 to i64
  %sub.ptr.rhs.cast825 = ptrtoint i8* %489 to i64
  %sub.ptr.sub826 = sub i64 %sub.ptr.lhs.cast824, %sub.ptr.rhs.cast825
  %add.ptr827 = getelementptr inbounds i8, i8* %487, i64 %sub.ptr.sub826
  store i8* %add.ptr827, i8** %begalt, align 8
  %490 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool828 = icmp ne i8* %490, null
  br i1 %tobool828, label %if.then.829, label %if.end.834

if.then.829:                                      ; preds = %if.then.817
  %491 = load i8*, i8** %new_buffer818, align 8
  %492 = load i8*, i8** %fixup_alt_jump, align 8
  %493 = load i8*, i8** %old_buffer789, align 8
  %sub.ptr.lhs.cast830 = ptrtoint i8* %492 to i64
  %sub.ptr.rhs.cast831 = ptrtoint i8* %493 to i64
  %sub.ptr.sub832 = sub i64 %sub.ptr.lhs.cast830, %sub.ptr.rhs.cast831
  %add.ptr833 = getelementptr inbounds i8, i8* %491, i64 %sub.ptr.sub832
  store i8* %add.ptr833, i8** %fixup_alt_jump, align 8
  br label %if.end.834

if.end.834:                                       ; preds = %if.then.829, %if.then.817
  %494 = load i8*, i8** %laststart, align 8
  %tobool835 = icmp ne i8* %494, null
  br i1 %tobool835, label %if.then.836, label %if.end.841

if.then.836:                                      ; preds = %if.end.834
  %495 = load i8*, i8** %new_buffer818, align 8
  %496 = load i8*, i8** %laststart, align 8
  %497 = load i8*, i8** %old_buffer789, align 8
  %sub.ptr.lhs.cast837 = ptrtoint i8* %496 to i64
  %sub.ptr.rhs.cast838 = ptrtoint i8* %497 to i64
  %sub.ptr.sub839 = sub i64 %sub.ptr.lhs.cast837, %sub.ptr.rhs.cast838
  %add.ptr840 = getelementptr inbounds i8, i8* %495, i64 %sub.ptr.sub839
  store i8* %add.ptr840, i8** %laststart, align 8
  br label %if.end.841

if.end.841:                                       ; preds = %if.then.836, %if.end.834
  %498 = load i8*, i8** %pending_exact, align 8
  %tobool842 = icmp ne i8* %498, null
  br i1 %tobool842, label %if.then.843, label %if.end.848

if.then.843:                                      ; preds = %if.end.841
  %499 = load i8*, i8** %new_buffer818, align 8
  %500 = load i8*, i8** %pending_exact, align 8
  %501 = load i8*, i8** %old_buffer789, align 8
  %sub.ptr.lhs.cast844 = ptrtoint i8* %500 to i64
  %sub.ptr.rhs.cast845 = ptrtoint i8* %501 to i64
  %sub.ptr.sub846 = sub i64 %sub.ptr.lhs.cast844, %sub.ptr.rhs.cast845
  %add.ptr847 = getelementptr inbounds i8, i8* %499, i64 %sub.ptr.sub846
  store i8* %add.ptr847, i8** %pending_exact, align 8
  br label %if.end.848

if.end.848:                                       ; preds = %if.then.843, %if.end.841
  br label %if.end.849

if.end.849:                                       ; preds = %if.end.848, %if.end.813
  br label %do.end.850

do.end.850:                                       ; preds = %if.end.849
  br label %while.cond.778

while.end.851:                                    ; preds = %while.cond.778
  %502 = load i8*, i8** %b, align 8
  %incdec.ptr852 = getelementptr inbounds i8, i8* %502, i32 1
  store i8* %incdec.ptr852, i8** %b, align 8
  store i8 0, i8* %502, align 1
  br label %do.end.853

do.end.853:                                       ; preds = %while.end.851
  br label %if.end.854

if.end.854:                                       ; preds = %do.end.853, %if.then.772
  %503 = load i8, i8* %emptyp, align 1
  %conv855 = sext i8 %503 to i32
  %tobool856 = icmp ne i32 %conv855, 0
  %cond857 = select i1 %tobool856, i32 17, i32 14
  %504 = load i8*, i8** %b, align 8
  %505 = load i8*, i8** %laststart, align 8
  %506 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast858 = ptrtoint i8* %505 to i64
  %sub.ptr.rhs.cast859 = ptrtoint i8* %506 to i64
  %sub.ptr.sub860 = sub i64 %sub.ptr.lhs.cast858, %sub.ptr.rhs.cast859
  %sub861 = sub nsw i64 %sub.ptr.sub860, 3
  %conv862 = trunc i64 %sub861 to i32
  call void @store_op1(i32 %cond857, i8* %504, i32 %conv862)
  %507 = load i8*, i8** %b, align 8
  %add.ptr863 = getelementptr inbounds i8, i8* %507, i64 3
  store i8* %add.ptr863, i8** %b, align 8
  %508 = load i8, i8* %zero_times_ok, align 1
  %tobool864 = icmp ne i8 %508, 0
  br i1 %tobool864, label %if.then.865, label %if.end.872

if.then.865:                                      ; preds = %if.end.854
  %509 = load i8*, i8** %laststart, align 8
  %510 = load i8*, i8** %b, align 8
  %511 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast866 = ptrtoint i8* %510 to i64
  %sub.ptr.rhs.cast867 = ptrtoint i8* %511 to i64
  %sub.ptr.sub868 = sub i64 %sub.ptr.lhs.cast866, %sub.ptr.rhs.cast867
  %sub869 = sub nsw i64 %sub.ptr.sub868, 3
  %conv870 = trunc i64 %sub869 to i32
  %512 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 13, i8* %509, i32 %conv870, i8* %512)
  %513 = load i8*, i8** %b, align 8
  %add.ptr871 = getelementptr inbounds i8, i8* %513, i64 3
  store i8* %add.ptr871, i8** %b, align 8
  br label %if.end.872

if.end.872:                                       ; preds = %if.then.865, %if.end.854
  br label %if.end.888

if.else.873:                                      ; preds = %while.end.770
  %514 = load i8*, i8** %laststart, align 8
  %515 = load i8*, i8** %b, align 8
  %add.ptr874 = getelementptr inbounds i8, i8* %515, i64 3
  %516 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast875 = ptrtoint i8* %add.ptr874 to i64
  %sub.ptr.rhs.cast876 = ptrtoint i8* %516 to i64
  %sub.ptr.sub877 = sub i64 %sub.ptr.lhs.cast875, %sub.ptr.rhs.cast876
  %sub878 = sub nsw i64 %sub.ptr.sub877, 3
  %conv879 = trunc i64 %sub878 to i32
  %517 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 13, i8* %514, i32 %conv879, i8* %517)
  %518 = load i8*, i8** %b, align 8
  %add.ptr880 = getelementptr inbounds i8, i8* %518, i64 3
  store i8* %add.ptr880, i8** %b, align 8
  %519 = load i8*, i8** %laststart, align 8
  %520 = load i8*, i8** %laststart, align 8
  %add.ptr881 = getelementptr inbounds i8, i8* %520, i64 6
  %521 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast882 = ptrtoint i8* %add.ptr881 to i64
  %sub.ptr.rhs.cast883 = ptrtoint i8* %521 to i64
  %sub.ptr.sub884 = sub i64 %sub.ptr.lhs.cast882, %sub.ptr.rhs.cast883
  %sub885 = sub nsw i64 %sub.ptr.sub884, 3
  %conv886 = trunc i64 %sub885 to i32
  %522 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 14, i8* %519, i32 %conv886, i8* %522)
  %523 = load i8*, i8** %b, align 8
  %add.ptr887 = getelementptr inbounds i8, i8* %523, i64 3
  store i8* %add.ptr887, i8** %b, align 8
  br label %if.end.888

if.end.888:                                       ; preds = %if.else.873, %if.end.872
  br label %if.end.889

if.end.889:                                       ; preds = %if.end.888, %if.end.695
  store i8* null, i8** %pending_exact, align 8
  br label %sw.epilog.4023

sw.bb.890:                                        ; preds = %do.end.47
  %524 = load i8*, i8** %b, align 8
  store i8* %524, i8** %laststart, align 8
  br label %do.body.891

do.body.891:                                      ; preds = %sw.bb.890
  br label %while.cond.892

while.cond.892:                                   ; preds = %do.end.964, %do.body.891
  %525 = load i8*, i8** %b, align 8
  %526 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer893 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %526, i32 0, i32 0
  %527 = load i8*, i8** %buffer893, align 8
  %sub.ptr.lhs.cast894 = ptrtoint i8* %525 to i64
  %sub.ptr.rhs.cast895 = ptrtoint i8* %527 to i64
  %sub.ptr.sub896 = sub i64 %sub.ptr.lhs.cast894, %sub.ptr.rhs.cast895
  %add897 = add nsw i64 %sub.ptr.sub896, 1
  %528 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated898 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %528, i32 0, i32 1
  %529 = load i64, i64* %allocated898, align 8
  %cmp899 = icmp ugt i64 %add897, %529
  br i1 %cmp899, label %while.body.901, label %while.end.965

while.body.901:                                   ; preds = %while.cond.892
  br label %do.body.902

do.body.902:                                      ; preds = %while.body.901
  %530 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer904 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %530, i32 0, i32 0
  %531 = load i8*, i8** %buffer904, align 8
  store i8* %531, i8** %old_buffer903, align 8
  %532 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated905 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %532, i32 0, i32 1
  %533 = load i64, i64* %allocated905, align 8
  %cmp906 = icmp eq i64 %533, 32768
  br i1 %cmp906, label %if.then.908, label %if.end.909

if.then.908:                                      ; preds = %do.body.902
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.909:                                       ; preds = %do.body.902
  %534 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated910 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %534, i32 0, i32 1
  %535 = load i64, i64* %allocated910, align 8
  %shl911 = shl i64 %535, 1
  store i64 %shl911, i64* %allocated910, align 8
  %536 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated912 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %536, i32 0, i32 1
  %537 = load i64, i64* %allocated912, align 8
  %cmp913 = icmp ugt i64 %537, 32768
  br i1 %cmp913, label %if.then.915, label %if.end.917

if.then.915:                                      ; preds = %if.end.909
  %538 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated916 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %538, i32 0, i32 1
  store i64 32768, i64* %allocated916, align 8
  br label %if.end.917

if.end.917:                                       ; preds = %if.then.915, %if.end.909
  %539 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer918 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %539, i32 0, i32 0
  %540 = load i8*, i8** %buffer918, align 8
  %541 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated919 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %541, i32 0, i32 1
  %542 = load i64, i64* %allocated919, align 8
  %mul920 = mul i64 %542, 1
  %call921 = call i8* @xrealloc(i8* %540, i64 %mul920)
  %543 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer922 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %543, i32 0, i32 0
  store i8* %call921, i8** %buffer922, align 8
  %544 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer923 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %544, i32 0, i32 0
  %545 = load i8*, i8** %buffer923, align 8
  %cmp924 = icmp eq i8* %545, null
  br i1 %cmp924, label %if.then.926, label %if.end.927

if.then.926:                                      ; preds = %if.end.917
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.927:                                       ; preds = %if.end.917
  %546 = load i8*, i8** %old_buffer903, align 8
  %547 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer928 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %547, i32 0, i32 0
  %548 = load i8*, i8** %buffer928, align 8
  %cmp929 = icmp ne i8* %546, %548
  br i1 %cmp929, label %if.then.931, label %if.end.963

if.then.931:                                      ; preds = %if.end.927
  %549 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer933 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %549, i32 0, i32 0
  %550 = load i8*, i8** %buffer933, align 8
  store i8* %550, i8** %new_buffer932, align 8
  %551 = load i8*, i8** %new_buffer932, align 8
  %552 = load i8*, i8** %b, align 8
  %553 = load i8*, i8** %old_buffer903, align 8
  %sub.ptr.lhs.cast934 = ptrtoint i8* %552 to i64
  %sub.ptr.rhs.cast935 = ptrtoint i8* %553 to i64
  %sub.ptr.sub936 = sub i64 %sub.ptr.lhs.cast934, %sub.ptr.rhs.cast935
  %add.ptr937 = getelementptr inbounds i8, i8* %551, i64 %sub.ptr.sub936
  store i8* %add.ptr937, i8** %b, align 8
  %554 = load i8*, i8** %new_buffer932, align 8
  %555 = load i8*, i8** %begalt, align 8
  %556 = load i8*, i8** %old_buffer903, align 8
  %sub.ptr.lhs.cast938 = ptrtoint i8* %555 to i64
  %sub.ptr.rhs.cast939 = ptrtoint i8* %556 to i64
  %sub.ptr.sub940 = sub i64 %sub.ptr.lhs.cast938, %sub.ptr.rhs.cast939
  %add.ptr941 = getelementptr inbounds i8, i8* %554, i64 %sub.ptr.sub940
  store i8* %add.ptr941, i8** %begalt, align 8
  %557 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool942 = icmp ne i8* %557, null
  br i1 %tobool942, label %if.then.943, label %if.end.948

if.then.943:                                      ; preds = %if.then.931
  %558 = load i8*, i8** %new_buffer932, align 8
  %559 = load i8*, i8** %fixup_alt_jump, align 8
  %560 = load i8*, i8** %old_buffer903, align 8
  %sub.ptr.lhs.cast944 = ptrtoint i8* %559 to i64
  %sub.ptr.rhs.cast945 = ptrtoint i8* %560 to i64
  %sub.ptr.sub946 = sub i64 %sub.ptr.lhs.cast944, %sub.ptr.rhs.cast945
  %add.ptr947 = getelementptr inbounds i8, i8* %558, i64 %sub.ptr.sub946
  store i8* %add.ptr947, i8** %fixup_alt_jump, align 8
  br label %if.end.948

if.end.948:                                       ; preds = %if.then.943, %if.then.931
  %561 = load i8*, i8** %laststart, align 8
  %tobool949 = icmp ne i8* %561, null
  br i1 %tobool949, label %if.then.950, label %if.end.955

if.then.950:                                      ; preds = %if.end.948
  %562 = load i8*, i8** %new_buffer932, align 8
  %563 = load i8*, i8** %laststart, align 8
  %564 = load i8*, i8** %old_buffer903, align 8
  %sub.ptr.lhs.cast951 = ptrtoint i8* %563 to i64
  %sub.ptr.rhs.cast952 = ptrtoint i8* %564 to i64
  %sub.ptr.sub953 = sub i64 %sub.ptr.lhs.cast951, %sub.ptr.rhs.cast952
  %add.ptr954 = getelementptr inbounds i8, i8* %562, i64 %sub.ptr.sub953
  store i8* %add.ptr954, i8** %laststart, align 8
  br label %if.end.955

if.end.955:                                       ; preds = %if.then.950, %if.end.948
  %565 = load i8*, i8** %pending_exact, align 8
  %tobool956 = icmp ne i8* %565, null
  br i1 %tobool956, label %if.then.957, label %if.end.962

if.then.957:                                      ; preds = %if.end.955
  %566 = load i8*, i8** %new_buffer932, align 8
  %567 = load i8*, i8** %pending_exact, align 8
  %568 = load i8*, i8** %old_buffer903, align 8
  %sub.ptr.lhs.cast958 = ptrtoint i8* %567 to i64
  %sub.ptr.rhs.cast959 = ptrtoint i8* %568 to i64
  %sub.ptr.sub960 = sub i64 %sub.ptr.lhs.cast958, %sub.ptr.rhs.cast959
  %add.ptr961 = getelementptr inbounds i8, i8* %566, i64 %sub.ptr.sub960
  store i8* %add.ptr961, i8** %pending_exact, align 8
  br label %if.end.962

if.end.962:                                       ; preds = %if.then.957, %if.end.955
  br label %if.end.963

if.end.963:                                       ; preds = %if.end.962, %if.end.927
  br label %do.end.964

do.end.964:                                       ; preds = %if.end.963
  br label %while.cond.892

while.end.965:                                    ; preds = %while.cond.892
  %569 = load i8*, i8** %b, align 8
  %incdec.ptr966 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %incdec.ptr966, i8** %b, align 8
  store i8 3, i8* %569, align 1
  br label %do.end.967

do.end.967:                                       ; preds = %while.end.965
  br label %sw.epilog.4023

sw.bb.968:                                        ; preds = %do.end.47
  %used970 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 2
  store i32 0, i32* %used970, align 4
  %bits = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 3
  store i32 0, i32* %bits, align 4
  %570 = load i8*, i8** %p, align 8
  %571 = load i8*, i8** %pend, align 8
  %cmp971 = icmp eq i8* %570, %571
  br i1 %cmp971, label %if.then.973, label %if.end.984

if.then.973:                                      ; preds = %sw.bb.968
  br label %do.body.974

do.body.974:                                      ; preds = %if.then.973
  br label %do.body.975

do.body.975:                                      ; preds = %do.body.974
  %table976 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %572 = load i32*, i32** %table976, align 8
  %tobool977 = icmp ne i32* %572, null
  br i1 %tobool977, label %if.then.978, label %if.end.980

if.then.978:                                      ; preds = %do.body.975
  %table979 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %573 = load i32*, i32** %table979, align 8
  %574 = bitcast i32* %573 to i8*
  call void @free(i8* %574) #4
  br label %if.end.980

if.end.980:                                       ; preds = %if.then.978, %do.body.975
  br label %do.end.981

do.end.981:                                       ; preds = %if.end.980
  %stack982 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %575 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack982, align 8
  %576 = bitcast %struct.compile_stack_elt_t* %575 to i8*
  call void @free(i8* %576) #4
  store i32 7, i32* %retval
  br label %do.end.4144

do.end.983:                                       ; No predecessors!
  br label %if.end.984

if.end.984:                                       ; preds = %do.end.983, %sw.bb.968
  br label %while.cond.985

while.cond.985:                                   ; preds = %do.end.1057, %if.end.984
  %577 = load i8*, i8** %b, align 8
  %578 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer986 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %578, i32 0, i32 0
  %579 = load i8*, i8** %buffer986, align 8
  %sub.ptr.lhs.cast987 = ptrtoint i8* %577 to i64
  %sub.ptr.rhs.cast988 = ptrtoint i8* %579 to i64
  %sub.ptr.sub989 = sub i64 %sub.ptr.lhs.cast987, %sub.ptr.rhs.cast988
  %add990 = add nsw i64 %sub.ptr.sub989, 34
  %580 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated991 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %580, i32 0, i32 1
  %581 = load i64, i64* %allocated991, align 8
  %cmp992 = icmp ugt i64 %add990, %581
  br i1 %cmp992, label %while.body.994, label %while.end.1058

while.body.994:                                   ; preds = %while.cond.985
  br label %do.body.995

do.body.995:                                      ; preds = %while.body.994
  %582 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer997 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %582, i32 0, i32 0
  %583 = load i8*, i8** %buffer997, align 8
  store i8* %583, i8** %old_buffer996, align 8
  %584 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated998 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %584, i32 0, i32 1
  %585 = load i64, i64* %allocated998, align 8
  %cmp999 = icmp eq i64 %585, 32768
  br i1 %cmp999, label %if.then.1001, label %if.end.1002

if.then.1001:                                     ; preds = %do.body.995
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.1002:                                      ; preds = %do.body.995
  %586 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1003 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %586, i32 0, i32 1
  %587 = load i64, i64* %allocated1003, align 8
  %shl1004 = shl i64 %587, 1
  store i64 %shl1004, i64* %allocated1003, align 8
  %588 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1005 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %588, i32 0, i32 1
  %589 = load i64, i64* %allocated1005, align 8
  %cmp1006 = icmp ugt i64 %589, 32768
  br i1 %cmp1006, label %if.then.1008, label %if.end.1010

if.then.1008:                                     ; preds = %if.end.1002
  %590 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1009 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %590, i32 0, i32 1
  store i64 32768, i64* %allocated1009, align 8
  br label %if.end.1010

if.end.1010:                                      ; preds = %if.then.1008, %if.end.1002
  %591 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1011 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %591, i32 0, i32 0
  %592 = load i8*, i8** %buffer1011, align 8
  %593 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1012 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %593, i32 0, i32 1
  %594 = load i64, i64* %allocated1012, align 8
  %mul1013 = mul i64 %594, 1
  %call1014 = call i8* @xrealloc(i8* %592, i64 %mul1013)
  %595 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1015 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %595, i32 0, i32 0
  store i8* %call1014, i8** %buffer1015, align 8
  %596 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1016 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %596, i32 0, i32 0
  %597 = load i8*, i8** %buffer1016, align 8
  %cmp1017 = icmp eq i8* %597, null
  br i1 %cmp1017, label %if.then.1019, label %if.end.1020

if.then.1019:                                     ; preds = %if.end.1010
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.1020:                                      ; preds = %if.end.1010
  %598 = load i8*, i8** %old_buffer996, align 8
  %599 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1021 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %599, i32 0, i32 0
  %600 = load i8*, i8** %buffer1021, align 8
  %cmp1022 = icmp ne i8* %598, %600
  br i1 %cmp1022, label %if.then.1024, label %if.end.1056

if.then.1024:                                     ; preds = %if.end.1020
  %601 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1026 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %601, i32 0, i32 0
  %602 = load i8*, i8** %buffer1026, align 8
  store i8* %602, i8** %new_buffer1025, align 8
  %603 = load i8*, i8** %new_buffer1025, align 8
  %604 = load i8*, i8** %b, align 8
  %605 = load i8*, i8** %old_buffer996, align 8
  %sub.ptr.lhs.cast1027 = ptrtoint i8* %604 to i64
  %sub.ptr.rhs.cast1028 = ptrtoint i8* %605 to i64
  %sub.ptr.sub1029 = sub i64 %sub.ptr.lhs.cast1027, %sub.ptr.rhs.cast1028
  %add.ptr1030 = getelementptr inbounds i8, i8* %603, i64 %sub.ptr.sub1029
  store i8* %add.ptr1030, i8** %b, align 8
  %606 = load i8*, i8** %new_buffer1025, align 8
  %607 = load i8*, i8** %begalt, align 8
  %608 = load i8*, i8** %old_buffer996, align 8
  %sub.ptr.lhs.cast1031 = ptrtoint i8* %607 to i64
  %sub.ptr.rhs.cast1032 = ptrtoint i8* %608 to i64
  %sub.ptr.sub1033 = sub i64 %sub.ptr.lhs.cast1031, %sub.ptr.rhs.cast1032
  %add.ptr1034 = getelementptr inbounds i8, i8* %606, i64 %sub.ptr.sub1033
  store i8* %add.ptr1034, i8** %begalt, align 8
  %609 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1035 = icmp ne i8* %609, null
  br i1 %tobool1035, label %if.then.1036, label %if.end.1041

if.then.1036:                                     ; preds = %if.then.1024
  %610 = load i8*, i8** %new_buffer1025, align 8
  %611 = load i8*, i8** %fixup_alt_jump, align 8
  %612 = load i8*, i8** %old_buffer996, align 8
  %sub.ptr.lhs.cast1037 = ptrtoint i8* %611 to i64
  %sub.ptr.rhs.cast1038 = ptrtoint i8* %612 to i64
  %sub.ptr.sub1039 = sub i64 %sub.ptr.lhs.cast1037, %sub.ptr.rhs.cast1038
  %add.ptr1040 = getelementptr inbounds i8, i8* %610, i64 %sub.ptr.sub1039
  store i8* %add.ptr1040, i8** %fixup_alt_jump, align 8
  br label %if.end.1041

if.end.1041:                                      ; preds = %if.then.1036, %if.then.1024
  %613 = load i8*, i8** %laststart, align 8
  %tobool1042 = icmp ne i8* %613, null
  br i1 %tobool1042, label %if.then.1043, label %if.end.1048

if.then.1043:                                     ; preds = %if.end.1041
  %614 = load i8*, i8** %new_buffer1025, align 8
  %615 = load i8*, i8** %laststart, align 8
  %616 = load i8*, i8** %old_buffer996, align 8
  %sub.ptr.lhs.cast1044 = ptrtoint i8* %615 to i64
  %sub.ptr.rhs.cast1045 = ptrtoint i8* %616 to i64
  %sub.ptr.sub1046 = sub i64 %sub.ptr.lhs.cast1044, %sub.ptr.rhs.cast1045
  %add.ptr1047 = getelementptr inbounds i8, i8* %614, i64 %sub.ptr.sub1046
  store i8* %add.ptr1047, i8** %laststart, align 8
  br label %if.end.1048

if.end.1048:                                      ; preds = %if.then.1043, %if.end.1041
  %617 = load i8*, i8** %pending_exact, align 8
  %tobool1049 = icmp ne i8* %617, null
  br i1 %tobool1049, label %if.then.1050, label %if.end.1055

if.then.1050:                                     ; preds = %if.end.1048
  %618 = load i8*, i8** %new_buffer1025, align 8
  %619 = load i8*, i8** %pending_exact, align 8
  %620 = load i8*, i8** %old_buffer996, align 8
  %sub.ptr.lhs.cast1051 = ptrtoint i8* %619 to i64
  %sub.ptr.rhs.cast1052 = ptrtoint i8* %620 to i64
  %sub.ptr.sub1053 = sub i64 %sub.ptr.lhs.cast1051, %sub.ptr.rhs.cast1052
  %add.ptr1054 = getelementptr inbounds i8, i8* %618, i64 %sub.ptr.sub1053
  store i8* %add.ptr1054, i8** %pending_exact, align 8
  br label %if.end.1055

if.end.1055:                                      ; preds = %if.then.1050, %if.end.1048
  br label %if.end.1056

if.end.1056:                                      ; preds = %if.end.1055, %if.end.1020
  br label %do.end.1057

do.end.1057:                                      ; preds = %if.end.1056
  br label %while.cond.985

while.end.1058:                                   ; preds = %while.cond.985
  %621 = load i8*, i8** %b, align 8
  store i8* %621, i8** %laststart, align 8
  br label %do.body.1059

do.body.1059:                                     ; preds = %while.end.1058
  br label %while.cond.1060

while.cond.1060:                                  ; preds = %do.end.1132, %do.body.1059
  %622 = load i8*, i8** %b, align 8
  %623 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1061 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %623, i32 0, i32 0
  %624 = load i8*, i8** %buffer1061, align 8
  %sub.ptr.lhs.cast1062 = ptrtoint i8* %622 to i64
  %sub.ptr.rhs.cast1063 = ptrtoint i8* %624 to i64
  %sub.ptr.sub1064 = sub i64 %sub.ptr.lhs.cast1062, %sub.ptr.rhs.cast1063
  %add1065 = add nsw i64 %sub.ptr.sub1064, 1
  %625 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1066 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %625, i32 0, i32 1
  %626 = load i64, i64* %allocated1066, align 8
  %cmp1067 = icmp ugt i64 %add1065, %626
  br i1 %cmp1067, label %while.body.1069, label %while.end.1133

while.body.1069:                                  ; preds = %while.cond.1060
  br label %do.body.1070

do.body.1070:                                     ; preds = %while.body.1069
  %627 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1072 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %627, i32 0, i32 0
  %628 = load i8*, i8** %buffer1072, align 8
  store i8* %628, i8** %old_buffer1071, align 8
  %629 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1073 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %629, i32 0, i32 1
  %630 = load i64, i64* %allocated1073, align 8
  %cmp1074 = icmp eq i64 %630, 32768
  br i1 %cmp1074, label %if.then.1076, label %if.end.1077

if.then.1076:                                     ; preds = %do.body.1070
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.1077:                                      ; preds = %do.body.1070
  %631 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1078 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %631, i32 0, i32 1
  %632 = load i64, i64* %allocated1078, align 8
  %shl1079 = shl i64 %632, 1
  store i64 %shl1079, i64* %allocated1078, align 8
  %633 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1080 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %633, i32 0, i32 1
  %634 = load i64, i64* %allocated1080, align 8
  %cmp1081 = icmp ugt i64 %634, 32768
  br i1 %cmp1081, label %if.then.1083, label %if.end.1085

if.then.1083:                                     ; preds = %if.end.1077
  %635 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1084 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %635, i32 0, i32 1
  store i64 32768, i64* %allocated1084, align 8
  br label %if.end.1085

if.end.1085:                                      ; preds = %if.then.1083, %if.end.1077
  %636 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1086 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %636, i32 0, i32 0
  %637 = load i8*, i8** %buffer1086, align 8
  %638 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1087 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %638, i32 0, i32 1
  %639 = load i64, i64* %allocated1087, align 8
  %mul1088 = mul i64 %639, 1
  %call1089 = call i8* @xrealloc(i8* %637, i64 %mul1088)
  %640 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1090 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %640, i32 0, i32 0
  store i8* %call1089, i8** %buffer1090, align 8
  %641 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1091 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %641, i32 0, i32 0
  %642 = load i8*, i8** %buffer1091, align 8
  %cmp1092 = icmp eq i8* %642, null
  br i1 %cmp1092, label %if.then.1094, label %if.end.1095

if.then.1094:                                     ; preds = %if.end.1085
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.1095:                                      ; preds = %if.end.1085
  %643 = load i8*, i8** %old_buffer1071, align 8
  %644 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1096 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %644, i32 0, i32 0
  %645 = load i8*, i8** %buffer1096, align 8
  %cmp1097 = icmp ne i8* %643, %645
  br i1 %cmp1097, label %if.then.1099, label %if.end.1131

if.then.1099:                                     ; preds = %if.end.1095
  %646 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1101 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %646, i32 0, i32 0
  %647 = load i8*, i8** %buffer1101, align 8
  store i8* %647, i8** %new_buffer1100, align 8
  %648 = load i8*, i8** %new_buffer1100, align 8
  %649 = load i8*, i8** %b, align 8
  %650 = load i8*, i8** %old_buffer1071, align 8
  %sub.ptr.lhs.cast1102 = ptrtoint i8* %649 to i64
  %sub.ptr.rhs.cast1103 = ptrtoint i8* %650 to i64
  %sub.ptr.sub1104 = sub i64 %sub.ptr.lhs.cast1102, %sub.ptr.rhs.cast1103
  %add.ptr1105 = getelementptr inbounds i8, i8* %648, i64 %sub.ptr.sub1104
  store i8* %add.ptr1105, i8** %b, align 8
  %651 = load i8*, i8** %new_buffer1100, align 8
  %652 = load i8*, i8** %begalt, align 8
  %653 = load i8*, i8** %old_buffer1071, align 8
  %sub.ptr.lhs.cast1106 = ptrtoint i8* %652 to i64
  %sub.ptr.rhs.cast1107 = ptrtoint i8* %653 to i64
  %sub.ptr.sub1108 = sub i64 %sub.ptr.lhs.cast1106, %sub.ptr.rhs.cast1107
  %add.ptr1109 = getelementptr inbounds i8, i8* %651, i64 %sub.ptr.sub1108
  store i8* %add.ptr1109, i8** %begalt, align 8
  %654 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1110 = icmp ne i8* %654, null
  br i1 %tobool1110, label %if.then.1111, label %if.end.1116

if.then.1111:                                     ; preds = %if.then.1099
  %655 = load i8*, i8** %new_buffer1100, align 8
  %656 = load i8*, i8** %fixup_alt_jump, align 8
  %657 = load i8*, i8** %old_buffer1071, align 8
  %sub.ptr.lhs.cast1112 = ptrtoint i8* %656 to i64
  %sub.ptr.rhs.cast1113 = ptrtoint i8* %657 to i64
  %sub.ptr.sub1114 = sub i64 %sub.ptr.lhs.cast1112, %sub.ptr.rhs.cast1113
  %add.ptr1115 = getelementptr inbounds i8, i8* %655, i64 %sub.ptr.sub1114
  store i8* %add.ptr1115, i8** %fixup_alt_jump, align 8
  br label %if.end.1116

if.end.1116:                                      ; preds = %if.then.1111, %if.then.1099
  %658 = load i8*, i8** %laststart, align 8
  %tobool1117 = icmp ne i8* %658, null
  br i1 %tobool1117, label %if.then.1118, label %if.end.1123

if.then.1118:                                     ; preds = %if.end.1116
  %659 = load i8*, i8** %new_buffer1100, align 8
  %660 = load i8*, i8** %laststart, align 8
  %661 = load i8*, i8** %old_buffer1071, align 8
  %sub.ptr.lhs.cast1119 = ptrtoint i8* %660 to i64
  %sub.ptr.rhs.cast1120 = ptrtoint i8* %661 to i64
  %sub.ptr.sub1121 = sub i64 %sub.ptr.lhs.cast1119, %sub.ptr.rhs.cast1120
  %add.ptr1122 = getelementptr inbounds i8, i8* %659, i64 %sub.ptr.sub1121
  store i8* %add.ptr1122, i8** %laststart, align 8
  br label %if.end.1123

if.end.1123:                                      ; preds = %if.then.1118, %if.end.1116
  %662 = load i8*, i8** %pending_exact, align 8
  %tobool1124 = icmp ne i8* %662, null
  br i1 %tobool1124, label %if.then.1125, label %if.end.1130

if.then.1125:                                     ; preds = %if.end.1123
  %663 = load i8*, i8** %new_buffer1100, align 8
  %664 = load i8*, i8** %pending_exact, align 8
  %665 = load i8*, i8** %old_buffer1071, align 8
  %sub.ptr.lhs.cast1126 = ptrtoint i8* %664 to i64
  %sub.ptr.rhs.cast1127 = ptrtoint i8* %665 to i64
  %sub.ptr.sub1128 = sub i64 %sub.ptr.lhs.cast1126, %sub.ptr.rhs.cast1127
  %add.ptr1129 = getelementptr inbounds i8, i8* %663, i64 %sub.ptr.sub1128
  store i8* %add.ptr1129, i8** %pending_exact, align 8
  br label %if.end.1130

if.end.1130:                                      ; preds = %if.then.1125, %if.end.1123
  br label %if.end.1131

if.end.1131:                                      ; preds = %if.end.1130, %if.end.1095
  br label %do.end.1132

do.end.1132:                                      ; preds = %if.end.1131
  br label %while.cond.1060

while.end.1133:                                   ; preds = %while.cond.1060
  %666 = load i8*, i8** %p, align 8
  %667 = load i8, i8* %666, align 1
  %conv1134 = zext i8 %667 to i32
  %cmp1135 = icmp eq i32 %conv1134, 94
  %cond1137 = select i1 %cmp1135, i32 5, i32 4
  %conv1138 = trunc i32 %cond1137 to i8
  %668 = load i8*, i8** %b, align 8
  %incdec.ptr1139 = getelementptr inbounds i8, i8* %668, i32 1
  store i8* %incdec.ptr1139, i8** %b, align 8
  store i8 %conv1138, i8* %668, align 1
  br label %do.end.1140

do.end.1140:                                      ; preds = %while.end.1133
  %669 = load i8*, i8** %p, align 8
  %670 = load i8, i8* %669, align 1
  %conv1141 = zext i8 %670 to i32
  %cmp1142 = icmp eq i32 %conv1141, 94
  br i1 %cmp1142, label %if.then.1144, label %if.end.1146

if.then.1144:                                     ; preds = %do.end.1140
  %671 = load i8*, i8** %p, align 8
  %incdec.ptr1145 = getelementptr inbounds i8, i8* %671, i32 1
  store i8* %incdec.ptr1145, i8** %p, align 8
  br label %if.end.1146

if.end.1146:                                      ; preds = %if.then.1144, %do.end.1140
  %672 = load i8*, i8** %p, align 8
  store i8* %672, i8** %p1969, align 8
  br label %do.body.1147

do.body.1147:                                     ; preds = %if.end.1146
  br label %while.cond.1148

while.cond.1148:                                  ; preds = %do.end.1220, %do.body.1147
  %673 = load i8*, i8** %b, align 8
  %674 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1149 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %674, i32 0, i32 0
  %675 = load i8*, i8** %buffer1149, align 8
  %sub.ptr.lhs.cast1150 = ptrtoint i8* %673 to i64
  %sub.ptr.rhs.cast1151 = ptrtoint i8* %675 to i64
  %sub.ptr.sub1152 = sub i64 %sub.ptr.lhs.cast1150, %sub.ptr.rhs.cast1151
  %add1153 = add nsw i64 %sub.ptr.sub1152, 1
  %676 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1154 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %676, i32 0, i32 1
  %677 = load i64, i64* %allocated1154, align 8
  %cmp1155 = icmp ugt i64 %add1153, %677
  br i1 %cmp1155, label %while.body.1157, label %while.end.1221

while.body.1157:                                  ; preds = %while.cond.1148
  br label %do.body.1158

do.body.1158:                                     ; preds = %while.body.1157
  %678 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1160 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %678, i32 0, i32 0
  %679 = load i8*, i8** %buffer1160, align 8
  store i8* %679, i8** %old_buffer1159, align 8
  %680 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1161 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %680, i32 0, i32 1
  %681 = load i64, i64* %allocated1161, align 8
  %cmp1162 = icmp eq i64 %681, 32768
  br i1 %cmp1162, label %if.then.1164, label %if.end.1165

if.then.1164:                                     ; preds = %do.body.1158
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.1165:                                      ; preds = %do.body.1158
  %682 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1166 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %682, i32 0, i32 1
  %683 = load i64, i64* %allocated1166, align 8
  %shl1167 = shl i64 %683, 1
  store i64 %shl1167, i64* %allocated1166, align 8
  %684 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1168 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %684, i32 0, i32 1
  %685 = load i64, i64* %allocated1168, align 8
  %cmp1169 = icmp ugt i64 %685, 32768
  br i1 %cmp1169, label %if.then.1171, label %if.end.1173

if.then.1171:                                     ; preds = %if.end.1165
  %686 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1172 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %686, i32 0, i32 1
  store i64 32768, i64* %allocated1172, align 8
  br label %if.end.1173

if.end.1173:                                      ; preds = %if.then.1171, %if.end.1165
  %687 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1174 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %687, i32 0, i32 0
  %688 = load i8*, i8** %buffer1174, align 8
  %689 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1175 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %689, i32 0, i32 1
  %690 = load i64, i64* %allocated1175, align 8
  %mul1176 = mul i64 %690, 1
  %call1177 = call i8* @xrealloc(i8* %688, i64 %mul1176)
  %691 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1178 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %691, i32 0, i32 0
  store i8* %call1177, i8** %buffer1178, align 8
  %692 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1179 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %692, i32 0, i32 0
  %693 = load i8*, i8** %buffer1179, align 8
  %cmp1180 = icmp eq i8* %693, null
  br i1 %cmp1180, label %if.then.1182, label %if.end.1183

if.then.1182:                                     ; preds = %if.end.1173
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.1183:                                      ; preds = %if.end.1173
  %694 = load i8*, i8** %old_buffer1159, align 8
  %695 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1184 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %695, i32 0, i32 0
  %696 = load i8*, i8** %buffer1184, align 8
  %cmp1185 = icmp ne i8* %694, %696
  br i1 %cmp1185, label %if.then.1187, label %if.end.1219

if.then.1187:                                     ; preds = %if.end.1183
  %697 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1189 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %697, i32 0, i32 0
  %698 = load i8*, i8** %buffer1189, align 8
  store i8* %698, i8** %new_buffer1188, align 8
  %699 = load i8*, i8** %new_buffer1188, align 8
  %700 = load i8*, i8** %b, align 8
  %701 = load i8*, i8** %old_buffer1159, align 8
  %sub.ptr.lhs.cast1190 = ptrtoint i8* %700 to i64
  %sub.ptr.rhs.cast1191 = ptrtoint i8* %701 to i64
  %sub.ptr.sub1192 = sub i64 %sub.ptr.lhs.cast1190, %sub.ptr.rhs.cast1191
  %add.ptr1193 = getelementptr inbounds i8, i8* %699, i64 %sub.ptr.sub1192
  store i8* %add.ptr1193, i8** %b, align 8
  %702 = load i8*, i8** %new_buffer1188, align 8
  %703 = load i8*, i8** %begalt, align 8
  %704 = load i8*, i8** %old_buffer1159, align 8
  %sub.ptr.lhs.cast1194 = ptrtoint i8* %703 to i64
  %sub.ptr.rhs.cast1195 = ptrtoint i8* %704 to i64
  %sub.ptr.sub1196 = sub i64 %sub.ptr.lhs.cast1194, %sub.ptr.rhs.cast1195
  %add.ptr1197 = getelementptr inbounds i8, i8* %702, i64 %sub.ptr.sub1196
  store i8* %add.ptr1197, i8** %begalt, align 8
  %705 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1198 = icmp ne i8* %705, null
  br i1 %tobool1198, label %if.then.1199, label %if.end.1204

if.then.1199:                                     ; preds = %if.then.1187
  %706 = load i8*, i8** %new_buffer1188, align 8
  %707 = load i8*, i8** %fixup_alt_jump, align 8
  %708 = load i8*, i8** %old_buffer1159, align 8
  %sub.ptr.lhs.cast1200 = ptrtoint i8* %707 to i64
  %sub.ptr.rhs.cast1201 = ptrtoint i8* %708 to i64
  %sub.ptr.sub1202 = sub i64 %sub.ptr.lhs.cast1200, %sub.ptr.rhs.cast1201
  %add.ptr1203 = getelementptr inbounds i8, i8* %706, i64 %sub.ptr.sub1202
  store i8* %add.ptr1203, i8** %fixup_alt_jump, align 8
  br label %if.end.1204

if.end.1204:                                      ; preds = %if.then.1199, %if.then.1187
  %709 = load i8*, i8** %laststart, align 8
  %tobool1205 = icmp ne i8* %709, null
  br i1 %tobool1205, label %if.then.1206, label %if.end.1211

if.then.1206:                                     ; preds = %if.end.1204
  %710 = load i8*, i8** %new_buffer1188, align 8
  %711 = load i8*, i8** %laststart, align 8
  %712 = load i8*, i8** %old_buffer1159, align 8
  %sub.ptr.lhs.cast1207 = ptrtoint i8* %711 to i64
  %sub.ptr.rhs.cast1208 = ptrtoint i8* %712 to i64
  %sub.ptr.sub1209 = sub i64 %sub.ptr.lhs.cast1207, %sub.ptr.rhs.cast1208
  %add.ptr1210 = getelementptr inbounds i8, i8* %710, i64 %sub.ptr.sub1209
  store i8* %add.ptr1210, i8** %laststart, align 8
  br label %if.end.1211

if.end.1211:                                      ; preds = %if.then.1206, %if.end.1204
  %713 = load i8*, i8** %pending_exact, align 8
  %tobool1212 = icmp ne i8* %713, null
  br i1 %tobool1212, label %if.then.1213, label %if.end.1218

if.then.1213:                                     ; preds = %if.end.1211
  %714 = load i8*, i8** %new_buffer1188, align 8
  %715 = load i8*, i8** %pending_exact, align 8
  %716 = load i8*, i8** %old_buffer1159, align 8
  %sub.ptr.lhs.cast1214 = ptrtoint i8* %715 to i64
  %sub.ptr.rhs.cast1215 = ptrtoint i8* %716 to i64
  %sub.ptr.sub1216 = sub i64 %sub.ptr.lhs.cast1214, %sub.ptr.rhs.cast1215
  %add.ptr1217 = getelementptr inbounds i8, i8* %714, i64 %sub.ptr.sub1216
  store i8* %add.ptr1217, i8** %pending_exact, align 8
  br label %if.end.1218

if.end.1218:                                      ; preds = %if.then.1213, %if.end.1211
  br label %if.end.1219

if.end.1219:                                      ; preds = %if.end.1218, %if.end.1183
  br label %do.end.1220

do.end.1220:                                      ; preds = %if.end.1219
  br label %while.cond.1148

while.end.1221:                                   ; preds = %while.cond.1148
  %717 = load i8*, i8** %b, align 8
  %incdec.ptr1222 = getelementptr inbounds i8, i8* %717, i32 1
  store i8* %incdec.ptr1222, i8** %b, align 8
  store i8 32, i8* %717, align 1
  br label %do.end.1223

do.end.1223:                                      ; preds = %while.end.1221
  %718 = load i8*, i8** %b, align 8
  call void @llvm.memset.p0i8.i64(i8* %718, i8 0, i64 32, i32 1, i1 false)
  %719 = load i8*, i8** %b, align 8
  %arrayidx1224 = getelementptr inbounds i8, i8* %719, i64 -2
  %720 = load i8, i8* %arrayidx1224, align 1
  %conv1225 = zext i8 %720 to i32
  %cmp1226 = icmp eq i32 %conv1225, 5
  br i1 %cmp1226, label %land.lhs.true.1228, label %if.end.1236

land.lhs.true.1228:                               ; preds = %do.end.1223
  %721 = load i64, i64* %syntax.addr, align 8
  %and1229 = and i64 %721, 256
  %tobool1230 = icmp ne i64 %and1229, 0
  br i1 %tobool1230, label %if.then.1231, label %if.end.1236

if.then.1231:                                     ; preds = %land.lhs.true.1228
  %722 = load i8*, i8** %b, align 8
  %arrayidx1232 = getelementptr inbounds i8, i8* %722, i64 1
  %723 = load i8, i8* %arrayidx1232, align 1
  %conv1233 = zext i8 %723 to i32
  %or1234 = or i32 %conv1233, 4
  %conv1235 = trunc i32 %or1234 to i8
  store i8 %conv1235, i8* %arrayidx1232, align 1
  br label %if.end.1236

if.end.1236:                                      ; preds = %if.then.1231, %land.lhs.true.1228, %do.end.1223
  br label %for.cond.1237

for.cond.1237:                                    ; preds = %if.end.1539, %if.end.1451, %if.end.1236
  store i8 0, i8* %escaped_char, align 1
  %724 = load i8*, i8** %p, align 8
  store i8* %724, i8** %p21238, align 8
  %725 = load i8*, i8** %p, align 8
  %726 = load i8*, i8** %pend, align 8
  %cmp1239 = icmp eq i8* %725, %726
  br i1 %cmp1239, label %if.then.1241, label %if.end.1252

if.then.1241:                                     ; preds = %for.cond.1237
  br label %do.body.1242

do.body.1242:                                     ; preds = %if.then.1241
  br label %do.body.1243

do.body.1243:                                     ; preds = %do.body.1242
  %table1244 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %727 = load i32*, i32** %table1244, align 8
  %tobool1245 = icmp ne i32* %727, null
  br i1 %tobool1245, label %if.then.1246, label %if.end.1248

if.then.1246:                                     ; preds = %do.body.1243
  %table1247 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %728 = load i32*, i32** %table1247, align 8
  %729 = bitcast i32* %728 to i8*
  call void @free(i8* %729) #4
  br label %if.end.1248

if.end.1248:                                      ; preds = %if.then.1246, %do.body.1243
  br label %do.end.1249

do.end.1249:                                      ; preds = %if.end.1248
  %stack1250 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %730 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1250, align 8
  %731 = bitcast %struct.compile_stack_elt_t* %730 to i8*
  call void @free(i8* %731) #4
  store i32 7, i32* %retval
  br label %do.end.4144

do.end.1251:                                      ; No predecessors!
  br label %if.end.1252

if.end.1252:                                      ; preds = %do.end.1251, %for.cond.1237
  br label %do.body.1253

do.body.1253:                                     ; preds = %if.end.1252
  %732 = load i8*, i8** %p, align 8
  %733 = load i8*, i8** %pend, align 8
  %cmp1255 = icmp eq i8* %732, %733
  br i1 %cmp1255, label %if.then.1257, label %if.end.1258

if.then.1257:                                     ; preds = %do.body.1253
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1258:                                      ; preds = %do.body.1253
  store i32 1, i32* %len1254, align 4
  %734 = load i8*, i8** %p, align 8
  %735 = load i8, i8* %734, align 1
  %conv1259 = zext i8 %735 to i32
  store i32 %conv1259, i32* %c, align 4
  %736 = load i32, i32* %len1254, align 4
  %737 = load i8*, i8** %p, align 8
  %idx.ext1260 = sext i32 %736 to i64
  %add.ptr1261 = getelementptr inbounds i8, i8* %737, i64 %idx.ext1260
  store i8* %add.ptr1261, i8** %p, align 8
  br label %do.end.1262

do.end.1262:                                      ; preds = %if.end.1258
  %738 = load i64, i64* %syntax.addr, align 8
  %and1263 = and i64 %738, 1
  %tobool1264 = icmp ne i64 %and1263, 0
  br i1 %tobool1264, label %land.lhs.true.1265, label %if.else.1293

land.lhs.true.1265:                               ; preds = %do.end.1262
  %739 = load i32, i32* %c, align 4
  %cmp1266 = icmp eq i32 %739, 92
  br i1 %cmp1266, label %if.then.1268, label %if.else.1293

if.then.1268:                                     ; preds = %land.lhs.true.1265
  %740 = load i8*, i8** %p, align 8
  %741 = load i8*, i8** %pend, align 8
  %cmp1269 = icmp eq i8* %740, %741
  br i1 %cmp1269, label %if.then.1271, label %if.end.1282

if.then.1271:                                     ; preds = %if.then.1268
  br label %do.body.1272

do.body.1272:                                     ; preds = %if.then.1271
  br label %do.body.1273

do.body.1273:                                     ; preds = %do.body.1272
  %table1274 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %742 = load i32*, i32** %table1274, align 8
  %tobool1275 = icmp ne i32* %742, null
  br i1 %tobool1275, label %if.then.1276, label %if.end.1278

if.then.1276:                                     ; preds = %do.body.1273
  %table1277 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %743 = load i32*, i32** %table1277, align 8
  %744 = bitcast i32* %743 to i8*
  call void @free(i8* %744) #4
  br label %if.end.1278

if.end.1278:                                      ; preds = %if.then.1276, %do.body.1273
  br label %do.end.1279

do.end.1279:                                      ; preds = %if.end.1278
  %stack1280 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %745 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1280, align 8
  %746 = bitcast %struct.compile_stack_elt_t* %745 to i8*
  call void @free(i8* %746) #4
  store i32 5, i32* %retval
  br label %do.end.4144

do.end.1281:                                      ; No predecessors!
  br label %if.end.1282

if.end.1282:                                      ; preds = %do.end.1281, %if.then.1268
  br label %do.body.1283

do.body.1283:                                     ; preds = %if.end.1282
  %747 = load i8*, i8** %p, align 8
  %748 = load i8*, i8** %pend, align 8
  %cmp1285 = icmp eq i8* %747, %748
  br i1 %cmp1285, label %if.then.1287, label %if.end.1288

if.then.1287:                                     ; preds = %do.body.1283
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1288:                                      ; preds = %do.body.1283
  store i32 1, i32* %len1284, align 4
  %749 = load i8*, i8** %p, align 8
  %750 = load i8, i8* %749, align 1
  %conv1289 = zext i8 %750 to i32
  store i32 %conv1289, i32* %c, align 4
  %751 = load i32, i32* %len1284, align 4
  %752 = load i8*, i8** %p, align 8
  %idx.ext1290 = sext i32 %751 to i64
  %add.ptr1291 = getelementptr inbounds i8, i8* %752, i64 %idx.ext1290
  store i8* %add.ptr1291, i8** %p, align 8
  br label %do.end.1292

do.end.1292:                                      ; preds = %if.end.1288
  store i8 1, i8* %escaped_char, align 1
  br label %if.end.1301

if.else.1293:                                     ; preds = %land.lhs.true.1265, %do.end.1262
  %753 = load i32, i32* %c, align 4
  %cmp1294 = icmp eq i32 %753, 93
  br i1 %cmp1294, label %land.lhs.true.1296, label %if.end.1300

land.lhs.true.1296:                               ; preds = %if.else.1293
  %754 = load i8*, i8** %p21238, align 8
  %755 = load i8*, i8** %p1969, align 8
  %cmp1297 = icmp ne i8* %754, %755
  br i1 %cmp1297, label %if.then.1299, label %if.end.1300

if.then.1299:                                     ; preds = %land.lhs.true.1296
  br label %for.end.1540

if.end.1300:                                      ; preds = %land.lhs.true.1296, %if.else.1293
  br label %if.end.1301

if.end.1301:                                      ; preds = %if.end.1300, %do.end.1292
  %756 = load i8, i8* %escaped_char, align 1
  %tobool1302 = icmp ne i8 %756, 0
  br i1 %tobool1302, label %if.end.1458, label %land.lhs.true.1303

land.lhs.true.1303:                               ; preds = %if.end.1301
  %757 = load i64, i64* %syntax.addr, align 8
  %and1304 = and i64 %757, 4
  %tobool1305 = icmp ne i64 %and1304, 0
  br i1 %tobool1305, label %land.lhs.true.1306, label %if.end.1458

land.lhs.true.1306:                               ; preds = %land.lhs.true.1303
  %758 = load i32, i32* %c, align 4
  %cmp1307 = icmp eq i32 %758, 91
  br i1 %cmp1307, label %land.lhs.true.1309, label %if.end.1458

land.lhs.true.1309:                               ; preds = %land.lhs.true.1306
  %759 = load i8*, i8** %p, align 8
  %760 = load i8, i8* %759, align 1
  %conv1310 = zext i8 %760 to i32
  %cmp1311 = icmp eq i32 %conv1310, 58
  br i1 %cmp1311, label %if.then.1313, label %if.end.1458

if.then.1313:                                     ; preds = %land.lhs.true.1309
  br label %do.body.1314

do.body.1314:                                     ; preds = %if.then.1313
  %761 = load i8*, i8** %p, align 8
  %762 = load i8*, i8** %pend, align 8
  %cmp1316 = icmp eq i8* %761, %762
  br i1 %cmp1316, label %if.then.1318, label %if.end.1319

if.then.1318:                                     ; preds = %do.body.1314
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1319:                                      ; preds = %do.body.1314
  store i32 1, i32* %len1315, align 4
  %763 = load i8*, i8** %p, align 8
  %764 = load i8, i8* %763, align 1
  %conv1320 = zext i8 %764 to i32
  store i32 %conv1320, i32* %c, align 4
  %765 = load i32, i32* %len1315, align 4
  %766 = load i8*, i8** %p, align 8
  %idx.ext1321 = sext i32 %765 to i64
  %add.ptr1322 = getelementptr inbounds i8, i8* %766, i64 %idx.ext1321
  store i8* %add.ptr1322, i8** %p, align 8
  br label %do.end.1323

do.end.1323:                                      ; preds = %if.end.1319
  store i32 0, i32* %c1, align 4
  %767 = load i8*, i8** %p, align 8
  store i8* %767, i8** %class_beg, align 8
  %768 = load i8*, i8** %p, align 8
  %769 = load i8*, i8** %pend, align 8
  %cmp1324 = icmp eq i8* %768, %769
  br i1 %cmp1324, label %if.then.1326, label %if.end.1337

if.then.1326:                                     ; preds = %do.end.1323
  br label %do.body.1327

do.body.1327:                                     ; preds = %if.then.1326
  br label %do.body.1328

do.body.1328:                                     ; preds = %do.body.1327
  %table1329 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %770 = load i32*, i32** %table1329, align 8
  %tobool1330 = icmp ne i32* %770, null
  br i1 %tobool1330, label %if.then.1331, label %if.end.1333

if.then.1331:                                     ; preds = %do.body.1328
  %table1332 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %771 = load i32*, i32** %table1332, align 8
  %772 = bitcast i32* %771 to i8*
  call void @free(i8* %772) #4
  br label %if.end.1333

if.end.1333:                                      ; preds = %if.then.1331, %do.body.1328
  br label %do.end.1334

do.end.1334:                                      ; preds = %if.end.1333
  %stack1335 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %773 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1335, align 8
  %774 = bitcast %struct.compile_stack_elt_t* %773 to i8*
  call void @free(i8* %774) #4
  store i32 7, i32* %retval
  br label %do.end.4144

do.end.1336:                                      ; No predecessors!
  br label %if.end.1337

if.end.1337:                                      ; preds = %do.end.1336, %do.end.1323
  br label %for.cond.1338

for.cond.1338:                                    ; preds = %if.end.1367, %if.end.1337
  br label %do.body.1339

do.body.1339:                                     ; preds = %for.cond.1338
  %775 = load i8*, i8** %p, align 8
  %776 = load i8*, i8** %pend, align 8
  %cmp1341 = icmp eq i8* %775, %776
  br i1 %cmp1341, label %if.then.1343, label %if.end.1344

if.then.1343:                                     ; preds = %do.body.1339
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1344:                                      ; preds = %do.body.1339
  store i32 1, i32* %len1340, align 4
  %777 = load i8*, i8** %p, align 8
  %778 = load i8, i8* %777, align 1
  %conv1345 = zext i8 %778 to i32
  store i32 %conv1345, i32* %c, align 4
  %779 = load i32, i32* %len1340, align 4
  %780 = load i8*, i8** %p, align 8
  %idx.ext1346 = sext i32 %779 to i64
  %add.ptr1347 = getelementptr inbounds i8, i8* %780, i64 %idx.ext1346
  store i8* %add.ptr1347, i8** %p, align 8
  br label %do.end.1348

do.end.1348:                                      ; preds = %if.end.1344
  %781 = load i32, i32* %c, align 4
  %cmp1349 = icmp eq i32 %781, 58
  br i1 %cmp1349, label %land.lhs.true.1351, label %lor.lhs.false.1355

land.lhs.true.1351:                               ; preds = %do.end.1348
  %782 = load i8*, i8** %p, align 8
  %783 = load i8, i8* %782, align 1
  %conv1352 = zext i8 %783 to i32
  %cmp1353 = icmp eq i32 %conv1352, 93
  br i1 %cmp1353, label %if.then.1358, label %lor.lhs.false.1355

lor.lhs.false.1355:                               ; preds = %land.lhs.true.1351, %do.end.1348
  %784 = load i8*, i8** %p, align 8
  %785 = load i8*, i8** %pend, align 8
  %cmp1356 = icmp eq i8* %784, %785
  br i1 %cmp1356, label %if.then.1358, label %if.end.1359

if.then.1358:                                     ; preds = %lor.lhs.false.1355, %land.lhs.true.1351
  br label %for.end.1368

if.end.1359:                                      ; preds = %lor.lhs.false.1355
  %786 = load i32, i32* %c1, align 4
  %cmp1360 = icmp slt i32 %786, 9
  br i1 %cmp1360, label %if.then.1362, label %if.else.1365

if.then.1362:                                     ; preds = %if.end.1359
  %787 = load i32, i32* %c, align 4
  %conv1363 = trunc i32 %787 to i8
  %788 = load i32, i32* %c1, align 4
  %inc = add nsw i32 %788, 1
  store i32 %inc, i32* %c1, align 4
  %idxprom = sext i32 %788 to i64
  %arrayidx1364 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i64 %idxprom
  store i8 %conv1363, i8* %arrayidx1364, align 1
  br label %if.end.1367

if.else.1365:                                     ; preds = %if.end.1359
  %arrayidx1366 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i64 0
  store i8 0, i8* %arrayidx1366, align 1
  br label %if.end.1367

if.end.1367:                                      ; preds = %if.else.1365, %if.then.1362
  br label %for.cond.1338

for.end.1368:                                     ; preds = %if.then.1358
  %789 = load i32, i32* %c1, align 4
  %idxprom1369 = sext i32 %789 to i64
  %arrayidx1370 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i64 %idxprom1369
  store i8 0, i8* %arrayidx1370, align 1
  %790 = load i32, i32* %c, align 4
  %cmp1371 = icmp eq i32 %790, 58
  br i1 %cmp1371, label %land.lhs.true.1373, label %if.else.1452

land.lhs.true.1373:                               ; preds = %for.end.1368
  %791 = load i8*, i8** %p, align 8
  %792 = load i8, i8* %791, align 1
  %conv1374 = zext i8 %792 to i32
  %cmp1375 = icmp eq i32 %conv1374, 93
  br i1 %cmp1375, label %if.then.1377, label %if.else.1452

if.then.1377:                                     ; preds = %land.lhs.true.1373
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %str, i32 0, i32 0
  %call1378 = call i32 @re_wctype(i8* %arraydecay)
  store i32 %call1378, i32* %cc, align 4
  %793 = load i32, i32* %cc, align 4
  %cmp1379 = icmp eq i32 %793, 0
  br i1 %cmp1379, label %if.then.1381, label %if.end.1392

if.then.1381:                                     ; preds = %if.then.1377
  br label %do.body.1382

do.body.1382:                                     ; preds = %if.then.1381
  br label %do.body.1383

do.body.1383:                                     ; preds = %do.body.1382
  %table1384 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %794 = load i32*, i32** %table1384, align 8
  %tobool1385 = icmp ne i32* %794, null
  br i1 %tobool1385, label %if.then.1386, label %if.end.1388

if.then.1386:                                     ; preds = %do.body.1383
  %table1387 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %795 = load i32*, i32** %table1387, align 8
  %796 = bitcast i32* %795 to i8*
  call void @free(i8* %796) #4
  br label %if.end.1388

if.end.1388:                                      ; preds = %if.then.1386, %do.body.1383
  br label %do.end.1389

do.end.1389:                                      ; preds = %if.end.1388
  %stack1390 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %797 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1390, align 8
  %798 = bitcast %struct.compile_stack_elt_t* %797 to i8*
  call void @free(i8* %798) #4
  store i32 4, i32* %retval
  br label %do.end.4144

do.end.1391:                                      ; No predecessors!
  br label %if.end.1392

if.end.1392:                                      ; preds = %do.end.1391, %if.then.1377
  br label %do.body.1393

do.body.1393:                                     ; preds = %if.end.1392
  %799 = load i8*, i8** %p, align 8
  %800 = load i8*, i8** %pend, align 8
  %cmp1395 = icmp eq i8* %799, %800
  br i1 %cmp1395, label %if.then.1397, label %if.end.1398

if.then.1397:                                     ; preds = %do.body.1393
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1398:                                      ; preds = %do.body.1393
  store i32 1, i32* %len1394, align 4
  %801 = load i8*, i8** %p, align 8
  %802 = load i8, i8* %801, align 1
  %conv1399 = zext i8 %802 to i32
  store i32 %conv1399, i32* %c, align 4
  %803 = load i32, i32* %len1394, align 4
  %804 = load i8*, i8** %p, align 8
  %idx.ext1400 = sext i32 %803 to i64
  %add.ptr1401 = getelementptr inbounds i8, i8* %804, i64 %idx.ext1400
  store i8* %add.ptr1401, i8** %p, align 8
  br label %do.end.1402

do.end.1402:                                      ; preds = %if.end.1398
  %805 = load i8*, i8** %p, align 8
  %806 = load i8*, i8** %pend, align 8
  %cmp1403 = icmp eq i8* %805, %806
  br i1 %cmp1403, label %if.then.1405, label %if.end.1416

if.then.1405:                                     ; preds = %do.end.1402
  br label %do.body.1406

do.body.1406:                                     ; preds = %if.then.1405
  br label %do.body.1407

do.body.1407:                                     ; preds = %do.body.1406
  %table1408 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %807 = load i32*, i32** %table1408, align 8
  %tobool1409 = icmp ne i32* %807, null
  br i1 %tobool1409, label %if.then.1410, label %if.end.1412

if.then.1410:                                     ; preds = %do.body.1407
  %table1411 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %808 = load i32*, i32** %table1411, align 8
  %809 = bitcast i32* %808 to i8*
  call void @free(i8* %809) #4
  br label %if.end.1412

if.end.1412:                                      ; preds = %if.then.1410, %do.body.1407
  br label %do.end.1413

do.end.1413:                                      ; preds = %if.end.1412
  %stack1414 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %810 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1414, align 8
  %811 = bitcast %struct.compile_stack_elt_t* %810 to i8*
  call void @free(i8* %811) #4
  store i32 7, i32* %retval
  br label %do.end.4144

do.end.1415:                                      ; No predecessors!
  br label %if.end.1416

if.end.1416:                                      ; preds = %do.end.1415, %do.end.1402
  store i32 0, i32* %ch, align 4
  br label %for.cond.1417

for.cond.1417:                                    ; preds = %for.inc, %if.end.1416
  %812 = load i32, i32* %ch, align 4
  %cmp1418 = icmp slt i32 %812, 256
  br i1 %cmp1418, label %for.body, label %for.end.1443

for.body:                                         ; preds = %for.cond.1417
  %813 = load i32, i32* %ch, align 4
  %814 = load i32, i32* %cc, align 4
  %call1420 = call signext i8 @re_iswctype(i32 %813, i32 %814)
  %tobool1421 = icmp ne i8 %call1420, 0
  br i1 %tobool1421, label %if.then.1422, label %if.end.1441

if.then.1422:                                     ; preds = %for.body
  %815 = load i8*, i8** %translate, align 8
  %tobool1423 = icmp ne i8* %815, null
  br i1 %tobool1423, label %cond.true.1424, label %cond.false.1428

cond.true.1424:                                   ; preds = %if.then.1422
  %816 = load i32, i32* %ch, align 4
  %idxprom1425 = sext i32 %816 to i64
  %817 = load i8*, i8** %translate, align 8
  %arrayidx1426 = getelementptr inbounds i8, i8* %817, i64 %idxprom1425
  %818 = load i8, i8* %arrayidx1426, align 1
  %conv1427 = zext i8 %818 to i32
  br label %cond.end.1429

cond.false.1428:                                  ; preds = %if.then.1422
  %819 = load i32, i32* %ch, align 4
  br label %cond.end.1429

cond.end.1429:                                    ; preds = %cond.false.1428, %cond.true.1424
  %cond1430 = phi i32 [ %conv1427, %cond.true.1424 ], [ %819, %cond.false.1428 ]
  store i32 %cond1430, i32* %c, align 4
  %820 = load i32, i32* %c, align 4
  %cmp1431 = icmp slt i32 %820, 256
  br i1 %cmp1431, label %if.then.1433, label %if.end.1440

if.then.1433:                                     ; preds = %cond.end.1429
  %821 = load i32, i32* %c, align 4
  %rem = srem i32 %821, 8
  %shl1434 = shl i32 1, %rem
  %822 = load i32, i32* %c, align 4
  %div = sdiv i32 %822, 8
  %idxprom1435 = sext i32 %div to i64
  %823 = load i8*, i8** %b, align 8
  %arrayidx1436 = getelementptr inbounds i8, i8* %823, i64 %idxprom1435
  %824 = load i8, i8* %arrayidx1436, align 1
  %conv1437 = zext i8 %824 to i32
  %or1438 = or i32 %conv1437, %shl1434
  %conv1439 = trunc i32 %or1438 to i8
  store i8 %conv1439, i8* %arrayidx1436, align 1
  br label %if.end.1440

if.end.1440:                                      ; preds = %if.then.1433, %cond.end.1429
  br label %if.end.1441

if.end.1441:                                      ; preds = %if.end.1440, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.1441
  %825 = load i32, i32* %ch, align 4
  %inc1442 = add nsw i32 %825, 1
  store i32 %inc1442, i32* %ch, align 4
  br label %for.cond.1417

for.end.1443:                                     ; preds = %for.cond.1417
  %826 = load i32, i32* %cc, align 4
  %shl1444 = shl i32 1, %826
  %and1445 = and i32 %shl1444, 8200
  %tobool1446 = icmp ne i32 %and1445, 0
  br i1 %tobool1446, label %if.then.1447, label %if.end.1451

if.then.1447:                                     ; preds = %for.end.1443
  %827 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used_syntax1448 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %827, i32 0, i32 7
  %bf.load1449 = load i8, i8* %used_syntax1448, align 8
  %bf.clear1450 = and i8 %bf.load1449, 127
  %bf.set = or i8 %bf.clear1450, -128
  store i8 %bf.set, i8* %used_syntax1448, align 8
  br label %if.end.1451

if.end.1451:                                      ; preds = %if.then.1447, %for.end.1443
  br label %for.cond.1237

if.else.1452:                                     ; preds = %land.lhs.true.1373, %for.end.1368
  %828 = load i8*, i8** %class_beg, align 8
  store i8* %828, i8** %p, align 8
  %829 = load i8*, i8** %b, align 8
  %arrayidx1453 = getelementptr inbounds i8, i8* %829, i64 11
  %830 = load i8, i8* %arrayidx1453, align 1
  %conv1454 = zext i8 %830 to i32
  %or1455 = or i32 %conv1454, 8
  %conv1456 = trunc i32 %or1455 to i8
  store i8 %conv1456, i8* %arrayidx1453, align 1
  store i32 58, i32* %c, align 4
  br label %if.end.1457

if.end.1457:                                      ; preds = %if.else.1452
  br label %if.end.1458

if.end.1458:                                      ; preds = %if.end.1457, %land.lhs.true.1309, %land.lhs.true.1306, %land.lhs.true.1303, %if.end.1301
  %831 = load i8*, i8** %p, align 8
  %832 = load i8*, i8** %pend, align 8
  %cmp1459 = icmp ult i8* %831, %832
  br i1 %cmp1459, label %land.lhs.true.1461, label %if.else.1492

land.lhs.true.1461:                               ; preds = %if.end.1458
  %833 = load i8*, i8** %p, align 8
  %arrayidx1462 = getelementptr inbounds i8, i8* %833, i64 0
  %834 = load i8, i8* %arrayidx1462, align 1
  %conv1463 = zext i8 %834 to i32
  %cmp1464 = icmp eq i32 %conv1463, 45
  br i1 %cmp1464, label %land.lhs.true.1466, label %if.else.1492

land.lhs.true.1466:                               ; preds = %land.lhs.true.1461
  %835 = load i8*, i8** %p, align 8
  %arrayidx1467 = getelementptr inbounds i8, i8* %835, i64 1
  %836 = load i8, i8* %arrayidx1467, align 1
  %conv1468 = zext i8 %836 to i32
  %cmp1469 = icmp ne i32 %conv1468, 93
  br i1 %cmp1469, label %if.then.1471, label %if.else.1492

if.then.1471:                                     ; preds = %land.lhs.true.1466
  br label %do.body.1472

do.body.1472:                                     ; preds = %if.then.1471
  %837 = load i8*, i8** %p, align 8
  %838 = load i8*, i8** %pend, align 8
  %cmp1474 = icmp eq i8* %837, %838
  br i1 %cmp1474, label %if.then.1476, label %if.end.1477

if.then.1476:                                     ; preds = %do.body.1472
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1477:                                      ; preds = %do.body.1472
  store i32 1, i32* %len1473, align 4
  %839 = load i8*, i8** %p, align 8
  %840 = load i8, i8* %839, align 1
  %conv1478 = zext i8 %840 to i32
  store i32 %conv1478, i32* %c1, align 4
  %841 = load i32, i32* %len1473, align 4
  %842 = load i8*, i8** %p, align 8
  %idx.ext1479 = sext i32 %841 to i64
  %add.ptr1480 = getelementptr inbounds i8, i8* %842, i64 %idx.ext1479
  store i8* %add.ptr1480, i8** %p, align 8
  br label %do.end.1481

do.end.1481:                                      ; preds = %if.end.1477
  br label %do.body.1482

do.body.1482:                                     ; preds = %do.end.1481
  %843 = load i8*, i8** %p, align 8
  %844 = load i8*, i8** %pend, align 8
  %cmp1484 = icmp eq i8* %843, %844
  br i1 %cmp1484, label %if.then.1486, label %if.end.1487

if.then.1486:                                     ; preds = %do.body.1482
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1487:                                      ; preds = %do.body.1482
  store i32 1, i32* %len1483, align 4
  %845 = load i8*, i8** %p, align 8
  %846 = load i8, i8* %845, align 1
  %conv1488 = zext i8 %846 to i32
  store i32 %conv1488, i32* %c1, align 4
  %847 = load i32, i32* %len1483, align 4
  %848 = load i8*, i8** %p, align 8
  %idx.ext1489 = sext i32 %847 to i64
  %add.ptr1490 = getelementptr inbounds i8, i8* %848, i64 %idx.ext1489
  store i8* %add.ptr1490, i8** %p, align 8
  br label %do.end.1491

do.end.1491:                                      ; preds = %if.end.1487
  br label %if.end.1493

if.else.1492:                                     ; preds = %land.lhs.true.1466, %land.lhs.true.1461, %if.end.1458
  %849 = load i32, i32* %c, align 4
  store i32 %849, i32* %c1, align 4
  br label %if.end.1493

if.end.1493:                                      ; preds = %if.else.1492, %do.end.1491
  %850 = load i32, i32* %c, align 4
  %851 = load i32, i32* %c1, align 4
  %cmp1494 = icmp sgt i32 %850, %851
  br i1 %cmp1494, label %if.then.1496, label %if.else.1511

if.then.1496:                                     ; preds = %if.end.1493
  %852 = load i64, i64* %syntax.addr, align 8
  %and1497 = and i64 %852, 65536
  %tobool1498 = icmp ne i64 %and1497, 0
  br i1 %tobool1498, label %if.then.1499, label %if.end.1510

if.then.1499:                                     ; preds = %if.then.1496
  br label %do.body.1500

do.body.1500:                                     ; preds = %if.then.1499
  br label %do.body.1501

do.body.1501:                                     ; preds = %do.body.1500
  %table1502 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %853 = load i32*, i32** %table1502, align 8
  %tobool1503 = icmp ne i32* %853, null
  br i1 %tobool1503, label %if.then.1504, label %if.end.1506

if.then.1504:                                     ; preds = %do.body.1501
  %table1505 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %854 = load i32*, i32** %table1505, align 8
  %855 = bitcast i32* %854 to i8*
  call void @free(i8* %855) #4
  br label %if.end.1506

if.end.1506:                                      ; preds = %if.then.1504, %do.body.1501
  br label %do.end.1507

do.end.1507:                                      ; preds = %if.end.1506
  %stack1508 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %856 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1508, align 8
  %857 = bitcast %struct.compile_stack_elt_t* %856 to i8*
  call void @free(i8* %857) #4
  store i32 17, i32* %retval
  br label %do.end.4144

do.end.1509:                                      ; No predecessors!
  br label %if.end.1510

if.end.1510:                                      ; preds = %do.end.1509, %if.then.1496
  br label %if.end.1539

if.else.1511:                                     ; preds = %if.end.1493
  br label %for.cond.1512

for.cond.1512:                                    ; preds = %for.inc.1536, %if.else.1511
  %858 = load i32, i32* %c, align 4
  %859 = load i32, i32* %c1, align 4
  %cmp1513 = icmp sle i32 %858, %859
  br i1 %cmp1513, label %for.body.1515, label %for.end.1538

for.body.1515:                                    ; preds = %for.cond.1512
  %860 = load i8*, i8** %translate, align 8
  %tobool1516 = icmp ne i8* %860, null
  br i1 %tobool1516, label %cond.true.1517, label %cond.false.1521

cond.true.1517:                                   ; preds = %for.body.1515
  %861 = load i32, i32* %c, align 4
  %idxprom1518 = sext i32 %861 to i64
  %862 = load i8*, i8** %translate, align 8
  %arrayidx1519 = getelementptr inbounds i8, i8* %862, i64 %idxprom1518
  %863 = load i8, i8* %arrayidx1519, align 1
  %conv1520 = zext i8 %863 to i32
  br label %cond.end.1522

cond.false.1521:                                  ; preds = %for.body.1515
  %864 = load i32, i32* %c, align 4
  br label %cond.end.1522

cond.end.1522:                                    ; preds = %cond.false.1521, %cond.true.1517
  %cond1523 = phi i32 [ %conv1520, %cond.true.1517 ], [ %864, %cond.false.1521 ]
  store i32 %cond1523, i32* %ch, align 4
  %865 = load i32, i32* %ch, align 4
  %cmp1524 = icmp slt i32 %865, 256
  br i1 %cmp1524, label %if.then.1526, label %if.end.1535

if.then.1526:                                     ; preds = %cond.end.1522
  %866 = load i32, i32* %ch, align 4
  %rem1527 = srem i32 %866, 8
  %shl1528 = shl i32 1, %rem1527
  %867 = load i32, i32* %ch, align 4
  %div1529 = sdiv i32 %867, 8
  %idxprom1530 = sext i32 %div1529 to i64
  %868 = load i8*, i8** %b, align 8
  %arrayidx1531 = getelementptr inbounds i8, i8* %868, i64 %idxprom1530
  %869 = load i8, i8* %arrayidx1531, align 1
  %conv1532 = zext i8 %869 to i32
  %or1533 = or i32 %conv1532, %shl1528
  %conv1534 = trunc i32 %or1533 to i8
  store i8 %conv1534, i8* %arrayidx1531, align 1
  br label %if.end.1535

if.end.1535:                                      ; preds = %if.then.1526, %cond.end.1522
  br label %for.inc.1536

for.inc.1536:                                     ; preds = %if.end.1535
  %870 = load i32, i32* %c, align 4
  %inc1537 = add nsw i32 %870, 1
  store i32 %inc1537, i32* %c, align 4
  br label %for.cond.1512

for.end.1538:                                     ; preds = %for.cond.1512
  br label %if.end.1539

if.end.1539:                                      ; preds = %for.end.1538, %if.end.1510
  br label %for.cond.1237

for.end.1540:                                     ; preds = %if.then.1299
  br label %while.cond.1541

while.cond.1541:                                  ; preds = %while.body.1554, %for.end.1540
  %871 = load i8*, i8** %b, align 8
  %arrayidx1542 = getelementptr inbounds i8, i8* %871, i64 -1
  %872 = load i8, i8* %arrayidx1542, align 1
  %conv1543 = zext i8 %872 to i32
  %cmp1544 = icmp sgt i32 %conv1543, 0
  br i1 %cmp1544, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1541
  %873 = load i8*, i8** %b, align 8
  %arrayidx1546 = getelementptr inbounds i8, i8* %873, i64 -1
  %874 = load i8, i8* %arrayidx1546, align 1
  %conv1547 = zext i8 %874 to i32
  %sub1548 = sub nsw i32 %conv1547, 1
  %idxprom1549 = sext i32 %sub1548 to i64
  %875 = load i8*, i8** %b, align 8
  %arrayidx1550 = getelementptr inbounds i8, i8* %875, i64 %idxprom1549
  %876 = load i8, i8* %arrayidx1550, align 1
  %conv1551 = zext i8 %876 to i32
  %cmp1552 = icmp eq i32 %conv1551, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1541
  %877 = phi i1 [ false, %while.cond.1541 ], [ %cmp1552, %land.rhs ]
  br i1 %877, label %while.body.1554, label %while.end.1556

while.body.1554:                                  ; preds = %land.end
  %878 = load i8*, i8** %b, align 8
  %arrayidx1555 = getelementptr inbounds i8, i8* %878, i64 -1
  %879 = load i8, i8* %arrayidx1555, align 1
  %dec = add i8 %879, -1
  store i8 %dec, i8* %arrayidx1555, align 1
  br label %while.cond.1541

while.end.1556:                                   ; preds = %land.end
  %880 = load i8*, i8** %b, align 8
  %arrayidx1557 = getelementptr inbounds i8, i8* %880, i64 -1
  %881 = load i8, i8* %arrayidx1557, align 1
  %conv1558 = zext i8 %881 to i32
  %882 = load i8*, i8** %b, align 8
  %idx.ext1559 = sext i32 %conv1558 to i64
  %add.ptr1560 = getelementptr inbounds i8, i8* %882, i64 %idx.ext1559
  store i8* %add.ptr1560, i8** %b, align 8
  %used1561 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 2
  %883 = load i32, i32* %used1561, align 4
  %tobool1562 = icmp ne i32 %883, 0
  br i1 %tobool1562, label %if.then.1566, label %lor.lhs.false.1563

lor.lhs.false.1563:                               ; preds = %while.end.1556
  %bits1564 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 3
  %884 = load i32, i32* %bits1564, align 4
  %tobool1565 = icmp ne i32 %884, 0
  br i1 %tobool1565, label %if.then.1566, label %if.end.1699

if.then.1566:                                     ; preds = %lor.lhs.false.1563, %while.end.1556
  %used1568 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 2
  %885 = load i32, i32* %used1568, align 4
  store i32 %885, i32* %used1567, align 4
  br label %while.cond.1569

while.cond.1569:                                  ; preds = %do.end.1644, %if.then.1566
  %886 = load i8*, i8** %b, align 8
  %887 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1570 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %887, i32 0, i32 0
  %888 = load i8*, i8** %buffer1570, align 8
  %sub.ptr.lhs.cast1571 = ptrtoint i8* %886 to i64
  %sub.ptr.rhs.cast1572 = ptrtoint i8* %888 to i64
  %sub.ptr.sub1573 = sub i64 %sub.ptr.lhs.cast1571, %sub.ptr.rhs.cast1572
  %889 = load i32, i32* %used1567, align 4
  %mul1574 = mul nsw i32 %889, 3
  %add1575 = add nsw i32 4, %mul1574
  %conv1576 = sext i32 %add1575 to i64
  %add1577 = add nsw i64 %sub.ptr.sub1573, %conv1576
  %890 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1578 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %890, i32 0, i32 1
  %891 = load i64, i64* %allocated1578, align 8
  %cmp1579 = icmp ugt i64 %add1577, %891
  br i1 %cmp1579, label %while.body.1581, label %while.end.1645

while.body.1581:                                  ; preds = %while.cond.1569
  br label %do.body.1582

do.body.1582:                                     ; preds = %while.body.1581
  %892 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1584 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %892, i32 0, i32 0
  %893 = load i8*, i8** %buffer1584, align 8
  store i8* %893, i8** %old_buffer1583, align 8
  %894 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1585 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %894, i32 0, i32 1
  %895 = load i64, i64* %allocated1585, align 8
  %cmp1586 = icmp eq i64 %895, 32768
  br i1 %cmp1586, label %if.then.1588, label %if.end.1589

if.then.1588:                                     ; preds = %do.body.1582
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.1589:                                      ; preds = %do.body.1582
  %896 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1590 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %896, i32 0, i32 1
  %897 = load i64, i64* %allocated1590, align 8
  %shl1591 = shl i64 %897, 1
  store i64 %shl1591, i64* %allocated1590, align 8
  %898 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1592 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %898, i32 0, i32 1
  %899 = load i64, i64* %allocated1592, align 8
  %cmp1593 = icmp ugt i64 %899, 32768
  br i1 %cmp1593, label %if.then.1595, label %if.end.1597

if.then.1595:                                     ; preds = %if.end.1589
  %900 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1596 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %900, i32 0, i32 1
  store i64 32768, i64* %allocated1596, align 8
  br label %if.end.1597

if.end.1597:                                      ; preds = %if.then.1595, %if.end.1589
  %901 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1598 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %901, i32 0, i32 0
  %902 = load i8*, i8** %buffer1598, align 8
  %903 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1599 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %903, i32 0, i32 1
  %904 = load i64, i64* %allocated1599, align 8
  %mul1600 = mul i64 %904, 1
  %call1601 = call i8* @xrealloc(i8* %902, i64 %mul1600)
  %905 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1602 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %905, i32 0, i32 0
  store i8* %call1601, i8** %buffer1602, align 8
  %906 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1603 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %906, i32 0, i32 0
  %907 = load i8*, i8** %buffer1603, align 8
  %cmp1604 = icmp eq i8* %907, null
  br i1 %cmp1604, label %if.then.1606, label %if.end.1607

if.then.1606:                                     ; preds = %if.end.1597
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.1607:                                      ; preds = %if.end.1597
  %908 = load i8*, i8** %old_buffer1583, align 8
  %909 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1608 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %909, i32 0, i32 0
  %910 = load i8*, i8** %buffer1608, align 8
  %cmp1609 = icmp ne i8* %908, %910
  br i1 %cmp1609, label %if.then.1611, label %if.end.1643

if.then.1611:                                     ; preds = %if.end.1607
  %911 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1613 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %911, i32 0, i32 0
  %912 = load i8*, i8** %buffer1613, align 8
  store i8* %912, i8** %new_buffer1612, align 8
  %913 = load i8*, i8** %new_buffer1612, align 8
  %914 = load i8*, i8** %b, align 8
  %915 = load i8*, i8** %old_buffer1583, align 8
  %sub.ptr.lhs.cast1614 = ptrtoint i8* %914 to i64
  %sub.ptr.rhs.cast1615 = ptrtoint i8* %915 to i64
  %sub.ptr.sub1616 = sub i64 %sub.ptr.lhs.cast1614, %sub.ptr.rhs.cast1615
  %add.ptr1617 = getelementptr inbounds i8, i8* %913, i64 %sub.ptr.sub1616
  store i8* %add.ptr1617, i8** %b, align 8
  %916 = load i8*, i8** %new_buffer1612, align 8
  %917 = load i8*, i8** %begalt, align 8
  %918 = load i8*, i8** %old_buffer1583, align 8
  %sub.ptr.lhs.cast1618 = ptrtoint i8* %917 to i64
  %sub.ptr.rhs.cast1619 = ptrtoint i8* %918 to i64
  %sub.ptr.sub1620 = sub i64 %sub.ptr.lhs.cast1618, %sub.ptr.rhs.cast1619
  %add.ptr1621 = getelementptr inbounds i8, i8* %916, i64 %sub.ptr.sub1620
  store i8* %add.ptr1621, i8** %begalt, align 8
  %919 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1622 = icmp ne i8* %919, null
  br i1 %tobool1622, label %if.then.1623, label %if.end.1628

if.then.1623:                                     ; preds = %if.then.1611
  %920 = load i8*, i8** %new_buffer1612, align 8
  %921 = load i8*, i8** %fixup_alt_jump, align 8
  %922 = load i8*, i8** %old_buffer1583, align 8
  %sub.ptr.lhs.cast1624 = ptrtoint i8* %921 to i64
  %sub.ptr.rhs.cast1625 = ptrtoint i8* %922 to i64
  %sub.ptr.sub1626 = sub i64 %sub.ptr.lhs.cast1624, %sub.ptr.rhs.cast1625
  %add.ptr1627 = getelementptr inbounds i8, i8* %920, i64 %sub.ptr.sub1626
  store i8* %add.ptr1627, i8** %fixup_alt_jump, align 8
  br label %if.end.1628

if.end.1628:                                      ; preds = %if.then.1623, %if.then.1611
  %923 = load i8*, i8** %laststart, align 8
  %tobool1629 = icmp ne i8* %923, null
  br i1 %tobool1629, label %if.then.1630, label %if.end.1635

if.then.1630:                                     ; preds = %if.end.1628
  %924 = load i8*, i8** %new_buffer1612, align 8
  %925 = load i8*, i8** %laststart, align 8
  %926 = load i8*, i8** %old_buffer1583, align 8
  %sub.ptr.lhs.cast1631 = ptrtoint i8* %925 to i64
  %sub.ptr.rhs.cast1632 = ptrtoint i8* %926 to i64
  %sub.ptr.sub1633 = sub i64 %sub.ptr.lhs.cast1631, %sub.ptr.rhs.cast1632
  %add.ptr1634 = getelementptr inbounds i8, i8* %924, i64 %sub.ptr.sub1633
  store i8* %add.ptr1634, i8** %laststart, align 8
  br label %if.end.1635

if.end.1635:                                      ; preds = %if.then.1630, %if.end.1628
  %927 = load i8*, i8** %pending_exact, align 8
  %tobool1636 = icmp ne i8* %927, null
  br i1 %tobool1636, label %if.then.1637, label %if.end.1642

if.then.1637:                                     ; preds = %if.end.1635
  %928 = load i8*, i8** %new_buffer1612, align 8
  %929 = load i8*, i8** %pending_exact, align 8
  %930 = load i8*, i8** %old_buffer1583, align 8
  %sub.ptr.lhs.cast1638 = ptrtoint i8* %929 to i64
  %sub.ptr.rhs.cast1639 = ptrtoint i8* %930 to i64
  %sub.ptr.sub1640 = sub i64 %sub.ptr.lhs.cast1638, %sub.ptr.rhs.cast1639
  %add.ptr1641 = getelementptr inbounds i8, i8* %928, i64 %sub.ptr.sub1640
  store i8* %add.ptr1641, i8** %pending_exact, align 8
  br label %if.end.1642

if.end.1642:                                      ; preds = %if.then.1637, %if.end.1635
  br label %if.end.1643

if.end.1643:                                      ; preds = %if.end.1642, %if.end.1607
  br label %do.end.1644

do.end.1644:                                      ; preds = %if.end.1643
  br label %while.cond.1569

while.end.1645:                                   ; preds = %while.cond.1569
  %931 = load i8*, i8** %laststart, align 8
  %arrayidx1646 = getelementptr inbounds i8, i8* %931, i64 1
  %932 = load i8, i8* %arrayidx1646, align 1
  %conv1647 = zext i8 %932 to i32
  %or1648 = or i32 %conv1647, 128
  %conv1649 = trunc i32 %or1648 to i8
  store i8 %conv1649, i8* %arrayidx1646, align 1
  %bits1650 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 3
  %933 = load i32, i32* %bits1650, align 4
  %and1651 = and i32 %933, 255
  %conv1652 = trunc i32 %and1651 to i8
  %934 = load i8*, i8** %b, align 8
  %incdec.ptr1653 = getelementptr inbounds i8, i8* %934, i32 1
  store i8* %incdec.ptr1653, i8** %b, align 8
  store i8 %conv1652, i8* %934, align 1
  %bits1654 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 3
  %935 = load i32, i32* %bits1654, align 4
  %shr = ashr i32 %935, 8
  %conv1655 = trunc i32 %shr to i8
  %936 = load i8*, i8** %b, align 8
  %incdec.ptr1656 = getelementptr inbounds i8, i8* %936, i32 1
  store i8* %incdec.ptr1656, i8** %b, align 8
  store i8 %conv1655, i8* %936, align 1
  br label %do.body.1657

do.body.1657:                                     ; preds = %while.end.1645
  br label %do.body.1658

do.body.1658:                                     ; preds = %do.body.1657
  %937 = load i32, i32* %used1567, align 4
  %div1659 = sdiv i32 %937, 2
  %and1660 = and i32 %div1659, 255
  %conv1661 = trunc i32 %and1660 to i8
  %938 = load i8*, i8** %b, align 8
  %arrayidx1662 = getelementptr inbounds i8, i8* %938, i64 0
  store i8 %conv1661, i8* %arrayidx1662, align 1
  %939 = load i32, i32* %used1567, align 4
  %div1663 = sdiv i32 %939, 2
  %shr1664 = ashr i32 %div1663, 8
  %conv1665 = trunc i32 %shr1664 to i8
  %940 = load i8*, i8** %b, align 8
  %arrayidx1666 = getelementptr inbounds i8, i8* %940, i64 1
  store i8 %conv1665, i8* %arrayidx1666, align 1
  br label %do.end.1667

do.end.1667:                                      ; preds = %do.body.1658
  %941 = load i8*, i8** %b, align 8
  %add.ptr1668 = getelementptr inbounds i8, i8* %941, i64 2
  store i8* %add.ptr1668, i8** %b, align 8
  br label %do.end.1669

do.end.1669:                                      ; preds = %do.end.1667
  store i32 0, i32* %i, align 4
  br label %for.cond.1670

for.cond.1670:                                    ; preds = %for.inc.1696, %do.end.1669
  %942 = load i32, i32* %i, align 4
  %943 = load i32, i32* %used1567, align 4
  %cmp1671 = icmp slt i32 %942, %943
  br i1 %cmp1671, label %for.body.1673, label %for.end.1698

for.body.1673:                                    ; preds = %for.cond.1670
  br label %do.body.1674

do.body.1674:                                     ; preds = %for.body.1673
  %944 = load i32, i32* %i, align 4
  %idxprom1675 = sext i32 %944 to i64
  %table1676 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %945 = load i32*, i32** %table1676, align 8
  %arrayidx1677 = getelementptr inbounds i32, i32* %945, i64 %idxprom1675
  %946 = load i32, i32* %arrayidx1677, align 4
  %and1678 = and i32 %946, 255
  %conv1679 = trunc i32 %and1678 to i8
  %947 = load i8*, i8** %b, align 8
  %arrayidx1680 = getelementptr inbounds i8, i8* %947, i64 0
  store i8 %conv1679, i8* %arrayidx1680, align 1
  %948 = load i32, i32* %i, align 4
  %idxprom1681 = sext i32 %948 to i64
  %table1682 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %949 = load i32*, i32** %table1682, align 8
  %arrayidx1683 = getelementptr inbounds i32, i32* %949, i64 %idxprom1681
  %950 = load i32, i32* %arrayidx1683, align 4
  %shr1684 = ashr i32 %950, 8
  %and1685 = and i32 %shr1684, 255
  %conv1686 = trunc i32 %and1685 to i8
  %951 = load i8*, i8** %b, align 8
  %arrayidx1687 = getelementptr inbounds i8, i8* %951, i64 1
  store i8 %conv1686, i8* %arrayidx1687, align 1
  %952 = load i32, i32* %i, align 4
  %idxprom1688 = sext i32 %952 to i64
  %table1689 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %953 = load i32*, i32** %table1689, align 8
  %arrayidx1690 = getelementptr inbounds i32, i32* %953, i64 %idxprom1688
  %954 = load i32, i32* %arrayidx1690, align 4
  %shr1691 = ashr i32 %954, 16
  %conv1692 = trunc i32 %shr1691 to i8
  %955 = load i8*, i8** %b, align 8
  %arrayidx1693 = getelementptr inbounds i8, i8* %955, i64 2
  store i8 %conv1692, i8* %arrayidx1693, align 1
  %956 = load i8*, i8** %b, align 8
  %add.ptr1694 = getelementptr inbounds i8, i8* %956, i64 3
  store i8* %add.ptr1694, i8** %b, align 8
  br label %do.end.1695

do.end.1695:                                      ; preds = %do.body.1674
  br label %for.inc.1696

for.inc.1696:                                     ; preds = %do.end.1695
  %957 = load i32, i32* %i, align 4
  %inc1697 = add nsw i32 %957, 1
  store i32 %inc1697, i32* %i, align 4
  br label %for.cond.1670

for.end.1698:                                     ; preds = %for.cond.1670
  br label %if.end.1699

if.end.1699:                                      ; preds = %for.end.1698, %lor.lhs.false.1563
  br label %sw.epilog.4023

sw.bb.1700:                                       ; preds = %do.end.47
  %958 = load i64, i64* %syntax.addr, align 8
  %and1701 = and i64 %958, 8192
  %tobool1702 = icmp ne i64 %and1701, 0
  br i1 %tobool1702, label %if.then.1703, label %if.else.1704

if.then.1703:                                     ; preds = %sw.bb.1700
  br label %handle_open

if.else.1704:                                     ; preds = %sw.bb.1700
  br label %normal_char

sw.bb.1705:                                       ; preds = %do.end.47
  %959 = load i64, i64* %syntax.addr, align 8
  %and1706 = and i64 %959, 8192
  %tobool1707 = icmp ne i64 %and1706, 0
  br i1 %tobool1707, label %if.then.1708, label %if.else.1709

if.then.1708:                                     ; preds = %sw.bb.1705
  br label %handle_close

if.else.1709:                                     ; preds = %sw.bb.1705
  br label %normal_char

sw.bb.1710:                                       ; preds = %do.end.47
  %960 = load i64, i64* %syntax.addr, align 8
  %and1711 = and i64 %960, 2048
  %tobool1712 = icmp ne i64 %and1711, 0
  br i1 %tobool1712, label %if.then.1713, label %if.else.1714

if.then.1713:                                     ; preds = %sw.bb.1710
  br label %handle_alt

if.else.1714:                                     ; preds = %sw.bb.1710
  br label %normal_char

sw.bb.1715:                                       ; preds = %do.end.47
  %961 = load i64, i64* %syntax.addr, align 8
  %and1716 = and i64 %961, 32768
  %tobool1717 = icmp ne i64 %and1716, 0
  br i1 %tobool1717, label %if.then.1718, label %if.else.1719

if.then.1718:                                     ; preds = %sw.bb.1715
  br label %handle_alt

if.else.1719:                                     ; preds = %sw.bb.1715
  br label %normal_char

sw.bb.1720:                                       ; preds = %do.end.47
  %962 = load i64, i64* %syntax.addr, align 8
  %and1721 = and i64 %962, 512
  %tobool1722 = icmp ne i64 %and1721, 0
  br i1 %tobool1722, label %land.lhs.true.1723, label %if.else.1727

land.lhs.true.1723:                               ; preds = %sw.bb.1720
  %963 = load i64, i64* %syntax.addr, align 8
  %and1724 = and i64 %963, 4096
  %tobool1725 = icmp ne i64 %and1724, 0
  br i1 %tobool1725, label %if.then.1726, label %if.else.1727

if.then.1726:                                     ; preds = %land.lhs.true.1723
  br label %handle_interval

if.else.1727:                                     ; preds = %land.lhs.true.1723, %sw.bb.1720
  br label %normal_char

sw.bb.1728:                                       ; preds = %do.end.47
  %964 = load i8*, i8** %p, align 8
  %965 = load i8*, i8** %pend, align 8
  %cmp1729 = icmp eq i8* %964, %965
  br i1 %cmp1729, label %if.then.1731, label %if.end.1742

if.then.1731:                                     ; preds = %sw.bb.1728
  br label %do.body.1732

do.body.1732:                                     ; preds = %if.then.1731
  br label %do.body.1733

do.body.1733:                                     ; preds = %do.body.1732
  %table1734 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %966 = load i32*, i32** %table1734, align 8
  %tobool1735 = icmp ne i32* %966, null
  br i1 %tobool1735, label %if.then.1736, label %if.end.1738

if.then.1736:                                     ; preds = %do.body.1733
  %table1737 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %967 = load i32*, i32** %table1737, align 8
  %968 = bitcast i32* %967 to i8*
  call void @free(i8* %968) #4
  br label %if.end.1738

if.end.1738:                                      ; preds = %if.then.1736, %do.body.1733
  br label %do.end.1739

do.end.1739:                                      ; preds = %if.end.1738
  %stack1740 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %969 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1740, align 8
  %970 = bitcast %struct.compile_stack_elt_t* %969 to i8*
  call void @free(i8* %970) #4
  store i32 5, i32* %retval
  br label %do.end.4144

do.end.1741:                                      ; No predecessors!
  br label %if.end.1742

if.end.1742:                                      ; preds = %do.end.1741, %sw.bb.1728
  br label %do.body.1743

do.body.1743:                                     ; preds = %if.end.1742
  %971 = load i8*, i8** %p, align 8
  %972 = load i8*, i8** %pend, align 8
  %cmp1745 = icmp eq i8* %971, %972
  br i1 %cmp1745, label %if.then.1747, label %if.end.1748

if.then.1747:                                     ; preds = %do.body.1743
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1748:                                      ; preds = %do.body.1743
  store i32 1, i32* %len1744, align 4
  %973 = load i8*, i8** %p, align 8
  %974 = load i8, i8* %973, align 1
  %conv1749 = zext i8 %974 to i32
  store i32 %conv1749, i32* %c, align 4
  %975 = load i32, i32* %len1744, align 4
  %976 = load i8*, i8** %p, align 8
  %idx.ext1750 = sext i32 %975 to i64
  %add.ptr1751 = getelementptr inbounds i8, i8* %976, i64 %idx.ext1750
  store i8* %add.ptr1751, i8** %p, align 8
  br label %do.end.1752

do.end.1752:                                      ; preds = %if.end.1748
  %977 = load i32, i32* %c, align 4
  switch i32 %977, label %sw.default.3762 [
    i32 40, label %sw.bb.1753
    i32 41, label %sw.bb.2008
    i32 124, label %sw.bb.2184
    i32 123, label %sw.bb.2362
    i32 119, label %sw.bb.2802
    i32 87, label %sw.bb.2885
    i32 60, label %sw.bb.2968
    i32 62, label %sw.bb.3050
    i32 95, label %sw.bb.3132
    i32 98, label %sw.bb.3321
    i32 66, label %sw.bb.3403
    i32 96, label %sw.bb.3485
    i32 39, label %sw.bb.3567
    i32 49, label %sw.bb.3649
    i32 50, label %sw.bb.3649
    i32 51, label %sw.bb.3649
    i32 52, label %sw.bb.3649
    i32 53, label %sw.bb.3649
    i32 54, label %sw.bb.3649
    i32 55, label %sw.bb.3649
    i32 56, label %sw.bb.3649
    i32 57, label %sw.bb.3649
    i32 43, label %sw.bb.3757
    i32 63, label %sw.bb.3757
  ]

sw.bb.1753:                                       ; preds = %do.end.1752
  %978 = load i64, i64* %syntax.addr, align 8
  %and1754 = and i64 %978, 8192
  %tobool1755 = icmp ne i64 %and1754, 0
  br i1 %tobool1755, label %if.then.1756, label %if.end.1757

if.then.1756:                                     ; preds = %sw.bb.1753
  br label %normal_backslash

if.end.1757:                                      ; preds = %sw.bb.1753
  br label %handle_open

handle_open:                                      ; preds = %if.end.1757, %if.then.1703
  store i32 0, i32* %shy, align 4
  store i32 0, i32* %regnum, align 4
  %979 = load i8*, i8** %p, align 8
  %add.ptr1758 = getelementptr inbounds i8, i8* %979, i64 1
  %980 = load i8*, i8** %pend, align 8
  %cmp1759 = icmp ult i8* %add.ptr1758, %980
  br i1 %cmp1759, label %if.then.1761, label %if.end.1825

if.then.1761:                                     ; preds = %handle_open
  %981 = load i64, i64* %syntax.addr, align 8
  %and1762 = and i64 %981, 2097152
  %tobool1763 = icmp ne i64 %and1762, 0
  br i1 %tobool1763, label %land.lhs.true.1764, label %if.end.1824

land.lhs.true.1764:                               ; preds = %if.then.1761
  %982 = load i8*, i8** %p, align 8
  %983 = load i8, i8* %982, align 1
  %conv1765 = zext i8 %983 to i32
  %cmp1766 = icmp eq i32 %conv1765, 63
  br i1 %cmp1766, label %if.then.1768, label %if.end.1824

if.then.1768:                                     ; preds = %land.lhs.true.1764
  br label %do.body.1769

do.body.1769:                                     ; preds = %if.then.1768
  %984 = load i8*, i8** %p, align 8
  %985 = load i8*, i8** %pend, align 8
  %cmp1771 = icmp eq i8* %984, %985
  br i1 %cmp1771, label %if.then.1773, label %if.end.1774

if.then.1773:                                     ; preds = %do.body.1769
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1774:                                      ; preds = %do.body.1769
  store i32 1, i32* %len1770, align 4
  %986 = load i8*, i8** %p, align 8
  %987 = load i8, i8* %986, align 1
  %conv1775 = zext i8 %987 to i32
  store i32 %conv1775, i32* %c, align 4
  %988 = load i32, i32* %len1770, align 4
  %989 = load i8*, i8** %p, align 8
  %idx.ext1776 = sext i32 %988 to i64
  %add.ptr1777 = getelementptr inbounds i8, i8* %989, i64 %idx.ext1776
  store i8* %add.ptr1777, i8** %p, align 8
  br label %do.end.1778

do.end.1778:                                      ; preds = %if.end.1774
  br label %while.cond.1779

while.cond.1779:                                  ; preds = %sw.epilog, %do.end.1778
  %990 = load i32, i32* %shy, align 4
  %tobool1780 = icmp ne i32 %990, 0
  %lnot1781 = xor i1 %tobool1780, true
  br i1 %lnot1781, label %while.body.1782, label %while.end.1823

while.body.1782:                                  ; preds = %while.cond.1779
  br label %do.body.1783

do.body.1783:                                     ; preds = %while.body.1782
  %991 = load i8*, i8** %p, align 8
  %992 = load i8*, i8** %pend, align 8
  %cmp1785 = icmp eq i8* %991, %992
  br i1 %cmp1785, label %if.then.1787, label %if.end.1788

if.then.1787:                                     ; preds = %do.body.1783
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.1788:                                      ; preds = %do.body.1783
  store i32 1, i32* %len1784, align 4
  %993 = load i8*, i8** %p, align 8
  %994 = load i8, i8* %993, align 1
  %conv1789 = zext i8 %994 to i32
  store i32 %conv1789, i32* %c, align 4
  %995 = load i32, i32* %len1784, align 4
  %996 = load i8*, i8** %p, align 8
  %idx.ext1790 = sext i32 %995 to i64
  %add.ptr1791 = getelementptr inbounds i8, i8* %996, i64 %idx.ext1790
  store i8* %add.ptr1791, i8** %p, align 8
  br label %do.end.1792

do.end.1792:                                      ; preds = %if.end.1788
  %997 = load i32, i32* %c, align 4
  switch i32 %997, label %sw.default [
    i32 58, label %sw.bb.1793
    i32 48, label %sw.bb.1794
    i32 49, label %sw.bb.1809
    i32 50, label %sw.bb.1809
    i32 51, label %sw.bb.1809
    i32 52, label %sw.bb.1809
    i32 53, label %sw.bb.1809
    i32 54, label %sw.bb.1809
    i32 55, label %sw.bb.1809
    i32 56, label %sw.bb.1809
    i32 57, label %sw.bb.1809
  ]

sw.bb.1793:                                       ; preds = %do.end.1792
  store i32 1, i32* %shy, align 4
  br label %sw.epilog

sw.bb.1794:                                       ; preds = %do.end.1792
  %998 = load i32, i32* %regnum, align 4
  %cmp1795 = icmp eq i32 %998, 0
  br i1 %cmp1795, label %if.then.1797, label %if.end.1808

if.then.1797:                                     ; preds = %sw.bb.1794
  br label %do.body.1798

do.body.1798:                                     ; preds = %if.then.1797
  br label %do.body.1799

do.body.1799:                                     ; preds = %do.body.1798
  %table1800 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %999 = load i32*, i32** %table1800, align 8
  %tobool1801 = icmp ne i32* %999, null
  br i1 %tobool1801, label %if.then.1802, label %if.end.1804

if.then.1802:                                     ; preds = %do.body.1799
  %table1803 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1000 = load i32*, i32** %table1803, align 8
  %1001 = bitcast i32* %1000 to i8*
  call void @free(i8* %1001) #4
  br label %if.end.1804

if.end.1804:                                      ; preds = %if.then.1802, %do.body.1799
  br label %do.end.1805

do.end.1805:                                      ; preds = %if.end.1804
  %stack1806 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1002 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1806, align 8
  %1003 = bitcast %struct.compile_stack_elt_t* %1002 to i8*
  call void @free(i8* %1003) #4
  store i32 2, i32* %retval
  br label %do.end.4144

do.end.1807:                                      ; No predecessors!
  br label %if.end.1808

if.end.1808:                                      ; preds = %do.end.1807, %sw.bb.1794
  br label %sw.bb.1809

sw.bb.1809:                                       ; preds = %do.end.1792, %do.end.1792, %do.end.1792, %do.end.1792, %do.end.1792, %do.end.1792, %do.end.1792, %do.end.1792, %do.end.1792, %if.end.1808
  %1004 = load i32, i32* %regnum, align 4
  %mul1810 = mul nsw i32 10, %1004
  %1005 = load i32, i32* %c, align 4
  %sub1811 = sub nsw i32 %1005, 48
  %add1812 = add nsw i32 %mul1810, %sub1811
  store i32 %add1812, i32* %regnum, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.1792
  br label %do.body.1813

do.body.1813:                                     ; preds = %sw.default
  br label %do.body.1814

do.body.1814:                                     ; preds = %do.body.1813
  %table1815 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1006 = load i32*, i32** %table1815, align 8
  %tobool1816 = icmp ne i32* %1006, null
  br i1 %tobool1816, label %if.then.1817, label %if.end.1819

if.then.1817:                                     ; preds = %do.body.1814
  %table1818 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1007 = load i32*, i32** %table1818, align 8
  %1008 = bitcast i32* %1007 to i8*
  call void @free(i8* %1008) #4
  br label %if.end.1819

if.end.1819:                                      ; preds = %if.then.1817, %do.body.1814
  br label %do.end.1820

do.end.1820:                                      ; preds = %if.end.1819
  %stack1821 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1009 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1821, align 8
  %1010 = bitcast %struct.compile_stack_elt_t* %1009 to i8*
  call void @free(i8* %1010) #4
  store i32 2, i32* %retval
  br label %do.end.4144

do.end.1822:                                      ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.1822, %sw.bb.1809, %sw.bb.1793
  br label %while.cond.1779

while.end.1823:                                   ; preds = %while.cond.1779
  br label %if.end.1824

if.end.1824:                                      ; preds = %while.end.1823, %land.lhs.true.1764, %if.then.1761
  br label %if.end.1825

if.end.1825:                                      ; preds = %if.end.1824, %handle_open
  %1011 = load i32, i32* %shy, align 4
  %tobool1826 = icmp ne i32 %1011, 0
  br i1 %tobool1826, label %if.else.1831, label %if.then.1827

if.then.1827:                                     ; preds = %if.end.1825
  %1012 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub1828 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1012, i32 0, i32 6
  %1013 = load i64, i64* %re_nsub1828, align 8
  %inc1829 = add i64 %1013, 1
  store i64 %inc1829, i64* %re_nsub1828, align 8
  %conv1830 = trunc i64 %inc1829 to i32
  store i32 %conv1830, i32* %regnum, align 4
  br label %if.end.1868

if.else.1831:                                     ; preds = %if.end.1825
  %1014 = load i32, i32* %regnum, align 4
  %tobool1832 = icmp ne i32 %1014, 0
  br i1 %tobool1832, label %if.then.1833, label %if.else.1863

if.then.1833:                                     ; preds = %if.else.1831
  store i32 0, i32* %shy, align 4
  %1015 = load i32, i32* %regnum, align 4
  %conv1834 = sext i32 %1015 to i64
  %1016 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub1835 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1016, i32 0, i32 6
  %1017 = load i64, i64* %re_nsub1835, align 8
  %cmp1836 = icmp ugt i64 %conv1834, %1017
  br i1 %cmp1836, label %if.then.1838, label %if.else.1841

if.then.1838:                                     ; preds = %if.then.1833
  %1018 = load i32, i32* %regnum, align 4
  %conv1839 = sext i32 %1018 to i64
  %1019 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub1840 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1019, i32 0, i32 6
  store i64 %conv1839, i64* %re_nsub1840, align 8
  br label %if.end.1862

if.else.1841:                                     ; preds = %if.then.1833
  %1020 = load i32, i32* %regnum, align 4
  %conv1842 = sext i32 %1020 to i64
  %1021 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub1843 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1021, i32 0, i32 6
  %1022 = load i64, i64* %re_nsub1843, align 8
  %cmp1844 = icmp ugt i64 %conv1842, %1022
  br i1 %cmp1844, label %if.then.1850, label %lor.lhs.false.1846

lor.lhs.false.1846:                               ; preds = %if.else.1841
  %1023 = load i32, i32* %regnum, align 4
  %call1847 = call signext i8 @group_in_compile_stack(%struct.compile_stack_type* byval align 8 %compile_stack, i32 %1023)
  %conv1848 = sext i8 %call1847 to i32
  %tobool1849 = icmp ne i32 %conv1848, 0
  br i1 %tobool1849, label %if.then.1850, label %if.end.1861

if.then.1850:                                     ; preds = %lor.lhs.false.1846, %if.else.1841
  br label %do.body.1851

do.body.1851:                                     ; preds = %if.then.1850
  br label %do.body.1852

do.body.1852:                                     ; preds = %do.body.1851
  %table1853 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1024 = load i32*, i32** %table1853, align 8
  %tobool1854 = icmp ne i32* %1024, null
  br i1 %tobool1854, label %if.then.1855, label %if.end.1857

if.then.1855:                                     ; preds = %do.body.1852
  %table1856 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1025 = load i32*, i32** %table1856, align 8
  %1026 = bitcast i32* %1025 to i8*
  call void @free(i8* %1026) #4
  br label %if.end.1857

if.end.1857:                                      ; preds = %if.then.1855, %do.body.1852
  br label %do.end.1858

do.end.1858:                                      ; preds = %if.end.1857
  %stack1859 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1027 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1859, align 8
  %1028 = bitcast %struct.compile_stack_elt_t* %1027 to i8*
  call void @free(i8* %1028) #4
  store i32 2, i32* %retval
  br label %do.end.4144

do.end.1860:                                      ; No predecessors!
  br label %if.end.1861

if.end.1861:                                      ; preds = %do.end.1860, %lor.lhs.false.1846
  br label %if.end.1862

if.end.1862:                                      ; preds = %if.end.1861, %if.then.1838
  br label %if.end.1867

if.else.1863:                                     ; preds = %if.else.1831
  %1029 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub1864 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1029, i32 0, i32 6
  %1030 = load i64, i64* %re_nsub1864, align 8
  %sub1865 = sub i64 0, %1030
  %conv1866 = trunc i64 %sub1865 to i32
  store i32 %conv1866, i32* %regnum, align 4
  br label %if.end.1867

if.end.1867:                                      ; preds = %if.else.1863, %if.end.1862
  br label %if.end.1868

if.end.1868:                                      ; preds = %if.end.1867, %if.then.1827
  %avail1869 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1031 = load i64, i64* %avail1869, align 8
  %size1870 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 1
  %1032 = load i64, i64* %size1870, align 8
  %cmp1871 = icmp eq i64 %1031, %1032
  br i1 %cmp1871, label %if.then.1873, label %if.end.1887

if.then.1873:                                     ; preds = %if.end.1868
  %stack1874 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1033 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1874, align 8
  %1034 = bitcast %struct.compile_stack_elt_t* %1033 to i8*
  %size1875 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 1
  %1035 = load i64, i64* %size1875, align 8
  %shl1876 = shl i64 %1035, 1
  %mul1877 = mul i64 %shl1876, 32
  %call1878 = call i8* @xrealloc(i8* %1034, i64 %mul1877)
  %1036 = bitcast i8* %call1878 to %struct.compile_stack_elt_t*
  %stack1879 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  store %struct.compile_stack_elt_t* %1036, %struct.compile_stack_elt_t** %stack1879, align 8
  %stack1880 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1037 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1880, align 8
  %cmp1881 = icmp eq %struct.compile_stack_elt_t* %1037, null
  br i1 %cmp1881, label %if.then.1883, label %if.end.1884

if.then.1883:                                     ; preds = %if.then.1873
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.1884:                                      ; preds = %if.then.1873
  %size1885 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 1
  %1038 = load i64, i64* %size1885, align 8
  %shl1886 = shl i64 %1038, 1
  store i64 %shl1886, i64* %size1885, align 8
  br label %if.end.1887

if.end.1887:                                      ; preds = %if.end.1884, %if.end.1868
  %1039 = load i8*, i8** %begalt, align 8
  %1040 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1888 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1040, i32 0, i32 0
  %1041 = load i8*, i8** %buffer1888, align 8
  %sub.ptr.lhs.cast1889 = ptrtoint i8* %1039 to i64
  %sub.ptr.rhs.cast1890 = ptrtoint i8* %1041 to i64
  %sub.ptr.sub1891 = sub i64 %sub.ptr.lhs.cast1889, %sub.ptr.rhs.cast1890
  %avail1892 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1042 = load i64, i64* %avail1892, align 8
  %stack1893 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1043 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1893, align 8
  %arrayidx1894 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1043, i64 %1042
  %begalt_offset = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1894, i32 0, i32 0
  store i64 %sub.ptr.sub1891, i64* %begalt_offset, align 8
  %1044 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1895 = icmp ne i8* %1044, null
  br i1 %tobool1895, label %cond.true.1896, label %cond.false.1902

cond.true.1896:                                   ; preds = %if.end.1887
  %1045 = load i8*, i8** %fixup_alt_jump, align 8
  %1046 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1897 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1046, i32 0, i32 0
  %1047 = load i8*, i8** %buffer1897, align 8
  %sub.ptr.lhs.cast1898 = ptrtoint i8* %1045 to i64
  %sub.ptr.rhs.cast1899 = ptrtoint i8* %1047 to i64
  %sub.ptr.sub1900 = sub i64 %sub.ptr.lhs.cast1898, %sub.ptr.rhs.cast1899
  %add1901 = add nsw i64 %sub.ptr.sub1900, 1
  br label %cond.end.1903

cond.false.1902:                                  ; preds = %if.end.1887
  br label %cond.end.1903

cond.end.1903:                                    ; preds = %cond.false.1902, %cond.true.1896
  %cond1904 = phi i64 [ %add1901, %cond.true.1896 ], [ 0, %cond.false.1902 ]
  %avail1905 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1048 = load i64, i64* %avail1905, align 8
  %stack1906 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1049 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1906, align 8
  %arrayidx1907 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1049, i64 %1048
  %fixup_alt_jump1908 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1907, i32 0, i32 1
  store i64 %cond1904, i64* %fixup_alt_jump1908, align 8
  %1050 = load i8*, i8** %b, align 8
  %1051 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1909 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1051, i32 0, i32 0
  %1052 = load i8*, i8** %buffer1909, align 8
  %sub.ptr.lhs.cast1910 = ptrtoint i8* %1050 to i64
  %sub.ptr.rhs.cast1911 = ptrtoint i8* %1052 to i64
  %sub.ptr.sub1912 = sub i64 %sub.ptr.lhs.cast1910, %sub.ptr.rhs.cast1911
  %avail1913 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1053 = load i64, i64* %avail1913, align 8
  %stack1914 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1054 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1914, align 8
  %arrayidx1915 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1054, i64 %1053
  %laststart_offset = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1915, i32 0, i32 2
  store i64 %sub.ptr.sub1912, i64* %laststart_offset, align 8
  %1055 = load i32, i32* %regnum, align 4
  %avail1916 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1056 = load i64, i64* %avail1916, align 8
  %stack1917 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1057 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1917, align 8
  %arrayidx1918 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1057, i64 %1056
  %regnum1919 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1918, i32 0, i32 3
  store i32 %1055, i32* %regnum1919, align 4
  %1058 = load i32, i32* %regnum, align 4
  %cmp1920 = icmp sle i32 %1058, 255
  br i1 %cmp1920, label %land.lhs.true.1922, label %if.end.2005

land.lhs.true.1922:                               ; preds = %cond.end.1903
  %1059 = load i32, i32* %regnum, align 4
  %cmp1923 = icmp sgt i32 %1059, 0
  br i1 %cmp1923, label %if.then.1925, label %if.end.2005

if.then.1925:                                     ; preds = %land.lhs.true.1922
  br label %do.body.1926

do.body.1926:                                     ; preds = %if.then.1925
  br label %while.cond.1927

while.cond.1927:                                  ; preds = %do.end.1999, %do.body.1926
  %1060 = load i8*, i8** %b, align 8
  %1061 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1928 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1061, i32 0, i32 0
  %1062 = load i8*, i8** %buffer1928, align 8
  %sub.ptr.lhs.cast1929 = ptrtoint i8* %1060 to i64
  %sub.ptr.rhs.cast1930 = ptrtoint i8* %1062 to i64
  %sub.ptr.sub1931 = sub i64 %sub.ptr.lhs.cast1929, %sub.ptr.rhs.cast1930
  %add1932 = add nsw i64 %sub.ptr.sub1931, 2
  %1063 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1933 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1063, i32 0, i32 1
  %1064 = load i64, i64* %allocated1933, align 8
  %cmp1934 = icmp ugt i64 %add1932, %1064
  br i1 %cmp1934, label %while.body.1936, label %while.end.2000

while.body.1936:                                  ; preds = %while.cond.1927
  br label %do.body.1937

do.body.1937:                                     ; preds = %while.body.1936
  %1065 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1939 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1065, i32 0, i32 0
  %1066 = load i8*, i8** %buffer1939, align 8
  store i8* %1066, i8** %old_buffer1938, align 8
  %1067 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1940 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1067, i32 0, i32 1
  %1068 = load i64, i64* %allocated1940, align 8
  %cmp1941 = icmp eq i64 %1068, 32768
  br i1 %cmp1941, label %if.then.1943, label %if.end.1944

if.then.1943:                                     ; preds = %do.body.1937
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.1944:                                      ; preds = %do.body.1937
  %1069 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1945 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1069, i32 0, i32 1
  %1070 = load i64, i64* %allocated1945, align 8
  %shl1946 = shl i64 %1070, 1
  store i64 %shl1946, i64* %allocated1945, align 8
  %1071 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1947 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1071, i32 0, i32 1
  %1072 = load i64, i64* %allocated1947, align 8
  %cmp1948 = icmp ugt i64 %1072, 32768
  br i1 %cmp1948, label %if.then.1950, label %if.end.1952

if.then.1950:                                     ; preds = %if.end.1944
  %1073 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1951 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1073, i32 0, i32 1
  store i64 32768, i64* %allocated1951, align 8
  br label %if.end.1952

if.end.1952:                                      ; preds = %if.then.1950, %if.end.1944
  %1074 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1953 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1074, i32 0, i32 0
  %1075 = load i8*, i8** %buffer1953, align 8
  %1076 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1954 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1076, i32 0, i32 1
  %1077 = load i64, i64* %allocated1954, align 8
  %mul1955 = mul i64 %1077, 1
  %call1956 = call i8* @xrealloc(i8* %1075, i64 %mul1955)
  %1078 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1957 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1078, i32 0, i32 0
  store i8* %call1956, i8** %buffer1957, align 8
  %1079 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1958 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1079, i32 0, i32 0
  %1080 = load i8*, i8** %buffer1958, align 8
  %cmp1959 = icmp eq i8* %1080, null
  br i1 %cmp1959, label %if.then.1961, label %if.end.1962

if.then.1961:                                     ; preds = %if.end.1952
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.1962:                                      ; preds = %if.end.1952
  %1081 = load i8*, i8** %old_buffer1938, align 8
  %1082 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1963 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1082, i32 0, i32 0
  %1083 = load i8*, i8** %buffer1963, align 8
  %cmp1964 = icmp ne i8* %1081, %1083
  br i1 %cmp1964, label %if.then.1966, label %if.end.1998

if.then.1966:                                     ; preds = %if.end.1962
  %1084 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1968 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1084, i32 0, i32 0
  %1085 = load i8*, i8** %buffer1968, align 8
  store i8* %1085, i8** %new_buffer1967, align 8
  %1086 = load i8*, i8** %new_buffer1967, align 8
  %1087 = load i8*, i8** %b, align 8
  %1088 = load i8*, i8** %old_buffer1938, align 8
  %sub.ptr.lhs.cast1969 = ptrtoint i8* %1087 to i64
  %sub.ptr.rhs.cast1970 = ptrtoint i8* %1088 to i64
  %sub.ptr.sub1971 = sub i64 %sub.ptr.lhs.cast1969, %sub.ptr.rhs.cast1970
  %add.ptr1972 = getelementptr inbounds i8, i8* %1086, i64 %sub.ptr.sub1971
  store i8* %add.ptr1972, i8** %b, align 8
  %1089 = load i8*, i8** %new_buffer1967, align 8
  %1090 = load i8*, i8** %begalt, align 8
  %1091 = load i8*, i8** %old_buffer1938, align 8
  %sub.ptr.lhs.cast1973 = ptrtoint i8* %1090 to i64
  %sub.ptr.rhs.cast1974 = ptrtoint i8* %1091 to i64
  %sub.ptr.sub1975 = sub i64 %sub.ptr.lhs.cast1973, %sub.ptr.rhs.cast1974
  %add.ptr1976 = getelementptr inbounds i8, i8* %1089, i64 %sub.ptr.sub1975
  store i8* %add.ptr1976, i8** %begalt, align 8
  %1092 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1977 = icmp ne i8* %1092, null
  br i1 %tobool1977, label %if.then.1978, label %if.end.1983

if.then.1978:                                     ; preds = %if.then.1966
  %1093 = load i8*, i8** %new_buffer1967, align 8
  %1094 = load i8*, i8** %fixup_alt_jump, align 8
  %1095 = load i8*, i8** %old_buffer1938, align 8
  %sub.ptr.lhs.cast1979 = ptrtoint i8* %1094 to i64
  %sub.ptr.rhs.cast1980 = ptrtoint i8* %1095 to i64
  %sub.ptr.sub1981 = sub i64 %sub.ptr.lhs.cast1979, %sub.ptr.rhs.cast1980
  %add.ptr1982 = getelementptr inbounds i8, i8* %1093, i64 %sub.ptr.sub1981
  store i8* %add.ptr1982, i8** %fixup_alt_jump, align 8
  br label %if.end.1983

if.end.1983:                                      ; preds = %if.then.1978, %if.then.1966
  %1096 = load i8*, i8** %laststart, align 8
  %tobool1984 = icmp ne i8* %1096, null
  br i1 %tobool1984, label %if.then.1985, label %if.end.1990

if.then.1985:                                     ; preds = %if.end.1983
  %1097 = load i8*, i8** %new_buffer1967, align 8
  %1098 = load i8*, i8** %laststart, align 8
  %1099 = load i8*, i8** %old_buffer1938, align 8
  %sub.ptr.lhs.cast1986 = ptrtoint i8* %1098 to i64
  %sub.ptr.rhs.cast1987 = ptrtoint i8* %1099 to i64
  %sub.ptr.sub1988 = sub i64 %sub.ptr.lhs.cast1986, %sub.ptr.rhs.cast1987
  %add.ptr1989 = getelementptr inbounds i8, i8* %1097, i64 %sub.ptr.sub1988
  store i8* %add.ptr1989, i8** %laststart, align 8
  br label %if.end.1990

if.end.1990:                                      ; preds = %if.then.1985, %if.end.1983
  %1100 = load i8*, i8** %pending_exact, align 8
  %tobool1991 = icmp ne i8* %1100, null
  br i1 %tobool1991, label %if.then.1992, label %if.end.1997

if.then.1992:                                     ; preds = %if.end.1990
  %1101 = load i8*, i8** %new_buffer1967, align 8
  %1102 = load i8*, i8** %pending_exact, align 8
  %1103 = load i8*, i8** %old_buffer1938, align 8
  %sub.ptr.lhs.cast1993 = ptrtoint i8* %1102 to i64
  %sub.ptr.rhs.cast1994 = ptrtoint i8* %1103 to i64
  %sub.ptr.sub1995 = sub i64 %sub.ptr.lhs.cast1993, %sub.ptr.rhs.cast1994
  %add.ptr1996 = getelementptr inbounds i8, i8* %1101, i64 %sub.ptr.sub1995
  store i8* %add.ptr1996, i8** %pending_exact, align 8
  br label %if.end.1997

if.end.1997:                                      ; preds = %if.then.1992, %if.end.1990
  br label %if.end.1998

if.end.1998:                                      ; preds = %if.end.1997, %if.end.1962
  br label %do.end.1999

do.end.1999:                                      ; preds = %if.end.1998
  br label %while.cond.1927

while.end.2000:                                   ; preds = %while.cond.1927
  %1104 = load i8*, i8** %b, align 8
  %incdec.ptr2001 = getelementptr inbounds i8, i8* %1104, i32 1
  store i8* %incdec.ptr2001, i8** %b, align 8
  store i8 6, i8* %1104, align 1
  %1105 = load i32, i32* %regnum, align 4
  %conv2002 = trunc i32 %1105 to i8
  %1106 = load i8*, i8** %b, align 8
  %incdec.ptr2003 = getelementptr inbounds i8, i8* %1106, i32 1
  store i8* %incdec.ptr2003, i8** %b, align 8
  store i8 %conv2002, i8* %1106, align 1
  br label %do.end.2004

do.end.2004:                                      ; preds = %while.end.2000
  br label %if.end.2005

if.end.2005:                                      ; preds = %do.end.2004, %land.lhs.true.1922, %cond.end.1903
  %avail2006 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1107 = load i64, i64* %avail2006, align 8
  %inc2007 = add i64 %1107, 1
  store i64 %inc2007, i64* %avail2006, align 8
  store i8* null, i8** %fixup_alt_jump, align 8
  store i8* null, i8** %laststart, align 8
  %1108 = load i8*, i8** %b, align 8
  store i8* %1108, i8** %begalt, align 8
  store i8* null, i8** %pending_exact, align 8
  br label %sw.epilog.3763

sw.bb.2008:                                       ; preds = %do.end.1752
  %1109 = load i64, i64* %syntax.addr, align 8
  %and2009 = and i64 %1109, 8192
  %tobool2010 = icmp ne i64 %and2009, 0
  br i1 %tobool2010, label %if.then.2011, label %if.end.2012

if.then.2011:                                     ; preds = %sw.bb.2008
  br label %normal_backslash

if.end.2012:                                      ; preds = %sw.bb.2008
  %avail2013 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1110 = load i64, i64* %avail2013, align 8
  %cmp2014 = icmp eq i64 %1110, 0
  br i1 %cmp2014, label %if.then.2016, label %if.end.2032

if.then.2016:                                     ; preds = %if.end.2012
  %1111 = load i64, i64* %syntax.addr, align 8
  %and2017 = and i64 %1111, 131072
  %tobool2018 = icmp ne i64 %and2017, 0
  br i1 %tobool2018, label %if.then.2019, label %if.else.2020

if.then.2019:                                     ; preds = %if.then.2016
  br label %normal_backslash

if.else.2020:                                     ; preds = %if.then.2016
  br label %do.body.2021

do.body.2021:                                     ; preds = %if.else.2020
  br label %do.body.2022

do.body.2022:                                     ; preds = %do.body.2021
  %table2023 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1112 = load i32*, i32** %table2023, align 8
  %tobool2024 = icmp ne i32* %1112, null
  br i1 %tobool2024, label %if.then.2025, label %if.end.2027

if.then.2025:                                     ; preds = %do.body.2022
  %table2026 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1113 = load i32*, i32** %table2026, align 8
  %1114 = bitcast i32* %1113 to i8*
  call void @free(i8* %1114) #4
  br label %if.end.2027

if.end.2027:                                      ; preds = %if.then.2025, %do.body.2022
  br label %do.end.2028

do.end.2028:                                      ; preds = %if.end.2027
  %stack2029 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1115 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2029, align 8
  %1116 = bitcast %struct.compile_stack_elt_t* %1115 to i8*
  call void @free(i8* %1116) #4
  store i32 16, i32* %retval
  br label %do.end.4144

do.end.2030:                                      ; No predecessors!
  br label %if.end.2031

if.end.2031:                                      ; preds = %do.end.2030
  br label %if.end.2032

if.end.2032:                                      ; preds = %if.end.2031, %if.end.2012
  br label %handle_close

handle_close:                                     ; preds = %if.end.2032, %if.then.1708
  br label %do.body.2033

do.body.2033:                                     ; preds = %handle_close
  %1117 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2034 = icmp ne i8* %1117, null
  br i1 %tobool2034, label %if.then.2035, label %if.end.2041

if.then.2035:                                     ; preds = %do.body.2033
  %1118 = load i8*, i8** %fixup_alt_jump, align 8
  %1119 = load i8*, i8** %b, align 8
  %1120 = load i8*, i8** %fixup_alt_jump, align 8
  %sub.ptr.lhs.cast2036 = ptrtoint i8* %1119 to i64
  %sub.ptr.rhs.cast2037 = ptrtoint i8* %1120 to i64
  %sub.ptr.sub2038 = sub i64 %sub.ptr.lhs.cast2036, %sub.ptr.rhs.cast2037
  %sub2039 = sub nsw i64 %sub.ptr.sub2038, 3
  %conv2040 = trunc i64 %sub2039 to i32
  call void @store_op1(i32 13, i8* %1118, i32 %conv2040)
  br label %if.end.2041

if.end.2041:                                      ; preds = %if.then.2035, %do.body.2033
  br label %do.end.2042

do.end.2042:                                      ; preds = %if.end.2041
  %avail2043 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1121 = load i64, i64* %avail2043, align 8
  %cmp2044 = icmp eq i64 %1121, 0
  br i1 %cmp2044, label %if.then.2046, label %if.end.2062

if.then.2046:                                     ; preds = %do.end.2042
  %1122 = load i64, i64* %syntax.addr, align 8
  %and2047 = and i64 %1122, 131072
  %tobool2048 = icmp ne i64 %and2047, 0
  br i1 %tobool2048, label %if.then.2049, label %if.else.2050

if.then.2049:                                     ; preds = %if.then.2046
  br label %normal_char

if.else.2050:                                     ; preds = %if.then.2046
  br label %do.body.2051

do.body.2051:                                     ; preds = %if.else.2050
  br label %do.body.2052

do.body.2052:                                     ; preds = %do.body.2051
  %table2053 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1123 = load i32*, i32** %table2053, align 8
  %tobool2054 = icmp ne i32* %1123, null
  br i1 %tobool2054, label %if.then.2055, label %if.end.2057

if.then.2055:                                     ; preds = %do.body.2052
  %table2056 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1124 = load i32*, i32** %table2056, align 8
  %1125 = bitcast i32* %1124 to i8*
  call void @free(i8* %1125) #4
  br label %if.end.2057

if.end.2057:                                      ; preds = %if.then.2055, %do.body.2052
  br label %do.end.2058

do.end.2058:                                      ; preds = %if.end.2057
  %stack2059 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1126 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2059, align 8
  %1127 = bitcast %struct.compile_stack_elt_t* %1126 to i8*
  call void @free(i8* %1127) #4
  store i32 16, i32* %retval
  br label %do.end.4144

do.end.2060:                                      ; No predecessors!
  br label %if.end.2061

if.end.2061:                                      ; preds = %do.end.2060
  br label %if.end.2062

if.end.2062:                                      ; preds = %if.end.2061, %do.end.2042
  %avail2064 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1128 = load i64, i64* %avail2064, align 8
  %dec2065 = add i64 %1128, -1
  store i64 %dec2065, i64* %avail2064, align 8
  %1129 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2066 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1129, i32 0, i32 0
  %1130 = load i8*, i8** %buffer2066, align 8
  %avail2067 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1131 = load i64, i64* %avail2067, align 8
  %stack2068 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1132 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2068, align 8
  %arrayidx2069 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1132, i64 %1131
  %begalt_offset2070 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx2069, i32 0, i32 0
  %1133 = load i64, i64* %begalt_offset2070, align 8
  %add.ptr2071 = getelementptr inbounds i8, i8* %1130, i64 %1133
  store i8* %add.ptr2071, i8** %begalt, align 8
  %avail2072 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1134 = load i64, i64* %avail2072, align 8
  %stack2073 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1135 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2073, align 8
  %arrayidx2074 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1135, i64 %1134
  %fixup_alt_jump2075 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx2074, i32 0, i32 1
  %1136 = load i64, i64* %fixup_alt_jump2075, align 8
  %tobool2076 = icmp ne i64 %1136, 0
  br i1 %tobool2076, label %cond.true.2077, label %cond.false.2085

cond.true.2077:                                   ; preds = %if.end.2062
  %1137 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2078 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1137, i32 0, i32 0
  %1138 = load i8*, i8** %buffer2078, align 8
  %avail2079 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1139 = load i64, i64* %avail2079, align 8
  %stack2080 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1140 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2080, align 8
  %arrayidx2081 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1140, i64 %1139
  %fixup_alt_jump2082 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx2081, i32 0, i32 1
  %1141 = load i64, i64* %fixup_alt_jump2082, align 8
  %add.ptr2083 = getelementptr inbounds i8, i8* %1138, i64 %1141
  %add.ptr2084 = getelementptr inbounds i8, i8* %add.ptr2083, i64 -1
  br label %cond.end.2086

cond.false.2085:                                  ; preds = %if.end.2062
  br label %cond.end.2086

cond.end.2086:                                    ; preds = %cond.false.2085, %cond.true.2077
  %cond2087 = phi i8* [ %add.ptr2084, %cond.true.2077 ], [ null, %cond.false.2085 ]
  store i8* %cond2087, i8** %fixup_alt_jump, align 8
  %1142 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2088 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1142, i32 0, i32 0
  %1143 = load i8*, i8** %buffer2088, align 8
  %avail2089 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1144 = load i64, i64* %avail2089, align 8
  %stack2090 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1145 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2090, align 8
  %arrayidx2091 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1145, i64 %1144
  %laststart_offset2092 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx2091, i32 0, i32 2
  %1146 = load i64, i64* %laststart_offset2092, align 8
  %add.ptr2093 = getelementptr inbounds i8, i8* %1143, i64 %1146
  store i8* %add.ptr2093, i8** %laststart, align 8
  %avail2094 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1147 = load i64, i64* %avail2094, align 8
  %stack2095 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1148 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2095, align 8
  %arrayidx2096 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1148, i64 %1147
  %regnum2097 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx2096, i32 0, i32 3
  %1149 = load i32, i32* %regnum2097, align 4
  store i32 %1149, i32* %regnum2063, align 4
  store i8* null, i8** %pending_exact, align 8
  %1150 = load i32, i32* %regnum2063, align 4
  %cmp2098 = icmp sle i32 %1150, 255
  br i1 %cmp2098, label %land.lhs.true.2100, label %if.end.2183

land.lhs.true.2100:                               ; preds = %cond.end.2086
  %1151 = load i32, i32* %regnum2063, align 4
  %cmp2101 = icmp sgt i32 %1151, 0
  br i1 %cmp2101, label %if.then.2103, label %if.end.2183

if.then.2103:                                     ; preds = %land.lhs.true.2100
  br label %do.body.2104

do.body.2104:                                     ; preds = %if.then.2103
  br label %while.cond.2105

while.cond.2105:                                  ; preds = %do.end.2177, %do.body.2104
  %1152 = load i8*, i8** %b, align 8
  %1153 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2106 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1153, i32 0, i32 0
  %1154 = load i8*, i8** %buffer2106, align 8
  %sub.ptr.lhs.cast2107 = ptrtoint i8* %1152 to i64
  %sub.ptr.rhs.cast2108 = ptrtoint i8* %1154 to i64
  %sub.ptr.sub2109 = sub i64 %sub.ptr.lhs.cast2107, %sub.ptr.rhs.cast2108
  %add2110 = add nsw i64 %sub.ptr.sub2109, 2
  %1155 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2111 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1155, i32 0, i32 1
  %1156 = load i64, i64* %allocated2111, align 8
  %cmp2112 = icmp ugt i64 %add2110, %1156
  br i1 %cmp2112, label %while.body.2114, label %while.end.2178

while.body.2114:                                  ; preds = %while.cond.2105
  br label %do.body.2115

do.body.2115:                                     ; preds = %while.body.2114
  %1157 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2117 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1157, i32 0, i32 0
  %1158 = load i8*, i8** %buffer2117, align 8
  store i8* %1158, i8** %old_buffer2116, align 8
  %1159 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2118 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1159, i32 0, i32 1
  %1160 = load i64, i64* %allocated2118, align 8
  %cmp2119 = icmp eq i64 %1160, 32768
  br i1 %cmp2119, label %if.then.2121, label %if.end.2122

if.then.2121:                                     ; preds = %do.body.2115
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.2122:                                      ; preds = %do.body.2115
  %1161 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2123 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1161, i32 0, i32 1
  %1162 = load i64, i64* %allocated2123, align 8
  %shl2124 = shl i64 %1162, 1
  store i64 %shl2124, i64* %allocated2123, align 8
  %1163 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2125 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1163, i32 0, i32 1
  %1164 = load i64, i64* %allocated2125, align 8
  %cmp2126 = icmp ugt i64 %1164, 32768
  br i1 %cmp2126, label %if.then.2128, label %if.end.2130

if.then.2128:                                     ; preds = %if.end.2122
  %1165 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2129 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1165, i32 0, i32 1
  store i64 32768, i64* %allocated2129, align 8
  br label %if.end.2130

if.end.2130:                                      ; preds = %if.then.2128, %if.end.2122
  %1166 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2131 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1166, i32 0, i32 0
  %1167 = load i8*, i8** %buffer2131, align 8
  %1168 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2132 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1168, i32 0, i32 1
  %1169 = load i64, i64* %allocated2132, align 8
  %mul2133 = mul i64 %1169, 1
  %call2134 = call i8* @xrealloc(i8* %1167, i64 %mul2133)
  %1170 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2135 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1170, i32 0, i32 0
  store i8* %call2134, i8** %buffer2135, align 8
  %1171 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2136 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1171, i32 0, i32 0
  %1172 = load i8*, i8** %buffer2136, align 8
  %cmp2137 = icmp eq i8* %1172, null
  br i1 %cmp2137, label %if.then.2139, label %if.end.2140

if.then.2139:                                     ; preds = %if.end.2130
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.2140:                                      ; preds = %if.end.2130
  %1173 = load i8*, i8** %old_buffer2116, align 8
  %1174 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2141 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1174, i32 0, i32 0
  %1175 = load i8*, i8** %buffer2141, align 8
  %cmp2142 = icmp ne i8* %1173, %1175
  br i1 %cmp2142, label %if.then.2144, label %if.end.2176

if.then.2144:                                     ; preds = %if.end.2140
  %1176 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2146 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1176, i32 0, i32 0
  %1177 = load i8*, i8** %buffer2146, align 8
  store i8* %1177, i8** %new_buffer2145, align 8
  %1178 = load i8*, i8** %new_buffer2145, align 8
  %1179 = load i8*, i8** %b, align 8
  %1180 = load i8*, i8** %old_buffer2116, align 8
  %sub.ptr.lhs.cast2147 = ptrtoint i8* %1179 to i64
  %sub.ptr.rhs.cast2148 = ptrtoint i8* %1180 to i64
  %sub.ptr.sub2149 = sub i64 %sub.ptr.lhs.cast2147, %sub.ptr.rhs.cast2148
  %add.ptr2150 = getelementptr inbounds i8, i8* %1178, i64 %sub.ptr.sub2149
  store i8* %add.ptr2150, i8** %b, align 8
  %1181 = load i8*, i8** %new_buffer2145, align 8
  %1182 = load i8*, i8** %begalt, align 8
  %1183 = load i8*, i8** %old_buffer2116, align 8
  %sub.ptr.lhs.cast2151 = ptrtoint i8* %1182 to i64
  %sub.ptr.rhs.cast2152 = ptrtoint i8* %1183 to i64
  %sub.ptr.sub2153 = sub i64 %sub.ptr.lhs.cast2151, %sub.ptr.rhs.cast2152
  %add.ptr2154 = getelementptr inbounds i8, i8* %1181, i64 %sub.ptr.sub2153
  store i8* %add.ptr2154, i8** %begalt, align 8
  %1184 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2155 = icmp ne i8* %1184, null
  br i1 %tobool2155, label %if.then.2156, label %if.end.2161

if.then.2156:                                     ; preds = %if.then.2144
  %1185 = load i8*, i8** %new_buffer2145, align 8
  %1186 = load i8*, i8** %fixup_alt_jump, align 8
  %1187 = load i8*, i8** %old_buffer2116, align 8
  %sub.ptr.lhs.cast2157 = ptrtoint i8* %1186 to i64
  %sub.ptr.rhs.cast2158 = ptrtoint i8* %1187 to i64
  %sub.ptr.sub2159 = sub i64 %sub.ptr.lhs.cast2157, %sub.ptr.rhs.cast2158
  %add.ptr2160 = getelementptr inbounds i8, i8* %1185, i64 %sub.ptr.sub2159
  store i8* %add.ptr2160, i8** %fixup_alt_jump, align 8
  br label %if.end.2161

if.end.2161:                                      ; preds = %if.then.2156, %if.then.2144
  %1188 = load i8*, i8** %laststart, align 8
  %tobool2162 = icmp ne i8* %1188, null
  br i1 %tobool2162, label %if.then.2163, label %if.end.2168

if.then.2163:                                     ; preds = %if.end.2161
  %1189 = load i8*, i8** %new_buffer2145, align 8
  %1190 = load i8*, i8** %laststart, align 8
  %1191 = load i8*, i8** %old_buffer2116, align 8
  %sub.ptr.lhs.cast2164 = ptrtoint i8* %1190 to i64
  %sub.ptr.rhs.cast2165 = ptrtoint i8* %1191 to i64
  %sub.ptr.sub2166 = sub i64 %sub.ptr.lhs.cast2164, %sub.ptr.rhs.cast2165
  %add.ptr2167 = getelementptr inbounds i8, i8* %1189, i64 %sub.ptr.sub2166
  store i8* %add.ptr2167, i8** %laststart, align 8
  br label %if.end.2168

if.end.2168:                                      ; preds = %if.then.2163, %if.end.2161
  %1192 = load i8*, i8** %pending_exact, align 8
  %tobool2169 = icmp ne i8* %1192, null
  br i1 %tobool2169, label %if.then.2170, label %if.end.2175

if.then.2170:                                     ; preds = %if.end.2168
  %1193 = load i8*, i8** %new_buffer2145, align 8
  %1194 = load i8*, i8** %pending_exact, align 8
  %1195 = load i8*, i8** %old_buffer2116, align 8
  %sub.ptr.lhs.cast2171 = ptrtoint i8* %1194 to i64
  %sub.ptr.rhs.cast2172 = ptrtoint i8* %1195 to i64
  %sub.ptr.sub2173 = sub i64 %sub.ptr.lhs.cast2171, %sub.ptr.rhs.cast2172
  %add.ptr2174 = getelementptr inbounds i8, i8* %1193, i64 %sub.ptr.sub2173
  store i8* %add.ptr2174, i8** %pending_exact, align 8
  br label %if.end.2175

if.end.2175:                                      ; preds = %if.then.2170, %if.end.2168
  br label %if.end.2176

if.end.2176:                                      ; preds = %if.end.2175, %if.end.2140
  br label %do.end.2177

do.end.2177:                                      ; preds = %if.end.2176
  br label %while.cond.2105

while.end.2178:                                   ; preds = %while.cond.2105
  %1196 = load i8*, i8** %b, align 8
  %incdec.ptr2179 = getelementptr inbounds i8, i8* %1196, i32 1
  store i8* %incdec.ptr2179, i8** %b, align 8
  store i8 7, i8* %1196, align 1
  %1197 = load i32, i32* %regnum2063, align 4
  %conv2180 = trunc i32 %1197 to i8
  %1198 = load i8*, i8** %b, align 8
  %incdec.ptr2181 = getelementptr inbounds i8, i8* %1198, i32 1
  store i8* %incdec.ptr2181, i8** %b, align 8
  store i8 %conv2180, i8* %1198, align 1
  br label %do.end.2182

do.end.2182:                                      ; preds = %while.end.2178
  br label %if.end.2183

if.end.2183:                                      ; preds = %do.end.2182, %land.lhs.true.2100, %cond.end.2086
  br label %sw.epilog.3763

sw.bb.2184:                                       ; preds = %do.end.1752
  %1199 = load i64, i64* %syntax.addr, align 8
  %and2185 = and i64 %1199, 1024
  %tobool2186 = icmp ne i64 %and2185, 0
  br i1 %tobool2186, label %if.then.2190, label %lor.lhs.false.2187

lor.lhs.false.2187:                               ; preds = %sw.bb.2184
  %1200 = load i64, i64* %syntax.addr, align 8
  %and2188 = and i64 %1200, 32768
  %tobool2189 = icmp ne i64 %and2188, 0
  br i1 %tobool2189, label %if.then.2190, label %if.end.2191

if.then.2190:                                     ; preds = %lor.lhs.false.2187, %sw.bb.2184
  br label %normal_backslash

if.end.2191:                                      ; preds = %lor.lhs.false.2187
  br label %handle_alt

handle_alt:                                       ; preds = %if.end.2191, %if.then.1718, %if.then.1713
  %1201 = load i64, i64* %syntax.addr, align 8
  %and2192 = and i64 %1201, 1024
  %tobool2193 = icmp ne i64 %and2192, 0
  br i1 %tobool2193, label %if.then.2194, label %if.end.2195

if.then.2194:                                     ; preds = %handle_alt
  br label %normal_char

if.end.2195:                                      ; preds = %handle_alt
  br label %while.cond.2196

while.cond.2196:                                  ; preds = %do.end.2268, %if.end.2195
  %1202 = load i8*, i8** %b, align 8
  %1203 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2197 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1203, i32 0, i32 0
  %1204 = load i8*, i8** %buffer2197, align 8
  %sub.ptr.lhs.cast2198 = ptrtoint i8* %1202 to i64
  %sub.ptr.rhs.cast2199 = ptrtoint i8* %1204 to i64
  %sub.ptr.sub2200 = sub i64 %sub.ptr.lhs.cast2198, %sub.ptr.rhs.cast2199
  %add2201 = add nsw i64 %sub.ptr.sub2200, 3
  %1205 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2202 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1205, i32 0, i32 1
  %1206 = load i64, i64* %allocated2202, align 8
  %cmp2203 = icmp ugt i64 %add2201, %1206
  br i1 %cmp2203, label %while.body.2205, label %while.end.2269

while.body.2205:                                  ; preds = %while.cond.2196
  br label %do.body.2206

do.body.2206:                                     ; preds = %while.body.2205
  %1207 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2208 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1207, i32 0, i32 0
  %1208 = load i8*, i8** %buffer2208, align 8
  store i8* %1208, i8** %old_buffer2207, align 8
  %1209 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2209 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1209, i32 0, i32 1
  %1210 = load i64, i64* %allocated2209, align 8
  %cmp2210 = icmp eq i64 %1210, 32768
  br i1 %cmp2210, label %if.then.2212, label %if.end.2213

if.then.2212:                                     ; preds = %do.body.2206
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.2213:                                      ; preds = %do.body.2206
  %1211 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2214 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1211, i32 0, i32 1
  %1212 = load i64, i64* %allocated2214, align 8
  %shl2215 = shl i64 %1212, 1
  store i64 %shl2215, i64* %allocated2214, align 8
  %1213 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2216 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1213, i32 0, i32 1
  %1214 = load i64, i64* %allocated2216, align 8
  %cmp2217 = icmp ugt i64 %1214, 32768
  br i1 %cmp2217, label %if.then.2219, label %if.end.2221

if.then.2219:                                     ; preds = %if.end.2213
  %1215 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2220 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1215, i32 0, i32 1
  store i64 32768, i64* %allocated2220, align 8
  br label %if.end.2221

if.end.2221:                                      ; preds = %if.then.2219, %if.end.2213
  %1216 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2222 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1216, i32 0, i32 0
  %1217 = load i8*, i8** %buffer2222, align 8
  %1218 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2223 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1218, i32 0, i32 1
  %1219 = load i64, i64* %allocated2223, align 8
  %mul2224 = mul i64 %1219, 1
  %call2225 = call i8* @xrealloc(i8* %1217, i64 %mul2224)
  %1220 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2226 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1220, i32 0, i32 0
  store i8* %call2225, i8** %buffer2226, align 8
  %1221 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2227 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1221, i32 0, i32 0
  %1222 = load i8*, i8** %buffer2227, align 8
  %cmp2228 = icmp eq i8* %1222, null
  br i1 %cmp2228, label %if.then.2230, label %if.end.2231

if.then.2230:                                     ; preds = %if.end.2221
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.2231:                                      ; preds = %if.end.2221
  %1223 = load i8*, i8** %old_buffer2207, align 8
  %1224 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2232 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1224, i32 0, i32 0
  %1225 = load i8*, i8** %buffer2232, align 8
  %cmp2233 = icmp ne i8* %1223, %1225
  br i1 %cmp2233, label %if.then.2235, label %if.end.2267

if.then.2235:                                     ; preds = %if.end.2231
  %1226 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2237 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1226, i32 0, i32 0
  %1227 = load i8*, i8** %buffer2237, align 8
  store i8* %1227, i8** %new_buffer2236, align 8
  %1228 = load i8*, i8** %new_buffer2236, align 8
  %1229 = load i8*, i8** %b, align 8
  %1230 = load i8*, i8** %old_buffer2207, align 8
  %sub.ptr.lhs.cast2238 = ptrtoint i8* %1229 to i64
  %sub.ptr.rhs.cast2239 = ptrtoint i8* %1230 to i64
  %sub.ptr.sub2240 = sub i64 %sub.ptr.lhs.cast2238, %sub.ptr.rhs.cast2239
  %add.ptr2241 = getelementptr inbounds i8, i8* %1228, i64 %sub.ptr.sub2240
  store i8* %add.ptr2241, i8** %b, align 8
  %1231 = load i8*, i8** %new_buffer2236, align 8
  %1232 = load i8*, i8** %begalt, align 8
  %1233 = load i8*, i8** %old_buffer2207, align 8
  %sub.ptr.lhs.cast2242 = ptrtoint i8* %1232 to i64
  %sub.ptr.rhs.cast2243 = ptrtoint i8* %1233 to i64
  %sub.ptr.sub2244 = sub i64 %sub.ptr.lhs.cast2242, %sub.ptr.rhs.cast2243
  %add.ptr2245 = getelementptr inbounds i8, i8* %1231, i64 %sub.ptr.sub2244
  store i8* %add.ptr2245, i8** %begalt, align 8
  %1234 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2246 = icmp ne i8* %1234, null
  br i1 %tobool2246, label %if.then.2247, label %if.end.2252

if.then.2247:                                     ; preds = %if.then.2235
  %1235 = load i8*, i8** %new_buffer2236, align 8
  %1236 = load i8*, i8** %fixup_alt_jump, align 8
  %1237 = load i8*, i8** %old_buffer2207, align 8
  %sub.ptr.lhs.cast2248 = ptrtoint i8* %1236 to i64
  %sub.ptr.rhs.cast2249 = ptrtoint i8* %1237 to i64
  %sub.ptr.sub2250 = sub i64 %sub.ptr.lhs.cast2248, %sub.ptr.rhs.cast2249
  %add.ptr2251 = getelementptr inbounds i8, i8* %1235, i64 %sub.ptr.sub2250
  store i8* %add.ptr2251, i8** %fixup_alt_jump, align 8
  br label %if.end.2252

if.end.2252:                                      ; preds = %if.then.2247, %if.then.2235
  %1238 = load i8*, i8** %laststart, align 8
  %tobool2253 = icmp ne i8* %1238, null
  br i1 %tobool2253, label %if.then.2254, label %if.end.2259

if.then.2254:                                     ; preds = %if.end.2252
  %1239 = load i8*, i8** %new_buffer2236, align 8
  %1240 = load i8*, i8** %laststart, align 8
  %1241 = load i8*, i8** %old_buffer2207, align 8
  %sub.ptr.lhs.cast2255 = ptrtoint i8* %1240 to i64
  %sub.ptr.rhs.cast2256 = ptrtoint i8* %1241 to i64
  %sub.ptr.sub2257 = sub i64 %sub.ptr.lhs.cast2255, %sub.ptr.rhs.cast2256
  %add.ptr2258 = getelementptr inbounds i8, i8* %1239, i64 %sub.ptr.sub2257
  store i8* %add.ptr2258, i8** %laststart, align 8
  br label %if.end.2259

if.end.2259:                                      ; preds = %if.then.2254, %if.end.2252
  %1242 = load i8*, i8** %pending_exact, align 8
  %tobool2260 = icmp ne i8* %1242, null
  br i1 %tobool2260, label %if.then.2261, label %if.end.2266

if.then.2261:                                     ; preds = %if.end.2259
  %1243 = load i8*, i8** %new_buffer2236, align 8
  %1244 = load i8*, i8** %pending_exact, align 8
  %1245 = load i8*, i8** %old_buffer2207, align 8
  %sub.ptr.lhs.cast2262 = ptrtoint i8* %1244 to i64
  %sub.ptr.rhs.cast2263 = ptrtoint i8* %1245 to i64
  %sub.ptr.sub2264 = sub i64 %sub.ptr.lhs.cast2262, %sub.ptr.rhs.cast2263
  %add.ptr2265 = getelementptr inbounds i8, i8* %1243, i64 %sub.ptr.sub2264
  store i8* %add.ptr2265, i8** %pending_exact, align 8
  br label %if.end.2266

if.end.2266:                                      ; preds = %if.then.2261, %if.end.2259
  br label %if.end.2267

if.end.2267:                                      ; preds = %if.end.2266, %if.end.2231
  br label %do.end.2268

do.end.2268:                                      ; preds = %if.end.2267
  br label %while.cond.2196

while.end.2269:                                   ; preds = %while.cond.2196
  %1246 = load i8*, i8** %begalt, align 8
  %1247 = load i8*, i8** %b, align 8
  %add.ptr2270 = getelementptr inbounds i8, i8* %1247, i64 6
  %1248 = load i8*, i8** %begalt, align 8
  %sub.ptr.lhs.cast2271 = ptrtoint i8* %add.ptr2270 to i64
  %sub.ptr.rhs.cast2272 = ptrtoint i8* %1248 to i64
  %sub.ptr.sub2273 = sub i64 %sub.ptr.lhs.cast2271, %sub.ptr.rhs.cast2272
  %sub2274 = sub nsw i64 %sub.ptr.sub2273, 3
  %conv2275 = trunc i64 %sub2274 to i32
  %1249 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 14, i8* %1246, i32 %conv2275, i8* %1249)
  store i8* null, i8** %pending_exact, align 8
  %1250 = load i8*, i8** %b, align 8
  %add.ptr2276 = getelementptr inbounds i8, i8* %1250, i64 3
  store i8* %add.ptr2276, i8** %b, align 8
  br label %do.body.2277

do.body.2277:                                     ; preds = %while.end.2269
  %1251 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2278 = icmp ne i8* %1251, null
  br i1 %tobool2278, label %if.then.2279, label %if.end.2285

if.then.2279:                                     ; preds = %do.body.2277
  %1252 = load i8*, i8** %fixup_alt_jump, align 8
  %1253 = load i8*, i8** %b, align 8
  %1254 = load i8*, i8** %fixup_alt_jump, align 8
  %sub.ptr.lhs.cast2280 = ptrtoint i8* %1253 to i64
  %sub.ptr.rhs.cast2281 = ptrtoint i8* %1254 to i64
  %sub.ptr.sub2282 = sub i64 %sub.ptr.lhs.cast2280, %sub.ptr.rhs.cast2281
  %sub2283 = sub nsw i64 %sub.ptr.sub2282, 3
  %conv2284 = trunc i64 %sub2283 to i32
  call void @store_op1(i32 13, i8* %1252, i32 %conv2284)
  br label %if.end.2285

if.end.2285:                                      ; preds = %if.then.2279, %do.body.2277
  br label %do.end.2286

do.end.2286:                                      ; preds = %if.end.2285
  %1255 = load i8*, i8** %b, align 8
  store i8* %1255, i8** %fixup_alt_jump, align 8
  br label %while.cond.2287

while.cond.2287:                                  ; preds = %do.end.2359, %do.end.2286
  %1256 = load i8*, i8** %b, align 8
  %1257 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2288 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1257, i32 0, i32 0
  %1258 = load i8*, i8** %buffer2288, align 8
  %sub.ptr.lhs.cast2289 = ptrtoint i8* %1256 to i64
  %sub.ptr.rhs.cast2290 = ptrtoint i8* %1258 to i64
  %sub.ptr.sub2291 = sub i64 %sub.ptr.lhs.cast2289, %sub.ptr.rhs.cast2290
  %add2292 = add nsw i64 %sub.ptr.sub2291, 3
  %1259 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2293 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1259, i32 0, i32 1
  %1260 = load i64, i64* %allocated2293, align 8
  %cmp2294 = icmp ugt i64 %add2292, %1260
  br i1 %cmp2294, label %while.body.2296, label %while.end.2360

while.body.2296:                                  ; preds = %while.cond.2287
  br label %do.body.2297

do.body.2297:                                     ; preds = %while.body.2296
  %1261 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2299 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1261, i32 0, i32 0
  %1262 = load i8*, i8** %buffer2299, align 8
  store i8* %1262, i8** %old_buffer2298, align 8
  %1263 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2300 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1263, i32 0, i32 1
  %1264 = load i64, i64* %allocated2300, align 8
  %cmp2301 = icmp eq i64 %1264, 32768
  br i1 %cmp2301, label %if.then.2303, label %if.end.2304

if.then.2303:                                     ; preds = %do.body.2297
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.2304:                                      ; preds = %do.body.2297
  %1265 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2305 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1265, i32 0, i32 1
  %1266 = load i64, i64* %allocated2305, align 8
  %shl2306 = shl i64 %1266, 1
  store i64 %shl2306, i64* %allocated2305, align 8
  %1267 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2307 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1267, i32 0, i32 1
  %1268 = load i64, i64* %allocated2307, align 8
  %cmp2308 = icmp ugt i64 %1268, 32768
  br i1 %cmp2308, label %if.then.2310, label %if.end.2312

if.then.2310:                                     ; preds = %if.end.2304
  %1269 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2311 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1269, i32 0, i32 1
  store i64 32768, i64* %allocated2311, align 8
  br label %if.end.2312

if.end.2312:                                      ; preds = %if.then.2310, %if.end.2304
  %1270 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2313 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1270, i32 0, i32 0
  %1271 = load i8*, i8** %buffer2313, align 8
  %1272 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2314 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1272, i32 0, i32 1
  %1273 = load i64, i64* %allocated2314, align 8
  %mul2315 = mul i64 %1273, 1
  %call2316 = call i8* @xrealloc(i8* %1271, i64 %mul2315)
  %1274 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2317 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1274, i32 0, i32 0
  store i8* %call2316, i8** %buffer2317, align 8
  %1275 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2318 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1275, i32 0, i32 0
  %1276 = load i8*, i8** %buffer2318, align 8
  %cmp2319 = icmp eq i8* %1276, null
  br i1 %cmp2319, label %if.then.2321, label %if.end.2322

if.then.2321:                                     ; preds = %if.end.2312
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.2322:                                      ; preds = %if.end.2312
  %1277 = load i8*, i8** %old_buffer2298, align 8
  %1278 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2323 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1278, i32 0, i32 0
  %1279 = load i8*, i8** %buffer2323, align 8
  %cmp2324 = icmp ne i8* %1277, %1279
  br i1 %cmp2324, label %if.then.2326, label %if.end.2358

if.then.2326:                                     ; preds = %if.end.2322
  %1280 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2328 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1280, i32 0, i32 0
  %1281 = load i8*, i8** %buffer2328, align 8
  store i8* %1281, i8** %new_buffer2327, align 8
  %1282 = load i8*, i8** %new_buffer2327, align 8
  %1283 = load i8*, i8** %b, align 8
  %1284 = load i8*, i8** %old_buffer2298, align 8
  %sub.ptr.lhs.cast2329 = ptrtoint i8* %1283 to i64
  %sub.ptr.rhs.cast2330 = ptrtoint i8* %1284 to i64
  %sub.ptr.sub2331 = sub i64 %sub.ptr.lhs.cast2329, %sub.ptr.rhs.cast2330
  %add.ptr2332 = getelementptr inbounds i8, i8* %1282, i64 %sub.ptr.sub2331
  store i8* %add.ptr2332, i8** %b, align 8
  %1285 = load i8*, i8** %new_buffer2327, align 8
  %1286 = load i8*, i8** %begalt, align 8
  %1287 = load i8*, i8** %old_buffer2298, align 8
  %sub.ptr.lhs.cast2333 = ptrtoint i8* %1286 to i64
  %sub.ptr.rhs.cast2334 = ptrtoint i8* %1287 to i64
  %sub.ptr.sub2335 = sub i64 %sub.ptr.lhs.cast2333, %sub.ptr.rhs.cast2334
  %add.ptr2336 = getelementptr inbounds i8, i8* %1285, i64 %sub.ptr.sub2335
  store i8* %add.ptr2336, i8** %begalt, align 8
  %1288 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2337 = icmp ne i8* %1288, null
  br i1 %tobool2337, label %if.then.2338, label %if.end.2343

if.then.2338:                                     ; preds = %if.then.2326
  %1289 = load i8*, i8** %new_buffer2327, align 8
  %1290 = load i8*, i8** %fixup_alt_jump, align 8
  %1291 = load i8*, i8** %old_buffer2298, align 8
  %sub.ptr.lhs.cast2339 = ptrtoint i8* %1290 to i64
  %sub.ptr.rhs.cast2340 = ptrtoint i8* %1291 to i64
  %sub.ptr.sub2341 = sub i64 %sub.ptr.lhs.cast2339, %sub.ptr.rhs.cast2340
  %add.ptr2342 = getelementptr inbounds i8, i8* %1289, i64 %sub.ptr.sub2341
  store i8* %add.ptr2342, i8** %fixup_alt_jump, align 8
  br label %if.end.2343

if.end.2343:                                      ; preds = %if.then.2338, %if.then.2326
  %1292 = load i8*, i8** %laststart, align 8
  %tobool2344 = icmp ne i8* %1292, null
  br i1 %tobool2344, label %if.then.2345, label %if.end.2350

if.then.2345:                                     ; preds = %if.end.2343
  %1293 = load i8*, i8** %new_buffer2327, align 8
  %1294 = load i8*, i8** %laststart, align 8
  %1295 = load i8*, i8** %old_buffer2298, align 8
  %sub.ptr.lhs.cast2346 = ptrtoint i8* %1294 to i64
  %sub.ptr.rhs.cast2347 = ptrtoint i8* %1295 to i64
  %sub.ptr.sub2348 = sub i64 %sub.ptr.lhs.cast2346, %sub.ptr.rhs.cast2347
  %add.ptr2349 = getelementptr inbounds i8, i8* %1293, i64 %sub.ptr.sub2348
  store i8* %add.ptr2349, i8** %laststart, align 8
  br label %if.end.2350

if.end.2350:                                      ; preds = %if.then.2345, %if.end.2343
  %1296 = load i8*, i8** %pending_exact, align 8
  %tobool2351 = icmp ne i8* %1296, null
  br i1 %tobool2351, label %if.then.2352, label %if.end.2357

if.then.2352:                                     ; preds = %if.end.2350
  %1297 = load i8*, i8** %new_buffer2327, align 8
  %1298 = load i8*, i8** %pending_exact, align 8
  %1299 = load i8*, i8** %old_buffer2298, align 8
  %sub.ptr.lhs.cast2353 = ptrtoint i8* %1298 to i64
  %sub.ptr.rhs.cast2354 = ptrtoint i8* %1299 to i64
  %sub.ptr.sub2355 = sub i64 %sub.ptr.lhs.cast2353, %sub.ptr.rhs.cast2354
  %add.ptr2356 = getelementptr inbounds i8, i8* %1297, i64 %sub.ptr.sub2355
  store i8* %add.ptr2356, i8** %pending_exact, align 8
  br label %if.end.2357

if.end.2357:                                      ; preds = %if.then.2352, %if.end.2350
  br label %if.end.2358

if.end.2358:                                      ; preds = %if.end.2357, %if.end.2322
  br label %do.end.2359

do.end.2359:                                      ; preds = %if.end.2358
  br label %while.cond.2287

while.end.2360:                                   ; preds = %while.cond.2287
  %1300 = load i8*, i8** %b, align 8
  %add.ptr2361 = getelementptr inbounds i8, i8* %1300, i64 3
  store i8* %add.ptr2361, i8** %b, align 8
  store i8* null, i8** %laststart, align 8
  %1301 = load i8*, i8** %b, align 8
  store i8* %1301, i8** %begalt, align 8
  br label %sw.epilog.3763

sw.bb.2362:                                       ; preds = %do.end.1752
  %1302 = load i64, i64* %syntax.addr, align 8
  %and2363 = and i64 %1302, 512
  %tobool2364 = icmp ne i64 %and2363, 0
  br i1 %tobool2364, label %lor.lhs.false.2365, label %if.then.2368

lor.lhs.false.2365:                               ; preds = %sw.bb.2362
  %1303 = load i64, i64* %syntax.addr, align 8
  %and2366 = and i64 %1303, 4096
  %tobool2367 = icmp ne i64 %and2366, 0
  br i1 %tobool2367, label %if.then.2368, label %if.end.2369

if.then.2368:                                     ; preds = %lor.lhs.false.2365, %sw.bb.2362
  br label %normal_backslash

if.end.2369:                                      ; preds = %lor.lhs.false.2365
  br label %handle_interval

handle_interval:                                  ; preds = %if.end.2369, %if.then.1726
  store i32 0, i32* %lower_bound, align 4
  store i32 -1, i32* %upper_bound, align 4
  %1304 = load i8*, i8** %p, align 8
  store i8* %1304, i8** %beg_interval, align 8
  br label %do.body.2370

do.body.2370:                                     ; preds = %handle_interval
  %1305 = load i8*, i8** %p, align 8
  %1306 = load i8*, i8** %pend, align 8
  %cmp2371 = icmp eq i8* %1305, %1306
  br i1 %cmp2371, label %if.then.2373, label %if.else.2384

if.then.2373:                                     ; preds = %do.body.2370
  br label %do.body.2374

do.body.2374:                                     ; preds = %if.then.2373
  br label %do.body.2375

do.body.2375:                                     ; preds = %do.body.2374
  %table2376 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1307 = load i32*, i32** %table2376, align 8
  %tobool2377 = icmp ne i32* %1307, null
  br i1 %tobool2377, label %if.then.2378, label %if.end.2380

if.then.2378:                                     ; preds = %do.body.2375
  %table2379 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1308 = load i32*, i32** %table2379, align 8
  %1309 = bitcast i32* %1308 to i8*
  call void @free(i8* %1309) #4
  br label %if.end.2380

if.end.2380:                                      ; preds = %if.then.2378, %do.body.2375
  br label %do.end.2381

do.end.2381:                                      ; preds = %if.end.2380
  %stack2382 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1310 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2382, align 8
  %1311 = bitcast %struct.compile_stack_elt_t* %1310 to i8*
  call void @free(i8* %1311) #4
  store i32 9, i32* %retval
  br label %do.end.4144

do.end.2383:                                      ; No predecessors!
  br label %if.end.2453

if.else.2384:                                     ; preds = %do.body.2370
  br label %do.body.2385

do.body.2385:                                     ; preds = %if.else.2384
  %1312 = load i8*, i8** %p, align 8
  %1313 = load i8*, i8** %pend, align 8
  %cmp2387 = icmp eq i8* %1312, %1313
  br i1 %cmp2387, label %if.then.2389, label %if.end.2390

if.then.2389:                                     ; preds = %do.body.2385
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.2390:                                      ; preds = %do.body.2385
  store i32 1, i32* %len2386, align 4
  %1314 = load i8*, i8** %p, align 8
  %1315 = load i8, i8* %1314, align 1
  %conv2391 = zext i8 %1315 to i32
  store i32 %conv2391, i32* %c, align 4
  %1316 = load i32, i32* %len2386, align 4
  %1317 = load i8*, i8** %p, align 8
  %idx.ext2392 = sext i32 %1316 to i64
  %add.ptr2393 = getelementptr inbounds i8, i8* %1317, i64 %idx.ext2392
  store i8* %add.ptr2393, i8** %p, align 8
  br label %do.end.2394

do.end.2394:                                      ; preds = %if.end.2390
  br label %while.cond.2395

while.cond.2395:                                  ; preds = %do.end.2451, %do.end.2394
  %1318 = load i32, i32* %c, align 4
  %cmp2396 = icmp sle i32 48, %1318
  br i1 %cmp2396, label %land.rhs.2398, label %land.end.2401

land.rhs.2398:                                    ; preds = %while.cond.2395
  %1319 = load i32, i32* %c, align 4
  %cmp2399 = icmp sle i32 %1319, 57
  br label %land.end.2401

land.end.2401:                                    ; preds = %land.rhs.2398, %while.cond.2395
  %1320 = phi i1 [ false, %while.cond.2395 ], [ %cmp2399, %land.rhs.2398 ]
  br i1 %1320, label %while.body.2402, label %while.end.2452

while.body.2402:                                  ; preds = %land.end.2401
  %1321 = load i32, i32* %lower_bound, align 4
  %cmp2403 = icmp slt i32 %1321, 0
  br i1 %cmp2403, label %if.then.2405, label %if.end.2406

if.then.2405:                                     ; preds = %while.body.2402
  store i32 0, i32* %lower_bound, align 4
  br label %if.end.2406

if.end.2406:                                      ; preds = %if.then.2405, %while.body.2402
  %1322 = load i32, i32* %c, align 4
  %sub2407 = sub nsw i32 %1322, 48
  %cmp2408 = icmp slt i32 7, %sub2407
  %conv2409 = zext i1 %cmp2408 to i32
  %sub2410 = sub nsw i32 3276, %conv2409
  %1323 = load i32, i32* %lower_bound, align 4
  %cmp2411 = icmp slt i32 %sub2410, %1323
  br i1 %cmp2411, label %if.then.2413, label %if.end.2424

if.then.2413:                                     ; preds = %if.end.2406
  br label %do.body.2414

do.body.2414:                                     ; preds = %if.then.2413
  br label %do.body.2415

do.body.2415:                                     ; preds = %do.body.2414
  %table2416 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1324 = load i32*, i32** %table2416, align 8
  %tobool2417 = icmp ne i32* %1324, null
  br i1 %tobool2417, label %if.then.2418, label %if.end.2420

if.then.2418:                                     ; preds = %do.body.2415
  %table2419 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1325 = load i32*, i32** %table2419, align 8
  %1326 = bitcast i32* %1325 to i8*
  call void @free(i8* %1326) #4
  br label %if.end.2420

if.end.2420:                                      ; preds = %if.then.2418, %do.body.2415
  br label %do.end.2421

do.end.2421:                                      ; preds = %if.end.2420
  %stack2422 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1327 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2422, align 8
  %1328 = bitcast %struct.compile_stack_elt_t* %1327 to i8*
  call void @free(i8* %1328) #4
  store i32 10, i32* %retval
  br label %do.end.4144

do.end.2423:                                      ; No predecessors!
  br label %if.end.2424

if.end.2424:                                      ; preds = %do.end.2423, %if.end.2406
  %1329 = load i32, i32* %lower_bound, align 4
  %mul2425 = mul nsw i32 %1329, 10
  %1330 = load i32, i32* %c, align 4
  %add2426 = add nsw i32 %mul2425, %1330
  %sub2427 = sub nsw i32 %add2426, 48
  store i32 %sub2427, i32* %lower_bound, align 4
  %1331 = load i8*, i8** %p, align 8
  %1332 = load i8*, i8** %pend, align 8
  %cmp2428 = icmp eq i8* %1331, %1332
  br i1 %cmp2428, label %if.then.2430, label %if.end.2441

if.then.2430:                                     ; preds = %if.end.2424
  br label %do.body.2431

do.body.2431:                                     ; preds = %if.then.2430
  br label %do.body.2432

do.body.2432:                                     ; preds = %do.body.2431
  %table2433 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1333 = load i32*, i32** %table2433, align 8
  %tobool2434 = icmp ne i32* %1333, null
  br i1 %tobool2434, label %if.then.2435, label %if.end.2437

if.then.2435:                                     ; preds = %do.body.2432
  %table2436 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1334 = load i32*, i32** %table2436, align 8
  %1335 = bitcast i32* %1334 to i8*
  call void @free(i8* %1335) #4
  br label %if.end.2437

if.end.2437:                                      ; preds = %if.then.2435, %do.body.2432
  br label %do.end.2438

do.end.2438:                                      ; preds = %if.end.2437
  %stack2439 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1336 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2439, align 8
  %1337 = bitcast %struct.compile_stack_elt_t* %1336 to i8*
  call void @free(i8* %1337) #4
  store i32 9, i32* %retval
  br label %do.end.4144

do.end.2440:                                      ; No predecessors!
  br label %if.end.2441

if.end.2441:                                      ; preds = %do.end.2440, %if.end.2424
  br label %do.body.2442

do.body.2442:                                     ; preds = %if.end.2441
  %1338 = load i8*, i8** %p, align 8
  %1339 = load i8*, i8** %pend, align 8
  %cmp2444 = icmp eq i8* %1338, %1339
  br i1 %cmp2444, label %if.then.2446, label %if.end.2447

if.then.2446:                                     ; preds = %do.body.2442
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.2447:                                      ; preds = %do.body.2442
  store i32 1, i32* %len2443, align 4
  %1340 = load i8*, i8** %p, align 8
  %1341 = load i8, i8* %1340, align 1
  %conv2448 = zext i8 %1341 to i32
  store i32 %conv2448, i32* %c, align 4
  %1342 = load i32, i32* %len2443, align 4
  %1343 = load i8*, i8** %p, align 8
  %idx.ext2449 = sext i32 %1342 to i64
  %add.ptr2450 = getelementptr inbounds i8, i8* %1343, i64 %idx.ext2449
  store i8* %add.ptr2450, i8** %p, align 8
  br label %do.end.2451

do.end.2451:                                      ; preds = %if.end.2447
  br label %while.cond.2395

while.end.2452:                                   ; preds = %land.end.2401
  br label %if.end.2453

if.end.2453:                                      ; preds = %while.end.2452, %do.end.2383
  br label %do.end.2454

do.end.2454:                                      ; preds = %if.end.2453
  %1344 = load i32, i32* %c, align 4
  %cmp2455 = icmp eq i32 %1344, 44
  br i1 %cmp2455, label %if.then.2457, label %if.else.2543

if.then.2457:                                     ; preds = %do.end.2454
  br label %do.body.2458

do.body.2458:                                     ; preds = %if.then.2457
  %1345 = load i8*, i8** %p, align 8
  %1346 = load i8*, i8** %pend, align 8
  %cmp2459 = icmp eq i8* %1345, %1346
  br i1 %cmp2459, label %if.then.2461, label %if.else.2472

if.then.2461:                                     ; preds = %do.body.2458
  br label %do.body.2462

do.body.2462:                                     ; preds = %if.then.2461
  br label %do.body.2463

do.body.2463:                                     ; preds = %do.body.2462
  %table2464 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1347 = load i32*, i32** %table2464, align 8
  %tobool2465 = icmp ne i32* %1347, null
  br i1 %tobool2465, label %if.then.2466, label %if.end.2468

if.then.2466:                                     ; preds = %do.body.2463
  %table2467 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1348 = load i32*, i32** %table2467, align 8
  %1349 = bitcast i32* %1348 to i8*
  call void @free(i8* %1349) #4
  br label %if.end.2468

if.end.2468:                                      ; preds = %if.then.2466, %do.body.2463
  br label %do.end.2469

do.end.2469:                                      ; preds = %if.end.2468
  %stack2470 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1350 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2470, align 8
  %1351 = bitcast %struct.compile_stack_elt_t* %1350 to i8*
  call void @free(i8* %1351) #4
  store i32 9, i32* %retval
  br label %do.end.4144

do.end.2471:                                      ; No predecessors!
  br label %if.end.2541

if.else.2472:                                     ; preds = %do.body.2458
  br label %do.body.2473

do.body.2473:                                     ; preds = %if.else.2472
  %1352 = load i8*, i8** %p, align 8
  %1353 = load i8*, i8** %pend, align 8
  %cmp2475 = icmp eq i8* %1352, %1353
  br i1 %cmp2475, label %if.then.2477, label %if.end.2478

if.then.2477:                                     ; preds = %do.body.2473
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.2478:                                      ; preds = %do.body.2473
  store i32 1, i32* %len2474, align 4
  %1354 = load i8*, i8** %p, align 8
  %1355 = load i8, i8* %1354, align 1
  %conv2479 = zext i8 %1355 to i32
  store i32 %conv2479, i32* %c, align 4
  %1356 = load i32, i32* %len2474, align 4
  %1357 = load i8*, i8** %p, align 8
  %idx.ext2480 = sext i32 %1356 to i64
  %add.ptr2481 = getelementptr inbounds i8, i8* %1357, i64 %idx.ext2480
  store i8* %add.ptr2481, i8** %p, align 8
  br label %do.end.2482

do.end.2482:                                      ; preds = %if.end.2478
  br label %while.cond.2483

while.cond.2483:                                  ; preds = %do.end.2539, %do.end.2482
  %1358 = load i32, i32* %c, align 4
  %cmp2484 = icmp sle i32 48, %1358
  br i1 %cmp2484, label %land.rhs.2486, label %land.end.2489

land.rhs.2486:                                    ; preds = %while.cond.2483
  %1359 = load i32, i32* %c, align 4
  %cmp2487 = icmp sle i32 %1359, 57
  br label %land.end.2489

land.end.2489:                                    ; preds = %land.rhs.2486, %while.cond.2483
  %1360 = phi i1 [ false, %while.cond.2483 ], [ %cmp2487, %land.rhs.2486 ]
  br i1 %1360, label %while.body.2490, label %while.end.2540

while.body.2490:                                  ; preds = %land.end.2489
  %1361 = load i32, i32* %upper_bound, align 4
  %cmp2491 = icmp slt i32 %1361, 0
  br i1 %cmp2491, label %if.then.2493, label %if.end.2494

if.then.2493:                                     ; preds = %while.body.2490
  store i32 0, i32* %upper_bound, align 4
  br label %if.end.2494

if.end.2494:                                      ; preds = %if.then.2493, %while.body.2490
  %1362 = load i32, i32* %c, align 4
  %sub2495 = sub nsw i32 %1362, 48
  %cmp2496 = icmp slt i32 7, %sub2495
  %conv2497 = zext i1 %cmp2496 to i32
  %sub2498 = sub nsw i32 3276, %conv2497
  %1363 = load i32, i32* %upper_bound, align 4
  %cmp2499 = icmp slt i32 %sub2498, %1363
  br i1 %cmp2499, label %if.then.2501, label %if.end.2512

if.then.2501:                                     ; preds = %if.end.2494
  br label %do.body.2502

do.body.2502:                                     ; preds = %if.then.2501
  br label %do.body.2503

do.body.2503:                                     ; preds = %do.body.2502
  %table2504 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1364 = load i32*, i32** %table2504, align 8
  %tobool2505 = icmp ne i32* %1364, null
  br i1 %tobool2505, label %if.then.2506, label %if.end.2508

if.then.2506:                                     ; preds = %do.body.2503
  %table2507 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1365 = load i32*, i32** %table2507, align 8
  %1366 = bitcast i32* %1365 to i8*
  call void @free(i8* %1366) #4
  br label %if.end.2508

if.end.2508:                                      ; preds = %if.then.2506, %do.body.2503
  br label %do.end.2509

do.end.2509:                                      ; preds = %if.end.2508
  %stack2510 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1367 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2510, align 8
  %1368 = bitcast %struct.compile_stack_elt_t* %1367 to i8*
  call void @free(i8* %1368) #4
  store i32 10, i32* %retval
  br label %do.end.4144

do.end.2511:                                      ; No predecessors!
  br label %if.end.2512

if.end.2512:                                      ; preds = %do.end.2511, %if.end.2494
  %1369 = load i32, i32* %upper_bound, align 4
  %mul2513 = mul nsw i32 %1369, 10
  %1370 = load i32, i32* %c, align 4
  %add2514 = add nsw i32 %mul2513, %1370
  %sub2515 = sub nsw i32 %add2514, 48
  store i32 %sub2515, i32* %upper_bound, align 4
  %1371 = load i8*, i8** %p, align 8
  %1372 = load i8*, i8** %pend, align 8
  %cmp2516 = icmp eq i8* %1371, %1372
  br i1 %cmp2516, label %if.then.2518, label %if.end.2529

if.then.2518:                                     ; preds = %if.end.2512
  br label %do.body.2519

do.body.2519:                                     ; preds = %if.then.2518
  br label %do.body.2520

do.body.2520:                                     ; preds = %do.body.2519
  %table2521 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1373 = load i32*, i32** %table2521, align 8
  %tobool2522 = icmp ne i32* %1373, null
  br i1 %tobool2522, label %if.then.2523, label %if.end.2525

if.then.2523:                                     ; preds = %do.body.2520
  %table2524 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1374 = load i32*, i32** %table2524, align 8
  %1375 = bitcast i32* %1374 to i8*
  call void @free(i8* %1375) #4
  br label %if.end.2525

if.end.2525:                                      ; preds = %if.then.2523, %do.body.2520
  br label %do.end.2526

do.end.2526:                                      ; preds = %if.end.2525
  %stack2527 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1376 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2527, align 8
  %1377 = bitcast %struct.compile_stack_elt_t* %1376 to i8*
  call void @free(i8* %1377) #4
  store i32 9, i32* %retval
  br label %do.end.4144

do.end.2528:                                      ; No predecessors!
  br label %if.end.2529

if.end.2529:                                      ; preds = %do.end.2528, %if.end.2512
  br label %do.body.2530

do.body.2530:                                     ; preds = %if.end.2529
  %1378 = load i8*, i8** %p, align 8
  %1379 = load i8*, i8** %pend, align 8
  %cmp2532 = icmp eq i8* %1378, %1379
  br i1 %cmp2532, label %if.then.2534, label %if.end.2535

if.then.2534:                                     ; preds = %do.body.2530
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.2535:                                      ; preds = %do.body.2530
  store i32 1, i32* %len2531, align 4
  %1380 = load i8*, i8** %p, align 8
  %1381 = load i8, i8* %1380, align 1
  %conv2536 = zext i8 %1381 to i32
  store i32 %conv2536, i32* %c, align 4
  %1382 = load i32, i32* %len2531, align 4
  %1383 = load i8*, i8** %p, align 8
  %idx.ext2537 = sext i32 %1382 to i64
  %add.ptr2538 = getelementptr inbounds i8, i8* %1383, i64 %idx.ext2537
  store i8* %add.ptr2538, i8** %p, align 8
  br label %do.end.2539

do.end.2539:                                      ; preds = %if.end.2535
  br label %while.cond.2483

while.end.2540:                                   ; preds = %land.end.2489
  br label %if.end.2541

if.end.2541:                                      ; preds = %while.end.2540, %do.end.2471
  br label %do.end.2542

do.end.2542:                                      ; preds = %if.end.2541
  br label %if.end.2544

if.else.2543:                                     ; preds = %do.end.2454
  %1384 = load i32, i32* %lower_bound, align 4
  store i32 %1384, i32* %upper_bound, align 4
  br label %if.end.2544

if.end.2544:                                      ; preds = %if.else.2543, %do.end.2542
  %1385 = load i32, i32* %lower_bound, align 4
  %cmp2545 = icmp slt i32 %1385, 0
  br i1 %cmp2545, label %if.then.2553, label %lor.lhs.false.2547

lor.lhs.false.2547:                               ; preds = %if.end.2544
  %1386 = load i32, i32* %upper_bound, align 4
  %cmp2548 = icmp sle i32 0, %1386
  br i1 %cmp2548, label %land.lhs.true.2550, label %if.end.2564

land.lhs.true.2550:                               ; preds = %lor.lhs.false.2547
  %1387 = load i32, i32* %upper_bound, align 4
  %1388 = load i32, i32* %lower_bound, align 4
  %cmp2551 = icmp slt i32 %1387, %1388
  br i1 %cmp2551, label %if.then.2553, label %if.end.2564

if.then.2553:                                     ; preds = %land.lhs.true.2550, %if.end.2544
  br label %do.body.2554

do.body.2554:                                     ; preds = %if.then.2553
  br label %do.body.2555

do.body.2555:                                     ; preds = %do.body.2554
  %table2556 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1389 = load i32*, i32** %table2556, align 8
  %tobool2557 = icmp ne i32* %1389, null
  br i1 %tobool2557, label %if.then.2558, label %if.end.2560

if.then.2558:                                     ; preds = %do.body.2555
  %table2559 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1390 = load i32*, i32** %table2559, align 8
  %1391 = bitcast i32* %1390 to i8*
  call void @free(i8* %1391) #4
  br label %if.end.2560

if.end.2560:                                      ; preds = %if.then.2558, %do.body.2555
  br label %do.end.2561

do.end.2561:                                      ; preds = %if.end.2560
  %stack2562 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1392 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2562, align 8
  %1393 = bitcast %struct.compile_stack_elt_t* %1392 to i8*
  call void @free(i8* %1393) #4
  store i32 10, i32* %retval
  br label %do.end.4144

do.end.2563:                                      ; No predecessors!
  br label %if.end.2564

if.end.2564:                                      ; preds = %do.end.2563, %land.lhs.true.2550, %lor.lhs.false.2547
  %1394 = load i64, i64* %syntax.addr, align 8
  %and2565 = and i64 %1394, 4096
  %tobool2566 = icmp ne i64 %and2565, 0
  br i1 %tobool2566, label %if.end.2606, label %if.then.2567

if.then.2567:                                     ; preds = %if.end.2564
  %1395 = load i32, i32* %c, align 4
  %cmp2568 = icmp ne i32 %1395, 92
  br i1 %cmp2568, label %if.then.2570, label %if.end.2581

if.then.2570:                                     ; preds = %if.then.2567
  br label %do.body.2571

do.body.2571:                                     ; preds = %if.then.2570
  br label %do.body.2572

do.body.2572:                                     ; preds = %do.body.2571
  %table2573 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1396 = load i32*, i32** %table2573, align 8
  %tobool2574 = icmp ne i32* %1396, null
  br i1 %tobool2574, label %if.then.2575, label %if.end.2577

if.then.2575:                                     ; preds = %do.body.2572
  %table2576 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1397 = load i32*, i32** %table2576, align 8
  %1398 = bitcast i32* %1397 to i8*
  call void @free(i8* %1398) #4
  br label %if.end.2577

if.end.2577:                                      ; preds = %if.then.2575, %do.body.2572
  br label %do.end.2578

do.end.2578:                                      ; preds = %if.end.2577
  %stack2579 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1399 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2579, align 8
  %1400 = bitcast %struct.compile_stack_elt_t* %1399 to i8*
  call void @free(i8* %1400) #4
  store i32 10, i32* %retval
  br label %do.end.4144

do.end.2580:                                      ; No predecessors!
  br label %if.end.2581

if.end.2581:                                      ; preds = %do.end.2580, %if.then.2567
  %1401 = load i8*, i8** %p, align 8
  %1402 = load i8*, i8** %pend, align 8
  %cmp2582 = icmp eq i8* %1401, %1402
  br i1 %cmp2582, label %if.then.2584, label %if.end.2595

if.then.2584:                                     ; preds = %if.end.2581
  br label %do.body.2585

do.body.2585:                                     ; preds = %if.then.2584
  br label %do.body.2586

do.body.2586:                                     ; preds = %do.body.2585
  %table2587 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1403 = load i32*, i32** %table2587, align 8
  %tobool2588 = icmp ne i32* %1403, null
  br i1 %tobool2588, label %if.then.2589, label %if.end.2591

if.then.2589:                                     ; preds = %do.body.2586
  %table2590 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1404 = load i32*, i32** %table2590, align 8
  %1405 = bitcast i32* %1404 to i8*
  call void @free(i8* %1405) #4
  br label %if.end.2591

if.end.2591:                                      ; preds = %if.then.2589, %do.body.2586
  br label %do.end.2592

do.end.2592:                                      ; preds = %if.end.2591
  %stack2593 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1406 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2593, align 8
  %1407 = bitcast %struct.compile_stack_elt_t* %1406 to i8*
  call void @free(i8* %1407) #4
  store i32 5, i32* %retval
  br label %do.end.4144

do.end.2594:                                      ; No predecessors!
  br label %if.end.2595

if.end.2595:                                      ; preds = %do.end.2594, %if.end.2581
  br label %do.body.2596

do.body.2596:                                     ; preds = %if.end.2595
  %1408 = load i8*, i8** %p, align 8
  %1409 = load i8*, i8** %pend, align 8
  %cmp2598 = icmp eq i8* %1408, %1409
  br i1 %cmp2598, label %if.then.2600, label %if.end.2601

if.then.2600:                                     ; preds = %do.body.2596
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.2601:                                      ; preds = %do.body.2596
  store i32 1, i32* %len2597, align 4
  %1410 = load i8*, i8** %p, align 8
  %1411 = load i8, i8* %1410, align 1
  %conv2602 = zext i8 %1411 to i32
  store i32 %conv2602, i32* %c, align 4
  %1412 = load i32, i32* %len2597, align 4
  %1413 = load i8*, i8** %p, align 8
  %idx.ext2603 = sext i32 %1412 to i64
  %add.ptr2604 = getelementptr inbounds i8, i8* %1413, i64 %idx.ext2603
  store i8* %add.ptr2604, i8** %p, align 8
  br label %do.end.2605

do.end.2605:                                      ; preds = %if.end.2601
  br label %if.end.2606

if.end.2606:                                      ; preds = %do.end.2605, %if.end.2564
  %1414 = load i32, i32* %c, align 4
  %cmp2607 = icmp ne i32 %1414, 125
  br i1 %cmp2607, label %if.then.2609, label %if.end.2620

if.then.2609:                                     ; preds = %if.end.2606
  br label %do.body.2610

do.body.2610:                                     ; preds = %if.then.2609
  br label %do.body.2611

do.body.2611:                                     ; preds = %do.body.2610
  %table2612 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1415 = load i32*, i32** %table2612, align 8
  %tobool2613 = icmp ne i32* %1415, null
  br i1 %tobool2613, label %if.then.2614, label %if.end.2616

if.then.2614:                                     ; preds = %do.body.2611
  %table2615 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1416 = load i32*, i32** %table2615, align 8
  %1417 = bitcast i32* %1416 to i8*
  call void @free(i8* %1417) #4
  br label %if.end.2616

if.end.2616:                                      ; preds = %if.then.2614, %do.body.2611
  br label %do.end.2617

do.end.2617:                                      ; preds = %if.end.2616
  %stack2618 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1418 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2618, align 8
  %1419 = bitcast %struct.compile_stack_elt_t* %1418 to i8*
  call void @free(i8* %1419) #4
  store i32 10, i32* %retval
  br label %do.end.4144

do.end.2619:                                      ; No predecessors!
  br label %if.end.2620

if.end.2620:                                      ; preds = %do.end.2619, %if.end.2606
  %1420 = load i8*, i8** %laststart, align 8
  %tobool2621 = icmp ne i8* %1420, null
  br i1 %tobool2621, label %if.end.2643, label %if.then.2622

if.then.2622:                                     ; preds = %if.end.2620
  %1421 = load i64, i64* %syntax.addr, align 8
  %and2623 = and i64 %1421, 32
  %tobool2624 = icmp ne i64 %and2623, 0
  br i1 %tobool2624, label %if.then.2625, label %if.else.2636

if.then.2625:                                     ; preds = %if.then.2622
  br label %do.body.2626

do.body.2626:                                     ; preds = %if.then.2625
  br label %do.body.2627

do.body.2627:                                     ; preds = %do.body.2626
  %table2628 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1422 = load i32*, i32** %table2628, align 8
  %tobool2629 = icmp ne i32* %1422, null
  br i1 %tobool2629, label %if.then.2630, label %if.end.2632

if.then.2630:                                     ; preds = %do.body.2627
  %table2631 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1423 = load i32*, i32** %table2631, align 8
  %1424 = bitcast i32* %1423 to i8*
  call void @free(i8* %1424) #4
  br label %if.end.2632

if.end.2632:                                      ; preds = %if.then.2630, %do.body.2627
  br label %do.end.2633

do.end.2633:                                      ; preds = %if.end.2632
  %stack2634 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1425 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2634, align 8
  %1426 = bitcast %struct.compile_stack_elt_t* %1425 to i8*
  call void @free(i8* %1426) #4
  store i32 13, i32* %retval
  br label %do.end.4144

do.end.2635:                                      ; No predecessors!
  br label %if.end.2642

if.else.2636:                                     ; preds = %if.then.2622
  %1427 = load i64, i64* %syntax.addr, align 8
  %and2637 = and i64 %1427, 16
  %tobool2638 = icmp ne i64 %and2637, 0
  br i1 %tobool2638, label %if.then.2639, label %if.else.2640

if.then.2639:                                     ; preds = %if.else.2636
  %1428 = load i8*, i8** %b, align 8
  store i8* %1428, i8** %laststart, align 8
  br label %if.end.2641

if.else.2640:                                     ; preds = %if.else.2636
  br label %unfetch_interval

if.end.2641:                                      ; preds = %if.then.2639
  br label %if.end.2642

if.end.2642:                                      ; preds = %if.end.2641, %do.end.2635
  br label %if.end.2643

if.end.2643:                                      ; preds = %if.end.2642, %if.end.2620
  %1429 = load i32, i32* %upper_bound, align 4
  %cmp2644 = icmp eq i32 %1429, 0
  br i1 %cmp2644, label %if.then.2646, label %if.else.2647

if.then.2646:                                     ; preds = %if.end.2643
  %1430 = load i8*, i8** %laststart, align 8
  store i8* %1430, i8** %b, align 8
  br label %if.end.2797

if.else.2647:                                     ; preds = %if.end.2643
  %1431 = load i32, i32* %lower_bound, align 4
  %cmp2648 = icmp eq i32 %1431, 1
  br i1 %cmp2648, label %land.lhs.true.2650, label %if.else.2654

land.lhs.true.2650:                               ; preds = %if.else.2647
  %1432 = load i32, i32* %upper_bound, align 4
  %cmp2651 = icmp eq i32 %1432, 1
  br i1 %cmp2651, label %if.then.2653, label %if.else.2654

if.then.2653:                                     ; preds = %land.lhs.true.2650
  br label %if.end.2796

if.else.2654:                                     ; preds = %land.lhs.true.2650, %if.else.2647
  %1433 = load i32, i32* %upper_bound, align 4
  %cmp2655 = icmp slt i32 %1433, 0
  br i1 %cmp2655, label %cond.true.2657, label %cond.false.2658

cond.true.2657:                                   ; preds = %if.else.2654
  br label %cond.end.2662

cond.false.2658:                                  ; preds = %if.else.2654
  %1434 = load i32, i32* %upper_bound, align 4
  %cmp2659 = icmp sgt i32 %1434, 1
  %cond2661 = select i1 %cmp2659, i32 5, i32 0
  br label %cond.end.2662

cond.end.2662:                                    ; preds = %cond.false.2658, %cond.true.2657
  %cond2663 = phi i32 [ 3, %cond.true.2657 ], [ %cond2661, %cond.false.2658 ]
  store i32 %cond2663, i32* %nbytes, align 4
  store i32 0, i32* %startoffset2664, align 4
  br label %while.cond.2665

while.cond.2665:                                  ; preds = %do.end.2737, %cond.end.2662
  %1435 = load i8*, i8** %b, align 8
  %1436 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2666 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1436, i32 0, i32 0
  %1437 = load i8*, i8** %buffer2666, align 8
  %sub.ptr.lhs.cast2667 = ptrtoint i8* %1435 to i64
  %sub.ptr.rhs.cast2668 = ptrtoint i8* %1437 to i64
  %sub.ptr.sub2669 = sub i64 %sub.ptr.lhs.cast2667, %sub.ptr.rhs.cast2668
  %add2670 = add nsw i64 %sub.ptr.sub2669, 20
  %1438 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2671 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1438, i32 0, i32 1
  %1439 = load i64, i64* %allocated2671, align 8
  %cmp2672 = icmp ugt i64 %add2670, %1439
  br i1 %cmp2672, label %while.body.2674, label %while.end.2738

while.body.2674:                                  ; preds = %while.cond.2665
  br label %do.body.2675

do.body.2675:                                     ; preds = %while.body.2674
  %1440 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2677 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1440, i32 0, i32 0
  %1441 = load i8*, i8** %buffer2677, align 8
  store i8* %1441, i8** %old_buffer2676, align 8
  %1442 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2678 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1442, i32 0, i32 1
  %1443 = load i64, i64* %allocated2678, align 8
  %cmp2679 = icmp eq i64 %1443, 32768
  br i1 %cmp2679, label %if.then.2681, label %if.end.2682

if.then.2681:                                     ; preds = %do.body.2675
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.2682:                                      ; preds = %do.body.2675
  %1444 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2683 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1444, i32 0, i32 1
  %1445 = load i64, i64* %allocated2683, align 8
  %shl2684 = shl i64 %1445, 1
  store i64 %shl2684, i64* %allocated2683, align 8
  %1446 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2685 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1446, i32 0, i32 1
  %1447 = load i64, i64* %allocated2685, align 8
  %cmp2686 = icmp ugt i64 %1447, 32768
  br i1 %cmp2686, label %if.then.2688, label %if.end.2690

if.then.2688:                                     ; preds = %if.end.2682
  %1448 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2689 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1448, i32 0, i32 1
  store i64 32768, i64* %allocated2689, align 8
  br label %if.end.2690

if.end.2690:                                      ; preds = %if.then.2688, %if.end.2682
  %1449 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2691 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1449, i32 0, i32 0
  %1450 = load i8*, i8** %buffer2691, align 8
  %1451 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2692 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1451, i32 0, i32 1
  %1452 = load i64, i64* %allocated2692, align 8
  %mul2693 = mul i64 %1452, 1
  %call2694 = call i8* @xrealloc(i8* %1450, i64 %mul2693)
  %1453 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2695 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1453, i32 0, i32 0
  store i8* %call2694, i8** %buffer2695, align 8
  %1454 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2696 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1454, i32 0, i32 0
  %1455 = load i8*, i8** %buffer2696, align 8
  %cmp2697 = icmp eq i8* %1455, null
  br i1 %cmp2697, label %if.then.2699, label %if.end.2700

if.then.2699:                                     ; preds = %if.end.2690
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.2700:                                      ; preds = %if.end.2690
  %1456 = load i8*, i8** %old_buffer2676, align 8
  %1457 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2701 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1457, i32 0, i32 0
  %1458 = load i8*, i8** %buffer2701, align 8
  %cmp2702 = icmp ne i8* %1456, %1458
  br i1 %cmp2702, label %if.then.2704, label %if.end.2736

if.then.2704:                                     ; preds = %if.end.2700
  %1459 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2706 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1459, i32 0, i32 0
  %1460 = load i8*, i8** %buffer2706, align 8
  store i8* %1460, i8** %new_buffer2705, align 8
  %1461 = load i8*, i8** %new_buffer2705, align 8
  %1462 = load i8*, i8** %b, align 8
  %1463 = load i8*, i8** %old_buffer2676, align 8
  %sub.ptr.lhs.cast2707 = ptrtoint i8* %1462 to i64
  %sub.ptr.rhs.cast2708 = ptrtoint i8* %1463 to i64
  %sub.ptr.sub2709 = sub i64 %sub.ptr.lhs.cast2707, %sub.ptr.rhs.cast2708
  %add.ptr2710 = getelementptr inbounds i8, i8* %1461, i64 %sub.ptr.sub2709
  store i8* %add.ptr2710, i8** %b, align 8
  %1464 = load i8*, i8** %new_buffer2705, align 8
  %1465 = load i8*, i8** %begalt, align 8
  %1466 = load i8*, i8** %old_buffer2676, align 8
  %sub.ptr.lhs.cast2711 = ptrtoint i8* %1465 to i64
  %sub.ptr.rhs.cast2712 = ptrtoint i8* %1466 to i64
  %sub.ptr.sub2713 = sub i64 %sub.ptr.lhs.cast2711, %sub.ptr.rhs.cast2712
  %add.ptr2714 = getelementptr inbounds i8, i8* %1464, i64 %sub.ptr.sub2713
  store i8* %add.ptr2714, i8** %begalt, align 8
  %1467 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2715 = icmp ne i8* %1467, null
  br i1 %tobool2715, label %if.then.2716, label %if.end.2721

if.then.2716:                                     ; preds = %if.then.2704
  %1468 = load i8*, i8** %new_buffer2705, align 8
  %1469 = load i8*, i8** %fixup_alt_jump, align 8
  %1470 = load i8*, i8** %old_buffer2676, align 8
  %sub.ptr.lhs.cast2717 = ptrtoint i8* %1469 to i64
  %sub.ptr.rhs.cast2718 = ptrtoint i8* %1470 to i64
  %sub.ptr.sub2719 = sub i64 %sub.ptr.lhs.cast2717, %sub.ptr.rhs.cast2718
  %add.ptr2720 = getelementptr inbounds i8, i8* %1468, i64 %sub.ptr.sub2719
  store i8* %add.ptr2720, i8** %fixup_alt_jump, align 8
  br label %if.end.2721

if.end.2721:                                      ; preds = %if.then.2716, %if.then.2704
  %1471 = load i8*, i8** %laststart, align 8
  %tobool2722 = icmp ne i8* %1471, null
  br i1 %tobool2722, label %if.then.2723, label %if.end.2728

if.then.2723:                                     ; preds = %if.end.2721
  %1472 = load i8*, i8** %new_buffer2705, align 8
  %1473 = load i8*, i8** %laststart, align 8
  %1474 = load i8*, i8** %old_buffer2676, align 8
  %sub.ptr.lhs.cast2724 = ptrtoint i8* %1473 to i64
  %sub.ptr.rhs.cast2725 = ptrtoint i8* %1474 to i64
  %sub.ptr.sub2726 = sub i64 %sub.ptr.lhs.cast2724, %sub.ptr.rhs.cast2725
  %add.ptr2727 = getelementptr inbounds i8, i8* %1472, i64 %sub.ptr.sub2726
  store i8* %add.ptr2727, i8** %laststart, align 8
  br label %if.end.2728

if.end.2728:                                      ; preds = %if.then.2723, %if.end.2721
  %1475 = load i8*, i8** %pending_exact, align 8
  %tobool2729 = icmp ne i8* %1475, null
  br i1 %tobool2729, label %if.then.2730, label %if.end.2735

if.then.2730:                                     ; preds = %if.end.2728
  %1476 = load i8*, i8** %new_buffer2705, align 8
  %1477 = load i8*, i8** %pending_exact, align 8
  %1478 = load i8*, i8** %old_buffer2676, align 8
  %sub.ptr.lhs.cast2731 = ptrtoint i8* %1477 to i64
  %sub.ptr.rhs.cast2732 = ptrtoint i8* %1478 to i64
  %sub.ptr.sub2733 = sub i64 %sub.ptr.lhs.cast2731, %sub.ptr.rhs.cast2732
  %add.ptr2734 = getelementptr inbounds i8, i8* %1476, i64 %sub.ptr.sub2733
  store i8* %add.ptr2734, i8** %pending_exact, align 8
  br label %if.end.2735

if.end.2735:                                      ; preds = %if.then.2730, %if.end.2728
  br label %if.end.2736

if.end.2736:                                      ; preds = %if.end.2735, %if.end.2700
  br label %do.end.2737

do.end.2737:                                      ; preds = %if.end.2736
  br label %while.cond.2665

while.end.2738:                                   ; preds = %while.cond.2665
  %1479 = load i32, i32* %lower_bound, align 4
  %cmp2739 = icmp eq i32 %1479, 0
  br i1 %cmp2739, label %if.then.2741, label %if.else.2751

if.then.2741:                                     ; preds = %while.end.2738
  %1480 = load i8*, i8** %laststart, align 8
  %1481 = load i8*, i8** %b, align 8
  %add.ptr2742 = getelementptr inbounds i8, i8* %1481, i64 3
  %1482 = load i32, i32* %nbytes, align 4
  %idx.ext2743 = zext i32 %1482 to i64
  %add.ptr2744 = getelementptr inbounds i8, i8* %add.ptr2742, i64 %idx.ext2743
  %1483 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast2745 = ptrtoint i8* %add.ptr2744 to i64
  %sub.ptr.rhs.cast2746 = ptrtoint i8* %1483 to i64
  %sub.ptr.sub2747 = sub i64 %sub.ptr.lhs.cast2745, %sub.ptr.rhs.cast2746
  %sub2748 = sub nsw i64 %sub.ptr.sub2747, 3
  %conv2749 = trunc i64 %sub2748 to i32
  %1484 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 16, i8* %1480, i32 %conv2749, i8* %1484)
  %1485 = load i8*, i8** %b, align 8
  %add.ptr2750 = getelementptr inbounds i8, i8* %1485, i64 3
  store i8* %add.ptr2750, i8** %b, align 8
  br label %if.end.2763

if.else.2751:                                     ; preds = %while.end.2738
  %1486 = load i8*, i8** %laststart, align 8
  %1487 = load i8*, i8** %b, align 8
  %add.ptr2752 = getelementptr inbounds i8, i8* %1487, i64 5
  %1488 = load i32, i32* %nbytes, align 4
  %idx.ext2753 = zext i32 %1488 to i64
  %add.ptr2754 = getelementptr inbounds i8, i8* %add.ptr2752, i64 %idx.ext2753
  %1489 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast2755 = ptrtoint i8* %add.ptr2754 to i64
  %sub.ptr.rhs.cast2756 = ptrtoint i8* %1489 to i64
  %sub.ptr.sub2757 = sub i64 %sub.ptr.lhs.cast2755, %sub.ptr.rhs.cast2756
  %sub2758 = sub nsw i64 %sub.ptr.sub2757, 3
  %conv2759 = trunc i64 %sub2758 to i32
  %1490 = load i32, i32* %lower_bound, align 4
  %1491 = load i8*, i8** %b, align 8
  call void @insert_op2(i32 19, i8* %1486, i32 %conv2759, i32 %1490, i8* %1491)
  %1492 = load i8*, i8** %b, align 8
  %add.ptr2760 = getelementptr inbounds i8, i8* %1492, i64 5
  store i8* %add.ptr2760, i8** %b, align 8
  %1493 = load i8*, i8** %laststart, align 8
  %1494 = load i32, i32* %lower_bound, align 4
  %1495 = load i8*, i8** %b, align 8
  call void @insert_op2(i32 21, i8* %1493, i32 5, i32 %1494, i8* %1495)
  %1496 = load i8*, i8** %b, align 8
  %add.ptr2761 = getelementptr inbounds i8, i8* %1496, i64 5
  store i8* %add.ptr2761, i8** %b, align 8
  %1497 = load i32, i32* %startoffset2664, align 4
  %add2762 = add i32 %1497, 5
  store i32 %add2762, i32* %startoffset2664, align 4
  br label %if.end.2763

if.end.2763:                                      ; preds = %if.else.2751, %if.then.2741
  %1498 = load i32, i32* %upper_bound, align 4
  %cmp2764 = icmp slt i32 %1498, 0
  br i1 %cmp2764, label %if.then.2766, label %if.else.2775

if.then.2766:                                     ; preds = %if.end.2763
  %1499 = load i8*, i8** %b, align 8
  %1500 = load i8*, i8** %laststart, align 8
  %1501 = load i32, i32* %startoffset2664, align 4
  %idx.ext2767 = zext i32 %1501 to i64
  %add.ptr2768 = getelementptr inbounds i8, i8* %1500, i64 %idx.ext2767
  %1502 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast2769 = ptrtoint i8* %add.ptr2768 to i64
  %sub.ptr.rhs.cast2770 = ptrtoint i8* %1502 to i64
  %sub.ptr.sub2771 = sub i64 %sub.ptr.lhs.cast2769, %sub.ptr.rhs.cast2770
  %sub2772 = sub nsw i64 %sub.ptr.sub2771, 3
  %conv2773 = trunc i64 %sub2772 to i32
  call void @store_op1(i32 13, i8* %1499, i32 %conv2773)
  %1503 = load i8*, i8** %b, align 8
  %add.ptr2774 = getelementptr inbounds i8, i8* %1503, i64 3
  store i8* %add.ptr2774, i8** %b, align 8
  br label %if.end.2795

if.else.2775:                                     ; preds = %if.end.2763
  %1504 = load i32, i32* %upper_bound, align 4
  %cmp2776 = icmp sgt i32 %1504, 1
  br i1 %cmp2776, label %if.then.2778, label %if.end.2794

if.then.2778:                                     ; preds = %if.else.2775
  %1505 = load i8*, i8** %b, align 8
  %1506 = load i8*, i8** %laststart, align 8
  %1507 = load i32, i32* %startoffset2664, align 4
  %idx.ext2779 = zext i32 %1507 to i64
  %add.ptr2780 = getelementptr inbounds i8, i8* %1506, i64 %idx.ext2779
  %1508 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast2781 = ptrtoint i8* %add.ptr2780 to i64
  %sub.ptr.rhs.cast2782 = ptrtoint i8* %1508 to i64
  %sub.ptr.sub2783 = sub i64 %sub.ptr.lhs.cast2781, %sub.ptr.rhs.cast2782
  %sub2784 = sub nsw i64 %sub.ptr.sub2783, 3
  %conv2785 = trunc i64 %sub2784 to i32
  %1509 = load i32, i32* %upper_bound, align 4
  %sub2786 = sub nsw i32 %1509, 1
  call void @store_op2(i32 20, i8* %1505, i32 %conv2785, i32 %sub2786)
  %1510 = load i8*, i8** %b, align 8
  %add.ptr2787 = getelementptr inbounds i8, i8* %1510, i64 5
  store i8* %add.ptr2787, i8** %b, align 8
  %1511 = load i8*, i8** %laststart, align 8
  %1512 = load i8*, i8** %b, align 8
  %1513 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast2788 = ptrtoint i8* %1512 to i64
  %sub.ptr.rhs.cast2789 = ptrtoint i8* %1513 to i64
  %sub.ptr.sub2790 = sub i64 %sub.ptr.lhs.cast2788, %sub.ptr.rhs.cast2789
  %conv2791 = trunc i64 %sub.ptr.sub2790 to i32
  %1514 = load i32, i32* %upper_bound, align 4
  %sub2792 = sub nsw i32 %1514, 1
  %1515 = load i8*, i8** %b, align 8
  call void @insert_op2(i32 21, i8* %1511, i32 %conv2791, i32 %sub2792, i8* %1515)
  %1516 = load i8*, i8** %b, align 8
  %add.ptr2793 = getelementptr inbounds i8, i8* %1516, i64 5
  store i8* %add.ptr2793, i8** %b, align 8
  br label %if.end.2794

if.end.2794:                                      ; preds = %if.then.2778, %if.else.2775
  br label %if.end.2795

if.end.2795:                                      ; preds = %if.end.2794, %if.then.2766
  br label %if.end.2796

if.end.2796:                                      ; preds = %if.end.2795, %if.then.2653
  br label %if.end.2797

if.end.2797:                                      ; preds = %if.end.2796, %if.then.2646
  store i8* null, i8** %pending_exact, align 8
  store i8* null, i8** %beg_interval, align 8
  br label %sw.epilog.3763

unfetch_interval:                                 ; preds = %if.else.2640
  %1517 = load i8*, i8** %beg_interval, align 8
  store i8* %1517, i8** %p, align 8
  store i8* null, i8** %beg_interval, align 8
  store i32 123, i32* %c, align 4
  %1518 = load i64, i64* %syntax.addr, align 8
  %and2798 = and i64 %1518, 4096
  %tobool2799 = icmp ne i64 %and2798, 0
  br i1 %tobool2799, label %if.else.2801, label %if.then.2800

if.then.2800:                                     ; preds = %unfetch_interval
  br label %normal_backslash

if.else.2801:                                     ; preds = %unfetch_interval
  br label %normal_char

sw.bb.2802:                                       ; preds = %do.end.1752
  %1519 = load i64, i64* %syntax.addr, align 8
  %and2803 = and i64 %1519, 524288
  %tobool2804 = icmp ne i64 %and2803, 0
  br i1 %tobool2804, label %if.then.2805, label %if.end.2806

if.then.2805:                                     ; preds = %sw.bb.2802
  br label %normal_char

if.end.2806:                                      ; preds = %sw.bb.2802
  %1520 = load i8*, i8** %b, align 8
  store i8* %1520, i8** %laststart, align 8
  br label %do.body.2807

do.body.2807:                                     ; preds = %if.end.2806
  br label %while.cond.2808

while.cond.2808:                                  ; preds = %do.end.2880, %do.body.2807
  %1521 = load i8*, i8** %b, align 8
  %1522 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2809 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1522, i32 0, i32 0
  %1523 = load i8*, i8** %buffer2809, align 8
  %sub.ptr.lhs.cast2810 = ptrtoint i8* %1521 to i64
  %sub.ptr.rhs.cast2811 = ptrtoint i8* %1523 to i64
  %sub.ptr.sub2812 = sub i64 %sub.ptr.lhs.cast2810, %sub.ptr.rhs.cast2811
  %add2813 = add nsw i64 %sub.ptr.sub2812, 2
  %1524 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2814 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1524, i32 0, i32 1
  %1525 = load i64, i64* %allocated2814, align 8
  %cmp2815 = icmp ugt i64 %add2813, %1525
  br i1 %cmp2815, label %while.body.2817, label %while.end.2881

while.body.2817:                                  ; preds = %while.cond.2808
  br label %do.body.2818

do.body.2818:                                     ; preds = %while.body.2817
  %1526 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2820 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1526, i32 0, i32 0
  %1527 = load i8*, i8** %buffer2820, align 8
  store i8* %1527, i8** %old_buffer2819, align 8
  %1528 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2821 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1528, i32 0, i32 1
  %1529 = load i64, i64* %allocated2821, align 8
  %cmp2822 = icmp eq i64 %1529, 32768
  br i1 %cmp2822, label %if.then.2824, label %if.end.2825

if.then.2824:                                     ; preds = %do.body.2818
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.2825:                                      ; preds = %do.body.2818
  %1530 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2826 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1530, i32 0, i32 1
  %1531 = load i64, i64* %allocated2826, align 8
  %shl2827 = shl i64 %1531, 1
  store i64 %shl2827, i64* %allocated2826, align 8
  %1532 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2828 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1532, i32 0, i32 1
  %1533 = load i64, i64* %allocated2828, align 8
  %cmp2829 = icmp ugt i64 %1533, 32768
  br i1 %cmp2829, label %if.then.2831, label %if.end.2833

if.then.2831:                                     ; preds = %if.end.2825
  %1534 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2832 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1534, i32 0, i32 1
  store i64 32768, i64* %allocated2832, align 8
  br label %if.end.2833

if.end.2833:                                      ; preds = %if.then.2831, %if.end.2825
  %1535 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2834 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1535, i32 0, i32 0
  %1536 = load i8*, i8** %buffer2834, align 8
  %1537 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2835 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1537, i32 0, i32 1
  %1538 = load i64, i64* %allocated2835, align 8
  %mul2836 = mul i64 %1538, 1
  %call2837 = call i8* @xrealloc(i8* %1536, i64 %mul2836)
  %1539 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2838 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1539, i32 0, i32 0
  store i8* %call2837, i8** %buffer2838, align 8
  %1540 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2839 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1540, i32 0, i32 0
  %1541 = load i8*, i8** %buffer2839, align 8
  %cmp2840 = icmp eq i8* %1541, null
  br i1 %cmp2840, label %if.then.2842, label %if.end.2843

if.then.2842:                                     ; preds = %if.end.2833
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.2843:                                      ; preds = %if.end.2833
  %1542 = load i8*, i8** %old_buffer2819, align 8
  %1543 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2844 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1543, i32 0, i32 0
  %1544 = load i8*, i8** %buffer2844, align 8
  %cmp2845 = icmp ne i8* %1542, %1544
  br i1 %cmp2845, label %if.then.2847, label %if.end.2879

if.then.2847:                                     ; preds = %if.end.2843
  %1545 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2849 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1545, i32 0, i32 0
  %1546 = load i8*, i8** %buffer2849, align 8
  store i8* %1546, i8** %new_buffer2848, align 8
  %1547 = load i8*, i8** %new_buffer2848, align 8
  %1548 = load i8*, i8** %b, align 8
  %1549 = load i8*, i8** %old_buffer2819, align 8
  %sub.ptr.lhs.cast2850 = ptrtoint i8* %1548 to i64
  %sub.ptr.rhs.cast2851 = ptrtoint i8* %1549 to i64
  %sub.ptr.sub2852 = sub i64 %sub.ptr.lhs.cast2850, %sub.ptr.rhs.cast2851
  %add.ptr2853 = getelementptr inbounds i8, i8* %1547, i64 %sub.ptr.sub2852
  store i8* %add.ptr2853, i8** %b, align 8
  %1550 = load i8*, i8** %new_buffer2848, align 8
  %1551 = load i8*, i8** %begalt, align 8
  %1552 = load i8*, i8** %old_buffer2819, align 8
  %sub.ptr.lhs.cast2854 = ptrtoint i8* %1551 to i64
  %sub.ptr.rhs.cast2855 = ptrtoint i8* %1552 to i64
  %sub.ptr.sub2856 = sub i64 %sub.ptr.lhs.cast2854, %sub.ptr.rhs.cast2855
  %add.ptr2857 = getelementptr inbounds i8, i8* %1550, i64 %sub.ptr.sub2856
  store i8* %add.ptr2857, i8** %begalt, align 8
  %1553 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2858 = icmp ne i8* %1553, null
  br i1 %tobool2858, label %if.then.2859, label %if.end.2864

if.then.2859:                                     ; preds = %if.then.2847
  %1554 = load i8*, i8** %new_buffer2848, align 8
  %1555 = load i8*, i8** %fixup_alt_jump, align 8
  %1556 = load i8*, i8** %old_buffer2819, align 8
  %sub.ptr.lhs.cast2860 = ptrtoint i8* %1555 to i64
  %sub.ptr.rhs.cast2861 = ptrtoint i8* %1556 to i64
  %sub.ptr.sub2862 = sub i64 %sub.ptr.lhs.cast2860, %sub.ptr.rhs.cast2861
  %add.ptr2863 = getelementptr inbounds i8, i8* %1554, i64 %sub.ptr.sub2862
  store i8* %add.ptr2863, i8** %fixup_alt_jump, align 8
  br label %if.end.2864

if.end.2864:                                      ; preds = %if.then.2859, %if.then.2847
  %1557 = load i8*, i8** %laststart, align 8
  %tobool2865 = icmp ne i8* %1557, null
  br i1 %tobool2865, label %if.then.2866, label %if.end.2871

if.then.2866:                                     ; preds = %if.end.2864
  %1558 = load i8*, i8** %new_buffer2848, align 8
  %1559 = load i8*, i8** %laststart, align 8
  %1560 = load i8*, i8** %old_buffer2819, align 8
  %sub.ptr.lhs.cast2867 = ptrtoint i8* %1559 to i64
  %sub.ptr.rhs.cast2868 = ptrtoint i8* %1560 to i64
  %sub.ptr.sub2869 = sub i64 %sub.ptr.lhs.cast2867, %sub.ptr.rhs.cast2868
  %add.ptr2870 = getelementptr inbounds i8, i8* %1558, i64 %sub.ptr.sub2869
  store i8* %add.ptr2870, i8** %laststart, align 8
  br label %if.end.2871

if.end.2871:                                      ; preds = %if.then.2866, %if.end.2864
  %1561 = load i8*, i8** %pending_exact, align 8
  %tobool2872 = icmp ne i8* %1561, null
  br i1 %tobool2872, label %if.then.2873, label %if.end.2878

if.then.2873:                                     ; preds = %if.end.2871
  %1562 = load i8*, i8** %new_buffer2848, align 8
  %1563 = load i8*, i8** %pending_exact, align 8
  %1564 = load i8*, i8** %old_buffer2819, align 8
  %sub.ptr.lhs.cast2874 = ptrtoint i8* %1563 to i64
  %sub.ptr.rhs.cast2875 = ptrtoint i8* %1564 to i64
  %sub.ptr.sub2876 = sub i64 %sub.ptr.lhs.cast2874, %sub.ptr.rhs.cast2875
  %add.ptr2877 = getelementptr inbounds i8, i8* %1562, i64 %sub.ptr.sub2876
  store i8* %add.ptr2877, i8** %pending_exact, align 8
  br label %if.end.2878

if.end.2878:                                      ; preds = %if.then.2873, %if.end.2871
  br label %if.end.2879

if.end.2879:                                      ; preds = %if.end.2878, %if.end.2843
  br label %do.end.2880

do.end.2880:                                      ; preds = %if.end.2879
  br label %while.cond.2808

while.end.2881:                                   ; preds = %while.cond.2808
  %1565 = load i8*, i8** %b, align 8
  %incdec.ptr2882 = getelementptr inbounds i8, i8* %1565, i32 1
  store i8* %incdec.ptr2882, i8** %b, align 8
  store i8 28, i8* %1565, align 1
  %1566 = load i8*, i8** %b, align 8
  %incdec.ptr2883 = getelementptr inbounds i8, i8* %1566, i32 1
  store i8* %incdec.ptr2883, i8** %b, align 8
  store i8 1, i8* %1566, align 1
  br label %do.end.2884

do.end.2884:                                      ; preds = %while.end.2881
  br label %sw.epilog.3763

sw.bb.2885:                                       ; preds = %do.end.1752
  %1567 = load i64, i64* %syntax.addr, align 8
  %and2886 = and i64 %1567, 524288
  %tobool2887 = icmp ne i64 %and2886, 0
  br i1 %tobool2887, label %if.then.2888, label %if.end.2889

if.then.2888:                                     ; preds = %sw.bb.2885
  br label %normal_char

if.end.2889:                                      ; preds = %sw.bb.2885
  %1568 = load i8*, i8** %b, align 8
  store i8* %1568, i8** %laststart, align 8
  br label %do.body.2890

do.body.2890:                                     ; preds = %if.end.2889
  br label %while.cond.2891

while.cond.2891:                                  ; preds = %do.end.2963, %do.body.2890
  %1569 = load i8*, i8** %b, align 8
  %1570 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2892 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1570, i32 0, i32 0
  %1571 = load i8*, i8** %buffer2892, align 8
  %sub.ptr.lhs.cast2893 = ptrtoint i8* %1569 to i64
  %sub.ptr.rhs.cast2894 = ptrtoint i8* %1571 to i64
  %sub.ptr.sub2895 = sub i64 %sub.ptr.lhs.cast2893, %sub.ptr.rhs.cast2894
  %add2896 = add nsw i64 %sub.ptr.sub2895, 2
  %1572 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2897 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1572, i32 0, i32 1
  %1573 = load i64, i64* %allocated2897, align 8
  %cmp2898 = icmp ugt i64 %add2896, %1573
  br i1 %cmp2898, label %while.body.2900, label %while.end.2964

while.body.2900:                                  ; preds = %while.cond.2891
  br label %do.body.2901

do.body.2901:                                     ; preds = %while.body.2900
  %1574 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2903 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1574, i32 0, i32 0
  %1575 = load i8*, i8** %buffer2903, align 8
  store i8* %1575, i8** %old_buffer2902, align 8
  %1576 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2904 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1576, i32 0, i32 1
  %1577 = load i64, i64* %allocated2904, align 8
  %cmp2905 = icmp eq i64 %1577, 32768
  br i1 %cmp2905, label %if.then.2907, label %if.end.2908

if.then.2907:                                     ; preds = %do.body.2901
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.2908:                                      ; preds = %do.body.2901
  %1578 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2909 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1578, i32 0, i32 1
  %1579 = load i64, i64* %allocated2909, align 8
  %shl2910 = shl i64 %1579, 1
  store i64 %shl2910, i64* %allocated2909, align 8
  %1580 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2911 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1580, i32 0, i32 1
  %1581 = load i64, i64* %allocated2911, align 8
  %cmp2912 = icmp ugt i64 %1581, 32768
  br i1 %cmp2912, label %if.then.2914, label %if.end.2916

if.then.2914:                                     ; preds = %if.end.2908
  %1582 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2915 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1582, i32 0, i32 1
  store i64 32768, i64* %allocated2915, align 8
  br label %if.end.2916

if.end.2916:                                      ; preds = %if.then.2914, %if.end.2908
  %1583 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2917 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1583, i32 0, i32 0
  %1584 = load i8*, i8** %buffer2917, align 8
  %1585 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2918 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1585, i32 0, i32 1
  %1586 = load i64, i64* %allocated2918, align 8
  %mul2919 = mul i64 %1586, 1
  %call2920 = call i8* @xrealloc(i8* %1584, i64 %mul2919)
  %1587 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2921 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1587, i32 0, i32 0
  store i8* %call2920, i8** %buffer2921, align 8
  %1588 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2922 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1588, i32 0, i32 0
  %1589 = load i8*, i8** %buffer2922, align 8
  %cmp2923 = icmp eq i8* %1589, null
  br i1 %cmp2923, label %if.then.2925, label %if.end.2926

if.then.2925:                                     ; preds = %if.end.2916
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.2926:                                      ; preds = %if.end.2916
  %1590 = load i8*, i8** %old_buffer2902, align 8
  %1591 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2927 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1591, i32 0, i32 0
  %1592 = load i8*, i8** %buffer2927, align 8
  %cmp2928 = icmp ne i8* %1590, %1592
  br i1 %cmp2928, label %if.then.2930, label %if.end.2962

if.then.2930:                                     ; preds = %if.end.2926
  %1593 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2932 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1593, i32 0, i32 0
  %1594 = load i8*, i8** %buffer2932, align 8
  store i8* %1594, i8** %new_buffer2931, align 8
  %1595 = load i8*, i8** %new_buffer2931, align 8
  %1596 = load i8*, i8** %b, align 8
  %1597 = load i8*, i8** %old_buffer2902, align 8
  %sub.ptr.lhs.cast2933 = ptrtoint i8* %1596 to i64
  %sub.ptr.rhs.cast2934 = ptrtoint i8* %1597 to i64
  %sub.ptr.sub2935 = sub i64 %sub.ptr.lhs.cast2933, %sub.ptr.rhs.cast2934
  %add.ptr2936 = getelementptr inbounds i8, i8* %1595, i64 %sub.ptr.sub2935
  store i8* %add.ptr2936, i8** %b, align 8
  %1598 = load i8*, i8** %new_buffer2931, align 8
  %1599 = load i8*, i8** %begalt, align 8
  %1600 = load i8*, i8** %old_buffer2902, align 8
  %sub.ptr.lhs.cast2937 = ptrtoint i8* %1599 to i64
  %sub.ptr.rhs.cast2938 = ptrtoint i8* %1600 to i64
  %sub.ptr.sub2939 = sub i64 %sub.ptr.lhs.cast2937, %sub.ptr.rhs.cast2938
  %add.ptr2940 = getelementptr inbounds i8, i8* %1598, i64 %sub.ptr.sub2939
  store i8* %add.ptr2940, i8** %begalt, align 8
  %1601 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2941 = icmp ne i8* %1601, null
  br i1 %tobool2941, label %if.then.2942, label %if.end.2947

if.then.2942:                                     ; preds = %if.then.2930
  %1602 = load i8*, i8** %new_buffer2931, align 8
  %1603 = load i8*, i8** %fixup_alt_jump, align 8
  %1604 = load i8*, i8** %old_buffer2902, align 8
  %sub.ptr.lhs.cast2943 = ptrtoint i8* %1603 to i64
  %sub.ptr.rhs.cast2944 = ptrtoint i8* %1604 to i64
  %sub.ptr.sub2945 = sub i64 %sub.ptr.lhs.cast2943, %sub.ptr.rhs.cast2944
  %add.ptr2946 = getelementptr inbounds i8, i8* %1602, i64 %sub.ptr.sub2945
  store i8* %add.ptr2946, i8** %fixup_alt_jump, align 8
  br label %if.end.2947

if.end.2947:                                      ; preds = %if.then.2942, %if.then.2930
  %1605 = load i8*, i8** %laststart, align 8
  %tobool2948 = icmp ne i8* %1605, null
  br i1 %tobool2948, label %if.then.2949, label %if.end.2954

if.then.2949:                                     ; preds = %if.end.2947
  %1606 = load i8*, i8** %new_buffer2931, align 8
  %1607 = load i8*, i8** %laststart, align 8
  %1608 = load i8*, i8** %old_buffer2902, align 8
  %sub.ptr.lhs.cast2950 = ptrtoint i8* %1607 to i64
  %sub.ptr.rhs.cast2951 = ptrtoint i8* %1608 to i64
  %sub.ptr.sub2952 = sub i64 %sub.ptr.lhs.cast2950, %sub.ptr.rhs.cast2951
  %add.ptr2953 = getelementptr inbounds i8, i8* %1606, i64 %sub.ptr.sub2952
  store i8* %add.ptr2953, i8** %laststart, align 8
  br label %if.end.2954

if.end.2954:                                      ; preds = %if.then.2949, %if.end.2947
  %1609 = load i8*, i8** %pending_exact, align 8
  %tobool2955 = icmp ne i8* %1609, null
  br i1 %tobool2955, label %if.then.2956, label %if.end.2961

if.then.2956:                                     ; preds = %if.end.2954
  %1610 = load i8*, i8** %new_buffer2931, align 8
  %1611 = load i8*, i8** %pending_exact, align 8
  %1612 = load i8*, i8** %old_buffer2902, align 8
  %sub.ptr.lhs.cast2957 = ptrtoint i8* %1611 to i64
  %sub.ptr.rhs.cast2958 = ptrtoint i8* %1612 to i64
  %sub.ptr.sub2959 = sub i64 %sub.ptr.lhs.cast2957, %sub.ptr.rhs.cast2958
  %add.ptr2960 = getelementptr inbounds i8, i8* %1610, i64 %sub.ptr.sub2959
  store i8* %add.ptr2960, i8** %pending_exact, align 8
  br label %if.end.2961

if.end.2961:                                      ; preds = %if.then.2956, %if.end.2954
  br label %if.end.2962

if.end.2962:                                      ; preds = %if.end.2961, %if.end.2926
  br label %do.end.2963

do.end.2963:                                      ; preds = %if.end.2962
  br label %while.cond.2891

while.end.2964:                                   ; preds = %while.cond.2891
  %1613 = load i8*, i8** %b, align 8
  %incdec.ptr2965 = getelementptr inbounds i8, i8* %1613, i32 1
  store i8* %incdec.ptr2965, i8** %b, align 8
  store i8 29, i8* %1613, align 1
  %1614 = load i8*, i8** %b, align 8
  %incdec.ptr2966 = getelementptr inbounds i8, i8* %1614, i32 1
  store i8* %incdec.ptr2966, i8** %b, align 8
  store i8 1, i8* %1614, align 1
  br label %do.end.2967

do.end.2967:                                      ; preds = %while.end.2964
  br label %sw.epilog.3763

sw.bb.2968:                                       ; preds = %do.end.1752
  %1615 = load i64, i64* %syntax.addr, align 8
  %and2969 = and i64 %1615, 524288
  %tobool2970 = icmp ne i64 %and2969, 0
  br i1 %tobool2970, label %if.then.2971, label %if.end.2972

if.then.2971:                                     ; preds = %sw.bb.2968
  br label %normal_char

if.end.2972:                                      ; preds = %sw.bb.2968
  %1616 = load i8*, i8** %b, align 8
  store i8* %1616, i8** %laststart, align 8
  br label %do.body.2973

do.body.2973:                                     ; preds = %if.end.2972
  br label %while.cond.2974

while.cond.2974:                                  ; preds = %do.end.3046, %do.body.2973
  %1617 = load i8*, i8** %b, align 8
  %1618 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2975 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1618, i32 0, i32 0
  %1619 = load i8*, i8** %buffer2975, align 8
  %sub.ptr.lhs.cast2976 = ptrtoint i8* %1617 to i64
  %sub.ptr.rhs.cast2977 = ptrtoint i8* %1619 to i64
  %sub.ptr.sub2978 = sub i64 %sub.ptr.lhs.cast2976, %sub.ptr.rhs.cast2977
  %add2979 = add nsw i64 %sub.ptr.sub2978, 1
  %1620 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2980 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1620, i32 0, i32 1
  %1621 = load i64, i64* %allocated2980, align 8
  %cmp2981 = icmp ugt i64 %add2979, %1621
  br i1 %cmp2981, label %while.body.2983, label %while.end.3047

while.body.2983:                                  ; preds = %while.cond.2974
  br label %do.body.2984

do.body.2984:                                     ; preds = %while.body.2983
  %1622 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2986 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1622, i32 0, i32 0
  %1623 = load i8*, i8** %buffer2986, align 8
  store i8* %1623, i8** %old_buffer2985, align 8
  %1624 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2987 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1624, i32 0, i32 1
  %1625 = load i64, i64* %allocated2987, align 8
  %cmp2988 = icmp eq i64 %1625, 32768
  br i1 %cmp2988, label %if.then.2990, label %if.end.2991

if.then.2990:                                     ; preds = %do.body.2984
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.2991:                                      ; preds = %do.body.2984
  %1626 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2992 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1626, i32 0, i32 1
  %1627 = load i64, i64* %allocated2992, align 8
  %shl2993 = shl i64 %1627, 1
  store i64 %shl2993, i64* %allocated2992, align 8
  %1628 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2994 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1628, i32 0, i32 1
  %1629 = load i64, i64* %allocated2994, align 8
  %cmp2995 = icmp ugt i64 %1629, 32768
  br i1 %cmp2995, label %if.then.2997, label %if.end.2999

if.then.2997:                                     ; preds = %if.end.2991
  %1630 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2998 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1630, i32 0, i32 1
  store i64 32768, i64* %allocated2998, align 8
  br label %if.end.2999

if.end.2999:                                      ; preds = %if.then.2997, %if.end.2991
  %1631 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3000 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1631, i32 0, i32 0
  %1632 = load i8*, i8** %buffer3000, align 8
  %1633 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3001 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1633, i32 0, i32 1
  %1634 = load i64, i64* %allocated3001, align 8
  %mul3002 = mul i64 %1634, 1
  %call3003 = call i8* @xrealloc(i8* %1632, i64 %mul3002)
  %1635 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3004 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1635, i32 0, i32 0
  store i8* %call3003, i8** %buffer3004, align 8
  %1636 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3005 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1636, i32 0, i32 0
  %1637 = load i8*, i8** %buffer3005, align 8
  %cmp3006 = icmp eq i8* %1637, null
  br i1 %cmp3006, label %if.then.3008, label %if.end.3009

if.then.3008:                                     ; preds = %if.end.2999
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3009:                                      ; preds = %if.end.2999
  %1638 = load i8*, i8** %old_buffer2985, align 8
  %1639 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3010 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1639, i32 0, i32 0
  %1640 = load i8*, i8** %buffer3010, align 8
  %cmp3011 = icmp ne i8* %1638, %1640
  br i1 %cmp3011, label %if.then.3013, label %if.end.3045

if.then.3013:                                     ; preds = %if.end.3009
  %1641 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3015 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1641, i32 0, i32 0
  %1642 = load i8*, i8** %buffer3015, align 8
  store i8* %1642, i8** %new_buffer3014, align 8
  %1643 = load i8*, i8** %new_buffer3014, align 8
  %1644 = load i8*, i8** %b, align 8
  %1645 = load i8*, i8** %old_buffer2985, align 8
  %sub.ptr.lhs.cast3016 = ptrtoint i8* %1644 to i64
  %sub.ptr.rhs.cast3017 = ptrtoint i8* %1645 to i64
  %sub.ptr.sub3018 = sub i64 %sub.ptr.lhs.cast3016, %sub.ptr.rhs.cast3017
  %add.ptr3019 = getelementptr inbounds i8, i8* %1643, i64 %sub.ptr.sub3018
  store i8* %add.ptr3019, i8** %b, align 8
  %1646 = load i8*, i8** %new_buffer3014, align 8
  %1647 = load i8*, i8** %begalt, align 8
  %1648 = load i8*, i8** %old_buffer2985, align 8
  %sub.ptr.lhs.cast3020 = ptrtoint i8* %1647 to i64
  %sub.ptr.rhs.cast3021 = ptrtoint i8* %1648 to i64
  %sub.ptr.sub3022 = sub i64 %sub.ptr.lhs.cast3020, %sub.ptr.rhs.cast3021
  %add.ptr3023 = getelementptr inbounds i8, i8* %1646, i64 %sub.ptr.sub3022
  store i8* %add.ptr3023, i8** %begalt, align 8
  %1649 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3024 = icmp ne i8* %1649, null
  br i1 %tobool3024, label %if.then.3025, label %if.end.3030

if.then.3025:                                     ; preds = %if.then.3013
  %1650 = load i8*, i8** %new_buffer3014, align 8
  %1651 = load i8*, i8** %fixup_alt_jump, align 8
  %1652 = load i8*, i8** %old_buffer2985, align 8
  %sub.ptr.lhs.cast3026 = ptrtoint i8* %1651 to i64
  %sub.ptr.rhs.cast3027 = ptrtoint i8* %1652 to i64
  %sub.ptr.sub3028 = sub i64 %sub.ptr.lhs.cast3026, %sub.ptr.rhs.cast3027
  %add.ptr3029 = getelementptr inbounds i8, i8* %1650, i64 %sub.ptr.sub3028
  store i8* %add.ptr3029, i8** %fixup_alt_jump, align 8
  br label %if.end.3030

if.end.3030:                                      ; preds = %if.then.3025, %if.then.3013
  %1653 = load i8*, i8** %laststart, align 8
  %tobool3031 = icmp ne i8* %1653, null
  br i1 %tobool3031, label %if.then.3032, label %if.end.3037

if.then.3032:                                     ; preds = %if.end.3030
  %1654 = load i8*, i8** %new_buffer3014, align 8
  %1655 = load i8*, i8** %laststart, align 8
  %1656 = load i8*, i8** %old_buffer2985, align 8
  %sub.ptr.lhs.cast3033 = ptrtoint i8* %1655 to i64
  %sub.ptr.rhs.cast3034 = ptrtoint i8* %1656 to i64
  %sub.ptr.sub3035 = sub i64 %sub.ptr.lhs.cast3033, %sub.ptr.rhs.cast3034
  %add.ptr3036 = getelementptr inbounds i8, i8* %1654, i64 %sub.ptr.sub3035
  store i8* %add.ptr3036, i8** %laststart, align 8
  br label %if.end.3037

if.end.3037:                                      ; preds = %if.then.3032, %if.end.3030
  %1657 = load i8*, i8** %pending_exact, align 8
  %tobool3038 = icmp ne i8* %1657, null
  br i1 %tobool3038, label %if.then.3039, label %if.end.3044

if.then.3039:                                     ; preds = %if.end.3037
  %1658 = load i8*, i8** %new_buffer3014, align 8
  %1659 = load i8*, i8** %pending_exact, align 8
  %1660 = load i8*, i8** %old_buffer2985, align 8
  %sub.ptr.lhs.cast3040 = ptrtoint i8* %1659 to i64
  %sub.ptr.rhs.cast3041 = ptrtoint i8* %1660 to i64
  %sub.ptr.sub3042 = sub i64 %sub.ptr.lhs.cast3040, %sub.ptr.rhs.cast3041
  %add.ptr3043 = getelementptr inbounds i8, i8* %1658, i64 %sub.ptr.sub3042
  store i8* %add.ptr3043, i8** %pending_exact, align 8
  br label %if.end.3044

if.end.3044:                                      ; preds = %if.then.3039, %if.end.3037
  br label %if.end.3045

if.end.3045:                                      ; preds = %if.end.3044, %if.end.3009
  br label %do.end.3046

do.end.3046:                                      ; preds = %if.end.3045
  br label %while.cond.2974

while.end.3047:                                   ; preds = %while.cond.2974
  %1661 = load i8*, i8** %b, align 8
  %incdec.ptr3048 = getelementptr inbounds i8, i8* %1661, i32 1
  store i8* %incdec.ptr3048, i8** %b, align 8
  store i8 22, i8* %1661, align 1
  br label %do.end.3049

do.end.3049:                                      ; preds = %while.end.3047
  br label %sw.epilog.3763

sw.bb.3050:                                       ; preds = %do.end.1752
  %1662 = load i64, i64* %syntax.addr, align 8
  %and3051 = and i64 %1662, 524288
  %tobool3052 = icmp ne i64 %and3051, 0
  br i1 %tobool3052, label %if.then.3053, label %if.end.3054

if.then.3053:                                     ; preds = %sw.bb.3050
  br label %normal_char

if.end.3054:                                      ; preds = %sw.bb.3050
  %1663 = load i8*, i8** %b, align 8
  store i8* %1663, i8** %laststart, align 8
  br label %do.body.3055

do.body.3055:                                     ; preds = %if.end.3054
  br label %while.cond.3056

while.cond.3056:                                  ; preds = %do.end.3128, %do.body.3055
  %1664 = load i8*, i8** %b, align 8
  %1665 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3057 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1665, i32 0, i32 0
  %1666 = load i8*, i8** %buffer3057, align 8
  %sub.ptr.lhs.cast3058 = ptrtoint i8* %1664 to i64
  %sub.ptr.rhs.cast3059 = ptrtoint i8* %1666 to i64
  %sub.ptr.sub3060 = sub i64 %sub.ptr.lhs.cast3058, %sub.ptr.rhs.cast3059
  %add3061 = add nsw i64 %sub.ptr.sub3060, 1
  %1667 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3062 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1667, i32 0, i32 1
  %1668 = load i64, i64* %allocated3062, align 8
  %cmp3063 = icmp ugt i64 %add3061, %1668
  br i1 %cmp3063, label %while.body.3065, label %while.end.3129

while.body.3065:                                  ; preds = %while.cond.3056
  br label %do.body.3066

do.body.3066:                                     ; preds = %while.body.3065
  %1669 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3068 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1669, i32 0, i32 0
  %1670 = load i8*, i8** %buffer3068, align 8
  store i8* %1670, i8** %old_buffer3067, align 8
  %1671 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3069 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1671, i32 0, i32 1
  %1672 = load i64, i64* %allocated3069, align 8
  %cmp3070 = icmp eq i64 %1672, 32768
  br i1 %cmp3070, label %if.then.3072, label %if.end.3073

if.then.3072:                                     ; preds = %do.body.3066
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3073:                                      ; preds = %do.body.3066
  %1673 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3074 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1673, i32 0, i32 1
  %1674 = load i64, i64* %allocated3074, align 8
  %shl3075 = shl i64 %1674, 1
  store i64 %shl3075, i64* %allocated3074, align 8
  %1675 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3076 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1675, i32 0, i32 1
  %1676 = load i64, i64* %allocated3076, align 8
  %cmp3077 = icmp ugt i64 %1676, 32768
  br i1 %cmp3077, label %if.then.3079, label %if.end.3081

if.then.3079:                                     ; preds = %if.end.3073
  %1677 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3080 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1677, i32 0, i32 1
  store i64 32768, i64* %allocated3080, align 8
  br label %if.end.3081

if.end.3081:                                      ; preds = %if.then.3079, %if.end.3073
  %1678 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3082 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1678, i32 0, i32 0
  %1679 = load i8*, i8** %buffer3082, align 8
  %1680 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3083 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1680, i32 0, i32 1
  %1681 = load i64, i64* %allocated3083, align 8
  %mul3084 = mul i64 %1681, 1
  %call3085 = call i8* @xrealloc(i8* %1679, i64 %mul3084)
  %1682 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3086 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1682, i32 0, i32 0
  store i8* %call3085, i8** %buffer3086, align 8
  %1683 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3087 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1683, i32 0, i32 0
  %1684 = load i8*, i8** %buffer3087, align 8
  %cmp3088 = icmp eq i8* %1684, null
  br i1 %cmp3088, label %if.then.3090, label %if.end.3091

if.then.3090:                                     ; preds = %if.end.3081
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3091:                                      ; preds = %if.end.3081
  %1685 = load i8*, i8** %old_buffer3067, align 8
  %1686 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3092 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1686, i32 0, i32 0
  %1687 = load i8*, i8** %buffer3092, align 8
  %cmp3093 = icmp ne i8* %1685, %1687
  br i1 %cmp3093, label %if.then.3095, label %if.end.3127

if.then.3095:                                     ; preds = %if.end.3091
  %1688 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3097 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1688, i32 0, i32 0
  %1689 = load i8*, i8** %buffer3097, align 8
  store i8* %1689, i8** %new_buffer3096, align 8
  %1690 = load i8*, i8** %new_buffer3096, align 8
  %1691 = load i8*, i8** %b, align 8
  %1692 = load i8*, i8** %old_buffer3067, align 8
  %sub.ptr.lhs.cast3098 = ptrtoint i8* %1691 to i64
  %sub.ptr.rhs.cast3099 = ptrtoint i8* %1692 to i64
  %sub.ptr.sub3100 = sub i64 %sub.ptr.lhs.cast3098, %sub.ptr.rhs.cast3099
  %add.ptr3101 = getelementptr inbounds i8, i8* %1690, i64 %sub.ptr.sub3100
  store i8* %add.ptr3101, i8** %b, align 8
  %1693 = load i8*, i8** %new_buffer3096, align 8
  %1694 = load i8*, i8** %begalt, align 8
  %1695 = load i8*, i8** %old_buffer3067, align 8
  %sub.ptr.lhs.cast3102 = ptrtoint i8* %1694 to i64
  %sub.ptr.rhs.cast3103 = ptrtoint i8* %1695 to i64
  %sub.ptr.sub3104 = sub i64 %sub.ptr.lhs.cast3102, %sub.ptr.rhs.cast3103
  %add.ptr3105 = getelementptr inbounds i8, i8* %1693, i64 %sub.ptr.sub3104
  store i8* %add.ptr3105, i8** %begalt, align 8
  %1696 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3106 = icmp ne i8* %1696, null
  br i1 %tobool3106, label %if.then.3107, label %if.end.3112

if.then.3107:                                     ; preds = %if.then.3095
  %1697 = load i8*, i8** %new_buffer3096, align 8
  %1698 = load i8*, i8** %fixup_alt_jump, align 8
  %1699 = load i8*, i8** %old_buffer3067, align 8
  %sub.ptr.lhs.cast3108 = ptrtoint i8* %1698 to i64
  %sub.ptr.rhs.cast3109 = ptrtoint i8* %1699 to i64
  %sub.ptr.sub3110 = sub i64 %sub.ptr.lhs.cast3108, %sub.ptr.rhs.cast3109
  %add.ptr3111 = getelementptr inbounds i8, i8* %1697, i64 %sub.ptr.sub3110
  store i8* %add.ptr3111, i8** %fixup_alt_jump, align 8
  br label %if.end.3112

if.end.3112:                                      ; preds = %if.then.3107, %if.then.3095
  %1700 = load i8*, i8** %laststart, align 8
  %tobool3113 = icmp ne i8* %1700, null
  br i1 %tobool3113, label %if.then.3114, label %if.end.3119

if.then.3114:                                     ; preds = %if.end.3112
  %1701 = load i8*, i8** %new_buffer3096, align 8
  %1702 = load i8*, i8** %laststart, align 8
  %1703 = load i8*, i8** %old_buffer3067, align 8
  %sub.ptr.lhs.cast3115 = ptrtoint i8* %1702 to i64
  %sub.ptr.rhs.cast3116 = ptrtoint i8* %1703 to i64
  %sub.ptr.sub3117 = sub i64 %sub.ptr.lhs.cast3115, %sub.ptr.rhs.cast3116
  %add.ptr3118 = getelementptr inbounds i8, i8* %1701, i64 %sub.ptr.sub3117
  store i8* %add.ptr3118, i8** %laststart, align 8
  br label %if.end.3119

if.end.3119:                                      ; preds = %if.then.3114, %if.end.3112
  %1704 = load i8*, i8** %pending_exact, align 8
  %tobool3120 = icmp ne i8* %1704, null
  br i1 %tobool3120, label %if.then.3121, label %if.end.3126

if.then.3121:                                     ; preds = %if.end.3119
  %1705 = load i8*, i8** %new_buffer3096, align 8
  %1706 = load i8*, i8** %pending_exact, align 8
  %1707 = load i8*, i8** %old_buffer3067, align 8
  %sub.ptr.lhs.cast3122 = ptrtoint i8* %1706 to i64
  %sub.ptr.rhs.cast3123 = ptrtoint i8* %1707 to i64
  %sub.ptr.sub3124 = sub i64 %sub.ptr.lhs.cast3122, %sub.ptr.rhs.cast3123
  %add.ptr3125 = getelementptr inbounds i8, i8* %1705, i64 %sub.ptr.sub3124
  store i8* %add.ptr3125, i8** %pending_exact, align 8
  br label %if.end.3126

if.end.3126:                                      ; preds = %if.then.3121, %if.end.3119
  br label %if.end.3127

if.end.3127:                                      ; preds = %if.end.3126, %if.end.3091
  br label %do.end.3128

do.end.3128:                                      ; preds = %if.end.3127
  br label %while.cond.3056

while.end.3129:                                   ; preds = %while.cond.3056
  %1708 = load i8*, i8** %b, align 8
  %incdec.ptr3130 = getelementptr inbounds i8, i8* %1708, i32 1
  store i8* %incdec.ptr3130, i8** %b, align 8
  store i8 23, i8* %1708, align 1
  br label %do.end.3131

do.end.3131:                                      ; preds = %while.end.3129
  br label %sw.epilog.3763

sw.bb.3132:                                       ; preds = %do.end.1752
  %1709 = load i64, i64* %syntax.addr, align 8
  %and3133 = and i64 %1709, 524288
  %tobool3134 = icmp ne i64 %and3133, 0
  br i1 %tobool3134, label %if.then.3135, label %if.end.3136

if.then.3135:                                     ; preds = %sw.bb.3132
  br label %normal_char

if.end.3136:                                      ; preds = %sw.bb.3132
  %1710 = load i8*, i8** %b, align 8
  store i8* %1710, i8** %laststart, align 8
  br label %do.body.3137

do.body.3137:                                     ; preds = %if.end.3136
  %1711 = load i8*, i8** %p, align 8
  %1712 = load i8*, i8** %pend, align 8
  %cmp3139 = icmp eq i8* %1711, %1712
  br i1 %cmp3139, label %if.then.3141, label %if.end.3142

if.then.3141:                                     ; preds = %do.body.3137
  store i32 14, i32* %retval
  br label %do.end.4144

if.end.3142:                                      ; preds = %do.body.3137
  store i32 1, i32* %len3138, align 4
  %1713 = load i8*, i8** %p, align 8
  %1714 = load i8, i8* %1713, align 1
  %conv3143 = zext i8 %1714 to i32
  store i32 %conv3143, i32* %c, align 4
  %1715 = load i32, i32* %len3138, align 4
  %1716 = load i8*, i8** %p, align 8
  %idx.ext3144 = sext i32 %1715 to i64
  %add.ptr3145 = getelementptr inbounds i8, i8* %1716, i64 %idx.ext3144
  store i8* %add.ptr3145, i8** %p, align 8
  br label %do.end.3146

do.end.3146:                                      ; preds = %if.end.3142
  %1717 = load i32, i32* %c, align 4
  %cmp3147 = icmp eq i32 %1717, 60
  br i1 %cmp3147, label %if.then.3149, label %if.else.3227

if.then.3149:                                     ; preds = %do.end.3146
  br label %do.body.3150

do.body.3150:                                     ; preds = %if.then.3149
  br label %while.cond.3151

while.cond.3151:                                  ; preds = %do.end.3223, %do.body.3150
  %1718 = load i8*, i8** %b, align 8
  %1719 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3152 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1719, i32 0, i32 0
  %1720 = load i8*, i8** %buffer3152, align 8
  %sub.ptr.lhs.cast3153 = ptrtoint i8* %1718 to i64
  %sub.ptr.rhs.cast3154 = ptrtoint i8* %1720 to i64
  %sub.ptr.sub3155 = sub i64 %sub.ptr.lhs.cast3153, %sub.ptr.rhs.cast3154
  %add3156 = add nsw i64 %sub.ptr.sub3155, 1
  %1721 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3157 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1721, i32 0, i32 1
  %1722 = load i64, i64* %allocated3157, align 8
  %cmp3158 = icmp ugt i64 %add3156, %1722
  br i1 %cmp3158, label %while.body.3160, label %while.end.3224

while.body.3160:                                  ; preds = %while.cond.3151
  br label %do.body.3161

do.body.3161:                                     ; preds = %while.body.3160
  %1723 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3163 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1723, i32 0, i32 0
  %1724 = load i8*, i8** %buffer3163, align 8
  store i8* %1724, i8** %old_buffer3162, align 8
  %1725 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3164 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1725, i32 0, i32 1
  %1726 = load i64, i64* %allocated3164, align 8
  %cmp3165 = icmp eq i64 %1726, 32768
  br i1 %cmp3165, label %if.then.3167, label %if.end.3168

if.then.3167:                                     ; preds = %do.body.3161
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3168:                                      ; preds = %do.body.3161
  %1727 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3169 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1727, i32 0, i32 1
  %1728 = load i64, i64* %allocated3169, align 8
  %shl3170 = shl i64 %1728, 1
  store i64 %shl3170, i64* %allocated3169, align 8
  %1729 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3171 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1729, i32 0, i32 1
  %1730 = load i64, i64* %allocated3171, align 8
  %cmp3172 = icmp ugt i64 %1730, 32768
  br i1 %cmp3172, label %if.then.3174, label %if.end.3176

if.then.3174:                                     ; preds = %if.end.3168
  %1731 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3175 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1731, i32 0, i32 1
  store i64 32768, i64* %allocated3175, align 8
  br label %if.end.3176

if.end.3176:                                      ; preds = %if.then.3174, %if.end.3168
  %1732 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3177 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1732, i32 0, i32 0
  %1733 = load i8*, i8** %buffer3177, align 8
  %1734 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3178 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1734, i32 0, i32 1
  %1735 = load i64, i64* %allocated3178, align 8
  %mul3179 = mul i64 %1735, 1
  %call3180 = call i8* @xrealloc(i8* %1733, i64 %mul3179)
  %1736 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3181 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1736, i32 0, i32 0
  store i8* %call3180, i8** %buffer3181, align 8
  %1737 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3182 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1737, i32 0, i32 0
  %1738 = load i8*, i8** %buffer3182, align 8
  %cmp3183 = icmp eq i8* %1738, null
  br i1 %cmp3183, label %if.then.3185, label %if.end.3186

if.then.3185:                                     ; preds = %if.end.3176
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3186:                                      ; preds = %if.end.3176
  %1739 = load i8*, i8** %old_buffer3162, align 8
  %1740 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3187 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1740, i32 0, i32 0
  %1741 = load i8*, i8** %buffer3187, align 8
  %cmp3188 = icmp ne i8* %1739, %1741
  br i1 %cmp3188, label %if.then.3190, label %if.end.3222

if.then.3190:                                     ; preds = %if.end.3186
  %1742 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3192 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1742, i32 0, i32 0
  %1743 = load i8*, i8** %buffer3192, align 8
  store i8* %1743, i8** %new_buffer3191, align 8
  %1744 = load i8*, i8** %new_buffer3191, align 8
  %1745 = load i8*, i8** %b, align 8
  %1746 = load i8*, i8** %old_buffer3162, align 8
  %sub.ptr.lhs.cast3193 = ptrtoint i8* %1745 to i64
  %sub.ptr.rhs.cast3194 = ptrtoint i8* %1746 to i64
  %sub.ptr.sub3195 = sub i64 %sub.ptr.lhs.cast3193, %sub.ptr.rhs.cast3194
  %add.ptr3196 = getelementptr inbounds i8, i8* %1744, i64 %sub.ptr.sub3195
  store i8* %add.ptr3196, i8** %b, align 8
  %1747 = load i8*, i8** %new_buffer3191, align 8
  %1748 = load i8*, i8** %begalt, align 8
  %1749 = load i8*, i8** %old_buffer3162, align 8
  %sub.ptr.lhs.cast3197 = ptrtoint i8* %1748 to i64
  %sub.ptr.rhs.cast3198 = ptrtoint i8* %1749 to i64
  %sub.ptr.sub3199 = sub i64 %sub.ptr.lhs.cast3197, %sub.ptr.rhs.cast3198
  %add.ptr3200 = getelementptr inbounds i8, i8* %1747, i64 %sub.ptr.sub3199
  store i8* %add.ptr3200, i8** %begalt, align 8
  %1750 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3201 = icmp ne i8* %1750, null
  br i1 %tobool3201, label %if.then.3202, label %if.end.3207

if.then.3202:                                     ; preds = %if.then.3190
  %1751 = load i8*, i8** %new_buffer3191, align 8
  %1752 = load i8*, i8** %fixup_alt_jump, align 8
  %1753 = load i8*, i8** %old_buffer3162, align 8
  %sub.ptr.lhs.cast3203 = ptrtoint i8* %1752 to i64
  %sub.ptr.rhs.cast3204 = ptrtoint i8* %1753 to i64
  %sub.ptr.sub3205 = sub i64 %sub.ptr.lhs.cast3203, %sub.ptr.rhs.cast3204
  %add.ptr3206 = getelementptr inbounds i8, i8* %1751, i64 %sub.ptr.sub3205
  store i8* %add.ptr3206, i8** %fixup_alt_jump, align 8
  br label %if.end.3207

if.end.3207:                                      ; preds = %if.then.3202, %if.then.3190
  %1754 = load i8*, i8** %laststart, align 8
  %tobool3208 = icmp ne i8* %1754, null
  br i1 %tobool3208, label %if.then.3209, label %if.end.3214

if.then.3209:                                     ; preds = %if.end.3207
  %1755 = load i8*, i8** %new_buffer3191, align 8
  %1756 = load i8*, i8** %laststart, align 8
  %1757 = load i8*, i8** %old_buffer3162, align 8
  %sub.ptr.lhs.cast3210 = ptrtoint i8* %1756 to i64
  %sub.ptr.rhs.cast3211 = ptrtoint i8* %1757 to i64
  %sub.ptr.sub3212 = sub i64 %sub.ptr.lhs.cast3210, %sub.ptr.rhs.cast3211
  %add.ptr3213 = getelementptr inbounds i8, i8* %1755, i64 %sub.ptr.sub3212
  store i8* %add.ptr3213, i8** %laststart, align 8
  br label %if.end.3214

if.end.3214:                                      ; preds = %if.then.3209, %if.end.3207
  %1758 = load i8*, i8** %pending_exact, align 8
  %tobool3215 = icmp ne i8* %1758, null
  br i1 %tobool3215, label %if.then.3216, label %if.end.3221

if.then.3216:                                     ; preds = %if.end.3214
  %1759 = load i8*, i8** %new_buffer3191, align 8
  %1760 = load i8*, i8** %pending_exact, align 8
  %1761 = load i8*, i8** %old_buffer3162, align 8
  %sub.ptr.lhs.cast3217 = ptrtoint i8* %1760 to i64
  %sub.ptr.rhs.cast3218 = ptrtoint i8* %1761 to i64
  %sub.ptr.sub3219 = sub i64 %sub.ptr.lhs.cast3217, %sub.ptr.rhs.cast3218
  %add.ptr3220 = getelementptr inbounds i8, i8* %1759, i64 %sub.ptr.sub3219
  store i8* %add.ptr3220, i8** %pending_exact, align 8
  br label %if.end.3221

if.end.3221:                                      ; preds = %if.then.3216, %if.end.3214
  br label %if.end.3222

if.end.3222:                                      ; preds = %if.end.3221, %if.end.3186
  br label %do.end.3223

do.end.3223:                                      ; preds = %if.end.3222
  br label %while.cond.3151

while.end.3224:                                   ; preds = %while.cond.3151
  %1762 = load i8*, i8** %b, align 8
  %incdec.ptr3225 = getelementptr inbounds i8, i8* %1762, i32 1
  store i8* %incdec.ptr3225, i8** %b, align 8
  store i8 26, i8* %1762, align 1
  br label %do.end.3226

do.end.3226:                                      ; preds = %while.end.3224
  br label %if.end.3320

if.else.3227:                                     ; preds = %do.end.3146
  %1763 = load i32, i32* %c, align 4
  %cmp3228 = icmp eq i32 %1763, 62
  br i1 %cmp3228, label %if.then.3230, label %if.else.3308

if.then.3230:                                     ; preds = %if.else.3227
  br label %do.body.3231

do.body.3231:                                     ; preds = %if.then.3230
  br label %while.cond.3232

while.cond.3232:                                  ; preds = %do.end.3304, %do.body.3231
  %1764 = load i8*, i8** %b, align 8
  %1765 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3233 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1765, i32 0, i32 0
  %1766 = load i8*, i8** %buffer3233, align 8
  %sub.ptr.lhs.cast3234 = ptrtoint i8* %1764 to i64
  %sub.ptr.rhs.cast3235 = ptrtoint i8* %1766 to i64
  %sub.ptr.sub3236 = sub i64 %sub.ptr.lhs.cast3234, %sub.ptr.rhs.cast3235
  %add3237 = add nsw i64 %sub.ptr.sub3236, 1
  %1767 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3238 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1767, i32 0, i32 1
  %1768 = load i64, i64* %allocated3238, align 8
  %cmp3239 = icmp ugt i64 %add3237, %1768
  br i1 %cmp3239, label %while.body.3241, label %while.end.3305

while.body.3241:                                  ; preds = %while.cond.3232
  br label %do.body.3242

do.body.3242:                                     ; preds = %while.body.3241
  %1769 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3244 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1769, i32 0, i32 0
  %1770 = load i8*, i8** %buffer3244, align 8
  store i8* %1770, i8** %old_buffer3243, align 8
  %1771 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3245 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1771, i32 0, i32 1
  %1772 = load i64, i64* %allocated3245, align 8
  %cmp3246 = icmp eq i64 %1772, 32768
  br i1 %cmp3246, label %if.then.3248, label %if.end.3249

if.then.3248:                                     ; preds = %do.body.3242
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3249:                                      ; preds = %do.body.3242
  %1773 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3250 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1773, i32 0, i32 1
  %1774 = load i64, i64* %allocated3250, align 8
  %shl3251 = shl i64 %1774, 1
  store i64 %shl3251, i64* %allocated3250, align 8
  %1775 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3252 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1775, i32 0, i32 1
  %1776 = load i64, i64* %allocated3252, align 8
  %cmp3253 = icmp ugt i64 %1776, 32768
  br i1 %cmp3253, label %if.then.3255, label %if.end.3257

if.then.3255:                                     ; preds = %if.end.3249
  %1777 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3256 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1777, i32 0, i32 1
  store i64 32768, i64* %allocated3256, align 8
  br label %if.end.3257

if.end.3257:                                      ; preds = %if.then.3255, %if.end.3249
  %1778 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3258 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1778, i32 0, i32 0
  %1779 = load i8*, i8** %buffer3258, align 8
  %1780 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3259 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1780, i32 0, i32 1
  %1781 = load i64, i64* %allocated3259, align 8
  %mul3260 = mul i64 %1781, 1
  %call3261 = call i8* @xrealloc(i8* %1779, i64 %mul3260)
  %1782 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3262 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1782, i32 0, i32 0
  store i8* %call3261, i8** %buffer3262, align 8
  %1783 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3263 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1783, i32 0, i32 0
  %1784 = load i8*, i8** %buffer3263, align 8
  %cmp3264 = icmp eq i8* %1784, null
  br i1 %cmp3264, label %if.then.3266, label %if.end.3267

if.then.3266:                                     ; preds = %if.end.3257
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3267:                                      ; preds = %if.end.3257
  %1785 = load i8*, i8** %old_buffer3243, align 8
  %1786 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3268 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1786, i32 0, i32 0
  %1787 = load i8*, i8** %buffer3268, align 8
  %cmp3269 = icmp ne i8* %1785, %1787
  br i1 %cmp3269, label %if.then.3271, label %if.end.3303

if.then.3271:                                     ; preds = %if.end.3267
  %1788 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3273 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1788, i32 0, i32 0
  %1789 = load i8*, i8** %buffer3273, align 8
  store i8* %1789, i8** %new_buffer3272, align 8
  %1790 = load i8*, i8** %new_buffer3272, align 8
  %1791 = load i8*, i8** %b, align 8
  %1792 = load i8*, i8** %old_buffer3243, align 8
  %sub.ptr.lhs.cast3274 = ptrtoint i8* %1791 to i64
  %sub.ptr.rhs.cast3275 = ptrtoint i8* %1792 to i64
  %sub.ptr.sub3276 = sub i64 %sub.ptr.lhs.cast3274, %sub.ptr.rhs.cast3275
  %add.ptr3277 = getelementptr inbounds i8, i8* %1790, i64 %sub.ptr.sub3276
  store i8* %add.ptr3277, i8** %b, align 8
  %1793 = load i8*, i8** %new_buffer3272, align 8
  %1794 = load i8*, i8** %begalt, align 8
  %1795 = load i8*, i8** %old_buffer3243, align 8
  %sub.ptr.lhs.cast3278 = ptrtoint i8* %1794 to i64
  %sub.ptr.rhs.cast3279 = ptrtoint i8* %1795 to i64
  %sub.ptr.sub3280 = sub i64 %sub.ptr.lhs.cast3278, %sub.ptr.rhs.cast3279
  %add.ptr3281 = getelementptr inbounds i8, i8* %1793, i64 %sub.ptr.sub3280
  store i8* %add.ptr3281, i8** %begalt, align 8
  %1796 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3282 = icmp ne i8* %1796, null
  br i1 %tobool3282, label %if.then.3283, label %if.end.3288

if.then.3283:                                     ; preds = %if.then.3271
  %1797 = load i8*, i8** %new_buffer3272, align 8
  %1798 = load i8*, i8** %fixup_alt_jump, align 8
  %1799 = load i8*, i8** %old_buffer3243, align 8
  %sub.ptr.lhs.cast3284 = ptrtoint i8* %1798 to i64
  %sub.ptr.rhs.cast3285 = ptrtoint i8* %1799 to i64
  %sub.ptr.sub3286 = sub i64 %sub.ptr.lhs.cast3284, %sub.ptr.rhs.cast3285
  %add.ptr3287 = getelementptr inbounds i8, i8* %1797, i64 %sub.ptr.sub3286
  store i8* %add.ptr3287, i8** %fixup_alt_jump, align 8
  br label %if.end.3288

if.end.3288:                                      ; preds = %if.then.3283, %if.then.3271
  %1800 = load i8*, i8** %laststart, align 8
  %tobool3289 = icmp ne i8* %1800, null
  br i1 %tobool3289, label %if.then.3290, label %if.end.3295

if.then.3290:                                     ; preds = %if.end.3288
  %1801 = load i8*, i8** %new_buffer3272, align 8
  %1802 = load i8*, i8** %laststart, align 8
  %1803 = load i8*, i8** %old_buffer3243, align 8
  %sub.ptr.lhs.cast3291 = ptrtoint i8* %1802 to i64
  %sub.ptr.rhs.cast3292 = ptrtoint i8* %1803 to i64
  %sub.ptr.sub3293 = sub i64 %sub.ptr.lhs.cast3291, %sub.ptr.rhs.cast3292
  %add.ptr3294 = getelementptr inbounds i8, i8* %1801, i64 %sub.ptr.sub3293
  store i8* %add.ptr3294, i8** %laststart, align 8
  br label %if.end.3295

if.end.3295:                                      ; preds = %if.then.3290, %if.end.3288
  %1804 = load i8*, i8** %pending_exact, align 8
  %tobool3296 = icmp ne i8* %1804, null
  br i1 %tobool3296, label %if.then.3297, label %if.end.3302

if.then.3297:                                     ; preds = %if.end.3295
  %1805 = load i8*, i8** %new_buffer3272, align 8
  %1806 = load i8*, i8** %pending_exact, align 8
  %1807 = load i8*, i8** %old_buffer3243, align 8
  %sub.ptr.lhs.cast3298 = ptrtoint i8* %1806 to i64
  %sub.ptr.rhs.cast3299 = ptrtoint i8* %1807 to i64
  %sub.ptr.sub3300 = sub i64 %sub.ptr.lhs.cast3298, %sub.ptr.rhs.cast3299
  %add.ptr3301 = getelementptr inbounds i8, i8* %1805, i64 %sub.ptr.sub3300
  store i8* %add.ptr3301, i8** %pending_exact, align 8
  br label %if.end.3302

if.end.3302:                                      ; preds = %if.then.3297, %if.end.3295
  br label %if.end.3303

if.end.3303:                                      ; preds = %if.end.3302, %if.end.3267
  br label %do.end.3304

do.end.3304:                                      ; preds = %if.end.3303
  br label %while.cond.3232

while.end.3305:                                   ; preds = %while.cond.3232
  %1808 = load i8*, i8** %b, align 8
  %incdec.ptr3306 = getelementptr inbounds i8, i8* %1808, i32 1
  store i8* %incdec.ptr3306, i8** %b, align 8
  store i8 27, i8* %1808, align 1
  br label %do.end.3307

do.end.3307:                                      ; preds = %while.end.3305
  br label %if.end.3319

if.else.3308:                                     ; preds = %if.else.3227
  br label %do.body.3309

do.body.3309:                                     ; preds = %if.else.3308
  br label %do.body.3310

do.body.3310:                                     ; preds = %do.body.3309
  %table3311 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1809 = load i32*, i32** %table3311, align 8
  %tobool3312 = icmp ne i32* %1809, null
  br i1 %tobool3312, label %if.then.3313, label %if.end.3315

if.then.3313:                                     ; preds = %do.body.3310
  %table3314 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %1810 = load i32*, i32** %table3314, align 8
  %1811 = bitcast i32* %1810 to i8*
  call void @free(i8* %1811) #4
  br label %if.end.3315

if.end.3315:                                      ; preds = %if.then.3313, %do.body.3310
  br label %do.end.3316

do.end.3316:                                      ; preds = %if.end.3315
  %stack3317 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1812 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack3317, align 8
  %1813 = bitcast %struct.compile_stack_elt_t* %1812 to i8*
  call void @free(i8* %1813) #4
  store i32 2, i32* %retval
  br label %do.end.4144

do.end.3318:                                      ; No predecessors!
  br label %if.end.3319

if.end.3319:                                      ; preds = %do.end.3318, %do.end.3307
  br label %if.end.3320

if.end.3320:                                      ; preds = %if.end.3319, %do.end.3226
  br label %sw.epilog.3763

sw.bb.3321:                                       ; preds = %do.end.1752
  %1814 = load i64, i64* %syntax.addr, align 8
  %and3322 = and i64 %1814, 524288
  %tobool3323 = icmp ne i64 %and3322, 0
  br i1 %tobool3323, label %if.then.3324, label %if.end.3325

if.then.3324:                                     ; preds = %sw.bb.3321
  br label %normal_char

if.end.3325:                                      ; preds = %sw.bb.3321
  br label %do.body.3326

do.body.3326:                                     ; preds = %if.end.3325
  br label %while.cond.3327

while.cond.3327:                                  ; preds = %do.end.3399, %do.body.3326
  %1815 = load i8*, i8** %b, align 8
  %1816 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3328 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1816, i32 0, i32 0
  %1817 = load i8*, i8** %buffer3328, align 8
  %sub.ptr.lhs.cast3329 = ptrtoint i8* %1815 to i64
  %sub.ptr.rhs.cast3330 = ptrtoint i8* %1817 to i64
  %sub.ptr.sub3331 = sub i64 %sub.ptr.lhs.cast3329, %sub.ptr.rhs.cast3330
  %add3332 = add nsw i64 %sub.ptr.sub3331, 1
  %1818 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3333 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1818, i32 0, i32 1
  %1819 = load i64, i64* %allocated3333, align 8
  %cmp3334 = icmp ugt i64 %add3332, %1819
  br i1 %cmp3334, label %while.body.3336, label %while.end.3400

while.body.3336:                                  ; preds = %while.cond.3327
  br label %do.body.3337

do.body.3337:                                     ; preds = %while.body.3336
  %1820 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3339 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1820, i32 0, i32 0
  %1821 = load i8*, i8** %buffer3339, align 8
  store i8* %1821, i8** %old_buffer3338, align 8
  %1822 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3340 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1822, i32 0, i32 1
  %1823 = load i64, i64* %allocated3340, align 8
  %cmp3341 = icmp eq i64 %1823, 32768
  br i1 %cmp3341, label %if.then.3343, label %if.end.3344

if.then.3343:                                     ; preds = %do.body.3337
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3344:                                      ; preds = %do.body.3337
  %1824 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3345 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1824, i32 0, i32 1
  %1825 = load i64, i64* %allocated3345, align 8
  %shl3346 = shl i64 %1825, 1
  store i64 %shl3346, i64* %allocated3345, align 8
  %1826 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3347 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1826, i32 0, i32 1
  %1827 = load i64, i64* %allocated3347, align 8
  %cmp3348 = icmp ugt i64 %1827, 32768
  br i1 %cmp3348, label %if.then.3350, label %if.end.3352

if.then.3350:                                     ; preds = %if.end.3344
  %1828 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3351 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1828, i32 0, i32 1
  store i64 32768, i64* %allocated3351, align 8
  br label %if.end.3352

if.end.3352:                                      ; preds = %if.then.3350, %if.end.3344
  %1829 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3353 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1829, i32 0, i32 0
  %1830 = load i8*, i8** %buffer3353, align 8
  %1831 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3354 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1831, i32 0, i32 1
  %1832 = load i64, i64* %allocated3354, align 8
  %mul3355 = mul i64 %1832, 1
  %call3356 = call i8* @xrealloc(i8* %1830, i64 %mul3355)
  %1833 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3357 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1833, i32 0, i32 0
  store i8* %call3356, i8** %buffer3357, align 8
  %1834 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3358 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1834, i32 0, i32 0
  %1835 = load i8*, i8** %buffer3358, align 8
  %cmp3359 = icmp eq i8* %1835, null
  br i1 %cmp3359, label %if.then.3361, label %if.end.3362

if.then.3361:                                     ; preds = %if.end.3352
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3362:                                      ; preds = %if.end.3352
  %1836 = load i8*, i8** %old_buffer3338, align 8
  %1837 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3363 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1837, i32 0, i32 0
  %1838 = load i8*, i8** %buffer3363, align 8
  %cmp3364 = icmp ne i8* %1836, %1838
  br i1 %cmp3364, label %if.then.3366, label %if.end.3398

if.then.3366:                                     ; preds = %if.end.3362
  %1839 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3368 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1839, i32 0, i32 0
  %1840 = load i8*, i8** %buffer3368, align 8
  store i8* %1840, i8** %new_buffer3367, align 8
  %1841 = load i8*, i8** %new_buffer3367, align 8
  %1842 = load i8*, i8** %b, align 8
  %1843 = load i8*, i8** %old_buffer3338, align 8
  %sub.ptr.lhs.cast3369 = ptrtoint i8* %1842 to i64
  %sub.ptr.rhs.cast3370 = ptrtoint i8* %1843 to i64
  %sub.ptr.sub3371 = sub i64 %sub.ptr.lhs.cast3369, %sub.ptr.rhs.cast3370
  %add.ptr3372 = getelementptr inbounds i8, i8* %1841, i64 %sub.ptr.sub3371
  store i8* %add.ptr3372, i8** %b, align 8
  %1844 = load i8*, i8** %new_buffer3367, align 8
  %1845 = load i8*, i8** %begalt, align 8
  %1846 = load i8*, i8** %old_buffer3338, align 8
  %sub.ptr.lhs.cast3373 = ptrtoint i8* %1845 to i64
  %sub.ptr.rhs.cast3374 = ptrtoint i8* %1846 to i64
  %sub.ptr.sub3375 = sub i64 %sub.ptr.lhs.cast3373, %sub.ptr.rhs.cast3374
  %add.ptr3376 = getelementptr inbounds i8, i8* %1844, i64 %sub.ptr.sub3375
  store i8* %add.ptr3376, i8** %begalt, align 8
  %1847 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3377 = icmp ne i8* %1847, null
  br i1 %tobool3377, label %if.then.3378, label %if.end.3383

if.then.3378:                                     ; preds = %if.then.3366
  %1848 = load i8*, i8** %new_buffer3367, align 8
  %1849 = load i8*, i8** %fixup_alt_jump, align 8
  %1850 = load i8*, i8** %old_buffer3338, align 8
  %sub.ptr.lhs.cast3379 = ptrtoint i8* %1849 to i64
  %sub.ptr.rhs.cast3380 = ptrtoint i8* %1850 to i64
  %sub.ptr.sub3381 = sub i64 %sub.ptr.lhs.cast3379, %sub.ptr.rhs.cast3380
  %add.ptr3382 = getelementptr inbounds i8, i8* %1848, i64 %sub.ptr.sub3381
  store i8* %add.ptr3382, i8** %fixup_alt_jump, align 8
  br label %if.end.3383

if.end.3383:                                      ; preds = %if.then.3378, %if.then.3366
  %1851 = load i8*, i8** %laststart, align 8
  %tobool3384 = icmp ne i8* %1851, null
  br i1 %tobool3384, label %if.then.3385, label %if.end.3390

if.then.3385:                                     ; preds = %if.end.3383
  %1852 = load i8*, i8** %new_buffer3367, align 8
  %1853 = load i8*, i8** %laststart, align 8
  %1854 = load i8*, i8** %old_buffer3338, align 8
  %sub.ptr.lhs.cast3386 = ptrtoint i8* %1853 to i64
  %sub.ptr.rhs.cast3387 = ptrtoint i8* %1854 to i64
  %sub.ptr.sub3388 = sub i64 %sub.ptr.lhs.cast3386, %sub.ptr.rhs.cast3387
  %add.ptr3389 = getelementptr inbounds i8, i8* %1852, i64 %sub.ptr.sub3388
  store i8* %add.ptr3389, i8** %laststart, align 8
  br label %if.end.3390

if.end.3390:                                      ; preds = %if.then.3385, %if.end.3383
  %1855 = load i8*, i8** %pending_exact, align 8
  %tobool3391 = icmp ne i8* %1855, null
  br i1 %tobool3391, label %if.then.3392, label %if.end.3397

if.then.3392:                                     ; preds = %if.end.3390
  %1856 = load i8*, i8** %new_buffer3367, align 8
  %1857 = load i8*, i8** %pending_exact, align 8
  %1858 = load i8*, i8** %old_buffer3338, align 8
  %sub.ptr.lhs.cast3393 = ptrtoint i8* %1857 to i64
  %sub.ptr.rhs.cast3394 = ptrtoint i8* %1858 to i64
  %sub.ptr.sub3395 = sub i64 %sub.ptr.lhs.cast3393, %sub.ptr.rhs.cast3394
  %add.ptr3396 = getelementptr inbounds i8, i8* %1856, i64 %sub.ptr.sub3395
  store i8* %add.ptr3396, i8** %pending_exact, align 8
  br label %if.end.3397

if.end.3397:                                      ; preds = %if.then.3392, %if.end.3390
  br label %if.end.3398

if.end.3398:                                      ; preds = %if.end.3397, %if.end.3362
  br label %do.end.3399

do.end.3399:                                      ; preds = %if.end.3398
  br label %while.cond.3327

while.end.3400:                                   ; preds = %while.cond.3327
  %1859 = load i8*, i8** %b, align 8
  %incdec.ptr3401 = getelementptr inbounds i8, i8* %1859, i32 1
  store i8* %incdec.ptr3401, i8** %b, align 8
  store i8 24, i8* %1859, align 1
  br label %do.end.3402

do.end.3402:                                      ; preds = %while.end.3400
  br label %sw.epilog.3763

sw.bb.3403:                                       ; preds = %do.end.1752
  %1860 = load i64, i64* %syntax.addr, align 8
  %and3404 = and i64 %1860, 524288
  %tobool3405 = icmp ne i64 %and3404, 0
  br i1 %tobool3405, label %if.then.3406, label %if.end.3407

if.then.3406:                                     ; preds = %sw.bb.3403
  br label %normal_char

if.end.3407:                                      ; preds = %sw.bb.3403
  br label %do.body.3408

do.body.3408:                                     ; preds = %if.end.3407
  br label %while.cond.3409

while.cond.3409:                                  ; preds = %do.end.3481, %do.body.3408
  %1861 = load i8*, i8** %b, align 8
  %1862 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3410 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1862, i32 0, i32 0
  %1863 = load i8*, i8** %buffer3410, align 8
  %sub.ptr.lhs.cast3411 = ptrtoint i8* %1861 to i64
  %sub.ptr.rhs.cast3412 = ptrtoint i8* %1863 to i64
  %sub.ptr.sub3413 = sub i64 %sub.ptr.lhs.cast3411, %sub.ptr.rhs.cast3412
  %add3414 = add nsw i64 %sub.ptr.sub3413, 1
  %1864 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3415 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1864, i32 0, i32 1
  %1865 = load i64, i64* %allocated3415, align 8
  %cmp3416 = icmp ugt i64 %add3414, %1865
  br i1 %cmp3416, label %while.body.3418, label %while.end.3482

while.body.3418:                                  ; preds = %while.cond.3409
  br label %do.body.3419

do.body.3419:                                     ; preds = %while.body.3418
  %1866 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3421 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1866, i32 0, i32 0
  %1867 = load i8*, i8** %buffer3421, align 8
  store i8* %1867, i8** %old_buffer3420, align 8
  %1868 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3422 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1868, i32 0, i32 1
  %1869 = load i64, i64* %allocated3422, align 8
  %cmp3423 = icmp eq i64 %1869, 32768
  br i1 %cmp3423, label %if.then.3425, label %if.end.3426

if.then.3425:                                     ; preds = %do.body.3419
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3426:                                      ; preds = %do.body.3419
  %1870 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3427 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1870, i32 0, i32 1
  %1871 = load i64, i64* %allocated3427, align 8
  %shl3428 = shl i64 %1871, 1
  store i64 %shl3428, i64* %allocated3427, align 8
  %1872 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3429 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1872, i32 0, i32 1
  %1873 = load i64, i64* %allocated3429, align 8
  %cmp3430 = icmp ugt i64 %1873, 32768
  br i1 %cmp3430, label %if.then.3432, label %if.end.3434

if.then.3432:                                     ; preds = %if.end.3426
  %1874 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3433 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1874, i32 0, i32 1
  store i64 32768, i64* %allocated3433, align 8
  br label %if.end.3434

if.end.3434:                                      ; preds = %if.then.3432, %if.end.3426
  %1875 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3435 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1875, i32 0, i32 0
  %1876 = load i8*, i8** %buffer3435, align 8
  %1877 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3436 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1877, i32 0, i32 1
  %1878 = load i64, i64* %allocated3436, align 8
  %mul3437 = mul i64 %1878, 1
  %call3438 = call i8* @xrealloc(i8* %1876, i64 %mul3437)
  %1879 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3439 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1879, i32 0, i32 0
  store i8* %call3438, i8** %buffer3439, align 8
  %1880 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3440 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1880, i32 0, i32 0
  %1881 = load i8*, i8** %buffer3440, align 8
  %cmp3441 = icmp eq i8* %1881, null
  br i1 %cmp3441, label %if.then.3443, label %if.end.3444

if.then.3443:                                     ; preds = %if.end.3434
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3444:                                      ; preds = %if.end.3434
  %1882 = load i8*, i8** %old_buffer3420, align 8
  %1883 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3445 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1883, i32 0, i32 0
  %1884 = load i8*, i8** %buffer3445, align 8
  %cmp3446 = icmp ne i8* %1882, %1884
  br i1 %cmp3446, label %if.then.3448, label %if.end.3480

if.then.3448:                                     ; preds = %if.end.3444
  %1885 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3450 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1885, i32 0, i32 0
  %1886 = load i8*, i8** %buffer3450, align 8
  store i8* %1886, i8** %new_buffer3449, align 8
  %1887 = load i8*, i8** %new_buffer3449, align 8
  %1888 = load i8*, i8** %b, align 8
  %1889 = load i8*, i8** %old_buffer3420, align 8
  %sub.ptr.lhs.cast3451 = ptrtoint i8* %1888 to i64
  %sub.ptr.rhs.cast3452 = ptrtoint i8* %1889 to i64
  %sub.ptr.sub3453 = sub i64 %sub.ptr.lhs.cast3451, %sub.ptr.rhs.cast3452
  %add.ptr3454 = getelementptr inbounds i8, i8* %1887, i64 %sub.ptr.sub3453
  store i8* %add.ptr3454, i8** %b, align 8
  %1890 = load i8*, i8** %new_buffer3449, align 8
  %1891 = load i8*, i8** %begalt, align 8
  %1892 = load i8*, i8** %old_buffer3420, align 8
  %sub.ptr.lhs.cast3455 = ptrtoint i8* %1891 to i64
  %sub.ptr.rhs.cast3456 = ptrtoint i8* %1892 to i64
  %sub.ptr.sub3457 = sub i64 %sub.ptr.lhs.cast3455, %sub.ptr.rhs.cast3456
  %add.ptr3458 = getelementptr inbounds i8, i8* %1890, i64 %sub.ptr.sub3457
  store i8* %add.ptr3458, i8** %begalt, align 8
  %1893 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3459 = icmp ne i8* %1893, null
  br i1 %tobool3459, label %if.then.3460, label %if.end.3465

if.then.3460:                                     ; preds = %if.then.3448
  %1894 = load i8*, i8** %new_buffer3449, align 8
  %1895 = load i8*, i8** %fixup_alt_jump, align 8
  %1896 = load i8*, i8** %old_buffer3420, align 8
  %sub.ptr.lhs.cast3461 = ptrtoint i8* %1895 to i64
  %sub.ptr.rhs.cast3462 = ptrtoint i8* %1896 to i64
  %sub.ptr.sub3463 = sub i64 %sub.ptr.lhs.cast3461, %sub.ptr.rhs.cast3462
  %add.ptr3464 = getelementptr inbounds i8, i8* %1894, i64 %sub.ptr.sub3463
  store i8* %add.ptr3464, i8** %fixup_alt_jump, align 8
  br label %if.end.3465

if.end.3465:                                      ; preds = %if.then.3460, %if.then.3448
  %1897 = load i8*, i8** %laststart, align 8
  %tobool3466 = icmp ne i8* %1897, null
  br i1 %tobool3466, label %if.then.3467, label %if.end.3472

if.then.3467:                                     ; preds = %if.end.3465
  %1898 = load i8*, i8** %new_buffer3449, align 8
  %1899 = load i8*, i8** %laststart, align 8
  %1900 = load i8*, i8** %old_buffer3420, align 8
  %sub.ptr.lhs.cast3468 = ptrtoint i8* %1899 to i64
  %sub.ptr.rhs.cast3469 = ptrtoint i8* %1900 to i64
  %sub.ptr.sub3470 = sub i64 %sub.ptr.lhs.cast3468, %sub.ptr.rhs.cast3469
  %add.ptr3471 = getelementptr inbounds i8, i8* %1898, i64 %sub.ptr.sub3470
  store i8* %add.ptr3471, i8** %laststart, align 8
  br label %if.end.3472

if.end.3472:                                      ; preds = %if.then.3467, %if.end.3465
  %1901 = load i8*, i8** %pending_exact, align 8
  %tobool3473 = icmp ne i8* %1901, null
  br i1 %tobool3473, label %if.then.3474, label %if.end.3479

if.then.3474:                                     ; preds = %if.end.3472
  %1902 = load i8*, i8** %new_buffer3449, align 8
  %1903 = load i8*, i8** %pending_exact, align 8
  %1904 = load i8*, i8** %old_buffer3420, align 8
  %sub.ptr.lhs.cast3475 = ptrtoint i8* %1903 to i64
  %sub.ptr.rhs.cast3476 = ptrtoint i8* %1904 to i64
  %sub.ptr.sub3477 = sub i64 %sub.ptr.lhs.cast3475, %sub.ptr.rhs.cast3476
  %add.ptr3478 = getelementptr inbounds i8, i8* %1902, i64 %sub.ptr.sub3477
  store i8* %add.ptr3478, i8** %pending_exact, align 8
  br label %if.end.3479

if.end.3479:                                      ; preds = %if.then.3474, %if.end.3472
  br label %if.end.3480

if.end.3480:                                      ; preds = %if.end.3479, %if.end.3444
  br label %do.end.3481

do.end.3481:                                      ; preds = %if.end.3480
  br label %while.cond.3409

while.end.3482:                                   ; preds = %while.cond.3409
  %1905 = load i8*, i8** %b, align 8
  %incdec.ptr3483 = getelementptr inbounds i8, i8* %1905, i32 1
  store i8* %incdec.ptr3483, i8** %b, align 8
  store i8 25, i8* %1905, align 1
  br label %do.end.3484

do.end.3484:                                      ; preds = %while.end.3482
  br label %sw.epilog.3763

sw.bb.3485:                                       ; preds = %do.end.1752
  %1906 = load i64, i64* %syntax.addr, align 8
  %and3486 = and i64 %1906, 524288
  %tobool3487 = icmp ne i64 %and3486, 0
  br i1 %tobool3487, label %if.then.3488, label %if.end.3489

if.then.3488:                                     ; preds = %sw.bb.3485
  br label %normal_char

if.end.3489:                                      ; preds = %sw.bb.3485
  br label %do.body.3490

do.body.3490:                                     ; preds = %if.end.3489
  br label %while.cond.3491

while.cond.3491:                                  ; preds = %do.end.3563, %do.body.3490
  %1907 = load i8*, i8** %b, align 8
  %1908 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3492 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1908, i32 0, i32 0
  %1909 = load i8*, i8** %buffer3492, align 8
  %sub.ptr.lhs.cast3493 = ptrtoint i8* %1907 to i64
  %sub.ptr.rhs.cast3494 = ptrtoint i8* %1909 to i64
  %sub.ptr.sub3495 = sub i64 %sub.ptr.lhs.cast3493, %sub.ptr.rhs.cast3494
  %add3496 = add nsw i64 %sub.ptr.sub3495, 1
  %1910 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3497 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1910, i32 0, i32 1
  %1911 = load i64, i64* %allocated3497, align 8
  %cmp3498 = icmp ugt i64 %add3496, %1911
  br i1 %cmp3498, label %while.body.3500, label %while.end.3564

while.body.3500:                                  ; preds = %while.cond.3491
  br label %do.body.3501

do.body.3501:                                     ; preds = %while.body.3500
  %1912 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3503 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1912, i32 0, i32 0
  %1913 = load i8*, i8** %buffer3503, align 8
  store i8* %1913, i8** %old_buffer3502, align 8
  %1914 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3504 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1914, i32 0, i32 1
  %1915 = load i64, i64* %allocated3504, align 8
  %cmp3505 = icmp eq i64 %1915, 32768
  br i1 %cmp3505, label %if.then.3507, label %if.end.3508

if.then.3507:                                     ; preds = %do.body.3501
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3508:                                      ; preds = %do.body.3501
  %1916 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3509 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1916, i32 0, i32 1
  %1917 = load i64, i64* %allocated3509, align 8
  %shl3510 = shl i64 %1917, 1
  store i64 %shl3510, i64* %allocated3509, align 8
  %1918 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3511 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1918, i32 0, i32 1
  %1919 = load i64, i64* %allocated3511, align 8
  %cmp3512 = icmp ugt i64 %1919, 32768
  br i1 %cmp3512, label %if.then.3514, label %if.end.3516

if.then.3514:                                     ; preds = %if.end.3508
  %1920 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3515 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1920, i32 0, i32 1
  store i64 32768, i64* %allocated3515, align 8
  br label %if.end.3516

if.end.3516:                                      ; preds = %if.then.3514, %if.end.3508
  %1921 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3517 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1921, i32 0, i32 0
  %1922 = load i8*, i8** %buffer3517, align 8
  %1923 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3518 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1923, i32 0, i32 1
  %1924 = load i64, i64* %allocated3518, align 8
  %mul3519 = mul i64 %1924, 1
  %call3520 = call i8* @xrealloc(i8* %1922, i64 %mul3519)
  %1925 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3521 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1925, i32 0, i32 0
  store i8* %call3520, i8** %buffer3521, align 8
  %1926 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3522 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1926, i32 0, i32 0
  %1927 = load i8*, i8** %buffer3522, align 8
  %cmp3523 = icmp eq i8* %1927, null
  br i1 %cmp3523, label %if.then.3525, label %if.end.3526

if.then.3525:                                     ; preds = %if.end.3516
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3526:                                      ; preds = %if.end.3516
  %1928 = load i8*, i8** %old_buffer3502, align 8
  %1929 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3527 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1929, i32 0, i32 0
  %1930 = load i8*, i8** %buffer3527, align 8
  %cmp3528 = icmp ne i8* %1928, %1930
  br i1 %cmp3528, label %if.then.3530, label %if.end.3562

if.then.3530:                                     ; preds = %if.end.3526
  %1931 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3532 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1931, i32 0, i32 0
  %1932 = load i8*, i8** %buffer3532, align 8
  store i8* %1932, i8** %new_buffer3531, align 8
  %1933 = load i8*, i8** %new_buffer3531, align 8
  %1934 = load i8*, i8** %b, align 8
  %1935 = load i8*, i8** %old_buffer3502, align 8
  %sub.ptr.lhs.cast3533 = ptrtoint i8* %1934 to i64
  %sub.ptr.rhs.cast3534 = ptrtoint i8* %1935 to i64
  %sub.ptr.sub3535 = sub i64 %sub.ptr.lhs.cast3533, %sub.ptr.rhs.cast3534
  %add.ptr3536 = getelementptr inbounds i8, i8* %1933, i64 %sub.ptr.sub3535
  store i8* %add.ptr3536, i8** %b, align 8
  %1936 = load i8*, i8** %new_buffer3531, align 8
  %1937 = load i8*, i8** %begalt, align 8
  %1938 = load i8*, i8** %old_buffer3502, align 8
  %sub.ptr.lhs.cast3537 = ptrtoint i8* %1937 to i64
  %sub.ptr.rhs.cast3538 = ptrtoint i8* %1938 to i64
  %sub.ptr.sub3539 = sub i64 %sub.ptr.lhs.cast3537, %sub.ptr.rhs.cast3538
  %add.ptr3540 = getelementptr inbounds i8, i8* %1936, i64 %sub.ptr.sub3539
  store i8* %add.ptr3540, i8** %begalt, align 8
  %1939 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3541 = icmp ne i8* %1939, null
  br i1 %tobool3541, label %if.then.3542, label %if.end.3547

if.then.3542:                                     ; preds = %if.then.3530
  %1940 = load i8*, i8** %new_buffer3531, align 8
  %1941 = load i8*, i8** %fixup_alt_jump, align 8
  %1942 = load i8*, i8** %old_buffer3502, align 8
  %sub.ptr.lhs.cast3543 = ptrtoint i8* %1941 to i64
  %sub.ptr.rhs.cast3544 = ptrtoint i8* %1942 to i64
  %sub.ptr.sub3545 = sub i64 %sub.ptr.lhs.cast3543, %sub.ptr.rhs.cast3544
  %add.ptr3546 = getelementptr inbounds i8, i8* %1940, i64 %sub.ptr.sub3545
  store i8* %add.ptr3546, i8** %fixup_alt_jump, align 8
  br label %if.end.3547

if.end.3547:                                      ; preds = %if.then.3542, %if.then.3530
  %1943 = load i8*, i8** %laststart, align 8
  %tobool3548 = icmp ne i8* %1943, null
  br i1 %tobool3548, label %if.then.3549, label %if.end.3554

if.then.3549:                                     ; preds = %if.end.3547
  %1944 = load i8*, i8** %new_buffer3531, align 8
  %1945 = load i8*, i8** %laststart, align 8
  %1946 = load i8*, i8** %old_buffer3502, align 8
  %sub.ptr.lhs.cast3550 = ptrtoint i8* %1945 to i64
  %sub.ptr.rhs.cast3551 = ptrtoint i8* %1946 to i64
  %sub.ptr.sub3552 = sub i64 %sub.ptr.lhs.cast3550, %sub.ptr.rhs.cast3551
  %add.ptr3553 = getelementptr inbounds i8, i8* %1944, i64 %sub.ptr.sub3552
  store i8* %add.ptr3553, i8** %laststart, align 8
  br label %if.end.3554

if.end.3554:                                      ; preds = %if.then.3549, %if.end.3547
  %1947 = load i8*, i8** %pending_exact, align 8
  %tobool3555 = icmp ne i8* %1947, null
  br i1 %tobool3555, label %if.then.3556, label %if.end.3561

if.then.3556:                                     ; preds = %if.end.3554
  %1948 = load i8*, i8** %new_buffer3531, align 8
  %1949 = load i8*, i8** %pending_exact, align 8
  %1950 = load i8*, i8** %old_buffer3502, align 8
  %sub.ptr.lhs.cast3557 = ptrtoint i8* %1949 to i64
  %sub.ptr.rhs.cast3558 = ptrtoint i8* %1950 to i64
  %sub.ptr.sub3559 = sub i64 %sub.ptr.lhs.cast3557, %sub.ptr.rhs.cast3558
  %add.ptr3560 = getelementptr inbounds i8, i8* %1948, i64 %sub.ptr.sub3559
  store i8* %add.ptr3560, i8** %pending_exact, align 8
  br label %if.end.3561

if.end.3561:                                      ; preds = %if.then.3556, %if.end.3554
  br label %if.end.3562

if.end.3562:                                      ; preds = %if.end.3561, %if.end.3526
  br label %do.end.3563

do.end.3563:                                      ; preds = %if.end.3562
  br label %while.cond.3491

while.end.3564:                                   ; preds = %while.cond.3491
  %1951 = load i8*, i8** %b, align 8
  %incdec.ptr3565 = getelementptr inbounds i8, i8* %1951, i32 1
  store i8* %incdec.ptr3565, i8** %b, align 8
  store i8 11, i8* %1951, align 1
  br label %do.end.3566

do.end.3566:                                      ; preds = %while.end.3564
  br label %sw.epilog.3763

sw.bb.3567:                                       ; preds = %do.end.1752
  %1952 = load i64, i64* %syntax.addr, align 8
  %and3568 = and i64 %1952, 524288
  %tobool3569 = icmp ne i64 %and3568, 0
  br i1 %tobool3569, label %if.then.3570, label %if.end.3571

if.then.3570:                                     ; preds = %sw.bb.3567
  br label %normal_char

if.end.3571:                                      ; preds = %sw.bb.3567
  br label %do.body.3572

do.body.3572:                                     ; preds = %if.end.3571
  br label %while.cond.3573

while.cond.3573:                                  ; preds = %do.end.3645, %do.body.3572
  %1953 = load i8*, i8** %b, align 8
  %1954 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3574 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1954, i32 0, i32 0
  %1955 = load i8*, i8** %buffer3574, align 8
  %sub.ptr.lhs.cast3575 = ptrtoint i8* %1953 to i64
  %sub.ptr.rhs.cast3576 = ptrtoint i8* %1955 to i64
  %sub.ptr.sub3577 = sub i64 %sub.ptr.lhs.cast3575, %sub.ptr.rhs.cast3576
  %add3578 = add nsw i64 %sub.ptr.sub3577, 1
  %1956 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3579 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1956, i32 0, i32 1
  %1957 = load i64, i64* %allocated3579, align 8
  %cmp3580 = icmp ugt i64 %add3578, %1957
  br i1 %cmp3580, label %while.body.3582, label %while.end.3646

while.body.3582:                                  ; preds = %while.cond.3573
  br label %do.body.3583

do.body.3583:                                     ; preds = %while.body.3582
  %1958 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3585 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1958, i32 0, i32 0
  %1959 = load i8*, i8** %buffer3585, align 8
  store i8* %1959, i8** %old_buffer3584, align 8
  %1960 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3586 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1960, i32 0, i32 1
  %1961 = load i64, i64* %allocated3586, align 8
  %cmp3587 = icmp eq i64 %1961, 32768
  br i1 %cmp3587, label %if.then.3589, label %if.end.3590

if.then.3589:                                     ; preds = %do.body.3583
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3590:                                      ; preds = %do.body.3583
  %1962 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3591 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1962, i32 0, i32 1
  %1963 = load i64, i64* %allocated3591, align 8
  %shl3592 = shl i64 %1963, 1
  store i64 %shl3592, i64* %allocated3591, align 8
  %1964 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3593 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1964, i32 0, i32 1
  %1965 = load i64, i64* %allocated3593, align 8
  %cmp3594 = icmp ugt i64 %1965, 32768
  br i1 %cmp3594, label %if.then.3596, label %if.end.3598

if.then.3596:                                     ; preds = %if.end.3590
  %1966 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3597 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1966, i32 0, i32 1
  store i64 32768, i64* %allocated3597, align 8
  br label %if.end.3598

if.end.3598:                                      ; preds = %if.then.3596, %if.end.3590
  %1967 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3599 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1967, i32 0, i32 0
  %1968 = load i8*, i8** %buffer3599, align 8
  %1969 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3600 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1969, i32 0, i32 1
  %1970 = load i64, i64* %allocated3600, align 8
  %mul3601 = mul i64 %1970, 1
  %call3602 = call i8* @xrealloc(i8* %1968, i64 %mul3601)
  %1971 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3603 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1971, i32 0, i32 0
  store i8* %call3602, i8** %buffer3603, align 8
  %1972 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3604 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1972, i32 0, i32 0
  %1973 = load i8*, i8** %buffer3604, align 8
  %cmp3605 = icmp eq i8* %1973, null
  br i1 %cmp3605, label %if.then.3607, label %if.end.3608

if.then.3607:                                     ; preds = %if.end.3598
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3608:                                      ; preds = %if.end.3598
  %1974 = load i8*, i8** %old_buffer3584, align 8
  %1975 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3609 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1975, i32 0, i32 0
  %1976 = load i8*, i8** %buffer3609, align 8
  %cmp3610 = icmp ne i8* %1974, %1976
  br i1 %cmp3610, label %if.then.3612, label %if.end.3644

if.then.3612:                                     ; preds = %if.end.3608
  %1977 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3614 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1977, i32 0, i32 0
  %1978 = load i8*, i8** %buffer3614, align 8
  store i8* %1978, i8** %new_buffer3613, align 8
  %1979 = load i8*, i8** %new_buffer3613, align 8
  %1980 = load i8*, i8** %b, align 8
  %1981 = load i8*, i8** %old_buffer3584, align 8
  %sub.ptr.lhs.cast3615 = ptrtoint i8* %1980 to i64
  %sub.ptr.rhs.cast3616 = ptrtoint i8* %1981 to i64
  %sub.ptr.sub3617 = sub i64 %sub.ptr.lhs.cast3615, %sub.ptr.rhs.cast3616
  %add.ptr3618 = getelementptr inbounds i8, i8* %1979, i64 %sub.ptr.sub3617
  store i8* %add.ptr3618, i8** %b, align 8
  %1982 = load i8*, i8** %new_buffer3613, align 8
  %1983 = load i8*, i8** %begalt, align 8
  %1984 = load i8*, i8** %old_buffer3584, align 8
  %sub.ptr.lhs.cast3619 = ptrtoint i8* %1983 to i64
  %sub.ptr.rhs.cast3620 = ptrtoint i8* %1984 to i64
  %sub.ptr.sub3621 = sub i64 %sub.ptr.lhs.cast3619, %sub.ptr.rhs.cast3620
  %add.ptr3622 = getelementptr inbounds i8, i8* %1982, i64 %sub.ptr.sub3621
  store i8* %add.ptr3622, i8** %begalt, align 8
  %1985 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3623 = icmp ne i8* %1985, null
  br i1 %tobool3623, label %if.then.3624, label %if.end.3629

if.then.3624:                                     ; preds = %if.then.3612
  %1986 = load i8*, i8** %new_buffer3613, align 8
  %1987 = load i8*, i8** %fixup_alt_jump, align 8
  %1988 = load i8*, i8** %old_buffer3584, align 8
  %sub.ptr.lhs.cast3625 = ptrtoint i8* %1987 to i64
  %sub.ptr.rhs.cast3626 = ptrtoint i8* %1988 to i64
  %sub.ptr.sub3627 = sub i64 %sub.ptr.lhs.cast3625, %sub.ptr.rhs.cast3626
  %add.ptr3628 = getelementptr inbounds i8, i8* %1986, i64 %sub.ptr.sub3627
  store i8* %add.ptr3628, i8** %fixup_alt_jump, align 8
  br label %if.end.3629

if.end.3629:                                      ; preds = %if.then.3624, %if.then.3612
  %1989 = load i8*, i8** %laststart, align 8
  %tobool3630 = icmp ne i8* %1989, null
  br i1 %tobool3630, label %if.then.3631, label %if.end.3636

if.then.3631:                                     ; preds = %if.end.3629
  %1990 = load i8*, i8** %new_buffer3613, align 8
  %1991 = load i8*, i8** %laststart, align 8
  %1992 = load i8*, i8** %old_buffer3584, align 8
  %sub.ptr.lhs.cast3632 = ptrtoint i8* %1991 to i64
  %sub.ptr.rhs.cast3633 = ptrtoint i8* %1992 to i64
  %sub.ptr.sub3634 = sub i64 %sub.ptr.lhs.cast3632, %sub.ptr.rhs.cast3633
  %add.ptr3635 = getelementptr inbounds i8, i8* %1990, i64 %sub.ptr.sub3634
  store i8* %add.ptr3635, i8** %laststart, align 8
  br label %if.end.3636

if.end.3636:                                      ; preds = %if.then.3631, %if.end.3629
  %1993 = load i8*, i8** %pending_exact, align 8
  %tobool3637 = icmp ne i8* %1993, null
  br i1 %tobool3637, label %if.then.3638, label %if.end.3643

if.then.3638:                                     ; preds = %if.end.3636
  %1994 = load i8*, i8** %new_buffer3613, align 8
  %1995 = load i8*, i8** %pending_exact, align 8
  %1996 = load i8*, i8** %old_buffer3584, align 8
  %sub.ptr.lhs.cast3639 = ptrtoint i8* %1995 to i64
  %sub.ptr.rhs.cast3640 = ptrtoint i8* %1996 to i64
  %sub.ptr.sub3641 = sub i64 %sub.ptr.lhs.cast3639, %sub.ptr.rhs.cast3640
  %add.ptr3642 = getelementptr inbounds i8, i8* %1994, i64 %sub.ptr.sub3641
  store i8* %add.ptr3642, i8** %pending_exact, align 8
  br label %if.end.3643

if.end.3643:                                      ; preds = %if.then.3638, %if.end.3636
  br label %if.end.3644

if.end.3644:                                      ; preds = %if.end.3643, %if.end.3608
  br label %do.end.3645

do.end.3645:                                      ; preds = %if.end.3644
  br label %while.cond.3573

while.end.3646:                                   ; preds = %while.cond.3573
  %1997 = load i8*, i8** %b, align 8
  %incdec.ptr3647 = getelementptr inbounds i8, i8* %1997, i32 1
  store i8* %incdec.ptr3647, i8** %b, align 8
  store i8 12, i8* %1997, align 1
  br label %do.end.3648

do.end.3648:                                      ; preds = %while.end.3646
  br label %sw.epilog.3763

sw.bb.3649:                                       ; preds = %do.end.1752, %do.end.1752, %do.end.1752, %do.end.1752, %do.end.1752, %do.end.1752, %do.end.1752, %do.end.1752, %do.end.1752
  %1998 = load i64, i64* %syntax.addr, align 8
  %and3650 = and i64 %1998, 16384
  %tobool3651 = icmp ne i64 %and3650, 0
  br i1 %tobool3651, label %if.then.3652, label %if.end.3653

if.then.3652:                                     ; preds = %sw.bb.3649
  br label %normal_backslash

if.end.3653:                                      ; preds = %sw.bb.3649
  %1999 = load i32, i32* %c, align 4
  %sub3654 = sub nsw i32 %1999, 48
  store i32 %sub3654, i32* %reg, align 4
  %2000 = load i32, i32* %reg, align 4
  %conv3655 = sext i32 %2000 to i64
  %2001 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub3656 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2001, i32 0, i32 6
  %2002 = load i64, i64* %re_nsub3656, align 8
  %cmp3657 = icmp ugt i64 %conv3655, %2002
  br i1 %cmp3657, label %if.then.3666, label %lor.lhs.false.3659

lor.lhs.false.3659:                               ; preds = %if.end.3653
  %2003 = load i32, i32* %reg, align 4
  %cmp3660 = icmp slt i32 %2003, 1
  br i1 %cmp3660, label %if.then.3666, label %lor.lhs.false.3662

lor.lhs.false.3662:                               ; preds = %lor.lhs.false.3659
  %2004 = load i32, i32* %reg, align 4
  %call3663 = call signext i8 @group_in_compile_stack(%struct.compile_stack_type* byval align 8 %compile_stack, i32 %2004)
  %conv3664 = sext i8 %call3663 to i32
  %tobool3665 = icmp ne i32 %conv3664, 0
  br i1 %tobool3665, label %if.then.3666, label %if.end.3677

if.then.3666:                                     ; preds = %lor.lhs.false.3662, %lor.lhs.false.3659, %if.end.3653
  br label %do.body.3667

do.body.3667:                                     ; preds = %if.then.3666
  br label %do.body.3668

do.body.3668:                                     ; preds = %do.body.3667
  %table3669 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %2005 = load i32*, i32** %table3669, align 8
  %tobool3670 = icmp ne i32* %2005, null
  br i1 %tobool3670, label %if.then.3671, label %if.end.3673

if.then.3671:                                     ; preds = %do.body.3668
  %table3672 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %2006 = load i32*, i32** %table3672, align 8
  %2007 = bitcast i32* %2006 to i8*
  call void @free(i8* %2007) #4
  br label %if.end.3673

if.end.3673:                                      ; preds = %if.then.3671, %do.body.3668
  br label %do.end.3674

do.end.3674:                                      ; preds = %if.end.3673
  %stack3675 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %2008 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack3675, align 8
  %2009 = bitcast %struct.compile_stack_elt_t* %2008 to i8*
  call void @free(i8* %2009) #4
  store i32 6, i32* %retval
  br label %do.end.4144

do.end.3676:                                      ; No predecessors!
  br label %if.end.3677

if.end.3677:                                      ; preds = %do.end.3676, %lor.lhs.false.3662
  %2010 = load i8*, i8** %b, align 8
  store i8* %2010, i8** %laststart, align 8
  br label %do.body.3678

do.body.3678:                                     ; preds = %if.end.3677
  br label %while.cond.3679

while.cond.3679:                                  ; preds = %do.end.3751, %do.body.3678
  %2011 = load i8*, i8** %b, align 8
  %2012 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3680 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2012, i32 0, i32 0
  %2013 = load i8*, i8** %buffer3680, align 8
  %sub.ptr.lhs.cast3681 = ptrtoint i8* %2011 to i64
  %sub.ptr.rhs.cast3682 = ptrtoint i8* %2013 to i64
  %sub.ptr.sub3683 = sub i64 %sub.ptr.lhs.cast3681, %sub.ptr.rhs.cast3682
  %add3684 = add nsw i64 %sub.ptr.sub3683, 2
  %2014 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3685 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2014, i32 0, i32 1
  %2015 = load i64, i64* %allocated3685, align 8
  %cmp3686 = icmp ugt i64 %add3684, %2015
  br i1 %cmp3686, label %while.body.3688, label %while.end.3752

while.body.3688:                                  ; preds = %while.cond.3679
  br label %do.body.3689

do.body.3689:                                     ; preds = %while.body.3688
  %2016 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3691 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2016, i32 0, i32 0
  %2017 = load i8*, i8** %buffer3691, align 8
  store i8* %2017, i8** %old_buffer3690, align 8
  %2018 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3692 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2018, i32 0, i32 1
  %2019 = load i64, i64* %allocated3692, align 8
  %cmp3693 = icmp eq i64 %2019, 32768
  br i1 %cmp3693, label %if.then.3695, label %if.end.3696

if.then.3695:                                     ; preds = %do.body.3689
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3696:                                      ; preds = %do.body.3689
  %2020 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3697 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2020, i32 0, i32 1
  %2021 = load i64, i64* %allocated3697, align 8
  %shl3698 = shl i64 %2021, 1
  store i64 %shl3698, i64* %allocated3697, align 8
  %2022 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3699 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2022, i32 0, i32 1
  %2023 = load i64, i64* %allocated3699, align 8
  %cmp3700 = icmp ugt i64 %2023, 32768
  br i1 %cmp3700, label %if.then.3702, label %if.end.3704

if.then.3702:                                     ; preds = %if.end.3696
  %2024 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3703 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2024, i32 0, i32 1
  store i64 32768, i64* %allocated3703, align 8
  br label %if.end.3704

if.end.3704:                                      ; preds = %if.then.3702, %if.end.3696
  %2025 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3705 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2025, i32 0, i32 0
  %2026 = load i8*, i8** %buffer3705, align 8
  %2027 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3706 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2027, i32 0, i32 1
  %2028 = load i64, i64* %allocated3706, align 8
  %mul3707 = mul i64 %2028, 1
  %call3708 = call i8* @xrealloc(i8* %2026, i64 %mul3707)
  %2029 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3709 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2029, i32 0, i32 0
  store i8* %call3708, i8** %buffer3709, align 8
  %2030 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3710 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2030, i32 0, i32 0
  %2031 = load i8*, i8** %buffer3710, align 8
  %cmp3711 = icmp eq i8* %2031, null
  br i1 %cmp3711, label %if.then.3713, label %if.end.3714

if.then.3713:                                     ; preds = %if.end.3704
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3714:                                      ; preds = %if.end.3704
  %2032 = load i8*, i8** %old_buffer3690, align 8
  %2033 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3715 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2033, i32 0, i32 0
  %2034 = load i8*, i8** %buffer3715, align 8
  %cmp3716 = icmp ne i8* %2032, %2034
  br i1 %cmp3716, label %if.then.3718, label %if.end.3750

if.then.3718:                                     ; preds = %if.end.3714
  %2035 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3720 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2035, i32 0, i32 0
  %2036 = load i8*, i8** %buffer3720, align 8
  store i8* %2036, i8** %new_buffer3719, align 8
  %2037 = load i8*, i8** %new_buffer3719, align 8
  %2038 = load i8*, i8** %b, align 8
  %2039 = load i8*, i8** %old_buffer3690, align 8
  %sub.ptr.lhs.cast3721 = ptrtoint i8* %2038 to i64
  %sub.ptr.rhs.cast3722 = ptrtoint i8* %2039 to i64
  %sub.ptr.sub3723 = sub i64 %sub.ptr.lhs.cast3721, %sub.ptr.rhs.cast3722
  %add.ptr3724 = getelementptr inbounds i8, i8* %2037, i64 %sub.ptr.sub3723
  store i8* %add.ptr3724, i8** %b, align 8
  %2040 = load i8*, i8** %new_buffer3719, align 8
  %2041 = load i8*, i8** %begalt, align 8
  %2042 = load i8*, i8** %old_buffer3690, align 8
  %sub.ptr.lhs.cast3725 = ptrtoint i8* %2041 to i64
  %sub.ptr.rhs.cast3726 = ptrtoint i8* %2042 to i64
  %sub.ptr.sub3727 = sub i64 %sub.ptr.lhs.cast3725, %sub.ptr.rhs.cast3726
  %add.ptr3728 = getelementptr inbounds i8, i8* %2040, i64 %sub.ptr.sub3727
  store i8* %add.ptr3728, i8** %begalt, align 8
  %2043 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3729 = icmp ne i8* %2043, null
  br i1 %tobool3729, label %if.then.3730, label %if.end.3735

if.then.3730:                                     ; preds = %if.then.3718
  %2044 = load i8*, i8** %new_buffer3719, align 8
  %2045 = load i8*, i8** %fixup_alt_jump, align 8
  %2046 = load i8*, i8** %old_buffer3690, align 8
  %sub.ptr.lhs.cast3731 = ptrtoint i8* %2045 to i64
  %sub.ptr.rhs.cast3732 = ptrtoint i8* %2046 to i64
  %sub.ptr.sub3733 = sub i64 %sub.ptr.lhs.cast3731, %sub.ptr.rhs.cast3732
  %add.ptr3734 = getelementptr inbounds i8, i8* %2044, i64 %sub.ptr.sub3733
  store i8* %add.ptr3734, i8** %fixup_alt_jump, align 8
  br label %if.end.3735

if.end.3735:                                      ; preds = %if.then.3730, %if.then.3718
  %2047 = load i8*, i8** %laststart, align 8
  %tobool3736 = icmp ne i8* %2047, null
  br i1 %tobool3736, label %if.then.3737, label %if.end.3742

if.then.3737:                                     ; preds = %if.end.3735
  %2048 = load i8*, i8** %new_buffer3719, align 8
  %2049 = load i8*, i8** %laststart, align 8
  %2050 = load i8*, i8** %old_buffer3690, align 8
  %sub.ptr.lhs.cast3738 = ptrtoint i8* %2049 to i64
  %sub.ptr.rhs.cast3739 = ptrtoint i8* %2050 to i64
  %sub.ptr.sub3740 = sub i64 %sub.ptr.lhs.cast3738, %sub.ptr.rhs.cast3739
  %add.ptr3741 = getelementptr inbounds i8, i8* %2048, i64 %sub.ptr.sub3740
  store i8* %add.ptr3741, i8** %laststart, align 8
  br label %if.end.3742

if.end.3742:                                      ; preds = %if.then.3737, %if.end.3735
  %2051 = load i8*, i8** %pending_exact, align 8
  %tobool3743 = icmp ne i8* %2051, null
  br i1 %tobool3743, label %if.then.3744, label %if.end.3749

if.then.3744:                                     ; preds = %if.end.3742
  %2052 = load i8*, i8** %new_buffer3719, align 8
  %2053 = load i8*, i8** %pending_exact, align 8
  %2054 = load i8*, i8** %old_buffer3690, align 8
  %sub.ptr.lhs.cast3745 = ptrtoint i8* %2053 to i64
  %sub.ptr.rhs.cast3746 = ptrtoint i8* %2054 to i64
  %sub.ptr.sub3747 = sub i64 %sub.ptr.lhs.cast3745, %sub.ptr.rhs.cast3746
  %add.ptr3748 = getelementptr inbounds i8, i8* %2052, i64 %sub.ptr.sub3747
  store i8* %add.ptr3748, i8** %pending_exact, align 8
  br label %if.end.3749

if.end.3749:                                      ; preds = %if.then.3744, %if.end.3742
  br label %if.end.3750

if.end.3750:                                      ; preds = %if.end.3749, %if.end.3714
  br label %do.end.3751

do.end.3751:                                      ; preds = %if.end.3750
  br label %while.cond.3679

while.end.3752:                                   ; preds = %while.cond.3679
  %2055 = load i8*, i8** %b, align 8
  %incdec.ptr3753 = getelementptr inbounds i8, i8* %2055, i32 1
  store i8* %incdec.ptr3753, i8** %b, align 8
  store i8 8, i8* %2055, align 1
  %2056 = load i32, i32* %reg, align 4
  %conv3754 = trunc i32 %2056 to i8
  %2057 = load i8*, i8** %b, align 8
  %incdec.ptr3755 = getelementptr inbounds i8, i8* %2057, i32 1
  store i8* %incdec.ptr3755, i8** %b, align 8
  store i8 %conv3754, i8* %2057, align 1
  br label %do.end.3756

do.end.3756:                                      ; preds = %while.end.3752
  br label %sw.epilog.3763

sw.bb.3757:                                       ; preds = %do.end.1752, %do.end.1752
  %2058 = load i64, i64* %syntax.addr, align 8
  %and3758 = and i64 %2058, 2
  %tobool3759 = icmp ne i64 %and3758, 0
  br i1 %tobool3759, label %if.then.3760, label %if.else.3761

if.then.3760:                                     ; preds = %sw.bb.3757
  br label %handle_plus

if.else.3761:                                     ; preds = %sw.bb.3757
  br label %normal_backslash

sw.default.3762:                                  ; preds = %do.end.1752
  br label %normal_backslash

normal_backslash:                                 ; preds = %sw.default.3762, %if.else.3761, %if.then.3652, %if.then.2800, %if.then.2368, %if.then.2190, %if.then.2019, %if.then.2011, %if.then.1756
  br label %normal_char

sw.epilog.3763:                                   ; preds = %do.end.3756, %do.end.3648, %do.end.3566, %do.end.3484, %do.end.3402, %if.end.3320, %do.end.3131, %do.end.3049, %do.end.2967, %do.end.2884, %if.end.2797, %while.end.2360, %if.end.2183, %if.end.2005
  br label %sw.epilog.4023

sw.default.3764:                                  ; preds = %do.end.47
  br label %normal_char

normal_char:                                      ; preds = %sw.default.3764, %normal_backslash, %if.then.3570, %if.then.3488, %if.then.3406, %if.then.3324, %if.then.3135, %if.then.3053, %if.then.2971, %if.then.2888, %if.then.2805, %if.else.2801, %if.then.2194, %if.then.2049, %if.else.1727, %if.else.1719, %if.else.1714, %if.else.1709, %if.else.1704, %if.then.296, %if.then.275, %if.else.267, %if.else.173, %if.then.86, %if.then.50
  %2059 = load i8*, i8** %pending_exact, align 8
  %tobool3765 = icmp ne i8* %2059, null
  br i1 %tobool3765, label %lor.lhs.false.3766, label %if.then.3847

lor.lhs.false.3766:                               ; preds = %normal_char
  %2060 = load i8*, i8** %pending_exact, align 8
  %2061 = load i8*, i8** %pending_exact, align 8
  %2062 = load i8, i8* %2061, align 1
  %conv3767 = zext i8 %2062 to i32
  %idx.ext3768 = sext i32 %conv3767 to i64
  %add.ptr3769 = getelementptr inbounds i8, i8* %2060, i64 %idx.ext3768
  %add.ptr3770 = getelementptr inbounds i8, i8* %add.ptr3769, i64 1
  %2063 = load i8*, i8** %b, align 8
  %cmp3771 = icmp ne i8* %add.ptr3770, %2063
  br i1 %cmp3771, label %if.then.3847, label %lor.lhs.false.3773

lor.lhs.false.3773:                               ; preds = %lor.lhs.false.3766
  %2064 = load i8*, i8** %pending_exact, align 8
  %2065 = load i8, i8* %2064, align 1
  %conv3774 = zext i8 %2065 to i32
  %cmp3775 = icmp sge i32 %conv3774, 255
  br i1 %cmp3775, label %if.then.3847, label %lor.lhs.false.3777

lor.lhs.false.3777:                               ; preds = %lor.lhs.false.3773
  %2066 = load i8*, i8** %p, align 8
  %2067 = load i8*, i8** %pend, align 8
  %cmp3778 = icmp ne i8* %2066, %2067
  br i1 %cmp3778, label %land.lhs.true.3780, label %lor.lhs.false.3788

land.lhs.true.3780:                               ; preds = %lor.lhs.false.3777
  %2068 = load i8*, i8** %p, align 8
  %2069 = load i8, i8* %2068, align 1
  %conv3781 = zext i8 %2069 to i32
  %cmp3782 = icmp eq i32 %conv3781, 42
  br i1 %cmp3782, label %if.then.3847, label %lor.lhs.false.3784

lor.lhs.false.3784:                               ; preds = %land.lhs.true.3780
  %2070 = load i8*, i8** %p, align 8
  %2071 = load i8, i8* %2070, align 1
  %conv3785 = zext i8 %2071 to i32
  %cmp3786 = icmp eq i32 %conv3785, 94
  br i1 %cmp3786, label %if.then.3847, label %lor.lhs.false.3788

lor.lhs.false.3788:                               ; preds = %lor.lhs.false.3784, %lor.lhs.false.3777
  %2072 = load i64, i64* %syntax.addr, align 8
  %and3789 = and i64 %2072, 2
  %tobool3790 = icmp ne i64 %and3789, 0
  br i1 %tobool3790, label %cond.true.3791, label %cond.false.3809

cond.true.3791:                                   ; preds = %lor.lhs.false.3788
  %2073 = load i8*, i8** %p, align 8
  %add.ptr3792 = getelementptr inbounds i8, i8* %2073, i64 1
  %2074 = load i8*, i8** %pend, align 8
  %cmp3793 = icmp ult i8* %add.ptr3792, %2074
  br i1 %cmp3793, label %land.lhs.true.3795, label %lor.lhs.false.3820

land.lhs.true.3795:                               ; preds = %cond.true.3791
  %2075 = load i8*, i8** %p, align 8
  %2076 = load i8, i8* %2075, align 1
  %conv3796 = zext i8 %2076 to i32
  %cmp3797 = icmp eq i32 %conv3796, 92
  br i1 %cmp3797, label %land.lhs.true.3799, label %lor.lhs.false.3820

land.lhs.true.3799:                               ; preds = %land.lhs.true.3795
  %2077 = load i8*, i8** %p, align 8
  %arrayidx3800 = getelementptr inbounds i8, i8* %2077, i64 1
  %2078 = load i8, i8* %arrayidx3800, align 1
  %conv3801 = zext i8 %2078 to i32
  %cmp3802 = icmp eq i32 %conv3801, 43
  br i1 %cmp3802, label %if.then.3847, label %lor.lhs.false.3804

lor.lhs.false.3804:                               ; preds = %land.lhs.true.3799
  %2079 = load i8*, i8** %p, align 8
  %arrayidx3805 = getelementptr inbounds i8, i8* %2079, i64 1
  %2080 = load i8, i8* %arrayidx3805, align 1
  %conv3806 = zext i8 %2080 to i32
  %cmp3807 = icmp eq i32 %conv3806, 63
  br i1 %cmp3807, label %if.then.3847, label %lor.lhs.false.3820

cond.false.3809:                                  ; preds = %lor.lhs.false.3788
  %2081 = load i8*, i8** %p, align 8
  %2082 = load i8*, i8** %pend, align 8
  %cmp3810 = icmp ne i8* %2081, %2082
  br i1 %cmp3810, label %land.lhs.true.3812, label %lor.lhs.false.3820

land.lhs.true.3812:                               ; preds = %cond.false.3809
  %2083 = load i8*, i8** %p, align 8
  %2084 = load i8, i8* %2083, align 1
  %conv3813 = zext i8 %2084 to i32
  %cmp3814 = icmp eq i32 %conv3813, 43
  br i1 %cmp3814, label %if.then.3847, label %lor.lhs.false.3816

lor.lhs.false.3816:                               ; preds = %land.lhs.true.3812
  %2085 = load i8*, i8** %p, align 8
  %2086 = load i8, i8* %2085, align 1
  %conv3817 = zext i8 %2086 to i32
  %cmp3818 = icmp eq i32 %conv3817, 63
  br i1 %cmp3818, label %if.then.3847, label %lor.lhs.false.3820

lor.lhs.false.3820:                               ; preds = %lor.lhs.false.3816, %cond.false.3809, %lor.lhs.false.3804, %land.lhs.true.3795, %cond.true.3791
  %2087 = load i64, i64* %syntax.addr, align 8
  %and3821 = and i64 %2087, 512
  %tobool3822 = icmp ne i64 %and3821, 0
  br i1 %tobool3822, label %land.lhs.true.3823, label %if.end.3927

land.lhs.true.3823:                               ; preds = %lor.lhs.false.3820
  %2088 = load i64, i64* %syntax.addr, align 8
  %and3824 = and i64 %2088, 4096
  %tobool3825 = icmp ne i64 %and3824, 0
  br i1 %tobool3825, label %cond.true.3826, label %cond.false.3833

cond.true.3826:                                   ; preds = %land.lhs.true.3823
  %2089 = load i8*, i8** %p, align 8
  %2090 = load i8*, i8** %pend, align 8
  %cmp3827 = icmp ne i8* %2089, %2090
  br i1 %cmp3827, label %land.lhs.true.3829, label %if.end.3927

land.lhs.true.3829:                               ; preds = %cond.true.3826
  %2091 = load i8*, i8** %p, align 8
  %2092 = load i8, i8* %2091, align 1
  %conv3830 = zext i8 %2092 to i32
  %cmp3831 = icmp eq i32 %conv3830, 123
  br i1 %cmp3831, label %if.then.3847, label %if.end.3927

cond.false.3833:                                  ; preds = %land.lhs.true.3823
  %2093 = load i8*, i8** %p, align 8
  %add.ptr3834 = getelementptr inbounds i8, i8* %2093, i64 1
  %2094 = load i8*, i8** %pend, align 8
  %cmp3835 = icmp ult i8* %add.ptr3834, %2094
  br i1 %cmp3835, label %land.lhs.true.3837, label %if.end.3927

land.lhs.true.3837:                               ; preds = %cond.false.3833
  %2095 = load i8*, i8** %p, align 8
  %arrayidx3838 = getelementptr inbounds i8, i8* %2095, i64 0
  %2096 = load i8, i8* %arrayidx3838, align 1
  %conv3839 = zext i8 %2096 to i32
  %cmp3840 = icmp eq i32 %conv3839, 92
  br i1 %cmp3840, label %land.lhs.true.3842, label %if.end.3927

land.lhs.true.3842:                               ; preds = %land.lhs.true.3837
  %2097 = load i8*, i8** %p, align 8
  %arrayidx3843 = getelementptr inbounds i8, i8* %2097, i64 1
  %2098 = load i8, i8* %arrayidx3843, align 1
  %conv3844 = zext i8 %2098 to i32
  %cmp3845 = icmp eq i32 %conv3844, 123
  br i1 %cmp3845, label %if.then.3847, label %if.end.3927

if.then.3847:                                     ; preds = %land.lhs.true.3842, %land.lhs.true.3829, %lor.lhs.false.3816, %land.lhs.true.3812, %lor.lhs.false.3804, %land.lhs.true.3799, %lor.lhs.false.3784, %land.lhs.true.3780, %lor.lhs.false.3773, %lor.lhs.false.3766, %normal_char
  %2099 = load i8*, i8** %b, align 8
  store i8* %2099, i8** %laststart, align 8
  br label %do.body.3848

do.body.3848:                                     ; preds = %if.then.3847
  br label %while.cond.3849

while.cond.3849:                                  ; preds = %do.end.3921, %do.body.3848
  %2100 = load i8*, i8** %b, align 8
  %2101 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3850 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2101, i32 0, i32 0
  %2102 = load i8*, i8** %buffer3850, align 8
  %sub.ptr.lhs.cast3851 = ptrtoint i8* %2100 to i64
  %sub.ptr.rhs.cast3852 = ptrtoint i8* %2102 to i64
  %sub.ptr.sub3853 = sub i64 %sub.ptr.lhs.cast3851, %sub.ptr.rhs.cast3852
  %add3854 = add nsw i64 %sub.ptr.sub3853, 2
  %2103 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3855 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2103, i32 0, i32 1
  %2104 = load i64, i64* %allocated3855, align 8
  %cmp3856 = icmp ugt i64 %add3854, %2104
  br i1 %cmp3856, label %while.body.3858, label %while.end.3922

while.body.3858:                                  ; preds = %while.cond.3849
  br label %do.body.3859

do.body.3859:                                     ; preds = %while.body.3858
  %2105 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3861 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2105, i32 0, i32 0
  %2106 = load i8*, i8** %buffer3861, align 8
  store i8* %2106, i8** %old_buffer3860, align 8
  %2107 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3862 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2107, i32 0, i32 1
  %2108 = load i64, i64* %allocated3862, align 8
  %cmp3863 = icmp eq i64 %2108, 32768
  br i1 %cmp3863, label %if.then.3865, label %if.end.3866

if.then.3865:                                     ; preds = %do.body.3859
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3866:                                      ; preds = %do.body.3859
  %2109 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3867 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2109, i32 0, i32 1
  %2110 = load i64, i64* %allocated3867, align 8
  %shl3868 = shl i64 %2110, 1
  store i64 %shl3868, i64* %allocated3867, align 8
  %2111 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3869 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2111, i32 0, i32 1
  %2112 = load i64, i64* %allocated3869, align 8
  %cmp3870 = icmp ugt i64 %2112, 32768
  br i1 %cmp3870, label %if.then.3872, label %if.end.3874

if.then.3872:                                     ; preds = %if.end.3866
  %2113 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3873 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2113, i32 0, i32 1
  store i64 32768, i64* %allocated3873, align 8
  br label %if.end.3874

if.end.3874:                                      ; preds = %if.then.3872, %if.end.3866
  %2114 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3875 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2114, i32 0, i32 0
  %2115 = load i8*, i8** %buffer3875, align 8
  %2116 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3876 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2116, i32 0, i32 1
  %2117 = load i64, i64* %allocated3876, align 8
  %mul3877 = mul i64 %2117, 1
  %call3878 = call i8* @xrealloc(i8* %2115, i64 %mul3877)
  %2118 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3879 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2118, i32 0, i32 0
  store i8* %call3878, i8** %buffer3879, align 8
  %2119 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3880 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2119, i32 0, i32 0
  %2120 = load i8*, i8** %buffer3880, align 8
  %cmp3881 = icmp eq i8* %2120, null
  br i1 %cmp3881, label %if.then.3883, label %if.end.3884

if.then.3883:                                     ; preds = %if.end.3874
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3884:                                      ; preds = %if.end.3874
  %2121 = load i8*, i8** %old_buffer3860, align 8
  %2122 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3885 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2122, i32 0, i32 0
  %2123 = load i8*, i8** %buffer3885, align 8
  %cmp3886 = icmp ne i8* %2121, %2123
  br i1 %cmp3886, label %if.then.3888, label %if.end.3920

if.then.3888:                                     ; preds = %if.end.3884
  %2124 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3890 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2124, i32 0, i32 0
  %2125 = load i8*, i8** %buffer3890, align 8
  store i8* %2125, i8** %new_buffer3889, align 8
  %2126 = load i8*, i8** %new_buffer3889, align 8
  %2127 = load i8*, i8** %b, align 8
  %2128 = load i8*, i8** %old_buffer3860, align 8
  %sub.ptr.lhs.cast3891 = ptrtoint i8* %2127 to i64
  %sub.ptr.rhs.cast3892 = ptrtoint i8* %2128 to i64
  %sub.ptr.sub3893 = sub i64 %sub.ptr.lhs.cast3891, %sub.ptr.rhs.cast3892
  %add.ptr3894 = getelementptr inbounds i8, i8* %2126, i64 %sub.ptr.sub3893
  store i8* %add.ptr3894, i8** %b, align 8
  %2129 = load i8*, i8** %new_buffer3889, align 8
  %2130 = load i8*, i8** %begalt, align 8
  %2131 = load i8*, i8** %old_buffer3860, align 8
  %sub.ptr.lhs.cast3895 = ptrtoint i8* %2130 to i64
  %sub.ptr.rhs.cast3896 = ptrtoint i8* %2131 to i64
  %sub.ptr.sub3897 = sub i64 %sub.ptr.lhs.cast3895, %sub.ptr.rhs.cast3896
  %add.ptr3898 = getelementptr inbounds i8, i8* %2129, i64 %sub.ptr.sub3897
  store i8* %add.ptr3898, i8** %begalt, align 8
  %2132 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3899 = icmp ne i8* %2132, null
  br i1 %tobool3899, label %if.then.3900, label %if.end.3905

if.then.3900:                                     ; preds = %if.then.3888
  %2133 = load i8*, i8** %new_buffer3889, align 8
  %2134 = load i8*, i8** %fixup_alt_jump, align 8
  %2135 = load i8*, i8** %old_buffer3860, align 8
  %sub.ptr.lhs.cast3901 = ptrtoint i8* %2134 to i64
  %sub.ptr.rhs.cast3902 = ptrtoint i8* %2135 to i64
  %sub.ptr.sub3903 = sub i64 %sub.ptr.lhs.cast3901, %sub.ptr.rhs.cast3902
  %add.ptr3904 = getelementptr inbounds i8, i8* %2133, i64 %sub.ptr.sub3903
  store i8* %add.ptr3904, i8** %fixup_alt_jump, align 8
  br label %if.end.3905

if.end.3905:                                      ; preds = %if.then.3900, %if.then.3888
  %2136 = load i8*, i8** %laststart, align 8
  %tobool3906 = icmp ne i8* %2136, null
  br i1 %tobool3906, label %if.then.3907, label %if.end.3912

if.then.3907:                                     ; preds = %if.end.3905
  %2137 = load i8*, i8** %new_buffer3889, align 8
  %2138 = load i8*, i8** %laststart, align 8
  %2139 = load i8*, i8** %old_buffer3860, align 8
  %sub.ptr.lhs.cast3908 = ptrtoint i8* %2138 to i64
  %sub.ptr.rhs.cast3909 = ptrtoint i8* %2139 to i64
  %sub.ptr.sub3910 = sub i64 %sub.ptr.lhs.cast3908, %sub.ptr.rhs.cast3909
  %add.ptr3911 = getelementptr inbounds i8, i8* %2137, i64 %sub.ptr.sub3910
  store i8* %add.ptr3911, i8** %laststart, align 8
  br label %if.end.3912

if.end.3912:                                      ; preds = %if.then.3907, %if.end.3905
  %2140 = load i8*, i8** %pending_exact, align 8
  %tobool3913 = icmp ne i8* %2140, null
  br i1 %tobool3913, label %if.then.3914, label %if.end.3919

if.then.3914:                                     ; preds = %if.end.3912
  %2141 = load i8*, i8** %new_buffer3889, align 8
  %2142 = load i8*, i8** %pending_exact, align 8
  %2143 = load i8*, i8** %old_buffer3860, align 8
  %sub.ptr.lhs.cast3915 = ptrtoint i8* %2142 to i64
  %sub.ptr.rhs.cast3916 = ptrtoint i8* %2143 to i64
  %sub.ptr.sub3917 = sub i64 %sub.ptr.lhs.cast3915, %sub.ptr.rhs.cast3916
  %add.ptr3918 = getelementptr inbounds i8, i8* %2141, i64 %sub.ptr.sub3917
  store i8* %add.ptr3918, i8** %pending_exact, align 8
  br label %if.end.3919

if.end.3919:                                      ; preds = %if.then.3914, %if.end.3912
  br label %if.end.3920

if.end.3920:                                      ; preds = %if.end.3919, %if.end.3884
  br label %do.end.3921

do.end.3921:                                      ; preds = %if.end.3920
  br label %while.cond.3849

while.end.3922:                                   ; preds = %while.cond.3849
  %2144 = load i8*, i8** %b, align 8
  %incdec.ptr3923 = getelementptr inbounds i8, i8* %2144, i32 1
  store i8* %incdec.ptr3923, i8** %b, align 8
  store i8 2, i8* %2144, align 1
  %2145 = load i8*, i8** %b, align 8
  %incdec.ptr3924 = getelementptr inbounds i8, i8* %2145, i32 1
  store i8* %incdec.ptr3924, i8** %b, align 8
  store i8 0, i8* %2145, align 1
  br label %do.end.3925

do.end.3925:                                      ; preds = %while.end.3922
  %2146 = load i8*, i8** %b, align 8
  %add.ptr3926 = getelementptr inbounds i8, i8* %2146, i64 -1
  store i8* %add.ptr3926, i8** %pending_exact, align 8
  br label %if.end.3927

if.end.3927:                                      ; preds = %do.end.3925, %land.lhs.true.3842, %land.lhs.true.3837, %cond.false.3833, %land.lhs.true.3829, %cond.true.3826, %lor.lhs.false.3820
  br label %while.cond.3928

while.cond.3928:                                  ; preds = %do.end.4000, %if.end.3927
  %2147 = load i8*, i8** %b, align 8
  %2148 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3929 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2148, i32 0, i32 0
  %2149 = load i8*, i8** %buffer3929, align 8
  %sub.ptr.lhs.cast3930 = ptrtoint i8* %2147 to i64
  %sub.ptr.rhs.cast3931 = ptrtoint i8* %2149 to i64
  %sub.ptr.sub3932 = sub i64 %sub.ptr.lhs.cast3930, %sub.ptr.rhs.cast3931
  %add3933 = add nsw i64 %sub.ptr.sub3932, 1
  %2150 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3934 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2150, i32 0, i32 1
  %2151 = load i64, i64* %allocated3934, align 8
  %cmp3935 = icmp ugt i64 %add3933, %2151
  br i1 %cmp3935, label %while.body.3937, label %while.end.4001

while.body.3937:                                  ; preds = %while.cond.3928
  br label %do.body.3938

do.body.3938:                                     ; preds = %while.body.3937
  %2152 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3940 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2152, i32 0, i32 0
  %2153 = load i8*, i8** %buffer3940, align 8
  store i8* %2153, i8** %old_buffer3939, align 8
  %2154 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3941 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2154, i32 0, i32 1
  %2155 = load i64, i64* %allocated3941, align 8
  %cmp3942 = icmp eq i64 %2155, 32768
  br i1 %cmp3942, label %if.then.3944, label %if.end.3945

if.then.3944:                                     ; preds = %do.body.3938
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.3945:                                      ; preds = %do.body.3938
  %2156 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3946 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2156, i32 0, i32 1
  %2157 = load i64, i64* %allocated3946, align 8
  %shl3947 = shl i64 %2157, 1
  store i64 %shl3947, i64* %allocated3946, align 8
  %2158 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3948 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2158, i32 0, i32 1
  %2159 = load i64, i64* %allocated3948, align 8
  %cmp3949 = icmp ugt i64 %2159, 32768
  br i1 %cmp3949, label %if.then.3951, label %if.end.3953

if.then.3951:                                     ; preds = %if.end.3945
  %2160 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3952 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2160, i32 0, i32 1
  store i64 32768, i64* %allocated3952, align 8
  br label %if.end.3953

if.end.3953:                                      ; preds = %if.then.3951, %if.end.3945
  %2161 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3954 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2161, i32 0, i32 0
  %2162 = load i8*, i8** %buffer3954, align 8
  %2163 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3955 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2163, i32 0, i32 1
  %2164 = load i64, i64* %allocated3955, align 8
  %mul3956 = mul i64 %2164, 1
  %call3957 = call i8* @xrealloc(i8* %2162, i64 %mul3956)
  %2165 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3958 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2165, i32 0, i32 0
  store i8* %call3957, i8** %buffer3958, align 8
  %2166 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3959 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2166, i32 0, i32 0
  %2167 = load i8*, i8** %buffer3959, align 8
  %cmp3960 = icmp eq i8* %2167, null
  br i1 %cmp3960, label %if.then.3962, label %if.end.3963

if.then.3962:                                     ; preds = %if.end.3953
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.3963:                                      ; preds = %if.end.3953
  %2168 = load i8*, i8** %old_buffer3939, align 8
  %2169 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3964 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2169, i32 0, i32 0
  %2170 = load i8*, i8** %buffer3964, align 8
  %cmp3965 = icmp ne i8* %2168, %2170
  br i1 %cmp3965, label %if.then.3967, label %if.end.3999

if.then.3967:                                     ; preds = %if.end.3963
  %2171 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3969 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2171, i32 0, i32 0
  %2172 = load i8*, i8** %buffer3969, align 8
  store i8* %2172, i8** %new_buffer3968, align 8
  %2173 = load i8*, i8** %new_buffer3968, align 8
  %2174 = load i8*, i8** %b, align 8
  %2175 = load i8*, i8** %old_buffer3939, align 8
  %sub.ptr.lhs.cast3970 = ptrtoint i8* %2174 to i64
  %sub.ptr.rhs.cast3971 = ptrtoint i8* %2175 to i64
  %sub.ptr.sub3972 = sub i64 %sub.ptr.lhs.cast3970, %sub.ptr.rhs.cast3971
  %add.ptr3973 = getelementptr inbounds i8, i8* %2173, i64 %sub.ptr.sub3972
  store i8* %add.ptr3973, i8** %b, align 8
  %2176 = load i8*, i8** %new_buffer3968, align 8
  %2177 = load i8*, i8** %begalt, align 8
  %2178 = load i8*, i8** %old_buffer3939, align 8
  %sub.ptr.lhs.cast3974 = ptrtoint i8* %2177 to i64
  %sub.ptr.rhs.cast3975 = ptrtoint i8* %2178 to i64
  %sub.ptr.sub3976 = sub i64 %sub.ptr.lhs.cast3974, %sub.ptr.rhs.cast3975
  %add.ptr3977 = getelementptr inbounds i8, i8* %2176, i64 %sub.ptr.sub3976
  store i8* %add.ptr3977, i8** %begalt, align 8
  %2179 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3978 = icmp ne i8* %2179, null
  br i1 %tobool3978, label %if.then.3979, label %if.end.3984

if.then.3979:                                     ; preds = %if.then.3967
  %2180 = load i8*, i8** %new_buffer3968, align 8
  %2181 = load i8*, i8** %fixup_alt_jump, align 8
  %2182 = load i8*, i8** %old_buffer3939, align 8
  %sub.ptr.lhs.cast3980 = ptrtoint i8* %2181 to i64
  %sub.ptr.rhs.cast3981 = ptrtoint i8* %2182 to i64
  %sub.ptr.sub3982 = sub i64 %sub.ptr.lhs.cast3980, %sub.ptr.rhs.cast3981
  %add.ptr3983 = getelementptr inbounds i8, i8* %2180, i64 %sub.ptr.sub3982
  store i8* %add.ptr3983, i8** %fixup_alt_jump, align 8
  br label %if.end.3984

if.end.3984:                                      ; preds = %if.then.3979, %if.then.3967
  %2183 = load i8*, i8** %laststart, align 8
  %tobool3985 = icmp ne i8* %2183, null
  br i1 %tobool3985, label %if.then.3986, label %if.end.3991

if.then.3986:                                     ; preds = %if.end.3984
  %2184 = load i8*, i8** %new_buffer3968, align 8
  %2185 = load i8*, i8** %laststart, align 8
  %2186 = load i8*, i8** %old_buffer3939, align 8
  %sub.ptr.lhs.cast3987 = ptrtoint i8* %2185 to i64
  %sub.ptr.rhs.cast3988 = ptrtoint i8* %2186 to i64
  %sub.ptr.sub3989 = sub i64 %sub.ptr.lhs.cast3987, %sub.ptr.rhs.cast3988
  %add.ptr3990 = getelementptr inbounds i8, i8* %2184, i64 %sub.ptr.sub3989
  store i8* %add.ptr3990, i8** %laststart, align 8
  br label %if.end.3991

if.end.3991:                                      ; preds = %if.then.3986, %if.end.3984
  %2187 = load i8*, i8** %pending_exact, align 8
  %tobool3992 = icmp ne i8* %2187, null
  br i1 %tobool3992, label %if.then.3993, label %if.end.3998

if.then.3993:                                     ; preds = %if.end.3991
  %2188 = load i8*, i8** %new_buffer3968, align 8
  %2189 = load i8*, i8** %pending_exact, align 8
  %2190 = load i8*, i8** %old_buffer3939, align 8
  %sub.ptr.lhs.cast3994 = ptrtoint i8* %2189 to i64
  %sub.ptr.rhs.cast3995 = ptrtoint i8* %2190 to i64
  %sub.ptr.sub3996 = sub i64 %sub.ptr.lhs.cast3994, %sub.ptr.rhs.cast3995
  %add.ptr3997 = getelementptr inbounds i8, i8* %2188, i64 %sub.ptr.sub3996
  store i8* %add.ptr3997, i8** %pending_exact, align 8
  br label %if.end.3998

if.end.3998:                                      ; preds = %if.then.3993, %if.end.3991
  br label %if.end.3999

if.end.3999:                                      ; preds = %if.end.3998, %if.end.3963
  br label %do.end.4000

do.end.4000:                                      ; preds = %if.end.3999
  br label %while.cond.3928

while.end.4001:                                   ; preds = %while.cond.3928
  %2191 = load i32, i32* %c, align 4
  store i32 %2191, i32* %c1, align 4
  %2192 = load i8*, i8** %translate, align 8
  %tobool4003 = icmp ne i8* %2192, null
  br i1 %tobool4003, label %cond.true.4004, label %cond.false.4008

cond.true.4004:                                   ; preds = %while.end.4001
  %2193 = load i32, i32* %c1, align 4
  %idxprom4005 = sext i32 %2193 to i64
  %2194 = load i8*, i8** %translate, align 8
  %arrayidx4006 = getelementptr inbounds i8, i8* %2194, i64 %idxprom4005
  %2195 = load i8, i8* %arrayidx4006, align 1
  %conv4007 = zext i8 %2195 to i32
  br label %cond.end.4009

cond.false.4008:                                  ; preds = %while.end.4001
  %2196 = load i32, i32* %c1, align 4
  br label %cond.end.4009

cond.end.4009:                                    ; preds = %cond.false.4008, %cond.true.4004
  %cond4010 = phi i32 [ %conv4007, %cond.true.4004 ], [ %2196, %cond.false.4008 ]
  store i32 %cond4010, i32* %c2, align 4
  %2197 = load i32, i32* %c1, align 4
  %2198 = load i32, i32* %c2, align 4
  %cmp4011 = icmp ne i32 %2197, %2198
  br i1 %cmp4011, label %land.lhs.true.4013, label %if.end.4017

land.lhs.true.4013:                               ; preds = %cond.end.4009
  %2199 = load i32, i32* %c2, align 4
  store i32 %2199, i32* %c1, align 4
  %cmp4014 = icmp sge i32 %2199, 0
  br i1 %cmp4014, label %if.then.4016, label %if.end.4017

if.then.4016:                                     ; preds = %land.lhs.true.4013
  %2200 = load i32, i32* %c1, align 4
  store i32 %2200, i32* %c, align 4
  br label %if.end.4017

if.end.4017:                                      ; preds = %if.then.4016, %land.lhs.true.4013, %cond.end.4009
  %2201 = load i32, i32* %c, align 4
  %conv4018 = trunc i32 %2201 to i8
  %2202 = load i8*, i8** %b, align 8
  %incdec.ptr4019 = getelementptr inbounds i8, i8* %2202, i32 1
  store i8* %incdec.ptr4019, i8** %b, align 8
  store i8 %conv4018, i8* %2202, align 1
  store i32 1, i32* %len4002, align 4
  %2203 = load i32, i32* %len4002, align 4
  %2204 = load i8*, i8** %pending_exact, align 8
  %2205 = load i8, i8* %2204, align 1
  %conv4020 = zext i8 %2205 to i32
  %add4021 = add nsw i32 %conv4020, %2203
  %conv4022 = trunc i32 %add4021 to i8
  store i8 %conv4022, i8* %2204, align 1
  br label %sw.epilog.4023

sw.epilog.4023:                                   ; preds = %if.end.4017, %sw.epilog.3763, %if.end.1699, %do.end.967, %if.end.889, %if.then.405, %if.end.268, %if.end.174, %if.end.87
  br label %while.body

while.end.4024:                                   ; preds = %if.end.40
  br label %do.body.4025

do.body.4025:                                     ; preds = %while.end.4024
  %2206 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool4026 = icmp ne i8* %2206, null
  br i1 %tobool4026, label %if.then.4027, label %if.end.4033

if.then.4027:                                     ; preds = %do.body.4025
  %2207 = load i8*, i8** %fixup_alt_jump, align 8
  %2208 = load i8*, i8** %b, align 8
  %2209 = load i8*, i8** %fixup_alt_jump, align 8
  %sub.ptr.lhs.cast4028 = ptrtoint i8* %2208 to i64
  %sub.ptr.rhs.cast4029 = ptrtoint i8* %2209 to i64
  %sub.ptr.sub4030 = sub i64 %sub.ptr.lhs.cast4028, %sub.ptr.rhs.cast4029
  %sub4031 = sub nsw i64 %sub.ptr.sub4030, 3
  %conv4032 = trunc i64 %sub4031 to i32
  call void @store_op1(i32 13, i8* %2207, i32 %conv4032)
  br label %if.end.4033

if.end.4033:                                      ; preds = %if.then.4027, %do.body.4025
  br label %do.end.4034

do.end.4034:                                      ; preds = %if.end.4033
  %avail4035 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %2210 = load i64, i64* %avail4035, align 8
  %cmp4036 = icmp eq i64 %2210, 0
  br i1 %cmp4036, label %if.end.4049, label %if.then.4038

if.then.4038:                                     ; preds = %do.end.4034
  br label %do.body.4039

do.body.4039:                                     ; preds = %if.then.4038
  br label %do.body.4040

do.body.4040:                                     ; preds = %do.body.4039
  %table4041 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %2211 = load i32*, i32** %table4041, align 8
  %tobool4042 = icmp ne i32* %2211, null
  br i1 %tobool4042, label %if.then.4043, label %if.end.4045

if.then.4043:                                     ; preds = %do.body.4040
  %table4044 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %2212 = load i32*, i32** %table4044, align 8
  %2213 = bitcast i32* %2212 to i8*
  call void @free(i8* %2213) #4
  br label %if.end.4045

if.end.4045:                                      ; preds = %if.then.4043, %do.body.4040
  br label %do.end.4046

do.end.4046:                                      ; preds = %if.end.4045
  %stack4047 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %2214 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack4047, align 8
  %2215 = bitcast %struct.compile_stack_elt_t* %2214 to i8*
  call void @free(i8* %2215) #4
  store i32 8, i32* %retval
  br label %do.end.4144

do.end.4048:                                      ; No predecessors!
  br label %if.end.4049

if.end.4049:                                      ; preds = %do.end.4048, %do.end.4034
  %2216 = load i64, i64* %syntax.addr, align 8
  %and4050 = and i64 %2216, 262144
  %tobool4051 = icmp ne i64 %and4050, 0
  br i1 %tobool4051, label %if.then.4052, label %if.end.4129

if.then.4052:                                     ; preds = %if.end.4049
  br label %do.body.4053

do.body.4053:                                     ; preds = %if.then.4052
  br label %while.cond

while.cond:                                       ; preds = %do.end.4125, %do.body.4053
  %2217 = load i8*, i8** %b, align 8
  %2218 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer4054 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2218, i32 0, i32 0
  %2219 = load i8*, i8** %buffer4054, align 8
  %sub.ptr.lhs.cast4055 = ptrtoint i8* %2217 to i64
  %sub.ptr.rhs.cast4056 = ptrtoint i8* %2219 to i64
  %sub.ptr.sub4057 = sub i64 %sub.ptr.lhs.cast4055, %sub.ptr.rhs.cast4056
  %add4058 = add nsw i64 %sub.ptr.sub4057, 1
  %2220 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated4059 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2220, i32 0, i32 1
  %2221 = load i64, i64* %allocated4059, align 8
  %cmp4060 = icmp ugt i64 %add4058, %2221
  br i1 %cmp4060, label %while.body.4062, label %while.end.4126

while.body.4062:                                  ; preds = %while.cond
  br label %do.body.4063

do.body.4063:                                     ; preds = %while.body.4062
  %2222 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer4065 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2222, i32 0, i32 0
  %2223 = load i8*, i8** %buffer4065, align 8
  store i8* %2223, i8** %old_buffer4064, align 8
  %2224 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated4066 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2224, i32 0, i32 1
  %2225 = load i64, i64* %allocated4066, align 8
  %cmp4067 = icmp eq i64 %2225, 32768
  br i1 %cmp4067, label %if.then.4069, label %if.end.4070

if.then.4069:                                     ; preds = %do.body.4063
  store i32 15, i32* %retval
  br label %do.end.4144

if.end.4070:                                      ; preds = %do.body.4063
  %2226 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated4071 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2226, i32 0, i32 1
  %2227 = load i64, i64* %allocated4071, align 8
  %shl4072 = shl i64 %2227, 1
  store i64 %shl4072, i64* %allocated4071, align 8
  %2228 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated4073 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2228, i32 0, i32 1
  %2229 = load i64, i64* %allocated4073, align 8
  %cmp4074 = icmp ugt i64 %2229, 32768
  br i1 %cmp4074, label %if.then.4076, label %if.end.4078

if.then.4076:                                     ; preds = %if.end.4070
  %2230 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated4077 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2230, i32 0, i32 1
  store i64 32768, i64* %allocated4077, align 8
  br label %if.end.4078

if.end.4078:                                      ; preds = %if.then.4076, %if.end.4070
  %2231 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer4079 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2231, i32 0, i32 0
  %2232 = load i8*, i8** %buffer4079, align 8
  %2233 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated4080 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2233, i32 0, i32 1
  %2234 = load i64, i64* %allocated4080, align 8
  %mul4081 = mul i64 %2234, 1
  %call4082 = call i8* @xrealloc(i8* %2232, i64 %mul4081)
  %2235 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer4083 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2235, i32 0, i32 0
  store i8* %call4082, i8** %buffer4083, align 8
  %2236 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer4084 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2236, i32 0, i32 0
  %2237 = load i8*, i8** %buffer4084, align 8
  %cmp4085 = icmp eq i8* %2237, null
  br i1 %cmp4085, label %if.then.4087, label %if.end.4088

if.then.4087:                                     ; preds = %if.end.4078
  store i32 12, i32* %retval
  br label %do.end.4144

if.end.4088:                                      ; preds = %if.end.4078
  %2238 = load i8*, i8** %old_buffer4064, align 8
  %2239 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer4089 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2239, i32 0, i32 0
  %2240 = load i8*, i8** %buffer4089, align 8
  %cmp4090 = icmp ne i8* %2238, %2240
  br i1 %cmp4090, label %if.then.4092, label %if.end.4124

if.then.4092:                                     ; preds = %if.end.4088
  %2241 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer4094 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2241, i32 0, i32 0
  %2242 = load i8*, i8** %buffer4094, align 8
  store i8* %2242, i8** %new_buffer4093, align 8
  %2243 = load i8*, i8** %new_buffer4093, align 8
  %2244 = load i8*, i8** %b, align 8
  %2245 = load i8*, i8** %old_buffer4064, align 8
  %sub.ptr.lhs.cast4095 = ptrtoint i8* %2244 to i64
  %sub.ptr.rhs.cast4096 = ptrtoint i8* %2245 to i64
  %sub.ptr.sub4097 = sub i64 %sub.ptr.lhs.cast4095, %sub.ptr.rhs.cast4096
  %add.ptr4098 = getelementptr inbounds i8, i8* %2243, i64 %sub.ptr.sub4097
  store i8* %add.ptr4098, i8** %b, align 8
  %2246 = load i8*, i8** %new_buffer4093, align 8
  %2247 = load i8*, i8** %begalt, align 8
  %2248 = load i8*, i8** %old_buffer4064, align 8
  %sub.ptr.lhs.cast4099 = ptrtoint i8* %2247 to i64
  %sub.ptr.rhs.cast4100 = ptrtoint i8* %2248 to i64
  %sub.ptr.sub4101 = sub i64 %sub.ptr.lhs.cast4099, %sub.ptr.rhs.cast4100
  %add.ptr4102 = getelementptr inbounds i8, i8* %2246, i64 %sub.ptr.sub4101
  store i8* %add.ptr4102, i8** %begalt, align 8
  %2249 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool4103 = icmp ne i8* %2249, null
  br i1 %tobool4103, label %if.then.4104, label %if.end.4109

if.then.4104:                                     ; preds = %if.then.4092
  %2250 = load i8*, i8** %new_buffer4093, align 8
  %2251 = load i8*, i8** %fixup_alt_jump, align 8
  %2252 = load i8*, i8** %old_buffer4064, align 8
  %sub.ptr.lhs.cast4105 = ptrtoint i8* %2251 to i64
  %sub.ptr.rhs.cast4106 = ptrtoint i8* %2252 to i64
  %sub.ptr.sub4107 = sub i64 %sub.ptr.lhs.cast4105, %sub.ptr.rhs.cast4106
  %add.ptr4108 = getelementptr inbounds i8, i8* %2250, i64 %sub.ptr.sub4107
  store i8* %add.ptr4108, i8** %fixup_alt_jump, align 8
  br label %if.end.4109

if.end.4109:                                      ; preds = %if.then.4104, %if.then.4092
  %2253 = load i8*, i8** %laststart, align 8
  %tobool4110 = icmp ne i8* %2253, null
  br i1 %tobool4110, label %if.then.4111, label %if.end.4116

if.then.4111:                                     ; preds = %if.end.4109
  %2254 = load i8*, i8** %new_buffer4093, align 8
  %2255 = load i8*, i8** %laststart, align 8
  %2256 = load i8*, i8** %old_buffer4064, align 8
  %sub.ptr.lhs.cast4112 = ptrtoint i8* %2255 to i64
  %sub.ptr.rhs.cast4113 = ptrtoint i8* %2256 to i64
  %sub.ptr.sub4114 = sub i64 %sub.ptr.lhs.cast4112, %sub.ptr.rhs.cast4113
  %add.ptr4115 = getelementptr inbounds i8, i8* %2254, i64 %sub.ptr.sub4114
  store i8* %add.ptr4115, i8** %laststart, align 8
  br label %if.end.4116

if.end.4116:                                      ; preds = %if.then.4111, %if.end.4109
  %2257 = load i8*, i8** %pending_exact, align 8
  %tobool4117 = icmp ne i8* %2257, null
  br i1 %tobool4117, label %if.then.4118, label %if.end.4123

if.then.4118:                                     ; preds = %if.end.4116
  %2258 = load i8*, i8** %new_buffer4093, align 8
  %2259 = load i8*, i8** %pending_exact, align 8
  %2260 = load i8*, i8** %old_buffer4064, align 8
  %sub.ptr.lhs.cast4119 = ptrtoint i8* %2259 to i64
  %sub.ptr.rhs.cast4120 = ptrtoint i8* %2260 to i64
  %sub.ptr.sub4121 = sub i64 %sub.ptr.lhs.cast4119, %sub.ptr.rhs.cast4120
  %add.ptr4122 = getelementptr inbounds i8, i8* %2258, i64 %sub.ptr.sub4121
  store i8* %add.ptr4122, i8** %pending_exact, align 8
  br label %if.end.4123

if.end.4123:                                      ; preds = %if.then.4118, %if.end.4116
  br label %if.end.4124

if.end.4124:                                      ; preds = %if.end.4123, %if.end.4088
  br label %do.end.4125

do.end.4125:                                      ; preds = %if.end.4124
  br label %while.cond

while.end.4126:                                   ; preds = %while.cond
  %2261 = load i8*, i8** %b, align 8
  %incdec.ptr4127 = getelementptr inbounds i8, i8* %2261, i32 1
  store i8* %incdec.ptr4127, i8** %b, align 8
  store i8 1, i8* %2261, align 1
  br label %do.end.4128

do.end.4128:                                      ; preds = %while.end.4126
  br label %if.end.4129

if.end.4129:                                      ; preds = %do.end.4128, %if.end.4049
  %2262 = load i8*, i8** %b, align 8
  %2263 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer4130 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2263, i32 0, i32 0
  %2264 = load i8*, i8** %buffer4130, align 8
  %sub.ptr.lhs.cast4131 = ptrtoint i8* %2262 to i64
  %sub.ptr.rhs.cast4132 = ptrtoint i8* %2264 to i64
  %sub.ptr.sub4133 = sub i64 %sub.ptr.lhs.cast4131, %sub.ptr.rhs.cast4132
  %2265 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used4134 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2265, i32 0, i32 2
  store i64 %sub.ptr.sub4133, i64* %used4134, align 8
  br label %do.body.4135

do.body.4135:                                     ; preds = %if.end.4129
  br label %do.body.4136

do.body.4136:                                     ; preds = %do.body.4135
  %table4137 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %2266 = load i32*, i32** %table4137, align 8
  %tobool4138 = icmp ne i32* %2266, null
  br i1 %tobool4138, label %if.then.4139, label %if.end.4141

if.then.4139:                                     ; preds = %do.body.4136
  %table4140 = getelementptr inbounds %struct.range_table_work_area, %struct.range_table_work_area* %range_table_work, i32 0, i32 0
  %2267 = load i32*, i32** %table4140, align 8
  %2268 = bitcast i32* %2267 to i8*
  call void @free(i8* %2268) #4
  br label %if.end.4141

if.end.4141:                                      ; preds = %if.then.4139, %do.body.4136
  br label %do.end.4142

do.end.4142:                                      ; preds = %if.end.4141
  %stack4143 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %2269 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack4143, align 8
  %2270 = bitcast %struct.compile_stack_elt_t* %2269 to i8*
  call void @free(i8* %2270) #4
  store i32 0, i32* %retval
  br label %do.end.4144

do.end.4144:                                      ; preds = %if.then, %do.end, %if.then.44, %if.then.113, %if.then.129, %if.then.203, %if.then.221, %do.end.290, %do.end.361, %if.then.379, %if.then.395, %if.then.445, %if.then.463, %if.then.527, %if.then.545, %if.then.630, %if.then.648, %if.then.713, %if.then.731, %if.then.794, %if.then.812, %if.then.908, %if.then.926, %do.end.981, %if.then.1001, %if.then.1019, %if.then.1076, %if.then.1094, %if.then.1164, %if.then.1182, %do.end.1249, %if.then.1257, %do.end.1279, %if.then.1287, %if.then.1318, %do.end.1334, %if.then.1343, %do.end.1389, %if.then.1397, %do.end.1413, %if.then.1476, %if.then.1486, %do.end.1507, %if.then.1588, %if.then.1606, %do.end.1739, %if.then.1747, %if.then.1773, %if.then.1787, %do.end.1805, %do.end.1820, %do.end.1858, %if.then.1883, %if.then.1943, %if.then.1961, %do.end.2028, %do.end.2058, %if.then.2121, %if.then.2139, %if.then.2212, %if.then.2230, %if.then.2303, %if.then.2321, %do.end.2381, %if.then.2389, %do.end.2421, %do.end.2438, %if.then.2446, %do.end.2469, %if.then.2477, %do.end.2509, %do.end.2526, %if.then.2534, %do.end.2561, %do.end.2578, %do.end.2592, %if.then.2600, %do.end.2617, %do.end.2633, %if.then.2681, %if.then.2699, %if.then.2824, %if.then.2842, %if.then.2907, %if.then.2925, %if.then.2990, %if.then.3008, %if.then.3072, %if.then.3090, %if.then.3141, %if.then.3167, %if.then.3185, %if.then.3248, %if.then.3266, %do.end.3316, %if.then.3343, %if.then.3361, %if.then.3425, %if.then.3443, %if.then.3507, %if.then.3525, %if.then.3589, %if.then.3607, %do.end.3674, %if.then.3695, %if.then.3713, %if.then.3865, %if.then.3883, %if.then.3944, %if.then.3962, %do.end.4046, %if.then.4069, %if.then.4087, %do.end.4142
  %2271 = load i32, i32* %retval
  ret i32 %2271
}

; Function Attrs: nounwind uwtable
define i32 @regcomp(%struct.re_pattern_buffer* noalias %preg, i8* noalias %pattern, i32 %cflags) #0 {
entry:
  %retval = alloca i32, align 4
  %preg.addr = alloca %struct.re_pattern_buffer*, align 8
  %pattern.addr = alloca i8*, align 8
  %cflags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %syntax = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.re_pattern_buffer* %preg, %struct.re_pattern_buffer** %preg.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %cflags, i32* %cflags.addr, align 4
  %0 = load i32, i32* %cflags.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i64 242428, i64 66246
  store i64 %cond, i64* %syntax, align 8
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i32 0, i32 0
  store i8* null, i8** %buffer, align 8
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2, i32 0, i32 1
  store i64 0, i64* %allocated, align 8
  %3 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %call = call i8* @xmalloc(i64 256)
  %4 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i32 0, i32 4
  store i8* %call, i8** %fastmap, align 8
  %5 = load i32, i32* %cflags.addr, align 4
  %and1 = and i32 %5, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i8* @xmalloc(i64 256)
  %6 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %6, i32 0, i32 5
  store i8* %call3, i8** %translate, align 8
  %7 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate4 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %7, i32 0, i32 5
  %8 = load i8*, i8** %translate4, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 12, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp ult i32 %9, 256
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %call7 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %call7, align 8
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %12 to i32
  %and8 = and i32 %conv, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %call11 = call i32** @__ctype_tolower_loc() #8
  %14 = load i32*, i32** %call11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 %idxprom10
  %15 = load i32, i32* %arrayidx12, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ %15, %cond.true ], [ %16, %cond.false ]
  %conv14 = trunc i32 %cond13 to i8
  %17 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %17 to i64
  %18 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate16 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %18, i32 0, i32 5
  %19 = load i8*, i8** %translate16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 %idxprom15
  store i8 %conv14, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.19

if.else:                                          ; preds = %entry
  %21 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate18 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %21, i32 0, i32 5
  store i8* null, i8** %translate18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %for.end
  %22 = load i32, i32* %cflags.addr, align 4
  %and20 = and i32 %22, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end.19
  %23 = load i64, i64* %syntax, align 8
  %and23 = and i64 %23, -65
  store i64 %and23, i64* %syntax, align 8
  %24 = load i64, i64* %syntax, align 8
  %or = or i64 %24, 256
  store i64 %or, i64* %syntax, align 8
  br label %if.end.26

if.else.24:                                       ; preds = %if.end.19
  %25 = load i64, i64* %syntax, align 8
  %or25 = or i64 %25, 4194304
  store i64 %or25, i64* %syntax, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.22
  %26 = load i32, i32* %cflags.addr, align 4
  %and27 = and i32 %26, 8
  %tobool28 = icmp ne i32 %and27, 0
  %lnot = xor i1 %tobool28, true
  %lnot29 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot29 to i32
  %27 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %27, i32 0, i32 7
  %28 = trunc i32 %lnot.ext to i8
  %bf.load = load i8, i8* %no_sub, align 8
  %bf.value = and i8 %28, 1
  %bf.shl = shl i8 %bf.value, 4
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %no_sub, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %29 = load i8*, i8** %pattern.addr, align 8
  %30 = load i8*, i8** %pattern.addr, align 8
  %call30 = call i64 @strlen(i8* %30) #7
  %31 = load i64, i64* %syntax, align 8
  %32 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %call31 = call i32 @regex_compile(i8* %29, i64 %call30, i64 %31, %struct.re_pattern_buffer* %32)
  store i32 %call31, i32* %ret, align 4
  %33 = load i32, i32* %ret, align 4
  %cmp32 = icmp eq i32 %33, 16
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.26
  store i32 8, i32* %ret, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.26
  %34 = load i32, i32* %ret, align 4
  %cmp36 = icmp eq i32 %34, 0
  br i1 %cmp36, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.35
  %35 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap38 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %35, i32 0, i32 4
  %36 = load i8*, i8** %fastmap38, align 8
  %tobool39 = icmp ne i8* %36, null
  br i1 %tobool39, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %land.lhs.true
  %37 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %call41 = call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %37)
  %38 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %can_be_null = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %38, i32 0, i32 7
  %bf.load42 = load i8, i8* %can_be_null, align 8
  %bf.clear43 = and i8 %bf.load42, 1
  %bf.cast = zext i8 %bf.clear43 to i32
  %tobool44 = icmp ne i32 %bf.cast, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.then.40
  %39 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap46 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %39, i32 0, i32 4
  %40 = load i8*, i8** %fastmap46, align 8
  call void @free(i8* %40) #4
  %41 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap47 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %41, i32 0, i32 4
  store i8* null, i8** %fastmap47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.then.40
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true, %if.end.35
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.5
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i8* @xmalloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %val = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #4
  store i8* %call, i8** %val, align 8
  %1 = load i8*, i8** %val, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %tobool1 = icmp ne i64 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i64 @write(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i64 25)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %val, align 8
  ret i8* %3
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define i32 @regexec(%struct.re_pattern_buffer* noalias %preg, i8* noalias %string, i64 %nmatch, %struct.regmatch_t* noalias %pmatch, i32 %eflags) #0 {
entry:
  %retval = alloca i32, align 4
  %preg.addr = alloca %struct.re_pattern_buffer*, align 8
  %string.addr = alloca i8*, align 8
  %nmatch.addr = alloca i64, align 8
  %pmatch.addr = alloca %struct.regmatch_t*, align 8
  %eflags.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %regs = alloca %struct.re_registers, align 8
  %private_preg = alloca %struct.re_pattern_buffer, align 8
  %len = alloca i64, align 8
  %want_reg_info = alloca i8, align 1
  %r = alloca i32, align 4
  store %struct.re_pattern_buffer* %preg, %struct.re_pattern_buffer** %preg.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %nmatch, i64* %nmatch.addr, align 8
  store %struct.regmatch_t* %pmatch, %struct.regmatch_t** %pmatch.addr, align 8
  store i32 %eflags, i32* %eflags.addr, align 4
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  store i64 %call, i64* %len, align 8
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i32 0, i32 7
  %bf.load = load i8, i8* %no_sub, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %nmatch.addr, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %tobool1 = icmp ne %struct.regmatch_t* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %conv = trunc i32 %land.ext to i8
  store i8 %conv, i8* %want_reg_info, align 1
  %5 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %6 = bitcast %struct.re_pattern_buffer* %private_preg to i8*
  %7 = bitcast %struct.re_pattern_buffer* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 64, i32 8, i1 false)
  %8 = load i32, i32* %eflags.addr, align 4
  %and = and i32 %8, 1
  %tobool2 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %not_bol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %private_preg, i32 0, i32 7
  %9 = trunc i32 %lnot.ext to i8
  %bf.load4 = load i8, i8* %not_bol, align 8
  %bf.value = and i8 %9, 1
  %bf.shl = shl i8 %bf.value, 5
  %bf.clear5 = and i8 %bf.load4, -33
  %bf.set = or i8 %bf.clear5, %bf.shl
  store i8 %bf.set, i8* %not_bol, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %10 = load i32, i32* %eflags.addr, align 4
  %and6 = and i32 %10, 2
  %tobool7 = icmp ne i32 %and6, 0
  %lnot8 = xor i1 %tobool7, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %not_eol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %private_preg, i32 0, i32 7
  %11 = trunc i32 %lnot.ext11 to i8
  %bf.load12 = load i8, i8* %not_eol, align 8
  %bf.value13 = and i8 %11, 1
  %bf.shl14 = shl i8 %bf.value13, 6
  %bf.clear15 = and i8 %bf.load12, -65
  %bf.set16 = or i8 %bf.clear15, %bf.shl14
  store i8 %bf.set16, i8* %not_eol, align 8
  %bf.result.cast17 = zext i8 %bf.value13 to i32
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %private_preg, i32 0, i32 7
  %bf.load18 = load i8, i8* %regs_allocated, align 8
  %bf.clear19 = and i8 %bf.load18, -7
  %bf.set20 = or i8 %bf.clear19, 4
  store i8 %bf.set20, i8* %regs_allocated, align 8
  %12 = load i8, i8* %want_reg_info, align 1
  %tobool21 = icmp ne i8 %12, 0
  br i1 %tobool21, label %if.then, label %if.end.30

if.then:                                          ; preds = %land.end
  %13 = load i64, i64* %nmatch.addr, align 8
  %conv22 = trunc i64 %13 to i32
  %num_regs = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 0
  store i32 %conv22, i32* %num_regs, align 4
  %14 = load i64, i64* %nmatch.addr, align 8
  %mul = mul i64 %14, 2
  %mul23 = mul i64 %mul, 8
  %call24 = call i8* @xmalloc(i64 %mul23)
  %15 = bitcast i8* %call24 to i64*
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  store i64* %15, i64** %start, align 8
  %start25 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  %16 = load i64*, i64** %start25, align 8
  %cmp26 = icmp eq i64* %16, null
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %start29 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  %17 = load i64*, i64** %start29, align 8
  %18 = load i64, i64* %nmatch.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %17, i64 %18
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 2
  store i64* %add.ptr, i64** %end, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %land.end
  %19 = load i8*, i8** %string.addr, align 8
  %20 = load i64, i64* %len, align 8
  %21 = load i64, i64* %len, align 8
  %22 = load i8, i8* %want_reg_info, align 1
  %conv31 = sext i8 %22 to i32
  %tobool32 = icmp ne i32 %conv31, 0
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.re_registers* [ %regs, %cond.true ], [ null, %cond.false ]
  %call33 = call i64 @re_search(%struct.re_pattern_buffer* %private_preg, i8* %19, i64 %20, i64 0, i64 %21, %struct.re_registers* %cond)
  store i64 %call33, i64* %ret, align 8
  %23 = load i8, i8* %want_reg_info, align 1
  %tobool34 = icmp ne i8 %23, 0
  br i1 %tobool34, label %if.then.35, label %if.end.52

if.then.35:                                       ; preds = %cond.end
  %24 = load i64, i64* %ret, align 8
  %cmp36 = icmp sge i64 %24, 0
  br i1 %cmp36, label %if.then.38, label %if.end.50

if.then.38:                                       ; preds = %if.then.35
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.38
  %25 = load i32, i32* %r, align 4
  %conv39 = zext i32 %25 to i64
  %26 = load i64, i64* %nmatch.addr, align 8
  %cmp40 = icmp ult i64 %conv39, %26
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %r, align 4
  %idxprom = zext i32 %27 to i64
  %start42 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  %28 = load i64*, i64** %start42, align 8
  %arrayidx = getelementptr inbounds i64, i64* %28, i64 %idxprom
  %29 = load i64, i64* %arrayidx, align 8
  %30 = load i32, i32* %r, align 4
  %idxprom43 = zext i32 %30 to i64
  %31 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %31, i64 %idxprom43
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx44, i32 0, i32 0
  store i64 %29, i64* %rm_so, align 8
  %32 = load i32, i32* %r, align 4
  %idxprom45 = zext i32 %32 to i64
  %end46 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 2
  %33 = load i64*, i64** %end46, align 8
  %arrayidx47 = getelementptr inbounds i64, i64* %33, i64 %idxprom45
  %34 = load i64, i64* %arrayidx47, align 8
  %35 = load i32, i32* %r, align 4
  %idxprom48 = zext i32 %35 to i64
  %36 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %36, i64 %idxprom48
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx49, i32 0, i32 1
  store i64 %34, i64* %rm_eo, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %r, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %if.then.35
  %start51 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  %38 = load i64*, i64** %start51, align 8
  %39 = bitcast i64* %38 to i8*
  call void @free(i8* %39) #4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.50, %cond.end
  %40 = load i64, i64* %ret, align 8
  %cmp53 = icmp sge i64 %40, 0
  %cond55 = select i1 %cmp53, i32 0, i32 1
  store i32 %cond55, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.28
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i64 @regerror(i32 %err_code, %struct.re_pattern_buffer* %preg, i8* %errbuf, i64 %errbuf_size) #0 {
entry:
  %err_code.addr = alloca i32, align 4
  %preg.addr = alloca %struct.re_pattern_buffer*, align 8
  %errbuf.addr = alloca i8*, align 8
  %errbuf_size.addr = alloca i64, align 8
  %msg = alloca i8*, align 8
  %msg_size = alloca i64, align 8
  store i32 %err_code, i32* %err_code.addr, align 4
  store %struct.re_pattern_buffer* %preg, %struct.re_pattern_buffer** %preg.addr, align 8
  store i8* %errbuf, i8** %errbuf.addr, align 8
  store i64 %errbuf_size, i64* %errbuf_size.addr, align 8
  %0 = load i32, i32* %err_code.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %err_code.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp1 = icmp uge i64 %conv, 18
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %err_code.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [18 x i8*], [18 x i8*]* @re_error_msgid, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %msg, align 8
  %4 = load i8*, i8** %msg, align 8
  %call = call i64 @strlen(i8* %4) #7
  %add = add i64 %call, 1
  store i64 %add, i64* %msg_size, align 8
  %5 = load i64, i64* %errbuf_size.addr, align 8
  %cmp3 = icmp ne i64 %5, 0
  br i1 %cmp3, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %if.end
  %6 = load i64, i64* %msg_size, align 8
  %7 = load i64, i64* %errbuf_size.addr, align 8
  %cmp6 = icmp ugt i64 %6, %7
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.5
  %8 = load i8*, i8** %errbuf.addr, align 8
  %9 = load i8*, i8** %msg, align 8
  %10 = load i64, i64* %errbuf_size.addr, align 8
  %sub = sub i64 %10, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %sub, i32 1, i1 false)
  %11 = load i64, i64* %errbuf_size.addr, align 8
  %sub9 = sub i64 %11, 1
  %12 = load i8*, i8** %errbuf.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %sub9
  store i8 0, i8* %arrayidx10, align 1
  br label %if.end.12

if.else:                                          ; preds = %if.then.5
  %13 = load i8*, i8** %errbuf.addr, align 8
  %14 = load i8*, i8** %msg, align 8
  %call11 = call i8* @strcpy(i8* %13, i8* %14) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %15 = load i64, i64* %msg_size, align 8
  ret i64 %15
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define void @regfree(%struct.re_pattern_buffer* %preg) #0 {
entry:
  %preg.addr = alloca %struct.re_pattern_buffer*, align 8
  store %struct.re_pattern_buffer* %preg, %struct.re_pattern_buffer** %preg.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  call void @free(i8* %1) #4
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %buffer1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2, i32 0, i32 0
  store i8* null, i8** %buffer1, align 8
  %3 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i32 0, i32 1
  store i64 0, i64* %allocated, align 8
  %4 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %5 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %5, i32 0, i32 4
  %6 = load i8*, i8** %fastmap, align 8
  call void @free(i8* %6) #4
  %7 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap2 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %7, i32 0, i32 4
  store i8* null, i8** %fastmap2, align 8
  %8 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %8, i32 0, i32 7
  %bf.load = load i8, i8* %fastmap_accurate, align 8
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, i8* %fastmap_accurate, align 8
  %9 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %9, i32 0, i32 5
  %10 = load i8*, i8** %translate, align 8
  call void @free(i8* %10) #4
  %11 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate3 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %11, i32 0, i32 5
  store i8* null, i8** %translate3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @extract_number_and_incr(i8** %source) #0 {
entry:
  %source.addr = alloca i8**, align 8
  %num = alloca i32, align 4
  store i8** %source, i8*** %source.addr, align 8
  %0 = load i8**, i8*** %source.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %call = call i32 @extract_number(i8* %1)
  store i32 %call, i32* %num, align 4
  %2 = load i8**, i8*** %source.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 2
  store i8* %add.ptr, i8** %2, align 8
  %4 = load i32, i32* %num, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @extract_number(i8* %source) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %leading_byte = alloca i32, align 4
  store i8* %source, i8** %source.addr, align 8
  %0 = load i8*, i8** %source.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %leading_byte, align 4
  %2 = load i32, i32* %leading_byte, align 4
  %shl = shl i32 %2, 8
  %3 = load i8*, i8** %source.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %add = add i32 %shl, %conv2
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define internal i8* @xrealloc(i8* %block, i64 %size) #0 {
entry:
  %block.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i8*, align 8
  store i8* %block, i8** %block.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %block.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %1) #4
  store i8* %call, i8** %val, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %block.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %call1 = call i8* @realloc(i8* %2, i64 %3) #4
  store i8* %call1, i8** %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %val, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.end.6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, i64* %size.addr, align 8
  %tobool3 = icmp ne i64 %5, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %land.lhs.true
  %call5 = call i64 @write(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i64 25)
  call void @exit(i32 1) #9
  unreachable

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i8*, i8** %val, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal i32 @bcmp_translate(i8* %s1, i8* %s2, i64 %len, i8* %translate, i32 %target_multibyte) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %translate.addr = alloca i8*, align 8
  %target_multibyte.addr = alloca i32, align 4
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %p1_end = alloca i8*, align 8
  %p2_end = alloca i8*, align 8
  %p1_charlen = alloca i32, align 4
  %p2_charlen = alloca i32, align 4
  %p1_ch = alloca i32, align 4
  %p2_ch = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %translate, i8** %translate.addr, align 8
  store i32 %target_multibyte, i32* %target_multibyte.addr, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %p1, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %p2, align 8
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  store i8* %add.ptr, i8** %p1_end, align 8
  %4 = load i8*, i8** %s2.addr, align 8
  %5 = load i64, i64* %len.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr1, i8** %p2_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i8*, i8** %p1, align 8
  %7 = load i8*, i8** %p1_end, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %p2, align 8
  %9 = load i8*, i8** %p2_end, align 8
  %cmp2 = icmp ult i8* %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i8*, i8** %p1, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %p1_ch, align 4
  store i32 1, i32* %p1_charlen, align 4
  %13 = load i8*, i8** %p2, align 8
  %14 = load i8, i8* %13, align 1
  %conv3 = zext i8 %14 to i32
  store i32 %conv3, i32* %p2_ch, align 4
  store i32 1, i32* %p2_charlen, align 4
  %15 = load i32, i32* %p1_ch, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %translate.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %17 to i32
  %18 = load i32, i32* %p2_ch, align 4
  %idxprom5 = sext i32 %18 to i64
  %19 = load i8*, i8** %translate.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %19, i64 %idxprom5
  %20 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %20 to i32
  %cmp8 = icmp ne i32 %conv4, %conv7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %21 = load i32, i32* %p1_charlen, align 4
  %22 = load i8*, i8** %p1, align 8
  %idx.ext = sext i32 %21 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr10, i8** %p1, align 8
  %23 = load i32, i32* %p2_charlen, align 4
  %24 = load i8*, i8** %p2, align 8
  %idx.ext11 = sext i32 %23 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %24, i64 %idx.ext11
  store i8* %add.ptr12, i8** %p2, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %25 = load i8*, i8** %p1, align 8
  %26 = load i8*, i8** %p1_end, align 8
  %cmp13 = icmp ne i8* %25, %26
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %27 = load i8*, i8** %p2, align 8
  %28 = load i8*, i8** %p2_end, align 8
  %cmp15 = icmp ne i8* %27, %28
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %while.end
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @mutually_exclusive_p(%struct.re_pattern_buffer* %bufp, i8* %p1, i8* %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %op2 = alloca i32, align 4
  %multibyte = alloca i8, align 1
  %pend = alloca i8*, align 8
  %c = alloca i32, align 4
  %not = alloca i32, align 4
  %idx = alloca i32, align 4
  %idx106 = alloca i32, align 4
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  store i8 0, i8* %multibyte, align 1
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2, i32 0, i32 2
  %3 = load i64, i64* %used, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %3
  store i8* %add.ptr, i8** %pend, align 8
  %4 = load i8*, i8** %p2.addr, align 8
  %5 = load i8*, i8** %pend, align 8
  %call = call i8* @skip_noops(i8* %4, i8* %5)
  store i8* %call, i8** %p2.addr, align 8
  %6 = load i8*, i8** %p2.addr, align 8
  %7 = load i8*, i8** %pend, align 8
  %cmp = icmp eq i8* %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i8*, i8** %p2.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %op2, align 4
  %10 = load i32, i32* %op2, align 4
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 12, label %sw.bb
    i32 10, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 4, label %sw.bb.56
    i32 5, label %sw.bb.151
    i32 23, label %sw.bb.156
    i32 27, label %sw.bb.166
    i32 29, label %sw.bb.181
    i32 22, label %sw.bb.194
    i32 26, label %sw.bb.205
    i32 28, label %sw.bb.222
    i32 24, label %sw.bb.235
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end
  %11 = load i8*, i8** %p1.addr, align 8
  %call1 = call i8* @skip_one_char(i8* %11)
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog.250

sw.bb.2:                                          ; preds = %cond.end, %cond.end
  %12 = load i8*, i8** %p2.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv3 = zext i8 %13 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %sw.bb.2
  br label %cond.end.10

cond.false.7:                                     ; preds = %sw.bb.2
  %14 = load i8*, i8** %p2.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %add.ptr8, align 1
  %conv9 = zext i8 %15 to i32
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.7, %cond.true.6
  %cond11 = phi i32 [ 10, %cond.true.6 ], [ %conv9, %cond.false.7 ]
  store i32 %cond11, i32* %c, align 4
  %16 = load i8*, i8** %p1.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv12 = zext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 2
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %cond.end.10
  %18 = load i32, i32* %c, align 4
  %19 = load i8*, i8** %p1.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %add.ptr16, align 1
  %conv17 = zext i8 %20 to i32
  %cmp18 = icmp ne i32 %18, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.15
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.15
  br label %if.end.55

if.else:                                          ; preds = %cond.end.10
  %21 = load i8*, i8** %p1.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv22 = zext i8 %22 to i32
  %cmp23 = icmp eq i32 %conv22, 4
  br i1 %cmp23, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %23 = load i8*, i8** %p1.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv25 = zext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 5
  br i1 %cmp26, label %if.then.28, label %if.else.45

if.then.28:                                       ; preds = %lor.lhs.false, %if.else
  %25 = load i8*, i8** %p1.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv29 = zext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv29, 5
  %conv31 = zext i1 %cmp30 to i32
  store i32 %conv31, i32* %not, align 4
  %27 = load i32, i32* %c, align 4
  %28 = load i8*, i8** %p1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx, align 1
  %conv32 = zext i8 %29 to i32
  %and = and i32 %conv32, 127
  %mul = mul nsw i32 %and, 8
  %cmp33 = icmp slt i32 %27, %mul
  br i1 %cmp33, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.then.28
  %30 = load i32, i32* %c, align 4
  %div = sdiv i32 %30, 8
  %add = add nsw i32 2, %div
  %idxprom = sext i32 %add to i64
  %31 = load i8*, i8** %p1.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %32 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %32 to i32
  %33 = load i32, i32* %c, align 4
  %rem = srem i32 %33, 8
  %shl = shl i32 1, %rem
  %and37 = and i32 %conv36, %shl
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %land.lhs.true
  %34 = load i32, i32* %not, align 4
  %tobool40 = icmp ne i32 %34, 0
  %lnot = xor i1 %tobool40, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %not, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %land.lhs.true, %if.then.28
  %35 = load i32, i32* %not, align 4
  %tobool42 = icmp ne i32 %35, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.41
  store i32 1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.41
  br label %if.end.54

if.else.45:                                       ; preds = %lor.lhs.false
  %36 = load i8*, i8** %p1.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv46 = zext i8 %37 to i32
  %cmp47 = icmp eq i32 %conv46, 3
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.53

land.lhs.true.49:                                 ; preds = %if.else.45
  %38 = load i32, i32* %c, align 4
  %cmp50 = icmp eq i32 %38, 10
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %land.lhs.true.49, %if.else.45
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.44
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.21
  br label %sw.epilog.250

sw.bb.56:                                         ; preds = %cond.end
  %39 = load i8*, i8** %p1.addr, align 8
  %40 = load i8, i8* %39, align 1
  %conv57 = zext i8 %40 to i32
  %cmp58 = icmp eq i32 %conv57, 2
  br i1 %cmp58, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %sw.bb.56
  %41 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %42 = load i8*, i8** %p2.addr, align 8
  %43 = load i8*, i8** %p1.addr, align 8
  %call61 = call i32 @mutually_exclusive_p(%struct.re_pattern_buffer* %41, i8* %42, i8* %43)
  store i32 %call61, i32* %retval
  br label %return

if.else.62:                                       ; preds = %sw.bb.56
  %44 = load i8*, i8** %p1.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv63 = zext i8 %45 to i32
  %cmp64 = icmp eq i32 %conv63, 4
  br i1 %cmp64, label %if.then.66, label %if.else.101

if.then.66:                                       ; preds = %if.else.62
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.66
  %46 = load i32, i32* %idx, align 4
  %47 = load i8*, i8** %p2.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %48 to i32
  %cmp69 = icmp slt i32 %46, %conv68
  br i1 %cmp69, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %49 = load i32, i32* %idx, align 4
  %50 = load i8*, i8** %p1.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %51 to i32
  %and73 = and i32 %conv72, 127
  %cmp74 = icmp slt i32 %49, %and73
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %52 = phi i1 [ false, %for.cond ], [ %cmp74, %land.rhs ]
  br i1 %52, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %53 = load i32, i32* %idx, align 4
  %add76 = add nsw i32 2, %53
  %idxprom77 = sext i32 %add76 to i64
  %54 = load i8*, i8** %p2.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %54, i64 %idxprom77
  %55 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %55 to i32
  %56 = load i32, i32* %idx, align 4
  %add80 = add nsw i32 2, %56
  %idxprom81 = sext i32 %add80 to i64
  %57 = load i8*, i8** %p1.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %57, i64 %idxprom81
  %58 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %58 to i32
  %and84 = and i32 %conv79, %conv83
  %cmp85 = icmp ne i32 %and84, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body
  br label %for.end

if.end.88:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %59 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.87, %land.end
  %60 = load i32, i32* %idx, align 4
  %61 = load i8*, i8** %p2.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %62 to i32
  %cmp91 = icmp eq i32 %60, %conv90
  br i1 %cmp91, label %if.then.99, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %for.end
  %63 = load i32, i32* %idx, align 4
  %64 = load i8*, i8** %p1.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %65 to i32
  %and96 = and i32 %conv95, 127
  %cmp97 = icmp eq i32 %63, %and96
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %lor.lhs.false.93, %for.end
  store i32 1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %lor.lhs.false.93
  br label %if.end.149

if.else.101:                                      ; preds = %if.else.62
  %66 = load i8*, i8** %p1.addr, align 8
  %67 = load i8, i8* %66, align 1
  %conv102 = zext i8 %67 to i32
  %cmp103 = icmp eq i32 %conv102, 5
  br i1 %cmp103, label %if.then.105, label %if.end.148

if.then.105:                                      ; preds = %if.else.101
  store i32 0, i32* %idx106, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.139, %if.then.105
  %68 = load i32, i32* %idx106, align 4
  %69 = load i8*, i8** %p2.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %70 to i32
  %cmp110 = icmp slt i32 %68, %conv109
  br i1 %cmp110, label %for.body.112, label %for.end.141

for.body.112:                                     ; preds = %for.cond.107
  %71 = load i32, i32* %idx106, align 4
  %add113 = add nsw i32 2, %71
  %idxprom114 = sext i32 %add113 to i64
  %72 = load i8*, i8** %p2.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %72, i64 %idxprom114
  %73 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %73 to i32
  %cmp117 = icmp eq i32 %conv116, 0
  br i1 %cmp117, label %if.end.138, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %for.body.112
  %74 = load i32, i32* %idx106, align 4
  %75 = load i8*, i8** %p1.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %76 to i32
  %and122 = and i32 %conv121, 127
  %cmp123 = icmp slt i32 %74, %and122
  br i1 %cmp123, label %land.lhs.true.125, label %if.then.137

land.lhs.true.125:                                ; preds = %lor.lhs.false.119
  %77 = load i32, i32* %idx106, align 4
  %add126 = add nsw i32 2, %77
  %idxprom127 = sext i32 %add126 to i64
  %78 = load i8*, i8** %p2.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %78, i64 %idxprom127
  %79 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %79 to i32
  %80 = load i32, i32* %idx106, align 4
  %add130 = add nsw i32 2, %80
  %idxprom131 = sext i32 %add130 to i64
  %81 = load i8*, i8** %p1.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %81, i64 %idxprom131
  %82 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %82 to i32
  %neg = xor i32 %conv133, -1
  %and134 = and i32 %conv129, %neg
  %cmp135 = icmp eq i32 %and134, 0
  br i1 %cmp135, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %land.lhs.true.125, %lor.lhs.false.119
  br label %for.end.141

if.end.138:                                       ; preds = %land.lhs.true.125, %for.body.112
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %83 = load i32, i32* %idx106, align 4
  %inc140 = add nsw i32 %83, 1
  store i32 %inc140, i32* %idx106, align 4
  br label %for.cond.107

for.end.141:                                      ; preds = %if.then.137, %for.cond.107
  %84 = load i32, i32* %idx106, align 4
  %85 = load i8*, i8** %p2.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %86 to i32
  %cmp144 = icmp eq i32 %84, %conv143
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %for.end.141
  store i32 1, i32* %retval
  br label %return

if.end.147:                                       ; preds = %for.end.141
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.else.101
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.100
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149
  br label %sw.epilog.250

sw.bb.151:                                        ; preds = %cond.end
  %87 = load i8*, i8** %p1.addr, align 8
  %88 = load i8, i8* %87, align 1
  %conv152 = zext i8 %88 to i32
  switch i32 %conv152, label %sw.epilog [
    i32 2, label %sw.bb.153
    i32 4, label %sw.bb.153
    i32 5, label %sw.bb.155
  ]

sw.bb.153:                                        ; preds = %sw.bb.151, %sw.bb.151
  %89 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %90 = load i8*, i8** %p2.addr, align 8
  %91 = load i8*, i8** %p1.addr, align 8
  %call154 = call i32 @mutually_exclusive_p(%struct.re_pattern_buffer* %89, i8* %90, i8* %91)
  store i32 %call154, i32* %retval
  br label %return

sw.bb.155:                                        ; preds = %sw.bb.151
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.151, %sw.bb.155
  br label %sw.epilog.250

sw.bb.156:                                        ; preds = %cond.end
  %92 = load i8*, i8** %p1.addr, align 8
  %93 = load i8, i8* %92, align 1
  %conv157 = zext i8 %93 to i32
  %cmp158 = icmp eq i32 %conv157, 28
  br i1 %cmp158, label %land.rhs.160, label %land.end.165

land.rhs.160:                                     ; preds = %sw.bb.156
  %94 = load i8*, i8** %p1.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %95 to i32
  %cmp163 = icmp eq i32 %conv162, 1
  br label %land.end.165

land.end.165:                                     ; preds = %land.rhs.160, %sw.bb.156
  %96 = phi i1 [ false, %sw.bb.156 ], [ %cmp163, %land.rhs.160 ]
  %land.ext = zext i1 %96 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.166:                                        ; preds = %cond.end
  %97 = load i8*, i8** %p1.addr, align 8
  %98 = load i8, i8* %97, align 1
  %conv167 = zext i8 %98 to i32
  %cmp168 = icmp eq i32 %conv167, 28
  br i1 %cmp168, label %land.rhs.170, label %land.end.179

land.rhs.170:                                     ; preds = %sw.bb.166
  %99 = load i8*, i8** %p1.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %100 to i32
  %cmp173 = icmp eq i32 %conv172, 2
  br i1 %cmp173, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.170
  %101 = load i8*, i8** %p1.addr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %102 to i32
  %cmp177 = icmp eq i32 %conv176, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.170
  %103 = phi i1 [ true, %land.rhs.170 ], [ %cmp177, %lor.rhs ]
  br label %land.end.179

land.end.179:                                     ; preds = %lor.end, %sw.bb.166
  %104 = phi i1 [ false, %sw.bb.166 ], [ %103, %lor.end ]
  %land.ext180 = zext i1 %104 to i32
  store i32 %land.ext180, i32* %retval
  br label %return

sw.bb.181:                                        ; preds = %cond.end
  %105 = load i8*, i8** %p1.addr, align 8
  %106 = load i8, i8* %105, align 1
  %conv182 = zext i8 %106 to i32
  %cmp183 = icmp eq i32 %conv182, 28
  br i1 %cmp183, label %land.rhs.185, label %land.end.192

land.rhs.185:                                     ; preds = %sw.bb.181
  %107 = load i8*, i8** %p1.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %107, i64 1
  %108 = load i8, i8* %arrayidx186, align 1
  %conv187 = zext i8 %108 to i32
  %109 = load i8*, i8** %p2.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %110 to i32
  %cmp190 = icmp eq i32 %conv187, %conv189
  br label %land.end.192

land.end.192:                                     ; preds = %land.rhs.185, %sw.bb.181
  %111 = phi i1 [ false, %sw.bb.181 ], [ %cmp190, %land.rhs.185 ]
  %land.ext193 = zext i1 %111 to i32
  store i32 %land.ext193, i32* %retval
  br label %return

sw.bb.194:                                        ; preds = %cond.end
  %112 = load i8*, i8** %p1.addr, align 8
  %113 = load i8, i8* %112, align 1
  %conv195 = zext i8 %113 to i32
  %cmp196 = icmp eq i32 %conv195, 29
  br i1 %cmp196, label %land.rhs.198, label %land.end.203

land.rhs.198:                                     ; preds = %sw.bb.194
  %114 = load i8*, i8** %p1.addr, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %115 to i32
  %cmp201 = icmp eq i32 %conv200, 1
  br label %land.end.203

land.end.203:                                     ; preds = %land.rhs.198, %sw.bb.194
  %116 = phi i1 [ false, %sw.bb.194 ], [ %cmp201, %land.rhs.198 ]
  %land.ext204 = zext i1 %116 to i32
  store i32 %land.ext204, i32* %retval
  br label %return

sw.bb.205:                                        ; preds = %cond.end
  %117 = load i8*, i8** %p1.addr, align 8
  %118 = load i8, i8* %117, align 1
  %conv206 = zext i8 %118 to i32
  %cmp207 = icmp eq i32 %conv206, 29
  br i1 %cmp207, label %land.rhs.209, label %land.end.220

land.rhs.209:                                     ; preds = %sw.bb.205
  %119 = load i8*, i8** %p1.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %119, i64 1
  %120 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %120 to i32
  %cmp212 = icmp eq i32 %conv211, 2
  br i1 %cmp212, label %lor.end.219, label %lor.rhs.214

lor.rhs.214:                                      ; preds = %land.rhs.209
  %121 = load i8*, i8** %p1.addr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %121, i64 1
  %122 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %122 to i32
  %cmp217 = icmp eq i32 %conv216, 1
  br label %lor.end.219

lor.end.219:                                      ; preds = %lor.rhs.214, %land.rhs.209
  %123 = phi i1 [ true, %land.rhs.209 ], [ %cmp217, %lor.rhs.214 ]
  br label %land.end.220

land.end.220:                                     ; preds = %lor.end.219, %sw.bb.205
  %124 = phi i1 [ false, %sw.bb.205 ], [ %123, %lor.end.219 ]
  %land.ext221 = zext i1 %124 to i32
  store i32 %land.ext221, i32* %retval
  br label %return

sw.bb.222:                                        ; preds = %cond.end
  %125 = load i8*, i8** %p1.addr, align 8
  %126 = load i8, i8* %125, align 1
  %conv223 = zext i8 %126 to i32
  %cmp224 = icmp eq i32 %conv223, 29
  br i1 %cmp224, label %land.rhs.226, label %land.end.233

land.rhs.226:                                     ; preds = %sw.bb.222
  %127 = load i8*, i8** %p1.addr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %127, i64 1
  %128 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %128 to i32
  %129 = load i8*, i8** %p2.addr, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %129, i64 1
  %130 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %130 to i32
  %cmp231 = icmp eq i32 %conv228, %conv230
  br label %land.end.233

land.end.233:                                     ; preds = %land.rhs.226, %sw.bb.222
  %131 = phi i1 [ false, %sw.bb.222 ], [ %cmp231, %land.rhs.226 ]
  %land.ext234 = zext i1 %131 to i32
  store i32 %land.ext234, i32* %retval
  br label %return

sw.bb.235:                                        ; preds = %cond.end
  %132 = load i8*, i8** %p1.addr, align 8
  %133 = load i8, i8* %132, align 1
  %conv236 = zext i8 %133 to i32
  %cmp237 = icmp eq i32 %conv236, 29
  br i1 %cmp237, label %land.rhs.243, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %sw.bb.235
  %134 = load i8*, i8** %p1.addr, align 8
  %135 = load i8, i8* %134, align 1
  %conv240 = zext i8 %135 to i32
  %cmp241 = icmp eq i32 %conv240, 28
  br i1 %cmp241, label %land.rhs.243, label %land.end.248

land.rhs.243:                                     ; preds = %lor.lhs.false.239, %sw.bb.235
  %136 = load i8*, i8** %p1.addr, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %137 to i32
  %cmp246 = icmp eq i32 %conv245, 1
  br label %land.end.248

land.end.248:                                     ; preds = %land.rhs.243, %lor.lhs.false.239
  %138 = phi i1 [ false, %lor.lhs.false.239 ], [ %cmp246, %land.rhs.243 ]
  %land.ext249 = zext i1 %138 to i32
  store i32 %land.ext249, i32* %retval
  br label %return

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog.250

sw.epilog.250:                                    ; preds = %sw.default, %sw.epilog, %if.end.150, %if.end.55, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.250, %land.end.248, %land.end.233, %land.end.220, %land.end.203, %land.end.192, %land.end.179, %land.end.165, %sw.bb.153, %if.then.146, %if.then.99, %if.then.60, %if.then.52, %if.then.43, %if.then.20, %if.then
  %139 = load i32, i32* %retval
  ret i32 %139
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #5

declare i64 @write(i32, i8*, i64) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define internal i8* @skip_noops(i8* %p, i8* %pend) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %pend.addr = alloca i8*, align 8
  %mcnt = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i8* %pend, i8** %pend.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8*, i8** %pend.addr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 0, label %sw.bb.1
    i32 13, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %4 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %add.ptr, i8** %p.addr, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %5 = load i8*, i8** %p.addr, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 1
  store i8* %add.ptr2, i8** %p.addr, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  %6 = load i8*, i8** %p.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr4, i8** %p.addr, align 8
  %call = call i32 @extract_number_and_incr(i8** %p.addr)
  store i32 %call, i32* %mcnt, align 4
  %7 = load i32, i32* %mcnt, align 4
  %8 = load i8*, i8** %p.addr, align 8
  %idx.ext = sext i32 %7 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr5, i8** %p.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %9 = load i8*, i8** %p.addr, align 8
  store i8* %9, i8** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb.1, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i8*, i8** %p.addr, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal i8* @skip_one_char(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %mcnt = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1
    i32 5, label %sw.bb.3
    i32 4, label %sw.bb.3
    i32 28, label %sw.bb.23
    i32 29, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %add = add nsw i32 %conv2, 1
  %4 = load i8*, i8** %p.addr, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %p.addr, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry, %entry
  %5 = load i8*, i8** %p.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %5, i64 -1
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr4, i64 1
  %6 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %6 to i32
  %and = and i32 %conv5, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.3
  %7 = load i8*, i8** %p.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -1
  %arrayidx7 = getelementptr inbounds i8, i8* %add.ptr6, i64 1
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %8 to i32
  %and9 = and i32 %conv8, 127
  %add10 = add nsw i32 4, %and9
  %idxprom = sext i32 %add10 to i64
  %9 = load i8*, i8** %p.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %9, i64 -1
  %arrayidx12 = getelementptr inbounds i8, i8* %add.ptr11, i64 %idxprom
  store i8* %arrayidx12, i8** %p.addr, align 8
  %call = call i32 @extract_number_and_incr(i8** %p.addr)
  store i32 %call, i32* %mcnt, align 4
  %10 = load i8*, i8** %p.addr, align 8
  %11 = load i32, i32* %mcnt, align 4
  %mul = mul nsw i32 %11, 2
  %mul13 = mul nsw i32 %mul, 3
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %10, i64 %idx.ext14
  store i8* %add.ptr15, i8** %p.addr, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.3
  %12 = load i8*, i8** %p.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %12, i64 -1
  %arrayidx17 = getelementptr inbounds i8, i8* %add.ptr16, i64 1
  %13 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  %and19 = and i32 %conv18, 127
  %add20 = add nsw i32 1, %and19
  %14 = load i8*, i8** %p.addr, align 8
  %idx.ext21 = sext i32 %add20 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %14, i64 %idx.ext21
  store i8* %add.ptr22, i8** %p.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry, %entry
  %15 = load i8*, i8** %p.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr24, i8** %p.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8* null, i8** %p.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.23, %if.end, %sw.bb.1, %sw.bb
  %16 = load i8*, i8** %p.addr, align 8
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal void @init_syntax_once() #0 {
entry:
  %c = alloca i32, align 4
  %0 = load i32, i32* @init_syntax_once.done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @re_syntax_table, i32 0, i32 0), i8 0, i64 256, i32 16, i1 false)
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %c, align 4
  %idxprom = sext i32 %2 to i64
  %call = call i16** @__ctype_b_loc() #8
  %3 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 8
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %for.body
  %5 = load i32, i32* %c, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 %idxprom3
  store i8 1, i8* %arrayidx4, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %6 = load i32, i32* %c, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 2, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @re_syntax_table, i32 0, i64 95), align 1
  store i32 1, i32* @init_syntax_once.done, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i8 @at_begline_loc_p(i8* %pattern, i8* %p, i64 %syntax) #0 {
entry:
  %retval = alloca i8, align 1
  %pattern.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %syntax.addr = alloca i64, align 8
  %prev = alloca i8*, align 8
  %odd_backslashes = alloca i8, align 1
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %syntax, i64* %syntax.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -2
  store i8* %add.ptr, i8** %prev, align 8
  %1 = load i8*, i8** %prev, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %syntax.addr, align 8
  %and = and i64 %3, 8192
  %cmp2 = icmp eq i64 %and, 0
  %conv3 = zext i1 %cmp2 to i32
  %conv4 = trunc i32 %conv3 to i8
  store i8 %conv4, i8* %odd_backslashes, align 1
  br label %if.end.52

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %prev, align 8
  %5 = load i8, i8* %4, align 1
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 124
  br i1 %cmp6, label %if.then.8, label %if.else.13

if.then.8:                                        ; preds = %if.else
  %6 = load i64, i64* %syntax.addr, align 8
  %and9 = and i64 %6, 32768
  %cmp10 = icmp eq i64 %and9, 0
  %conv11 = zext i1 %cmp10 to i32
  %conv12 = trunc i32 %conv11 to i8
  store i8 %conv12, i8* %odd_backslashes, align 1
  br label %if.end.51

if.else.13:                                       ; preds = %if.else
  %7 = load i8*, i8** %prev, align 8
  %8 = load i8, i8* %7, align 1
  %conv14 = zext i8 %8 to i32
  %cmp15 = icmp eq i32 %conv14, 58
  br i1 %cmp15, label %land.lhs.true, label %if.else.49

land.lhs.true:                                    ; preds = %if.else.13
  %9 = load i64, i64* %syntax.addr, align 8
  %and17 = and i64 %9, 2097152
  %tobool = icmp ne i64 %and17, 0
  br i1 %tobool, label %if.then.18, label %if.else.49

if.then.18:                                       ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.18
  %10 = load i8*, i8** %prev, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %10, i64 -1
  %11 = load i8*, i8** %pattern.addr, align 8
  %cmp20 = icmp uge i8* %add.ptr19, %11
  br i1 %cmp20, label %land.lhs.true.22, label %land.end

land.lhs.true.22:                                 ; preds = %while.cond
  %12 = load i8*, i8** %prev, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 -1
  %13 = load i8, i8* %arrayidx, align 1
  %conv23 = zext i8 %13 to i32
  %cmp24 = icmp sge i32 %conv23, 48
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.22
  %14 = load i8*, i8** %prev, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %14, i64 -1
  %15 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %15 to i32
  %cmp28 = icmp sle i32 %conv27, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.22, %while.cond
  %16 = phi i1 [ false, %land.lhs.true.22 ], [ false, %while.cond ], [ %cmp28, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load i8*, i8** %prev, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %incdec.ptr, i8** %prev, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i8*, i8** %prev, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %18, i64 -2
  %19 = load i8*, i8** %pattern.addr, align 8
  %cmp31 = icmp uge i8* %add.ptr30, %19
  br i1 %cmp31, label %land.lhs.true.33, label %if.then.43

land.lhs.true.33:                                 ; preds = %while.end
  %20 = load i8*, i8** %prev, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %20, i64 -1
  %21 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %21 to i32
  %cmp36 = icmp eq i32 %conv35, 63
  br i1 %cmp36, label %land.lhs.true.38, label %if.then.43

land.lhs.true.38:                                 ; preds = %land.lhs.true.33
  %22 = load i8*, i8** %prev, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %22, i64 -2
  %23 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %23 to i32
  %cmp41 = icmp eq i32 %conv40, 40
  br i1 %cmp41, label %if.end, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.38, %land.lhs.true.33, %while.end
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.38
  %24 = load i8*, i8** %prev, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %24, i64 -2
  store i8* %add.ptr44, i8** %prev, align 8
  %25 = load i64, i64* %syntax.addr, align 8
  %and45 = and i64 %25, 8192
  %cmp46 = icmp eq i64 %and45, 0
  %conv47 = zext i1 %cmp46 to i32
  %conv48 = trunc i32 %conv47 to i8
  store i8 %conv48, i8* %odd_backslashes, align 1
  br label %if.end.50

if.else.49:                                       ; preds = %land.lhs.true, %if.else.13
  store i8 0, i8* %retval
  br label %return

if.end.50:                                        ; preds = %if.end
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.8
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then
  %26 = load i8*, i8** %prev, align 8
  store i8* %26, i8** %p.addr, align 8
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.63, %if.end.52
  %27 = load i8*, i8** %prev, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %27, i64 -1
  %28 = load i8*, i8** %pattern.addr, align 8
  %cmp55 = icmp uge i8* %add.ptr54, %28
  br i1 %cmp55, label %land.rhs.57, label %land.end.62

land.rhs.57:                                      ; preds = %while.cond.53
  %29 = load i8*, i8** %prev, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %29, i64 -1
  %30 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %30 to i32
  %cmp60 = icmp eq i32 %conv59, 92
  br label %land.end.62

land.end.62:                                      ; preds = %land.rhs.57, %while.cond.53
  %31 = phi i1 [ false, %while.cond.53 ], [ %cmp60, %land.rhs.57 ]
  br i1 %31, label %while.body.63, label %while.end.65

while.body.63:                                    ; preds = %land.end.62
  %32 = load i8*, i8** %prev, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr64, i8** %prev, align 8
  br label %while.cond.53

while.end.65:                                     ; preds = %land.end.62
  %33 = load i8*, i8** %p.addr, align 8
  %34 = load i8*, i8** %prev, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %35 = load i8, i8* %odd_backslashes, align 1
  %conv66 = sext i8 %35 to i64
  %and67 = and i64 %sub.ptr.sub, %conv66
  %conv68 = trunc i64 %and67 to i8
  store i8 %conv68, i8* %retval
  br label %return

return:                                           ; preds = %while.end.65, %if.else.49, %if.then.43
  %36 = load i8, i8* %retval
  ret i8 %36
}

; Function Attrs: nounwind uwtable
define internal signext i8 @at_endline_loc_p(i8* %p, i8* %pend, i64 %syntax) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pend.addr = alloca i8*, align 8
  %syntax.addr = alloca i64, align 8
  %next = alloca i8*, align 8
  %next_backslash = alloca i8, align 1
  %next_next = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %pend, i8** %pend.addr, align 8
  store i64 %syntax, i64* %syntax.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %next, align 8
  %1 = load i8*, i8** %next, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 92
  %conv1 = zext i1 %cmp to i32
  %conv2 = trunc i32 %conv1 to i8
  store i8 %conv2, i8* %next_backslash, align 1
  %3 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8*, i8** %pend.addr, align 8
  %cmp3 = icmp ult i8* %add.ptr, %4
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %p.addr, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %5, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr5, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %next_next, align 8
  %6 = load i64, i64* %syntax.addr, align 8
  %and = and i64 %6, 8192
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true.6, label %cond.false.10

cond.true.6:                                      ; preds = %cond.end
  %7 = load i8*, i8** %next, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 41
  br i1 %cmp8, label %lor.end, label %lor.rhs

cond.false.10:                                    ; preds = %cond.end
  %9 = load i8, i8* %next_backslash, align 1
  %conv11 = sext i8 %9 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %cond.false.10
  %10 = load i8*, i8** %next_next, align 8
  %tobool13 = icmp ne i8* %10, null
  br i1 %tobool13, label %land.lhs.true.14, label %lor.rhs

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %11 = load i8*, i8** %next_next, align 8
  %12 = load i8, i8* %11, align 1
  %conv15 = zext i8 %12 to i32
  %cmp16 = icmp eq i32 %conv15, 41
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.14, %land.lhs.true, %cond.false.10, %cond.true.6
  %13 = load i64, i64* %syntax.addr, align 8
  %and18 = and i64 %13, 32768
  %tobool19 = icmp ne i64 %and18, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %lor.rhs
  %14 = load i8*, i8** %next, align 8
  %15 = load i8, i8* %14, align 1
  %conv21 = zext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 124
  %conv23 = zext i1 %cmp22 to i32
  br label %cond.end.32

cond.false.24:                                    ; preds = %lor.rhs
  %16 = load i8, i8* %next_backslash, align 1
  %conv25 = sext i8 %16 to i32
  %tobool26 = icmp ne i32 %conv25, 0
  br i1 %tobool26, label %land.lhs.true.27, label %land.end

land.lhs.true.27:                                 ; preds = %cond.false.24
  %17 = load i8*, i8** %next_next, align 8
  %tobool28 = icmp ne i8* %17, null
  br i1 %tobool28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.27
  %18 = load i8*, i8** %next_next, align 8
  %19 = load i8, i8* %18, align 1
  %conv29 = zext i8 %19 to i32
  %cmp30 = icmp eq i32 %conv29, 124
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.27, %cond.false.24
  %20 = phi i1 [ false, %land.lhs.true.27 ], [ false, %cond.false.24 ], [ %cmp30, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  br label %cond.end.32

cond.end.32:                                      ; preds = %land.end, %cond.true.20
  %cond33 = phi i32 [ %conv23, %cond.true.20 ], [ %land.ext, %land.end ]
  %tobool34 = icmp ne i32 %cond33, 0
  br label %lor.end

lor.end:                                          ; preds = %cond.end.32, %land.lhs.true.14, %cond.true.6
  %21 = phi i1 [ true, %land.lhs.true.14 ], [ true, %cond.true.6 ], [ %tobool34, %cond.end.32 ]
  %lor.ext = zext i1 %21 to i32
  %conv35 = trunc i32 %lor.ext to i8
  ret i8 %conv35
}

; Function Attrs: nounwind uwtable
define internal void @store_op1(i32 %op, i8* %loc, i32 %arg) #0 {
entry:
  %op.addr = alloca i32, align 4
  %loc.addr = alloca i8*, align 8
  %arg.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  store i8* %loc, i8** %loc.addr, align 8
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load i8*, i8** %loc.addr, align 8
  store i8 %conv, i8* %1, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %arg.addr, align 4
  %and = and i32 %2, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %loc.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  %4 = load i32, i32* %arg.addr, align 4
  %shr = ashr i32 %4, 8
  %conv2 = trunc i32 %shr to i8
  %5 = load i8*, i8** %loc.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 1
  %arrayidx4 = getelementptr inbounds i8, i8* %add.ptr3, i64 1
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @insert_op1(i32 %op, i8* %loc, i32 %arg, i8* %end) #0 {
entry:
  %op.addr = alloca i32, align 4
  %loc.addr = alloca i8*, align 8
  %arg.addr = alloca i32, align 4
  %end.addr = alloca i8*, align 8
  %pfrom = alloca i8*, align 8
  %pto = alloca i8*, align 8
  store i32 %op, i32* %op.addr, align 4
  store i8* %loc, i8** %loc.addr, align 8
  store i32 %arg, i32* %arg.addr, align 4
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  store i8* %0, i8** %pfrom, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 3
  store i8* %add.ptr, i8** %pto, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %pfrom, align 8
  %3 = load i8*, i8** %loc.addr, align 8
  %cmp = icmp ne i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %pfrom, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %pfrom, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %6 = load i8*, i8** %pto, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr1, i8** %pto, align 8
  store i8 %5, i8* %incdec.ptr1, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %op.addr, align 4
  %8 = load i8*, i8** %loc.addr, align 8
  %9 = load i32, i32* %arg.addr, align 4
  call void @store_op1(i32 %7, i8* %8, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i8 @group_in_compile_stack(%struct.compile_stack_type* byval align 8 %compile_stack, i32 %regnum) #0 {
entry:
  %retval = alloca i8, align 1
  %regnum.addr = alloca i32, align 4
  %this_element = alloca i64, align 8
  store i32 %regnum, i32* %regnum.addr, align 4
  %avail = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %0 = load i64, i64* %avail, align 8
  %sub = sub i64 %0, 1
  store i64 %sub, i64* %this_element, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %this_element, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %this_element, align 8
  %stack = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %3 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack, align 8
  %arrayidx = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %3, i64 %2
  %regnum1 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx, i32 0, i32 3
  %4 = load i32, i32* %regnum1, align 4
  %5 = load i32, i32* %regnum.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %this_element, align 8
  %dec = add nsw i64 %6, -1
  store i64 %dec, i64* %this_element, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i8, i8* %retval
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define internal void @insert_op2(i32 %op, i8* %loc, i32 %arg1, i32 %arg2, i8* %end) #0 {
entry:
  %op.addr = alloca i32, align 4
  %loc.addr = alloca i8*, align 8
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %end.addr = alloca i8*, align 8
  %pfrom = alloca i8*, align 8
  %pto = alloca i8*, align 8
  store i32 %op, i32* %op.addr, align 4
  store i8* %loc, i8** %loc.addr, align 8
  store i32 %arg1, i32* %arg1.addr, align 4
  store i32 %arg2, i32* %arg2.addr, align 4
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  store i8* %0, i8** %pfrom, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 5
  store i8* %add.ptr, i8** %pto, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %pfrom, align 8
  %3 = load i8*, i8** %loc.addr, align 8
  %cmp = icmp ne i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %pfrom, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %pfrom, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %6 = load i8*, i8** %pto, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr1, i8** %pto, align 8
  store i8 %5, i8* %incdec.ptr1, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %op.addr, align 4
  %8 = load i8*, i8** %loc.addr, align 8
  %9 = load i32, i32* %arg1.addr, align 4
  %10 = load i32, i32* %arg2.addr, align 4
  call void @store_op2(i32 %7, i8* %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @store_op2(i32 %op, i8* %loc, i32 %arg1, i32 %arg2) #0 {
entry:
  %op.addr = alloca i32, align 4
  %loc.addr = alloca i8*, align 8
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  store i8* %loc, i8** %loc.addr, align 8
  store i32 %arg1, i32* %arg1.addr, align 4
  store i32 %arg2, i32* %arg2.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load i8*, i8** %loc.addr, align 8
  store i8 %conv, i8* %1, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %arg1.addr, align 4
  %and = and i32 %2, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %loc.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  %4 = load i32, i32* %arg1.addr, align 4
  %shr = ashr i32 %4, 8
  %conv2 = trunc i32 %shr to i8
  %5 = load i8*, i8** %loc.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 1
  %arrayidx4 = getelementptr inbounds i8, i8* %add.ptr3, i64 1
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %6 = load i32, i32* %arg2.addr, align 4
  %and6 = and i32 %6, 255
  %conv7 = trunc i32 %and6 to i8
  %7 = load i8*, i8** %loc.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %7, i64 3
  %arrayidx9 = getelementptr inbounds i8, i8* %add.ptr8, i64 0
  store i8 %conv7, i8* %arrayidx9, align 1
  %8 = load i32, i32* %arg2.addr, align 4
  %shr10 = ashr i32 %8, 8
  %conv11 = trunc i32 %shr10 to i8
  %9 = load i8*, i8** %loc.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %9, i64 3
  %arrayidx13 = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  store i8 %conv11, i8* %arrayidx13, align 1
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.5
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
