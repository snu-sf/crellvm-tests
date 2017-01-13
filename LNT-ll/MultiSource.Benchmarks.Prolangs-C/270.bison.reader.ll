; ModuleID = './MultiSource.Benchmarks.Prolangs-C/270.bison.reader.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bucket = type { %struct.bucket*, %struct.bucket*, i8*, i8*, i16, i16, i16, i16, i8 }
%struct.symbol_list = type { %struct.symbol_list*, %struct.bucket*, %struct.bucket* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@start_flag = common global i32 0, align 4
@startval = common global %struct.bucket* null, align 8
@translations = external global i32, align 4
@nsyms = external global i32, align 4
@nvars = external global i32, align 4
@nrules = external global i32, align 4
@nitems = external global i32, align 4
@rline_allocated = common global i32 0, align 4
@rline = external global i16*, align 8
@typed = internal global i32 0, align 4
@lastprec = internal global i32 0, align 4
@gensym_count = internal global i32 0, align 4
@semantic_parser = external global i32, align 4
@pure_parser = external global i32, align 4
@yylsp_needed = internal global i32 0, align 4
@grammar = common global %struct.symbol_list* null, align 8
@lineno = common global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errtoken = internal global %struct.bucket* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"$illegal.\00", align 1
@ftable = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"\0A/*  A Bison parser, made from %s  */\0A\0A\00", align 1
@infile = external global i8*, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"#define YYLSP_NEEDED\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"junk after % in definition section\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no input grammar\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Unrecognized char '%c' in declaration section\00", align 1
@nolinesflag = external global i32, align 4
@fattrs = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@finput = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"unterminated comment in %{ definition\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"unterminated %{ definition\00", align 1
@token_buffer = external global [0 x i8], align 1
@symval = external global %struct.bucket*, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"symbol %s redefined\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"type redeclaration for %s\00", align 1
@numval = external global i32, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"invalid text in %token or %nterm declaration\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"multiple %start declarations\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"invalid %start declaration\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"ill-formed %type declaration\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"invalid %type declaration\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"invalid text in association declaration\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"malformatted association declaration\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"multiple %union declarations\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"\0A#line %d \22%s\22\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"typedef union\00", align 1
@fdefines = external global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c" YYSTYPE;\0A\00", align 1
@expected_conflicts = external global i32, align 4
@.str.26 = private unnamed_addr constant [189 x i8] c"\0A#ifndef YYLTYPE\0Atypedef\0A  struct yyltype\0A    {\0A      int first_line;\0A      int first_column;\0A      int last_line;\0A      int last_column;\0A    }\0A  yyltype;\0A\0A#define YYLTYPE yyltype\0A#endif\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"#define\09YYACCEPT\09goto yyaccept\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"#define\09YYABORT\09goto yyabort\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"#define\09YYERROR\09goto yyerrlab\0A\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"#define\09yytext\09(*_yytext)\0Aextern char **_yytext;\0A\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"#define\09yylval\09(*_yylval)\0Aextern YYSTYPE *_yylval;\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"#define\09yylloc\09(*_yylloc)\0Aextern YYLTYPE *_yylloc;\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"#define\09yyppval\09(*_yyppval)\0Aextern int *_yyppval;\0A\00", align 1
@get_type_name.msg = internal global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), align 8
@.str.34 = private unnamed_addr constant [16 x i8] c"invalid $ value\00", align 1
@fguard = external global %struct._IO_FILE*, align 8
@.str.35 = private unnamed_addr constant [11 x i8] c"\0Acase %d:\0A\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"unmatched right brace ('}')\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"yyval\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.39 = private unnamed_addr constant [52 x i8] c"%s:%d:  warning:  $$ of '%s' has no declared type.\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"yyp->yyvsp[%d]\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"%s:%d:  warning:  $%d of '%s' has no declared type.\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"$%c is invalid\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"@%c is invalid\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"yyp->yylsp[%d]\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"unterminated %guard clause\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c";\0A    break;}\00", align 1
@faction = external global %struct._IO_FILE*, align 8
@.str.47 = private unnamed_addr constant [20 x i8] c"invalid @-construct\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"unmatched '{'\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"@%d\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"ill-formed rule\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"grammar starts with vertical bar\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"rule given for %s, which is a token\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"%guard present but %semantic_parser not specified\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"two actions at end of one rule\00", align 1
@.str.55 = private unnamed_addr constant [60 x i8] c"%s:%d:  warning:  type clash ('%s' '%s') on default action\0A\00", align 1
@.str.56 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"#ifndef YYSTYPE\0A#define YYSTYPE int\0A#endif\0A\00", align 1
@firstsymbol = external global %struct.bucket*, align 8
@.str.59 = private unnamed_addr constant [59 x i8] c"symbol %s used, not defined as token, and no rules for it\0A\00", align 1
@failure = external global i32, align 4
@ntokens = external global i32, align 4
@.str.60 = private unnamed_addr constant [25 x i8] c"bison: memory exhausted\0A\00", align 1
@tags = common global i8** null, align 8
@.str.61 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@sprec = external global i16*, align 8
@sassoc = external global i16*, align 8
@max_user_token_number = external global i32, align 4
@token_translations = external global i16*, align 8
@.str.62 = private unnamed_addr constant [41 x i8] c"tokens %s and %s both assigned number %d\00", align 1
@error_token_number = external global i32, align 4
@.str.63 = private unnamed_addr constant [33 x i8] c"the start symbol %s is undefined\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"the start symbol %s is a token\00", align 1
@start_symbol = external global i32, align 4
@definesflag = external global i32, align 4
@.str.65 = private unnamed_addr constant [17 x i8] c"#define\09NT%s\09%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"#define\09%s\09%d\0A\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"#define\09T%s\09%d\0A\00", align 1
@ritem = external global i16*, align 8
@rlhs = external global i16*, align 8
@rrhs = external global i16*, align 8
@rprec = external global i16*, align 8
@rassoc = external global i16*, align 8

; Function Attrs: nounwind uwtable
define void @reader() #0 {
entry:
  store i32 0, i32* @start_flag, align 4
  store %struct.bucket* null, %struct.bucket** @startval, align 8
  store i32 0, i32* @translations, align 4
  store i32 1, i32* @nsyms, align 4
  store i32 0, i32* @nvars, align 4
  store i32 0, i32* @nrules, align 4
  store i32 0, i32* @nitems, align 4
  store i32 10, i32* @rline_allocated, align 4
  %0 = load i32, i32* @rline_allocated, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** @rline, align 8
  store i32 0, i32* @typed, align 4
  store i32 0, i32* @lastprec, align 4
  store i32 0, i32* @gensym_count, align 4
  store i32 0, i32* @semantic_parser, align 4
  store i32 0, i32* @pure_parser, align 4
  store i32 0, i32* @yylsp_needed, align 4
  store %struct.symbol_list* null, %struct.symbol_list** @grammar, align 8
  call void @init_lex()
  store i32 1, i32* @lineno, align 4
  call void @tabinit()
  %call2 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (...)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  store %struct.bucket* %call2, %struct.bucket** @errtoken, align 8
  %2 = load %struct.bucket*, %struct.bucket** @errtoken, align 8
  %class = getelementptr inbounds %struct.bucket, %struct.bucket* %2, i32 0, i32 8
  store i8 1, i8* %class, align 1
  %call3 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (...)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  %class4 = getelementptr inbounds %struct.bucket, %struct.bucket* %call3, i32 0, i32 8
  store i8 1, i8* %class4, align 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %4 = load i8*, i8** @infile, align 8
  %call5 = call i8* @mybasename(i8* %4)
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* %call5)
  call void @read_declarations()
  call void @output_ltype()
  call void @output_headers()
  call void @readgram()
  call void @output_trailers()
  %5 = load i32, i32* @yylsp_needed, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @packsymbols()
  call void @packgram()
  call void @free_symtab()
  ret void
}

declare i8* @mallocate(...) #1

declare void @init_lex() #1

declare void @tabinit() #1

declare %struct.bucket* @getsym(...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #5
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define void @read_declarations() #0 {
entry:
  %c = alloca i32, align 4
  %tok = alloca i32, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.17, %entry
  %call = call i32 @skip_white_space()
  store i32 %call, i32* %c, align 4
  %0 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %0, 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %call1 = call i32 @parse_percent_token()
  store i32 %call1, i32* %tok, align 4
  %1 = load i32, i32* %tok, align 4
  switch i32 %1, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb.2
    i32 9, label %sw.bb.3
    i32 10, label %sw.bb.4
    i32 12, label %sw.bb.5
    i32 14, label %sw.bb.6
    i32 13, label %sw.bb.7
    i32 23, label %sw.bb.8
    i32 15, label %sw.bb.9
    i32 16, label %sw.bb.10
    i32 17, label %sw.bb.11
    i32 19, label %sw.bb.12
    i32 20, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.then
  ret void

sw.bb.2:                                          ; preds = %if.then
  call void @copy_definition()
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  call void @parse_token_decl(i32 1, i32 2)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  call void @parse_token_decl(i32 2, i32 1)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  call void @parse_type_decl()
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  call void @parse_start_decl()
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  call void @parse_union_decl()
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  call void @parse_expect_decl()
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  call void @parse_assoc_decl(i32 2)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  call void @parse_assoc_decl(i32 1)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  call void @parse_assoc_decl(i32 3)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  store i32 1, i32* @semantic_parser, align 4
  call void @open_extra_files()
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  store i32 1, i32* @pure_parser, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2
  br label %if.end.17

if.else:                                          ; preds = %for.cond
  %2 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %2, -1
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  call void @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.else.16:                                       ; preds = %if.else
  %3 = load i32, i32* %c, align 4
  call void @fatals(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0), i32 %3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %sw.epilog
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define void @output_ltype() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.26, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %tobool9 = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.10, %if.end
  ret void
}

declare void @output_headers() #1

; Function Attrs: nounwind uwtable
define void @readgram() #0 {
entry:
  %t = alloca i32, align 4
  %lhs = alloca %struct.bucket*, align 8
  %p = alloca %struct.symbol_list*, align 8
  %p1 = alloca %struct.symbol_list*, align 8
  %bp = alloca %struct.bucket*, align 8
  %crule = alloca %struct.symbol_list*, align 8
  %crule1 = alloca %struct.symbol_list*, align 8
  %actionflag = alloca i32, align 4
  %rulelength = alloca i32, align 4
  %xactions = alloca i32, align 4
  %first_rhs = alloca %struct.bucket*, align 8
  %ssave = alloca %struct.bucket*, align 8
  %t1 = alloca i32, align 4
  %sdummy = alloca %struct.bucket*, align 8
  store %struct.symbol_list* null, %struct.symbol_list** %p1, align 8
  %call = call i32 @lex()
  store i32 %call, i32* %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.185, %entry
  %0 = load i32, i32* %t, align 4
  %cmp = icmp ne i32 %0, 7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %t, align 4
  %cmp1 = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, i32* %t, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i32, i32* %t, align 4
  %cmp3 = icmp eq i32 %4, 5
  br i1 %cmp3, label %if.then, label %if.else.148

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 0, i32* %actionflag, align 4
  store i32 0, i32* %rulelength, align 4
  store i32 0, i32* %xactions, align 4
  store %struct.bucket* null, %struct.bucket** %first_rhs, align 8
  %5 = load i32, i32* %t, align 4
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.then
  %6 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %6, %struct.bucket** %lhs, align 8
  %call6 = call i32 @lex()
  store i32 %call6, i32* %t, align 4
  %7 = load i32, i32* %t, align 4
  %cmp7 = icmp ne i32 %7, 3
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.5
  call void @fatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %8 = load i32, i32* @nrules, align 4
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end.9
  %9 = load i32, i32* %t, align 4
  %cmp12 = icmp eq i32 %9, 5
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  call void @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.11
  %10 = load i32, i32* @start_flag, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.14
  %11 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  store %struct.bucket* %11, %struct.bucket** @startval, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.9
  %12 = load i32, i32* @nrules, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @nrules, align 4
  %13 = load i32, i32* @nitems, align 4
  %inc18 = add nsw i32 %13, 1
  store i32 %inc18, i32* @nitems, align 4
  call void @record_rule_line()
  %call19 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 24)
  %14 = bitcast i8* %call19 to %struct.symbol_list*
  store %struct.symbol_list* %14, %struct.symbol_list** %p, align 8
  %15 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %16 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %16, i32 0, i32 1
  store %struct.bucket* %15, %struct.bucket** %sym, align 8
  %17 = load %struct.symbol_list*, %struct.symbol_list** %p1, align 8
  store %struct.symbol_list* %17, %struct.symbol_list** %crule1, align 8
  %18 = load %struct.symbol_list*, %struct.symbol_list** %p1, align 8
  %tobool20 = icmp ne %struct.symbol_list* %18, null
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.17
  %19 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %20 = load %struct.symbol_list*, %struct.symbol_list** %p1, align 8
  %next = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %20, i32 0, i32 0
  store %struct.symbol_list* %19, %struct.symbol_list** %next, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.end.17
  %21 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  store %struct.symbol_list* %21, %struct.symbol_list** @grammar, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %22 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  store %struct.symbol_list* %22, %struct.symbol_list** %p1, align 8
  %23 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  store %struct.symbol_list* %23, %struct.symbol_list** %crule, align 8
  %24 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %class = getelementptr inbounds %struct.bucket, %struct.bucket* %24, i32 0, i32 8
  %25 = load i8, i8* %class, align 1
  %conv = sext i8 %25 to i32
  %cmp23 = icmp eq i32 %conv, 0
  br i1 %cmp23, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %if.end.22
  %26 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %class26 = getelementptr inbounds %struct.bucket, %struct.bucket* %26, i32 0, i32 8
  store i8 2, i8* %class26, align 1
  %27 = load i32, i32* @nvars, align 4
  %conv27 = trunc i32 %27 to i16
  %28 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %value = getelementptr inbounds %struct.bucket, %struct.bucket* %28, i32 0, i32 4
  store i16 %conv27, i16* %value, align 2
  %29 = load i32, i32* @nvars, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* @nvars, align 4
  br label %if.end.36

if.else.29:                                       ; preds = %if.end.22
  %30 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %class30 = getelementptr inbounds %struct.bucket, %struct.bucket* %30, i32 0, i32 8
  %31 = load i8, i8* %class30, align 1
  %conv31 = sext i8 %31 to i32
  %cmp32 = icmp eq i32 %conv31, 1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.29
  %32 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %tag = getelementptr inbounds %struct.bucket, %struct.bucket* %32, i32 0, i32 2
  %33 = load i8*, i8** %tag, align 8
  %34 = ptrtoint i8* %33 to i32
  call void @fatals(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0), i32 %34, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  br label %for.cond

for.cond:                                         ; preds = %if.end.82, %if.end.36
  %call37 = call i32 @lex()
  store i32 %call37, i32* %t, align 4
  %35 = load i32, i32* %t, align 4
  %cmp38 = icmp eq i32 %35, 1
  br i1 %cmp38, label %if.end.44, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %for.cond
  %36 = load i32, i32* %t, align 4
  %cmp41 = icmp eq i32 %36, 6
  br i1 %cmp41, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %lor.lhs.false.40
  br label %for.end

if.end.44:                                        ; preds = %lor.lhs.false.40, %for.cond
  %37 = load i32, i32* %t, align 4
  %cmp45 = icmp eq i32 %37, 1
  br i1 %cmp45, label %if.then.47, label %if.else.80

if.then.47:                                       ; preds = %if.end.44
  %38 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %38, %struct.bucket** %ssave, align 8
  %call48 = call i32 @lex()
  store i32 %call48, i32* %t1, align 4
  %39 = load i32, i32* %t1, align 4
  call void @unlex(i32 %39)
  %40 = load %struct.bucket*, %struct.bucket** %ssave, align 8
  store %struct.bucket* %40, %struct.bucket** @symval, align 8
  %41 = load i32, i32* %t1, align 4
  %cmp49 = icmp eq i32 %41, 3
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.47
  br label %for.end

