; ModuleID = './lib/parseppd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.YYSTYPE = type { i8* }
%struct.ppd = type { i8*, i8*, i8*, %struct.string_htable* }
%struct.string_htable = type opaque
%union.yyalloc = type { %union.YYSTYPE }

@ppddebug = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@ppdnerrs = common global i32 0, align 4
@ppdchar = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Stack size increased to %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@ppdpact = internal constant [29 x i8] c"\FC\09\FD\FC\FC\FF\02\01\03\FC\FC\FC\FC\0A\06\05\0B\0C\FC\FC\08\0F\12\0E\FC\FC\10\11\FC", align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"Reading a token: \00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@yytranslate = internal constant [266 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0B\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A", align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@ppdlval = common global %union.YYSTYPE zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ppdyycheck = internal constant [27 x i8] c"\03\04\05\06\07\08\09\0A\0B\00\0B\09\0B\03\0B\09\0B\09\03\08\08\03\08\FF\FF\09\09", align 16
@ppdyytable = internal constant [27 x i8] c"\04\05\06\07\08\09\0A\0B\0C\03\0E\0F\10\12\11\13\14\17\18\15\16\19\1A\00\00\1B\1C", align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@yydefact = internal constant [29 x i8] c"\03\00\02\01\0B\00\00\00\00\08\07\09\0A\00\00\00\00\00\04\0D\00\00\00\00\05\06\00\00\0C", align 16
@ppdr2 = internal constant [14 x i8] c"\00\02\01\00\03\05\05\02\02\02\02\02\07\03", align 1
@ppd_parse_result = internal global %struct.ppd* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@ppdr1 = internal constant [14 x i8] c"\00\0C\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F", align 1
@yypgoto = internal constant [4 x i8] c"\FC\FC\FC\FC", align 1
@yydefgoto = internal constant [4 x i8] c"\FF\01\02\0D", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Error: discarding\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Error: popping\00", align 1
@yystos = internal constant [29 x i8] c"\00\0D\0E\00\03\04\05\06\07\08\09\0A\0B\0F\0B\09\0B\0B\03\09\0B\08\08\09\03\03\08\09\09", align 16
@.str.13 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@ppdfilename = external global i8*, align 8
@ppdlineno = external global i32, align 4
@ppdin = external global %struct._IO_FILE*, align 8
@ppdpath = external global i8**, align 8
@msg_verbosity = external global i32, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"Parsing file `%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"token %s (\00", align 1
@yytname = internal constant [17 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* null], align 16
@.str.18 = private unnamed_addr constant [11 x i8] c"nterm %s (\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"EOL\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"tDefaultFont\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"tFont\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"tModelName\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"tNickName\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"SYMBOL\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"USTRING\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ppd\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"font_clause\00", align 1
@yytoknum = internal constant [12 x i16] [i16 0, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 58], align 16
@.str.36 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" u\22%s\22\00", align 1
@yyrline = internal constant [14 x i8] c"\00\5C\5Cehmsy}\81\85\89\93\95", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Reducing stack by rule %d (line %lu):\0A\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@yyprhs = internal constant [14 x i8] c"\00\00\03\05\06\0A\10\16\19\1C\1F\22%-", align 1
@yyrhs = internal constant [49 x i8] c"\0D\00\FF\0E\FF\FF\0E\0F\03\FF\0E\06\0B\08\03\FF\0E\07\0B\08\03\FF\0E\09\FF\0E\08\FF\0E\0A\FF\0E\0B\FF\0E\03\FF\05\09\0B\09\08\09\09\FF\04\0B\09\FF", align 16
@.str.41 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@yysyntax_error.yyunexpected = internal constant [28 x i8] c"syntax error, unexpected %s\00", align 16
@yysyntax_error.yyexpecting = internal constant [15 x i8] c", expecting %s\00", align 1
@yysyntax_error.yyor = internal constant [7 x i8] c" or %s\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ppdparse() #0 {
entry:
  %ppdstate = alloca i32, align 4
  %yyn = alloca i32, align 4
  %yyresult = alloca i32, align 4
  %yyerrstatus = alloca i32, align 4
  %yytoken = alloca i32, align 4
  %yymsgbuf = alloca [128 x i8], align 16
  %yymsg = alloca i8*, align 8
  %yymsg_alloc = alloca i64, align 8
  %yyssa = alloca [200 x i16], align 16
  %yyss = alloca i16*, align 8
  %yyssp = alloca i16*, align 8
  %yyvsa = alloca [200 x %union.YYSTYPE], align 16
  %yyvs = alloca %union.YYSTYPE*, align 8
  %yyvsp = alloca %union.YYSTYPE*, align 8
  %yystacksize = alloca i64, align 8
  %ppdval = alloca %union.YYSTYPE, align 8
  %ppdyylen = alloca i32, align 4
  %yysize = alloca i64, align 8
  %yyss1 = alloca i16*, align 8
  %yyptr = alloca %union.yyalloc*, align 8
  %yynewbytes = alloca i64, align 8
  %yynewbytes29 = alloca i64, align 8
  %yysize287 = alloca i64, align 8
  %yyalloc = alloca i64, align 8
  store i32 0, i32* %yytoken, align 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %yymsgbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %yymsg, align 8
  store i64 128, i64* %yymsg_alloc, align 8
  %arraydecay1 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  store i16* %arraydecay1, i16** %yyss, align 8
  %arraydecay2 = getelementptr inbounds [200 x %union.YYSTYPE], [200 x %union.YYSTYPE]* %yyvsa, i32 0, i32 0
  store %union.YYSTYPE* %arraydecay2, %union.YYSTYPE** %yyvs, align 8
  store i64 200, i64* %yystacksize, align 8
  store i32 0, i32* %ppdyylen, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @ppddebug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %ppdstate, align 4
  store i32 0, i32* %yyerrstatus, align 4
  store i32 0, i32* @ppdnerrs, align 4
  store i32 -2, i32* @ppdchar, align 4
  %2 = load i16*, i16** %yyss, align 8
  store i16* %2, i16** %yyssp, align 8
  %3 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  store %union.YYSTYPE* %3, %union.YYSTYPE** %yyvsp, align 8
  br label %yysetstate

yynewstate:                                       ; preds = %do.end.411, %if.end.284, %if.end.148
  %4 = load i16*, i16** %yyssp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr, i16** %yyssp, align 8
  br label %yysetstate

yysetstate:                                       ; preds = %yynewstate, %do.end
  %5 = load i32, i32* %ppdstate, align 4
  %conv = trunc i32 %5 to i16
  %6 = load i16*, i16** %yyssp, align 8
  store i16 %conv, i16* %6, align 2
  %7 = load i16*, i16** %yyss, align 8
  %8 = load i64, i64* %yystacksize, align 8
  %add.ptr = getelementptr inbounds i16, i16* %7, i64 %8
  %add.ptr3 = getelementptr inbounds i16, i16* %add.ptr, i64 -1
  %9 = load i16*, i16** %yyssp, align 8
  %cmp = icmp ule i16* %add.ptr3, %9
  br i1 %cmp, label %if.then.5, label %if.end.59

if.then.5:                                        ; preds = %yysetstate
  %10 = load i16*, i16** %yyssp, align 8
  %11 = load i16*, i16** %yyss, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, i64* %yysize, align 8
  %12 = load i64, i64* %yystacksize, align 8
  %cmp6 = icmp ule i64 10000, %12
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  br label %yyexhaustedlab

if.end.9:                                         ; preds = %if.then.5
  %13 = load i64, i64* %yystacksize, align 8
  %mul = mul i64 %13, 2
  store i64 %mul, i64* %yystacksize, align 8
  %14 = load i64, i64* %yystacksize, align 8
  %cmp10 = icmp ult i64 10000, %14
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i64 10000, i64* %yystacksize, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  %15 = load i16*, i16** %yyss, align 8
  store i16* %15, i16** %yyss1, align 8
  %16 = load i64, i64* %yystacksize, align 8
  %mul14 = mul i64 %16, 10
  %add15 = add i64 %mul14, 7
  %call16 = call noalias i8* @malloc(i64 %add15) #3
  %17 = bitcast i8* %call16 to %union.yyalloc*
  store %union.yyalloc* %17, %union.yyalloc** %yyptr, align 8
  %18 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %tobool17 = icmp ne %union.yyalloc* %18, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.13
  br label %yyexhaustedlab

if.end.19:                                        ; preds = %if.end.13
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %19 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss21 = bitcast %union.yyalloc* %19 to i16*
  %20 = bitcast i16* %yyss21 to i8*
  %21 = load i16*, i16** %yyss, align 8
  %22 = bitcast i16* %21 to i8*
  %23 = load i64, i64* %yysize, align 8
  %mul22 = mul i64 %23, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %22, i64 %mul22, i32 2, i1 false)
  %24 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss23 = bitcast %union.yyalloc* %24 to i16*
  store i16* %yyss23, i16** %yyss, align 8
  %25 = load i64, i64* %yystacksize, align 8
  %mul24 = mul i64 %25, 2
  %add25 = add i64 %mul24, 7
  store i64 %add25, i64* %yynewbytes, align 8
  %26 = load i64, i64* %yynewbytes, align 8
  %div = udiv i64 %26, 8
  %27 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr26 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %27, i64 %div
  store %union.yyalloc* %add.ptr26, %union.yyalloc** %yyptr, align 8
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.20
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %28 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs30 = bitcast %union.yyalloc* %28 to %union.YYSTYPE*
  %29 = bitcast %union.YYSTYPE* %yyvs30 to i8*
  %30 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %31 = bitcast %union.YYSTYPE* %30 to i8*
  %32 = load i64, i64* %yysize, align 8
  %mul31 = mul i64 %32, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %31, i64 %mul31, i32 8, i1 false)
  %33 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs32 = bitcast %union.yyalloc* %33 to %union.YYSTYPE*
  store %union.YYSTYPE* %yyvs32, %union.YYSTYPE** %yyvs, align 8
  %34 = load i64, i64* %yystacksize, align 8
  %mul33 = mul i64 %34, 8
  %add34 = add i64 %mul33, 7
  store i64 %add34, i64* %yynewbytes29, align 8
  %35 = load i64, i64* %yynewbytes29, align 8
  %div35 = udiv i64 %35, 8
  %36 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr36 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %36, i64 %div35
  store %union.yyalloc* %add.ptr36, %union.yyalloc** %yyptr, align 8
  br label %do.end.37

