; ModuleID = './MultiSource.Applications.SPASS/37.iaparser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.yystype = type { i8* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%union.yyalloc = type { %union.yystype }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.IA_VARENTRY = type { i8*, i32 }

@ia_nerrs = common global i32 0, align 4
@ia_char = common global i32 0, align 4
@yypact = internal constant [77 x i8] c"\F4\0C#\00\E3\E3\E3\E3\E3\E3\E3\E3\E3\13\E3\E3\E3\E3\14\16()*\00\1F\00\00+'\12\08&,\07\E3\E3\E3\09\E3\E3\E3\FB.\00\00\E3\10\10\E3\10\E3/0\E35-\E3-\E33\E3\10\1024\E36\E39:\E3\00\00;<\E3\E3", align 16
@yytranslate = internal constant [272 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\11\13\02\02\12\02\14\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\15\02\16\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@yycheck = internal constant [84 x i8] c"\03\0D\1E\03\04\05\06\07\08\09\0A\0B\0C\12\0E\0F\10\16./\171\19\0F\10\12\13\12\13\11\16\0F\10=>\00\11\13\12\11+,\03\04\05\06\07\08\09\0A\0B\0C\15\0E\0F\10\12\11\11\11\15\0F\12\12\15\1C\13\13GH\11\14\16\13\16\12\12/\13\13\FF\FF\FF>", align 16
@yytable = internal constant [84 x i8] c"\12\01(\05\06\07\08\09\0A\0B\0C\0D\0E1\0F\10\11266\1D: \10\11,-,0\03'\10\11B6\04\17&\18\1945\05\06\07\08\09\0A\0B\0C\0D\0E\1E\0F\10\11*\1A\1B\1C$3+>#%;<IJ=ADFEGH9KL\00\00\00C", align 16
@ia_lval = common global %union.yystype zeroinitializer, align 8
@yydefact = internal constant [77 x i8] c"\02\00\00\00\01\17\13\14\19\08\1A\15\16\00\18\07\1C\1B\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\04\0D\10\00\09!#\00\00\00\00\0B\00\00\0C\00\22\00\00\05\1F\0E\1D\11$\00\0A\00\00\00\00\03\00\1E\00\00 \00\00\00\00\0F\12", align 16
@yyr2 = internal constant [37 x i8] c"\00\02\00\09\01\03\01\01\01\04\06\04\04\00\00\0A\00\00\0A\01\01\01\01\01\01\01\01\01\01\01\03\01\04\02\03\01\03", align 16
@ia_PROOFREQUEST = common global %struct.LIST_HELP* null, align 8
@ia_FLAGS = common global i32* null, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [50 x i8] c"\0A Line %d: SPASS can't handle the quantifier %s.\0A\00", align 1
@dfg_LINENUMBER = external global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\0A Line %d: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" is not a variable.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" is not a predicate.\0A\00", align 1
@yyr1 = internal constant [37 x i8] c"\00\17\18\18\19\19\1A\1A\1A\1A\1A\1A\1A\1B\1C\1A\1D\1E\1A\1F\1F\1F\1F  !!\22\22##$$%%&&", align 16
@yypgoto = internal constant [16 x i8] c"\E3\E3%\FD\E3\E3\E3\E3\E3\E3\E3\E4\1E\15\E3\E3", align 16
@yydefgoto = internal constant [16 x i8] c"\FF\02!\22.?/@\13\14\15\1678\1F)", align 16
@yytname = internal constant [40 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [25 x i8] c"parse error, unexpected \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c", expecting \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"parse error; also virtual memory exhausted\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@yystos = internal constant [77 x i8] c"\00\0D\18\11\00\03\04\05\06\07\08\09\0A\0B\0C\0E\0F\10\1A\1F !\22\11\12\11\11\11\11\1A\15%\1A\19\1A\15\15\19\13\16\22&\12\12\12\13\1B\1D\13\12\16\0F\1A\1A\22#$#\22\13\13\11\12\1C\1E\14\22$\16\16\13\12\12\1A\1A\13\13", align 16
@.str.9 = private unnamed_addr constant [22 x i8] c"parser stack overflow\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"\0A Line %i: %s\0A\00", align 1
@ia_in = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@fol_TRUE = external global i32, align 4
@fol_FALSE = external global i32, align 4
@fol_NOT = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@fol_EQUALITY = external global i32, align 4
@fol_EQUIV = external global i32, align 4
@fol_IMPLIED = external global i32, align 4
@fol_IMPLIES = external global i32, align 4
@fol_AND = external global i32, align 4
@fol_OR = external global i32, align 4
@fol_EXIST = external global i32, align 4
@fol_ALL = external global i32, align 4
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@symbol_TYPEMASK = external constant i32, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"IA_AND\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"IA_EQUAL\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"IA_EQUIV\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"IA_EXISTS\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"IA_FALSE\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"IA_FORALL\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"IA_IMPLIED\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"IA_IMPLIES\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"IA_NOT\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"IA_OR\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"IA_PROVE\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"IA_TRUE\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"IA_NUM\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"IA_ID\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"'.'\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"proofrequest\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"termlist\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"@1\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"@2\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"@3\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"@4\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"binsymbol\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"nsymbol\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"quantsymbol\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"qtermlist\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"qterm\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"labellistopt\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"labellist\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"\0A Line %d: Undefined symbol %s.\0A\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.53 = private unnamed_addr constant [21 x i8] c"\0A Line %u: Symbol %s\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c" was declared with arity %u.\0A\00", align 1
@ia_VARLIST = internal global %struct.LIST_HELP* null, align 8
@ia_VARDECL = internal global i32 0, align 4
@.str.55 = private unnamed_addr constant [30 x i8] c"\0A Line %u: Free Variable %s.\0A\00", align 1
@symbol_STANDARDVARCOUNTER = external global i32, align 4
@.str.56 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"iaparser.y\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"\0A In ia_VarCheck: List of variables should be empty!\0A\00", align 1
@.str.59 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ia_parse() #0 {
entry:
  %yystate = alloca i32, align 4
  %yyn = alloca i32, align 4
  %yyresult = alloca i32, align 4
  %yyerrstatus = alloca i32, align 4
  %yychar1 = alloca i32, align 4
  %yyssa = alloca [200 x i16], align 16
  %yyss = alloca i16*, align 8
  %yyssp = alloca i16*, align 8
  %yyvsa = alloca [200 x %union.yystype], align 16
  %yyvs = alloca %union.yystype*, align 8
  %yyvsp = alloca %union.yystype*, align 8
  %yystacksize = alloca i64, align 8
  %yyval = alloca %union.yystype, align 8
  %yylen = alloca i32, align 4
  %yysize = alloca i64, align 8
  %yyss1 = alloca i16*, align 8
  %yyptr = alloca %union.yyalloc*, align 8
  %yynewbytes = alloca i64, align 8
  %yynewbytes22 = alloca i64, align 8
  %s = alloca i32, align 4
  %p = alloca i32, align 4
  %v = alloca i32, align 4
  %yysize349 = alloca i64, align 8
  %yytype = alloca i32, align 4
  %yymsg = alloca i8*, align 8
  %yyx = alloca i32, align 4
  %yycount = alloca i32, align 4
  %yyp = alloca i8*, align 8
  %yyq = alloca i8*, align 8
  store i32 0, i32* %yychar1, align 4
  %arraydecay = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  store i16* %arraydecay, i16** %yyss, align 8
  %arraydecay1 = getelementptr inbounds [200 x %union.yystype], [200 x %union.yystype]* %yyvsa, i32 0, i32 0
  store %union.yystype* %arraydecay1, %union.yystype** %yyvs, align 8
  store i64 200, i64* %yystacksize, align 8
  store i32 0, i32* %yystate, align 4
  store i32 0, i32* %yyerrstatus, align 4
  store i32 0, i32* @ia_nerrs, align 4
  store i32 -2, i32* @ia_char, align 4
  %0 = load i16*, i16** %yyss, align 8
  store i16* %0, i16** %yyssp, align 8
  %1 = load %union.yystype*, %union.yystype** %yyvs, align 8
  store %union.yystype* %1, %union.yystype** %yyvsp, align 8
  br label %yysetstate

yynewstate:                                       ; preds = %if.end.502, %if.end.337, %if.end.105
  %2 = load i16*, i16** %yyssp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %2, i32 1
  store i16* %incdec.ptr, i16** %yyssp, align 8
  br label %yysetstate

yysetstate:                                       ; preds = %yynewstate, %entry
  %3 = load i32, i32* %yystate, align 4
  %conv = trunc i32 %3 to i16
  %4 = load i16*, i16** %yyssp, align 8
  store i16 %conv, i16* %4, align 2
  %5 = load i16*, i16** %yyssp, align 8
  %6 = load i16*, i16** %yyss, align 8
  %7 = load i64, i64* %yystacksize, align 8
  %add.ptr = getelementptr inbounds i16, i16* %6, i64 %7
  %add.ptr2 = getelementptr inbounds i16, i16* %add.ptr, i64 -1
  %cmp = icmp uge i16* %5, %add.ptr2
  br i1 %cmp, label %if.then, label %if.end.48

if.then:                                          ; preds = %yysetstate
  %8 = load i16*, i16** %yyssp, align 8
  %9 = load i16*, i16** %yyss, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  store i64 %add, i64* %yysize, align 8
  %10 = load i64, i64* %yystacksize, align 8
  %cmp4 = icmp uge i64 %10, 10000
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %yyoverflowlab

if.end:                                           ; preds = %if.then
  %11 = load i64, i64* %yystacksize, align 8
  %mul = mul i64 %11, 2
  store i64 %mul, i64* %yystacksize, align 8
  %12 = load i64, i64* %yystacksize, align 8
  %cmp7 = icmp ugt i64 %12, 10000
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i64 10000, i64* %yystacksize, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %13 = load i16*, i16** %yyss, align 8
  store i16* %13, i16** %yyss1, align 8
  %14 = load i64, i64* %yystacksize, align 8
  %mul11 = mul i64 %14, 10
  %add12 = add i64 %mul11, 7
  %15 = alloca i8, i64 %add12
  %16 = bitcast i8* %15 to %union.yyalloc*
  store %union.yyalloc* %16, %union.yyalloc** %yyptr, align 8
  %17 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %tobool = icmp ne %union.yyalloc* %17, null
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  br label %yyoverflowlab

if.end.14:                                        ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %18 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss15 = bitcast %union.yyalloc* %18 to i16*
  %19 = bitcast i16* %yyss15 to i8*
  %20 = load i16*, i16** %yyss, align 8
  %21 = bitcast i16* %20 to i8*
  %22 = load i64, i64* %yysize, align 8
  %mul16 = mul i64 %22, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %21, i64 %mul16, i32 2, i1 false)
  %23 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyss17 = bitcast %union.yyalloc* %23 to i16*
  store i16* %yyss17, i16** %yyss, align 8
  %24 = load i64, i64* %yystacksize, align 8
  %mul18 = mul i64 %24, 2
  %add19 = add i64 %mul18, 7
  store i64 %add19, i64* %yynewbytes, align 8
  %25 = load i64, i64* %yynewbytes, align 8
  %div = udiv i64 %25, 8
  %26 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr20 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %26, i64 %div
  store %union.yyalloc* %add.ptr20, %union.yyalloc** %yyptr, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %27 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs23 = bitcast %union.yyalloc* %27 to %union.yystype*
  %28 = bitcast %union.yystype* %yyvs23 to i8*
  %29 = load %union.yystype*, %union.yystype** %yyvs, align 8
  %30 = bitcast %union.yystype* %29 to i8*
  %31 = load i64, i64* %yysize, align 8
  %mul24 = mul i64 %31, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %30, i64 %mul24, i32 8, i1 false)
  %32 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %yyvs25 = bitcast %union.yyalloc* %32 to %union.yystype*
  store %union.yystype* %yyvs25, %union.yystype** %yyvs, align 8
  %33 = load i64, i64* %yystacksize, align 8
  %mul26 = mul i64 %33, 8
  %add27 = add i64 %mul26, 7
  store i64 %add27, i64* %yynewbytes22, align 8
  %34 = load i64, i64* %yynewbytes22, align 8
  %div28 = udiv i64 %34, 8
  %35 = load %union.yyalloc*, %union.yyalloc** %yyptr, align 8
  %add.ptr29 = getelementptr inbounds %union.yyalloc, %union.yyalloc* %35, i64 %div28
  store %union.yyalloc* %add.ptr29, %union.yyalloc** %yyptr, align 8
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.21
  %36 = load i16*, i16** %yyss1, align 8
  %arraydecay31 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp32 = icmp ne i16* %36, %arraydecay31
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %do.end.30
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %do.end.30
  %37 = load i16*, i16** %yyss, align 8
  %38 = load i64, i64* %yysize, align 8
  %add.ptr38 = getelementptr inbounds i16, i16* %37, i64 %38
  %add.ptr39 = getelementptr inbounds i16, i16* %add.ptr38, i64 -1
  store i16* %add.ptr39, i16** %yyssp, align 8
  %39 = load %union.yystype*, %union.yystype** %yyvs, align 8
  %40 = load i64, i64* %yysize, align 8
  %add.ptr40 = getelementptr inbounds %union.yystype, %union.yystype* %39, i64 %40
  %add.ptr41 = getelementptr inbounds %union.yystype, %union.yystype* %add.ptr40, i64 -1
  store %union.yystype* %add.ptr41, %union.yystype** %yyvsp, align 8
  %41 = load i16*, i16** %yyssp, align 8
  %42 = load i16*, i16** %yyss, align 8
  %43 = load i64, i64* %yystacksize, align 8
  %add.ptr42 = getelementptr inbounds i16, i16* %42, i64 %43
  %add.ptr43 = getelementptr inbounds i16, i16* %add.ptr42, i64 -1
  %cmp44 = icmp uge i16* %41, %add.ptr43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.37
  br label %yyabortlab