if.end.52:                                        ; preds = %if.then.47
  %42 = load %struct.bucket*, %struct.bucket** %first_rhs, align 8
  %tobool53 = icmp ne %struct.bucket* %42, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.52
  %43 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %43, %struct.bucket** %first_rhs, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.52
  %44 = load i32, i32* %actionflag, align 4
  %tobool56 = icmp ne i32 %44, 0
  br i1 %tobool56, label %if.then.57, label %if.end.75

if.then.57:                                       ; preds = %if.end.55
  %call58 = call %struct.bucket* @gensym()
  store %struct.bucket* %call58, %struct.bucket** %sdummy, align 8
  %45 = load i32, i32* @nrules, align 4
  %inc59 = add nsw i32 %45, 1
  store i32 %inc59, i32* @nrules, align 4
  %46 = load i32, i32* @nitems, align 4
  %inc60 = add nsw i32 %46, 1
  store i32 %inc60, i32* @nitems, align 4
  call void @record_rule_line()
  %call61 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 24)
  %47 = bitcast i8* %call61 to %struct.symbol_list*
  store %struct.symbol_list* %47, %struct.symbol_list** %p, align 8
  %48 = load %struct.symbol_list*, %struct.symbol_list** %crule1, align 8
  %tobool62 = icmp ne %struct.symbol_list* %48, null
  br i1 %tobool62, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.then.57
  %49 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %50 = load %struct.symbol_list*, %struct.symbol_list** %crule1, align 8
  %next64 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %50, i32 0, i32 0
  store %struct.symbol_list* %49, %struct.symbol_list** %next64, align 8
  br label %if.end.66

if.else.65:                                       ; preds = %if.then.57
  %51 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  store %struct.symbol_list* %51, %struct.symbol_list** @grammar, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.then.63
  %52 = load %struct.bucket*, %struct.bucket** %sdummy, align 8
  %53 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym67 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %53, i32 0, i32 1
  store %struct.bucket* %52, %struct.bucket** %sym67, align 8
  %call68 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 24)
  %54 = bitcast i8* %call68 to %struct.symbol_list*
  store %struct.symbol_list* %54, %struct.symbol_list** %crule1, align 8
  %55 = load %struct.symbol_list*, %struct.symbol_list** %crule1, align 8
  %56 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %next69 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %56, i32 0, i32 0
  store %struct.symbol_list* %55, %struct.symbol_list** %next69, align 8
  %57 = load %struct.symbol_list*, %struct.symbol_list** %crule, align 8
  %58 = load %struct.symbol_list*, %struct.symbol_list** %crule1, align 8
  %next70 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %58, i32 0, i32 0
  store %struct.symbol_list* %57, %struct.symbol_list** %next70, align 8
  %59 = load i32, i32* @nitems, align 4
  %inc71 = add nsw i32 %59, 1
  store i32 %inc71, i32* @nitems, align 4
  %call72 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 24)
  %60 = bitcast i8* %call72 to %struct.symbol_list*
  store %struct.symbol_list* %60, %struct.symbol_list** %p, align 8
  %61 = load %struct.bucket*, %struct.bucket** %sdummy, align 8
  %62 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym73 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %62, i32 0, i32 1
  store %struct.bucket* %61, %struct.bucket** %sym73, align 8
  %63 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %64 = load %struct.symbol_list*, %struct.symbol_list** %p1, align 8
  %next74 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %64, i32 0, i32 0
  store %struct.symbol_list* %63, %struct.symbol_list** %next74, align 8
  %65 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  store %struct.symbol_list* %65, %struct.symbol_list** %p1, align 8
  store i32 0, i32* %actionflag, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.66, %if.end.55
  %66 = load i32, i32* @nitems, align 4
  %inc76 = add nsw i32 %66, 1
  store i32 %inc76, i32* @nitems, align 4
  %call77 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 24)
  %67 = bitcast i8* %call77 to %struct.symbol_list*
  store %struct.symbol_list* %67, %struct.symbol_list** %p, align 8
  %68 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %69 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym78 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %69, i32 0, i32 1
  store %struct.bucket* %68, %struct.bucket** %sym78, align 8
  %70 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %71 = load %struct.symbol_list*, %struct.symbol_list** %p1, align 8
  %next79 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %71, i32 0, i32 0
  store %struct.symbol_list* %70, %struct.symbol_list** %next79, align 8
  %72 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  store %struct.symbol_list* %72, %struct.symbol_list** %p1, align 8
  br label %if.end.82

if.else.80:                                       ; preds = %if.end.44
  %73 = load %struct.symbol_list*, %struct.symbol_list** %crule, align 8
  %74 = load i32, i32* %rulelength, align 4
  call void @copy_action(%struct.symbol_list* %73, i32 %74)
  store i32 1, i32* %actionflag, align 4
  %75 = load i32, i32* %xactions, align 4
  %inc81 = add nsw i32 %75, 1
  store i32 %inc81, i32* %xactions, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.end.75
  %76 = load i32, i32* %rulelength, align 4
  %inc83 = add nsw i32 %76, 1
  store i32 %inc83, i32* %rulelength, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.51, %if.then.43
  %call84 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 24)
  %77 = bitcast i8* %call84 to %struct.symbol_list*
  store %struct.symbol_list* %77, %struct.symbol_list** %p, align 8
  %78 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %79 = load %struct.symbol_list*, %struct.symbol_list** %p1, align 8
  %next85 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %79, i32 0, i32 0
  store %struct.symbol_list* %78, %struct.symbol_list** %next85, align 8
  %80 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  store %struct.symbol_list* %80, %struct.symbol_list** %p1, align 8
  %81 = load i32, i32* %t, align 4
  %cmp86 = icmp eq i32 %81, 18
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %for.end
  %call89 = call i32 @lex()
  store i32 %call89, i32* %t, align 4
  %82 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %83 = load %struct.symbol_list*, %struct.symbol_list** %crule, align 8
  %ruleprec = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %83, i32 0, i32 2
  store %struct.bucket* %82, %struct.bucket** %ruleprec, align 8
  %call90 = call i32 @lex()
  store i32 %call90, i32* %t, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %for.end
  %84 = load i32, i32* %t, align 4
  %cmp92 = icmp eq i32 %84, 11
  br i1 %cmp92, label %if.then.94, label %if.else.99

if.then.94:                                       ; preds = %if.end.91
  %85 = load i32, i32* @semantic_parser, align 4
  %tobool95 = icmp ne i32 %85, 0
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.then.94
  call void @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.then.94
  %86 = load %struct.symbol_list*, %struct.symbol_list** %crule, align 8
  %87 = load i32, i32* %rulelength, align 4
  call void @copy_guard(%struct.symbol_list* %86, i32 %87)
  %call98 = call i32 @lex()
  store i32 %call98, i32* %t, align 4
  br label %if.end.142

if.else.99:                                       ; preds = %if.end.91
  %88 = load i32, i32* %t, align 4
  %cmp100 = icmp eq i32 %88, 6
  br i1 %cmp100, label %if.then.102, label %if.else.107

if.then.102:                                      ; preds = %if.else.99
  %89 = load i32, i32* %actionflag, align 4
  %tobool103 = icmp ne i32 %89, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.102
  call void @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.then.102
  %90 = load %struct.symbol_list*, %struct.symbol_list** %crule, align 8
  %91 = load i32, i32* %rulelength, align 4
  call void @copy_action(%struct.symbol_list* %90, i32 %91)
  %call106 = call i32 @lex()
  store i32 %call106, i32* %t, align 4
  br label %if.end.141

if.else.107:                                      ; preds = %if.else.99
  %92 = load i32, i32* %xactions, align 4
  %tobool108 = icmp ne i32 %92, 0
  br i1 %tobool108, label %if.end.140, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.107
  %93 = load %struct.bucket*, %struct.bucket** %first_rhs, align 8
  %tobool109 = icmp ne %struct.bucket* %93, null
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.140

land.lhs.true.110:                                ; preds = %land.lhs.true
  %94 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %type_name = getelementptr inbounds %struct.bucket, %struct.bucket* %94, i32 0, i32 3
  %95 = load i8*, i8** %type_name, align 8
  %96 = load %struct.bucket*, %struct.bucket** %first_rhs, align 8
  %type_name111 = getelementptr inbounds %struct.bucket, %struct.bucket* %96, i32 0, i32 3
  %97 = load i8*, i8** %type_name111, align 8
  %cmp112 = icmp ne i8* %95, %97
  br i1 %cmp112, label %if.then.114, label %if.end.140

if.then.114:                                      ; preds = %land.lhs.true.110
  %98 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %type_name115 = getelementptr inbounds %struct.bucket, %struct.bucket* %98, i32 0, i32 3
  %99 = load i8*, i8** %type_name115, align 8
  %cmp116 = icmp eq i8* %99, null
  br i1 %cmp116, label %if.then.127, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.then.114
  %100 = load %struct.bucket*, %struct.bucket** %first_rhs, align 8
  %type_name119 = getelementptr inbounds %struct.bucket, %struct.bucket* %100, i32 0, i32 3
  %101 = load i8*, i8** %type_name119, align 8
  %cmp120 = icmp eq i8* %101, null
  br i1 %cmp120, label %if.then.127, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.118
  %102 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %type_name123 = getelementptr inbounds %struct.bucket, %struct.bucket* %102, i32 0, i32 3
  %103 = load i8*, i8** %type_name123, align 8
  %104 = load %struct.bucket*, %struct.bucket** %first_rhs, align 8
  %type_name124 = getelementptr inbounds %struct.bucket, %struct.bucket* %104, i32 0, i32 3
  %105 = load i8*, i8** %type_name124, align 8
  %call125 = call i32 @strcmp(i8* %103, i8* %105) #5
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.139

if.then.127:                                      ; preds = %lor.lhs.false.122, %lor.lhs.false.118, %if.then.114
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = load i8*, i8** @infile, align 8
  %108 = load i32, i32* @lineno, align 4
  %109 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %type_name128 = getelementptr inbounds %struct.bucket, %struct.bucket* %109, i32 0, i32 3
  %110 = load i8*, i8** %type_name128, align 8
  %tobool129 = icmp ne i8* %110, null
  br i1 %tobool129, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.127
  %111 = load %struct.bucket*, %struct.bucket** %lhs, align 8
  %type_name130 = getelementptr inbounds %struct.bucket, %struct.bucket* %111, i32 0, i32 3
  %112 = load i8*, i8** %type_name130, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.127
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %112, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.56, i32 0, i32 0), %cond.false ]
  %113 = load %struct.bucket*, %struct.bucket** %first_rhs, align 8
  %type_name131 = getelementptr inbounds %struct.bucket, %struct.bucket* %113, i32 0, i32 3
  %114 = load i8*, i8** %type_name131, align 8
  %tobool132 = icmp ne i8* %114, null
  br i1 %tobool132, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %cond.end
  %115 = load %struct.bucket*, %struct.bucket** %first_rhs, align 8
  %type_name134 = getelementptr inbounds %struct.bucket, %struct.bucket* %115, i32 0, i32 3
  %116 = load i8*, i8** %type_name134, align 8
  br label %cond.end.136

cond.false.135:                                   ; preds = %cond.end
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.133
  %cond137 = phi i8* [ %116, %cond.true.133 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.56, i32 0, i32 0), %cond.false.135 ]
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.55, i32 0, i32 0), i8* %107, i32 %108, i8* %cond, i8* %cond137)
  br label %if.end.139

if.end.139:                                       ; preds = %cond.end.136, %lor.lhs.false.122
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %land.lhs.true.110, %land.lhs.true, %if.else.107
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.end.105
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.97
  %117 = load i32, i32* %t, align 4
  %cmp143 = icmp eq i32 %117, 4
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.end.142
  %call146 = call i32 @lex()
  store i32 %call146, i32* %t, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %if.end.142
  br label %if.end.185

if.else.148:                                      ; preds = %lor.lhs.false
  %118 = load i32, i32* %t, align 4
  %cmp149 = icmp eq i32 %118, 9
  br i1 %cmp149, label %if.then.151, label %if.else.153

if.then.151:                                      ; preds = %if.else.148
  call void @parse_token_decl(i32 1, i32 2)
  %call152 = call i32 @lex()
  store i32 %call152, i32* %t, align 4
  br label %if.end.184

if.else.153:                                      ; preds = %if.else.148
  %119 = load i32, i32* %t, align 4
  %cmp154 = icmp eq i32 %119, 10
  br i1 %cmp154, label %if.then.156, label %if.else.158

if.then.156:                                      ; preds = %if.else.153
  call void @parse_token_decl(i32 2, i32 1)
  %call157 = call i32 @lex()
  store i32 %call157, i32* %t, align 4
  br label %if.end.183

if.else.158:                                      ; preds = %if.else.153
  %120 = load i32, i32* %t, align 4
  %cmp159 = icmp eq i32 %120, 12
  br i1 %cmp159, label %if.then.161, label %if.else.163

if.then.161:                                      ; preds = %if.else.158
  %call162 = call i32 @get_type()
  store i32 %call162, i32* %t, align 4
  br label %if.end.182

if.else.163:                                      ; preds = %if.else.158
  %121 = load i32, i32* %t, align 4
  %cmp164 = icmp eq i32 %121, 13
  br i1 %cmp164, label %if.then.166, label %if.else.168

if.then.166:                                      ; preds = %if.else.163
  call void @parse_union_decl()
  %call167 = call i32 @lex()
  store i32 %call167, i32* %t, align 4
  br label %if.end.181

if.else.168:                                      ; preds = %if.else.163
  %122 = load i32, i32* %t, align 4
  %cmp169 = icmp eq i32 %122, 23
  br i1 %cmp169, label %if.then.171, label %if.else.173

if.then.171:                                      ; preds = %if.else.168
  call void @parse_expect_decl()
  %call172 = call i32 @lex()
  store i32 %call172, i32* %t, align 4
  br label %if.end.180

if.else.173:                                      ; preds = %if.else.168
  %123 = load i32, i32* %t, align 4
  %cmp174 = icmp eq i32 %123, 14
  br i1 %cmp174, label %if.then.176, label %if.else.178

if.then.176:                                      ; preds = %if.else.173
  call void @parse_start_decl()
  %call177 = call i32 @lex()
  store i32 %call177, i32* %t, align 4
  br label %if.end.179

if.else.178:                                      ; preds = %if.else.173
  call void @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.178, %if.then.176
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.171
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.166
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.161
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.156
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.151
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.end.147
  br label %while.cond

while.end:                                        ; preds = %land.end
  %124 = load i32, i32* @nrules, align 4
  %cmp186 = icmp eq i32 %124, 0
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %while.end
  call void @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %while.end
  %125 = load i32, i32* @typed, align 4
  %cmp190 = icmp eq i32 %125, 0
  br i1 %cmp190, label %if.then.192, label %if.end.198

if.then.192:                                      ; preds = %if.end.189
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0))
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %tobool194 = icmp ne %struct._IO_FILE* %127, null
  br i1 %tobool194, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %if.then.192
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %if.then.192
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.189
  %129 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* %129, %struct.bucket** %bp, align 8
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc, %if.end.198
  %130 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tobool200 = icmp ne %struct.bucket* %130, null
  br i1 %tobool200, label %for.body, label %for.end.214

for.body:                                         ; preds = %for.cond.199
  %131 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %class201 = getelementptr inbounds %struct.bucket, %struct.bucket* %131, i32 0, i32 8
  %132 = load i8, i8* %class201, align 1
  %conv202 = sext i8 %132 to i32
  %cmp203 = icmp eq i32 %conv202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.212

if.then.205:                                      ; preds = %for.body
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %134 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tag206 = getelementptr inbounds %struct.bucket, %struct.bucket* %134, i32 0, i32 2
  %135 = load i8*, i8** %tag206, align 8
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.59, i32 0, i32 0), i8* %135)
  store i32 1, i32* @failure, align 4
  %136 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %class208 = getelementptr inbounds %struct.bucket, %struct.bucket* %136, i32 0, i32 8
  store i8 2, i8* %class208, align 1
  %137 = load i32, i32* @nvars, align 4
  %inc209 = add nsw i32 %137, 1
  store i32 %inc209, i32* @nvars, align 4
  %conv210 = trunc i32 %137 to i16
  %138 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value211 = getelementptr inbounds %struct.bucket, %struct.bucket* %138, i32 0, i32 4
  store i16 %conv210, i16* %value211, align 2
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.205, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.212
  %139 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %next213 = getelementptr inbounds %struct.bucket, %struct.bucket* %139, i32 0, i32 1
  %140 = load %struct.bucket*, %struct.bucket** %next213, align 8
  store %struct.bucket* %140, %struct.bucket** %bp, align 8
  br label %for.cond.199