do.end.37:                                        ; preds = %do.body.28
  %37 = load i16*, i16** %yyss1, align 8
  %arraydecay38 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp39 = icmp ne i16* %37, %arraydecay38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.37
  %38 = load i16*, i16** %yyss1, align 8
  %39 = bitcast i16* %38 to i8*
  call void @free(i8* %39) #3
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.end.37
  %40 = load i16*, i16** %yyss, align 8
  %41 = load i64, i64* %yysize, align 8
  %add.ptr43 = getelementptr inbounds i16, i16* %40, i64 %41
  %add.ptr44 = getelementptr inbounds i16, i16* %add.ptr43, i64 -1
  store i16* %add.ptr44, i16** %yyssp, align 8
  %42 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %43 = load i64, i64* %yysize, align 8
  %add.ptr45 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %42, i64 %43
  %add.ptr46 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %add.ptr45, i64 -1
  store %union.YYSTYPE* %add.ptr46, %union.YYSTYPE** %yyvsp, align 8
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.42
  %44 = load i32, i32* @ppddebug, align 4
  %tobool48 = icmp ne i32 %44, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %do.body.47
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i64, i64* %yystacksize, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i64 %46)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %do.body.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %47 = load i16*, i16** %yyss, align 8
  %48 = load i64, i64* %yystacksize, align 8
  %add.ptr53 = getelementptr inbounds i16, i16* %47, i64 %48
  %add.ptr54 = getelementptr inbounds i16, i16* %add.ptr53, i64 -1
  %49 = load i16*, i16** %yyssp, align 8
  %cmp55 = icmp ule i16* %add.ptr54, %49
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %do.end.52
  br label %yyabortlab

if.end.58:                                        ; preds = %do.end.52
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %yysetstate
  br label %do.body.60

do.body.60:                                       ; preds = %if.end.59
  %50 = load i32, i32* @ppddebug, align 4
  %tobool61 = icmp ne i32 %50, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %do.body.60
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i32, i32* %ppdstate, align 4
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 %52)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %do.body.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %yybackup

yybackup:                                         ; preds = %do.end.65
  %53 = load i32, i32* %ppdstate, align 4
  %idxprom = sext i32 %53 to i64
  %arrayidx = getelementptr inbounds [29 x i8], [29 x i8]* @ppdpact, i32 0, i64 %idxprom
  %54 = load i8, i8* %arrayidx, align 1
  %conv66 = sext i8 %54 to i32
  store i32 %conv66, i32* %yyn, align 4
  %55 = load i32, i32* %yyn, align 4
  %cmp67 = icmp eq i32 %55, -4
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %yybackup
  br label %yydefault

if.end.70:                                        ; preds = %yybackup
  %56 = load i32, i32* @ppdchar, align 4
  %cmp71 = icmp eq i32 %56, -2
  br i1 %cmp71, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %if.end.70
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %57 = load i32, i32* @ppddebug, align 4
  %tobool75 = icmp ne i32 %57, 0
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %do.body.74
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %do.body.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  %call80 = call i32 @ppdlex()
  store i32 %call80, i32* @ppdchar, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.79, %if.end.70
  %59 = load i32, i32* @ppdchar, align 4
  %cmp82 = icmp sle i32 %59, 0
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %if.end.81
  store i32 0, i32* %yytoken, align 4
  store i32 0, i32* @ppdchar, align 4
  br label %do.body.85

do.body.85:                                       ; preds = %if.then.84
  %60 = load i32, i32* @ppddebug, align 4
  %tobool86 = icmp ne i32 %60, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %do.body.85
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %do.body.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %if.end.103

if.else:                                          ; preds = %if.end.81
  %62 = load i32, i32* @ppdchar, align 4
  %cmp91 = icmp ule i32 %62, 265
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %63 = load i32, i32* @ppdchar, align 4
  %idxprom93 = sext i32 %63 to i64
  %arrayidx94 = getelementptr inbounds [266 x i8], [266 x i8]* @yytranslate, i32 0, i64 %idxprom93
  %64 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %64 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv95, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %yytoken, align 4
  br label %do.body.96

do.body.96:                                       ; preds = %cond.end
  %65 = load i32, i32* @ppddebug, align 4
  %tobool97 = icmp ne i32 %65, 0
  br i1 %tobool97, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %do.body.96
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = load i32, i32* %yytoken, align 4
  call void @yy_symbol_print(%struct._IO_FILE* %67, i32 %68, %union.YYSTYPE* @ppdlval)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %do.body.96
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  br label %if.end.103

if.end.103:                                       ; preds = %do.end.102, %do.end.90
  %70 = load i32, i32* %yytoken, align 4
  %71 = load i32, i32* %yyn, align 4
  %add104 = add nsw i32 %71, %70
  store i32 %add104, i32* %yyn, align 4
  %72 = load i32, i32* %yyn, align 4
  %cmp105 = icmp slt i32 %72, 0
  br i1 %cmp105, label %if.then.115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.103
  %73 = load i32, i32* %yyn, align 4
  %cmp107 = icmp slt i32 26, %73
  br i1 %cmp107, label %if.then.115, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %lor.lhs.false
  %74 = load i32, i32* %yyn, align 4
  %idxprom110 = sext i32 %74 to i64
  %arrayidx111 = getelementptr inbounds [27 x i8], [27 x i8]* @ppdyycheck, i32 0, i64 %idxprom110
  %75 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %75 to i32
  %76 = load i32, i32* %yytoken, align 4
  %cmp113 = icmp ne i32 %conv112, %76
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %lor.lhs.false.109, %lor.lhs.false, %if.end.103
  br label %yydefault

if.end.116:                                       ; preds = %lor.lhs.false.109
  %77 = load i32, i32* %yyn, align 4
  %idxprom117 = sext i32 %77 to i64
  %arrayidx118 = getelementptr inbounds [27 x i8], [27 x i8]* @ppdyytable, i32 0, i64 %idxprom117
  %78 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %78 to i32
  store i32 %conv119, i32* %yyn, align 4
  %79 = load i32, i32* %yyn, align 4
  %cmp120 = icmp sle i32 %79, 0
  br i1 %cmp120, label %if.then.122, label %if.end.130

if.then.122:                                      ; preds = %if.end.116
  %80 = load i32, i32* %yyn, align 4
  %cmp123 = icmp eq i32 %80, 0
  br i1 %cmp123, label %if.then.128, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.then.122
  %81 = load i32, i32* %yyn, align 4
  %cmp126 = icmp eq i32 %81, -1
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %lor.lhs.false.125, %if.then.122
  br label %yyerrlab

if.end.129:                                       ; preds = %lor.lhs.false.125
  %82 = load i32, i32* %yyn, align 4
  %sub = sub nsw i32 0, %82
  store i32 %sub, i32* %yyn, align 4
  br label %yyreduce

if.end.130:                                       ; preds = %if.end.116
  %83 = load i32, i32* %yyn, align 4
  %cmp131 = icmp eq i32 %83, 3
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.130
  br label %yyacceptlab

if.end.134:                                       ; preds = %if.end.130
  %84 = load i32, i32* %yyerrstatus, align 4
  %tobool135 = icmp ne i32 %84, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.134
  %85 = load i32, i32* %yyerrstatus, align 4
  %dec = add nsw i32 %85, -1
  store i32 %dec, i32* %yyerrstatus, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.end.134
  br label %do.body.138

do.body.138:                                      ; preds = %if.end.137
  %86 = load i32, i32* @ppddebug, align 4
  %tobool139 = icmp ne i32 %86, 0
  br i1 %tobool139, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %do.body.138
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = load i32, i32* %yytoken, align 4
  call void @yy_symbol_print(%struct._IO_FILE* %88, i32 %89, %union.YYSTYPE* @ppdlval)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %do.body.138
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  %91 = load i32, i32* @ppdchar, align 4
  %cmp145 = icmp ne i32 %91, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %do.end.144
  store i32 -2, i32* @ppdchar, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %do.end.144
  %92 = load i32, i32* %yyn, align 4
  store i32 %92, i32* %ppdstate, align 4
  %93 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr149 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %93, i32 1
  store %union.YYSTYPE* %incdec.ptr149, %union.YYSTYPE** %yyvsp, align 8
  %94 = bitcast %union.YYSTYPE* %incdec.ptr149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* bitcast (%union.YYSTYPE* @ppdlval to i8*), i64 8, i32 8, i1 false)
  br label %yynewstate

yydefault:                                        ; preds = %if.then.115, %if.then.69
  %95 = load i32, i32* %ppdstate, align 4
  %idxprom150 = sext i32 %95 to i64
  %arrayidx151 = getelementptr inbounds [29 x i8], [29 x i8]* @yydefact, i32 0, i64 %idxprom150
  %96 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %96 to i32
  store i32 %conv152, i32* %yyn, align 4
  %97 = load i32, i32* %yyn, align 4
  %cmp153 = icmp eq i32 %97, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %yydefault
  br label %yyerrlab