if.end.47:                                        ; preds = %if.end.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %yysetstate
  br label %yybackup

yybackup:                                         ; preds = %if.end.48
  %44 = load i32, i32* %yystate, align 4
  %idxprom = sext i32 %44 to i64
  %arrayidx = getelementptr inbounds [77 x i8], [77 x i8]* @yypact, i32 0, i64 %idxprom
  %45 = load i8, i8* %arrayidx, align 1
  %conv49 = sext i8 %45 to i32
  store i32 %conv49, i32* %yyn, align 4
  %46 = load i32, i32* %yyn, align 4
  %cmp50 = icmp eq i32 %46, -29
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %yybackup
  br label %yydefault

if.end.53:                                        ; preds = %yybackup
  %47 = load i32, i32* @ia_char, align 4
  %cmp54 = icmp eq i32 %47, -2
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  %call = call i32 @ia_lex()
  store i32 %call, i32* @ia_char, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.53
  %48 = load i32, i32* @ia_char, align 4
  %cmp58 = icmp sle i32 %48, 0
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %if.end.57
  store i32 0, i32* %yychar1, align 4
  store i32 0, i32* @ia_char, align 4
  br label %if.end.66

if.else:                                          ; preds = %if.end.57
  %49 = load i32, i32* @ia_char, align 4
  %cmp61 = icmp ule i32 %49, 271
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %50 = load i32, i32* @ia_char, align 4
  %idxprom63 = sext i32 %50 to i64
  %arrayidx64 = getelementptr inbounds [272 x i8], [272 x i8]* @yytranslate, i32 0, i64 %idxprom63
  %51 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %51 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv65, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, i32* %yychar1, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %cond.end, %if.then.60
  %52 = load i32, i32* %yychar1, align 4
  %53 = load i32, i32* %yyn, align 4
  %add67 = add nsw i32 %53, %52
  store i32 %add67, i32* %yyn, align 4
  %54 = load i32, i32* %yyn, align 4
  %cmp68 = icmp slt i32 %54, 0
  br i1 %cmp68, label %if.then.78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.66
  %55 = load i32, i32* %yyn, align 4
  %cmp70 = icmp slt i32 83, %55
  br i1 %cmp70, label %if.then.78, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false
  %56 = load i32, i32* %yyn, align 4
  %idxprom73 = sext i32 %56 to i64
  %arrayidx74 = getelementptr inbounds [84 x i8], [84 x i8]* @yycheck, i32 0, i64 %idxprom73
  %57 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %57 to i32
  %58 = load i32, i32* %yychar1, align 4
  %cmp76 = icmp ne i32 %conv75, %58
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false, %if.end.66
  br label %yydefault

if.end.79:                                        ; preds = %lor.lhs.false.72
  %59 = load i32, i32* %yyn, align 4
  %idxprom80 = sext i32 %59 to i64
  %arrayidx81 = getelementptr inbounds [84 x i8], [84 x i8]* @yytable, i32 0, i64 %idxprom80
  %60 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %60 to i32
  store i32 %conv82, i32* %yyn, align 4
  %61 = load i32, i32* %yyn, align 4
  %cmp83 = icmp sle i32 %61, 0
  br i1 %cmp83, label %if.then.85, label %if.end.93

if.then.85:                                       ; preds = %if.end.79
  %62 = load i32, i32* %yyn, align 4
  %cmp86 = icmp eq i32 %62, 0
  br i1 %cmp86, label %if.then.91, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %if.then.85
  %63 = load i32, i32* %yyn, align 4
  %cmp89 = icmp eq i32 %63, -1
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %lor.lhs.false.88, %if.then.85
  br label %yyerrlab

if.end.92:                                        ; preds = %lor.lhs.false.88
  %64 = load i32, i32* %yyn, align 4
  %sub = sub nsw i32 0, %64
  store i32 %sub, i32* %yyn, align 4
  br label %yyreduce

if.end.93:                                        ; preds = %if.end.79
  %65 = load i32, i32* %yyn, align 4
  %cmp94 = icmp eq i32 %65, 4
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  br label %yyacceptlab

if.end.97:                                        ; preds = %if.end.93
  %66 = load i32, i32* @ia_char, align 4
  %cmp98 = icmp ne i32 %66, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.97
  store i32 -2, i32* @ia_char, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.97
  %67 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr102 = getelementptr inbounds %union.yystype, %union.yystype* %67, i32 1
  store %union.yystype* %incdec.ptr102, %union.yystype** %yyvsp, align 8
  %68 = bitcast %union.yystype* %incdec.ptr102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* bitcast (%union.yystype* @ia_lval to i8*), i64 8, i32 8, i1 false)
  %69 = load i32, i32* %yyerrstatus, align 4
  %tobool103 = icmp ne i32 %69, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  %70 = load i32, i32* %yyerrstatus, align 4
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* %yyerrstatus, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.101
  %71 = load i32, i32* %yyn, align 4
  store i32 %71, i32* %yystate, align 4
  br label %yynewstate

yydefault:                                        ; preds = %if.then.78, %if.then.52
  %72 = load i32, i32* %yystate, align 4
  %idxprom106 = sext i32 %72 to i64
  %arrayidx107 = getelementptr inbounds [77 x i8], [77 x i8]* @yydefact, i32 0, i64 %idxprom106
  %73 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %73 to i32
  store i32 %conv108, i32* %yyn, align 4
  %74 = load i32, i32* %yyn, align 4
  %cmp109 = icmp eq i32 %74, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %yydefault
  br label %yyerrlab

if.end.112:                                       ; preds = %yydefault
  br label %yyreduce

yyreduce:                                         ; preds = %if.end.112, %if.end.92
  %75 = load i32, i32* %yyn, align 4
  %idxprom113 = sext i32 %75 to i64
  %arrayidx114 = getelementptr inbounds [37 x i8], [37 x i8]* @yyr2, i32 0, i64 %idxprom113
  %76 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %76 to i32
  store i32 %conv115, i32* %yylen, align 4
  %77 = load i32, i32* %yylen, align 4
  %sub116 = sub nsw i32 1, %77
  %idxprom117 = sext i32 %sub116 to i64
  %78 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx118 = getelementptr inbounds %union.yystype, %union.yystype* %78, i64 %idxprom117
  %79 = bitcast %union.yystype* %yyval to i8*
  %80 = bitcast %union.yystype* %arrayidx118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 8, i32 8, i1 false)
  %81 = load i32, i32* %yyn, align 4
  switch i32 %81, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.119
    i32 4, label %sw.bb.124
    i32 5, label %sw.bb.129
    i32 6, label %sw.bb.137
    i32 7, label %sw.bb.142
    i32 8, label %sw.bb.147
    i32 9, label %sw.bb.152
    i32 10, label %sw.bb.159
    i32 11, label %sw.bb.169
    i32 12, label %sw.bb.176
    i32 13, label %sw.bb.183
    i32 14, label %sw.bb.184
    i32 15, label %sw.bb.185
    i32 16, label %sw.bb.194
    i32 17, label %sw.bb.195
    i32 18, label %sw.bb.196
    i32 19, label %sw.bb.200
    i32 20, label %sw.bb.203
    i32 21, label %sw.bb.206
    i32 22, label %sw.bb.209
    i32 23, label %sw.bb.212
    i32 24, label %sw.bb.215
    i32 25, label %sw.bb.218
    i32 26, label %sw.bb.221
    i32 27, label %sw.bb.224
    i32 28, label %sw.bb.228
    i32 29, label %sw.bb.233
    i32 30, label %sw.bb.238
    i32 31, label %sw.bb.246
    i32 32, label %sw.bb.259
    i32 33, label %sw.bb.283
    i32 34, label %sw.bb.286
    i32 35, label %sw.bb.290
    i32 36, label %sw.bb.295
  ]

sw.bb:                                            ; preds = %yyreduce
  br label %yyabortlab

sw.bb.119:                                        ; preds = %yyreduce
  call void @ia_VarCheck()
  %82 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx120 = getelementptr inbounds %union.yystype, %union.yystype* %82, i64 -6
  %term = bitcast %union.yystype* %arrayidx120 to %struct.term**
  %83 = load %struct.term*, %struct.term** %term, align 8
  %84 = bitcast %struct.term* %83 to i8*
  %85 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx121 = getelementptr inbounds %union.yystype, %union.yystype* %85, i64 -4
  %list = bitcast %union.yystype* %arrayidx121 to %struct.LIST_HELP**
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list, align 8
  %87 = bitcast %struct.LIST_HELP* %86 to i8*
  %call122 = call %struct.LIST_HELP* @list_PairCreate(i8* %84, i8* %87)
  store %struct.LIST_HELP* %call122, %struct.LIST_HELP** @ia_PROOFREQUEST, align 8
  %88 = load i32*, i32** @ia_FLAGS, align 8
  %89 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx123 = getelementptr inbounds %union.yystype, %union.yystype* %89, i64 -2
  %number = bitcast %union.yystype* %arrayidx123 to i32*
  %90 = load i32, i32* %number, align 4
  call void @flag_SetFlagValue(i32* %88, i32 7, i32 %90)
  br label %yyacceptlab

sw.bb.124:                                        ; preds = %yyreduce
  %91 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx125 = getelementptr inbounds %union.yystype, %union.yystype* %91, i64 0
  %term126 = bitcast %union.yystype* %arrayidx125 to %struct.term**
  %92 = load %struct.term*, %struct.term** %term126, align 8
  %93 = bitcast %struct.term* %92 to i8*
  %call127 = call %struct.LIST_HELP* @list_List(i8* %93)
  %list128 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call127, %struct.LIST_HELP** %list128, align 8
  br label %sw.epilog

sw.bb.129:                                        ; preds = %yyreduce
  %94 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx130 = getelementptr inbounds %union.yystype, %union.yystype* %94, i64 -2
  %list131 = bitcast %union.yystype* %arrayidx130 to %struct.LIST_HELP**
  %95 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list131, align 8
  %96 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx132 = getelementptr inbounds %union.yystype, %union.yystype* %96, i64 0
  %term133 = bitcast %union.yystype* %arrayidx132 to %struct.term**
  %97 = load %struct.term*, %struct.term** %term133, align 8
  %98 = bitcast %struct.term* %97 to i8*
  %call134 = call %struct.LIST_HELP* @list_List(i8* %98)
  %call135 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %95, %struct.LIST_HELP* %call134)
  %list136 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call135, %struct.LIST_HELP** %list136, align 8
  br label %sw.epilog

sw.bb.137:                                        ; preds = %yyreduce
  %99 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx138 = getelementptr inbounds %union.yystype, %union.yystype* %99, i64 0
  %string = bitcast %union.yystype* %arrayidx138 to i8**
  %100 = load i8*, i8** %string, align 8
  %call139 = call %struct.LIST_HELP* @list_Nil()
  %call140 = call %struct.term* @ia_TermCreate(i8* %100, %struct.LIST_HELP* %call139)
  %term141 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call140, %struct.term** %term141, align 8
  br label %sw.epilog