for.end.214:                                      ; preds = %for.cond.199
  %141 = load i32, i32* @nsyms, align 4
  %142 = load i32, i32* @nvars, align 4
  %sub = sub nsw i32 %141, %142
  store i32 %sub, i32* @ntokens, align 4
  ret void
}

declare void @output_trailers() #1

; Function Attrs: nounwind uwtable
define void @packsymbols() #0 {
entry:
  %bp = alloca %struct.bucket*, align 8
  %tokno = alloca i32, align 4
  %i = alloca i32, align 4
  %last_user_token_number = alloca i32, align 4
  %i42 = alloca i32, align 4
  store i32 1, i32* %tokno, align 4
  %0 = load i32, i32* @nsyms, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** @tags, align 8
  %2 = load i8**, i8*** @tags, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i8** %arrayidx, align 8
  %3 = load i32, i32* @nsyms, align 4
  %conv2 = sext i32 %3 to i64
  %mul3 = mul i64 %conv2, 2
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %4 = bitcast i8* %call5 to i16*
  store i16* %4, i16** @sprec, align 8
  %5 = load i32, i32* @nsyms, align 4
  %conv6 = sext i32 %5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %call9 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv8)
  %6 = bitcast i8* %call9 to i16*
  store i16* %6, i16** @sassoc, align 8
  store i32 255, i32* @max_user_token_number, align 4
  store i32 255, i32* %last_user_token_number, align 4
  %7 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* %7, %struct.bucket** %bp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tobool = icmp ne %struct.bucket* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %class = getelementptr inbounds %struct.bucket, %struct.bucket* %9, i32 0, i32 8
  %10 = load i8, i8* %class, align 1
  %conv10 = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv10, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* @ntokens, align 4
  %12 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value = getelementptr inbounds %struct.bucket, %struct.bucket* %12, i32 0, i32 4
  %13 = load i16, i16* %value, align 2
  %conv12 = sext i16 %13 to i32
  %add13 = add nsw i32 %conv12, %11
  %conv14 = trunc i32 %add13 to i16
  store i16 %conv14, i16* %value, align 2
  br label %if.end.31

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* @translations, align 4
  %tobool15 = icmp ne i32 %14, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %user_token_number = getelementptr inbounds %struct.bucket, %struct.bucket* %15, i32 0, i32 7
  %16 = load i16, i16* %user_token_number, align 2
  %tobool16 = icmp ne i16 %16, 0
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %last_user_token_number, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %last_user_token_number, align 4
  %conv18 = trunc i32 %inc to i16
  %18 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %user_token_number19 = getelementptr inbounds %struct.bucket, %struct.bucket* %18, i32 0, i32 7
  store i16 %conv18, i16* %user_token_number19, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.17, %land.lhs.true, %if.else
  %19 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %user_token_number20 = getelementptr inbounds %struct.bucket, %struct.bucket* %19, i32 0, i32 7
  %20 = load i16, i16* %user_token_number20, align 2
  %conv21 = sext i16 %20 to i32
  %21 = load i32, i32* @max_user_token_number, align 4
  %cmp22 = icmp sgt i32 %conv21, %21
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end
  %22 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %user_token_number25 = getelementptr inbounds %struct.bucket, %struct.bucket* %22, i32 0, i32 7
  %23 = load i16, i16* %user_token_number25, align 2
  %conv26 = sext i16 %23 to i32
  store i32 %conv26, i32* @max_user_token_number, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end
  %24 = load i32, i32* %tokno, align 4
  %inc28 = add nsw i32 %24, 1
  store i32 %inc28, i32* %tokno, align 4
  %conv29 = trunc i32 %24 to i16
  %25 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value30 = getelementptr inbounds %struct.bucket, %struct.bucket* %25, i32 0, i32 4
  store i16 %conv29, i16* %value30, align 2
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.27, %if.then
  %26 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tag = getelementptr inbounds %struct.bucket, %struct.bucket* %26, i32 0, i32 2
  %27 = load i8*, i8** %tag, align 8
  %28 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value32 = getelementptr inbounds %struct.bucket, %struct.bucket* %28, i32 0, i32 4
  %29 = load i16, i16* %value32, align 2
  %idxprom = sext i16 %29 to i64
  %30 = load i8**, i8*** @tags, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %30, i64 %idxprom
  store i8* %27, i8** %arrayidx33, align 8
  %31 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %prec = getelementptr inbounds %struct.bucket, %struct.bucket* %31, i32 0, i32 5
  %32 = load i16, i16* %prec, align 2
  %33 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value34 = getelementptr inbounds %struct.bucket, %struct.bucket* %33, i32 0, i32 4
  %34 = load i16, i16* %value34, align 2
  %idxprom35 = sext i16 %34 to i64
  %35 = load i16*, i16** @sprec, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %35, i64 %idxprom35
  store i16 %32, i16* %arrayidx36, align 2
  %36 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %assoc = getelementptr inbounds %struct.bucket, %struct.bucket* %36, i32 0, i32 6
  %37 = load i16, i16* %assoc, align 2
  %38 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value37 = getelementptr inbounds %struct.bucket, %struct.bucket* %38, i32 0, i32 4
  %39 = load i16, i16* %value37, align 2
  %idxprom38 = sext i16 %39 to i64
  %40 = load i16*, i16** @sassoc, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %40, i64 %idxprom38
  store i16 %37, i16* %arrayidx39, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %41 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %next = getelementptr inbounds %struct.bucket, %struct.bucket* %41, i32 0, i32 1
  %42 = load %struct.bucket*, %struct.bucket** %next, align 8
  store %struct.bucket* %42, %struct.bucket** %bp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* @translations, align 4
  %tobool40 = icmp ne i32 %43, 0
  br i1 %tobool40, label %if.then.41, label %if.end.57

if.then.41:                                       ; preds = %for.end
  %44 = load i32, i32* @max_user_token_number, align 4
  %add43 = add nsw i32 %44, 1
  %conv44 = sext i32 %add43 to i64
  %mul45 = mul i64 %conv44, 2
  %conv46 = trunc i64 %mul45 to i32
  %call47 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv46)
  %45 = bitcast i8* %call47 to i16*
  store i16* %45, i16** @token_translations, align 8
  store i32 0, i32* %i42, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.54, %if.then.41
  %46 = load i32, i32* %i42, align 4
  %47 = load i32, i32* @max_user_token_number, align 4
  %cmp49 = icmp sle i32 %46, %47
  br i1 %cmp49, label %for.body.51, label %for.end.56

for.body.51:                                      ; preds = %for.cond.48
  %48 = load i32, i32* %i42, align 4
  %idxprom52 = sext i32 %48 to i64
  %49 = load i16*, i16** @token_translations, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %49, i64 %idxprom52
  store i16 2, i16* %arrayidx53, align 2
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.51
  %50 = load i32, i32* %i42, align 4
  %inc55 = add nsw i32 %50, 1
  store i32 %inc55, i32* %i42, align 4
  br label %for.cond.48

for.end.56:                                       ; preds = %for.cond.48
  br label %if.end.57

if.end.57:                                        ; preds = %for.end.56, %for.end
  %51 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* %51, %struct.bucket** %bp, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.90, %if.end.57
  %52 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tobool59 = icmp ne %struct.bucket* %52, null
  br i1 %tobool59, label %for.body.60, label %for.end.92

for.body.60:                                      ; preds = %for.cond.58
  %53 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value61 = getelementptr inbounds %struct.bucket, %struct.bucket* %53, i32 0, i32 4
  %54 = load i16, i16* %value61, align 2
  %conv62 = sext i16 %54 to i32
  %55 = load i32, i32* @ntokens, align 4
  %cmp63 = icmp sge i32 %conv62, %55
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.body.60
  br label %for.inc.90

if.end.66:                                        ; preds = %for.body.60
  %56 = load i32, i32* @translations, align 4
  %tobool67 = icmp ne i32 %56, 0
  br i1 %tobool67, label %if.then.68, label %if.end.89

if.then.68:                                       ; preds = %if.end.66
  %57 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %user_token_number69 = getelementptr inbounds %struct.bucket, %struct.bucket* %57, i32 0, i32 7
  %58 = load i16, i16* %user_token_number69, align 2
  %idxprom70 = sext i16 %58 to i64
  %59 = load i16*, i16** @token_translations, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %59, i64 %idxprom70
  %60 = load i16, i16* %arrayidx71, align 2
  %conv72 = sext i16 %60 to i32
  %cmp73 = icmp ne i32 %conv72, 2
  br i1 %cmp73, label %if.then.75, label %if.end.84

if.then.75:                                       ; preds = %if.then.68
  %61 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %user_token_number76 = getelementptr inbounds %struct.bucket, %struct.bucket* %61, i32 0, i32 7
  %62 = load i16, i16* %user_token_number76, align 2
  %idxprom77 = sext i16 %62 to i64
  %63 = load i16*, i16** @token_translations, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %63, i64 %idxprom77
  %64 = load i16, i16* %arrayidx78, align 2
  %idxprom79 = sext i16 %64 to i64
  %65 = load i8**, i8*** @tags, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %65, i64 %idxprom79
  %66 = load i8*, i8** %arrayidx80, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tag81 = getelementptr inbounds %struct.bucket, %struct.bucket* %68, i32 0, i32 2
  %69 = load i8*, i8** %tag81, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %user_token_number82 = getelementptr inbounds %struct.bucket, %struct.bucket* %71, i32 0, i32 7
  %72 = load i16, i16* %user_token_number82, align 2
  %conv83 = sext i16 %72 to i32
  call void @fatals(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0), i32 %67, i32 %70, i32 %conv83, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.75, %if.then.68
  %73 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value85 = getelementptr inbounds %struct.bucket, %struct.bucket* %73, i32 0, i32 4
  %74 = load i16, i16* %value85, align 2
  %75 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %user_token_number86 = getelementptr inbounds %struct.bucket, %struct.bucket* %75, i32 0, i32 7
  %76 = load i16, i16* %user_token_number86, align 2
  %idxprom87 = sext i16 %76 to i64
  %77 = load i16*, i16** @token_translations, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %77, i64 %idxprom87
  store i16 %74, i16* %arrayidx88, align 2
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.84, %if.end.66
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89, %if.then.65
  %78 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %next91 = getelementptr inbounds %struct.bucket, %struct.bucket* %78, i32 0, i32 1
  %79 = load %struct.bucket*, %struct.bucket** %next91, align 8
  store %struct.bucket* %79, %struct.bucket** %bp, align 8
  br label %for.cond.58

for.end.92:                                       ; preds = %for.cond.58
  %80 = load %struct.bucket*, %struct.bucket** @errtoken, align 8
  %value93 = getelementptr inbounds %struct.bucket, %struct.bucket* %80, i32 0, i32 4
  %81 = load i16, i16* %value93, align 2
  %conv94 = sext i16 %81 to i32
  store i32 %conv94, i32* @error_token_number, align 4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  call void @output_token_defines(%struct._IO_FILE* %82)
  %83 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %class95 = getelementptr inbounds %struct.bucket, %struct.bucket* %83, i32 0, i32 8
  %84 = load i8, i8* %class95, align 1
  %conv96 = sext i8 %84 to i32
  %cmp97 = icmp eq i32 %conv96, 0
  br i1 %cmp97, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %for.end.92
  %85 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %tag100 = getelementptr inbounds %struct.bucket, %struct.bucket* %85, i32 0, i32 2
  %86 = load i8*, i8** %tag100, align 8
  %87 = ptrtoint i8* %86 to i32
  call void @fatals(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i32 0, i32 0), i32 %87, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.109

if.else.101:                                      ; preds = %for.end.92
  %88 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %class102 = getelementptr inbounds %struct.bucket, %struct.bucket* %88, i32 0, i32 8
  %89 = load i8, i8* %class102, align 1
  %conv103 = sext i8 %89 to i32
  %cmp104 = icmp eq i32 %conv103, 1
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.else.101
  %90 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %tag107 = getelementptr inbounds %struct.bucket, %struct.bucket* %90, i32 0, i32 2
  %91 = load i8*, i8** %tag107, align 8
  %92 = ptrtoint i8* %91 to i32
  call void @fatals(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i32 0, i32 0), i32 %92, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.else.101
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.99
  %93 = load %struct.bucket*, %struct.bucket** @startval, align 8
  %value110 = getelementptr inbounds %struct.bucket, %struct.bucket* %93, i32 0, i32 4
  %94 = load i16, i16* %value110, align 2
  %conv111 = sext i16 %94 to i32
  store i32 %conv111, i32* @start_symbol, align 4
  %95 = load i32, i32* @definesflag, align 4
  %tobool112 = icmp ne i32 %95, 0
  br i1 %tobool112, label %if.then.113, label %if.end.135

if.then.113:                                      ; preds = %if.end.109
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  call void @output_token_defines(%struct._IO_FILE* %96)
  %97 = load i32, i32* @semantic_parser, align 4
  %tobool114 = icmp ne i32 %97, 0
  br i1 %tobool114, label %if.then.115, label %if.end.133

if.then.115:                                      ; preds = %if.then.113
  %98 = load i32, i32* @ntokens, align 4
  store i32 %98, i32* %i, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.130, %if.then.115
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* @nsyms, align 4
  %cmp117 = icmp slt i32 %99, %100
  br i1 %cmp117, label %for.body.119, label %for.end.132

for.body.119:                                     ; preds = %for.cond.116
  %101 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %101 to i64
  %102 = load i8**, i8*** @tags, align 8
  %arrayidx121 = getelementptr inbounds i8*, i8** %102, i64 %idxprom120
  %103 = load i8*, i8** %arrayidx121, align 8
  %104 = load i8, i8* %103, align 1
  %conv122 = sext i8 %104 to i32
  %cmp123 = icmp ne i32 %conv122, 64
  br i1 %cmp123, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %for.body.119
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %106 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %106 to i64
  %107 = load i8**, i8*** @tags, align 8
  %arrayidx127 = getelementptr inbounds i8*, i8** %107, i64 %idxprom126
  %108 = load i8*, i8** %arrayidx127, align 8
  %109 = load i32, i32* %i, align 4
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i8* %108, i32 %109)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %for.body.119
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129
  %110 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %110, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.116

for.end.132:                                      ; preds = %for.cond.116
  br label %if.end.133

if.end.133:                                       ; preds = %for.end.132, %if.then.113
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call134 = call i32 @fclose(%struct._IO_FILE* %111)
  store %struct._IO_FILE* null, %struct._IO_FILE** @fdefines, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.133, %if.end.109
  ret void
}

; Function Attrs: nounwind uwtable
define void @packgram() #0 {
entry:
  %itemno = alloca i32, align 4
  %ruleno = alloca i32, align 4
  %p = alloca %struct.symbol_list*, align 8
  %ruleprec = alloca %struct.bucket*, align 8
  %0 = load i32, i32* @nitems, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** @ritem, align 8
  %2 = load i32, i32* @nrules, align 4
  %conv2 = sext i32 %2 to i64
  %mul3 = mul i64 %conv2, 2
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %3 = bitcast i8* %call5 to i16*
  %add.ptr = getelementptr inbounds i16, i16* %3, i64 -1
  store i16* %add.ptr, i16** @rlhs, align 8
  %4 = load i32, i32* @nrules, align 4
  %conv6 = sext i32 %4 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %call9 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv8)
  %5 = bitcast i8* %call9 to i16*
  %add.ptr10 = getelementptr inbounds i16, i16* %5, i64 -1
  store i16* %add.ptr10, i16** @rrhs, align 8
  %6 = load i32, i32* @nrules, align 4
  %conv11 = sext i32 %6 to i64
  %mul12 = mul i64 %conv11, 2
  %conv13 = trunc i64 %mul12 to i32
  %call14 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv13)
  %7 = bitcast i8* %call14 to i16*
  %add.ptr15 = getelementptr inbounds i16, i16* %7, i64 -1
  store i16* %add.ptr15, i16** @rprec, align 8
  %8 = load i32, i32* @nrules, align 4
  %conv16 = sext i32 %8 to i64
  %mul17 = mul i64 %conv16, 2
  %conv18 = trunc i64 %mul17 to i32
  %call19 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv18)
  %9 = bitcast i8* %call19 to i16*
  %add.ptr20 = getelementptr inbounds i16, i16* %9, i64 -1
  store i16* %add.ptr20, i16** @rassoc, align 8
  store i32 0, i32* %itemno, align 4
  store i32 1, i32* %ruleno, align 4
  %10 = load %struct.symbol_list*, %struct.symbol_list** @grammar, align 8
  store %struct.symbol_list* %10, %struct.symbol_list** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.64, %entry
  %11 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %tobool = icmp ne %struct.symbol_list* %11, null
  br i1 %tobool, label %while.body, label %while.end.65