if.end.156:                                       ; preds = %yydefault
  br label %yyreduce

yyreduce:                                         ; preds = %if.end.156, %if.end.129
  %98 = load i32, i32* %yyn, align 4
  %idxprom157 = sext i32 %98 to i64
  %arrayidx158 = getelementptr inbounds [14 x i8], [14 x i8]* @ppdr2, i32 0, i64 %idxprom157
  %99 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %99 to i32
  store i32 %conv159, i32* %ppdyylen, align 4
  %100 = load i32, i32* %ppdyylen, align 4
  %sub160 = sub nsw i32 1, %100
  %idxprom161 = sext i32 %sub160 to i64
  %101 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx162 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %101, i64 %idxprom161
  %102 = bitcast %union.YYSTYPE* %ppdval to i8*
  %103 = bitcast %union.YYSTYPE* %arrayidx162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 8, i32 8, i1 false)
  br label %do.body.163

do.body.163:                                      ; preds = %yyreduce
  %104 = load i32, i32* @ppddebug, align 4
  %tobool164 = icmp ne i32 %104, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %do.body.163
  %105 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %106 = load i32, i32* %yyn, align 4
  call void @yy_reduce_print(%union.YYSTYPE* %105, i32 %106)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %do.body.163
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  %107 = load i32, i32* %yyn, align 4
  switch i32 %107, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.169
    i32 4, label %sw.bb.172
    i32 5, label %sw.bb.179
    i32 6, label %sw.bb.193
    i32 7, label %sw.bb.207
    i32 8, label %sw.bb.211
    i32 9, label %sw.bb.215
    i32 10, label %sw.bb.219
    i32 11, label %sw.bb.223
    i32 12, label %sw.bb.227
    i32 13, label %sw.bb.231
  ]

sw.bb:                                            ; preds = %do.end.167
  %108 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx168 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %108, i64 0
  %ppd = bitcast %union.YYSTYPE* %arrayidx168 to %struct.ppd**
  %109 = load %struct.ppd*, %struct.ppd** %ppd, align 8
  store %struct.ppd* %109, %struct.ppd** @ppd_parse_result, align 8
  br label %sw.epilog

sw.bb.169:                                        ; preds = %do.end.167
  %call170 = call %struct.ppd* @ppd_new()
  %ppd171 = bitcast %union.YYSTYPE* %ppdval to %struct.ppd**
  store %struct.ppd* %call170, %struct.ppd** %ppd171, align 8
  br label %sw.epilog

sw.bb.172:                                        ; preds = %do.end.167
  %110 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx173 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %110, i64 -2
  %ppd174 = bitcast %union.YYSTYPE* %arrayidx173 to %struct.ppd**
  %111 = load %struct.ppd*, %struct.ppd** %ppd174, align 8
  %112 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx175 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %112, i64 -1
  %string = bitcast %union.YYSTYPE* %arrayidx175 to i8**
  %113 = load i8*, i8** %string, align 8
  call void @ppd_font_add(%struct.ppd* %111, i8* %113)
  %114 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx176 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %114, i64 -2
  %ppd177 = bitcast %union.YYSTYPE* %arrayidx176 to %struct.ppd**
  %115 = load %struct.ppd*, %struct.ppd** %ppd177, align 8
  %ppd178 = bitcast %union.YYSTYPE* %ppdval to %struct.ppd**
  store %struct.ppd* %115, %struct.ppd** %ppd178, align 8
  br label %sw.epilog

sw.bb.179:                                        ; preds = %do.end.167
  %116 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx180 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %116, i64 -4
  %ppd181 = bitcast %union.YYSTYPE* %arrayidx180 to %struct.ppd**
  %117 = load %struct.ppd*, %struct.ppd** %ppd181, align 8
  %modelname = getelementptr inbounds %struct.ppd, %struct.ppd* %117, i32 0, i32 1
  %118 = load i8*, i8** %modelname, align 8
  %tobool182 = icmp ne i8* %118, null
  br i1 %tobool182, label %if.end.189, label %if.then.183

if.then.183:                                      ; preds = %sw.bb.179
  %119 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx184 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %119, i64 -1
  %string185 = bitcast %union.YYSTYPE* %arrayidx184 to i8**
  %120 = load i8*, i8** %string185, align 8
  %121 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx186 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %121, i64 -4
  %ppd187 = bitcast %union.YYSTYPE* %arrayidx186 to %struct.ppd**
  %122 = load %struct.ppd*, %struct.ppd** %ppd187, align 8
  %modelname188 = getelementptr inbounds %struct.ppd, %struct.ppd* %122, i32 0, i32 1
  store i8* %120, i8** %modelname188, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.183, %sw.bb.179
  %123 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx190 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %123, i64 -4
  %ppd191 = bitcast %union.YYSTYPE* %arrayidx190 to %struct.ppd**
  %124 = load %struct.ppd*, %struct.ppd** %ppd191, align 8
  %ppd192 = bitcast %union.YYSTYPE* %ppdval to %struct.ppd**
  store %struct.ppd* %124, %struct.ppd** %ppd192, align 8
  br label %sw.epilog

sw.bb.193:                                        ; preds = %do.end.167
  %125 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx194 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %125, i64 -4
  %ppd195 = bitcast %union.YYSTYPE* %arrayidx194 to %struct.ppd**
  %126 = load %struct.ppd*, %struct.ppd** %ppd195, align 8
  %nickname = getelementptr inbounds %struct.ppd, %struct.ppd* %126, i32 0, i32 2
  %127 = load i8*, i8** %nickname, align 8
  %tobool196 = icmp ne i8* %127, null
  br i1 %tobool196, label %if.end.203, label %if.then.197

if.then.197:                                      ; preds = %sw.bb.193
  %128 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx198 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %128, i64 -1
  %string199 = bitcast %union.YYSTYPE* %arrayidx198 to i8**
  %129 = load i8*, i8** %string199, align 8
  %130 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx200 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %130, i64 -4
  %ppd201 = bitcast %union.YYSTYPE* %arrayidx200 to %struct.ppd**
  %131 = load %struct.ppd*, %struct.ppd** %ppd201, align 8
  %nickname202 = getelementptr inbounds %struct.ppd, %struct.ppd* %131, i32 0, i32 2
  store i8* %129, i8** %nickname202, align 8
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.197, %sw.bb.193
  %132 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx204 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %132, i64 -4
  %ppd205 = bitcast %union.YYSTYPE* %arrayidx204 to %struct.ppd**
  %133 = load %struct.ppd*, %struct.ppd** %ppd205, align 8
  %ppd206 = bitcast %union.YYSTYPE* %ppdval to %struct.ppd**
  store %struct.ppd* %133, %struct.ppd** %ppd206, align 8
  br label %sw.epilog

sw.bb.207:                                        ; preds = %do.end.167
  %134 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx208 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %134, i64 -1
  %ppd209 = bitcast %union.YYSTYPE* %arrayidx208 to %struct.ppd**
  %135 = load %struct.ppd*, %struct.ppd** %ppd209, align 8
  %ppd210 = bitcast %union.YYSTYPE* %ppdval to %struct.ppd**
  store %struct.ppd* %135, %struct.ppd** %ppd210, align 8
  br label %sw.epilog

sw.bb.211:                                        ; preds = %do.end.167
  %136 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx212 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %136, i64 -1
  %ppd213 = bitcast %union.YYSTYPE* %arrayidx212 to %struct.ppd**
  %137 = load %struct.ppd*, %struct.ppd** %ppd213, align 8
  %ppd214 = bitcast %union.YYSTYPE* %ppdval to %struct.ppd**
  store %struct.ppd* %137, %struct.ppd** %ppd214, align 8
  br label %sw.epilog

sw.bb.215:                                        ; preds = %do.end.167
  %138 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx216 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %138, i64 -1
  %ppd217 = bitcast %union.YYSTYPE* %arrayidx216 to %struct.ppd**
  %139 = load %struct.ppd*, %struct.ppd** %ppd217, align 8
  %ppd218 = bitcast %union.YYSTYPE* %ppdval to %struct.ppd**
  store %struct.ppd* %139, %struct.ppd** %ppd218, align 8
  br label %sw.epilog

sw.bb.219:                                        ; preds = %do.end.167
  %140 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx220 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %140, i64 -1
  %ppd221 = bitcast %union.YYSTYPE* %arrayidx220 to %struct.ppd**
  %141 = load %struct.ppd*, %struct.ppd** %ppd221, align 8
  %ppd222 = bitcast %union.YYSTYPE* %ppdval to %struct.ppd**
  store %struct.ppd* %141, %struct.ppd** %ppd222, align 8
  br label %sw.epilog

sw.bb.223:                                        ; preds = %do.end.167
  %142 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx224 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %142, i64 -1
  %ppd225 = bitcast %union.YYSTYPE* %arrayidx224 to %struct.ppd**
  %143 = load %struct.ppd*, %struct.ppd** %ppd225, align 8
  %ppd226 = bitcast %union.YYSTYPE* %ppdval to %struct.ppd**
  store %struct.ppd* %143, %struct.ppd** %ppd226, align 8
  br label %sw.epilog

sw.bb.227:                                        ; preds = %do.end.167
  %144 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx228 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %144, i64 -5
  %string229 = bitcast %union.YYSTYPE* %arrayidx228 to i8**
  %145 = load i8*, i8** %string229, align 8
  %string230 = bitcast %union.YYSTYPE* %ppdval to i8**
  store i8* %145, i8** %string230, align 8
  br label %sw.epilog