sw.bb.142:                                        ; preds = %yyreduce
  %call143 = call i32 @fol_True()
  %call144 = call %struct.LIST_HELP* @list_Nil()
  %call145 = call %struct.term* @term_Create(i32 %call143, %struct.LIST_HELP* %call144)
  %term146 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call145, %struct.term** %term146, align 8
  br label %sw.epilog

sw.bb.147:                                        ; preds = %yyreduce
  %call148 = call i32 @fol_False()
  %call149 = call %struct.LIST_HELP* @list_Nil()
  %call150 = call %struct.term* @term_Create(i32 %call148, %struct.LIST_HELP* %call149)
  %term151 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call150, %struct.term** %term151, align 8
  br label %sw.epilog

sw.bb.152:                                        ; preds = %yyreduce
  %call153 = call i32 @fol_Not()
  %101 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx154 = getelementptr inbounds %union.yystype, %union.yystype* %101, i64 -1
  %term155 = bitcast %union.yystype* %arrayidx154 to %struct.term**
  %102 = load %struct.term*, %struct.term** %term155, align 8
  %103 = bitcast %struct.term* %102 to i8*
  %call156 = call %struct.LIST_HELP* @list_List(i8* %103)
  %call157 = call %struct.term* @term_Create(i32 %call153, %struct.LIST_HELP* %call156)
  %term158 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call157, %struct.term** %term158, align 8
  br label %sw.epilog

sw.bb.159:                                        ; preds = %yyreduce
  %104 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx160 = getelementptr inbounds %union.yystype, %union.yystype* %104, i64 -5
  %symbol = bitcast %union.yystype* %arrayidx160 to i32*
  %105 = load i32, i32* %symbol, align 4
  %106 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx161 = getelementptr inbounds %union.yystype, %union.yystype* %106, i64 -3
  %term162 = bitcast %union.yystype* %arrayidx161 to %struct.term**
  %107 = load %struct.term*, %struct.term** %term162, align 8
  %108 = bitcast %struct.term* %107 to i8*
  %109 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx163 = getelementptr inbounds %union.yystype, %union.yystype* %109, i64 -1
  %term164 = bitcast %union.yystype* %arrayidx163 to %struct.term**
  %110 = load %struct.term*, %struct.term** %term164, align 8
  %111 = bitcast %struct.term* %110 to i8*
  %call165 = call %struct.LIST_HELP* @list_List(i8* %111)
  %call166 = call %struct.LIST_HELP* @list_Cons(i8* %108, %struct.LIST_HELP* %call165)
  %call167 = call %struct.term* @term_Create(i32 %105, %struct.LIST_HELP* %call166)
  %term168 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call167, %struct.term** %term168, align 8
  br label %sw.epilog

sw.bb.169:                                        ; preds = %yyreduce
  %112 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx170 = getelementptr inbounds %union.yystype, %union.yystype* %112, i64 -3
  %symbol171 = bitcast %union.yystype* %arrayidx170 to i32*
  %113 = load i32, i32* %symbol171, align 4
  %114 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx172 = getelementptr inbounds %union.yystype, %union.yystype* %114, i64 -1
  %list173 = bitcast %union.yystype* %arrayidx172 to %struct.LIST_HELP**
  %115 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list173, align 8
  %call174 = call %struct.term* @term_Create(i32 %113, %struct.LIST_HELP* %115)
  %term175 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call174, %struct.term** %term175, align 8
  br label %sw.epilog

sw.bb.176:                                        ; preds = %yyreduce
  %116 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx177 = getelementptr inbounds %union.yystype, %union.yystype* %116, i64 -3
  %string178 = bitcast %union.yystype* %arrayidx177 to i8**
  %117 = load i8*, i8** %string178, align 8
  %118 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx179 = getelementptr inbounds %union.yystype, %union.yystype* %118, i64 -1
  %list180 = bitcast %union.yystype* %arrayidx179 to %struct.LIST_HELP**
  %119 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list180, align 8
  %call181 = call %struct.term* @ia_TermCreate(i8* %117, %struct.LIST_HELP* %119)
  %term182 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call181, %struct.term** %term182, align 8
  br label %sw.epilog

sw.bb.183:                                        ; preds = %yyreduce
  call void @ia_VarStart()
  br label %sw.epilog

sw.bb.184:                                        ; preds = %yyreduce
  call void @ia_VarStop()
  br label %sw.epilog

sw.bb.185:                                        ; preds = %yyreduce
  call void @ia_VarBacktrack()
  %120 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx186 = getelementptr inbounds %union.yystype, %union.yystype* %120, i64 -9
  %symbol187 = bitcast %union.yystype* %arrayidx186 to i32*
  %121 = load i32, i32* %symbol187, align 4
  %122 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx188 = getelementptr inbounds %union.yystype, %union.yystype* %122, i64 -5
  %list189 = bitcast %union.yystype* %arrayidx188 to %struct.LIST_HELP**
  %123 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list189, align 8
  %124 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx190 = getelementptr inbounds %union.yystype, %union.yystype* %124, i64 -1
  %term191 = bitcast %union.yystype* %arrayidx190 to %struct.term**
  %125 = load %struct.term*, %struct.term** %term191, align 8
  %call192 = call %struct.term* @ia_CreateQuantifier(i32 %121, %struct.LIST_HELP* %123, %struct.term* %125)
  %term193 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call192, %struct.term** %term193, align 8
  br label %sw.epilog

sw.bb.194:                                        ; preds = %yyreduce
  call void @ia_VarStart()
  br label %sw.epilog

sw.bb.195:                                        ; preds = %yyreduce
  call void @ia_VarStop()
  br label %sw.epilog

sw.bb.196:                                        ; preds = %yyreduce
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call197 = call i32 @fflush(%struct._IO_FILE* %126)
  %127 = load i32, i32* @dfg_LINENUMBER, align 4
  %128 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx198 = getelementptr inbounds %union.yystype, %union.yystype* %128, i64 -9
  %string199 = bitcast %union.yystype* %arrayidx198 to i8**
  %129 = load i8*, i8** %string199, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %127, i8* %129)
  call void @misc_Error()
  br label %sw.epilog

sw.bb.200:                                        ; preds = %yyreduce
  %call201 = call i32 @fol_Equality()
  %symbol202 = bitcast %union.yystype* %yyval to i32*
  store i32 %call201, i32* %symbol202, align 4
  br label %sw.epilog

sw.bb.203:                                        ; preds = %yyreduce
  %call204 = call i32 @fol_Equiv()
  %symbol205 = bitcast %union.yystype* %yyval to i32*
  store i32 %call204, i32* %symbol205, align 4
  br label %sw.epilog

sw.bb.206:                                        ; preds = %yyreduce
  %call207 = call i32 @fol_Implied()
  %symbol208 = bitcast %union.yystype* %yyval to i32*
  store i32 %call207, i32* %symbol208, align 4
  br label %sw.epilog

sw.bb.209:                                        ; preds = %yyreduce
  %call210 = call i32 @fol_Implies()
  %symbol211 = bitcast %union.yystype* %yyval to i32*
  store i32 %call210, i32* %symbol211, align 4
  br label %sw.epilog

sw.bb.212:                                        ; preds = %yyreduce
  %call213 = call i32 @fol_And()
  %symbol214 = bitcast %union.yystype* %yyval to i32*
  store i32 %call213, i32* %symbol214, align 4
  br label %sw.epilog

sw.bb.215:                                        ; preds = %yyreduce
  %call216 = call i32 @fol_Or()
  %symbol217 = bitcast %union.yystype* %yyval to i32*
  store i32 %call216, i32* %symbol217, align 4
  br label %sw.epilog

sw.bb.218:                                        ; preds = %yyreduce
  %call219 = call i32 @fol_Exist()
  %symbol220 = bitcast %union.yystype* %yyval to i32*
  store i32 %call219, i32* %symbol220, align 4
  br label %sw.epilog

sw.bb.221:                                        ; preds = %yyreduce
  %call222 = call i32 @fol_All()
  %symbol223 = bitcast %union.yystype* %yyval to i32*
  store i32 %call222, i32* %symbol223, align 4
  br label %sw.epilog

sw.bb.224:                                        ; preds = %yyreduce
  %130 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx225 = getelementptr inbounds %union.yystype, %union.yystype* %130, i64 0
  %string226 = bitcast %union.yystype* %arrayidx225 to i8**
  %131 = load i8*, i8** %string226, align 8
  %string227 = bitcast %union.yystype* %yyval to i8**
  store i8* %131, i8** %string227, align 8
  br label %sw.epilog

sw.bb.228:                                        ; preds = %yyreduce
  %132 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx229 = getelementptr inbounds %union.yystype, %union.yystype* %132, i64 0
  %number230 = bitcast %union.yystype* %arrayidx229 to i32*
  %133 = load i32, i32* %number230, align 4
  %call231 = call i8* @string_IntToString(i32 %133)
  %string232 = bitcast %union.yystype* %yyval to i8**
  store i8* %call231, i8** %string232, align 8
  br label %sw.epilog

sw.bb.233:                                        ; preds = %yyreduce
  %134 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx234 = getelementptr inbounds %union.yystype, %union.yystype* %134, i64 0
  %term235 = bitcast %union.yystype* %arrayidx234 to %struct.term**
  %135 = load %struct.term*, %struct.term** %term235, align 8
  %136 = bitcast %struct.term* %135 to i8*
  %call236 = call %struct.LIST_HELP* @list_List(i8* %136)
  %list237 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call236, %struct.LIST_HELP** %list237, align 8
  br label %sw.epilog

sw.bb.238:                                        ; preds = %yyreduce
  %137 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx239 = getelementptr inbounds %union.yystype, %union.yystype* %137, i64 -2
  %list240 = bitcast %union.yystype* %arrayidx239 to %struct.LIST_HELP**
  %138 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list240, align 8
  %139 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx241 = getelementptr inbounds %union.yystype, %union.yystype* %139, i64 0
  %term242 = bitcast %union.yystype* %arrayidx241 to %struct.term**
  %140 = load %struct.term*, %struct.term** %term242, align 8
  %141 = bitcast %struct.term* %140 to i8*
  %call243 = call %struct.LIST_HELP* @list_List(i8* %141)
  %call244 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %138, %struct.LIST_HELP* %call243)
  %list245 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call244, %struct.LIST_HELP** %list245, align 8
  br label %sw.epilog

sw.bb.246:                                        ; preds = %yyreduce
  %142 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx247 = getelementptr inbounds %union.yystype, %union.yystype* %142, i64 0
  %string248 = bitcast %union.yystype* %arrayidx247 to i8**
  %143 = load i8*, i8** %string248, align 8
  %call249 = call i32 @ia_Symbol(i8* %143, i32 0)
  store i32 %call249, i32* %s, align 4
  %144 = load i32, i32* %s, align 4
  %call250 = call i32 @symbol_IsVariable(i32 %144)
  %tobool251 = icmp ne i32 %call250, 0
  br i1 %tobool251, label %if.end.255, label %if.then.252

if.then.252:                                      ; preds = %sw.bb.246
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call253 = call i32 @fflush(%struct._IO_FILE* %145)
  %146 = load i32, i32* @dfg_LINENUMBER, align 4
  %147 = load i32, i32* %s, align 4
  %call254 = call i8* @symbol_Name(i32 %147)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %146, i8* %call254)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.252, %sw.bb.246
  %148 = load i32, i32* %s, align 4
  %call256 = call %struct.LIST_HELP* @list_Nil()
  %call257 = call %struct.term* @term_Create(i32 %148, %struct.LIST_HELP* %call256)
  %term258 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call257, %struct.term** %term258, align 8
  br label %sw.epilog

sw.bb.259:                                        ; preds = %yyreduce
  %149 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx260 = getelementptr inbounds %union.yystype, %union.yystype* %149, i64 -3
  %string261 = bitcast %union.yystype* %arrayidx260 to i8**
  %150 = load i8*, i8** %string261, align 8
  %call262 = call i32 @ia_Symbol(i8* %150, i32 1)
  store i32 %call262, i32* %p, align 4
  %151 = load i32, i32* %p, align 4
  %call263 = call i32 @symbol_IsPredicate(i32 %151)
  %tobool264 = icmp ne i32 %call263, 0
  br i1 %tobool264, label %if.end.268, label %if.then.265