while.body:                                       ; preds = %while.cond
  %12 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %12, i32 0, i32 1
  %13 = load %struct.bucket*, %struct.bucket** %sym, align 8
  %value = getelementptr inbounds %struct.bucket, %struct.bucket* %13, i32 0, i32 4
  %14 = load i16, i16* %value, align 2
  %15 = load i32, i32* %ruleno, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i16*, i16** @rlhs, align 8
  %arrayidx = getelementptr inbounds i16, i16* %16, i64 %idxprom
  store i16 %14, i16* %arrayidx, align 2
  %17 = load i32, i32* %itemno, align 4
  %conv21 = trunc i32 %17 to i16
  %18 = load i32, i32* %ruleno, align 4
  %idxprom22 = sext i32 %18 to i64
  %19 = load i16*, i16** @rrhs, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %19, i64 %idxprom22
  store i16 %conv21, i16* %arrayidx23, align 2
  %20 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %ruleprec24 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %20, i32 0, i32 2
  %21 = load %struct.bucket*, %struct.bucket** %ruleprec24, align 8
  store %struct.bucket* %21, %struct.bucket** %ruleprec, align 8
  %22 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %next = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %22, i32 0, i32 0
  %23 = load %struct.symbol_list*, %struct.symbol_list** %next, align 8
  store %struct.symbol_list* %23, %struct.symbol_list** %p, align 8
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.46, %while.body
  %24 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %tobool26 = icmp ne %struct.symbol_list* %24, null
  br i1 %tobool26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.25
  %25 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym27 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %25, i32 0, i32 1
  %26 = load %struct.bucket*, %struct.bucket** %sym27, align 8
  %tobool28 = icmp ne %struct.bucket* %26, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.25
  %27 = phi i1 [ false, %while.cond.25 ], [ %tobool28, %land.rhs ]
  br i1 %27, label %while.body.29, label %while.end

while.body.29:                                    ; preds = %land.end
  %28 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym30 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %28, i32 0, i32 1
  %29 = load %struct.bucket*, %struct.bucket** %sym30, align 8
  %value31 = getelementptr inbounds %struct.bucket, %struct.bucket* %29, i32 0, i32 4
  %30 = load i16, i16* %value31, align 2
  %31 = load i32, i32* %itemno, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %itemno, align 4
  %idxprom32 = sext i32 %31 to i64
  %32 = load i16*, i16** @ritem, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %32, i64 %idxprom32
  store i16 %30, i16* %arrayidx33, align 2
  %33 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym34 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %33, i32 0, i32 1
  %34 = load %struct.bucket*, %struct.bucket** %sym34, align 8
  %class = getelementptr inbounds %struct.bucket, %struct.bucket* %34, i32 0, i32 8
  %35 = load i8, i8* %class, align 1
  %conv35 = sext i8 %35 to i32
  %cmp = icmp eq i32 %conv35, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.29
  %36 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym37 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %36, i32 0, i32 1
  %37 = load %struct.bucket*, %struct.bucket** %sym37, align 8
  %prec = getelementptr inbounds %struct.bucket, %struct.bucket* %37, i32 0, i32 5
  %38 = load i16, i16* %prec, align 2
  %39 = load i32, i32* %ruleno, align 4
  %idxprom38 = sext i32 %39 to i64
  %40 = load i16*, i16** @rprec, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %40, i64 %idxprom38
  store i16 %38, i16* %arrayidx39, align 2
  %41 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %sym40 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %41, i32 0, i32 1
  %42 = load %struct.bucket*, %struct.bucket** %sym40, align 8
  %assoc = getelementptr inbounds %struct.bucket, %struct.bucket* %42, i32 0, i32 6
  %43 = load i16, i16* %assoc, align 2
  %44 = load i32, i32* %ruleno, align 4
  %idxprom41 = sext i32 %44 to i64
  %45 = load i16*, i16** @rassoc, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %45, i64 %idxprom41
  store i16 %43, i16* %arrayidx42, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.29
  %46 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %tobool43 = icmp ne %struct.symbol_list* %46, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end
  %47 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %next45 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %47, i32 0, i32 0
  %48 = load %struct.symbol_list*, %struct.symbol_list** %next45, align 8
  store %struct.symbol_list* %48, %struct.symbol_list** %p, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end
  br label %while.cond.25

while.end:                                        ; preds = %land.end
  %49 = load %struct.bucket*, %struct.bucket** %ruleprec, align 8
  %tobool47 = icmp ne %struct.bucket* %49, null
  br i1 %tobool47, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %while.end
  %50 = load %struct.bucket*, %struct.bucket** %ruleprec, align 8
  %prec49 = getelementptr inbounds %struct.bucket, %struct.bucket* %50, i32 0, i32 5
  %51 = load i16, i16* %prec49, align 2
  %52 = load i32, i32* %ruleno, align 4
  %idxprom50 = sext i32 %52 to i64
  %53 = load i16*, i16** @rprec, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %53, i64 %idxprom50
  store i16 %51, i16* %arrayidx51, align 2
  %54 = load %struct.bucket*, %struct.bucket** %ruleprec, align 8
  %assoc52 = getelementptr inbounds %struct.bucket, %struct.bucket* %54, i32 0, i32 6
  %55 = load i16, i16* %assoc52, align 2
  %56 = load i32, i32* %ruleno, align 4
  %idxprom53 = sext i32 %56 to i64
  %57 = load i16*, i16** @rassoc, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %57, i64 %idxprom53
  store i16 %55, i16* %arrayidx54, align 2
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.48, %while.end
  %58 = load i32, i32* %ruleno, align 4
  %sub = sub nsw i32 0, %58
  %conv56 = trunc i32 %sub to i16
  %59 = load i32, i32* %itemno, align 4
  %inc57 = add nsw i32 %59, 1
  store i32 %inc57, i32* %itemno, align 4
  %idxprom58 = sext i32 %59 to i64
  %60 = load i16*, i16** @ritem, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %60, i64 %idxprom58
  store i16 %conv56, i16* %arrayidx59, align 2
  %61 = load i32, i32* %ruleno, align 4
  %inc60 = add nsw i32 %61, 1
  store i32 %inc60, i32* %ruleno, align 4
  %62 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %tobool61 = icmp ne %struct.symbol_list* %62, null
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.55
  %63 = load %struct.symbol_list*, %struct.symbol_list** %p, align 8
  %next63 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %63, i32 0, i32 0
  %64 = load %struct.symbol_list*, %struct.symbol_list** %next63, align 8
  store %struct.symbol_list* %64, %struct.symbol_list** %p, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.55
  br label %while.cond

while.end.65:                                     ; preds = %while.cond
  %65 = load i32, i32* %itemno, align 4
  %idxprom66 = sext i32 %65 to i64
  %66 = load i16*, i16** @ritem, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %66, i64 %idxprom66
  store i16 0, i16* %arrayidx67, align 2
  ret void
}

declare void @free_symtab() #1

declare i32 @skip_white_space() #1

declare i32 @parse_percent_token() #1

; Function Attrs: nounwind uwtable
define void @copy_definition() #0 {
entry:
  %c = alloca i32, align 4
  %match = alloca i32, align 4
  %ended = alloca i32, align 4
  %after_percent = alloca i32, align 4
  %0 = load i32, i32* @nolinesflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %2 = load i32, i32* @lineno, align 4
  %3 = load i8*, i8** @infile, align 8
  %call = call i8* @mybasename(i8* %3)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 %2, i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %after_percent, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  store i32 %call2, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.76, %if.then.33, %if.end
  %5 = load i32, i32* %c, align 4
  switch i32 %5, label %sw.default [
    i32 10, label %sw.bb
    i32 37, label %sw.bb.4
    i32 39, label %sw.bb.5
    i32 34, label %sw.bb.5
    i32 47, label %sw.bb.29
    i32 -1, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %for.cond
  %6 = load i32, i32* %c, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call3 = call i32 @_IO_putc(i32 %6, %struct._IO_FILE* %7)
  %8 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @lineno, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.cond
  store i32 -1, i32* %after_percent, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.cond, %for.cond
  %9 = load i32, i32* %c, align 4
  store i32 %9, i32* %match, align 4
  %10 = load i32, i32* %c, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call6 = call i32 @_IO_putc(i32 %10, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call7 = call i32 @_IO_getc(%struct._IO_FILE* %12)
  store i32 %call7, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %sw.bb.5
  %13 = load i32, i32* %c, align 4
  %14 = load i32, i32* %match, align 4
  %cmp = icmp ne i32 %13, %14
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %15, -1
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %16 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %16, 10
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %while.body
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %lor.lhs.false
  %17 = load i32, i32* %c, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call12 = call i32 @_IO_putc(i32 %17, %struct._IO_FILE* %18)
  %19 = load i32, i32* %c, align 4
  %cmp13 = icmp eq i32 %19, 92
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call15 = call i32 @_IO_getc(%struct._IO_FILE* %20)
  store i32 %call15, i32* %c, align 4
  %21 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %21, -1
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.then.14
  %22 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %22, 10
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.17, %if.then.14
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false.17
  %23 = load i32, i32* %c, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call21 = call i32 @_IO_putc(i32 %23, %struct._IO_FILE* %24)
  %25 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %25, 10
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.20
  %26 = load i32, i32* @lineno, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* @lineno, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.11
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call27 = call i32 @_IO_getc(%struct._IO_FILE* %27)
  store i32 %call27, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* %c, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call28 = call i32 @_IO_putc(i32 %28, %struct._IO_FILE* %29)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.cond
  %30 = load i32, i32* %c, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call30 = call i32 @_IO_putc(i32 %30, %struct._IO_FILE* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call31 = call i32 @_IO_getc(%struct._IO_FILE* %32)
  store i32 %call31, i32* %c, align 4
  %33 = load i32, i32* %c, align 4
  %cmp32 = icmp ne i32 %33, 42
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %sw.bb.29
  br label %for.cond

if.end.34:                                        ; preds = %sw.bb.29
  %34 = load i32, i32* %c, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call35 = call i32 @_IO_putc(i32 %34, %struct._IO_FILE* %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call36 = call i32 @_IO_getc(%struct._IO_FILE* %36)
  store i32 %call36, i32* %c, align 4
  store i32 0, i32* %ended, align 4
  br label %while.cond.37

while.cond.37:                                    ; preds = %if.end.65, %if.end.34
  %37 = load i32, i32* %ended, align 4
  %tobool38 = icmp ne i32 %37, 0
  %lnot = xor i1 %tobool38, true
  br i1 %lnot, label %while.body.39, label %while.end.66

while.body.39:                                    ; preds = %while.cond.37
  %38 = load i32, i32* %c, align 4
  %cmp40 = icmp eq i32 %38, 42
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %while.body.39
  br label %while.cond.42

while.cond.42:                                    ; preds = %while.body.44, %if.then.41
  %39 = load i32, i32* %c, align 4
  %cmp43 = icmp eq i32 %39, 42
  br i1 %cmp43, label %while.body.44, label %while.end.47

while.body.44:                                    ; preds = %while.cond.42
  %40 = load i32, i32* %c, align 4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call45 = call i32 @_IO_putc(i32 %40, %struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call46 = call i32 @_IO_getc(%struct._IO_FILE* %42)
  store i32 %call46, i32* %c, align 4
  br label %while.cond.42

while.end.47:                                     ; preds = %while.cond.42
  %43 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %43, 47
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %while.end.47
  %44 = load i32, i32* %c, align 4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call50 = call i32 @_IO_putc(i32 %44, %struct._IO_FILE* %45)
  store i32 1, i32* %ended, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %while.end.47
  br label %if.end.65

if.else:                                          ; preds = %while.body.39
  %46 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %46, 10
  br i1 %cmp52, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %if.else
  %47 = load i32, i32* @lineno, align 4
  %inc54 = add nsw i32 %47, 1
  store i32 %inc54, i32* @lineno, align 4
  %48 = load i32, i32* %c, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call55 = call i32 @_IO_putc(i32 %48, %struct._IO_FILE* %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call56 = call i32 @_IO_getc(%struct._IO_FILE* %50)
  store i32 %call56, i32* %c, align 4
  br label %if.end.64

if.else.57:                                       ; preds = %if.else
  %51 = load i32, i32* %c, align 4
  %cmp58 = icmp eq i32 %51, -1
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.57
  call void @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.63

if.else.60:                                       ; preds = %if.else.57
  %52 = load i32, i32* %c, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call61 = call i32 @_IO_putc(i32 %52, %struct._IO_FILE* %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call62 = call i32 @_IO_getc(%struct._IO_FILE* %54)
  store i32 %call62, i32* %c, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.53
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.51
  br label %while.cond.37

while.end.66:                                     ; preds = %while.cond.37
  br label %sw.epilog

sw.bb.67:                                         ; preds = %for.cond
  call void @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.default

sw.default:                                       ; preds = %for.cond, %sw.bb.67
  %55 = load i32, i32* %c, align 4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call68 = call i32 @_IO_putc(i32 %55, %struct._IO_FILE* %56)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end.66, %while.end, %sw.bb.4, %sw.bb
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call69 = call i32 @_IO_getc(%struct._IO_FILE* %57)
  store i32 %call69, i32* %c, align 4
  %58 = load i32, i32* %after_percent, align 4
  %tobool70 = icmp ne i32 %58, 0
  br i1 %tobool70, label %if.then.71, label %if.end.76

if.then.71:                                       ; preds = %sw.epilog
  %59 = load i32, i32* %c, align 4
  %cmp72 = icmp eq i32 %59, 125
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.71
  ret void

if.end.74:                                        ; preds = %if.then.71
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call75 = call i32 @_IO_putc(i32 37, %struct._IO_FILE* %60)
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.74, %sw.epilog
  store i32 0, i32* %after_percent, align 4
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define void @parse_token_decl(i32 %what_is, i32 %what_is_not) #0 {
entry:
  %what_is.addr = alloca i32, align 4
  %what_is_not.addr = alloca i32, align 4
  %token = alloca i32, align 4
  %prev = alloca i32, align 4
  %typename = alloca i8*, align 8
  %k = alloca i32, align 4
  store i32 %what_is, i32* %what_is.addr, align 4
  store i32 %what_is_not, i32* %what_is_not.addr, align 4
  store i32 0, i32* %token, align 4
  store i8* null, i8** %typename, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.50, %if.then.4, %entry
  %call = call i32 @skip_white_space()
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call1 = call i32 @ungetc(i32 %call, %struct._IO_FILE* %0)
  %cmp = icmp eq i32 %call1, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  ret void

if.end:                                           ; preds = %for.cond
  %1 = load i32, i32* %token, align 4
  store i32 %1, i32* %prev, align 4
  %call2 = call i32 @lex()
  store i32 %call2, i32* %token, align 4
  %2 = load i32, i32* %token, align 4
  %cmp3 = icmp eq i32 %2, 2
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %for.cond

if.end.5:                                         ; preds = %if.end
  %3 = load i32, i32* %token, align 4
  %cmp6 = icmp eq i32 %3, 21
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %call8 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0)) #5
  %conv = trunc i64 %call8 to i32
  store i32 %conv, i32* %k, align 4
  %4 = load i8*, i8** %typename, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  %5 = load i8*, i8** %typename, align 8
  call void @free(i8* %5) #6
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.7
  %6 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, 1
  %conv11 = sext i32 %add to i64
  %mul = mul i64 %conv11, 1
  %conv12 = trunc i64 %mul to i32
  %call13 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv12)
  store i8* %call13, i8** %typename, align 8
  %7 = load i8*, i8** %typename, align 8
  %call14 = call i8* @strcpy(i8* %7, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0)) #6
  br label %if.end.50

if.else:                                          ; preds = %if.end.5
  %8 = load i32, i32* %token, align 4
  %cmp15 = icmp eq i32 %8, 1
  br i1 %cmp15, label %if.then.17, label %if.else.40

if.then.17:                                       ; preds = %if.else
  %9 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %class = getelementptr inbounds %struct.bucket, %struct.bucket* %9, i32 0, i32 8
  %10 = load i8, i8* %class, align 1
  %conv18 = sext i8 %10 to i32
  %11 = load i32, i32* %what_is_not.addr, align 4
  %cmp19 = icmp eq i32 %conv18, %11
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.17
  %12 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %tag = getelementptr inbounds %struct.bucket, %struct.bucket* %12, i32 0, i32 2
  %13 = load i8*, i8** %tag, align 8
  %14 = ptrtoint i8* %13 to i32
  call void @fatals(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 %14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.17
  %15 = load i32, i32* %what_is.addr, align 4
  %conv23 = trunc i32 %15 to i8
  %16 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %class24 = getelementptr inbounds %struct.bucket, %struct.bucket* %16, i32 0, i32 8
  store i8 %conv23, i8* %class24, align 1
  %17 = load i32, i32* %what_is.addr, align 4
  %cmp25 = icmp eq i32 %17, 2
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.22
  %18 = load i32, i32* @nvars, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* @nvars, align 4
  %conv28 = trunc i32 %18 to i16
  %19 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %value = getelementptr inbounds %struct.bucket, %struct.bucket* %19, i32 0, i32 4
  store i16 %conv28, i16* %value, align 2
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.22
  %20 = load i8*, i8** %typename, align 8
  %tobool30 = icmp ne i8* %20, null
  br i1 %tobool30, label %if.then.31, label %if.end.39

if.then.31:                                       ; preds = %if.end.29
  %21 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %type_name = getelementptr inbounds %struct.bucket, %struct.bucket* %21, i32 0, i32 3
  %22 = load i8*, i8** %type_name, align 8
  %cmp32 = icmp eq i8* %22, null
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.then.31
  %23 = load i8*, i8** %typename, align 8
  %24 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %type_name35 = getelementptr inbounds %struct.bucket, %struct.bucket* %24, i32 0, i32 3
  store i8* %23, i8** %type_name35, align 8
  br label %if.end.38

if.else.36:                                       ; preds = %if.then.31
  %25 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %tag37 = getelementptr inbounds %struct.bucket, %struct.bucket* %25, i32 0, i32 2
  %26 = load i8*, i8** %tag37, align 8
  %27 = ptrtoint i8* %26 to i32
  call void @fatals(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.29
  br label %if.end.49

if.else.40:                                       ; preds = %if.else
  %28 = load i32, i32* %prev, align 4
  %cmp41 = icmp eq i32 %28, 1
  br i1 %cmp41, label %land.lhs.true, label %if.else.47

land.lhs.true:                                    ; preds = %if.else.40
  %29 = load i32, i32* %token, align 4
  %cmp43 = icmp eq i32 %29, 22
  br i1 %cmp43, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %land.lhs.true
  %30 = load i32, i32* @numval, align 4
  %conv46 = trunc i32 %30 to i16
  %31 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %user_token_number = getelementptr inbounds %struct.bucket, %struct.bucket* %31, i32 0, i32 7
  store i16 %conv46, i16* %user_token_number, align 2
  store i32 1, i32* @translations, align 4
  br label %if.end.48

if.else.47:                                       ; preds = %land.lhs.true, %if.else.40
  call void @fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.39
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.10
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define void @parse_type_decl() #0 {
entry:
  %k = alloca i32, align 4
  %name = alloca i8*, align 8
  %t = alloca i32, align 4
  %call = call i32 @lex()
  %cmp = icmp ne i32 %call, 21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0)) #5
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %k, align 4
  %0 = load i32, i32* %k, align 4
  %add = add nsw i32 %0, 1
  %conv2 = sext i32 %add to i64
  %mul = mul i64 %conv2, 1
  %conv3 = trunc i64 %mul to i32
  %call4 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv3)
  store i8* %call4, i8** %name, align 8
  %1 = load i8*, i8** %name, align 8
  %call5 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0)) #6
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end
  %call6 = call i32 @skip_white_space()
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call7 = call i32 @ungetc(i32 %call6, %struct._IO_FILE* %2)
  %cmp8 = icmp eq i32 %call7, 37
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.cond
  ret void