sw.bb.231:                                        ; preds = %do.end.167
  %146 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx232 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %146, i64 0
  %string233 = bitcast %union.YYSTYPE* %arrayidx232 to i8**
  %147 = load i8*, i8** %string233, align 8
  %string234 = bitcast %union.YYSTYPE* %ppdval to i8**
  store i8* %147, i8** %string234, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.167
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.231, %sw.bb.227, %sw.bb.223, %sw.bb.219, %sw.bb.215, %sw.bb.211, %sw.bb.207, %if.end.203, %if.end.189, %sw.bb.172, %sw.bb.169, %sw.bb
  br label %do.body.235

do.body.235:                                      ; preds = %sw.epilog
  %148 = load i32, i32* @ppddebug, align 4
  %tobool236 = icmp ne i32 %148, 0
  br i1 %tobool236, label %if.then.237, label %if.end.243

if.then.237:                                      ; preds = %do.body.235
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0))
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %151 = load i32, i32* %yyn, align 4
  %idxprom239 = sext i32 %151 to i64
  %arrayidx240 = getelementptr inbounds [14 x i8], [14 x i8]* @ppdr1, i32 0, i64 %idxprom239
  %152 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %152 to i32
  call void @yy_symbol_print(%struct._IO_FILE* %150, i32 %conv241, %union.YYSTYPE* %ppdval)
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.237, %do.body.235
  br label %do.end.244

do.end.244:                                       ; preds = %if.end.243
  %154 = load i32, i32* %ppdyylen, align 4
  %155 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext = sext i32 %154 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr245 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %155, i64 %idx.neg
  store %union.YYSTYPE* %add.ptr245, %union.YYSTYPE** %yyvsp, align 8
  %156 = load i32, i32* %ppdyylen, align 4
  %157 = load i16*, i16** %yyssp, align 8
  %idx.ext246 = sext i32 %156 to i64
  %idx.neg247 = sub i64 0, %idx.ext246
  %add.ptr248 = getelementptr inbounds i16, i16* %157, i64 %idx.neg247
  store i16* %add.ptr248, i16** %yyssp, align 8
  store i32 0, i32* %ppdyylen, align 4
  br label %do.body.249

do.body.249:                                      ; preds = %do.end.244
  %158 = load i32, i32* @ppddebug, align 4
  %tobool250 = icmp ne i32 %158, 0
  br i1 %tobool250, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %do.body.249
  %159 = load i16*, i16** %yyss, align 8
  %160 = load i16*, i16** %yyssp, align 8
  call void @yy_stack_print(i16* %159, i16* %160)
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.251, %do.body.249
  br label %do.end.253

do.end.253:                                       ; preds = %if.end.252
  %161 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr254 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %161, i32 1
  store %union.YYSTYPE* %incdec.ptr254, %union.YYSTYPE** %yyvsp, align 8
  %162 = bitcast %union.YYSTYPE* %incdec.ptr254 to i8*
  %163 = bitcast %union.YYSTYPE* %ppdval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 8, i32 8, i1 false)
  %164 = load i32, i32* %yyn, align 4
  %idxprom255 = sext i32 %164 to i64
  %arrayidx256 = getelementptr inbounds [14 x i8], [14 x i8]* @ppdr1, i32 0, i64 %idxprom255
  %165 = load i8, i8* %arrayidx256, align 1
  %conv257 = zext i8 %165 to i32
  store i32 %conv257, i32* %yyn, align 4
  %166 = load i32, i32* %yyn, align 4
  %sub258 = sub nsw i32 %166, 12
  %idxprom259 = sext i32 %sub258 to i64
  %arrayidx260 = getelementptr inbounds [4 x i8], [4 x i8]* @yypgoto, i32 0, i64 %idxprom259
  %167 = load i8, i8* %arrayidx260, align 1
  %conv261 = sext i8 %167 to i32
  %168 = load i16*, i16** %yyssp, align 8
  %169 = load i16, i16* %168, align 2
  %conv262 = sext i16 %169 to i32
  %add263 = add nsw i32 %conv261, %conv262
  store i32 %add263, i32* %ppdstate, align 4
  %170 = load i32, i32* %ppdstate, align 4
  %cmp264 = icmp sle i32 0, %170
  br i1 %cmp264, label %land.lhs.true, label %if.else.279

land.lhs.true:                                    ; preds = %do.end.253
  %171 = load i32, i32* %ppdstate, align 4
  %cmp266 = icmp sle i32 %171, 26
  br i1 %cmp266, label %land.lhs.true.268, label %if.else.279

land.lhs.true.268:                                ; preds = %land.lhs.true
  %172 = load i32, i32* %ppdstate, align 4
  %idxprom269 = sext i32 %172 to i64
  %arrayidx270 = getelementptr inbounds [27 x i8], [27 x i8]* @ppdyycheck, i32 0, i64 %idxprom269
  %173 = load i8, i8* %arrayidx270, align 1
  %conv271 = sext i8 %173 to i32
  %174 = load i16*, i16** %yyssp, align 8
  %175 = load i16, i16* %174, align 2
  %conv272 = sext i16 %175 to i32
  %cmp273 = icmp eq i32 %conv271, %conv272
  br i1 %cmp273, label %if.then.275, label %if.else.279

if.then.275:                                      ; preds = %land.lhs.true.268
  %176 = load i32, i32* %ppdstate, align 4
  %idxprom276 = sext i32 %176 to i64
  %arrayidx277 = getelementptr inbounds [27 x i8], [27 x i8]* @ppdyytable, i32 0, i64 %idxprom276
  %177 = load i8, i8* %arrayidx277, align 1
  %conv278 = zext i8 %177 to i32
  store i32 %conv278, i32* %ppdstate, align 4
  br label %if.end.284

if.else.279:                                      ; preds = %land.lhs.true.268, %land.lhs.true, %do.end.253
  %178 = load i32, i32* %yyn, align 4
  %sub280 = sub nsw i32 %178, 12
  %idxprom281 = sext i32 %sub280 to i64
  %arrayidx282 = getelementptr inbounds [4 x i8], [4 x i8]* @yydefgoto, i32 0, i64 %idxprom281
  %179 = load i8, i8* %arrayidx282, align 1
  %conv283 = sext i8 %179 to i32
  store i32 %conv283, i32* %ppdstate, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.else.279, %if.then.275
  br label %yynewstate

yyerrlab:                                         ; preds = %if.then.155, %if.then.128
  %180 = load i32, i32* %yyerrstatus, align 4
  %tobool285 = icmp ne i32 %180, 0
  br i1 %tobool285, label %if.end.328, label %if.then.286

if.then.286:                                      ; preds = %yyerrlab
  %181 = load i32, i32* @ppdnerrs, align 4
  %inc = add nsw i32 %181, 1
  store i32 %inc, i32* @ppdnerrs, align 4
  %182 = load i32, i32* %ppdstate, align 4
  %183 = load i32, i32* @ppdchar, align 4
  %call288 = call i64 @yysyntax_error(i8* null, i32 %182, i32 %183)
  store i64 %call288, i64* %yysize287, align 8
  %184 = load i64, i64* %yymsg_alloc, align 8
  %185 = load i64, i64* %yysize287, align 8
  %cmp289 = icmp ult i64 %184, %185
  br i1 %cmp289, label %land.lhs.true.291, label %if.end.314

land.lhs.true.291:                                ; preds = %if.then.286
  %186 = load i64, i64* %yymsg_alloc, align 8
  %cmp292 = icmp ult i64 %186, -1
  br i1 %cmp292, label %if.then.294, label %if.end.314

if.then.294:                                      ; preds = %land.lhs.true.291
  %187 = load i64, i64* %yysize287, align 8
  %mul295 = mul i64 2, %187
  store i64 %mul295, i64* %yyalloc, align 8
  %188 = load i64, i64* %yysize287, align 8
  %189 = load i64, i64* %yyalloc, align 8
  %cmp296 = icmp ule i64 %188, %189
  br i1 %cmp296, label %land.lhs.true.298, label %if.then.301

land.lhs.true.298:                                ; preds = %if.then.294
  %190 = load i64, i64* %yyalloc, align 8
  %cmp299 = icmp ule i64 %190, -1
  br i1 %cmp299, label %if.end.302, label %if.then.301

if.then.301:                                      ; preds = %land.lhs.true.298, %if.then.294
  store i64 -1, i64* %yyalloc, align 8
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.301, %land.lhs.true.298
  %191 = load i8*, i8** %yymsg, align 8
  %arraydecay303 = getelementptr inbounds [128 x i8], [128 x i8]* %yymsgbuf, i32 0, i32 0
  %cmp304 = icmp ne i8* %191, %arraydecay303
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %if.end.302
  %192 = load i8*, i8** %yymsg, align 8
  call void @free(i8* %192) #3
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.306, %if.end.302
  %193 = load i64, i64* %yyalloc, align 8
  %call308 = call noalias i8* @malloc(i64 %193) #3
  store i8* %call308, i8** %yymsg, align 8
  %194 = load i8*, i8** %yymsg, align 8
  %tobool309 = icmp ne i8* %194, null
  br i1 %tobool309, label %if.then.310, label %if.else.311

if.then.310:                                      ; preds = %if.end.307
  %195 = load i64, i64* %yyalloc, align 8
  store i64 %195, i64* %yymsg_alloc, align 8
  br label %if.end.313

if.else.311:                                      ; preds = %if.end.307
  %arraydecay312 = getelementptr inbounds [128 x i8], [128 x i8]* %yymsgbuf, i32 0, i32 0
  store i8* %arraydecay312, i8** %yymsg, align 8
  store i64 128, i64* %yymsg_alloc, align 8
  br label %if.end.313