if.then.265:                                      ; preds = %sw.bb.259
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call266 = call i32 @fflush(%struct._IO_FILE* %152)
  %153 = load i32, i32* @dfg_LINENUMBER, align 4
  %154 = load i32, i32* %p, align 4
  %call267 = call i8* @symbol_Name(i32 %154)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %153, i8* %call267)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.265, %sw.bb.259
  %155 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx269 = getelementptr inbounds %union.yystype, %union.yystype* %155, i64 -1
  %string270 = bitcast %union.yystype* %arrayidx269 to i8**
  %156 = load i8*, i8** %string270, align 8
  %call271 = call i32 @ia_Symbol(i8* %156, i32 0)
  store i32 %call271, i32* %v, align 4
  %157 = load i32, i32* %v, align 4
  %call272 = call i32 @symbol_IsVariable(i32 %157)
  %tobool273 = icmp ne i32 %call272, 0
  br i1 %tobool273, label %if.end.277, label %if.then.274

if.then.274:                                      ; preds = %if.end.268
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call275 = call i32 @fflush(%struct._IO_FILE* %158)
  %159 = load i32, i32* @dfg_LINENUMBER, align 4
  %160 = load i32, i32* %v, align 4
  %call276 = call i8* @symbol_Name(i32 %160)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %159, i8* %call276)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.274, %if.end.268
  %161 = load i32, i32* %p, align 4
  %162 = load i32, i32* %v, align 4
  %call278 = call %struct.LIST_HELP* @list_Nil()
  %call279 = call %struct.term* @term_Create(i32 %162, %struct.LIST_HELP* %call278)
  %163 = bitcast %struct.term* %call279 to i8*
  %call280 = call %struct.LIST_HELP* @list_List(i8* %163)
  %call281 = call %struct.term* @term_Create(i32 %161, %struct.LIST_HELP* %call280)
  %term282 = bitcast %union.yystype* %yyval to %struct.term**
  store %struct.term* %call281, %struct.term** %term282, align 8
  br label %sw.epilog

sw.bb.283:                                        ; preds = %yyreduce
  %call284 = call %struct.LIST_HELP* @list_Nil()
  %list285 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call284, %struct.LIST_HELP** %list285, align 8
  br label %sw.epilog

sw.bb.286:                                        ; preds = %yyreduce
  %164 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx287 = getelementptr inbounds %union.yystype, %union.yystype* %164, i64 -1
  %list288 = bitcast %union.yystype* %arrayidx287 to %struct.LIST_HELP**
  %165 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list288, align 8
  %list289 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %165, %struct.LIST_HELP** %list289, align 8
  br label %sw.epilog

sw.bb.290:                                        ; preds = %yyreduce
  %166 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx291 = getelementptr inbounds %union.yystype, %union.yystype* %166, i64 0
  %string292 = bitcast %union.yystype* %arrayidx291 to i8**
  %167 = load i8*, i8** %string292, align 8
  %call293 = call %struct.LIST_HELP* @list_List(i8* %167)
  %list294 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call293, %struct.LIST_HELP** %list294, align 8
  br label %sw.epilog

sw.bb.295:                                        ; preds = %yyreduce
  %168 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx296 = getelementptr inbounds %union.yystype, %union.yystype* %168, i64 -2
  %list297 = bitcast %union.yystype* %arrayidx296 to %struct.LIST_HELP**
  %169 = load %struct.LIST_HELP*, %struct.LIST_HELP** %list297, align 8
  %170 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %arrayidx298 = getelementptr inbounds %union.yystype, %union.yystype* %170, i64 0
  %string299 = bitcast %union.yystype* %arrayidx298 to i8**
  %171 = load i8*, i8** %string299, align 8
  %call300 = call %struct.LIST_HELP* @list_List(i8* %171)
  %call301 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %169, %struct.LIST_HELP* %call300)
  %list302 = bitcast %union.yystype* %yyval to %struct.LIST_HELP**
  store %struct.LIST_HELP* %call301, %struct.LIST_HELP** %list302, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %yyreduce, %sw.bb.295, %sw.bb.290, %sw.bb.286, %sw.bb.283, %if.end.277, %if.end.255, %sw.bb.238, %sw.bb.233, %sw.bb.228, %sw.bb.224, %sw.bb.221, %sw.bb.218, %sw.bb.215, %sw.bb.212, %sw.bb.209, %sw.bb.206, %sw.bb.203, %sw.bb.200, %sw.bb.196, %sw.bb.195, %sw.bb.194, %sw.bb.185, %sw.bb.184, %sw.bb.183, %sw.bb.176, %sw.bb.169, %sw.bb.159, %sw.bb.152, %sw.bb.147, %sw.bb.142, %sw.bb.137, %sw.bb.129, %sw.bb.124
  %172 = load i32, i32* %yylen, align 4
  %173 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %idx.ext = sext i32 %172 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr303 = getelementptr inbounds %union.yystype, %union.yystype* %173, i64 %idx.neg
  store %union.yystype* %add.ptr303, %union.yystype** %yyvsp, align 8
  %174 = load i32, i32* %yylen, align 4
  %175 = load i16*, i16** %yyssp, align 8
  %idx.ext304 = sext i32 %174 to i64
  %idx.neg305 = sub i64 0, %idx.ext304
  %add.ptr306 = getelementptr inbounds i16, i16* %175, i64 %idx.neg305
  store i16* %add.ptr306, i16** %yyssp, align 8
  %176 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr307 = getelementptr inbounds %union.yystype, %union.yystype* %176, i32 1
  store %union.yystype* %incdec.ptr307, %union.yystype** %yyvsp, align 8
  %177 = bitcast %union.yystype* %incdec.ptr307 to i8*
  %178 = bitcast %union.yystype* %yyval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %178, i64 8, i32 8, i1 false)
  %179 = load i32, i32* %yyn, align 4
  %idxprom308 = sext i32 %179 to i64
  %arrayidx309 = getelementptr inbounds [37 x i8], [37 x i8]* @yyr1, i32 0, i64 %idxprom308
  %180 = load i8, i8* %arrayidx309, align 1
  %conv310 = zext i8 %180 to i32
  store i32 %conv310, i32* %yyn, align 4
  %181 = load i32, i32* %yyn, align 4
  %sub311 = sub nsw i32 %181, 23
  %idxprom312 = sext i32 %sub311 to i64
  %arrayidx313 = getelementptr inbounds [16 x i8], [16 x i8]* @yypgoto, i32 0, i64 %idxprom312
  %182 = load i8, i8* %arrayidx313, align 1
  %conv314 = sext i8 %182 to i32
  %183 = load i16*, i16** %yyssp, align 8
  %184 = load i16, i16* %183, align 2
  %conv315 = sext i16 %184 to i32
  %add316 = add nsw i32 %conv314, %conv315
  store i32 %add316, i32* %yystate, align 4
  %185 = load i32, i32* %yystate, align 4
  %cmp317 = icmp sle i32 0, %185
  br i1 %cmp317, label %land.lhs.true, label %if.else.332

land.lhs.true:                                    ; preds = %sw.epilog
  %186 = load i32, i32* %yystate, align 4
  %cmp319 = icmp sle i32 %186, 83
  br i1 %cmp319, label %land.lhs.true.321, label %if.else.332

land.lhs.true.321:                                ; preds = %land.lhs.true
  %187 = load i32, i32* %yystate, align 4
  %idxprom322 = sext i32 %187 to i64
  %arrayidx323 = getelementptr inbounds [84 x i8], [84 x i8]* @yycheck, i32 0, i64 %idxprom322
  %188 = load i8, i8* %arrayidx323, align 1
  %conv324 = sext i8 %188 to i32
  %189 = load i16*, i16** %yyssp, align 8
  %190 = load i16, i16* %189, align 2
  %conv325 = sext i16 %190 to i32
  %cmp326 = icmp eq i32 %conv324, %conv325
  br i1 %cmp326, label %if.then.328, label %if.else.332

if.then.328:                                      ; preds = %land.lhs.true.321
  %191 = load i32, i32* %yystate, align 4
  %idxprom329 = sext i32 %191 to i64
  %arrayidx330 = getelementptr inbounds [84 x i8], [84 x i8]* @yytable, i32 0, i64 %idxprom329
  %192 = load i8, i8* %arrayidx330, align 1
  %conv331 = zext i8 %192 to i32
  store i32 %conv331, i32* %yystate, align 4
  br label %if.end.337

if.else.332:                                      ; preds = %land.lhs.true.321, %land.lhs.true, %sw.epilog
  %193 = load i32, i32* %yyn, align 4
  %sub333 = sub nsw i32 %193, 23
  %idxprom334 = sext i32 %sub333 to i64
  %arrayidx335 = getelementptr inbounds [16 x i8], [16 x i8]* @yydefgoto, i32 0, i64 %idxprom334
  %194 = load i8, i8* %arrayidx335, align 1
  %conv336 = sext i8 %194 to i32
  store i32 %conv336, i32* %yystate, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.332, %if.then.328
  br label %yynewstate

yyerrlab:                                         ; preds = %if.then.111, %if.then.91
  %195 = load i32, i32* %yyerrstatus, align 4
  %tobool338 = icmp ne i32 %195, 0
  br i1 %tobool338, label %if.end.440, label %if.then.339

if.then.339:                                      ; preds = %yyerrlab
  %196 = load i32, i32* @ia_nerrs, align 4
  %inc = add nsw i32 %196, 1
  store i32 %inc, i32* @ia_nerrs, align 4
  %197 = load i32, i32* %yystate, align 4
  %idxprom340 = sext i32 %197 to i64
  %arrayidx341 = getelementptr inbounds [77 x i8], [77 x i8]* @yypact, i32 0, i64 %idxprom340
  %198 = load i8, i8* %arrayidx341, align 1
  %conv342 = sext i8 %198 to i32
  store i32 %conv342, i32* %yyn, align 4
  %199 = load i32, i32* %yyn, align 4
  %cmp343 = icmp slt i32 -29, %199
  br i1 %cmp343, label %land.lhs.true.345, label %if.else.438

land.lhs.true.345:                                ; preds = %if.then.339
  %200 = load i32, i32* %yyn, align 4
  %cmp346 = icmp slt i32 %200, 83
  br i1 %cmp346, label %if.then.348, label %if.else.438

if.then.348:                                      ; preds = %land.lhs.true.345
  store i64 0, i64* %yysize349, align 8
  %201 = load i32, i32* @ia_char, align 4
  %cmp350 = icmp ule i32 %201, 271
  br i1 %cmp350, label %cond.true.352, label %cond.false.356

cond.true.352:                                    ; preds = %if.then.348
  %202 = load i32, i32* @ia_char, align 4
  %idxprom353 = sext i32 %202 to i64
  %arrayidx354 = getelementptr inbounds [272 x i8], [272 x i8]* @yytranslate, i32 0, i64 %idxprom353
  %203 = load i8, i8* %arrayidx354, align 1
  %conv355 = zext i8 %203 to i32
  br label %cond.end.357

cond.false.356:                                   ; preds = %if.then.348
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.356, %cond.true.352
  %cond358 = phi i32 [ %conv355, %cond.true.352 ], [ 2, %cond.false.356 ]
  store i32 %cond358, i32* %yytype, align 4
  store i32 0, i32* %yycount, align 4
  %204 = load i32, i32* %yyn, align 4
  %cmp359 = icmp slt i32 %204, 0
  br i1 %cmp359, label %cond.true.361, label %cond.false.363

cond.true.361:                                    ; preds = %cond.end.357
  %205 = load i32, i32* %yyn, align 4
  %sub362 = sub nsw i32 0, %205
  br label %cond.end.364

cond.false.363:                                   ; preds = %cond.end.357
  br label %cond.end.364