if.end.11:                                        ; preds = %for.cond
  %call12 = call i32 @lex()
  store i32 %call12, i32* %t, align 4
  %3 = load i32, i32* %t, align 4
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end.11
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.11
  %4 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %type_name = getelementptr inbounds %struct.bucket, %struct.bucket* %4, i32 0, i32 3
  %5 = load i8*, i8** %type_name, align 8
  %cmp14 = icmp eq i8* %5, null
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %sw.bb.13
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %type_name17 = getelementptr inbounds %struct.bucket, %struct.bucket* %7, i32 0, i32 3
  store i8* %6, i8** %type_name17, align 8
  br label %if.end.18

if.else:                                          ; preds = %sw.bb.13
  %8 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %tag = getelementptr inbounds %struct.bucket, %struct.bucket* %8, i32 0, i32 2
  %9 = load i8*, i8** %tag, align 8
  %10 = ptrtoint i8* %9 to i32
  call void @fatals(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.11
  call void @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.18, %sw.bb
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define void @parse_start_decl() #0 {
entry:
  %0 = load i32, i32* @start_flag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @start_flag, align 4
  %call = call i32 @lex()
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %1 = load %struct.bucket*, %struct.bucket** @symval, align 8
  store %struct.bucket* %1, %struct.bucket** @startval, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @parse_union_decl() #0 {
entry:
  %c = alloca i32, align 4
  %count = alloca i32, align 4
  %in_comment = alloca i32, align 4
  %0 = load i32, i32* @typed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @typed, align 4
  %1 = load i32, i32* @nolinesflag, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %3 = load i32, i32* @lineno, align 4
  %4 = load i8*, i8** @infile, align 8
  %call = call i8* @mybasename(i8* %4)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 %3, i8* %call)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %tobool7 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  store i32 0, i32* %count, align 4
  store i32 0, i32* %in_comment, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call11 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  store i32 %call11, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.10
  %10 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %10, -1
  br i1 %cmp, label %while.body, label %while.end.72

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %c, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call12 = call i32 @_IO_putc(i32 %11, %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %tobool13 = icmp ne %struct._IO_FILE* %13, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %while.body
  %14 = load i32, i32* %c, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call15 = call i32 @_IO_putc(i32 %14, %struct._IO_FILE* %15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %while.body
  %16 = load i32, i32* %c, align 4
  switch i32 %16, label %sw.epilog [
    i32 10, label %sw.bb
    i32 47, label %sw.bb.17
    i32 123, label %sw.bb.55
    i32 125, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end.16
  %17 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* @lineno, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call18 = call i32 @_IO_getc(%struct._IO_FILE* %18)
  store i32 %call18, i32* %c, align 4
  %19 = load i32, i32* %c, align 4
  %cmp19 = icmp ne i32 %19, 42
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %sw.bb.17
  %20 = load i32, i32* %c, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call21 = call i32 @ungetc(i32 %20, %struct._IO_FILE* %21)
  br label %if.end.54

if.else.22:                                       ; preds = %sw.bb.17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call23 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %tobool24 = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.else.22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call26 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %24)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.else.22
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call28 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call28, i32* %c, align 4
  store i32 1, i32* %in_comment, align 4
  br label %while.cond.29

while.cond.29:                                    ; preds = %if.end.53, %if.end.27
  %26 = load i32, i32* %in_comment, align 4
  %tobool30 = icmp ne i32 %26, 0
  br i1 %tobool30, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %while.cond.29
  %27 = load i32, i32* %c, align 4
  %cmp32 = icmp eq i32 %27, -1
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %while.body.31
  call void @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %while.body.31
  %28 = load i32, i32* %c, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call35 = call i32 @_IO_putc(i32 %28, %struct._IO_FILE* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %tobool36 = icmp ne %struct._IO_FILE* %30, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.34
  %31 = load i32, i32* %c, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call38 = call i32 @_IO_putc(i32 %31, %struct._IO_FILE* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.34
  %33 = load i32, i32* %c, align 4
  %cmp40 = icmp eq i32 %33, 42
  br i1 %cmp40, label %if.then.41, label %if.else.51

if.then.41:                                       ; preds = %if.end.39
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call42 = call i32 @_IO_getc(%struct._IO_FILE* %34)
  store i32 %call42, i32* %c, align 4
  %35 = load i32, i32* %c, align 4
  %cmp43 = icmp eq i32 %35, 47
  br i1 %cmp43, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %if.then.41
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call45 = call i32 @_IO_putc(i32 47, %struct._IO_FILE* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %tobool46 = icmp ne %struct._IO_FILE* %37, null
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.44
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call48 = call i32 @_IO_putc(i32 47, %struct._IO_FILE* %38)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.44
  store i32 0, i32* %in_comment, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.41
  br label %if.end.53

if.else.51:                                       ; preds = %if.end.39
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call52 = call i32 @_IO_getc(%struct._IO_FILE* %39)
  store i32 %call52, i32* %c, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.end.50
  br label %while.cond.29

while.end:                                        ; preds = %while.cond.29
  br label %if.end.54

if.end.54:                                        ; preds = %while.end, %if.then.20
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.16
  %40 = load i32, i32* %count, align 4
  %inc56 = add nsw i32 %40, 1
  store i32 %inc56, i32* %count, align 4
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.16
  %41 = load i32, i32* %count, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %count, align 4
  %42 = load i32, i32* %count, align 4
  %cmp58 = icmp eq i32 %42, 0
  br i1 %cmp58, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %sw.bb.57
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %tobool61 = icmp ne %struct._IO_FILE* %44, null
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.then.59
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @fdefines, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.then.59
  %call65 = call i32 @skip_white_space()
  store i32 %call65, i32* %c, align 4
  %46 = load i32, i32* %c, align 4
  %cmp66 = icmp ne i32 %46, 59
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.64
  %47 = load i32, i32* %c, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call68 = call i32 @ungetc(i32 %47, %struct._IO_FILE* %48)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.64
  br label %while.end.72

if.end.70:                                        ; preds = %sw.bb.57
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.70, %if.end.16, %sw.bb.55, %if.end.54, %sw.bb
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call71 = call i32 @_IO_getc(%struct._IO_FILE* %49)
  store i32 %call71, i32* %c, align 4
  br label %while.cond

while.end.72:                                     ; preds = %if.end.69, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @parse_expect_decl() #0 {
entry:
  %c = alloca i32, align 4
  %count = alloca i32, align 4
  %buffer = alloca [20 x i8], align 16
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %2, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %3 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  store i32 %call2, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  store i32 0, i32* %count, align 4
  br label %while.cond.3

while.cond.3:                                     ; preds = %if.end, %while.end
  %5 = load i32, i32* %c, align 4
  %cmp4 = icmp sge i32 %5, 48
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.3
  %6 = load i32, i32* %c, align 4
  %cmp5 = icmp sle i32 %6, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.3
  %7 = phi i1 [ false, %while.cond.3 ], [ %cmp5, %land.rhs ]
  br i1 %7, label %while.body.6, label %while.end.9

while.body.6:                                     ; preds = %land.end
  %8 = load i32, i32* %count, align 4
  %cmp7 = icmp slt i32 %8, 20
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.6
  %9 = load i32, i32* %c, align 4
  %conv = trunc i32 %9 to i8
  %10 = load i32, i32* %count, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %count, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [20 x i8], [20 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %11)
  store i32 %call8, i32* %c, align 4
  br label %while.cond.3

while.end.9:                                      ; preds = %land.end
  %12 = load i32, i32* %c, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call10 = call i32 @ungetc(i32 %12, %struct._IO_FILE* %13)
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buffer, i32 0, i32 0
  %call11 = call i32 @atoi(i8* %arraydecay) #5
  store i32 %call11, i32* @expected_conflicts, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @parse_assoc_decl(i32 %assoc) #0 {
entry:
  %assoc.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %name = alloca i8*, align 8
  %prev = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %assoc, i32* %assoc.addr, align 4
  store i8* null, i8** %name, align 8
  store i32 0, i32* %prev, align 4
  %0 = load i32, i32* @lastprec, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @lastprec, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %call = call i32 @skip_white_space()
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call1 = call i32 @ungetc(i32 %call, %struct._IO_FILE* %1)
  %cmp = icmp eq i32 %call1, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %return

if.end:                                           ; preds = %for.cond
  %call2 = call i32 @lex()
  store i32 %call2, i32* %t, align 4
  %2 = load i32, i32* %t, align 4
  switch i32 %2, label %sw.default [
    i32 21, label %sw.bb
    i32 2, label %sw.bb.8
    i32 1, label %sw.bb.9
    i32 22, label %sw.bb.27
    i32 4, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end
  %call3 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0)) #5
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %k, align 4
  %3 = load i32, i32* %k, align 4
  %add = add nsw i32 %3, 1
  %conv4 = sext i32 %add to i64
  %mul = mul i64 %conv4, 1
  %conv5 = trunc i64 %mul to i32
  %call6 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv5)
  store i8* %call6, i8** %name, align 8
  %4 = load i8*, i8** %name, align 8
  %call7 = call i8* @strcpy(i8* %4, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0)) #6
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %5 = load i32, i32* @lastprec, align 4
  %conv10 = trunc i32 %5 to i16
  %6 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %prec = getelementptr inbounds %struct.bucket, %struct.bucket* %6, i32 0, i32 5
  store i16 %conv10, i16* %prec, align 2
  %7 = load i32, i32* %assoc.addr, align 4
  %conv11 = trunc i32 %7 to i16
  %8 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %assoc12 = getelementptr inbounds %struct.bucket, %struct.bucket* %8, i32 0, i32 6
  store i16 %conv11, i16* %assoc12, align 2
  %9 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %class = getelementptr inbounds %struct.bucket, %struct.bucket* %9, i32 0, i32 8
  %10 = load i8, i8* %class, align 1
  %conv13 = sext i8 %10 to i32
  %cmp14 = icmp eq i32 %conv13, 2
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %sw.bb.9
  %11 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %tag = getelementptr inbounds %struct.bucket, %struct.bucket* %11, i32 0, i32 2
  %12 = load i8*, i8** %tag, align 8
  %13 = ptrtoint i8* %12 to i32
  call void @fatals(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 %13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %sw.bb.9
  %14 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %class18 = getelementptr inbounds %struct.bucket, %struct.bucket* %14, i32 0, i32 8
  store i8 1, i8* %class18, align 1
  %15 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %if.end.17
  %16 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %type_name = getelementptr inbounds %struct.bucket, %struct.bucket* %16, i32 0, i32 3
  %17 = load i8*, i8** %type_name, align 8
  %cmp20 = icmp eq i8* %17, null
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.19
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %type_name23 = getelementptr inbounds %struct.bucket, %struct.bucket* %19, i32 0, i32 3
  store i8* %18, i8** %type_name23, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.then.19
  %20 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %tag24 = getelementptr inbounds %struct.bucket, %struct.bucket* %20, i32 0, i32 2
  %21 = load i8*, i8** %tag24, align 8
  %22 = ptrtoint i8* %21 to i32
  call void @fatals(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.17
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end
  %23 = load i32, i32* %prev, align 4
  %cmp28 = icmp eq i32 %23, 1
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %sw.bb.27
  %24 = load i32, i32* @numval, align 4
  %conv31 = trunc i32 %24 to i16
  %25 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %user_token_number = getelementptr inbounds %struct.bucket, %struct.bucket* %25, i32 0, i32 7
  store i16 %conv31, i16* %user_token_number, align 2
  store i32 1, i32* @translations, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %sw.bb.27
  call void @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.30
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end
  br label %return

sw.default:                                       ; preds = %if.end
  call void @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.33, %if.end.26, %sw.bb.8, %sw.bb
  %26 = load i32, i32* %t, align 4
  store i32 %26, i32* %prev, align 4
  br label %for.cond

return:                                           ; preds = %sw.bb.34, %if.then
  ret void
}

declare void @open_extra_files() #1

declare void @fatal(i8*) #1

declare void @fatals(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare i32 @lex() #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @get_type_name(i32 %n, %struct.symbol_list* %rule) #0 {
entry:
  %n.addr = alloca i32, align 4
  %rule.addr = alloca %struct.symbol_list*, align 8
  %i = alloca i32, align 4
  %rp = alloca %struct.symbol_list*, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.symbol_list* %rule, %struct.symbol_list** %rule.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @get_type_name.msg, align 8
  call void @fatal(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  store %struct.symbol_list* %2, %struct.symbol_list** %rp, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.symbol_list*, %struct.symbol_list** %rp, align 8
  %next = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %5, i32 0, i32 0
  %6 = load %struct.symbol_list*, %struct.symbol_list** %next, align 8
  store %struct.symbol_list* %6, %struct.symbol_list** %rp, align 8
  %7 = load %struct.symbol_list*, %struct.symbol_list** %rp, align 8
  %cmp2 = icmp eq %struct.symbol_list* %7, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %8 = load %struct.symbol_list*, %struct.symbol_list** %rp, align 8
  %sym = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %8, i32 0, i32 1
  %9 = load %struct.bucket*, %struct.bucket** %sym, align 8
  %cmp3 = icmp eq %struct.bucket* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %while.body
  %10 = load i8*, i8** @get_type_name.msg, align 8
  call void @fatal(i8* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %lor.lhs.false
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.symbol_list*, %struct.symbol_list** %rp, align 8
  %sym6 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %12, i32 0, i32 1
  %13 = load %struct.bucket*, %struct.bucket** %sym6, align 8
  %type_name = getelementptr inbounds %struct.bucket, %struct.bucket* %13, i32 0, i32 3
  %14 = load i8*, i8** %type_name, align 8
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define void @copy_guard(%struct.symbol_list* %rule, i32 %stack_offset) #0 {
entry:
  %rule.addr = alloca %struct.symbol_list*, align 8
  %stack_offset.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  %count = alloca i32, align 4
  %match = alloca i32, align 4
  %ended = alloca i32, align 4
  %type_name = alloca i8*, align 8
  %brace_flag = alloca i32, align 4
  %cp = alloca i8*, align 8
  store %struct.symbol_list* %rule, %struct.symbol_list** %rule.addr, align 8
  store i32 %stack_offset, i32* %stack_offset.addr, align 4
  store i32 0, i32* %brace_flag, align 4
  %0 = load i32, i32* @semantic_parser, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %stack_offset.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %2 = load i32, i32* @nrules, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* @nolinesflag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %5 = load i32, i32* @lineno, align 4
  %6 = load i8*, i8** @infile, align 8
  %call3 = call i8* @mybasename(i8* %6)
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 %5, i8* %call3)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call6 = call i32 @_IO_putc(i32 123, %struct._IO_FILE* %7)
  store i32 0, i32* %count, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call7 = call i32 @_IO_getc(%struct._IO_FILE* %8)
  store i32 %call7, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.197, %if.end.185, %if.end.165, %if.then.61, %if.end.5
  %9 = load i32, i32* %brace_flag, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %10 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %10, 0
  %conv = zext i1 %cmp to i32
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %11 = load i32, i32* %c, align 4
  %cmp9 = icmp ne i32 %11, 59
  %conv10 = zext i1 %cmp9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv10, %cond.false ]
  %tobool11 = icmp ne i32 %cond, 0
  br i1 %tobool11, label %while.body, label %while.end.198

while.body:                                       ; preds = %cond.end
  %12 = load i32, i32* %c, align 4
  switch i32 %12, label %sw.default [
    i32 10, label %sw.bb
    i32 123, label %sw.bb.13
    i32 125, label %sw.bb.16
    i32 39, label %sw.bb.22
    i32 34, label %sw.bb.22
    i32 47, label %sw.bb.56
    i32 36, label %sw.bb.101
    i32 64, label %sw.bb.169
    i32 -1, label %sw.bb.188
  ]

sw.bb:                                            ; preds = %while.body
  %13 = load i32, i32* %c, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call12 = call i32 @_IO_putc(i32 %13, %struct._IO_FILE* %14)
  %15 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @lineno, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body
  %16 = load i32, i32* %c, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call14 = call i32 @_IO_putc(i32 %16, %struct._IO_FILE* %17)
  %18 = load i32, i32* %count, align 4
  %inc15 = add nsw i32 %18, 1
  store i32 %inc15, i32* %count, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  %19 = load i32, i32* %c, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call17 = call i32 @_IO_putc(i32 %19, %struct._IO_FILE* %20)
  store i32 1, i32* %brace_flag, align 4
  %21 = load i32, i32* %count, align 4
  %cmp18 = icmp sgt i32 %21, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %sw.bb.16
  %22 = load i32, i32* %count, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %count, align 4
  br label %if.end.21

if.else:                                          ; preds = %sw.bb.16
  call void @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  br label %sw.epilog

sw.bb.22:                                         ; preds = %while.body, %while.body
  %23 = load i32, i32* %c, align 4
  store i32 %23, i32* %match, align 4
  %24 = load i32, i32* %c, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call23 = call i32 @_IO_putc(i32 %24, %struct._IO_FILE* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call24 = call i32 @_IO_getc(%struct._IO_FILE* %26)
  store i32 %call24, i32* %c, align 4
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.53, %sw.bb.22
  %27 = load i32, i32* %c, align 4
  %28 = load i32, i32* %match, align 4
  %cmp26 = icmp ne i32 %27, %28
  br i1 %cmp26, label %while.body.28, label %while.end

while.body.28:                                    ; preds = %while.cond.25
  %29 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %29, -1
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.28
  %30 = load i32, i32* %c, align 4
  %cmp31 = icmp eq i32 %30, 10
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false, %while.body.28
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %lor.lhs.false
  %31 = load i32, i32* %c, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call35 = call i32 @_IO_putc(i32 %31, %struct._IO_FILE* %32)
  %33 = load i32, i32* %c, align 4
  %cmp36 = icmp eq i32 %33, 92
  br i1 %cmp36, label %if.then.38, label %if.end.53

if.then.38:                                       ; preds = %if.end.34
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call39 = call i32 @_IO_getc(%struct._IO_FILE* %34)
  store i32 %call39, i32* %c, align 4
  %35 = load i32, i32* %c, align 4
  %cmp40 = icmp eq i32 %35, -1
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.then.38
  %36 = load i32, i32* %c, align 4
  %cmp43 = icmp eq i32 %36, 10
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.42, %if.then.38
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %lor.lhs.false.42
  %37 = load i32, i32* %c, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call47 = call i32 @_IO_putc(i32 %37, %struct._IO_FILE* %38)
  %39 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %39, 10
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.46
  %40 = load i32, i32* @lineno, align 4
  %inc51 = add nsw i32 %40, 1
  store i32 %inc51, i32* @lineno, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.34
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call54 = call i32 @_IO_getc(%struct._IO_FILE* %41)
  store i32 %call54, i32* %c, align 4
  br label %while.cond.25

while.end:                                        ; preds = %while.cond.25
  %42 = load i32, i32* %c, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call55 = call i32 @_IO_putc(i32 %42, %struct._IO_FILE* %43)
  br label %sw.epilog

sw.bb.56:                                         ; preds = %while.body
  %44 = load i32, i32* %c, align 4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call57 = call i32 @_IO_putc(i32 %44, %struct._IO_FILE* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call58 = call i32 @_IO_getc(%struct._IO_FILE* %46)
  store i32 %call58, i32* %c, align 4
  %47 = load i32, i32* %c, align 4
  %cmp59 = icmp ne i32 %47, 42
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %sw.bb.56
  br label %while.cond

if.end.62:                                        ; preds = %sw.bb.56
  %48 = load i32, i32* %c, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call63 = call i32 @_IO_putc(i32 %48, %struct._IO_FILE* %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call64 = call i32 @_IO_getc(%struct._IO_FILE* %50)
  store i32 %call64, i32* %c, align 4
  store i32 0, i32* %ended, align 4
  br label %while.cond.65

while.cond.65:                                    ; preds = %if.end.99, %if.end.62
  %51 = load i32, i32* %ended, align 4
  %tobool66 = icmp ne i32 %51, 0
  %lnot = xor i1 %tobool66, true
  br i1 %lnot, label %while.body.67, label %while.end.100

while.body.67:                                    ; preds = %while.cond.65
  %52 = load i32, i32* %c, align 4
  %cmp68 = icmp eq i32 %52, 42
  br i1 %cmp68, label %if.then.70, label %if.else.83

if.then.70:                                       ; preds = %while.body.67
  br label %while.cond.71

while.cond.71:                                    ; preds = %while.body.74, %if.then.70
  %53 = load i32, i32* %c, align 4
  %cmp72 = icmp eq i32 %53, 42
  br i1 %cmp72, label %while.body.74, label %while.end.77

while.body.74:                                    ; preds = %while.cond.71
  %54 = load i32, i32* %c, align 4
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call75 = call i32 @_IO_putc(i32 %54, %struct._IO_FILE* %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call76 = call i32 @_IO_getc(%struct._IO_FILE* %56)
  store i32 %call76, i32* %c, align 4
  br label %while.cond.71

while.end.77:                                     ; preds = %while.cond.71
  %57 = load i32, i32* %c, align 4
  %cmp78 = icmp eq i32 %57, 47
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %while.end.77
  %58 = load i32, i32* %c, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call81 = call i32 @_IO_putc(i32 %58, %struct._IO_FILE* %59)
  store i32 1, i32* %ended, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %while.end.77
  br label %if.end.99

if.else.83:                                       ; preds = %while.body.67
  %60 = load i32, i32* %c, align 4
  %cmp84 = icmp eq i32 %60, 10
  br i1 %cmp84, label %if.then.86, label %if.else.90

if.then.86:                                       ; preds = %if.else.83
  %61 = load i32, i32* @lineno, align 4
  %inc87 = add nsw i32 %61, 1
  store i32 %inc87, i32* @lineno, align 4
  %62 = load i32, i32* %c, align 4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call88 = call i32 @_IO_putc(i32 %62, %struct._IO_FILE* %63)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call89 = call i32 @_IO_getc(%struct._IO_FILE* %64)
  store i32 %call89, i32* %c, align 4
  br label %if.end.98

if.else.90:                                       ; preds = %if.else.83
  %65 = load i32, i32* %c, align 4
  %cmp91 = icmp eq i32 %65, -1
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.else.90
  call void @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.97

if.else.94:                                       ; preds = %if.else.90
  %66 = load i32, i32* %c, align 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call95 = call i32 @_IO_putc(i32 %66, %struct._IO_FILE* %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call96 = call i32 @_IO_getc(%struct._IO_FILE* %68)
  store i32 %call96, i32* %c, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.86
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.82
  br label %while.cond.65

while.end.100:                                    ; preds = %while.cond.65
  br label %sw.epilog

sw.bb.101:                                        ; preds = %while.body
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call102 = call i32 @_IO_getc(%struct._IO_FILE* %69)
  store i32 %call102, i32* %c, align 4
  store i8* null, i8** %type_name, align 8
  %70 = load i32, i32* %c, align 4
  %cmp103 = icmp eq i32 %70, 60
  br i1 %cmp103, label %if.then.105, label %if.end.116

if.then.105:                                      ; preds = %sw.bb.101
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0), i8** %cp, align 8
  br label %while.cond.106

while.cond.106:                                   ; preds = %while.body.112, %if.then.105
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call107 = call i32 @_IO_getc(%struct._IO_FILE* %71)
  store i32 %call107, i32* %c, align 4
  %cmp108 = icmp ne i32 %call107, 62
  br i1 %cmp108, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.106
  %72 = load i32, i32* %c, align 4
  %cmp110 = icmp sgt i32 %72, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.106
  %73 = phi i1 [ false, %while.cond.106 ], [ %cmp110, %land.rhs ]
  br i1 %73, label %while.body.112, label %while.end.114

while.body.112:                                   ; preds = %land.end
  %74 = load i32, i32* %c, align 4
  %conv113 = trunc i32 %74 to i8
  %75 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i8 %conv113, i8* %75, align 1
  br label %while.cond.106

while.end.114:                                    ; preds = %land.end
  %76 = load i8*, i8** %cp, align 8
  store i8 0, i8* %76, align 1
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0), i8** %type_name, align 8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call115 = call i32 @_IO_getc(%struct._IO_FILE* %77)
  store i32 %call115, i32* %c, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %while.end.114, %sw.bb.101
  %78 = load i32, i32* %c, align 4
  %cmp117 = icmp eq i32 %78, 36
  br i1 %cmp117, label %if.then.119, label %if.else.135

if.then.119:                                      ; preds = %if.end.116
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0))
  %80 = load i8*, i8** %type_name, align 8
  %tobool121 = icmp ne i8* %80, null
  br i1 %tobool121, label %if.end.124, label %if.then.122

if.then.122:                                      ; preds = %if.then.119
  %81 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %sym = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %81, i32 0, i32 1
  %82 = load %struct.bucket*, %struct.bucket** %sym, align 8
  %type_name123 = getelementptr inbounds %struct.bucket, %struct.bucket* %82, i32 0, i32 3
  %83 = load i8*, i8** %type_name123, align 8
  store i8* %83, i8** %type_name, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.then.119
  %84 = load i8*, i8** %type_name, align 8
  %tobool125 = icmp ne i8* %84, null
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.end.124
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %86 = load i8*, i8** %type_name, align 8
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* %86)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.end.124
  %87 = load i8*, i8** %type_name, align 8
  %tobool129 = icmp ne i8* %87, null
  br i1 %tobool129, label %if.end.134, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.128
  %88 = load i32, i32* @typed, align 4
  %tobool130 = icmp ne i32 %88, 0
  br i1 %tobool130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %land.lhs.true
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = load i8*, i8** @infile, align 8
  %91 = load i32, i32* @lineno, align 4
  %92 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %sym132 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %92, i32 0, i32 1
  %93 = load %struct.bucket*, %struct.bucket** %sym132, align 8
  %tag = getelementptr inbounds %struct.bucket, %struct.bucket* %93, i32 0, i32 2
  %94 = load i8*, i8** %tag, align 8
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i32 0, i32 0), i8* %90, i32 %91, i8* %94)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %land.lhs.true, %if.end.128
  br label %if.end.168

if.else.135:                                      ; preds = %if.end.116
  %95 = load i32, i32* %c, align 4
  %idxprom = sext i32 %95 to i64
  %call136 = call i16** @__ctype_b_loc() #7
  %96 = load i16*, i16** %call136, align 8
  %arrayidx = getelementptr inbounds i16, i16* %96, i64 %idxprom
  %97 = load i16, i16* %arrayidx, align 2
  %conv137 = zext i16 %97 to i32
  %and = and i32 %conv137, 2048
  %tobool138 = icmp ne i32 %and, 0
  br i1 %tobool138, label %if.then.142, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %if.else.135
  %98 = load i32, i32* %c, align 4
  %cmp140 = icmp eq i32 %98, 45
  br i1 %cmp140, label %if.then.142, label %if.else.166

if.then.142:                                      ; preds = %lor.lhs.false.139, %if.else.135
  %99 = load i32, i32* %c, align 4
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call143 = call i32 @ungetc(i32 %99, %struct._IO_FILE* %100)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call144 = call i32 @read_signed_integer(%struct._IO_FILE* %101)
  store i32 %call144, i32* %n, align 4
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call145 = call i32 @_IO_getc(%struct._IO_FILE* %102)
  store i32 %call145, i32* %c, align 4
  %103 = load i8*, i8** %type_name, align 8
  %tobool146 = icmp ne i8* %103, null
  br i1 %tobool146, label %if.end.152, label %land.lhs.true.147

land.lhs.true.147:                                ; preds = %if.then.142
  %104 = load i32, i32* %n, align 4
  %cmp148 = icmp sgt i32 %104, 0
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %land.lhs.true.147
  %105 = load i32, i32* %n, align 4
  %106 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %call151 = call i8* @get_type_name(i32 %105, %struct.symbol_list* %106)
  store i8* %call151, i8** %type_name, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %land.lhs.true.147, %if.then.142
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %108 = load i32, i32* %n, align 4
  %109 = load i32, i32* %stack_offset.addr, align 4
  %sub = sub nsw i32 %108, %109
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %sub)
  %110 = load i8*, i8** %type_name, align 8
  %tobool154 = icmp ne i8* %110, null
  br i1 %tobool154, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %if.end.152
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %112 = load i8*, i8** %type_name, align 8
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* %112)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %if.end.152
  %113 = load i8*, i8** %type_name, align 8
  %tobool158 = icmp ne i8* %113, null
  br i1 %tobool158, label %if.end.165, label %land.lhs.true.159