if.end.313:                                       ; preds = %if.else.311, %if.then.310
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %land.lhs.true.291, %if.then.286
  %196 = load i64, i64* %yysize287, align 8
  %cmp315 = icmp ult i64 0, %196
  br i1 %cmp315, label %land.lhs.true.317, label %if.else.322

land.lhs.true.317:                                ; preds = %if.end.314
  %197 = load i64, i64* %yysize287, align 8
  %198 = load i64, i64* %yymsg_alloc, align 8
  %cmp318 = icmp ule i64 %197, %198
  br i1 %cmp318, label %if.then.320, label %if.else.322

if.then.320:                                      ; preds = %land.lhs.true.317
  %199 = load i8*, i8** %yymsg, align 8
  %200 = load i32, i32* %ppdstate, align 4
  %201 = load i32, i32* @ppdchar, align 4
  %call321 = call i64 @yysyntax_error(i8* %199, i32 %200, i32 %201)
  %202 = load i8*, i8** %yymsg, align 8
  call void @ppderror(i8* %202)
  br label %if.end.327

if.else.322:                                      ; preds = %land.lhs.true.317, %if.end.314
  call void @ppderror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  %203 = load i64, i64* %yysize287, align 8
  %cmp323 = icmp ne i64 %203, 0
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.else.322
  br label %yyexhaustedlab

if.end.326:                                       ; preds = %if.else.322
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.320
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %yyerrlab
  %204 = load i32, i32* %yyerrstatus, align 4
  %cmp329 = icmp eq i32 %204, 3
  br i1 %cmp329, label %if.then.331, label %if.end.341

if.then.331:                                      ; preds = %if.end.328
  %205 = load i32, i32* @ppdchar, align 4
  %cmp332 = icmp sle i32 %205, 0
  br i1 %cmp332, label %if.then.334, label %if.else.339

if.then.334:                                      ; preds = %if.then.331
  %206 = load i32, i32* @ppdchar, align 4
  %cmp335 = icmp eq i32 %206, 0
  br i1 %cmp335, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %if.then.334
  br label %yyabortlab

if.end.338:                                       ; preds = %if.then.334
  br label %if.end.340

if.else.339:                                      ; preds = %if.then.331
  %207 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %207, %union.YYSTYPE* @ppdlval)
  store i32 -2, i32* @ppdchar, align 4
  br label %if.end.340

if.end.340:                                       ; preds = %if.else.339, %if.end.338
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.end.328
  br label %yyerrlab1

yyerrorlab:                                       ; No predecessors!
  %208 = load i32, i32* %ppdyylen, align 4
  %209 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext342 = sext i32 %208 to i64
  %idx.neg343 = sub i64 0, %idx.ext342
  %add.ptr344 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %209, i64 %idx.neg343
  store %union.YYSTYPE* %add.ptr344, %union.YYSTYPE** %yyvsp, align 8
  %210 = load i32, i32* %ppdyylen, align 4
  %211 = load i16*, i16** %yyssp, align 8
  %idx.ext345 = sext i32 %210 to i64
  %idx.neg346 = sub i64 0, %idx.ext345
  %add.ptr347 = getelementptr inbounds i16, i16* %211, i64 %idx.neg346
  store i16* %add.ptr347, i16** %yyssp, align 8
  store i32 0, i32* %ppdyylen, align 4
  br label %do.body.348

do.body.348:                                      ; preds = %yyerrorlab
  %212 = load i32, i32* @ppddebug, align 4
  %tobool349 = icmp ne i32 %212, 0
  br i1 %tobool349, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %do.body.348
  %213 = load i16*, i16** %yyss, align 8
  %214 = load i16*, i16** %yyssp, align 8
  call void @yy_stack_print(i16* %213, i16* %214)
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.350, %do.body.348
  br label %do.end.352

do.end.352:                                       ; preds = %if.end.351
  %215 = load i16*, i16** %yyssp, align 8
  %216 = load i16, i16* %215, align 2
  %conv353 = sext i16 %216 to i32
  store i32 %conv353, i32* %ppdstate, align 4
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %do.end.352, %if.end.341
  store i32 3, i32* %yyerrstatus, align 4
  br label %for.cond

for.cond:                                         ; preds = %do.end.396, %yyerrlab1
  %217 = load i32, i32* %ppdstate, align 4
  %idxprom354 = sext i32 %217 to i64
  %arrayidx355 = getelementptr inbounds [29 x i8], [29 x i8]* @ppdpact, i32 0, i64 %idxprom354
  %218 = load i8, i8* %arrayidx355, align 1
  %conv356 = sext i8 %218 to i32
  store i32 %conv356, i32* %yyn, align 4
  %219 = load i32, i32* %yyn, align 4
  %cmp357 = icmp ne i32 %219, -4
  br i1 %cmp357, label %if.then.359, label %if.end.381

if.then.359:                                      ; preds = %for.cond
  %220 = load i32, i32* %yyn, align 4
  %add360 = add nsw i32 %220, 1
  store i32 %add360, i32* %yyn, align 4
  %221 = load i32, i32* %yyn, align 4
  %cmp361 = icmp sle i32 0, %221
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.380

land.lhs.true.363:                                ; preds = %if.then.359
  %222 = load i32, i32* %yyn, align 4
  %cmp364 = icmp sle i32 %222, 26
  br i1 %cmp364, label %land.lhs.true.366, label %if.end.380

land.lhs.true.366:                                ; preds = %land.lhs.true.363
  %223 = load i32, i32* %yyn, align 4
  %idxprom367 = sext i32 %223 to i64
  %arrayidx368 = getelementptr inbounds [27 x i8], [27 x i8]* @ppdyycheck, i32 0, i64 %idxprom367
  %224 = load i8, i8* %arrayidx368, align 1
  %conv369 = sext i8 %224 to i32
  %cmp370 = icmp eq i32 %conv369, 1
  br i1 %cmp370, label %if.then.372, label %if.end.380

if.then.372:                                      ; preds = %land.lhs.true.366
  %225 = load i32, i32* %yyn, align 4
  %idxprom373 = sext i32 %225 to i64
  %arrayidx374 = getelementptr inbounds [27 x i8], [27 x i8]* @ppdyytable, i32 0, i64 %idxprom373
  %226 = load i8, i8* %arrayidx374, align 1
  %conv375 = zext i8 %226 to i32
  store i32 %conv375, i32* %yyn, align 4
  %227 = load i32, i32* %yyn, align 4
  %cmp376 = icmp slt i32 0, %227
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.then.372
  br label %for.end

if.end.379:                                       ; preds = %if.then.372
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %land.lhs.true.366, %land.lhs.true.363, %if.then.359
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %for.cond
  %228 = load i16*, i16** %yyssp, align 8
  %229 = load i16*, i16** %yyss, align 8
  %cmp382 = icmp eq i16* %228, %229
  br i1 %cmp382, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %if.end.381
  br label %yyabortlab

if.end.385:                                       ; preds = %if.end.381
  %230 = load i32, i32* %ppdstate, align 4
  %idxprom386 = sext i32 %230 to i64
  %arrayidx387 = getelementptr inbounds [29 x i8], [29 x i8]* @yystos, i32 0, i64 %idxprom386
  %231 = load i8, i8* %arrayidx387, align 1
  %conv388 = zext i8 %231 to i32
  %232 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %conv388, %union.YYSTYPE* %232)
  %233 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr389 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %233, i64 -1
  store %union.YYSTYPE* %add.ptr389, %union.YYSTYPE** %yyvsp, align 8
  %234 = load i16*, i16** %yyssp, align 8
  %add.ptr390 = getelementptr inbounds i16, i16* %234, i64 -1
  store i16* %add.ptr390, i16** %yyssp, align 8
  %235 = load i16*, i16** %yyssp, align 8
  %236 = load i16, i16* %235, align 2
  %conv391 = sext i16 %236 to i32
  store i32 %conv391, i32* %ppdstate, align 4
  br label %do.body.392

do.body.392:                                      ; preds = %if.end.385
  %237 = load i32, i32* @ppddebug, align 4
  %tobool393 = icmp ne i32 %237, 0
  br i1 %tobool393, label %if.then.394, label %if.end.395

if.then.394:                                      ; preds = %do.body.392
  %238 = load i16*, i16** %yyss, align 8
  %239 = load i16*, i16** %yyssp, align 8
  call void @yy_stack_print(i16* %238, i16* %239)
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.394, %do.body.392
  br label %do.end.396

do.end.396:                                       ; preds = %if.end.395
  br label %for.cond

for.end:                                          ; preds = %if.then.378
  %240 = load i32, i32* %yyn, align 4
  %cmp397 = icmp eq i32 %240, 3
  br i1 %cmp397, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %for.end
  br label %yyacceptlab

if.end.400:                                       ; preds = %for.end
  %241 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr401 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %241, i32 1
  store %union.YYSTYPE* %incdec.ptr401, %union.YYSTYPE** %yyvsp, align 8
  %242 = bitcast %union.YYSTYPE* %incdec.ptr401 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* bitcast (%union.YYSTYPE* @ppdlval to i8*), i64 8, i32 8, i1 false)
  br label %do.body.402

do.body.402:                                      ; preds = %if.end.400
  %243 = load i32, i32* @ppddebug, align 4
  %tobool403 = icmp ne i32 %243, 0
  br i1 %tobool403, label %if.then.404, label %if.end.410