cond.end.364:                                     ; preds = %cond.false.363, %cond.true.361
  %cond365 = phi i32 [ %sub362, %cond.true.361 ], [ 0, %cond.false.363 ]
  store i32 %cond365, i32* %yyx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.364
  %206 = load i32, i32* %yyx, align 4
  %cmp366 = icmp slt i32 %206, 40
  br i1 %cmp366, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %207 = load i32, i32* %yyx, align 4
  %208 = load i32, i32* %yyn, align 4
  %add368 = add nsw i32 %207, %208
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds [84 x i8], [84 x i8]* @yycheck, i32 0, i64 %idxprom369
  %209 = load i8, i8* %arrayidx370, align 1
  %conv371 = sext i8 %209 to i32
  %210 = load i32, i32* %yyx, align 4
  %cmp372 = icmp eq i32 %conv371, %210
  br i1 %cmp372, label %land.lhs.true.374, label %if.end.384

land.lhs.true.374:                                ; preds = %for.body
  %211 = load i32, i32* %yyx, align 4
  %cmp375 = icmp ne i32 %211, 1
  br i1 %cmp375, label %if.then.377, label %if.end.384

if.then.377:                                      ; preds = %land.lhs.true.374
  %212 = load i32, i32* %yyx, align 4
  %idxprom378 = sext i32 %212 to i64
  %arrayidx379 = getelementptr inbounds [40 x i8*], [40 x i8*]* @yytname, i32 0, i64 %idxprom378
  %213 = load i8*, i8** %arrayidx379, align 8
  %call380 = call i64 @strlen(i8* %213) #7
  %add381 = add i64 %call380, 15
  %214 = load i64, i64* %yysize349, align 8
  %add382 = add i64 %214, %add381
  store i64 %add382, i64* %yysize349, align 8
  %215 = load i32, i32* %yycount, align 4
  %inc383 = add nsw i32 %215, 1
  store i32 %inc383, i32* %yycount, align 4
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.377, %land.lhs.true.374, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.384
  %216 = load i32, i32* %yyx, align 4
  %inc385 = add nsw i32 %216, 1
  store i32 %inc385, i32* %yyx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %217 = load i64, i64* %yysize349, align 8
  %add386 = add i64 %217, 25
  store i64 %add386, i64* %yysize349, align 8
  %218 = load i32, i32* %yytype, align 4
  %idxprom387 = sext i32 %218 to i64
  %arrayidx388 = getelementptr inbounds [40 x i8*], [40 x i8*]* @yytname, i32 0, i64 %idxprom387
  %219 = load i8*, i8** %arrayidx388, align 8
  %call389 = call i64 @strlen(i8* %219) #7
  %220 = load i64, i64* %yysize349, align 8
  %add390 = add i64 %220, %call389
  store i64 %add390, i64* %yysize349, align 8
  %221 = load i64, i64* %yysize349, align 8
  %222 = alloca i8, i64 %221
  store i8* %222, i8** %yymsg, align 8
  %223 = load i8*, i8** %yymsg, align 8
  %cmp391 = icmp ne i8* %223, null
  br i1 %cmp391, label %if.then.393, label %if.else.436

if.then.393:                                      ; preds = %for.end
  %224 = load i8*, i8** %yymsg, align 8
  %call394 = call i8* @yystpcpy(i8* %224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call394, i8** %yyp, align 8
  %225 = load i8*, i8** %yyp, align 8
  %226 = load i32, i32* %yytype, align 4
  %idxprom395 = sext i32 %226 to i64
  %arrayidx396 = getelementptr inbounds [40 x i8*], [40 x i8*]* @yytname, i32 0, i64 %idxprom395
  %227 = load i8*, i8** %arrayidx396, align 8
  %call397 = call i8* @yystpcpy(i8* %225, i8* %227)
  store i8* %call397, i8** %yyp, align 8
  %228 = load i32, i32* %yycount, align 4
  %cmp398 = icmp slt i32 %228, 5
  br i1 %cmp398, label %if.then.400, label %if.end.433

if.then.400:                                      ; preds = %if.then.393
  store i32 0, i32* %yycount, align 4
  %229 = load i32, i32* %yyn, align 4
  %cmp401 = icmp slt i32 %229, 0
  br i1 %cmp401, label %cond.true.403, label %cond.false.405

cond.true.403:                                    ; preds = %if.then.400
  %230 = load i32, i32* %yyn, align 4
  %sub404 = sub nsw i32 0, %230
  br label %cond.end.406

cond.false.405:                                   ; preds = %if.then.400
  br label %cond.end.406

cond.end.406:                                     ; preds = %cond.false.405, %cond.true.403
  %cond407 = phi i32 [ %sub404, %cond.true.403 ], [ 0, %cond.false.405 ]
  store i32 %cond407, i32* %yyx, align 4
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.430, %cond.end.406
  %231 = load i32, i32* %yyx, align 4
  %cmp409 = icmp slt i32 %231, 40
  br i1 %cmp409, label %for.body.411, label %for.end.432

for.body.411:                                     ; preds = %for.cond.408
  %232 = load i32, i32* %yyx, align 4
  %233 = load i32, i32* %yyn, align 4
  %add412 = add nsw i32 %232, %233
  %idxprom413 = sext i32 %add412 to i64
  %arrayidx414 = getelementptr inbounds [84 x i8], [84 x i8]* @yycheck, i32 0, i64 %idxprom413
  %234 = load i8, i8* %arrayidx414, align 1
  %conv415 = sext i8 %234 to i32
  %235 = load i32, i32* %yyx, align 4
  %cmp416 = icmp eq i32 %conv415, %235
  br i1 %cmp416, label %land.lhs.true.418, label %if.end.429

land.lhs.true.418:                                ; preds = %for.body.411
  %236 = load i32, i32* %yyx, align 4
  %cmp419 = icmp ne i32 %236, 1
  br i1 %cmp419, label %if.then.421, label %if.end.429

if.then.421:                                      ; preds = %land.lhs.true.418
  %237 = load i32, i32* %yycount, align 4
  %tobool422 = icmp ne i32 %237, 0
  %lnot = xor i1 %tobool422, true
  %cond423 = select i1 %lnot, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)
  store i8* %cond423, i8** %yyq, align 8
  %238 = load i8*, i8** %yyp, align 8
  %239 = load i8*, i8** %yyq, align 8
  %call424 = call i8* @yystpcpy(i8* %238, i8* %239)
  store i8* %call424, i8** %yyp, align 8
  %240 = load i8*, i8** %yyp, align 8
  %241 = load i32, i32* %yyx, align 4
  %idxprom425 = sext i32 %241 to i64
  %arrayidx426 = getelementptr inbounds [40 x i8*], [40 x i8*]* @yytname, i32 0, i64 %idxprom425
  %242 = load i8*, i8** %arrayidx426, align 8
  %call427 = call i8* @yystpcpy(i8* %240, i8* %242)
  store i8* %call427, i8** %yyp, align 8
  %243 = load i32, i32* %yycount, align 4
  %inc428 = add nsw i32 %243, 1
  store i32 %inc428, i32* %yycount, align 4
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.421, %land.lhs.true.418, %for.body.411
  br label %for.inc.430

for.inc.430:                                      ; preds = %if.end.429
  %244 = load i32, i32* %yyx, align 4
  %inc431 = add nsw i32 %244, 1
  store i32 %inc431, i32* %yyx, align 4
  br label %for.cond.408

for.end.432:                                      ; preds = %for.cond.408
  br label %if.end.433

if.end.433:                                       ; preds = %for.end.432, %if.then.393
  %245 = load i8*, i8** %yymsg, align 8
  call void @ia_error(i8* %245)
  br label %do.body.434

do.body.434:                                      ; preds = %if.end.433
  br label %do.end.435

do.end.435:                                       ; preds = %do.body.434
  br label %if.end.437

if.else.436:                                      ; preds = %for.end
  call void @ia_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.437

if.end.437:                                       ; preds = %if.else.436, %do.end.435
  br label %if.end.439

if.else.438:                                      ; preds = %land.lhs.true.345, %if.then.339
  call void @ia_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.439

if.end.439:                                       ; preds = %if.else.438, %if.end.437
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %yyerrlab
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %if.end.440
  %246 = load i32, i32* %yyerrstatus, align 4
  %cmp441 = icmp eq i32 %246, 3
  br i1 %cmp441, label %if.then.443, label %if.end.457

if.then.443:                                      ; preds = %yyerrlab1
  %247 = load i32, i32* @ia_char, align 4
  %cmp444 = icmp eq i32 %247, 0
  br i1 %cmp444, label %if.then.446, label %if.end.456

if.then.446:                                      ; preds = %if.then.443
  %248 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr447 = getelementptr inbounds %union.yystype, %union.yystype* %248, i32 -1
  store %union.yystype* %incdec.ptr447, %union.yystype** %yyvsp, align 8
  %249 = load i16*, i16** %yyssp, align 8
  %incdec.ptr448 = getelementptr inbounds i16, i16* %249, i32 -1
  store i16* %incdec.ptr448, i16** %yyssp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.446
  %250 = load i16*, i16** %yyssp, align 8
  %251 = load i16*, i16** %yyss, align 8
  %cmp449 = icmp ugt i16* %250, %251
  br i1 %cmp449, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %252 = load i16*, i16** %yyssp, align 8
  %253 = load i16, i16* %252, align 2
  %idxprom451 = sext i16 %253 to i64
  %arrayidx452 = getelementptr inbounds [77 x i8], [77 x i8]* @yystos, i32 0, i64 %idxprom451
  %254 = load i8, i8* %arrayidx452, align 1
  %conv453 = zext i8 %254 to i32
  %255 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %coerce.dive = getelementptr %union.yystype, %union.yystype* %255, i32 0, i32 0
  %256 = load i8*, i8** %coerce.dive, align 8
  call void @yydestruct(i32 %conv453, i8* %256)
  %257 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr454 = getelementptr inbounds %union.yystype, %union.yystype* %257, i32 -1
  store %union.yystype* %incdec.ptr454, %union.yystype** %yyvsp, align 8
  %258 = load i16*, i16** %yyssp, align 8
  %incdec.ptr455 = getelementptr inbounds i16, i16* %258, i32 -1
  store i16* %incdec.ptr455, i16** %yyssp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %yyabortlab

if.end.456:                                       ; preds = %if.then.443
  %259 = load i32, i32* %yychar1, align 4
  %260 = load i8*, i8** getelementptr inbounds (%union.yystype, %union.yystype* @ia_lval, i32 0, i32 0), align 8
  call void @yydestruct(i32 %259, i8* %260)
  store i32 -2, i32* @ia_char, align 4
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %yyerrlab1
  store i32 3, i32* %yyerrstatus, align 4
  br label %for.cond.458

for.cond.458:                                     ; preds = %if.end.490, %if.end.457
  %261 = load i32, i32* %yystate, align 4
  %idxprom459 = sext i32 %261 to i64
  %arrayidx460 = getelementptr inbounds [77 x i8], [77 x i8]* @yypact, i32 0, i64 %idxprom459
  %262 = load i8, i8* %arrayidx460, align 1
  %conv461 = sext i8 %262 to i32
  store i32 %conv461, i32* %yyn, align 4
  %263 = load i32, i32* %yyn, align 4
  %cmp462 = icmp ne i32 %263, -29
  br i1 %cmp462, label %if.then.464, label %if.end.486

if.then.464:                                      ; preds = %for.cond.458
  %264 = load i32, i32* %yyn, align 4
  %add465 = add nsw i32 %264, 1
  store i32 %add465, i32* %yyn, align 4
  %265 = load i32, i32* %yyn, align 4
  %cmp466 = icmp sle i32 0, %265
  br i1 %cmp466, label %land.lhs.true.468, label %if.end.485

land.lhs.true.468:                                ; preds = %if.then.464
  %266 = load i32, i32* %yyn, align 4
  %cmp469 = icmp sle i32 %266, 83
  br i1 %cmp469, label %land.lhs.true.471, label %if.end.485

land.lhs.true.471:                                ; preds = %land.lhs.true.468
  %267 = load i32, i32* %yyn, align 4
  %idxprom472 = sext i32 %267 to i64
  %arrayidx473 = getelementptr inbounds [84 x i8], [84 x i8]* @yycheck, i32 0, i64 %idxprom472
  %268 = load i8, i8* %arrayidx473, align 1
  %conv474 = sext i8 %268 to i32
  %cmp475 = icmp eq i32 %conv474, 1
  br i1 %cmp475, label %if.then.477, label %if.end.485