land.lhs.true.159:                                ; preds = %if.end.157
  %114 = load i32, i32* @typed, align 4
  %tobool160 = icmp ne i32 %114, 0
  br i1 %tobool160, label %if.then.161, label %if.end.165

if.then.161:                                      ; preds = %land.lhs.true.159
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %116 = load i8*, i8** @infile, align 8
  %117 = load i32, i32* @lineno, align 4
  %118 = load i32, i32* %n, align 4
  %119 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %sym162 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %119, i32 0, i32 1
  %120 = load %struct.bucket*, %struct.bucket** %sym162, align 8
  %tag163 = getelementptr inbounds %struct.bucket, %struct.bucket* %120, i32 0, i32 2
  %121 = load i8*, i8** %tag163, align 8
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i32 0, i32 0), i8* %116, i32 %117, i32 %118, i8* %121)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.161, %land.lhs.true.159, %if.end.157
  br label %while.cond

if.else.166:                                      ; preds = %lor.lhs.false.139
  %122 = load i32, i32* %c, align 4
  call void @fatals(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 %122, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.166
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.134
  br label %sw.epilog

sw.bb.169:                                        ; preds = %while.body
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call170 = call i32 @_IO_getc(%struct._IO_FILE* %123)
  store i32 %call170, i32* %c, align 4
  %124 = load i32, i32* %c, align 4
  %idxprom171 = sext i32 %124 to i64
  %call172 = call i16** @__ctype_b_loc() #7
  %125 = load i16*, i16** %call172, align 8
  %arrayidx173 = getelementptr inbounds i16, i16* %125, i64 %idxprom171
  %126 = load i16, i16* %arrayidx173, align 2
  %conv174 = zext i16 %126 to i32
  %and175 = and i32 %conv174, 2048
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %if.then.180, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %sw.bb.169
  %127 = load i32, i32* %c, align 4
  %cmp178 = icmp eq i32 %127, 45
  br i1 %cmp178, label %if.then.180, label %if.else.184

if.then.180:                                      ; preds = %lor.lhs.false.177, %sw.bb.169
  %128 = load i32, i32* %c, align 4
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call181 = call i32 @ungetc(i32 %128, %struct._IO_FILE* %129)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call182 = call i32 @read_signed_integer(%struct._IO_FILE* %130)
  store i32 %call182, i32* %n, align 4
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call183 = call i32 @_IO_getc(%struct._IO_FILE* %131)
  store i32 %call183, i32* %c, align 4
  br label %if.end.185

if.else.184:                                      ; preds = %lor.lhs.false.177
  %132 = load i32, i32* %c, align 4
  call void @fatals(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 %132, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.then.180
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %134 = load i32, i32* %n, align 4
  %135 = load i32, i32* %stack_offset.addr, align 4
  %sub186 = sub nsw i32 %134, %135
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i32 %sub186)
  store i32 1, i32* @yylsp_needed, align 4
  br label %while.cond

sw.bb.188:                                        ; preds = %while.body
  call void @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0))
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb.188
  %136 = load i32, i32* %c, align 4
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call189 = call i32 @_IO_putc(i32 %136, %struct._IO_FILE* %137)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.168, %while.end.100, %while.end, %if.end.21, %sw.bb.13, %sw.bb
  %138 = load i32, i32* %c, align 4
  %cmp190 = icmp ne i32 %138, 125
  br i1 %cmp190, label %if.then.195, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %sw.epilog
  %139 = load i32, i32* %count, align 4
  %cmp193 = icmp ne i32 %139, 0
  br i1 %cmp193, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %lor.lhs.false.192, %sw.epilog
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call196 = call i32 @_IO_getc(%struct._IO_FILE* %140)
  store i32 %call196, i32* %c, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %lor.lhs.false.192
  br label %while.cond