if.then.404:                                      ; preds = %do.body.402
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call405 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %246 = load i32, i32* %yyn, align 4
  %idxprom406 = sext i32 %246 to i64
  %arrayidx407 = getelementptr inbounds [29 x i8], [29 x i8]* @yystos, i32 0, i64 %idxprom406
  %247 = load i8, i8* %arrayidx407, align 1
  %conv408 = zext i8 %247 to i32
  %248 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yy_symbol_print(%struct._IO_FILE* %245, i32 %conv408, %union.YYSTYPE* %248)
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call409 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.410

if.end.410:                                       ; preds = %if.then.404, %do.body.402
  br label %do.end.411

do.end.411:                                       ; preds = %if.end.410
  %250 = load i32, i32* %yyn, align 4
  store i32 %250, i32* %ppdstate, align 4
  br label %yynewstate

yyacceptlab:                                      ; preds = %if.then.399, %if.then.133
  store i32 0, i32* %yyresult, align 4
  br label %yyreturn

yyabortlab:                                       ; preds = %if.then.384, %if.then.337, %if.then.57
  store i32 1, i32* %yyresult, align 4
  br label %yyreturn

yyexhaustedlab:                                   ; preds = %if.then.325, %if.then.18, %if.then.8
  call void @ppderror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  store i32 2, i32* %yyresult, align 4
  br label %yyreturn

yyreturn:                                         ; preds = %yyexhaustedlab, %yyabortlab, %yyacceptlab
  %251 = load i32, i32* @ppdchar, align 4
  %cmp412 = icmp ne i32 %251, 0
  br i1 %cmp412, label %land.lhs.true.414, label %if.end.418

land.lhs.true.414:                                ; preds = %yyreturn
  %252 = load i32, i32* @ppdchar, align 4
  %cmp415 = icmp ne i32 %252, -2
  br i1 %cmp415, label %if.then.417, label %if.end.418

if.then.417:                                      ; preds = %land.lhs.true.414
  %253 = load i32, i32* %yytoken, align 4
  call void @yydestruct(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i32 %253, %union.YYSTYPE* @ppdlval)
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.417, %land.lhs.true.414, %yyreturn
  %254 = load i32, i32* %ppdyylen, align 4
  %255 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext419 = sext i32 %254 to i64
  %idx.neg420 = sub i64 0, %idx.ext419
  %add.ptr421 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %255, i64 %idx.neg420
  store %union.YYSTYPE* %add.ptr421, %union.YYSTYPE** %yyvsp, align 8
  %256 = load i32, i32* %ppdyylen, align 4
  %257 = load i16*, i16** %yyssp, align 8
  %idx.ext422 = sext i32 %256 to i64
  %idx.neg423 = sub i64 0, %idx.ext422
  %add.ptr424 = getelementptr inbounds i16, i16* %257, i64 %idx.neg423
  store i16* %add.ptr424, i16** %yyssp, align 8
  br label %do.body.425

do.body.425:                                      ; preds = %if.end.418
  %258 = load i32, i32* @ppddebug, align 4
  %tobool426 = icmp ne i32 %258, 0
  br i1 %tobool426, label %if.then.427, label %if.end.428

if.then.427:                                      ; preds = %do.body.425
  %259 = load i16*, i16** %yyss, align 8
  %260 = load i16*, i16** %yyssp, align 8
  call void @yy_stack_print(i16* %259, i16* %260)
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.427, %do.body.425
  br label %do.end.429

do.end.429:                                       ; preds = %if.end.428
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.429
  %261 = load i16*, i16** %yyssp, align 8
  %262 = load i16*, i16** %yyss, align 8
  %cmp430 = icmp ne i16* %261, %262
  br i1 %cmp430, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %263 = load i16*, i16** %yyssp, align 8
  %264 = load i16, i16* %263, align 2
  %idxprom432 = sext i16 %264 to i64
  %arrayidx433 = getelementptr inbounds [29 x i8], [29 x i8]* @yystos, i32 0, i64 %idxprom432
  %265 = load i8, i8* %arrayidx433, align 1
  %conv434 = zext i8 %265 to i32
  %266 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  call void @yydestruct(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 %conv434, %union.YYSTYPE* %266)
  %267 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %add.ptr435 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %267, i64 -1
  store %union.YYSTYPE* %add.ptr435, %union.YYSTYPE** %yyvsp, align 8
  %268 = load i16*, i16** %yyssp, align 8
  %add.ptr436 = getelementptr inbounds i16, i16* %268, i64 -1
  store i16* %add.ptr436, i16** %yyssp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %269 = load i16*, i16** %yyss, align 8
  %arraydecay437 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp438 = icmp ne i16* %269, %arraydecay437
  br i1 %cmp438, label %if.then.440, label %if.end.441

if.then.440:                                      ; preds = %while.end
  %270 = load i16*, i16** %yyss, align 8
  %271 = bitcast i16* %270 to i8*
  call void @free(i8* %271) #3
  br label %if.end.441

if.end.441:                                       ; preds = %if.then.440, %while.end
  %272 = load i8*, i8** %yymsg, align 8
  %arraydecay442 = getelementptr inbounds [128 x i8], [128 x i8]* %yymsgbuf, i32 0, i32 0
  %cmp443 = icmp ne i8* %272, %arraydecay442
  br i1 %cmp443, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %if.end.441
  %273 = load i8*, i8** %yymsg, align 8
  call void @free(i8* %273) #3
  br label %if.end.446

if.end.446:                                       ; preds = %if.then.445, %if.end.441
  %274 = load i32, i32* %yyresult, align 4
  ret i32 %274
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @ppdlex() #1

; Function Attrs: nounwind uwtable
define internal void @yy_symbol_print(%struct._IO_FILE* %yyoutput, i32 %yytype, %union.YYSTYPE* %yyvaluep) #0 {
entry:
  %yyoutput.addr = alloca %struct._IO_FILE*, align 8
  %yytype.addr = alloca i32, align 4
  %yyvaluep.addr = alloca %union.YYSTYPE*, align 8
  store %struct._IO_FILE* %yyoutput, %struct._IO_FILE** %yyoutput.addr, align 8
  store i32 %yytype, i32* %yytype.addr, align 4
  store %union.YYSTYPE* %yyvaluep, %union.YYSTYPE** %yyvaluep.addr, align 8
  %0 = load i32, i32* %yytype.addr, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %2 = load i32, i32* %yytype.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [17 x i8*], [17 x i8*]* @yytname, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %5 = load i32, i32* %yytype.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [17 x i8*], [17 x i8*]* @yytname, i32 0, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %8 = load i32, i32* %yytype.addr, align 4
  %9 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  call void @yy_symbol_value_print(%struct._IO_FILE* %7, i32 %8, %union.YYSTYPE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yy_reduce_print(%union.YYSTYPE* %yyvsp, i32 %ppdyyrule) #0 {
entry:
  %yyvsp.addr = alloca %union.YYSTYPE*, align 8
  %ppdyyrule.addr = alloca i32, align 4
  %yynrhs = alloca i32, align 4
  %yyi = alloca i32, align 4
  %yylno = alloca i64, align 8
  store %union.YYSTYPE* %yyvsp, %union.YYSTYPE** %yyvsp.addr, align 8
  store i32 %ppdyyrule, i32* %ppdyyrule.addr, align 4
  %0 = load i32, i32* %ppdyyrule.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* @ppdr2, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %yynrhs, align 4
  %2 = load i32, i32* %ppdyyrule.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [14 x i8], [14 x i8]* @yyrline, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i64
  store i64 %conv3, i64* %yylno, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %ppdyyrule.addr, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i64, i64* %yylno, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0), i32 %sub, i64 %6)
  store i32 0, i32* %yyi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %yyi, align 4
  %8 = load i32, i32* %yynrhs, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i32, i32* %yyi, align 4
  %add = add nsw i32 %10, 1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 %add)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %ppdyyrule.addr, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [14 x i8], [14 x i8]* @yyprhs, i32 0, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %14 = load i32, i32* %yyi, align 4
  %add9 = add nsw i32 %conv8, %14
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [49 x i8], [49 x i8]* @yyrhs, i32 0, i64 %idxprom10
  %15 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %15 to i32
  %16 = load i32, i32* %yyi, align 4
  %add13 = add nsw i32 %16, 1
  %17 = load i32, i32* %yynrhs, align 4
  %sub14 = sub nsw i32 %add13, %17
  %idxprom15 = sext i32 %sub14 to i64
  %18 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp.addr, align 8
  %arrayidx16 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %18, i64 %idxprom15
  call void @yy_symbol_print(%struct._IO_FILE* %11, i32 %conv12, %union.YYSTYPE* %arrayidx16)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %yyi, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %yyi, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.ppd* @ppd_new() #1