if.then.477:                                      ; preds = %land.lhs.true.471
  %269 = load i32, i32* %yyn, align 4
  %idxprom478 = sext i32 %269 to i64
  %arrayidx479 = getelementptr inbounds [84 x i8], [84 x i8]* @yytable, i32 0, i64 %idxprom478
  %270 = load i8, i8* %arrayidx479, align 1
  %conv480 = zext i8 %270 to i32
  store i32 %conv480, i32* %yyn, align 4
  %271 = load i32, i32* %yyn, align 4
  %cmp481 = icmp slt i32 0, %271
  br i1 %cmp481, label %if.then.483, label %if.end.484

if.then.483:                                      ; preds = %if.then.477
  br label %for.end.498

if.end.484:                                       ; preds = %if.then.477
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %land.lhs.true.471, %land.lhs.true.468, %if.then.464
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %for.cond.458
  %272 = load i16*, i16** %yyssp, align 8
  %273 = load i16*, i16** %yyss, align 8
  %cmp487 = icmp eq i16* %272, %273
  br i1 %cmp487, label %if.then.489, label %if.end.490

if.then.489:                                      ; preds = %if.end.486
  br label %yyabortlab

if.end.490:                                       ; preds = %if.end.486
  %274 = load i32, i32* %yystate, align 4
  %idxprom491 = sext i32 %274 to i64
  %arrayidx492 = getelementptr inbounds [77 x i8], [77 x i8]* @yystos, i32 0, i64 %idxprom491
  %275 = load i8, i8* %arrayidx492, align 1
  %conv493 = zext i8 %275 to i32
  %276 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %coerce.dive494 = getelementptr %union.yystype, %union.yystype* %276, i32 0, i32 0
  %277 = load i8*, i8** %coerce.dive494, align 8
  call void @yydestruct(i32 %conv493, i8* %277)
  %278 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr495 = getelementptr inbounds %union.yystype, %union.yystype* %278, i32 -1
  store %union.yystype* %incdec.ptr495, %union.yystype** %yyvsp, align 8
  %279 = load i16*, i16** %yyssp, align 8
  %incdec.ptr496 = getelementptr inbounds i16, i16* %279, i32 -1
  store i16* %incdec.ptr496, i16** %yyssp, align 8
  %280 = load i16, i16* %incdec.ptr496, align 2
  %conv497 = sext i16 %280 to i32
  store i32 %conv497, i32* %yystate, align 4
  br label %for.cond.458

for.end.498:                                      ; preds = %if.then.483
  %281 = load i32, i32* %yyn, align 4
  %cmp499 = icmp eq i32 %281, 4
  br i1 %cmp499, label %if.then.501, label %if.end.502

if.then.501:                                      ; preds = %for.end.498
  br label %yyacceptlab

if.end.502:                                       ; preds = %for.end.498
  %282 = load %union.yystype*, %union.yystype** %yyvsp, align 8
  %incdec.ptr503 = getelementptr inbounds %union.yystype, %union.yystype* %282, i32 1
  store %union.yystype* %incdec.ptr503, %union.yystype** %yyvsp, align 8
  %283 = bitcast %union.yystype* %incdec.ptr503 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %283, i8* bitcast (%union.yystype* @ia_lval to i8*), i64 8, i32 8, i1 false)
  %284 = load i32, i32* %yyn, align 4
  store i32 %284, i32* %yystate, align 4
  br label %yynewstate

yyacceptlab:                                      ; preds = %if.then.501, %sw.bb.119, %if.then.96
  store i32 0, i32* %yyresult, align 4
  br label %yyreturn

yyabortlab:                                       ; preds = %if.then.489, %while.end, %sw.bb, %if.then.46
  store i32 1, i32* %yyresult, align 4
  br label %yyreturn

yyoverflowlab:                                    ; preds = %if.then.13, %if.then.6
  call void @ia_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  store i32 2, i32* %yyresult, align 4
  br label %yyreturn

yyreturn:                                         ; preds = %yyoverflowlab, %yyabortlab, %yyacceptlab
  %285 = load i16*, i16** %yyss, align 8
  %arraydecay504 = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  %cmp505 = icmp ne i16* %285, %arraydecay504
  br i1 %cmp505, label %if.then.507, label %if.end.510

if.then.507:                                      ; preds = %yyreturn
  br label %do.body.508

do.body.508:                                      ; preds = %if.then.507
  br label %do.end.509

do.end.509:                                       ; preds = %do.body.508
  br label %if.end.510

if.end.510:                                       ; preds = %do.end.509, %yyreturn
  %286 = load i32, i32* %yyresult, align 4
  ret i32 %286
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @ia_lex() #2

; Function Attrs: nounwind uwtable
define internal void @ia_VarCheck() #0 {
entry:
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ia_VARLIST, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 450)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.58, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.59, i32 0, i32 0), %struct._IO_FILE* %3)
  call void @misc_DumpCore()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @symbol_ResetStandardVarCounter()
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_PairCreate(i8* %P1, i8* %P2) #3 {
entry:
  %P1.addr = alloca i8*, align 8
  %P2.addr = alloca i8*, align 8
  store i8* %P1, i8** %P1.addr, align 8
  store i8* %P2, i8** %P2.addr, align 8
  %0 = load i8*, i8** %P1.addr, align 8
  %1 = load i8*, i8** %P2.addr, align 8
  %2 = bitcast i8* %1 to %struct.LIST_HELP*
  %call = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %2)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_SetFlagValue(i32* %Store, i32 %FlagId, i32 %Value) #3 {
entry:
  %Store.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %FlagId.addr, align 4
  %2 = load i32, i32* %Value.addr, align 4
  call void @flag_CheckFlagValueInRange(i32 %1, i32 %2)
  %3 = load i32, i32* %Value.addr, align 4
  %4 = load i32, i32* %FlagId.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_List(i8* %P) #3 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #3 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Result, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %9, i32 0, i32 0
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %cdr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @ia_TermCreate(i8* %Name, %struct.LIST_HELP* %Arguments) #3 {
entry:
  %Name.addr = alloca i8*, align 8
  %Arguments.addr = alloca %struct.LIST_HELP*, align 8
  store i8* %Name, i8** %Name.addr, align 8
  store %struct.LIST_HELP* %Arguments, %struct.LIST_HELP** %Arguments.addr, align 8
  %0 = load i8*, i8** %Name.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arguments.addr, align 8
  %call = call i32 @list_Length(%struct.LIST_HELP* %1)
  %call1 = call i32 @ia_Symbol(i8* %0, i32 %call)
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Arguments.addr, align 8
  %call2 = call %struct.term* @term_Create(i32 %call1, %struct.LIST_HELP* %2)
  ret %struct.term* %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #3 {
entry:
  ret %struct.LIST_HELP* null
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_True() #3 {
entry:
  %0 = load i32, i32* @fol_TRUE, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_False() #3 {
entry:
  %0 = load i32, i32* @fol_FALSE, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Not() #3 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* %Ptr, %struct.LIST_HELP* %List) #3 {
entry:
  %Ptr.addr = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Cell = alloca %struct.LIST_HELP*, align 8
  store i8* %Ptr, i8** %Ptr.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.LIST_HELP*
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Cell, align 8
  %1 = load i8*, i8** %Ptr.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %2, i32 0, i32 1
  store i8* %1, i8** %car, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %4, i32 0, i32 0
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %cdr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: nounwind uwtable
define internal void @ia_VarStart() #0 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  %0 = bitcast %struct.LIST_HELP* %call to i8*
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ia_VARLIST, align 8
  %call1 = call %struct.LIST_HELP* @list_Push(i8* %0, %struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @ia_VARLIST, align 8
  store i32 1, i32* @ia_VARDECL, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ia_VarStop() #0 {
entry:
  store i32 0, i32* @ia_VARDECL, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ia_VarBacktrack() #0 {
entry:
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ia_VARLIST, align 8
  %call = call i8* @list_Top(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.LIST_HELP*
  call void @list_DeleteWithElement(%struct.LIST_HELP* %1, void (i8*)* bitcast (void (%struct.IA_VARENTRY*)* @ia_VarFree to void (i8*)*))
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ia_VARLIST, align 8
  %call1 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** @ia_VARLIST, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @ia_CreateQuantifier(i32 %Symbol, %struct.LIST_HELP* %VarTermList, %struct.term* %Term) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %VarTermList.addr = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %varlist = alloca %struct.LIST_HELP*, align 8
  %sortlist = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %helpterm = alloca %struct.term*, align 8
  %var = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store %struct.LIST_HELP* %VarTermList, %struct.LIST_HELP** %VarTermList.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %sortlist, align 8
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %varlist, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarTermList.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarTermList.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %2, %struct.term** %helpterm, align 8
  %3 = load %struct.term*, %struct.term** %helpterm, align 8
  %call3 = call i32 @term_IsVariable(%struct.term* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %5 = load %struct.term*, %struct.term** %helpterm, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %5)
  %conv = sext i32 %call5 to i64
  %6 = inttoptr i64 %conv to i8*
  %call6 = call %struct.LIST_HELP* @list_List(i8* %6)
  %call7 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %4, %struct.LIST_HELP* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %varlist, align 8
  %7 = load %struct.term*, %struct.term** %helpterm, align 8
  call void @term_Delete(%struct.term* %7)
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load %struct.term*, %struct.term** %helpterm, align 8
  %call8 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  %call9 = call i32 @term_TopSymbol(%struct.term* %call8)
  store i32 %call9, i32* %var, align 4
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %10 = load i32, i32* %var, align 4
  %conv10 = sext i32 %10 to i64
  %11 = inttoptr i64 %conv10 to i8*
  %call11 = call %struct.LIST_HELP* @list_List(i8* %11)
  %call12 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %9, %struct.LIST_HELP* %call11)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %varlist, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %13 = load %struct.term*, %struct.term** %helpterm, align 8
  %14 = bitcast %struct.term* %13 to i8*
  %call13 = call %struct.LIST_HELP* @list_List(i8* %14)
  %call14 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %12, %struct.LIST_HELP* %call13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %sortlist, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarTermList.addr, align 8
  %call15 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %VarTermList.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %call16 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %varlist, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.25, %for.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot20 = xor i1 %tobool19, true
  br i1 %lnot20, label %for.body.21, label %for.end.27

for.body.21:                                      ; preds = %for.cond.17
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = ptrtoint i8* %call22 to i32
  %call23 = call %struct.LIST_HELP* @list_Nil()
  %call24 = call %struct.term* @term_Create(i32 %21, %struct.LIST_HELP* %call23)
  %22 = bitcast %struct.term* %call24 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %19, i8* %22)
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.21
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.17

for.end.27:                                       ; preds = %for.cond.17
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.91, label %if.then.30

if.then.30:                                       ; preds = %for.end.27
  %call31 = call i32 @fol_All()
  %25 = load i32, i32* %Symbol.addr, align 4
  %call32 = call i32 @symbol_Equal(i32 %call31, i32 %25)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.71

if.then.34:                                       ; preds = %if.then.30
  %call35 = call i32 @fol_Or()
  %26 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call36 = call i32 @term_TopSymbol(%struct.term* %26)
  %call37 = call i32 @symbol_Equal(i32 %call35, i32 %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.54

if.then.39:                                       ; preds = %if.then.34
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.49, %if.then.39
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call41 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool42 = icmp ne i32 %call41, 0
  %lnot43 = xor i1 %tobool42, true
  br i1 %lnot43, label %for.body.44, label %for.end.51

for.body.44:                                      ; preds = %for.cond.40
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call45 = call i32 @fol_Not()
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call46 = call i8* @list_Car(%struct.LIST_HELP* %30)
  %call47 = call %struct.LIST_HELP* @list_List(i8* %call46)
  %call48 = call %struct.term* @term_Create(i32 %call45, %struct.LIST_HELP* %call47)
  %31 = bitcast %struct.term* %call48 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %29, i8* %31)
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.44
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.40

for.end.51:                                       ; preds = %for.cond.40
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %34 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call52 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %34)
  %call53 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %33, %struct.LIST_HELP* %call52)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %sortlist, align 8
  %35 = load %struct.term*, %struct.term** %Term.addr, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  call void @term_RplacArgumentList(%struct.term* %35, %struct.LIST_HELP* %36)
  br label %if.end.70