while.end.198:                                    ; preds = %cond.end
  %call199 = call i32 @skip_white_space()
  store i32 %call199, i32* %c, align 4
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0))
  %142 = load i32, i32* %c, align 4
  %cmp201 = icmp eq i32 %142, 123
  br i1 %cmp201, label %if.then.203, label %if.else.204

if.then.203:                                      ; preds = %while.end.198
  %143 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %144 = load i32, i32* %stack_offset.addr, align 4
  call void @copy_action(%struct.symbol_list* %143, i32 %144)
  br label %if.end.216

if.else.204:                                      ; preds = %while.end.198
  %145 = load i32, i32* %c, align 4
  %cmp205 = icmp eq i32 %145, 61
  br i1 %cmp205, label %if.then.207, label %if.else.213

if.then.207:                                      ; preds = %if.else.204
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call208 = call i32 @_IO_getc(%struct._IO_FILE* %146)
  store i32 %call208, i32* %c, align 4
  %147 = load i32, i32* %c, align 4
  %cmp209 = icmp eq i32 %147, 123
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.then.207
  %148 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %149 = load i32, i32* %stack_offset.addr, align 4
  call void @copy_action(%struct.symbol_list* %148, i32 %149)
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.211, %if.then.207
  br label %if.end.215

if.else.213:                                      ; preds = %if.else.204
  %150 = load i32, i32* %c, align 4
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call214 = call i32 @ungetc(i32 %150, %struct._IO_FILE* %151)
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.213, %if.end.212
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.203
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define i32 @read_signed_integer(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %sign = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  store i32 1, i32* %sign, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call1, i32* %c, align 4
  store i32 -1, i32* %sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* %c, align 4
  %idxprom = sext i32 %3 to i64
  %call2 = call i16** @__ctype_b_loc() #7
  %4 = load i16*, i16** %call2, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %n, align 4
  %mul = mul nsw i32 10, %6
  %7 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %7, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %n, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %8)
  store i32 %call3, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %c, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @ungetc(i32 %9, %struct._IO_FILE* %10)
  %11 = load i32, i32* %n, align 4
  %12 = load i32, i32* %sign, align 4
  %mul5 = mul nsw i32 %11, %12
  ret i32 %mul5
}

; Function Attrs: nounwind uwtable
define void @copy_action(%struct.symbol_list* %rule, i32 %stack_offset) #0 {
entry:
  %rule.addr = alloca %struct.symbol_list*, align 8
  %stack_offset.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  %count = alloca i32, align 4
  %match = alloca i32, align 4
  %ended = alloca i32, align 4
  %type_name = alloca i8*, align 8
  %cp = alloca i8*, align 8
  store %struct.symbol_list* %rule, %struct.symbol_list** %rule.addr, align 8
  store i32 %stack_offset, i32* %stack_offset.addr, align 4
  %0 = load i32, i32* @semantic_parser, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %stack_offset.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %2 = load i32, i32* @nrules, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* @nolinesflag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %5 = load i32, i32* @lineno, align 4
  %6 = load i8*, i8** @infile, align 8
  %call3 = call i8* @mybasename(i8* %6)
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 %5, i8* %call3)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call6 = call i32 @_IO_putc(i32 123, %struct._IO_FILE* %7)
  store i32 1, i32* %count, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call7 = call i32 @_IO_getc(%struct._IO_FILE* %8)
  store i32 %call7, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.168, %if.end.5
  %9 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %while.body, label %while.end.169

while.body:                                       ; preds = %while.cond
  br label %while.cond.8

while.cond.8:                                     ; preds = %sw.epilog, %if.end.157, %if.end.137, %if.then.44, %while.body
  %10 = load i32, i32* %c, align 4
  %cmp9 = icmp ne i32 %10, 125
  br i1 %cmp9, label %while.body.10, label %while.end.163

while.body.10:                                    ; preds = %while.cond.8
  %11 = load i32, i32* %c, align 4
  switch i32 %11, label %sw.default [
    i32 10, label %sw.bb
    i32 123, label %sw.bb.12
    i32 39, label %sw.bb.15
    i32 34, label %sw.bb.15
    i32 47, label %sw.bb.40
    i32 36, label %sw.bb.78
    i32 64, label %sw.bb.141
    i32 -1, label %sw.bb.160
  ]

sw.bb:                                            ; preds = %while.body.10
  %12 = load i32, i32* %c, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call11 = call i32 @_IO_putc(i32 %12, %struct._IO_FILE* %13)
  %14 = load i32, i32* @lineno, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @lineno, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %while.body.10
  %15 = load i32, i32* %c, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call13 = call i32 @_IO_putc(i32 %15, %struct._IO_FILE* %16)
  %17 = load i32, i32* %count, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* %count, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %while.body.10, %while.body.10
  %18 = load i32, i32* %c, align 4
  store i32 %18, i32* %match, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call16 = call i32 @_IO_putc(i32 %19, %struct._IO_FILE* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call17 = call i32 @_IO_getc(%struct._IO_FILE* %21)
  store i32 %call17, i32* %c, align 4
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.37, %sw.bb.15
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %match, align 4
  %cmp19 = icmp ne i32 %22, %23
  br i1 %cmp19, label %while.body.20, label %while.end

while.body.20:                                    ; preds = %while.cond.18
  %24 = load i32, i32* %c, align 4
  %cmp21 = icmp eq i32 %24, -1
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.20
  %25 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %25, 10
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %while.body.20
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %lor.lhs.false
  %26 = load i32, i32* %c, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call25 = call i32 @_IO_putc(i32 %26, %struct._IO_FILE* %27)
  %28 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %28, 92
  br i1 %cmp26, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %if.end.24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call28 = call i32 @_IO_getc(%struct._IO_FILE* %29)
  store i32 %call28, i32* %c, align 4
  %30 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %30, -1
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.27
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.27
  %31 = load i32, i32* %c, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call32 = call i32 @_IO_putc(i32 %31, %struct._IO_FILE* %32)
  %33 = load i32, i32* %c, align 4
  %cmp33 = icmp eq i32 %33, 10
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %34 = load i32, i32* @lineno, align 4
  %inc35 = add nsw i32 %34, 1
  store i32 %inc35, i32* @lineno, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.24
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call38 = call i32 @_IO_getc(%struct._IO_FILE* %35)
  store i32 %call38, i32* %c, align 4
  br label %while.cond.18

while.end:                                        ; preds = %while.cond.18
  %36 = load i32, i32* %c, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call39 = call i32 @_IO_putc(i32 %36, %struct._IO_FILE* %37)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %while.body.10
  %38 = load i32, i32* %c, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call41 = call i32 @_IO_putc(i32 %38, %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call42 = call i32 @_IO_getc(%struct._IO_FILE* %40)
  store i32 %call42, i32* %c, align 4
  %41 = load i32, i32* %c, align 4
  %cmp43 = icmp ne i32 %41, 42
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.bb.40
  br label %while.cond.8

if.end.45:                                        ; preds = %sw.bb.40
  %42 = load i32, i32* %c, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call46 = call i32 @_IO_putc(i32 %42, %struct._IO_FILE* %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call47 = call i32 @_IO_getc(%struct._IO_FILE* %44)
  store i32 %call47, i32* %c, align 4
  store i32 0, i32* %ended, align 4
  br label %while.cond.48

while.cond.48:                                    ; preds = %if.end.76, %if.end.45
  %45 = load i32, i32* %ended, align 4
  %tobool49 = icmp ne i32 %45, 0
  %lnot = xor i1 %tobool49, true
  br i1 %lnot, label %while.body.50, label %while.end.77

while.body.50:                                    ; preds = %while.cond.48
  %46 = load i32, i32* %c, align 4
  %cmp51 = icmp eq i32 %46, 42
  br i1 %cmp51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %while.body.50
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.55, %if.then.52
  %47 = load i32, i32* %c, align 4
  %cmp54 = icmp eq i32 %47, 42
  br i1 %cmp54, label %while.body.55, label %while.end.58

while.body.55:                                    ; preds = %while.cond.53
  %48 = load i32, i32* %c, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call56 = call i32 @_IO_putc(i32 %48, %struct._IO_FILE* %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call57 = call i32 @_IO_getc(%struct._IO_FILE* %50)
  store i32 %call57, i32* %c, align 4
  br label %while.cond.53

while.end.58:                                     ; preds = %while.cond.53
  %51 = load i32, i32* %c, align 4
  %cmp59 = icmp eq i32 %51, 47
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %while.end.58
  %52 = load i32, i32* %c, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call61 = call i32 @_IO_putc(i32 %52, %struct._IO_FILE* %53)
  store i32 1, i32* %ended, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %while.end.58
  br label %if.end.76

if.else:                                          ; preds = %while.body.50
  %54 = load i32, i32* %c, align 4
  %cmp63 = icmp eq i32 %54, 10
  br i1 %cmp63, label %if.then.64, label %if.else.68

if.then.64:                                       ; preds = %if.else
  %55 = load i32, i32* @lineno, align 4
  %inc65 = add nsw i32 %55, 1
  store i32 %inc65, i32* @lineno, align 4
  %56 = load i32, i32* %c, align 4
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call66 = call i32 @_IO_putc(i32 %56, %struct._IO_FILE* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call67 = call i32 @_IO_getc(%struct._IO_FILE* %58)
  store i32 %call67, i32* %c, align 4
  br label %if.end.75

if.else.68:                                       ; preds = %if.else
  %59 = load i32, i32* %c, align 4
  %cmp69 = icmp eq i32 %59, -1
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.68
  call void @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.74

if.else.71:                                       ; preds = %if.else.68
  %60 = load i32, i32* %c, align 4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call72 = call i32 @_IO_putc(i32 %60, %struct._IO_FILE* %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call73 = call i32 @_IO_getc(%struct._IO_FILE* %62)
  store i32 %call73, i32* %c, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.64
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.62
  br label %while.cond.48

while.end.77:                                     ; preds = %while.cond.48
  br label %sw.epilog

sw.bb.78:                                         ; preds = %while.body.10
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call79 = call i32 @_IO_getc(%struct._IO_FILE* %63)
  store i32 %call79, i32* %c, align 4
  store i8* null, i8** %type_name, align 8
  %64 = load i32, i32* %c, align 4
  %cmp80 = icmp eq i32 %64, 60
  br i1 %cmp80, label %if.then.81, label %if.end.89

if.then.81:                                       ; preds = %sw.bb.78
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0), i8** %cp, align 8
  br label %while.cond.82

while.cond.82:                                    ; preds = %while.body.86, %if.then.81
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call83 = call i32 @_IO_getc(%struct._IO_FILE* %65)
  store i32 %call83, i32* %c, align 4
  %cmp84 = icmp ne i32 %call83, 62
  br i1 %cmp84, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.82
  %66 = load i32, i32* %c, align 4
  %cmp85 = icmp sgt i32 %66, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.82
  %67 = phi i1 [ false, %while.cond.82 ], [ %cmp85, %land.rhs ]
  br i1 %67, label %while.body.86, label %while.end.87

while.body.86:                                    ; preds = %land.end
  %68 = load i32, i32* %c, align 4
  %conv = trunc i32 %68 to i8
  %69 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i8 %conv, i8* %69, align 1
  br label %while.cond.82

while.end.87:                                     ; preds = %land.end
  %70 = load i8*, i8** %cp, align 8
  store i8 0, i8* %70, align 1
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0), i8** %type_name, align 8
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call88 = call i32 @_IO_getc(%struct._IO_FILE* %71)
  store i32 %call88, i32* %c, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %while.end.87, %sw.bb.78
  %72 = load i32, i32* %c, align 4
  %cmp90 = icmp eq i32 %72, 36
  br i1 %cmp90, label %if.then.92, label %if.else.107

if.then.92:                                       ; preds = %if.end.89
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0))
  %74 = load i8*, i8** %type_name, align 8
  %tobool94 = icmp ne i8* %74, null
  br i1 %tobool94, label %if.end.97, label %if.then.95

if.then.95:                                       ; preds = %if.then.92
  %75 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %call96 = call i8* @get_type_name(i32 0, %struct.symbol_list* %75)
  store i8* %call96, i8** %type_name, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.then.92
  %76 = load i8*, i8** %type_name, align 8
  %tobool98 = icmp ne i8* %76, null
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.97
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %78 = load i8*, i8** %type_name, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* %78)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.97
  %79 = load i8*, i8** %type_name, align 8
  %tobool102 = icmp ne i8* %79, null
  br i1 %tobool102, label %if.end.106, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.101
  %80 = load i32, i32* @typed, align 4
  %tobool103 = icmp ne i32 %80, 0
  br i1 %tobool103, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %land.lhs.true
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = load i8*, i8** @infile, align 8
  %83 = load i32, i32* @lineno, align 4
  %84 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %sym = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %84, i32 0, i32 1
  %85 = load %struct.bucket*, %struct.bucket** %sym, align 8
  %tag = getelementptr inbounds %struct.bucket, %struct.bucket* %85, i32 0, i32 2
  %86 = load i8*, i8** %tag, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i32 0, i32 0), i8* %82, i32 %83, i8* %86)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %land.lhs.true, %if.end.101
  br label %if.end.140