declare void @ppd_font_add(%struct.ppd*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @yy_stack_print(i16* %bottom, i16* %top) #0 {
entry:
  %bottom.addr = alloca i16*, align 8
  %top.addr = alloca i16*, align 8
  store i16* %bottom, i16** %bottom.addr, align 8
  store i16* %top, i16** %top.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16*, i16** %bottom.addr, align 8
  %2 = load i16*, i16** %top.addr, align 8
  %cmp = icmp ule i16* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i16*, i16** %bottom.addr, align 8
  %5 = load i16, i16* %4, align 2
  %conv = sext i16 %5 to i32
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i16*, i16** %bottom.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %6, i32 1
  store i16* %incdec.ptr, i16** %bottom.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @yysyntax_error(i8* %yyresult, i32 %ppdstate, i32 %ppdchar) #0 {
entry:
  %retval = alloca i64, align 8
  %yyresult.addr = alloca i8*, align 8
  %ppdstate.addr = alloca i32, align 4
  %ppdchar.addr = alloca i32, align 4
  %yyn = alloca i32, align 4
  %yytype = alloca i32, align 4
  %yysize0 = alloca i64, align 8
  %yysize = alloca i64, align 8
  %yysize1 = alloca i64, align 8
  %yysize_overflow = alloca i32, align 4
  %yyarg = alloca [5 x i8*], align 16
  %yyx = alloca i32, align 4
  %yyfmt = alloca i8*, align 8
  %yyf = alloca i8*, align 8
  %yyformat = alloca [60 x i8], align 16
  %yyprefix = alloca i8*, align 8
  %yyxbegin = alloca i32, align 4
  %yychecklim = alloca i32, align 4
  %yyxend = alloca i32, align 4
  %yycount = alloca i32, align 4
  %yyp = alloca i8*, align 8
  %yyi = alloca i32, align 4
  store i8* %yyresult, i8** %yyresult.addr, align 8
  store i32 %ppdstate, i32* %ppdstate.addr, align 4
  store i32 %ppdchar, i32* %ppdchar.addr, align 4
  %0 = load i32, i32* %ppdstate.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [29 x i8], [29 x i8]* @ppdpact, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %yyn, align 4
  %2 = load i32, i32* %yyn, align 4
  %cmp = icmp slt i32 -4, %2
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %yyn, align 4
  %cmp2 = icmp sle i32 %3, 26
  br i1 %cmp2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i64 0, i64* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %ppdchar.addr, align 4
  %cmp4 = icmp ule i32 %4, 265
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %5 = load i32, i32* %ppdchar.addr, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [266 x i8], [266 x i8]* @yytranslate, i32 0, i64 %idxprom6
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv8, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %yytype, align 4
  %7 = load i32, i32* %yytype, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [17 x i8*], [17 x i8*]* @yytname, i32 0, i64 %idxprom9
  %8 = load i8*, i8** %arrayidx10, align 8
  %call = call i64 @yytnamerr(i8* null, i8* %8)
  store i64 %call, i64* %yysize0, align 8
  %9 = load i64, i64* %yysize0, align 8
  store i64 %9, i64* %yysize, align 8
  store i32 0, i32* %yysize_overflow, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @yysyntax_error.yyexpecting, i32 0, i32 0), i8** %yyprefix, align 8
  %10 = load i32, i32* %yyn, align 4
  %cmp11 = icmp slt i32 %10, 0
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  %11 = load i32, i32* %yyn, align 4
  %sub = sub nsw i32 0, %11
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %sub, %cond.true.13 ], [ 0, %cond.false.14 ]
  store i32 %cond16, i32* %yyxbegin, align 4
  %12 = load i32, i32* %yyn, align 4
  %sub17 = sub nsw i32 26, %12
  %add = add nsw i32 %sub17, 1
  store i32 %add, i32* %yychecklim, align 4
  %13 = load i32, i32* %yychecklim, align 4
  %cmp18 = icmp slt i32 %13, 12
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.15
  %14 = load i32, i32* %yychecklim, align 4
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end.15
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i32 [ %14, %cond.true.20 ], [ 12, %cond.false.21 ]
  store i32 %cond23, i32* %yyxend, align 4
  store i32 1, i32* %yycount, align 4
  %15 = load i32, i32* %yytype, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [17 x i8*], [17 x i8*]* @yytname, i32 0, i64 %idxprom24
  %16 = load i8*, i8** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %yyarg, i32 0, i64 0
  store i8* %16, i8** %arrayidx26, align 8
  %arraydecay = getelementptr inbounds [60 x i8], [60 x i8]* %yyformat, i32 0, i32 0
  %call27 = call i8* @yystpcpy(i8* %arraydecay, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @yysyntax_error.yyunexpected, i32 0, i32 0))
  store i8* %call27, i8** %yyfmt, align 8
  %17 = load i32, i32* %yyxbegin, align 4
  store i32 %17, i32* %yyx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.22
  %18 = load i32, i32* %yyx, align 4
  %19 = load i32, i32* %yyxend, align 4
  %cmp28 = icmp slt i32 %18, %19
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %yyx, align 4
  %21 = load i32, i32* %yyn, align 4
  %add30 = add nsw i32 %20, %21
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [27 x i8], [27 x i8]* @ppdyycheck, i32 0, i64 %idxprom31
  %22 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %22 to i32
  %23 = load i32, i32* %yyx, align 4
  %cmp34 = icmp eq i32 %conv33, %23
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.55

land.lhs.true.36:                                 ; preds = %for.body
  %24 = load i32, i32* %yyx, align 4
  %cmp37 = icmp ne i32 %24, 1
  br i1 %cmp37, label %if.then.39, label %if.end.55

if.then.39:                                       ; preds = %land.lhs.true.36
  %25 = load i32, i32* %yycount, align 4
  %cmp40 = icmp eq i32 %25, 5
  br i1 %cmp40, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then.39
  store i32 1, i32* %yycount, align 4
  %26 = load i64, i64* %yysize0, align 8
  store i64 %26, i64* %yysize, align 8
  %arrayidx43 = getelementptr inbounds [60 x i8], [60 x i8]* %yyformat, i32 0, i64 27
  store i8 0, i8* %arrayidx43, align 1
  br label %for.end

if.end:                                           ; preds = %if.then.39
  %27 = load i32, i32* %yyx, align 4
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [17 x i8*], [17 x i8*]* @yytname, i32 0, i64 %idxprom44
  %28 = load i8*, i8** %arrayidx45, align 8
  %29 = load i32, i32* %yycount, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %yycount, align 4
  %idxprom46 = sext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %yyarg, i32 0, i64 %idxprom46
  store i8* %28, i8** %arrayidx47, align 8
  %30 = load i64, i64* %yysize, align 8
  %31 = load i32, i32* %yyx, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [17 x i8*], [17 x i8*]* @yytname, i32 0, i64 %idxprom48
  %32 = load i8*, i8** %arrayidx49, align 8
  %call50 = call i64 @yytnamerr(i8* null, i8* %32)
  %add51 = add i64 %30, %call50
  store i64 %add51, i64* %yysize1, align 8
  %33 = load i64, i64* %yysize1, align 8
  %34 = load i64, i64* %yysize, align 8
  %cmp52 = icmp ult i64 %33, %34
  %conv53 = zext i1 %cmp52 to i32
  %35 = load i32, i32* %yysize_overflow, align 4
  %or = or i32 %35, %conv53
  store i32 %or, i32* %yysize_overflow, align 4
  %36 = load i64, i64* %yysize1, align 8
  store i64 %36, i64* %yysize, align 8
  %37 = load i8*, i8** %yyfmt, align 8
  %38 = load i8*, i8** %yyprefix, align 8
  %call54 = call i8* @yystpcpy(i8* %37, i8* %38)
  store i8* %call54, i8** %yyfmt, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @yysyntax_error.yyor, i32 0, i32 0), i8** %yyprefix, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.end, %land.lhs.true.36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %39 = load i32, i32* %yyx, align 4
  %inc56 = add nsw i32 %39, 1
  store i32 %inc56, i32* %yyx, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.42, %for.cond
  %arraydecay57 = getelementptr inbounds [60 x i8], [60 x i8]* %yyformat, i32 0, i32 0
  store i8* %arraydecay57, i8** %yyf, align 8
  %40 = load i64, i64* %yysize, align 8
  %41 = load i8*, i8** %yyf, align 8
  %call58 = call i64 @strlen(i8* %41) #5
  %add59 = add i64 %40, %call58
  store i64 %add59, i64* %yysize1, align 8
  %42 = load i64, i64* %yysize1, align 8
  %43 = load i64, i64* %yysize, align 8
  %cmp60 = icmp ult i64 %42, %43
  %conv61 = zext i1 %cmp60 to i32
  %44 = load i32, i32* %yysize_overflow, align 4
  %or62 = or i32 %44, %conv61
  store i32 %or62, i32* %yysize_overflow, align 4
  %45 = load i64, i64* %yysize1, align 8
  store i64 %45, i64* %yysize, align 8
  %46 = load i32, i32* %yysize_overflow, align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.end
  store i64 -1, i64* %retval
  br label %return

if.end.64:                                        ; preds = %for.end
  %47 = load i8*, i8** %yyresult.addr, align 8
  %tobool65 = icmp ne i8* %47, null
  br i1 %tobool65, label %if.then.66, label %if.end.90

if.then.66:                                       ; preds = %if.end.64
  %48 = load i8*, i8** %yyresult.addr, align 8
  store i8* %48, i8** %yyp, align 8
  store i32 0, i32* %yyi, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.89, %if.then.66
  %49 = load i8*, i8** %yyf, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %yyp, align 8
  store i8 %50, i8* %51, align 1
  %conv67 = sext i8 %50 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i8*, i8** %yyp, align 8
  %53 = load i8, i8* %52, align 1
  %conv70 = sext i8 %53 to i32
  %cmp71 = icmp eq i32 %conv70, 37
  br i1 %cmp71, label %land.lhs.true.73, label %if.else.87

land.lhs.true.73:                                 ; preds = %while.body
  %54 = load i8*, i8** %yyf, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %55 to i32
  %cmp76 = icmp eq i32 %conv75, 115
  br i1 %cmp76, label %land.lhs.true.78, label %if.else.87

land.lhs.true.78:                                 ; preds = %land.lhs.true.73
  %56 = load i32, i32* %yyi, align 4
  %57 = load i32, i32* %yycount, align 4
  %cmp79 = icmp slt i32 %56, %57
  br i1 %cmp79, label %if.then.81, label %if.else.87