if.else.54:                                       ; preds = %if.then.34
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call55 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %37)
  %call56 = call i32 @list_Empty(%struct.LIST_HELP* %call55)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %if.else.54
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %39 = load %struct.term*, %struct.term** %Term.addr, align 8
  %40 = bitcast %struct.term* %39 to i8*
  %call59 = call %struct.LIST_HELP* @list_List(i8* %40)
  call void @list_Rplacd(%struct.LIST_HELP* %38, %struct.LIST_HELP* %call59)
  %call60 = call i32 @fol_Implies()
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call61 = call %struct.term* @term_Create(i32 %call60, %struct.LIST_HELP* %41)
  store %struct.term* %call61, %struct.term** %Term.addr, align 8
  br label %if.end.69

if.else.62:                                       ; preds = %if.else.54
  %call63 = call i32 @fol_And()
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call64 = call %struct.term* @term_Create(i32 %call63, %struct.LIST_HELP* %42)
  store %struct.term* %call64, %struct.term** %helpterm, align 8
  %call65 = call i32 @fol_Implies()
  %43 = load %struct.term*, %struct.term** %helpterm, align 8
  %44 = bitcast %struct.term* %43 to i8*
  %45 = load %struct.term*, %struct.term** %Term.addr, align 8
  %46 = bitcast %struct.term* %45 to i8*
  %call66 = call %struct.LIST_HELP* @list_List(i8* %46)
  %call67 = call %struct.LIST_HELP* @list_Cons(i8* %44, %struct.LIST_HELP* %call66)
  %call68 = call %struct.term* @term_Create(i32 %call65, %struct.LIST_HELP* %call67)
  store %struct.term* %call68, %struct.term** %Term.addr, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.62, %if.then.58
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %for.end.51
  br label %if.end.90

if.else.71:                                       ; preds = %if.then.30
  %call72 = call i32 @fol_Exist()
  %47 = load i32, i32* %Symbol.addr, align 4
  %call73 = call i32 @symbol_Equal(i32 %call72, i32 %47)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.89

if.then.75:                                       ; preds = %if.else.71
  %call76 = call i32 @fol_And()
  %48 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call77 = call i32 @term_TopSymbol(%struct.term* %48)
  %call78 = call i32 @symbol_Equal(i32 %call76, i32 %call77)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.83

if.then.80:                                       ; preds = %if.then.75
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %50 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call81 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %50)
  %call82 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %49, %struct.LIST_HELP* %call81)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %sortlist, align 8
  %51 = load %struct.term*, %struct.term** %Term.addr, align 8
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  call void @term_RplacArgumentList(%struct.term* %51, %struct.LIST_HELP* %52)
  br label %if.end.88

if.else.83:                                       ; preds = %if.then.75
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %54 = load %struct.term*, %struct.term** %Term.addr, align 8
  %55 = bitcast %struct.term* %54 to i8*
  %call84 = call %struct.LIST_HELP* @list_List(i8* %55)
  %call85 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %53, %struct.LIST_HELP* %call84)
  store %struct.LIST_HELP* %call85, %struct.LIST_HELP** %sortlist, align 8
  %call86 = call i32 @fol_And()
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sortlist, align 8
  %call87 = call %struct.term* @term_Create(i32 %call86, %struct.LIST_HELP* %56)
  store %struct.term* %call87, %struct.term** %Term.addr, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.83, %if.then.80
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.else.71
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.70
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.end.27
  %57 = load i32, i32* %Symbol.addr, align 4
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %59 = load %struct.term*, %struct.term** %Term.addr, align 8
  %60 = bitcast %struct.term* %59 to i8*
  %call92 = call %struct.LIST_HELP* @list_List(i8* %60)
  %call93 = call %struct.term* @fol_CreateQuantifier(i32 %57, %struct.LIST_HELP* %58, %struct.LIST_HELP* %call92)
  store %struct.term* %call93, %struct.term** %helpterm, align 8
  %61 = load %struct.term*, %struct.term** %helpterm, align 8
  ret %struct.term* %61
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @misc_UserErrorReport(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #3 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equality() #3 {
entry:
  %0 = load i32, i32* @fol_EQUALITY, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equiv() #3 {
entry:
  %0 = load i32, i32* @fol_EQUIV, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Implied() #3 {
entry:
  %0 = load i32, i32* @fol_IMPLIED, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Implies() #3 {
entry:
  %0 = load i32, i32* @fol_IMPLIES, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_And() #3 {
entry:
  %0 = load i32, i32* @fol_AND, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Or() #3 {
entry:
  %0 = load i32, i32* @fol_OR, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Exist() #3 {
entry:
  %0 = load i32, i32* @fol_EXIST, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_All() #3 {
entry:
  %0 = load i32, i32* @fol_ALL, align 4
  ret i32 %0
}

declare i8* @string_IntToString(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ia_Symbol(i8* %Name, i32 %Arity) #0 {
entry:
  %Name.addr = alloca i8*, align 8
  %Arity.addr = alloca i32, align 4
  %symbol = alloca i32, align 4
  store i8* %Name, i8** %Name.addr, align 8
  store i32 %Arity, i32* %Arity.addr, align 4
  %0 = load i8*, i8** %Name.addr, align 8
  %call = call i32 @symbol_Lookup(i8* %0)
  store i32 %call, i32* %symbol, align 4
  %1 = load i32, i32* %symbol, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %Name.addr, align 8
  call void @ia_StringFree(i8* %2)
  %3 = load i32, i32* %symbol, align 4
  %4 = load i32, i32* %Arity.addr, align 4
  call void @ia_SymCheck(i32 %3, i32 %4)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %Arity.addr, align 4
  %cmp1 = icmp ugt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %6)
  %7 = load i32, i32* @dfg_LINENUMBER, align 4
  %8 = load i8*, i8** %Name.addr, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i32 0, i32 0), i32 %7, i8* %8)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %9 = load i8*, i8** %Name.addr, align 8
  %call4 = call i32 @ia_VarLookup(i8* %9)
  store i32 %call4, i32* %symbol, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %10 = load i32, i32* %symbol, align 4
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsVariable(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @symbol_Name(i32 %ActSymbol) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %name = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsPredicate(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_IsSignature(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %call1 = call i32 @symbol_Type(i32 %1)
  %cmp = icmp eq i32 %call1, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @yystpcpy(i8* %yydest, i8* %yysrc) #0 {
entry:
  %yydest.addr = alloca i8*, align 8
  %yysrc.addr = alloca i8*, align 8
  %yyd = alloca i8*, align 8
  %yys = alloca i8*, align 8
  store i8* %yydest, i8** %yydest.addr, align 8
  store i8* %yysrc, i8** %yysrc.addr, align 8
  %0 = load i8*, i8** %yydest.addr, align 8
  store i8* %0, i8** %yyd, align 8
  %1 = load i8*, i8** %yysrc.addr, align 8
  store i8* %1, i8** %yys, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %yys, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %yys, align 8
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

; Function Attrs: nounwind uwtable
define void @ia_error(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load i32, i32* @dfg_LINENUMBER, align 4
  %2 = load i8*, i8** %s.addr, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %1, i8* %2)
  call void @misc_Error()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @yydestruct(i32 %yytype, i8* %yyvalue.coerce) #0 {
entry:
  %yyvalue = alloca %union.yystype, align 8
  %yytype.addr = alloca i32, align 4
  %coerce.dive = getelementptr %union.yystype, %union.yystype* %yyvalue, i32 0, i32 0
  store i8* %yyvalue.coerce, i8** %coerce.dive, align 8
  store i32 %yytype, i32* %yytype.addr, align 4
  %0 = load i32, i32* %yytype.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @ia_GetNextRequest(%struct._IO_FILE* %Input, i32* %Flags) #0 {
entry:
  %Input.addr = alloca %struct._IO_FILE*, align 8
  %Flags.addr = alloca i32*, align 8
  store %struct._IO_FILE* %Input, %struct._IO_FILE** %Input.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %Input.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @ia_in, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @ia_PROOFREQUEST, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  store i32* %1, i32** @ia_FLAGS, align 8
  %call1 = call i32 @ia_parse()
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ia_PROOFREQUEST, align 8
  ret %struct.LIST_HELP* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #3 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagValueInRange(i32 %FlagId, i32 %Value) #3 {
entry:
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Value.addr, align 4
  %2 = load i32, i32* %FlagId.addr, align 4
  %call = call i32 @flag_Minimum(i32 %2)
  %cmp = icmp sle i32 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load i32, i32* %Value.addr, align 4
  %5 = load i32, i32* %FlagId.addr, align 4
  %call2 = call i8* @flag_Name(i32 %5)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0), i32 %4, i8* %call2)
  call void @misc_Error()
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %Value.addr, align 4
  %7 = load i32, i32* %FlagId.addr, align 4
  %call3 = call i32 @flag_Maximum(i32 %7)
  %cmp4 = icmp sge i32 %6, %call3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %8)
  %9 = load i32, i32* %Value.addr, align 4
  %10 = load i32, i32* %FlagId.addr, align 4
  %call7 = call i8* @flag_Name(i32 %10)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0), i32 %9, i8* %call7)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @flag_Minimum(i32) #2

declare i8* @flag_Name(i32) #2

declare i32 @flag_Maximum(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

declare i32 @list_Length(%struct.LIST_HELP*) #2

declare i8* @memory_Malloc(i32) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.signature* @symbol_Signature(i32 %Index) #3 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  call void @symbol_CheckIndexInRange(i32 %0)
  %1 = load i32, i32* %Index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %arrayidx = getelementptr inbounds %struct.signature*, %struct.signature** %2, i64 %idxprom
  %3 = load %struct.signature*, %struct.signature** %arrayidx, align 8
  ret %struct.signature* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Index(i32 %ActSymbol) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %2 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %shr = ashr i32 %sub, %2
  ret i32 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 %Index) #3 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsSignature(i32 %S) #3 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Type(i32 %ActSymbol) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %2 = load i32, i32* @symbol_TYPEMASK, align 4
  %and = and i32 %sub, %2
  ret i32 %and
}

declare i32 @symbol_Lookup(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ia_StringFree(i8* %String) #3 {
entry:
  %String.addr = alloca i8*, align 8
  store i8* %String, i8** %String.addr, align 8
  %0 = load i8*, i8** %String.addr, align 8
  %1 = load i8*, i8** %String.addr, align 8
  %call = call i64 @strlen(i8* %1) #7
  %add = add i64 %call, 1
  %mul = mul i64 1, %add
  %conv = trunc i64 %mul to i32
  call void @memory_Free(i8* %0, i32 %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ia_SymCheck(i32 %Symbol, i32 %Arity) #0 {
entry:
  %Symbol.addr = alloca i32, align 4
  %Arity.addr = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store i32 %Arity, i32* %Arity.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_Arity(i32 %0)
  %call1 = call i32 @symbol_ArbitraryArity()
  %cmp = icmp ne i32 %call, %call1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %Symbol.addr, align 4
  %call2 = call i32 @symbol_Arity(i32 %1)
  %2 = load i32, i32* %Arity.addr, align 4
  %cmp3 = icmp ne i32 %call2, %2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load i32, i32* @dfg_LINENUMBER, align 4
  %5 = load i32, i32* %Symbol.addr, align 4
  %call5 = call i8* @symbol_Name(i32 %5)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0), i32 %4, i8* %call5)
  %6 = load i32, i32* %Symbol.addr, align 4
  %call6 = call i32 @symbol_Arity(i32 %6)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), i32 %call6)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ia_VarLookup(i8* %Name) #0 {
entry:
  %Name.addr = alloca i8*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  %symbol = alloca i32, align 4
  %newEntry = alloca %struct.IA_VARENTRY*, align 8
  store i8* %Name, i8** %Name.addr, align 8
  %call = call i32 @symbol_Null()
  store i32 %call, i32* %symbol, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ia_VARLIST, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %scan2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.18

while.body:                                       ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call5 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %scan2, align 8
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.15, %while.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.end.14, label %land.rhs.9

land.rhs.9:                                       ; preds = %while.cond.6
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call10 to %struct.IA_VARENTRY*
  %call11 = call i8* @ia_VarName(%struct.IA_VARENTRY* %8)
  %9 = load i8*, i8** %Name.addr, align 8
  %call12 = call i32 @string_Equal(i8* %call11, i8* %9)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool13, true
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.9, %while.cond.6
  %10 = phi i1 [ false, %while.cond.6 ], [ %lnot, %land.rhs.9 ]
  br i1 %10, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %land.end.14
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %scan2, align 8
  br label %while.cond.6

while.end:                                        ; preds = %land.end.14
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %scan, align 8
  br label %while.cond