if.else.107:                                      ; preds = %if.end.89
  %87 = load i32, i32* %c, align 4
  %idxprom = sext i32 %87 to i64
  %call108 = call i16** @__ctype_b_loc() #7
  %88 = load i16*, i16** %call108, align 8
  %arrayidx = getelementptr inbounds i16, i16* %88, i64 %idxprom
  %89 = load i16, i16* %arrayidx, align 2
  %conv109 = zext i16 %89 to i32
  %and = and i32 %conv109, 2048
  %tobool110 = icmp ne i32 %and, 0
  br i1 %tobool110, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %if.else.107
  %90 = load i32, i32* %c, align 4
  %cmp112 = icmp eq i32 %90, 45
  br i1 %cmp112, label %if.then.114, label %if.else.138

if.then.114:                                      ; preds = %lor.lhs.false.111, %if.else.107
  %91 = load i32, i32* %c, align 4
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call115 = call i32 @ungetc(i32 %91, %struct._IO_FILE* %92)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call116 = call i32 @read_signed_integer(%struct._IO_FILE* %93)
  store i32 %call116, i32* %n, align 4
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call117 = call i32 @_IO_getc(%struct._IO_FILE* %94)
  store i32 %call117, i32* %c, align 4
  %95 = load i8*, i8** %type_name, align 8
  %tobool118 = icmp ne i8* %95, null
  br i1 %tobool118, label %if.end.124, label %land.lhs.true.119

land.lhs.true.119:                                ; preds = %if.then.114
  %96 = load i32, i32* %n, align 4
  %cmp120 = icmp sgt i32 %96, 0
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %land.lhs.true.119
  %97 = load i32, i32* %n, align 4
  %98 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %call123 = call i8* @get_type_name(i32 %97, %struct.symbol_list* %98)
  store i8* %call123, i8** %type_name, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %land.lhs.true.119, %if.then.114
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %100 = load i32, i32* %n, align 4
  %101 = load i32, i32* %stack_offset.addr, align 4
  %sub = sub nsw i32 %100, %101
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %sub)
  %102 = load i8*, i8** %type_name, align 8
  %tobool126 = icmp ne i8* %102, null
  br i1 %tobool126, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.end.124
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %104 = load i8*, i8** %type_name, align 8
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* %104)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.end.124
  %105 = load i8*, i8** %type_name, align 8
  %tobool130 = icmp ne i8* %105, null
  br i1 %tobool130, label %if.end.137, label %land.lhs.true.131

land.lhs.true.131:                                ; preds = %if.end.129
  %106 = load i32, i32* @typed, align 4
  %tobool132 = icmp ne i32 %106, 0
  br i1 %tobool132, label %if.then.133, label %if.end.137

if.then.133:                                      ; preds = %land.lhs.true.131
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %108 = load i8*, i8** @infile, align 8
  %109 = load i32, i32* @lineno, align 4
  %110 = load i32, i32* %n, align 4
  %111 = load %struct.symbol_list*, %struct.symbol_list** %rule.addr, align 8
  %sym134 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %111, i32 0, i32 1
  %112 = load %struct.bucket*, %struct.bucket** %sym134, align 8
  %tag135 = getelementptr inbounds %struct.bucket, %struct.bucket* %112, i32 0, i32 2
  %113 = load i8*, i8** %tag135, align 8
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i32 0, i32 0), i8* %108, i32 %109, i32 %110, i8* %113)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.133, %land.lhs.true.131, %if.end.129
  br label %while.cond.8

if.else.138:                                      ; preds = %lor.lhs.false.111
  %114 = load i32, i32* %c, align 4
  call void @fatals(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 %114, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.138
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.106
  br label %sw.epilog

sw.bb.141:                                        ; preds = %while.body.10
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call142 = call i32 @_IO_getc(%struct._IO_FILE* %115)
  store i32 %call142, i32* %c, align 4
  %116 = load i32, i32* %c, align 4
  %idxprom143 = sext i32 %116 to i64
  %call144 = call i16** @__ctype_b_loc() #7
  %117 = load i16*, i16** %call144, align 8
  %arrayidx145 = getelementptr inbounds i16, i16* %117, i64 %idxprom143
  %118 = load i16, i16* %arrayidx145, align 2
  %conv146 = zext i16 %118 to i32
  %and147 = and i32 %conv146, 2048
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.then.152, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %sw.bb.141
  %119 = load i32, i32* %c, align 4
  %cmp150 = icmp eq i32 %119, 45
  br i1 %cmp150, label %if.then.152, label %if.else.156

if.then.152:                                      ; preds = %lor.lhs.false.149, %sw.bb.141
  %120 = load i32, i32* %c, align 4
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call153 = call i32 @ungetc(i32 %120, %struct._IO_FILE* %121)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call154 = call i32 @read_signed_integer(%struct._IO_FILE* %122)
  store i32 %call154, i32* %n, align 4
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call155 = call i32 @_IO_getc(%struct._IO_FILE* %123)
  store i32 %call155, i32* %c, align 4
  br label %if.end.157

if.else.156:                                      ; preds = %lor.lhs.false.149
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.156, %if.then.152
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %125 = load i32, i32* %n, align 4
  %126 = load i32, i32* %stack_offset.addr, align 4
  %sub158 = sub nsw i32 %125, %126
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i32 %sub158)
  store i32 1, i32* @yylsp_needed, align 4
  br label %while.cond.8

sw.bb.160:                                        ; preds = %while.body.10
  call void @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0))
  br label %sw.default

sw.default:                                       ; preds = %while.body.10, %sw.bb.160
  %127 = load i32, i32* %c, align 4
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call161 = call i32 @_IO_putc(i32 %127, %struct._IO_FILE* %128)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.140, %while.end.77, %while.end, %sw.bb.12, %sw.bb
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call162 = call i32 @_IO_getc(%struct._IO_FILE* %129)
  store i32 %call162, i32* %c, align 4
  br label %while.cond.8

while.end.163:                                    ; preds = %while.cond.8
  %130 = load i32, i32* %count, align 4
  %dec = add nsw i32 %130, -1
  store i32 %dec, i32* %count, align 4
  %tobool164 = icmp ne i32 %dec, 0
  br i1 %tobool164, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %while.end.163
  %131 = load i32, i32* %c, align 4
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call166 = call i32 @_IO_putc(i32 %131, %struct._IO_FILE* %132)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call167 = call i32 @_IO_getc(%struct._IO_FILE* %133)
  store i32 %call167, i32* %c, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %while.end.163
  br label %while.cond

while.end.169:                                    ; preds = %while.cond
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.bucket* @gensym() #0 {
entry:
  %sym = alloca %struct.bucket*, align 8
  %0 = load i32, i32* @gensym_count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @gensym_count, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 %inc) #6
  %call1 = call %struct.bucket* (i8*, ...) bitcast (%struct.bucket* (...)* @getsym to %struct.bucket* (i8*, ...)*)(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0))
  store %struct.bucket* %call1, %struct.bucket** %sym, align 8
  %1 = load %struct.bucket*, %struct.bucket** %sym, align 8
  %class = getelementptr inbounds %struct.bucket, %struct.bucket* %1, i32 0, i32 8
  store i8 2, i8* %class, align 1
  %2 = load i32, i32* @nvars, align 4
  %inc2 = add nsw i32 %2, 1
  store i32 %inc2, i32* @nvars, align 4
  %conv = trunc i32 %2 to i16
  %3 = load %struct.bucket*, %struct.bucket** %sym, align 8
  %value = getelementptr inbounds %struct.bucket, %struct.bucket* %3, i32 0, i32 4
  store i16 %conv, i16* %value, align 2
  %4 = load %struct.bucket*, %struct.bucket** %sym, align 8
  ret %struct.bucket* %4
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @record_rule_line() #0 {
entry:
  %0 = load i32, i32* @nrules, align 4
  %1 = load i32, i32* @rline_allocated, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @nrules, align 4
  %mul = mul nsw i32 %2, 2
  store i32 %mul, i32* @rline_allocated, align 4
  %3 = load i16*, i16** @rline, align 8
  %4 = bitcast i16* %3 to i8*
  %5 = load i32, i32* @rline_allocated, align 4
  %conv = sext i32 %5 to i64
  %mul1 = mul i64 %conv, 2
  %call = call i8* @realloc(i8* %4, i64 %mul1) #6
  %6 = bitcast i8* %call to i16*
  store i16* %6, i16** @rline, align 8
  %7 = load i16*, i16** @rline, align 8
  %cmp2 = icmp eq i16* %7, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0))
  call void @done(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* @lineno, align 4
  %conv7 = trunc i32 %9 to i16
  %10 = load i32, i32* @nrules, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i16*, i16** @rline, align 8
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %idxprom
  store i16 %conv7, i16* %arrayidx, align 2
  ret void
}

declare void @unlex(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @get_type() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %name = alloca i8*, align 8
  %call = call i32 @lex()
  store i32 %call, i32* %t, align 4
  %0 = load i32, i32* %t, align 4
  %cmp = icmp ne i32 %0, 21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0)) #5
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %k, align 4
  %1 = load i32, i32* %k, align 4
  %add = add nsw i32 %1, 1
  %conv2 = sext i32 %add to i64
  %mul = mul i64 %conv2, 1
  %conv3 = trunc i64 %mul to i32
  %call4 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv3)
  store i8* %call4, i8** %name, align 8
  %2 = load i8*, i8** %name, align 8
  %call5 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @token_buffer, i32 0, i32 0)) #6
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end
  %call6 = call i32 @lex()
  store i32 %call6, i32* %t, align 4
  %3 = load i32, i32* %t, align 4
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb.8
    i32 1, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %for.cond
  %call7 = call i32 @lex()
  store i32 %call7, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.cond
  %4 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %type_name = getelementptr inbounds %struct.bucket, %struct.bucket* %4, i32 0, i32 3
  %5 = load i8*, i8** %type_name, align 8
  %cmp10 = icmp eq i8* %5, null
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb.9
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %type_name13 = getelementptr inbounds %struct.bucket, %struct.bucket* %7, i32 0, i32 3
  store i8* %6, i8** %type_name13, align 8
  br label %if.end.14

if.else:                                          ; preds = %sw.bb.9
  %8 = load %struct.bucket*, %struct.bucket** @symval, align 8
  %tag = getelementptr inbounds %struct.bucket, %struct.bucket* %8, i32 0, i32 2
  %9 = load i8*, i8** %tag, align 8
  %10 = ptrtoint i8* %9 to i32
  call void @fatals(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 %10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %11 = load i32, i32* %t, align 4
  store i32 %11, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.14, %sw.bb.8
  br label %for.cond

return:                                           ; preds = %sw.default, %sw.bb
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

declare void @done(i32) #1

; Function Attrs: nounwind uwtable
define void @output_token_defines(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %bp = alloca %struct.bucket*, align 8
  %cp = alloca i8*, align 8
  %c = alloca i8, align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* %0, %struct.bucket** %bp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %tobool = icmp ne %struct.bucket* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value = getelementptr inbounds %struct.bucket, %struct.bucket* %2, i32 0, i32 4
  %3 = load i16, i16* %value, align 2
  %conv = sext i16 %3 to i32
  %4 = load i32, i32* @ntokens, align 4
  %cmp = icmp sge i32 %conv, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value2 = getelementptr inbounds %struct.bucket, %struct.bucket* %5, i32 0, i32 4
  %6 = load i16, i16* %value2, align 2
  %idxprom = sext i16 %6 to i64
  %7 = load i8**, i8*** @tags, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp ne i32 39, %conv3
  br i1 %cmp4, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %11 = load %struct.bucket*, %struct.bucket** @errtoken, align 8
  %cmp6 = icmp ne %struct.bucket* %10, %11
  br i1 %cmp6, label %if.then.8, label %if.end.36

if.then.8:                                        ; preds = %land.lhs.true
  %12 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value9 = getelementptr inbounds %struct.bucket, %struct.bucket* %12, i32 0, i32 4
  %13 = load i16, i16* %value9, align 2
  %idxprom10 = sext i16 %13 to i64
  %14 = load i8**, i8*** @tags, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %14, i64 %idxprom10
  %15 = load i8*, i8** %arrayidx11, align 8
  store i8* %15, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.8
  %16 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %c, align 1
  %conv12 = sext i8 %17 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i8, i8* %c, align 1
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp ne i32 %conv14, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load i8, i8* %c, align 1
  %tobool17 = icmp ne i8 %20, 0
  br i1 %tobool17, label %if.end.35, label %if.then.18

if.then.18:                                       ; preds = %while.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %22 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value19 = getelementptr inbounds %struct.bucket, %struct.bucket* %22, i32 0, i32 4
  %23 = load i16, i16* %value19, align 2
  %idxprom20 = sext i16 %23 to i64
  %24 = load i8**, i8*** @tags, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %24, i64 %idxprom20
  %25 = load i8*, i8** %arrayidx21, align 8
  %26 = load i32, i32* @translations, align 4
  %tobool22 = icmp ne i32 %26, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %27 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %user_token_number = getelementptr inbounds %struct.bucket, %struct.bucket* %27, i32 0, i32 7
  %28 = load i16, i16* %user_token_number, align 2
  %conv23 = sext i16 %28 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  %29 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value24 = getelementptr inbounds %struct.bucket, %struct.bucket* %29, i32 0, i32 4
  %30 = load i16, i16* %value24, align 2
  %conv25 = sext i16 %30 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ %conv25, %cond.false ]
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i8* %25, i32 %cond)
  %31 = load i32, i32* @semantic_parser, align 4
  %tobool26 = icmp ne i32 %31, 0
  br i1 %tobool26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %cond.end
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %33 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value28 = getelementptr inbounds %struct.bucket, %struct.bucket* %33, i32 0, i32 4
  %34 = load i16, i16* %value28, align 2
  %idxprom29 = sext i16 %34 to i64
  %35 = load i8**, i8*** @tags, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %35, i64 %idxprom29
  %36 = load i8*, i8** %arrayidx30, align 8
  %37 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %value31 = getelementptr inbounds %struct.bucket, %struct.bucket* %37, i32 0, i32 4
  %38 = load i16, i16* %value31, align 2
  %conv32 = sext i16 %38 to i32
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i8* %36, i32 %conv32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %cond.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %while.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.36, %if.then
  %39 = load %struct.bucket*, %struct.bucket** %bp, align 8
  %next = getelementptr inbounds %struct.bucket, %struct.bucket* %39, i32 0, i32 1
  %40 = load %struct.bucket*, %struct.bucket** %next, align 8
  store %struct.bucket* %40, %struct.bucket** %bp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call37 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %41)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