if.then.81:                                       ; preds = %land.lhs.true.78
  %58 = load i8*, i8** %yyp, align 8
  %59 = load i32, i32* %yyi, align 4
  %inc82 = add nsw i32 %59, 1
  store i32 %inc82, i32* %yyi, align 4
  %idxprom83 = sext i32 %59 to i64
  %arrayidx84 = getelementptr inbounds [5 x i8*], [5 x i8*]* %yyarg, i32 0, i64 %idxprom83
  %60 = load i8*, i8** %arrayidx84, align 8
  %call85 = call i64 @yytnamerr(i8* %58, i8* %60)
  %61 = load i8*, i8** %yyp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %call85
  store i8* %add.ptr, i8** %yyp, align 8
  %62 = load i8*, i8** %yyf, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %add.ptr86, i8** %yyf, align 8
  br label %if.end.89

if.else.87:                                       ; preds = %land.lhs.true.78, %land.lhs.true.73, %while.body
  %63 = load i8*, i8** %yyp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr, i8** %yyp, align 8
  %64 = load i8*, i8** %yyf, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr88, i8** %yyf, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.81
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.90

if.end.90:                                        ; preds = %while.end, %if.end.64
  %65 = load i64, i64* %yysize, align 8
  store i64 %65, i64* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.63, %if.then
  %66 = load i64, i64* %retval
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define void @ppderror(i8* %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** @ppdfilename, align 8
  %1 = load i32, i32* @ppdlineno, align 4
  %2 = load i8*, i8** %msg.addr, align 8
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %0, i32 %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yydestruct(i8* %yymsg, i32 %yytype, %union.YYSTYPE* %yyvaluep) #0 {
entry:
  %yymsg.addr = alloca i8*, align 8
  %yytype.addr = alloca i32, align 4
  %yyvaluep.addr = alloca %union.YYSTYPE*, align 8
  store i8* %yymsg, i8** %yymsg.addr, align 8
  store i32 %yytype, i32* %yytype.addr, align 4
  store %union.YYSTYPE* %yyvaluep, %union.YYSTYPE** %yyvaluep.addr, align 8
  %0 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  %1 = load i8*, i8** %yymsg.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8** %yymsg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load i32, i32* @ppddebug, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %yymsg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %yytype.addr, align 4
  %7 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  call void @yy_symbol_print(%struct._IO_FILE* %5, i32 %6, %union.YYSTYPE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %9 = load i32, i32* %yytype.addr, align 4
  switch i32 %9, label %sw.default [
  ]

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret void
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.ppd* @a2ps_ppd_parse(i8* %filename, i8** %path) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %path.addr = alloca i8**, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8** %path, i8*** %path.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  store i8* %0, i8** @ppdfilename, align 8
  store i32 1, i32* @ppdlineno, align 4
  %1 = load i8*, i8** @ppdfilename, align 8
  %call = call %struct._IO_FILE* @xrfopen(i8* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** @ppdin, align 8
  %2 = load i8**, i8*** %path.addr, align 8
  store i8** %2, i8*** @ppdpath, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 2624, %3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @ppdfilename, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @ppdlex_initialize()
  %6 = load i32, i32* @msg_verbosity, align 4
  %and2 = and i32 2048, %6
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.end
  store i32 1, i32* @ppddebug, align 4
  br label %if.end.5

if.else:                                          ; preds = %do.end
  store i32 0, i32* @ppddebug, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %call6 = call i32 @ppdparse()
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @ppdin, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* %7)
  %8 = load %struct.ppd*, %struct.ppd** @ppd_parse_result, align 8
  ret %struct.ppd* %8
}

declare %struct._IO_FILE* @xrfopen(i8*) #1

declare void @ppdlex_initialize() #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @yy_symbol_value_print(%struct._IO_FILE* %yyoutput, i32 %yytype, %union.YYSTYPE* %yyvaluep) #0 {
entry:
  %yyoutput.addr = alloca %struct._IO_FILE*, align 8
  %yytype.addr = alloca i32, align 4
  %yyvaluep.addr = alloca %union.YYSTYPE*, align 8
  store %struct._IO_FILE* %yyoutput, %struct._IO_FILE** %yyoutput.addr, align 8
  store i32 %yytype, i32* %yytype.addr, align 4
  store %union.YYSTYPE* %yyvaluep, %union.YYSTYPE** %yyvaluep.addr, align 8
  %0 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  %tobool = icmp ne %union.YYSTYPE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %yytype.addr, align 4
  %cmp = icmp slt i32 %1, 12
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %yyoutput.addr, align 8
  %3 = load i32, i32* %yytype.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [12 x i16], [12 x i16]* @yytoknum, i32 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %5 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvaluep.addr, align 8
  %coerce.dive = getelementptr %union.YYSTYPE, %union.YYSTYPE* %5, i32 0, i32 0
  %6 = load i8*, i8** %coerce.dive, align 8
  call void @yyprint(%struct._IO_FILE* %2, i32 %conv, i8* %6)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %7 = load i32, i32* %yytype.addr, align 4
  switch i32 %7, label %sw.default [
  ]

sw.default:                                       ; preds = %if.end.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yyprint(%struct._IO_FILE* %file, i32 %type, i8* %value.coerce) #0 {
entry:
  %value = alloca %union.YYSTYPE, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %type.addr = alloca i32, align 4
  %coerce.dive = getelementptr %union.YYSTYPE, %union.YYSTYPE* %value, i32 0, i32 0
  store i8* %value.coerce, i8** %coerce.dive, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 263, label %sw.bb
    i32 264, label %sw.bb.1
    i32 265, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %string = bitcast %union.YYSTYPE* %value to i8**
  %2 = load i8*, i8** %string, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %string2 = bitcast %union.YYSTYPE* %value to i8**
  %4 = load i8*, i8** %string2, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i8* %4)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %ustring = bitcast %union.YYSTYPE* %value to i8**
  %6 = load i8*, i8** %ustring, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.4, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @yytnamerr(i8* %yyres, i8* %yystr) #0 {
entry:
  %retval = alloca i64, align 8
  %yyres.addr = alloca i8*, align 8
  %yystr.addr = alloca i8*, align 8
  %yyn = alloca i64, align 8
  %yyp = alloca i8*, align 8
  store i8* %yyres, i8** %yyres.addr, align 8
  store i8* %yystr, i8** %yystr.addr, align 8
  %0 = load i8*, i8** %yystr.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 34
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  store i64 0, i64* %yyn, align 8
  %2 = load i8*, i8** %yystr.addr, align 8
  store i8* %2, i8** %yyp, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.then
  %3 = load i8*, i8** %yyp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %yyp, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %conv2 = sext i8 %4 to i32
  switch i32 %conv2, label %sw.default [
    i32 39, label %sw.bb
    i32 44, label %sw.bb
    i32 92, label %sw.bb.3
    i32 34, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %for.cond, %for.cond
  br label %do_not_strip_quotes

sw.bb.3:                                          ; preds = %for.cond
  %5 = load i8*, i8** %yyp, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr4, i8** %yyp, align 8
  %6 = load i8, i8* %incdec.ptr4, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 92
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %sw.bb.3
  br label %do_not_strip_quotes

if.end:                                           ; preds = %sw.bb.3
  br label %sw.default

sw.default:                                       ; preds = %for.cond, %if.end
  %7 = load i8*, i8** %yyres.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.default
  %8 = load i8*, i8** %yyp, align 8
  %9 = load i8, i8* %8, align 1
  %10 = load i64, i64* %yyn, align 8
  %11 = load i8*, i8** %yyres.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %10
  store i8 %9, i8* %arrayidx, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.default
  %12 = load i64, i64* %yyn, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %yyn, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.cond
  %13 = load i8*, i8** %yyres.addr, align 8
  %tobool12 = icmp ne i8* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %sw.bb.11
  %14 = load i64, i64* %yyn, align 8
  %15 = load i8*, i8** %yyres.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 %14
  store i8 0, i8* %arrayidx14, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %sw.bb.11
  %16 = load i64, i64* %yyn, align 8
  store i64 %16, i64* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.10
  br label %for.cond

do_not_strip_quotes:                              ; preds = %if.then.8, %sw.bb
  br label %if.end.16

if.end.16:                                        ; preds = %do_not_strip_quotes, %entry
  %17 = load i8*, i8** %yyres.addr, align 8
  %tobool17 = icmp ne i8* %17, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %18 = load i8*, i8** %yystr.addr, align 8
  %call = call i64 @strlen(i8* %18) #5
  store i64 %call, i64* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.16
  %19 = load i8*, i8** %yyres.addr, align 8
  %20 = load i8*, i8** %yystr.addr, align 8
  %call20 = call i8* @yystpcpy(i8* %19, i8* %20)
  %21 = load i8*, i8** %yyres.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.end.15
  %22 = load i64, i64* %retval
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define internal i8* @yystpcpy(i8* %yydest, i8* %yysrc) #0 {
entry:
  %yydest.addr = alloca i8*, align 8
  %yysrc.addr = alloca i8*, align 8
  %yyd = alloca i8*, align 8
  %ppds = alloca i8*, align 8
  store i8* %yydest, i8** %yydest.addr, align 8
  store i8* %yysrc, i8** %yysrc.addr, align 8
  %0 = load i8*, i8** %yydest.addr, align 8
  store i8* %0, i8** %yyd, align 8
  %1 = load i8*, i8** %yysrc.addr, align 8
  store i8* %1, i8** %ppds, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %ppds, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %ppds, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %yyd, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr1, i8** %yyd, align 8
  store i8 %3, i8* %4, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %yyd, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -1
  ret i8* %add.ptr
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