while.end.18:                                     ; preds = %land.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else, label %if.then

if.then:                                          ; preds = %while.end.18
  %14 = load i8*, i8** %Name.addr, align 8
  call void @ia_StringFree(i8* %14)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call21 to %struct.IA_VARENTRY*
  %call22 = call i32 @ia_VarSymbol(%struct.IA_VARENTRY* %16)
  store i32 %call22, i32* %symbol, align 4
  br label %if.end.33

if.else:                                          ; preds = %while.end.18
  %17 = load i32, i32* @ia_VARDECL, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.else.31

if.then.24:                                       ; preds = %if.else
  %call25 = call %struct.IA_VARENTRY* @ia_VarCreate()
  store %struct.IA_VARENTRY* %call25, %struct.IA_VARENTRY** %newEntry, align 8
  %18 = load i8*, i8** %Name.addr, align 8
  %19 = load %struct.IA_VARENTRY*, %struct.IA_VARENTRY** %newEntry, align 8
  %name = getelementptr inbounds %struct.IA_VARENTRY, %struct.IA_VARENTRY* %19, i32 0, i32 0
  store i8* %18, i8** %name, align 8
  %call26 = call i32 @symbol_CreateStandardVariable()
  %20 = load %struct.IA_VARENTRY*, %struct.IA_VARENTRY** %newEntry, align 8
  %symbol27 = getelementptr inbounds %struct.IA_VARENTRY, %struct.IA_VARENTRY* %20, i32 0, i32 1
  store i32 %call26, i32* %symbol27, align 4
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ia_VARLIST, align 8
  %22 = load %struct.IA_VARENTRY*, %struct.IA_VARENTRY** %newEntry, align 8
  %23 = bitcast %struct.IA_VARENTRY* %22 to i8*
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ia_VARLIST, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call28 to %struct.LIST_HELP*
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %23, %struct.LIST_HELP* %25)
  %26 = bitcast %struct.LIST_HELP* %call29 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %21, i8* %26)
  %27 = load %struct.IA_VARENTRY*, %struct.IA_VARENTRY** %newEntry, align 8
  %call30 = call i32 @ia_VarSymbol(%struct.IA_VARENTRY* %27)
  store i32 %call30, i32* %symbol, align 4
  br label %if.end

if.else.31:                                       ; preds = %if.else
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call32 = call i32 @fflush(%struct._IO_FILE* %28)
  %29 = load i32, i32* @dfg_LINENUMBER, align 4
  %30 = load i8*, i8** %Name.addr, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i32 %29, i8* %30)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.else.31, %if.then.24
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then
  %31 = load i32, i32* %symbol, align 4
  ret i32 %31
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @memory_Free(i8* %Freepointer, i32 %Size) #3 {
entry:
  %Freepointer.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %RealBlockSize = alloca i32, align 4
  %BigBlockHeader = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i8* %Freepointer, i8** %Freepointer.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  %0 = load i32, i32* %Size.addr, align 4
  %call = call i32 @memory_LookupRealBlockSize(i32 %0)
  store i32 %call, i32* %RealBlockSize, align 4
  %1 = load i32, i32* %Size.addr, align 4
  %cmp = icmp uge i32 %1, 1024
  br i1 %cmp, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %Freepointer.addr, align 8
  %3 = load i32, i32* @memory_OFFSET, align 4
  %idx.ext = zext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.neg
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -16
  %4 = bitcast i8* %add.ptr1 to %struct.MEMORY_BIGBLOCKHEADERHELP*
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %4, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %5 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %5, i32 0, i32 0
  %6 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous, align 8
  %cmp2 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %6, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %7, i32 0, i32 1
  %8 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next, align 8
  %9 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous4 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %9, i32 0, i32 0
  %10 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous4, align 8
  %next5 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %10, i32 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %8, %struct.MEMORY_BIGBLOCKHEADERHELP** %next5, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next6 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %11, i32 0, i32 1
  %12 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next6, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %12, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %13 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next7 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %13, i32 0, i32 1
  %14 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next7, align 8
  %cmp8 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %15 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous10 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %15, i32 0, i32 0
  %16 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous10, align 8
  %17 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next11 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %17, i32 0, i32 1
  %18 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next11, align 8
  %previous12 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %18, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %16, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %19 = load i32, i32* %RealBlockSize, align 4
  %20 = load i32, i32* @memory_MARKSIZE, align 4
  %add = add i32 %19, %20
  %conv = zext i32 %add to i64
  %add14 = add i64 %conv, 16
  %21 = load i64, i64* @memory_FREEDBYTES, align 8
  %add15 = add i64 %21, %add14
  store i64 %add15, i64* @memory_FREEDBYTES, align 8
  %22 = load i64, i64* @memory_MAXMEM, align 8
  %cmp16 = icmp sge i64 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.13
  %23 = load i32, i32* %RealBlockSize, align 4
  %24 = load i32, i32* @memory_MARKSIZE, align 4
  %add19 = add i32 %23, %24
  %conv20 = zext i32 %add19 to i64
  %add21 = add i64 %conv20, 16
  %25 = load i64, i64* @memory_MAXMEM, align 8
  %add22 = add i64 %25, %add21
  store i64 %add22, i64* @memory_MAXMEM, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.13
  %26 = load i8*, i8** %Freepointer.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %26, i64 -16
  call void @free(i8* %add.ptr24) #1
  br label %if.end.33

if.else.25:                                       ; preds = %entry
  %27 = load i32, i32* %Size.addr, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %28 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %28, i32 0, i32 4
  %29 = load i32, i32* %total_size, align 4
  %conv26 = sext i32 %29 to i64
  %30 = load i64, i64* @memory_FREEDBYTES, align 8
  %add27 = add i64 %30, %conv26
  store i64 %add27, i64* @memory_FREEDBYTES, align 8
  %31 = load i32, i32* %Size.addr, align 4
  %idxprom28 = zext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom28
  %32 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx29, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %32, i32 0, i32 0
  %33 = load i8*, i8** %free, align 8
  %34 = load i8*, i8** %Freepointer.addr, align 8
  %35 = bitcast i8* %34 to i8**
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %Freepointer.addr, align 8
  %37 = load i32, i32* %Size.addr, align 4
  %idxprom30 = zext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom30
  %38 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx31, align 8
  %free32 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %38, i32 0, i32 0
  store i8* %36, i8** %free32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.25, %if.end.23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_LookupRealBlockSize(i32 %BlockSize) #3 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  %cmp = icmp ult i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %BlockSize.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %aligned_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %2, i32 0, i32 5
  %3 = load i32, i32* %aligned_size, align 4
  store i32 %3, i32* %RealSize, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %BlockSize.addr, align 4
  %call = call i32 @memory_CalculateRealBlockSize(i32 %4)
  store i32 %call, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %RealSize, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #3 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  store i32 %0, i32* %RealSize, align 4
  %1 = load i32, i32* %RealSize, align 4
  %rem = urem i32 %1, 1
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %RealSize, align 4
  %rem1 = urem i32 %2, 1
  %sub = sub i32 1, %rem1
  %3 = load i32, i32* %RealSize, align 4
  %add = add i32 %3, %sub
  store i32 %add, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %RealSize, align 4
  %5 = load i32, i32* @memory_ALIGN, align 4
  %rem2 = urem i32 %4, %5
  %tobool3 = icmp ne i32 %rem2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* @memory_ALIGN, align 4
  %7 = load i32, i32* %RealSize, align 4
  %8 = load i32, i32* @memory_ALIGN, align 4
  %rem5 = urem i32 %7, %8
  %sub6 = sub i32 %6, %rem5
  %9 = load i32, i32* %RealSize, align 4
  %add7 = add i32 %9, %sub6
  store i32 %add7, i32* %RealSize, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %10 = load i32, i32* %RealSize, align 4
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Arity(i32 %ActSymbol) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %arity = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 3
  %1 = load i32, i32* %arity, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_ArbitraryArity() #3 {
entry:
  ret i32 -1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Null() #3 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @string_Equal(i8* %S1, i8* %S2) #3 {
entry:
  %S1.addr = alloca i8*, align 8
  %S2.addr = alloca i8*, align 8
  store i8* %S1, i8** %S1.addr, align 8
  store i8* %S2, i8** %S2.addr, align 8
  %0 = load i8*, i8** %S1.addr, align 8
  %1 = load i8*, i8** %S2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #7
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @ia_VarName(%struct.IA_VARENTRY* %Entry) #3 {
entry:
  %Entry.addr = alloca %struct.IA_VARENTRY*, align 8
  store %struct.IA_VARENTRY* %Entry, %struct.IA_VARENTRY** %Entry.addr, align 8
  %0 = load %struct.IA_VARENTRY*, %struct.IA_VARENTRY** %Entry.addr, align 8
  %name = getelementptr inbounds %struct.IA_VARENTRY, %struct.IA_VARENTRY* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ia_VarSymbol(%struct.IA_VARENTRY* %Entry) #3 {
entry:
  %Entry.addr = alloca %struct.IA_VARENTRY*, align 8
  store %struct.IA_VARENTRY* %Entry, %struct.IA_VARENTRY** %Entry.addr, align 8
  %0 = load %struct.IA_VARENTRY*, %struct.IA_VARENTRY** %Entry.addr, align 8
  %symbol = getelementptr inbounds %struct.IA_VARENTRY, %struct.IA_VARENTRY* %0, i32 0, i32 1
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.IA_VARENTRY* @ia_VarCreate() #3 {
entry:
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.IA_VARENTRY*
  ret %struct.IA_VARENTRY* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_CreateStandardVariable() #3 {
entry:
  %0 = load i32, i32* @symbol_STANDARDVARCOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret i32 %inc
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplaca(%struct.LIST_HELP* %L, i8* %P) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %P.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %1, i32 0, i32 1
  store i8* %0, i8** %car, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsVariable(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

declare void @term_Delete(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_FirstArgument(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call = call i8* @list_First(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.term*
  ret %struct.term* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Aux = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Aux, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %L.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Aux, align 8
  call void @list_Free(%struct.LIST_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  ret %struct.LIST_HELP* %3
}

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Equal(i32 %A, i32 %B) #3 {
entry:
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  store i32 %B, i32* %B.addr, align 4
  %0 = load i32, i32* %A.addr, align 4
  %1 = load i32, i32* %B.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacArgumentList(%struct.term* %T, %struct.LIST_HELP* %A) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %A.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store %struct.LIST_HELP* %A, %struct.LIST_HELP** %A.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %A.addr, align 8
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 2
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %args, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplacd(%struct.LIST_HELP* %L1, %struct.LIST_HELP* %L2) #3 {
entry:
  %L1.addr = alloca %struct.LIST_HELP*, align 8
  %L2.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L1, %struct.LIST_HELP** %L1.addr, align 8
  store %struct.LIST_HELP* %L2, %struct.LIST_HELP** %L2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L2.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L1.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %1, i32 0, i32 0
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %cdr, align 8
  ret void
}

declare %struct.term* @fol_CreateQuantifier(i32, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_First(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Push(i8* %I, %struct.LIST_HELP* %L) #3 {
entry:
  %I.addr = alloca i8*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store i8* %I, i8** %I.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load i8*, i8** %I.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %1)
  ret %struct.LIST_HELP* %call
}

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Top(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @ia_VarFree(%struct.IA_VARENTRY* %Entry) #0 {
entry:
  %Entry.addr = alloca %struct.IA_VARENTRY*, align 8
  store %struct.IA_VARENTRY* %Entry, %struct.IA_VARENTRY** %Entry.addr, align 8
  %0 = load %struct.IA_VARENTRY*, %struct.IA_VARENTRY** %Entry.addr, align 8
  %name = getelementptr inbounds %struct.IA_VARENTRY, %struct.IA_VARENTRY* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  call void @ia_StringFree(i8* %1)
  %2 = load %struct.IA_VARENTRY*, %struct.IA_VARENTRY** %Entry.addr, align 8
  %3 = bitcast %struct.IA_VARENTRY* %2 to i8*
  call void @memory_Free(i8* %3, i32 16)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @misc_ErrorReport(i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #3 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @abort() #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ResetStandardVarCounter() #3 {
entry:
  %call = call i32 @symbol_GetInitialStandardVarCounter()
  store i32 %call, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetInitialStandardVarCounter() #3 {
entry:
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
